@interface HDMedicationScheduleEntity
+ (BOOL)updateMedicationSchedulesToBeDeletedWithMedicationUUID:(id)d profile:(id)profile transaction:(id)transaction error:(id *)error;
+ (HDCodableMedicationSchedule)_codableRepresentationForMedicationScheduleID:(uint64_t)d row:(void *)row profile:(void *)profile transaction:(uint64_t)transaction error:;
+ (id)_insertSchedule:(uint64_t)schedule syncProvenance:(uint64_t)provenance syncIdentity:(void *)identity profile:(void *)profile transaction:(uint64_t)transaction error:;
+ (id)_medicationScheduleFromRow:(uint64_t)row persistentID:(void *)d transaction:(NSObject *)transaction error:;
+ (id)allActiveMedicationSchedulesWithTransaction:(id)transaction error:(id *)error;
+ (id)compatibilityVersion0ScheduleTypesPredicate;
+ (id)entityEncoderForProfile:(id)profile transaction:(id)transaction purpose:(int64_t)purpose encodingOptions:(id)options authorizationFilter:(id)filter;
+ (id)privateSubEntities;
+ (int64_t)allActiveSchedulesCreatedWithinTimeZone:(id)zone transaction:(id)transaction offsetChange:(int64_t *)change error:(id *)error;
+ (uint64_t)_enumerateSchedulesWithPredicate:(uint64_t)predicate limit:(void *)limit orderingTerms:(void *)terms transaction:(uint64_t)transaction error:(void *)error enumerationHandler:;
+ (uint64_t)_insertMedicationSchedule:(uint64_t)schedule syncProvenance:(uint64_t)provenance syncIdentity:(void *)identity profile:(void *)profile transaction:(void *)transaction error:;
+ (uint64_t)_insertTimeIntervals:(void *)intervals schedulePrimaryKey:(void *)key transaction:(uint64_t)transaction error:;
+ (uint64_t)_isNewestSchedule:(void *)schedule transaction:(uint64_t)transaction error:;
+ (uint64_t)_shouldProceedWithInsertionForSchedule:(void *)schedule profile:(void *)profile transaction:(void *)transaction error:;
@end

@implementation HDMedicationScheduleEntity

+ (id)_medicationScheduleFromRow:(uint64_t)row persistentID:(void *)d transaction:(NSObject *)transaction error:
{
  v61 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v39 = objc_opt_self();
  v46 = HDSQLiteColumnWithNameAsUUID();
  v7 = HDSQLiteColumnWithNameAsUUID();
  v8 = HDSQLiteColumnWithNameAsString();
  v9 = HDSQLiteColumnWithNameAsDate();
  v10 = HDSQLiteColumnWithNameAsDate();
  v48 = HDSQLiteColumnWithNameAsString();
  objc_opt_class();
  v45 = HDSQLiteColumnWithNameAsObject();
  v11 = HDSQLiteColumnWithNameAsString();
  HDSQLiteColumnWithNameAsDouble();
  v13 = v12;
  v44 = HDSQLiteColumnWithNameAsBoolean();
  v43 = HDSQLiteColumnWithNameAsInt64();
  v42 = HDSQLiteColumnWithNameAsInt64();
  v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v52 = 0;
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __88__HDMedicationScheduleEntity__medicationScheduleFromRow_persistentID_transaction_error___block_invoke;
  v50[3] = &unk_2796CE8F8;
  v15 = v14;
  v51 = v15;
  v16 = [HDMedicationScheduleIntervalDataEntity enumerateMedicationScheduleIntervalDataWithOwnerID:row transaction:dCopy error:&v52 enumerationHandler:v50];

  v49 = v52;
  v47 = v11;
  if (!v16)
  {
    v24 = v45;
    v18 = v10;
    v19 = v9;
    v20 = v7;
    _HKInitializeLogging();
    v30 = HKLogMedication();
    v25 = v46;
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      v54 = v39;
      v55 = 2114;
      v56 = v46;
      v57 = 2114;
      v58 = v49;
      _os_log_error_impl(&dword_25181C000, v30, OS_LOG_TYPE_ERROR, "%{public}@: Failed to fetch intervals for schedule UUID: %{public}@ error: %{public}@", buf, 0x20u);
    }

    v31 = v49;
    v29 = v31;
    v27 = v8;
    if (v31)
    {
      if (transaction)
      {
        v32 = v31;
        v26 = 0;
        *transaction = v29;
        goto LABEL_14;
      }

      _HKLogDroppedError();
    }

    v26 = 0;
    goto LABEL_14;
  }

  v41 = HDSQLiteColumnWithNameAsInt64();
  v17 = HDSQLiteColumnWithNameAsInt64();
  v18 = v10;
  v19 = v9;
  v20 = v7;
  v38 = HDSQLiteColumnWithNameAsInt64();
  v37 = HDSQLiteColumnWithNameAsInt64();
  v21 = objc_alloc(MEMORY[0x277D11570]);
  [MEMORY[0x277CBEBB0] timeZoneWithName:v48];
  v23 = v22 = v8;
  LOBYTE(v36) = v44;
  v24 = v45;
  v35 = v17;
  v25 = v46;
  v26 = [v21 initWithUUID:v46 medicationUUID:v20 medicationIdentifier:v22 createdUTCOffset:v23 startDateTime:v19 endDateTime:v18 timeIntervals:v13 scheduleType:v15 displayOptions:v41 cycleStartDateComponents:v35 deleted:v45 creationTimestamp:v36 note:v11 compatibilityVersionRange:{v43, v42}];

  v27 = v22;
  if ([v26 isUnavailable] & 1) != 0 || (objc_msgSend(v26, "isDeleted"))
  {
    goto LABEL_15;
  }

  v28 = v47;
  if ([v26 scheduleType])
  {
    goto LABEL_16;
  }

  _HKInitializeLogging();
  v29 = HKLogMedication();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    *buf = 138544130;
    v54 = v39;
    v55 = 2048;
    v56 = v38;
    v57 = 2048;
    v58 = v37;
    v59 = 2114;
    v60 = v26;
    _os_log_error_impl(&dword_25181C000, v29, OS_LOG_TYPE_ERROR, "[%{public}@] Attempting to enumerate unexpected schedule with sync_provenance: %ld and sync_identity: %ld: %{public}@", buf, 0x2Au);
  }

