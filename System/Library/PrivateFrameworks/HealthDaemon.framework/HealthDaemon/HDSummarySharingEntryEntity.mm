@interface HDSummarySharingEntryEntity
+ (BOOL)enumerateCodableEntriesWithPredicate:(id)predicate profile:(id)profile error:(id *)error handler:(id)handler;
+ (BOOL)enumerateCodableEntriesWithPredicate:(id)predicate transaction:(id)transaction error:(id *)error handler:(id)handler;
+ (BOOL)insertOrReplaceCodableEntry:(id)entry CNContactIdentifier:(id)identifier shouldPause:(BOOL)pause syncProvenance:(int64_t)provenance transaction:(id)transaction error:(id *)error;
+ (BOOL)updateNotificationStatusForInvitiationWithUUID:(id)d newNotificationStatus:(int64_t)status dateModified:(id)modified profile:(id)profile error:(id *)error;
+ (BOOL)updateOwnerParticipant:(id)participant cloudKitIdentifier:(id)identifier predicate:(id)predicate profile:(id)profile error:(id *)error;
+ (BOOL)updateStatus:(int64_t)status dateModified:(id)modified dateAccepted:(id)accepted predicate:(id)predicate profile:(id)profile error:(id *)error;
+ (id)_pauseKeyForEntryUUIDString:(uint64_t)string;
+ (id)_propertiesForEntity;
+ (id)anyWithUUID:(id)d transaction:(id)transaction error:(id *)error;
+ (id)codableWithRow:(HDSQLiteRow *)row;
+ (id)indices;
+ (uint64_t)_readPauseStateForEntryWithUUIDString:(uint64_t)string;
+ (void)updatePauseStateForEntryWithUUID:(id)d shouldPause:(BOOL)pause;
@end

@implementation HDSummarySharingEntryEntity

