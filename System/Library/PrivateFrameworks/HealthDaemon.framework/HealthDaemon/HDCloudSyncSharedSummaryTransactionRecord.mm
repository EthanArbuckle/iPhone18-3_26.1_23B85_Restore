@interface HDCloudSyncSharedSummaryTransactionRecord
+ (BOOL)hasFutureSchema:(id)a3;
+ (BOOL)isTransactionRecord:(id)a3;
+ (id)recordIDWithZoneID:(id)a3 UUID:(id)a4;
- (HDCloudSyncSharedSummaryTransactionRecord)initWithCKRecord:(id)a3 schemaVersion:(int64_t)a4;
- (NSArray)summaryIdentifiers;
- (NSString)sourceDeviceIdentifier;
- (NSUUID)UUID;
- (id)initInZone:(id)a3 UUID:(id)a4 sourceDeviceIdentifier:(id)a5 summaryIdentifiers:(id)a6 metadata:(id)a7;
@end

@implementation HDCloudSyncSharedSummaryTransactionRecord

+ (BOOL)hasFutureSchema:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"Version"];
  v4 = v3;
  v5 = v3 && [v3 integerValue] > 1;

  return v5;
}

+ (id)recordIDWithZoneID:(id)a3 UUID:(id)a4
{
  v5 = MEMORY[0x277CCACA8];
  v6 = a3;
  v7 = [a4 UUIDString];
  v8 = [v5 stringWithFormat:@"%@/%@", @"SharedSummaryTransactionRecord", v7];

  v9 = [objc_alloc(MEMORY[0x277CBC5D0]) initWithRecordName:v8 zoneID:v6];

  return v9;
}

+ (BOOL)isTransactionRecord:(id)a3
{
  v3 = [a3 recordType];
  v4 = [v3 isEqualToString:@"SharedSummaryTransactionRecordType"];

  return v4;
}

- (id)initInZone:(id)a3 UUID:(id)a4 sourceDeviceIdentifier:(id)a5 summaryIdentifiers:(id)a6 metadata:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = a3;
  v17 = [objc_opt_class() recordIDWithZoneID:v16 UUID:v12];

  v18 = [objc_alloc(MEMORY[0x277CBC5A0]) initWithRecordType:@"SharedSummaryTransactionRecordType" recordID:v17];
  v19 = [(HDCloudSyncSharedSummaryTransactionRecord *)self initWithCKRecord:v18 schemaVersion:1];
  if (v19)
  {
    v20 = [v12 UUIDString];
    v21 = [v20 copy];
    [(HDCloudSyncCodableSharedSummaryTransactionRecord *)v19->_underlyingTransactionRecord setUuid:v21];

    v22 = [v13 copy];
    [(HDCloudSyncCodableSharedSummaryTransactionRecord *)v19->_underlyingTransactionRecord setSourceDeviceIdentifier:v22];

    v23 = [v14 hk_map:&__block_literal_global_122];
    v24 = [v23 mutableCopy];
    [(HDCloudSyncCodableSharedSummaryTransactionRecord *)v19->_underlyingTransactionRecord setSummaryIdentifiers:v24];

    v25 = [v15 copy];
    [(HDCloudSyncCodableSharedSummaryTransactionRecord *)v19->_underlyingTransactionRecord setMetadata:v25];
  }

  return v19;
}

- (HDCloudSyncSharedSummaryTransactionRecord)initWithCKRecord:(id)a3 schemaVersion:(int64_t)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v15.receiver = self;
  v15.super_class = HDCloudSyncSharedSummaryTransactionRecord;
  v4 = [(HDCloudSyncRecord *)&v15 initWithCKRecord:a3 schemaVersion:a4];
  v5 = v4;
  if (!v4)
  {
    goto LABEL_9;
  }

  v6 = [(HDCloudSyncRecord *)v4 underlyingMessage];
  if (!v6)
  {
    v11 = objc_alloc_init(HDCloudSyncCodableSharedSummaryTransactionRecord);
    underlyingTransactionRecord = v5->_underlyingTransactionRecord;
    v5->_underlyingTransactionRecord = v11;

    goto LABEL_8;
  }

  v7 = [[HDCloudSyncCodableSharedSummaryTransactionRecord alloc] initWithData:v6];
  v8 = v5->_underlyingTransactionRecord;
  v5->_underlyingTransactionRecord = v7;

  if (v5->_underlyingTransactionRecord)
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
    *buf = 138543362;
    v17 = v5;
    _os_log_fault_impl(&dword_228986000, v9, OS_LOG_TYPE_FAULT, "[summary-sharing] %{public}@: Failed to decode underlying record.", buf, 0xCu);
  }

  v10 = 0;
LABEL_10:

  v13 = *MEMORY[0x277D85DE8];
  return v10;
}

- (NSUUID)UUID
{
  v3 = objc_alloc(MEMORY[0x277CCAD78]);
  v4 = [(HDCloudSyncCodableSharedSummaryTransactionRecord *)self->_underlyingTransactionRecord uuid];
  v5 = [v3 initWithUUIDString:v4];

  return v5;
}

- (NSString)sourceDeviceIdentifier
{
  v2 = [(HDCloudSyncCodableSharedSummaryTransactionRecord *)self->_underlyingTransactionRecord sourceDeviceIdentifier];
  v3 = [v2 copy];

  return v3;
}

- (NSArray)summaryIdentifiers
{
  v2 = [(HDCloudSyncCodableSharedSummaryTransactionRecord *)self->_underlyingTransactionRecord summaryIdentifiers];
  v3 = [v2 hk_map:&__block_literal_global_308_1];

  return v3;
}

id __63__HDCloudSyncSharedSummaryTransactionRecord_summaryIdentifiers__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCAD78];
  v3 = a2;
  v4 = [[v2 alloc] initWithUUIDString:v3];

  return v4;
}

@end