LABEL_14:

LABEL_15:
  v28 = v47;
LABEL_16:

  v33 = *MEMORY[0x277D85DE8];

  return v26;
}

+ (id)privateSubEntities
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (uint64_t)_enumerateSchedulesWithPredicate:(uint64_t)predicate limit:(void *)limit orderingTerms:(void *)terms transaction:(uint64_t)transaction error:(void *)error enumerationHandler:
{
  termsCopy = terms;
  errorCopy = error;
  limitCopy = limit;
  v15 = a2;
  v16 = objc_opt_self();
  v17 = [termsCopy databaseForEntityClass:v16];
  v18 = [v16 queryWithDatabase:v17 predicate:v15 limit:predicate orderingTerms:limitCopy groupBy:0];

  v19 = HDMedicationsScheduleEntityAllProperties();
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __120__HDMedicationScheduleEntity__enumerateSchedulesWithPredicate_limit_orderingTerms_transaction_error_enumerationHandler___block_invoke;
  v24[3] = &unk_2796CEB10;
  v26 = errorCopy;
  v27 = v16;
  v25 = termsCopy;
  v20 = errorCopy;
  v21 = termsCopy;
  v22 = [v18 enumeratePersistentIDsAndProperties:v19 error:transaction enumerationHandler:v24];

  return v22;
}

+ (id)allActiveMedicationSchedulesWithTransaction:(id)transaction error:(id *)error
{
  v20[2] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CBEB18];
  transactionCopy = transaction;
  v7 = objc_alloc_init(v5);
  v8 = [MEMORY[0x277D10B18] predicateWithProperty:@"deleted" equalToValue:MEMORY[0x277CBEC28]];
  v9 = HDMedicationSchedulePredicateForActiveMedications();
  v10 = MEMORY[0x277D10B20];
  v20[0] = v8;
  v20[1] = v9;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
  v12 = [v10 predicateMatchingAllPredicates:v11];

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __80__HDMedicationScheduleEntity_allActiveMedicationSchedulesWithTransaction_error___block_invoke;
  v18[3] = &unk_2796CD720;
  v19 = v7;
  v13 = v7;
  LODWORD(error) = [HDMedicationScheduleEntity enumerateSchedulesWithPredicate:v12 limit:0 orderingTerms:0 transaction:transactionCopy error:error enumerationHandler:v18];

  if (error)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  v16 = *MEMORY[0x277D85DE8];
  return v14;
}

