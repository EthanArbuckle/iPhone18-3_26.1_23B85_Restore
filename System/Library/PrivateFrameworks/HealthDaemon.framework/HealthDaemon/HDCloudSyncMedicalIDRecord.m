@interface HDCloudSyncMedicalIDRecord
+ (BOOL)hasFutureSchema:(id)a3;
+ (BOOL)isMedicalIDRecord:(id)a3;
+ (id)recordIDWithZoneID:(id)a3;
- (HDCloudSyncMedicalIDRecord)initWithCKRecord:(id)a3 schemaVersion:(int64_t)a4;
- (NSArray)medicalIDLogs;
- (id)initInSyncCircle:(id)a3;
- (id)initInZone:(id)a3;
- (void)addMedicalIDEvent:(id)a3;
- (void)setMedicalIDData:(id)a3;
@end

@implementation HDCloudSyncMedicalIDRecord

- (id)initInSyncCircle:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [MEMORY[0x277CBC5F8] hd_unifiedSyncZoneIDForSyncCircleIdentifier:v4];

  v7 = [v5 recordIDWithZoneID:v6];

  v8 = [objc_alloc(MEMORY[0x277CBC5A0]) initWithRecordType:@"CloudSyncMedicalIDRecord" recordID:v7];
  v9 = [(HDCloudSyncMedicalIDRecord *)self initWithCKRecord:v8 schemaVersion:1];

  return v9;
}

- (id)initInZone:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() recordIDWithZoneID:v4];

  v6 = [objc_alloc(MEMORY[0x277CBC5A0]) initWithRecordType:@"CloudSyncMedicalIDRecord" recordID:v5];
  v7 = [(HDCloudSyncMedicalIDRecord *)self initWithCKRecord:v6 schemaVersion:1];

  return v7;
}

- (HDCloudSyncMedicalIDRecord)initWithCKRecord:(id)a3 schemaVersion:(int64_t)a4
{
  v15.receiver = self;
  v15.super_class = HDCloudSyncMedicalIDRecord;
  v4 = [(HDCloudSyncRecord *)&v15 initWithCKRecord:a3 schemaVersion:a4];
  v5 = v4;
  if (!v4)
  {
    goto LABEL_9;
  }

  v6 = [(HDCloudSyncRecord *)v4 underlyingMessage];
  if (!v6)
  {
    v11 = objc_alloc_init(HDCloudSyncCodableMedicalID);
    underlyingCodableMedicalIDMessage = v5->_underlyingCodableMedicalIDMessage;
    v5->_underlyingCodableMedicalIDMessage = v11;

    goto LABEL_8;
  }

  v7 = [[HDCloudSyncCodableMedicalID alloc] initWithData:v6];
  v8 = v5->_underlyingCodableMedicalIDMessage;
  v5->_underlyingCodableMedicalIDMessage = v7;

  if (v5->_underlyingCodableMedicalIDMessage)
  {
LABEL_8:

LABEL_9:
    v10 = v5;
    goto LABEL_10;
  }

  _HKInitializeLogging();
  v9 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_FAULT))
  {
    v14[0] = 0;
    _os_log_fault_impl(&dword_228986000, v9, OS_LOG_TYPE_FAULT, "Failed to decode underlying Medical ID message.", v14, 2u);
  }

  v10 = 0;
LABEL_10:

  return v10;
}

+ (id)recordIDWithZoneID:(id)a3
{
  v3 = MEMORY[0x277CBC5D0];
  v4 = a3;
  v5 = [[v3 alloc] initWithRecordName:@"CloudSyncMedicalID" zoneID:v4];

  return v5;
}

+ (BOOL)isMedicalIDRecord:(id)a3
{
  v3 = [a3 recordType];
  v4 = [v3 isEqualToString:@"CloudSyncMedicalIDRecord"];

  return v4;
}

- (void)setMedicalIDData:(id)a3
{
  v4 = [a3 copy];
  [(HDCloudSyncCodableMedicalID *)self->_underlyingCodableMedicalIDMessage setMedicalIDData:v4];
}

- (NSArray)medicalIDLogs
{
  v2 = [(HDCloudSyncCodableMedicalID *)self->_underlyingCodableMedicalIDMessage medicalIDLogs];
  v3 = [v2 copy];

  return v3;
}

- (void)addMedicalIDEvent:(id)a3
{
  underlyingCodableMedicalIDMessage = self->_underlyingCodableMedicalIDMessage;
  v5 = a3;
  v11 = [(HDCloudSyncCodableMedicalID *)underlyingCodableMedicalIDMessage medicalIDLogs];
  v6 = objc_alloc_init(HDCloudSyncCodableLog);
  v7 = [MEMORY[0x277CBEAA8] now];
  [v7 timeIntervalSinceReferenceDate];
  [(HDCloudSyncCodableLog *)v6 setTimeStamp:?];

  v8 = [v5 copy];
  [(HDCloudSyncCodableLog *)v6 setEvent:v8];

  if (v11)
  {
    if ([v11 count] >= 5)
    {
      [v11 removeObjectAtIndex:0];
    }

    v9 = v11;
  }

  else
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  }

  v12 = v9;
  [v9 addObject:v6];
  v10 = [v12 mutableCopy];
  [(HDCloudSyncCodableMedicalID *)self->_underlyingCodableMedicalIDMessage setMedicalIDLogs:v10];
}

+ (BOOL)hasFutureSchema:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"Version"];
  v4 = v3;
  v5 = v3 && [v3 integerValue] > 1;

  return v5;
}

@end