+ (id)indices
{
  v13[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCACA8];
  v3 = [(HDSQLiteSchemaEntity *)HDSummarySharingEntryEntity disambiguatedSQLForProperty:@"status"];
  v4 = [v2 stringWithFormat:@"%@ IN (%ld, %ld)", v3, 0, 1];

  v5 = objc_alloc(MEMORY[0x277D10B40]);
  v6 = objc_opt_class();
  v12[0] = @"cloudkit_identifier";
  v12[1] = @"type";
  v12[2] = @"direction";
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:3];
  v8 = [v5 initWithEntity:v6 name:@"active" columns:v7 unique:1 predicateString:v4];
  v13[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)_propertiesForEntity
{
  v5[19] = *MEMORY[0x277D85DE8];
  v5[0] = @"uuid";
  v5[1] = @"invitation_uuid";
  v5[2] = @"CNContact_identifier";
  v5[3] = @"cloudkit_identifier";
  v5[4] = @"primary_contact_identifier";
  v5[5] = @"all_contact_identifiers";
  v5[6] = @"first_name";
  v5[7] = @"last_name";
  v5[8] = @"user_wheelchair_mode";
  v5[9] = @"type";
  v5[10] = @"status";
  v5[11] = @"date_modified";
  v5[12] = @"date_invited";
  v5[13] = @"date_accepted";
  v5[14] = @"setup_metadata";
  v5[15] = @"owner_participant";
  v5[16] = @"direction";
  v5[17] = @"notification_status";
  v5[18] = @"sync_provenance";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:19];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (BOOL)insertOrReplaceCodableEntry:(id)entry CNContactIdentifier:(id)identifier shouldPause:(BOOL)pause syncProvenance:(int64_t)provenance transaction:(id)transaction error:(id *)error
{
  pauseCopy = pause;
  entryCopy = entry;
  identifierCopy = identifier;
  transactionCopy = transaction;
  v14 = objc_opt_self();
  protectedDatabase = [transactionCopy protectedDatabase];
  v16 = objc_alloc(MEMORY[0x277CCAD78]);
  v17 = entryCopy;
  uuid = [entryCopy uuid];
  v19 = [v16 initWithUUIDString:uuid];

  v20 = [MEMORY[0x277D10B18] predicateWithProperty:@"uuid" equalToValue:v19];
  v48 = 0;
  v42 = protectedDatabase;
  v21 = [v14 propertyValueForAnyInDatabase:protectedDatabase property:@"date_modified" predicate:v20 error:&v48];
  v22 = v48;
  v23 = v22;
  if (v21)
  {
    v24 = 1;
  }

  else
  {
    v24 = v22 == 0;
  }

  if (v24)
  {
    v39 = v20;
    if (v21)
    {
      v25 = MEMORY[0x277CBEAA8];
      [v21 doubleValue];
      v26 = [v25 dateWithTimeIntervalSinceReferenceDate:?];
      v27 = MEMORY[0x277CBEAA8];
      [v17 dateModified];
      v28 = [v27 dateWithTimeIntervalSinceReferenceDate:?];
      if ([v26 isEqualToDate:v28] & 1) == 0 && (objc_msgSend(v26, "hk_isAfterDate:", v28))
      {

        v29 = 1;
LABEL_16:
        v20 = v39;
        goto LABEL_18;
      }
    }

    protectedDatabase2 = [transactionCopy protectedDatabase];
    [v14 _propertiesForEntity];
    v33 = v32 = identifierCopy;
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __125__HDSummarySharingEntryEntity__insertOrReplaceCodableEntry_CNContactIdentifier_shouldPause_syncProvenance_transaction_error___block_invoke;
    v43[3] = &unk_27861E1A8;
    v34 = v19;
    v44 = v34;
    v45 = v17;
    v38 = v32;
    v46 = v32;
    provenanceCopy = provenance;
    v35 = [v14 insertOrReplaceEntity:1 database:protectedDatabase2 properties:v33 error:error bindingHandler:v43];

    if (pauseCopy)
    {
      [v14 updatePauseStateForEntryWithUUID:v34 shouldPause:1];
    }

    v29 = v35 != 0;

    transactionCopy = v37;
    identifierCopy = v38;
    goto LABEL_16;
  }

  if (error)
  {
    v30 = v22;
    v29 = 0;
    *error = v23;
  }

  else
  {
    _HKLogDroppedError();
    v29 = 0;
  }

LABEL_18:

  return v29;
}