+ (int64_t)allActiveSchedulesCreatedWithinTimeZone:(id)zone transaction:(id)transaction offsetChange:(int64_t *)change error:(id *)error
{
  v32[3] = *MEMORY[0x277D85DE8];
  zoneCopy = zone;
  transactionCopy = transaction;
  v9 = [MEMORY[0x277D10B18] predicateWithProperty:@"deleted" equalToValue:MEMORY[0x277CBEC28]];
  v10 = HDMedicationSchedulePredicateForActiveMedications();
  v11 = [MEMORY[0x277D10B28] doesNotContainPredicateWithProperty:@"schedule_type" values:&unk_2863C2E10];
  v12 = MEMORY[0x277D10B20];
  v32[0] = v9;
  v32[1] = v10;
  v32[2] = v11;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:3];
  v14 = [v12 predicateMatchingAllPredicates:v13];

  v15 = [MEMORY[0x277D10B68] orderingTermWithProperty:@"creation_date" entityClass:objc_opt_class() ascending:0];
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 1;
  if (change)
  {
    *change = 0x7FFFFFFFFFFFFFFFLL;
  }

  secondsFromGMT = [zoneCopy secondsFromGMT];
  v31 = v15;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v31 count:1];
  v18 = *MEMORY[0x277D10C08];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __101__HDMedicationScheduleEntity_allActiveSchedulesCreatedWithinTimeZone_transaction_offsetChange_error___block_invoke;
  v26[3] = &unk_2796CEAE8;
  v26[5] = secondsFromGMT;
  v26[6] = change;
  v26[4] = &v27;
  LODWORD(secondsFromGMT) = [(HDMedicationScheduleEntity *)self _enumerateSchedulesWithPredicate:v14 limit:v18 orderingTerms:v17 transaction:transactionCopy error:v23 enumerationHandler:v26];

  if (secondsFromGMT)
  {
    v19 = v28[3];
  }

  else
  {
    v19 = 0;
  }

  _Block_object_dispose(&v27, 8);

  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

BOOL __101__HDMedicationScheduleEntity_allActiveSchedulesCreatedWithinTimeZone_transaction_offsetChange_error___block_invoke(void *a1, void *a2)
{
  v3 = [a2 createdUTCOffset];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 secondsFromGMT];
  }

  else
  {
    v6 = [MEMORY[0x277CBEBB0] localTimeZone];
    v5 = [v6 secondsFromGMT];
  }

  v7 = a1[5];
  if (v7 >= 0)
  {
    v8 = a1[5];
  }

  else
  {
    v8 = -v7;
  }

  if (v5 >= 0)
  {
    v9 = v5;
  }

  else
  {
    v9 = -v5;
  }

  if (v8 != v9)
  {
    v10 = a1[6];
    if (v10)
    {
      *v10 = v7 - v5;
    }

    *(*(a1[4] + 8) + 24) = 2;
  }

  return v8 == v9;
}

