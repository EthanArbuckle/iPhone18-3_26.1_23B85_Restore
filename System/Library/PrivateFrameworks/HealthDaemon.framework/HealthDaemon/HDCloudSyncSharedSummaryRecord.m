@interface HDCloudSyncSharedSummaryRecord
+ (BOOL)hasFutureSchema:(id)a3;
+ (BOOL)isSummaryRecord:(id)a3;
+ (id)recordIDWithZoneID:(id)a3 UUID:(id)a4;
- (HDCloudSyncSharedSummaryRecord)initWithCKRecord:(id)a3 schemaVersion:(int64_t)a4;
- (NSArray)authorizationIdentifiers;
- (NSArray)objectTypes;
- (NSUUID)UUID;
- (id)initInZone:(id)a3 UUID:(id)a4 package:(id)a5 name:(id)a6 version:(id)a7 compatibilityVersion:(id)a8 objectTypes:(id)a9 authorizationIdentifiers:(id)a10 summaryData:(id)a11;
@end

@implementation HDCloudSyncSharedSummaryRecord

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
  v8 = [v5 stringWithFormat:@"%@/%@", @"SharedSummaryRecord", v7];

  v9 = [objc_alloc(MEMORY[0x277CBC5D0]) initWithRecordName:v8 zoneID:v6];

  return v9;
}

+ (BOOL)isSummaryRecord:(id)a3
{
  v3 = [a3 recordType];
  v4 = [v3 isEqualToString:@"SharedSummaryRecordType"];

  return v4;
}

- (id)initInZone:(id)a3 UUID:(id)a4 package:(id)a5 name:(id)a6 version:(id)a7 compatibilityVersion:(id)a8 objectTypes:(id)a9 authorizationIdentifiers:(id)a10 summaryData:(id)a11
{
  v17 = a4;
  v43 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = a10;
  v23 = a11;
  v24 = a3;
  v25 = [objc_opt_class() recordIDWithZoneID:v24 UUID:v17];

  v26 = [objc_alloc(MEMORY[0x277CBC5A0]) initWithRecordType:@"SharedSummaryRecordType" recordID:v25];
  v27 = [(HDCloudSyncSharedSummaryRecord *)self initWithCKRecord:v26 schemaVersion:1];
  if (v27)
  {
    [v17 UUIDString];
    v42 = v22;
    v28 = v41 = v19;
    v29 = v23;
    v30 = v20;
    v31 = [v28 copy];
    [(HDCloudSyncCodableSharedSummaryRecord *)v27->_underlyingSummaryRecord setUuid:v31];

    v32 = [v43 copy];
    [(HDCloudSyncCodableSharedSummaryRecord *)v27->_underlyingSummaryRecord setPackage:v32];

    v33 = [v18 copy];
    [(HDCloudSyncCodableSharedSummaryRecord *)v27->_underlyingSummaryRecord setName:v33];

    v34 = [v41 copy];
    [(HDCloudSyncCodableSharedSummaryRecord *)v27->_underlyingSummaryRecord setVersion:v34];

    v35 = [v30 copy];
    [(HDCloudSyncCodableSharedSummaryRecord *)v27->_underlyingSummaryRecord setCompatibilityVersion:v35];

    v36 = [v21 hk_map:&__block_literal_global_201];
    v37 = [v36 mutableCopy];
    [(HDCloudSyncCodableSharedSummaryRecord *)v27->_underlyingSummaryRecord setObjectTypeIdentifiers:v37];

    v38 = [v42 copy];
    [(HDCloudSyncCodableSharedSummaryRecord *)v27->_underlyingSummaryRecord setAuthorizationCategories:v38];

    v39 = [v29 copy];
    [(HDCloudSyncCodableSharedSummaryRecord *)v27->_underlyingSummaryRecord setSummaryData:v39];

    v20 = v30;
    v23 = v29;

    v19 = v41;
    v22 = v42;
  }

  return v27;
}

- (HDCloudSyncSharedSummaryRecord)initWithCKRecord:(id)a3 schemaVersion:(int64_t)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v15.receiver = self;
  v15.super_class = HDCloudSyncSharedSummaryRecord;
  v4 = [(HDCloudSyncRecord *)&v15 initWithCKRecord:a3 schemaVersion:a4];
  v5 = v4;
  if (!v4)
  {
    goto LABEL_9;
  }

  v6 = [(HDCloudSyncRecord *)v4 underlyingMessage];
  if (!v6)
  {
    v11 = objc_alloc_init(HDCloudSyncCodableSharedSummaryRecord);
    underlyingSummaryRecord = v5->_underlyingSummaryRecord;
    v5->_underlyingSummaryRecord = v11;

    goto LABEL_8;
  }

  v7 = [[HDCloudSyncCodableSharedSummaryRecord alloc] initWithData:v6];
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
  v4 = [(HDCloudSyncCodableSharedSummaryRecord *)self->_underlyingSummaryRecord uuid];
  v5 = [v3 initWithUUIDString:v4];

  return v5;
}

- (NSArray)objectTypes
{
  v2 = [(HDCloudSyncCodableSharedSummaryRecord *)self->_underlyingSummaryRecord objectTypeIdentifiers];
  v3 = [v2 hk_map:&__block_literal_global_308_2];

  return v3;
}

- (NSArray)authorizationIdentifiers
{
  v2 = [(HDCloudSyncCodableSharedSummaryRecord *)self->_underlyingSummaryRecord authorizationCategories];
  v3 = [v2 copy];

  return v3;
}

@end