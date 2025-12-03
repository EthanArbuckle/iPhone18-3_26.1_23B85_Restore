@interface HDCloudSyncMedicalIDRecord
+ (BOOL)hasFutureSchema:(id)schema;
+ (BOOL)isMedicalIDRecord:(id)record;
+ (id)recordIDWithZoneID:(id)d;
- (HDCloudSyncMedicalIDRecord)initWithCKRecord:(id)record schemaVersion:(int64_t)version;
- (NSArray)medicalIDLogs;
- (id)initInSyncCircle:(id)circle;
- (id)initInZone:(id)zone;
- (void)addMedicalIDEvent:(id)event;
- (void)setMedicalIDData:(id)data;
@end

@implementation HDCloudSyncMedicalIDRecord

- (id)initInSyncCircle:(id)circle
{
  circleCopy = circle;
  v5 = objc_opt_class();
  v6 = [MEMORY[0x277CBC5F8] hd_unifiedSyncZoneIDForSyncCircleIdentifier:circleCopy];

  v7 = [v5 recordIDWithZoneID:v6];

  v8 = [objc_alloc(MEMORY[0x277CBC5A0]) initWithRecordType:@"CloudSyncMedicalIDRecord" recordID:v7];
  v9 = [(HDCloudSyncMedicalIDRecord *)self initWithCKRecord:v8 schemaVersion:1];

  return v9;
}

- (id)initInZone:(id)zone
{
  zoneCopy = zone;
  v5 = [objc_opt_class() recordIDWithZoneID:zoneCopy];

  v6 = [objc_alloc(MEMORY[0x277CBC5A0]) initWithRecordType:@"CloudSyncMedicalIDRecord" recordID:v5];
  v7 = [(HDCloudSyncMedicalIDRecord *)self initWithCKRecord:v6 schemaVersion:1];

  return v7;
}

- (HDCloudSyncMedicalIDRecord)initWithCKRecord:(id)record schemaVersion:(int64_t)version
{
  v15.receiver = self;
  v15.super_class = HDCloudSyncMedicalIDRecord;
  v4 = [(HDCloudSyncRecord *)&v15 initWithCKRecord:record schemaVersion:version];
  v5 = v4;
  if (!v4)
  {
    goto LABEL_9;
  }

  underlyingMessage = [(HDCloudSyncRecord *)v4 underlyingMessage];
  if (!underlyingMessage)
  {
    v11 = objc_alloc_init(HDCloudSyncCodableMedicalID);
    underlyingCodableMedicalIDMessage = v5->_underlyingCodableMedicalIDMessage;
    v5->_underlyingCodableMedicalIDMessage = v11;

    goto LABEL_8;
  }

  v7 = [[HDCloudSyncCodableMedicalID alloc] initWithData:underlyingMessage];
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

+ (id)recordIDWithZoneID:(id)d
{
  v3 = MEMORY[0x277CBC5D0];
  dCopy = d;
  v5 = [[v3 alloc] initWithRecordName:@"CloudSyncMedicalID" zoneID:dCopy];

  return v5;
}

+ (BOOL)isMedicalIDRecord:(id)record
{
  recordType = [record recordType];
  v4 = [recordType isEqualToString:@"CloudSyncMedicalIDRecord"];

  return v4;
}

- (void)setMedicalIDData:(id)data
{
  v4 = [data copy];
  [(HDCloudSyncCodableMedicalID *)self->_underlyingCodableMedicalIDMessage setMedicalIDData:v4];
}

- (NSArray)medicalIDLogs
{
  medicalIDLogs = [(HDCloudSyncCodableMedicalID *)self->_underlyingCodableMedicalIDMessage medicalIDLogs];
  v3 = [medicalIDLogs copy];

  return v3;
}

- (void)addMedicalIDEvent:(id)event
{
  underlyingCodableMedicalIDMessage = self->_underlyingCodableMedicalIDMessage;
  eventCopy = event;
  medicalIDLogs = [(HDCloudSyncCodableMedicalID *)underlyingCodableMedicalIDMessage medicalIDLogs];
  v6 = objc_alloc_init(HDCloudSyncCodableLog);
  v7 = [MEMORY[0x277CBEAA8] now];
  [v7 timeIntervalSinceReferenceDate];
  [(HDCloudSyncCodableLog *)v6 setTimeStamp:?];

  v8 = [eventCopy copy];
  [(HDCloudSyncCodableLog *)v6 setEvent:v8];

  if (medicalIDLogs)
  {
    if ([medicalIDLogs count] >= 5)
    {
      [medicalIDLogs removeObjectAtIndex:0];
    }

    v9 = medicalIDLogs;
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

+ (BOOL)hasFutureSchema:(id)schema
{
  v3 = [schema objectForKeyedSubscript:@"Version"];
  v4 = v3;
  v5 = v3 && [v3 integerValue] > 1;

  return v5;
}

@end