uint64_t __120__HDMedicationScheduleEntity__enumerateSchedulesWithPredicate_limit_orderingTerms_transaction_error_enumerationHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, NSObject **a5)
{
  v6 = [(HDMedicationScheduleEntity *)*(a1 + 48) _medicationScheduleFromRow:a4 persistentID:a2 transaction:*(a1 + 32) error:a5];
  if (v6)
  {
    v7 = (*(*(a1 + 40) + 16))();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (uint64_t)_insertMedicationSchedule:(uint64_t)schedule syncProvenance:(uint64_t)provenance syncIdentity:(void *)identity profile:(void *)profile transaction:(void *)transaction error:
{
  v12 = a2;
  identityCopy = identity;
  profileCopy = profile;
  v15 = objc_opt_self();
  v16 = [(HDMedicationScheduleEntity *)v15 _shouldProceedWithInsertionForSchedule:v12 profile:identityCopy transaction:profileCopy error:transaction];
  if (v16 == 1)
  {
    v17 = [(HDMedicationScheduleEntity *)v15 _insertSchedule:v12 syncProvenance:schedule syncIdentity:provenance profile:identityCopy transaction:profileCopy error:transaction];
    if (v17)
    {
      timeIntervals = [v12 timeIntervals];
      v19 = [(HDMedicationScheduleEntity *)v15 _insertTimeIntervals:timeIntervals schedulePrimaryKey:v17 transaction:profileCopy error:transaction];
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = v16 == 2;
  }

  return v19;
}

+ (uint64_t)_shouldProceedWithInsertionForSchedule:(void *)schedule profile:(void *)profile transaction:(void *)transaction error:
{
  v8 = a2;
  scheduleCopy = schedule;
  profileCopy = profile;
  v11 = objc_opt_self();
  if ([v8 needsToBeMadeUnavailable])
  {
    v12 = MEMORY[0x277CCA9B8];
    v13 = [v8 description];
    [v12 hk_assignError:transaction code:100 format:{@"Attempted to save a HKMedicationSchedule [%@] that should have been made unavailable. Before inserting a schedule that is not understood by the current operating system, you must call -[HKMedicationSchedule unavailableSchedule] before insertion, and insert the copy returned instead.", v13}];

    v14 = 0;
    goto LABEL_32;
  }

  if (![v8 isDeleted])
  {
    if (([v8 isUnavailable] & 1) == 0 && !objc_msgSend(v8, "scheduleType"))
    {
      _HKInitializeLogging();
      v18 = HKLogMedication();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        +[HDMedicationScheduleEntity _shouldProceedWithInsertionForSchedule:profile:transaction:error:];
      }
    }

    medicationUUID = [v8 medicationUUID];
    if (medicationUUID)
    {
      v20 = medicationUUID;
      v21 = MEMORY[0x277D10B20];
      v22 = HDUserDomainConceptEntityPredicateForConceptUUID();
      v23 = [MEMORY[0x277D10B18] predicateWithProperty:*MEMORY[0x277D10508] equalToValue:MEMORY[0x277CBEC28]];
      v24 = [v21 compoundPredicateWithPredicate:v22 otherPredicate:v23];

      v25 = MEMORY[0x277D10920];
      protectedDatabase = [profileCopy protectedDatabase];
      v34 = 0;
      v27 = [v25 anyInDatabase:protectedDatabase predicate:v24 error:&v34];
      v28 = v34;

      if (!v27)
      {
        if (v28)
        {
          if (transaction)
          {
            v31 = v28;
            v14 = 0;
            *transaction = v28;
          }

          else
          {
            _HKLogDroppedError();
            v14 = 0;
          }
        }

        else
        {
          v14 = 2;
        }

        goto LABEL_31;
      }
    }

    else
    {
      v29 = MEMORY[0x277D10920];
      medicationIdentifier = [v8 medicationIdentifier];
      v20 = [v29 userDomainConceptUUIDForCanonicalConceptWithSemanticIdentifierString:medicationIdentifier profile:scheduleCopy transaction:profileCopy error:transaction];

      if (!v20)
      {
        _HKInitializeLogging();
        v32 = HKLogMedication();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          [HDMedicationScheduleEntity _shouldProceedWithInsertionForSchedule:v11 profile:v8 transaction:v32 error:?];
        }

        v20 = 0;
        v14 = 2;
        goto LABEL_31;
      }

      if (![MEMORY[0x277D10920] incrementSyncAnchorAndAdjustSyncProvenanceIfNotLocalForUserDomainConceptWithUUID:v20 profile:scheduleCopy transaction:profileCopy error:transaction])
      {
        v14 = 0;
        goto LABEL_31;
      }

      [v8 _setMedicationUUID:v20];
    }

    v14 = [(HDMedicationScheduleEntity *)v11 _isNewestSchedule:v8 transaction:profileCopy error:transaction];
LABEL_31:

    goto LABEL_32;
  }

  _HKInitializeLogging();
  v15 = HKLogMedication();
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG);

  if (v16)
  {
    v17 = HKLogMedication();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      [HDMedicationScheduleEntity _shouldProceedWithInsertionForSchedule:v11 profile:v17 transaction:? error:?];
    }
  }

  v14 = 1;
LABEL_32:

  return v14;
}