void __125__HDSummarySharingEntryEntity__insertOrReplaceCodableEntry_CNContactIdentifier_shouldPause_syncProvenance_transaction_error___block_invoke(uint64_t a1, uint64_t a2)
{
  MEMORY[0x22AAC6C00](a2, @"uuid", *(a1 + 32));
  v4 = [*(a1 + 40) invitationUUID];

  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x277CCAD78]);
    v6 = [*(a1 + 40) invitationUUID];
    v7 = [v5 initWithUUIDString:v6];
    MEMORY[0x22AAC6C00](a2, @"invitation_uuid", v7);
  }

  else
  {
    MEMORY[0x22AAC6BA0](a2, @"invitation_uuid");
  }

  if (*(a1 + 48))
  {
    MEMORY[0x22AAC6BD0](a2, @"CNContact_identifier");
  }

  else
  {
    MEMORY[0x22AAC6BA0](a2, @"CNContact_identifier");
  }

  v8 = [*(a1 + 40) cloudKitIdentifier];
  MEMORY[0x22AAC6BD0](a2, @"cloudkit_identifier", v8);

  v9 = [*(a1 + 40) primaryContactIdentifier];
  MEMORY[0x22AAC6BD0](a2, @"primary_contact_identifier", v9);

  v10 = [*(a1 + 40) allContactIdentifiers];
  HDSQLiteBindSecureCodingObjectToProperty();

  v11 = [*(a1 + 40) firstName];
  MEMORY[0x22AAC6BD0](a2, @"first_name", v11);

  v12 = [*(a1 + 40) lastName];
  MEMORY[0x22AAC6BD0](a2, @"last_name", v12);

  MEMORY[0x22AAC6B90](a2, @"user_wheelchair_mode", [*(a1 + 40) userWheelchairMode]);
  MEMORY[0x22AAC6B90](a2, @"type", [*(a1 + 40) type]);
  MEMORY[0x22AAC6B90](a2, @"status", [*(a1 + 40) status]);
  [*(a1 + 40) dateModified];
  MEMORY[0x22AAC6B60](a2, @"date_modified");
  if ([*(a1 + 40) hasDateInvited])
  {
    [*(a1 + 40) dateInvited];
  }

  else
  {
    v13.n128_f64[0] = CFAbsoluteTimeGetCurrent();
  }

  MEMORY[0x22AAC6B60](a2, @"date_invited", v13);
  if ([*(a1 + 40) hasDateAccepted])
  {
    [*(a1 + 40) dateAccepted];
    MEMORY[0x22AAC6B60](a2, @"date_accepted");
  }

  else
  {
    MEMORY[0x22AAC6BA0](a2, @"date_accepted");
  }

  v14 = [*(a1 + 40) sharingSetupMetadata];
  HDSQLiteBindSecureCodingObjectToProperty();

  v15 = [*(a1 + 40) shareOwnerParticipant];
  HDSQLiteBindSecureCodingObjectToProperty();

  MEMORY[0x22AAC6B90](a2, @"direction", [*(a1 + 40) direction]);
  MEMORY[0x22AAC6B90](a2, @"notification_status", [*(a1 + 40) notificationStatus]);
  v16 = *(a1 + 56);

  JUMPOUT(0x22AAC6B90);
}

+ (BOOL)updateStatus:(int64_t)status dateModified:(id)modified dateAccepted:(id)accepted predicate:(id)predicate profile:(id)profile error:(id *)error
{
  modifiedCopy = modified;
  acceptedCopy = accepted;
  predicateCopy = predicate;
  database = [profile database];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __94__HDSummarySharingEntryEntity_updateStatus_dateModified_dateAccepted_predicate_profile_error___block_invoke;
  v22[3] = &unk_2786145F8;
  v23 = predicateCopy;
  v24 = modifiedCopy;
  v25 = acceptedCopy;
  selfCopy = self;
  statusCopy = status;
  v18 = acceptedCopy;
  v19 = modifiedCopy;
  v20 = predicateCopy;
  LOBYTE(error) = [self performWriteTransactionWithHealthDatabase:database error:error block:v22];

  return error;
}

uint64_t __94__HDSummarySharingEntryEntity_updateStatus_dateModified_dateAccepted_predicate_profile_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v22[3] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CBEB18];
  v6 = a2;
  v7 = [v5 alloc];
  v22[0] = @"date_modified";
  v22[1] = @"date_accepted";
  v22[2] = @"status";
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:3];
  v9 = [v7 initWithArray:v8];

  v10 = *(a1 + 56);
  v11 = *(a1 + 32);
  v12 = [v6 protectedDatabase];

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __94__HDSummarySharingEntryEntity_updateStatus_dateModified_dateAccepted_predicate_profile_error___block_invoke_2;
  v18[3] = &unk_278613AE8;
  v19 = *(a1 + 40);
  v13 = *(a1 + 48);
  v14 = *(a1 + 64);
  v20 = v13;
  v21 = v14;
  v15 = [v10 updateProperties:v9 predicate:v11 database:v12 error:a3 bindingHandler:v18];

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

void __94__HDSummarySharingEntryEntity_updateStatus_dateModified_dateAccepted_predicate_profile_error___block_invoke_2(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) timeIntervalSinceReferenceDate];
  MEMORY[0x22AAC6B60](a2, @"date_modified");
  v4 = *(a1 + 40);
  if (v4)
  {
    [v4 timeIntervalSinceReferenceDate];
    MEMORY[0x22AAC6B60](a2, @"date_accepted");
  }

  else
  {
    MEMORY[0x22AAC6BA0](a2, @"date_accepted");
  }

  v5 = *(a1 + 48);

  JUMPOUT(0x22AAC6B90);
}

