@interface HDCloudSyncSharedSummaryRecord
+ (BOOL)hasFutureSchema:(id)schema;
+ (BOOL)isSummaryRecord:(id)record;
+ (id)recordIDWithZoneID:(id)d UUID:(id)iD;
- (HDCloudSyncSharedSummaryRecord)initWithCKRecord:(id)record schemaVersion:(int64_t)version;
- (NSArray)authorizationIdentifiers;
- (NSArray)objectTypes;
- (NSUUID)UUID;
- (id)initInZone:(id)zone UUID:(id)d package:(id)package name:(id)name version:(id)version compatibilityVersion:(id)compatibilityVersion objectTypes:(id)types authorizationIdentifiers:(id)self0 summaryData:(id)self1;
@end

@implementation HDCloudSyncSharedSummaryRecord

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
  v8 = [v5 stringWithFormat:@"%@/%@", @"SharedSummaryRecord", uUIDString];

  v9 = [objc_alloc(MEMORY[0x277CBC5D0]) initWithRecordName:v8 zoneID:dCopy];

  return v9;
}

+ (BOOL)isSummaryRecord:(id)record
{
  recordType = [record recordType];
  v4 = [recordType isEqualToString:@"SharedSummaryRecordType"];

  return v4;
}

- (id)initInZone:(id)zone UUID:(id)d package:(id)package name:(id)name version:(id)version compatibilityVersion:(id)compatibilityVersion objectTypes:(id)types authorizationIdentifiers:(id)self0 summaryData:(id)self1
{
  dCopy = d;
  packageCopy = package;
  nameCopy = name;
  versionCopy = version;
  compatibilityVersionCopy = compatibilityVersion;
  typesCopy = types;
  identifiersCopy = identifiers;
  dataCopy = data;
  zoneCopy = zone;
  v25 = [objc_opt_class() recordIDWithZoneID:zoneCopy UUID:dCopy];

  v26 = [objc_alloc(MEMORY[0x277CBC5A0]) initWithRecordType:@"SharedSummaryRecordType" recordID:v25];
  v27 = [(HDCloudSyncSharedSummaryRecord *)self initWithCKRecord:v26 schemaVersion:1];
  if (v27)
  {
    [dCopy UUIDString];
    v42 = identifiersCopy;
    v28 = v41 = versionCopy;
    v29 = dataCopy;
    v30 = compatibilityVersionCopy;
    v31 = [v28 copy];
    [(HDCloudSyncCodableSharedSummaryRecord *)v27->_underlyingSummaryRecord setUuid:v31];

    v32 = [packageCopy copy];
    [(HDCloudSyncCodableSharedSummaryRecord *)v27->_underlyingSummaryRecord setPackage:v32];

    v33 = [nameCopy copy];
    [(HDCloudSyncCodableSharedSummaryRecord *)v27->_underlyingSummaryRecord setName:v33];

    v34 = [v41 copy];
    [(HDCloudSyncCodableSharedSummaryRecord *)v27->_underlyingSummaryRecord setVersion:v34];

    v35 = [v30 copy];
    [(HDCloudSyncCodableSharedSummaryRecord *)v27->_underlyingSummaryRecord setCompatibilityVersion:v35];

    v36 = [typesCopy hk_map:&__block_literal_global_201];
    v37 = [v36 mutableCopy];
    [(HDCloudSyncCodableSharedSummaryRecord *)v27->_underlyingSummaryRecord setObjectTypeIdentifiers:v37];

    v38 = [v42 copy];
    [(HDCloudSyncCodableSharedSummaryRecord *)v27->_underlyingSummaryRecord setAuthorizationCategories:v38];

    v39 = [v29 copy];
    [(HDCloudSyncCodableSharedSummaryRecord *)v27->_underlyingSummaryRecord setSummaryData:v39];

    compatibilityVersionCopy = v30;
    dataCopy = v29;

    versionCopy = v41;
    identifiersCopy = v42;
  }

  return v27;
}

- (HDCloudSyncSharedSummaryRecord)initWithCKRecord:(id)record schemaVersion:(int64_t)version
{
  v18 = *MEMORY[0x277D85DE8];
  v15.receiver = self;
  v15.super_class = HDCloudSyncSharedSummaryRecord;
  v4 = [(HDCloudSyncRecord *)&v15 initWithCKRecord:record schemaVersion:version];
  v5 = v4;
  if (!v4)
  {
    goto LABEL_9;
  }

  underlyingMessage = [(HDCloudSyncRecord *)v4 underlyingMessage];
  if (!underlyingMessage)
  {
    v11 = objc_alloc_init(HDCloudSyncCodableSharedSummaryRecord);
    underlyingSummaryRecord = v5->_underlyingSummaryRecord;
    v5->_underlyingSummaryRecord = v11;

    goto LABEL_8;
  }

  v7 = [[HDCloudSyncCodableSharedSummaryRecord alloc] initWithData:underlyingMessage];
  v8 = v5->_underlyingSummaryRecord;
  v5->_underlyingSummaryRecord = v7;

  if (v5->_underlyingSummaryRecord)
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
  uuid = [(HDCloudSyncCodableSharedSummaryRecord *)self->_underlyingSummaryRecord uuid];
  v5 = [v3 initWithUUIDString:uuid];

  return v5;
}

- (NSArray)objectTypes
{
  objectTypeIdentifiers = [(HDCloudSyncCodableSharedSummaryRecord *)self->_underlyingSummaryRecord objectTypeIdentifiers];
  v3 = [objectTypeIdentifiers hk_map:&__block_literal_global_308_2];

  return v3;
}

- (NSArray)authorizationIdentifiers
{
  authorizationCategories = [(HDCloudSyncCodableSharedSummaryRecord *)self->_underlyingSummaryRecord authorizationCategories];
  v3 = [authorizationCategories copy];

  return v3;
}

@end