@interface HDCloudSyncSharedSummaryAuthorizationRecord
+ (BOOL)hasFutureSchema:(id)schema;
+ (BOOL)isAuthorizationRecord:(id)record;
+ (id)codableRecordFromRecord:(id)record;
+ (id)fieldsForUnprotectedSerialization;
+ (id)recordIDWithZoneID:(id)d UUID:(id)iD;
+ (id)recordWithCKRecord:(id)record error:(id *)error;
- (CKRecordID)participantRecordID;
- (HDCloudSyncSharedSummaryAuthorizationRecord)initWithCKRecord:(id)record schemaVersion:(int64_t)version;
- (NSArray)authorizationIdentifiers;
- (NSUUID)UUID;
- (id)initInZone:(id)zone UUID:(id)d authorizationIdentifiers:(id)identifiers participantRecord:(id)record;
- (void)replaceAuthorizationIdentifiers:(id)identifiers;
- (void)updateAuthorizationWithIdentifiersToAdd:(id)add identifiersToDelete:(id)delete;
@end

@implementation HDCloudSyncSharedSummaryAuthorizationRecord

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
  v8 = [v5 stringWithFormat:@"%@/%@", @"SharedSummaryAuthorizationRecord", uUIDString];

  v9 = [objc_alloc(MEMORY[0x277CBC5D0]) initWithRecordName:v8 zoneID:dCopy];

  return v9;
}

+ (BOOL)isAuthorizationRecord:(id)record
{
  recordType = [record recordType];
  v4 = [recordType isEqualToString:@"SharedSummaryAuthorizationRecordType"];

  return v4;
}

- (id)initInZone:(id)zone UUID:(id)d authorizationIdentifiers:(id)identifiers participantRecord:(id)record
{
  dCopy = d;
  identifiersCopy = identifiers;
  recordCopy = record;
  zoneCopy = zone;
  v14 = [objc_opt_class() recordIDWithZoneID:zoneCopy UUID:dCopy];

  v15 = [objc_alloc(MEMORY[0x277CBC5A0]) initWithRecordType:@"SharedSummaryAuthorizationRecordType" recordID:v14];
  v16 = [(HDCloudSyncSharedSummaryAuthorizationRecord *)self initWithCKRecord:v15 schemaVersion:1];
  if (v16)
  {
    v17 = objc_alloc(MEMORY[0x277CBC620]);
    record = [recordCopy record];
    recordID = [record recordID];
    v20 = [v17 initWithRecordID:recordID action:1];
    [v15 setObject:v20 forKeyedSubscript:@"ParticipantRecord"];

    uUIDString = [dCopy UUIDString];
    v22 = [uUIDString copy];
    [(HDCloudSyncCodableSharedSummaryAuthorizationRecord *)v16->_underlyingAuthorizationRecord setUuid:v22];

    v23 = [identifiersCopy copy];
    [(HDCloudSyncCodableSharedSummaryAuthorizationRecord *)v16->_underlyingAuthorizationRecord setAuthorizationCategories:v23];
  }

  return v16;
}

- (HDCloudSyncSharedSummaryAuthorizationRecord)initWithCKRecord:(id)record schemaVersion:(int64_t)version
{
  v18 = *MEMORY[0x277D85DE8];
  v15.receiver = self;
  v15.super_class = HDCloudSyncSharedSummaryAuthorizationRecord;
  v4 = [(HDCloudSyncRecord *)&v15 initWithCKRecord:record schemaVersion:version];
  v5 = v4;
  if (!v4)
  {
    goto LABEL_9;
  }

  underlyingMessage = [(HDCloudSyncRecord *)v4 underlyingMessage];
  if (!underlyingMessage)
  {
    v11 = objc_alloc_init(HDCloudSyncCodableSharedSummaryAuthorizationRecord);
    underlyingAuthorizationRecord = v5->_underlyingAuthorizationRecord;
    v5->_underlyingAuthorizationRecord = v11;

    goto LABEL_8;
  }

  v7 = [[HDCloudSyncCodableSharedSummaryAuthorizationRecord alloc] initWithData:underlyingMessage];
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
  uuid = [(HDCloudSyncCodableSharedSummaryAuthorizationRecord *)self->_underlyingAuthorizationRecord uuid];
  v5 = [v3 initWithUUIDString:uuid];

  return v5;
}