+ (id)_insertSchedule:(uint64_t)schedule syncProvenance:(uint64_t)provenance syncIdentity:(void *)identity profile:(void *)profile transaction:(uint64_t)transaction error:
{
  v42 = *MEMORY[0x277D85DE8];
  v12 = a2;
  identityCopy = identity;
  profileCopy = profile;
  v15 = objc_opt_self();
  protectedDatabase = [profileCopy protectedDatabase];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __100__HDMedicationScheduleEntity__insertSchedule_syncProvenance_syncIdentity_profile_transaction_error___block_invoke;
  v31[3] = &__block_descriptor_40_e15___NSString_8__0l;
  v31[4] = v15;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __100__HDMedicationScheduleEntity__insertSchedule_syncProvenance_syncIdentity_profile_transaction_error___block_invoke_2;
  v27[3] = &unk_2796CEB38;
  v17 = v12;
  v28 = v17;
  provenanceCopy = provenance;
  scheduleCopy = schedule;
  lastInsertRowID2 = 0;
  if ([protectedDatabase executeCachedStatementForKey:&_insertSchedule_syncProvenance_syncIdentity_profile_transaction_error__statementKey error:transaction SQLGenerator:v31 bindingHandler:v27 enumerationHandler:0])
  {
    if ([protectedDatabase getChangesCount] < 1)
    {
      v24 = MEMORY[0x277CCA9B8];
      uUID = [v17 UUID];
      [v24 hk_assignError:transaction code:115 format:{@"Duplicate medication schedule with UUID %@", uUID}];
      lastInsertRowID2 = 0;
    }

    else
    {
      _HKInitializeLogging();
      v19 = HKLogMedication();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        lastInsertRowID = [protectedDatabase lastInsertRowID];
        longLongValue = [lastInsertRowID longLongValue];
        *buf = 138544386;
        v33 = v15;
        v34 = 2048;
        v35 = longLongValue;
        v36 = 2048;
        provenanceCopy2 = provenance;
        v38 = 2048;
        scheduleCopy2 = schedule;
        v40 = 2114;
        v41 = v17;
        _os_log_impl(&dword_25181C000, v19, OS_LOG_TYPE_DEFAULT, "[%{public}@] Inserted schedule with persistent ID: %lld sync_identity: %lld, sync_provenance=%lld description: %{public}@", buf, 0x34u);
      }

      healthMedicationsProfileExtension = [identityCopy healthMedicationsProfileExtension];
      uUID = [healthMedicationsProfileExtension medicationScheduleManager];

      [uUID batchNotifyObserversOnCommitOfTransaction:profileCopy didAddOrModifySchedule:v17 syncIdentity:provenance];
      lastInsertRowID2 = [protectedDatabase lastInsertRowID];
    }
  }

  v25 = *MEMORY[0x277D85DE8];

  return lastInsertRowID2;
}

+ (uint64_t)_insertTimeIntervals:(void *)intervals schedulePrimaryKey:(void *)key transaction:(uint64_t)transaction error:
{
  v26 = *MEMORY[0x277D85DE8];
  v8 = a2;
  intervalsCopy = intervals;
  keyCopy = key;
  objc_opt_self();
  v11 = [keyCopy databaseForEntityClass:objc_opt_class()];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v12 = v8;
  v13 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v22;
    while (2)
    {
      v16 = 0;
      do
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [HDMedicationScheduleIntervalDataEntity insertPersistableMedicationScheduleIntervalData:*(*(&v21 + 1) + 8 * v16) ownerID:intervalsCopy database:v11 error:transaction, v21];

        if (!v17)
        {
          v18 = 0;
          goto LABEL_11;
        }

        ++v16;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  v18 = 1;
LABEL_11:

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

+ (uint64_t)_isNewestSchedule:(void *)schedule transaction:(uint64_t)transaction error:
{
  v26[2] = *MEMORY[0x277D85DE8];
  scheduleCopy = schedule;
  v7 = a2;
  v8 = objc_opt_self();
  uUID = [v7 UUID];
  v10 = [MEMORY[0x277D10B18] predicateWithProperty:@"uuid" value:uUID comparisonType:1];

  medicationIdentifier = [v7 medicationIdentifier];
  v12 = [MEMORY[0x277D10B18] predicateWithProperty:@"medication_identifier" equalToValue:medicationIdentifier];

  v13 = MEMORY[0x277D10B20];
  v26[0] = v10;
  v26[1] = v12;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
  v15 = [v13 predicateMatchingAnyPredicates:v14];

  [v7 creationTimestamp];
  v16 = HDMedicationSchedulePredicateForCreationDate(5);
  v17 = [MEMORY[0x277D10B70] compoundPredicateWithPredicate:v15 otherPredicate:v16];
  v18 = [scheduleCopy databaseForEntityClass:v8];

  v19 = [v8 countValueForProperty:@"creation_date" predicate:v17 database:v18 error:transaction];

  if (v19)
  {
    if ([v19 integerValue] < 1)
    {
      v21 = 1;
    }

    else
    {
      _HKInitializeLogging();
      v20 = HKLogMedication();
      v21 = 2;
      v22 = os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG);

      if (v22)
      {
        v23 = HKLogMedication();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          +[HDMedicationScheduleEntity _isNewestSchedule:transaction:error:];
        }

        v21 = 2;
      }
    }
  }

  else
  {
    v21 = 0;
  }

  v24 = *MEMORY[0x277D85DE8];
  return v21;
}