+ (BOOL)updateOwnerParticipant:(id)participant cloudKitIdentifier:(id)identifier predicate:(id)predicate profile:(id)profile error:(id *)error
{
  participantCopy = participant;
  identifierCopy = identifier;
  predicateCopy = predicate;
  database = [profile database];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __97__HDSummarySharingEntryEntity_updateOwnerParticipant_cloudKitIdentifier_predicate_profile_error___block_invoke;
  v20[3] = &unk_278613550;
  v21 = predicateCopy;
  v22 = participantCopy;
  v23 = identifierCopy;
  selfCopy = self;
  v16 = identifierCopy;
  v17 = participantCopy;
  v18 = predicateCopy;
  LOBYTE(error) = [self performWriteTransactionWithHealthDatabase:database error:error block:v20];

  return error;
}

uint64_t __97__HDSummarySharingEntryEntity_updateOwnerParticipant_cloudKitIdentifier_predicate_profile_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v17[2] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 56);
  v17[0] = @"owner_participant";
  v17[1] = @"cloudkit_identifier";
  v6 = MEMORY[0x277CBEA60];
  v7 = a2;
  v8 = [v6 arrayWithObjects:v17 count:2];
  v9 = *(a1 + 32);
  v10 = [v7 protectedDatabase];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __97__HDSummarySharingEntryEntity_updateOwnerParticipant_cloudKitIdentifier_predicate_profile_error___block_invoke_2;
  v14[3] = &unk_278613DE8;
  v15 = *(a1 + 40);
  v16 = *(a1 + 48);
  v11 = [v5 updateProperties:v8 predicate:v9 database:v10 error:a3 bindingHandler:v14];

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

void __97__HDSummarySharingEntryEntity_updateOwnerParticipant_cloudKitIdentifier_predicate_profile_error___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32))
  {
    HDSQLiteBindSecureCodingObjectToProperty();
  }

  else
  {
    MEMORY[0x22AAC6BA0](a2, @"owner_participant");
  }

  if (*(a1 + 40))
  {

    JUMPOUT(0x22AAC6BD0);
  }

  JUMPOUT(0x22AAC6BA0);
}

+ (BOOL)updateNotificationStatusForInvitiationWithUUID:(id)d newNotificationStatus:(int64_t)status dateModified:(id)modified profile:(id)profile error:(id *)error
{
  dCopy = d;
  modifiedCopy = modified;
  database = [profile database];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __127__HDSummarySharingEntryEntity_updateNotificationStatusForInvitiationWithUUID_newNotificationStatus_dateModified_profile_error___block_invoke;
  v18[3] = &unk_2786154B8;
  selfCopy = self;
  statusCopy = status;
  v19 = dCopy;
  v20 = modifiedCopy;
  v15 = modifiedCopy;
  v16 = dCopy;
  LOBYTE(error) = [self performWriteTransactionWithHealthDatabase:database error:error block:v18];

  return error;
}

uint64_t __127__HDSummarySharingEntryEntity_updateNotificationStatusForInvitiationWithUUID_newNotificationStatus_dateModified_profile_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v18[2] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = MEMORY[0x277D10B18];
  v7 = a2;
  v8 = [v6 predicateWithProperty:@"invitation_uuid" equalToValue:v5];
  v9 = *(a1 + 48);
  v18[0] = @"notification_status";
  v18[1] = @"date_modified";
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
  v11 = [v7 protectedDatabase];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __127__HDSummarySharingEntryEntity_updateNotificationStatusForInvitiationWithUUID_newNotificationStatus_dateModified_profile_error___block_invoke_2;
  v15[3] = &unk_278616B10;
  v17 = *(a1 + 56);
  v16 = *(a1 + 40);
  v12 = [v9 updateProperties:v10 predicate:v8 database:v11 error:a3 bindingHandler:v15];

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

