@interface HDCloudSyncSharedSummaryAuthorizationRecord
+ (BOOL)hasFutureSchema:(id)a3;
+ (BOOL)isAuthorizationRecord:(id)a3;
+ (id)codableRecordFromRecord:(id)a3;
+ (id)fieldsForUnprotectedSerialization;
+ (id)recordIDWithZoneID:(id)a3 UUID:(id)a4;
+ (id)recordWithCKRecord:(id)a3 error:(id *)a4;
- (CKRecordID)participantRecordID;
- (HDCloudSyncSharedSummaryAuthorizationRecord)initWithCKRecord:(id)a3 schemaVersion:(int64_t)a4;
- (NSArray)authorizationIdentifiers;
- (NSUUID)UUID;
- (id)initInZone:(id)a3 UUID:(id)a4 authorizationIdentifiers:(id)a5 participantRecord:(id)a6;
- (void)replaceAuthorizationIdentifiers:(id)a3;
- (void)updateAuthorizationWithIdentifiersToAdd:(id)a3 identifiersToDelete:(id)a4;
@end

@implementation HDCloudSyncSharedSummaryAuthorizationRecord

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
  v8 = [v5 stringWithFormat:@"%@/%@", @"SharedSummaryAuthorizationRecord", v7];

  v9 = [objc_alloc(MEMORY[0x277CBC5D0]) initWithRecordName:v8 zoneID:v6];

  return v9;
}

+ (BOOL)isAuthorizationRecord:(id)a3
{
  v3 = [a3 recordType];
  v4 = [v3 isEqualToString:@"SharedSummaryAuthorizationRecordType"];

  return v4;
}

- (id)initInZone:(id)a3 UUID:(id)a4 authorizationIdentifiers:(id)a5 participantRecord:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = a3;
  v14 = [objc_opt_class() recordIDWithZoneID:v13 UUID:v10];

  v15 = [objc_alloc(MEMORY[0x277CBC5A0]) initWithRecordType:@"SharedSummaryAuthorizationRecordType" recordID:v14];
  v16 = [(HDCloudSyncSharedSummaryAuthorizationRecord *)self initWithCKRecord:v15 schemaVersion:1];
  if (v16)
  {
    v17 = objc_alloc(MEMORY[0x277CBC620]);
    v18 = [v12 record];
    v19 = [v18 recordID];
    v20 = [v17 initWithRecordID:v19 action:1];
    [v15 setObject:v20 forKeyedSubscript:@"ParticipantRecord"];

    v21 = [v10 UUIDString];
    v22 = [v21 copy];
    [(HDCloudSyncCodableSharedSummaryAuthorizationRecord *)v16->_underlyingAuthorizationRecord setUuid:v22];

    v23 = [v11 copy];
    [(HDCloudSyncCodableSharedSummaryAuthorizationRecord *)v16->_underlyingAuthorizationRecord setAuthorizationCategories:v23];
  }

  return v16;
}

- (HDCloudSyncSharedSummaryAuthorizationRecord)initWithCKRecord:(id)a3 schemaVersion:(int64_t)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v15.receiver = self;
  v15.super_class = HDCloudSyncSharedSummaryAuthorizationRecord;
  v4 = [(HDCloudSyncRecord *)&v15 initWithCKRecord:a3 schemaVersion:a4];
  v5 = v4;
  if (!v4)
  {
    goto LABEL_9;
  }

  v6 = [(HDCloudSyncRecord *)v4 underlyingMessage];
  if (!v6)
  {
    v11 = objc_alloc_init(HDCloudSyncCodableSharedSummaryAuthorizationRecord);
    underlyingAuthorizationRecord = v5->_underlyingAuthorizationRecord;
    v5->_underlyingAuthorizationRecord = v11;

    goto LABEL_8;
  }

  v7 = [[HDCloudSyncCodableSharedSummaryAuthorizationRecord alloc] initWithData:v6];
  v8 = v5->_underlyingAuthorizationRecord;
  v5->_underlyingAuthorizationRecord = v7;

  if (v5->_underlyingAuthorizationRecord)
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
  v4 = [(HDCloudSyncCodableSharedSummaryAuthorizationRecord *)self->_underlyingAuthorizationRecord uuid];
  v5 = [v3 initWithUUIDString:v4];

  return v5;
}

- (NSArray)authorizationIdentifiers
{
  v2 = [(HDCloudSyncCodableSharedSummaryAuthorizationRecord *)self->_underlyingAuthorizationRecord authorizationCategories];
  v3 = [v2 copy];

  return v3;
}