__CFString *__100__HDMedicationScheduleEntity__insertSchedule_syncProvenance_syncIdentity_profile_transaction_error___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  objc_opt_self();
  return @"INSERT OR REPLACE INTO medication_schedules (uuid, medication_uuid, medication_identifier, start_date_time, end_date_time, created_time_zone, frequency_type, cycle_start_date_components, note, creation_date, deleted, sync_identity, sync_provenance, minimum_compatibility_version, origin_compatibility_version, schedule_type, display_options, sync_anchor)VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, COALESCE((SELECT MAX(sync_anchor) + 1 FROM medication_schedules), 1))";
}

uint64_t __100__HDMedicationScheduleEntity__insertSchedule_syncProvenance_syncIdentity_profile_transaction_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = [*(a1 + 32) UUID];
  HDSQLiteBindFoundationValueToStatement();

  v5 = [*(a1 + 32) medicationUUID];
  HDSQLiteBindFoundationValueToStatement();

  v6 = [*(a1 + 32) medicationIdentifier];
  if (v6 != &stru_2863B7AF8)
  {
    v7 = v6;
    v8 = [*(a1 + 32) medicationIdentifier];
    if ([v8 isEqualToString:&stru_2863B7AF8])
    {
    }

    else
    {
      v9 = [*(a1 + 32) medicationIdentifier];

      if (v9)
      {
        v10 = [*(a1 + 32) medicationIdentifier];
        HDSQLiteBindStringToStatement();

        goto LABEL_7;
      }
    }
  }

  sqlite3_bind_null(a2, 3);
LABEL_7:
  v11 = [*(a1 + 32) startDateTime];
  HDSQLiteBindFoundationValueToStatement();

  v12 = [*(a1 + 32) endDateTime];
  HDSQLiteBindFoundationValueToStatement();

  v13 = [*(a1 + 32) createdUTCOffset];
  v14 = [v13 name];
  HDSQLiteBindStringToStatement();

  sqlite3_bind_int64(a2, 7, [*(a1 + 32) frequencyType]);
  v15 = [*(a1 + 32) cycleStartDate];

  if (v15)
  {
    v16 = MEMORY[0x277CCAAB0];
    v17 = [*(a1 + 32) cycleStartDate];
    v18 = [v16 archivedDataWithRootObject:v17 requiringSecureCoding:1 error:0];

    sqlite3_bind_blob64(a2, 8, [v18 bytes], objc_msgSend(v18, "length"), 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    sqlite3_bind_null(a2, 8);
  }

  v19 = [*(a1 + 32) note];

  if (v19)
  {
    v20 = [*(a1 + 32) note];
    HDSQLiteBindStringToStatement();
  }

  else
  {
    sqlite3_bind_null(a2, 9);
  }

  [*(a1 + 32) creationTimestamp];
  sqlite3_bind_double(a2, 10, v21);
  sqlite3_bind_int(a2, 11, [*(a1 + 32) isDeleted]);
  sqlite3_bind_int64(a2, 12, *(a1 + 40));
  sqlite3_bind_int64(a2, 13, *(a1 + 48));
  sqlite3_bind_int64(a2, 14, [*(a1 + 32) compatibilityRange]);
  [*(a1 + 32) compatibilityRange];
  sqlite3_bind_int64(a2, 15, v22);
  sqlite3_bind_int64(a2, 16, [*(a1 + 32) scheduleType]);
  v23 = [*(a1 + 32) displayOptions];

  return sqlite3_bind_int64(a2, 17, v23);
}