void __127__HDSummarySharingEntryEntity_updateNotificationStatusForInvitiationWithUUID_newNotificationStatus_dateModified_profile_error___block_invoke_2(uint64_t a1, uint64_t a2)
{
  MEMORY[0x22AAC6B90](a2, @"notification_status", *(a1 + 40));
  [*(a1 + 32) timeIntervalSinceReferenceDate];

  JUMPOUT(0x22AAC6B60);
}

+ (void)updatePauseStateForEntryWithUUID:(id)d shouldPause:(BOOL)pause
{
  pauseCopy = pause;
  uUIDString = [d UUIDString];
  v10 = [(HDSummarySharingEntryEntity *)self _pauseKeyForEntryUUIDString:uUIDString];

  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v8 = standardUserDefaults;
  if (pauseCopy)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [v8 setObject:v9 forKey:v10];
  }

  else
  {
    [standardUserDefaults removeObjectForKey:v10];
  }
}

+ (id)_pauseKeyForEntryUUIDString:(uint64_t)string
{
  v2 = a2;
  objc_opt_self();
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"PausedSharing-%@", v2];

  return v3;
}

+ (uint64_t)_readPauseStateForEntryWithUUIDString:(uint64_t)string
{
  v2 = a2;
  v3 = objc_opt_self();
  v4 = [(HDSummarySharingEntryEntity *)v3 _pauseKeyForEntryUUIDString:v2];

  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v6 = [standardUserDefaults objectForKey:v4];

  bOOLValue = [v6 BOOLValue];
  return bOOLValue;
}

+ (BOOL)enumerateCodableEntriesWithPredicate:(id)predicate transaction:(id)transaction error:(id *)error handler:(id)handler
{
  handlerCopy = handler;
  predicateCopy = predicate;
  protectedDatabase = [transaction protectedDatabase];
  v13 = [self queryWithDatabase:protectedDatabase predicate:predicateCopy];

  _propertiesForEntity = [self _propertiesForEntity];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __94__HDSummarySharingEntryEntity_enumerateCodableEntriesWithPredicate_transaction_error_handler___block_invoke;
  v17[3] = &unk_278618B48;
  v18 = handlerCopy;
  selfCopy = self;
  v15 = handlerCopy;
  LOBYTE(error) = [v13 enumerateProperties:_propertiesForEntity error:error enumerationHandler:v17];

  return error;
}

uint64_t __94__HDSummarySharingEntryEntity_enumerateCodableEntriesWithPredicate_transaction_error_handler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = [*(a1 + 40) codableWithRow:?];
  v7 = HDSQLiteColumnWithNameAsString();
  v8 = *(a1 + 40);
  v9 = [v6 uuid];
  v10 = [(HDSummarySharingEntryEntity *)v8 _readPauseStateForEntryWithUUIDString:v9];

  v11 = [[HDSummarySharingEntry alloc] initWithCodableEntry:v6 CNContactIdentifier:v7 isPaused:v10];
  v12 = *(a1 + 32);
  v19 = 0;
  v13 = (*(v12 + 16))();
  v14 = v19;
  v15 = v14;
  if ((v13 & 1) == 0)
  {
    v16 = v14;
    if (v16)
    {
      if (a4)
      {
        v17 = v16;
        *a4 = v16;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  return v13;
}

+ (BOOL)enumerateCodableEntriesWithPredicate:(id)predicate profile:(id)profile error:(id *)error handler:(id)handler
{
  predicateCopy = predicate;
  handlerCopy = handler;
  database = [profile database];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __90__HDSummarySharingEntryEntity_enumerateCodableEntriesWithPredicate_profile_error_handler___block_invoke;
  v16[3] = &unk_27861B6E8;
  v18 = handlerCopy;
  selfCopy = self;
  v17 = predicateCopy;
  v13 = handlerCopy;
  v14 = predicateCopy;
  LOBYTE(error) = [self performReadTransactionWithHealthDatabase:database error:error block:v16];

  return error;
}

uint64_t __90__HDSummarySharingEntryEntity_enumerateCodableEntriesWithPredicate_profile_error_handler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 48);
  v6 = [a2 protectedDatabase];
  v7 = [v5 queryWithDatabase:v6 predicate:*(a1 + 32)];

  v8 = [*(a1 + 48) _propertiesForEntity];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __90__HDSummarySharingEntryEntity_enumerateCodableEntriesWithPredicate_profile_error_handler___block_invoke_2;
  v13[3] = &unk_278618B48;
  v12 = *(a1 + 40);
  v9 = v12;
  v14 = v12;
  v10 = [v7 enumerateProperties:v8 error:a3 enumerationHandler:v13];

  return v10;
}