- (CKRecordID)participantRecordID
{
  v2 = [(HDCloudSyncRecord *)self record];
  v3 = [v2 objectForKeyedSubscript:@"ParticipantRecord"];

  v4 = [v3 recordID];

  return v4;
}

- (void)updateAuthorizationWithIdentifiersToAdd:(id)a3 identifiersToDelete:(id)a4
{
  underlyingAuthorizationRecord = self->_underlyingAuthorizationRecord;
  v7 = a4;
  v8 = a3;
  v9 = [(HDCloudSyncCodableSharedSummaryAuthorizationRecord *)underlyingAuthorizationRecord authorizationCategories];
  v11 = HDSharedSummaryMergeAuthorizationIdentifiers(v9, v8, v7);

  v10 = [v11 mutableCopy];
  [(HDCloudSyncCodableSharedSummaryAuthorizationRecord *)self->_underlyingAuthorizationRecord setAuthorizationCategories:v10];
}

- (void)replaceAuthorizationIdentifiers:(id)a3
{
  v4 = [a3 mutableCopy];
  [(HDCloudSyncCodableSharedSummaryAuthorizationRecord *)self->_underlyingAuthorizationRecord setAuthorizationCategories:v4];
}

+ (id)recordWithCKRecord:(id)a3 error:(id *)a4
{
  v7 = a3;
  v8 = [v7 recordType];
  v9 = [a1 recordType];
  v10 = [v8 isEqualToString:v9];

  if ((v10 & 1) == 0)
  {
    v16 = MEMORY[0x277CCA9B8];
    v17 = objc_opt_class();
    v11 = [v7 recordType];
    v14 = [a1 recordType];
    v18 = @"record has type (%@), but expected (%@)";
    v25 = v11;
    v26 = v14;
    v19 = v16;
    v20 = v17;
LABEL_9:
    v21 = [v19 hk_errorForInvalidArgument:@"@" class:v20 selector:a2 format:{v18, v25, v26}];
    if (v21)
    {
      if (a4)
      {
        v22 = v21;
        *a4 = v21;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

LABEL_15:
    v15 = 0;
    goto LABEL_16;
  }

  v11 = [v7 hd_requiredValueForKey:@"Version" type:objc_opt_class() error:a4];
  if (!v11 || [a1 requiresUnderlyingMessage] && (objc_msgSend(v7, "hd_requiredEncryptedValueForKey:type:error:", @"UnderlyingMessage", objc_opt_class(), a4), v12 = objc_claimAutoreleasedReturnValue(), v12, !v12))
  {
    v15 = 0;
    goto LABEL_17;
  }

  v13 = [v7 hd_requiredValueForKey:@"ParticipantRecord" type:objc_opt_class() error:a4];
  v14 = v13;
  if (!v13)
  {
    goto LABEL_15;
  }

  if ([v13 referenceAction] != 1)
  {
    v24 = MEMORY[0x277CCA9B8];
    v20 = objc_opt_class();
    v18 = @"record reference to parent does not have correct reference action";
    v19 = v24;
    goto LABEL_9;
  }

  v15 = [[a1 alloc] initWithCKRecord:v7 schemaVersion:{objc_msgSend(v11, "integerValue")}];
LABEL_16:

LABEL_17:

  return v15;
}

+ (id)fieldsForUnprotectedSerialization
{
  v11[1] = *MEMORY[0x277D85DE8];
  v9.receiver = a1;
  v9.super_class = &OBJC_METACLASS___HDCloudSyncSharedSummaryAuthorizationRecord;
  v2 = objc_msgSendSuper2(&v9, sel_fieldsForUnprotectedSerialization);
  v10 = objc_opt_class();
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:&v10 count:1];
  v4 = [HDCloudSyncSerializedField fieldForKey:@"ParticipantRecord" classes:v3 encrypted:0];
  v11[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  v6 = [v2 arrayByAddingObjectsFromArray:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)codableRecordFromRecord:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(HDCloudSyncCodableSharedSummaryAuthorizationRecord);
  v5 = [v3 authorizationIdentifiers];
  v6 = [v5 mutableCopy];
  [(HDCloudSyncCodableSharedSummaryAuthorizationRecord *)v4 setAuthorizationCategories:v6];

  v7 = [v3 UUID];

  v8 = [v7 UUIDString];
  [(HDCloudSyncCodableSharedSummaryAuthorizationRecord *)v4 setUuid:v8];

  return v4;
}

@end