+ (BOOL)updateMedicationSchedulesToBeDeletedWithMedicationUUID:(id)d profile:(id)profile transaction:(id)transaction error:(id *)error
{
  dCopy = d;
  profileCopy = profile;
  protectedDatabase = [transaction protectedDatabase];
  currentSyncIdentityPersistentID = [profileCopy currentSyncIdentityPersistentID];

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __111__HDMedicationScheduleEntity_updateMedicationSchedulesToBeDeletedWithMedicationUUID_profile_transaction_error___block_invoke;
  v18[3] = &unk_2796CEB60;
  v19 = @"INSERT OR REPLACE INTO medication_schedules (uuid, medication_uuid, medication_identifier, start_date_time, created_time_zone, frequency_type, creation_date, deleted, sync_provenance, sync_identity, minimum_compatibility_version, origin_compatibility_version, schedule_type, display_options, sync_anchor) SELECT uuid, medication_uuid, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, COALESCE((SELECT MAX(sync_anchor) + 1 FROM medication_schedules), 1) FROM medication_schedules WHERE medication_uuid = ? AND deleted = ?";
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __111__HDMedicationScheduleEntity_updateMedicationSchedulesToBeDeletedWithMedicationUUID_profile_transaction_error___block_invoke_2;
  v15[3] = &unk_2796CE690;
  v16 = dCopy;
  v17 = currentSyncIdentityPersistentID;
  v13 = dCopy;
  LOBYTE(error) = [protectedDatabase executeCachedStatementForKey:&updateMedicationSchedulesToBeDeletedWithMedicationUUID_profile_transaction_error__statementKeyUDCUpdate error:error SQLGenerator:v18 bindingHandler:v15 enumerationHandler:0];

  return error;
}

uint64_t __111__HDMedicationScheduleEntity_updateMedicationSchedulesToBeDeletedWithMedicationUUID_profile_transaction_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_null(a2, 1);
  sqlite3_bind_double(a2, 2, 0.0);
  v4 = [MEMORY[0x277CBEBB0] timeZoneForSecondsFromGMT:0];
  v5 = [v4 name];
  HDSQLiteBindFoundationValueToStatement();

  sqlite3_bind_int64(a2, 4, 0);
  Current = CFAbsoluteTimeGetCurrent();
  sqlite3_bind_double(a2, 5, Current);
  sqlite3_bind_int64(a2, 6, 1);
  sqlite3_bind_int64(a2, 7, 0);
  sqlite3_bind_int64(a2, 8, *(a1 + 40));
  sqlite3_bind_int64(a2, 9, 0);
  sqlite3_bind_int64(a2, 10, 1);
  sqlite3_bind_int64(a2, 11, 0);
  sqlite3_bind_int64(a2, 12, 0);
  v7 = *(a1 + 32);
  HDSQLiteBindFoundationValueToStatement();

  return sqlite3_bind_int(a2, 14, 0);
}

+ (id)entityEncoderForProfile:(id)profile transaction:(id)transaction purpose:(int64_t)purpose encodingOptions:(id)options authorizationFilter:(id)filter
{
  filterCopy = filter;
  optionsCopy = options;
  transactionCopy = transaction;
  profileCopy = profile;
  v15 = [(HDEntityEncoder *)[HDMedicationScheduleEntityEncoder alloc] initWithHealthEntityClass:objc_opt_class() profile:profileCopy transaction:transactionCopy purpose:purpose encodingOptions:optionsCopy authorizationFilter:filterCopy];

  return v15;
}