uint64_t __90__HDSummarySharingEntryEntity_enumerateCodableEntriesWithPredicate_profile_error_handler___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = [*(a1 + 40) codableWithRow:?];
  v7 = HDSQLiteColumnWithNameAsString();
  v8 = *(a1 + 40);
  v9 = [v6 uuid];
  v10 = [(HDSummarySharingEntryEntity *)v8 _readPauseStateForEntryWithUUIDString:v9];

  v11 = [[HDSummarySharingEntry alloc] initWithCodableEntry:v6 CNContactIdentifier:v7 isPaused:v10];
  v12 = *(a1 + 32);
  v19 = 0;
  v13 = (*(v12 + 16))();
  v14 = v19;
  v15 = v14;
  if ((v13 & 1) == 0)
  {
    v16 = v14;
    if (v16)
    {
      if (a4)
      {
        v17 = v16;
        *a4 = v16;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  return v13;
}

+ (id)codableWithRow:(HDSQLiteRow *)row
{
  v15 = HDSQLiteColumnWithNameAsUUID();
  v14 = HDSQLiteColumnWithNameAsUUID();
  v21 = HDSQLiteColumnWithNameAsString();
  v20 = HDSQLiteColumnWithNameAsString();
  objc_opt_class();
  v19 = HDSQLiteColumnWithNameAsArrayOfClass();
  v18 = HDSQLiteColumnWithNameAsString();
  v3 = HDSQLiteColumnWithNameAsString();
  v16 = HDSQLiteColumnWithNameAsInt64();
  v4 = HDSQLiteColumnWithNameAsInt64();
  v5 = HDSQLiteColumnWithNameAsInt64();
  v6 = HDSQLiteColumnWithNameAsInt64();
  v7 = HDSQLiteColumnWithNameAsInt64();
  objc_opt_class();
  v13 = HDSQLiteColumnWithNameAsObject();
  objc_opt_class();
  v12 = HDSQLiteColumnWithNameAsObject();
  v8 = HDSQLiteColumnWithNameAsDate();
  v9 = HDSQLiteColumnWithNameAsDate();
  v10 = HDSQLiteColumnWithNameAsDate();
  v17 = [[HDCodableSummarySharingEntry alloc] initWithUUID:v15 invitationUUID:v14 cloudKitIdentifier:v21 primaryContactIdentifier:v20 allContactIdentifiers:v19 firstName:v18 lastName:v3 sharingAuthorizations:0 userWheelchairMode:v16 type:v4 direction:v6 status:v5 notificationStatus:v7 dateModified:v8 dateInvited:v9 dateAccepted:v10 setupMetadata:v13 ownerParticipant:v12];

  return v17;
}

+ (id)anyWithUUID:(id)d transaction:(id)transaction error:(id *)error
{
  v8 = MEMORY[0x277D10B18];
  transactionCopy = transaction;
  v10 = [v8 predicateWithProperty:@"uuid" equalToValue:d];
  v11 = [transactionCopy databaseForEntityClass:objc_opt_class()];

  v12 = [self anyInDatabase:v11 predicate:v10 error:error];

  return v12;
}

@end