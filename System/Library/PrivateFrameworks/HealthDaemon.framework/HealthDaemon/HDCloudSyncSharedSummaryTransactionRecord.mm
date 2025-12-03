@interface HDCloudSyncSharedSummaryTransactionRecord
+ (BOOL)hasFutureSchema:(id)schema;
+ (BOOL)isTransactionRecord:(id)record;
+ (id)recordIDWithZoneID:(id)d UUID:(id)iD;
- (HDCloudSyncSharedSummaryTransactionRecord)initWithCKRecord:(id)record schemaVersion:(int64_t)version;
- (NSArray)summaryIdentifiers;
- (NSString)sourceDeviceIdentifier;
- (NSUUID)UUID;
- (id)initInZone:(id)zone UUID:(id)d sourceDeviceIdentifier:(id)identifier summaryIdentifiers:(id)identifiers metadata:(id)metadata;
@end

@implementation HDCloudSyncSharedSummaryTransactionRecord

+ (BOOL)hasFutureSchema:(id)schema
{
  v3 = [schema objectForKeyedSubscript:@"Version"];
  v4 = v3;
  v5 = v3 && [v3 integerValue] > 1;

  return v5;
}

+ (id)recordIDWithZoneID:(id)d UUID:(id)iD
{
  v5 = MEMORY[0x277CCACA8];
  dCopy = d;
  uUIDString = [iD UUIDString];
  v8 = [v5 stringWithFormat:@"%@/%@", @"SharedSummaryTransactionRecord", uUIDString];

  v9 = [objc_alloc(MEMORY[0x277CBC5D0]) initWithRecordName:v8 zoneID:dCopy];

  return v9;
}

+ (BOOL)isTransactionRecord:(id)record
{
  recordType = [record recordType];
  v4 = [recordType isEqualToString:@"SharedSummaryTransactionRecordType"];

  return v4;
}

- (id)initInZone:(id)zone UUID:(id)d sourceDeviceIdentifier:(id)identifier summaryIdentifiers:(id)identifiers metadata:(id)metadata
{
  dCopy = d;
  identifierCopy = identifier;
  identifiersCopy = identifiers;
  metadataCopy = metadata;
  zoneCopy = zone;
  v17 = [objc_opt_class() recordIDWithZoneID:zoneCopy UUID:dCopy];

  v18 = [objc_alloc(MEMORY[0x277CBC5A0]) initWithRecordType:@"SharedSummaryTransactionRecordType" recordID:v17];
  v19 = [(HDCloudSyncSharedSummaryTransactionRecord *)self initWithCKRecord:v18 schemaVersion:1];
  if (v19)
  {
    uUIDString = [dCopy UUIDString];
    v21 = [uUIDString copy];
    [(HDCloudSyncCodableSharedSummaryTransactionRecord *)v19->_underlyingTransactionRecord setUuid:v21];

    v22 = [identifierCopy copy];
    [(HDCloudSyncCodableSharedSummaryTransactionRecord *)v19->_underlyingTransactionRecord setSourceDeviceIdentifier:v22];

    v23 = [identifiersCopy hk_map:&__block_literal_global_122];
    v24 = [v23 mutableCopy];
    [(HDCloudSyncCodableSharedSummaryTransactionRecord *)v19->_underlyingTransactionRecord setSummaryIdentifiers:v24];

    v25 = [metadataCopy copy];
    [(HDCloudSyncCodableSharedSummaryTransactionRecord *)v19->_underlyingTransactionRecord setMetadata:v25];
  }

  return v19;
}

- (HDCloudSyncSharedSummaryTransactionRecord)initWithCKRecord:(id)record schemaVersion:(int64_t)version
{
  v18 = *MEMORY[0x277D85DE8];
  v15.receiver = self;
  v15.super_class = HDCloudSyncSharedSummaryTransactionRecord;
  v4 = [(HDCloudSyncRecord *)&v15 initWithCKRecord:record schemaVersion:version];
  v5 = v4;
  if (!v4)
  {
    goto LABEL_9;
  }

  underlyingMessage = [(HDCloudSyncRecord *)v4 underlyingMessage];
  if (!underlyingMessage)
  {
    v11 = objc_alloc_init(HDCloudSyncCodableSharedSummaryTransactionRecord);
    underlyingTransactionRecord = v5->_underlyingTransactionRecord;
    v5->_underlyingTransactionRecord = v11;

    goto LABEL_8;
  }

  v7 = [[HDCloudSyncCodableSharedSummaryTransactionRecord alloc] initWithData:underlyingMessage];
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
  uuid = [(HDCloudSyncCodableSharedSummaryTransactionRecord *)self->_underlyingTransactionRecord uuid];
  v5 = [v3 initWithUUIDString:uuid];

  return v5;
}

- (NSString)sourceDeviceIdentifier
{
  sourceDeviceIdentifier = [(HDCloudSyncCodableSharedSummaryTransactionRecord *)self->_underlyingTransactionRecord sourceDeviceIdentifier];
  v3 = [sourceDeviceIdentifier copy];

  return v3;
}

- (NSArray)summaryIdentifiers
{
  summaryIdentifiers = [(HDCloudSyncCodableSharedSummaryTransactionRecord *)self->_underlyingTransactionRecord summaryIdentifiers];
  v3 = [summaryIdentifiers hk_map:&__block_literal_global_308_1];

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