+ (HDCodableMedicationSchedule)_codableRepresentationForMedicationScheduleID:(uint64_t)d row:(void *)row profile:(void *)profile transaction:(uint64_t)transaction error:
{
  profileCopy = profile;
  rowCopy = row;
  objc_opt_self();
  v11 = objc_alloc_init(HDCodableMedicationSchedule);
  v12 = HDSQLiteColumnWithNameAsUUID();
  hk_dataForUUIDBytes = [v12 hk_dataForUUIDBytes];
  [(HDCodableMedicationSchedule *)v11 setUuid:hk_dataForUUIDBytes];

  v14 = HDSQLiteColumnWithNameAsUUID();
  hk_dataForUUIDBytes2 = [v14 hk_dataForUUIDBytes];
  [(HDCodableMedicationSchedule *)v11 setMedicationUUID:hk_dataForUUIDBytes2];

  v16 = HDSQLiteColumnWithNameAsString();
  v17 = v16;
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = &stru_2863B7AF8;
  }

  [(HDCodableMedicationSchedule *)v11 setMedicationIdentifier:v18];

  v19 = HDSQLiteColumnWithNameAsDate();
  [v19 timeIntervalSinceReferenceDate];
  [(HDCodableMedicationSchedule *)v11 setStartDateTime:?];

  v20 = HDSQLiteColumnWithNameAsDate();
  [v20 timeIntervalSinceReferenceDate];
  [(HDCodableMedicationSchedule *)v11 setEndDateTime:?];

  v21 = HDSQLiteColumnWithNameAsString();
  [(HDCodableMedicationSchedule *)v11 setCreatedTimeZone:v21];

  HDSQLiteColumnWithNameAsDouble();
  [(HDCodableMedicationSchedule *)v11 setFrequencyType:?];
  objc_opt_class();
  v22 = HDSQLiteColumnWithNameAsObject();
  hk_codableDateComponents = [v22 hk_codableDateComponents];
  [(HDCodableMedicationSchedule *)v11 setCycleStartDateComponents:hk_codableDateComponents];

  v24 = HDSQLiteColumnWithNameAsString();
  [(HDCodableMedicationSchedule *)v11 setNote:v24];

  HDSQLiteColumnWithNameAsDouble();
  [(HDCodableMedicationSchedule *)v11 setCreationDate:?];
  [(HDCodableMedicationSchedule *)v11 setDeleted:HDSQLiteColumnWithNameAsBoolean()];
  v25 = objc_alloc_init(HDCodableMedicationScheduleCompatibilityVersionRange);
  [(HDCodableMedicationScheduleCompatibilityVersionRange *)v25 setMinimum:HDSQLiteColumnWithNameAsInt64()];
  [(HDCodableMedicationScheduleCompatibilityVersionRange *)v25 setOrigin:HDSQLiteColumnWithNameAsInt64()];
  [(HDCodableMedicationSchedule *)v11 setCompatibilityVersionRange:v25];
  [(HDCodableMedicationSchedule *)v11 setScheduleType:HDSQLiteColumnWithNameAsInt64()];
  [(HDCodableMedicationSchedule *)v11 setDisplayOptions:HDSQLiteColumnWithNameAsInt64()];
  v26 = HDSQLiteColumnWithNameAsInt64();
  syncIdentityManager = [rowCopy syncIdentityManager];

  v35 = 0;
  v28 = [syncIdentityManager identityForEntityID:v26 transaction:profileCopy error:&v35];
  v29 = v35;

  if (v28)
  {
    identity = [v28 identity];
    codableSyncIdentity = [identity codableSyncIdentity];
    [(HDCodableMedicationSchedule *)v11 setSyncIdentity:codableSyncIdentity];

    if ([HDMedicationScheduleIntervalDataEntity addIntervalDataToCodable:v11 withScheduleID:a2 transaction:profileCopy error:transaction])
    {
      v32 = v11;
      goto LABEL_10;
    }
  }

  else
  {
    _HKInitializeLogging();
    v33 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_FAULT))
    {
      [HDMedicationScheduleEntity _codableRepresentationForMedicationScheduleID:v29 row:v33 profile:? transaction:? error:?];
    }
  }

  v32 = 0;
LABEL_10:

  return v32;
}

+ (id)compatibilityVersion0ScheduleTypesPredicate
{
  v9[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D10B20];
  v3 = [MEMORY[0x277D10B60] isNullPredicateWithProperty:@"end_date_time"];
  v9[0] = v3;
  v4 = [MEMORY[0x277D10B28] containsPredicateWithProperty:@"schedule_type" values:&unk_2863C2E28];
  v9[1] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2];
  v6 = [v2 predicateMatchingAllPredicates:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (void)_shouldProceedWithInsertionForSchedule:profile:transaction:error:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_25181C000, v0, OS_LOG_TYPE_ERROR, "[%{public}@] Attempting to insert unexepcted schedule with type null: %{public}@", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

+ (void)_shouldProceedWithInsertionForSchedule:(NSObject *)a3 profile:transaction:error:.cold.2(uint64_t a1, void *a2, NSObject *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = [a2 medicationIdentifier];
  v6 = HKSensitiveLogItem();
  v8 = 138543618;
  v9 = a1;
  v10 = 2114;
  v11 = v6;
  _os_log_error_impl(&dword_25181C000, a3, OS_LOG_TYPE_ERROR, "[%{public}@] Medication not found for medication with identifier: %{public}@", &v8, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

+ (void)_shouldProceedWithInsertionForSchedule:(uint64_t)a1 profile:(NSObject *)a2 transaction:error:.cold.3(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_debug_impl(&dword_25181C000, a2, OS_LOG_TYPE_DEBUG, "[%{public}@] Schedule is deleted", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)_isNewestSchedule:transaction:error:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(&dword_25181C000, v0, OS_LOG_TYPE_DEBUG, "[%{public}@] Not inserting as there are %{public}@ newer schedules", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

+ (void)_codableRepresentationForMedicationScheduleID:(uint64_t)a1 row:(NSObject *)a2 profile:transaction:error:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_fault_impl(&dword_25181C000, a2, OS_LOG_TYPE_FAULT, "Unable to fetch sync identity from HDMedicationScheduleEntity %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end