- (NSArray)authorizationIdentifiers
{
  authorizationCategories = [(HDCloudSyncCodableSharedSummaryAuthorizationRecord *)self->_underlyingAuthorizationRecord authorizationCategories];
  v3 = [authorizationCategories copy];

  return v3;
}

- (CKRecordID)participantRecordID
{
  record = [(HDCloudSyncRecord *)self record];
  v3 = [record objectForKeyedSubscript:@"ParticipantRecord"];

  recordID = [v3 recordID];

  return recordID;
}

- (void)updateAuthorizationWithIdentifiersToAdd:(id)add identifiersToDelete:(id)delete
{
  underlyingAuthorizationRecord = self->_underlyingAuthorizationRecord;
  deleteCopy = delete;
  addCopy = add;
  authorizationCategories = [(HDCloudSyncCodableSharedSummaryAuthorizationRecord *)underlyingAuthorizationRecord authorizationCategories];
  v11 = HDSharedSummaryMergeAuthorizationIdentifiers(authorizationCategories, addCopy, deleteCopy);

  v10 = [v11 mutableCopy];
  [(HDCloudSyncCodableSharedSummaryAuthorizationRecord *)self->_underlyingAuthorizationRecord setAuthorizationCategories:v10];
}

- (void)replaceAuthorizationIdentifiers:(id)identifiers
{
  v4 = [identifiers mutableCopy];
  [(HDCloudSyncCodableSharedSummaryAuthorizationRecord *)self->_underlyingAuthorizationRecord setAuthorizationCategories:v4];
}

+ (id)recordWithCKRecord:(id)record error:(id *)error
{
  recordCopy = record;
  recordType = [recordCopy recordType];
  recordType2 = [self recordType];
  v10 = [recordType isEqualToString:recordType2];

  if ((v10 & 1) == 0)
  {
    v16 = MEMORY[0x277CCA9B8];
    v17 = objc_opt_class();
    recordType3 = [recordCopy recordType];
    recordType4 = [self recordType];
    v18 = @"record has type (%@), but expected (%@)";
    v25 = recordType3;
    v26 = recordType4;
    v19 = v16;
    v20 = v17;
LABEL_9:
    v21 = [v19 hk_errorForInvalidArgument:@"@" class:v20 selector:a2 format:{v18, v25, v26}];
    if (v21)
    {
      if (error)
      {
        v22 = v21;
        *error = v21;
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

  recordType3 = [recordCopy hd_requiredValueForKey:@"Version" type:objc_opt_class() error:error];
  if (!recordType3 || [self requiresUnderlyingMessage] && (objc_msgSend(recordCopy, "hd_requiredEncryptedValueForKey:type:error:", @"UnderlyingMessage", objc_opt_class(), error), v12 = objc_claimAutoreleasedReturnValue(), v12, !v12))
  {
    v15 = 0;
    goto LABEL_17;
  }

  v13 = [recordCopy hd_requiredValueForKey:@"ParticipantRecord" type:objc_opt_class() error:error];
  recordType4 = v13;
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

  v15 = [[self alloc] initWithCKRecord:recordCopy schemaVersion:{objc_msgSend(recordType3, "integerValue")}];
LABEL_16:

LABEL_17:

  return v15;
}

+ (id)fieldsForUnprotectedSerialization
{
  v11[1] = *MEMORY[0x277D85DE8];
  v9.receiver = self;
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

+ (id)codableRecordFromRecord:(id)record
{
  recordCopy = record;
  v4 = objc_alloc_init(HDCloudSyncCodableSharedSummaryAuthorizationRecord);
  authorizationIdentifiers = [recordCopy authorizationIdentifiers];
  v6 = [authorizationIdentifiers mutableCopy];
  [(HDCloudSyncCodableSharedSummaryAuthorizationRecord *)v4 setAuthorizationCategories:v6];

  uUID = [recordCopy UUID];

  uUIDString = [uUID UUIDString];
  [(HDCloudSyncCodableSharedSummaryAuthorizationRecord *)v4 setUuid:uUIDString];

  return v4;
}

@end