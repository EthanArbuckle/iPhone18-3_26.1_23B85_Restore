@interface HDMedicationDoseEventEntity
+ (BOOL)addCodableObject:(id)a3 toCollection:(id)a4;
+ (const)columnDefinitionsWithCount:(unint64_t *)a3;
+ (id)codableObjectsFromObjectCollection:(id)a3;
+ (id)entityEncoderForProfile:(id)a3 transaction:(id)a4 purpose:(int64_t)a5 encodingOptions:(id)a6 authorizationFilter:(id)a7;
+ (id)foreignKeys;
+ (id)indicesWithBehavior:(id)a3;
+ (id)insertDataObject:(id)a3 withProvenance:(id)a4 inDatabase:(id)a5 persistentID:(id)a6 error:(id *)a7;
+ (id)mergeDataObject:(id)a3 provenance:(id)a4 profile:(id)a5 transaction:(id)a6 error:(id *)a7 insertHandler:(id)a8;
+ (int64_t)shouldInsertObject:(id)a3 sourceID:(id)a4 profile:(id)a5 transaction:(id)a6 objectToReplace:(id *)a7 objectID:(id *)a8 error:(id *)a9;
@end

@implementation HDMedicationDoseEventEntity

+ (const)columnDefinitionsWithCount:(unint64_t *)a3
{
  objc_opt_self();
  *a3 = 11;
  return _columnDefinitionsWithCount__columnDefinitions;
}

+ (id)foreignKeys
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"data_id";
  v2 = +[(HDDataEntity *)HDSampleEntity];
  v7[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)indicesWithBehavior:(id)a3
{
  v22[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D10B40]);
  v4 = objc_opt_class();
  v21 = @"medication_identifier";
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];
  v6 = [v3 initWithEntity:v4 name:@"medication_identifiers" columns:v5];
  v22[0] = v6;
  v7 = objc_alloc(MEMORY[0x277D10B40]);
  v8 = objc_opt_class();
  v20 = @"medication_uuid";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:1];
  v10 = [v7 initWithEntity:v8 name:@"medication_uuids" columns:v9];
  v22[1] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];

  v12 = objc_alloc(MEMORY[0x277D10B40]);
  v13 = objc_opt_class();
  v19 = @"hashed_medication_identifier";
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v19 count:1];
  v15 = [v12 initWithEntity:v13 name:@"hashed_medication_identifiers" columns:v14];
  v16 = [v11 arrayByAddingObject:v15];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

+ (int64_t)shouldInsertObject:(id)a3 sourceID:(id)a4 profile:(id)a5 transaction:(id)a6 objectToReplace:(id *)a7 objectID:(id *)a8 error:(id *)a9
{
  v80 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = [v13 medicationUUID];
  if (v17)
  {
    v18 = v17;
    v19 = MEMORY[0x277D10B20];
    v20 = HDUserDomainConceptEntityPredicateForConceptUUID(v17, 1);
    v21 = [MEMORY[0x277D10B18] predicateWithProperty:@"deleted" equalToValue:MEMORY[0x277CBEC28]];
    v22 = [v19 compoundPredicateWithPredicate:v20 otherPredicate:v21];

    v23 = [v16 protectedDatabase];
    v71 = 0;
    v24 = [(HDSQLiteEntity *)HDUserDomainConceptEntity anyInDatabase:v23 predicate:v22 error:&v71];
    v25 = v71;

    if (!v24)
    {
      if (v25)
      {
        if (a9)
        {
          v38 = v25;
          *a9 = v25;
        }

        else
        {
          _HKLogDroppedError();
        }

        v35 = 2;
        goto LABEL_36;
      }

      _HKInitializeLogging();
      v40 = HKLogMedication();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        v41 = [v13 UUID];
        v42 = [v41 hk_shortRepresentation];
        *buf = 138543874;
        *&buf[4] = a1;
        v74 = 2114;
        v75 = v42;
        v76 = 2114;
        v77 = v18;
        _os_log_impl(&dword_228986000, v40, OS_LOG_TYPE_DEFAULT, "%{public}@: Ignore insert of %{public}@, because medication with UUID %{public}@ is deleted", buf, 0x20u);
      }

      v25 = 0;
LABEL_35:
      v35 = 1;
LABEL_36:

      goto LABEL_38;
    }

LABEL_31:
    v70.receiver = a1;
    v70.super_class = &OBJC_METACLASS___HDMedicationDoseEventEntity;
    v53 = objc_msgSendSuper2(&v70, sel_shouldInsertObject_sourceID_profile_transaction_objectToReplace_objectID_error_, v13, v14, v15, v16, a7, a8, a9);
    if (v53 != 1)
    {
      v35 = v53;
      goto LABEL_38;
    }

    v54 = [v13 metadata];
    v25 = [v54 objectForKeyedSubscript:*MEMORY[0x277CCC520]];

    v55 = [v13 metadata];
    v22 = [v55 objectForKeyedSubscript:*MEMORY[0x277CCC528]];

    _HKInitializeLogging();
    v56 = HKLogMedication();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
    {
      v57 = [v13 UUID];
      v58 = [v57 hk_shortRepresentation];
      v59 = a1;
      v60 = v58;
      *buf = 138544130;
      *&buf[4] = v59;
      v74 = 2114;
      v75 = v58;
      v76 = 2114;
      v77 = v25;
      v78 = 2114;
      v79 = v22;
      _os_log_impl(&dword_228986000, v56, OS_LOG_TYPE_DEFAULT, "%{public}@: Ignore insert of %{public}@, because of dedupe logic for (%{public}@, %{public}@)", buf, 0x2Au);
    }

    goto LABEL_35;
  }

  v26 = a1;
  v27 = v13;
  v66 = v15;
  v28 = v15;
  v65 = v16;
  v29 = v16;
  v64 = v26;
  v30 = objc_opt_self();
  v31 = [v27 medicationIdentifier];
  v72 = 0;
  v32 = [HDUserDomainConceptEntity userDomainConceptUUIDForCanonicalConceptWithSemanticIdentifierString:v31 profile:v28 transaction:v29 error:&v72];
  v33 = v72;

  v67 = v14;
  if (v32)
  {
    [v27 _setMedicationUUID:v32];
    if ([HDUserDomainConceptEntity incrementSyncAnchorAndAdjustSyncProvenanceIfNotLocalForUserDomainConceptWithUUID:v32 profile:v28 transaction:v29 error:a9])
    {
      v34 = v32;
      v35 = 0;
      v36 = 1;
      v37 = v32;
    }

    else
    {
      v37 = 0;
      v36 = 0;
      v35 = 2;
    }

LABEL_22:
    v16 = v65;
    goto LABEL_25;
  }

  if (!v33)
  {
    _HKInitializeLogging();
    v43 = HKLogMedication();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      v63 = [v27 UUID];
      v44 = [v63 hk_shortRepresentation];
      v45 = [v27 medicationIdentifier];
      *buf = 138543874;
      *&buf[4] = v30;
      v74 = 2114;
      v75 = v44;
      v76 = 2112;
      v77 = v45;
      _os_log_impl(&dword_228986000, v43, OS_LOG_TYPE_DEFAULT, "%{public}@: Ignore insert of %{public}@, because medicationUUID is nil for %@", buf, 0x20u);
    }

    v37 = 0;
    v36 = 0;
    v35 = 1;
    goto LABEL_22;
  }

  v16 = v65;
  if (a9)
  {
    v39 = v33;
    v37 = 0;
    v36 = 0;
    *a9 = v33;
  }

  else
  {
    _HKLogDroppedError();
    v37 = 0;
    v36 = 0;
  }

  v35 = 2;
LABEL_25:

  v18 = v37;
  if (v36)
  {
    v46 = v27;
    v18 = v18;
    v47 = v28;
    v48 = v29;
    a1 = v64;
    objc_opt_self();
    v49 = [v46 doseUnitString];

    v14 = v67;
    if (v49)
    {

      v15 = v66;
    }

    else
    {
      *buf = 0;
      v50 = [HDUserDomainConceptEntity cannonicalDoseUnitStringForUserDomainConceptWithUUID:v18 profile:v47 transaction:v48 canonicalDoseUnitStringOut:buf error:a9];
      v51 = *buf;
      v52 = v51;
      v15 = v66;
      if (!v50)
      {

        v35 = 2;
        goto LABEL_38;
      }

      [v46 _setDoseUnitString:v51];

      a1 = v64;
    }

    goto LABEL_31;
  }

  v15 = v66;
  v14 = v67;
LABEL_38:

  v61 = *MEMORY[0x277D85DE8];
  return v35;
}

+ (id)mergeDataObject:(id)a3 provenance:(id)a4 profile:(id)a5 transaction:(id)a6 error:(id *)a7 insertHandler:(id)a8
{
  v48[1] = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a6;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v27 = 0;
    goto LABEL_22;
  }

  v36 = 0;
  v13 = [a1 dataEntityForObject:v11 transaction:v12 error:&v36];
  if (v13)
  {
    v14 = [v11 doseUnitString];
    if (!v14)
    {
      v27 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v13, "persistentID")}];
LABEL_20:

      goto LABEL_21;
    }

    v15 = v13;
    v34 = v14;
    v35 = v12;
    v16 = [v35 databaseForEntityClass:objc_opt_self()];
    v38 = 0;
    v39 = &v38;
    v40 = 0x3032000000;
    v41 = __Block_byref_object_copy__109;
    v42 = __Block_byref_object_dispose__109;
    v43 = 0;
    v44 = @"unit_string";
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v44 count:1];
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __107__HDMedicationDoseEventEntity__lookupExistingPropertyAndMergeIfNeeded_newDoseUnitString_transaction_error___block_invoke;
    v37[3] = &unk_278618B98;
    v37[4] = &v38;
    v18 = [v15 getValuesForProperties:v17 database:v16 error:a7 handler:v37];

    if ((v18 & 1) == 0)
    {
      v27 = 0;
LABEL_19:
      _Block_object_dispose(&v38, 8);

      goto LABEL_20;
    }

    v19 = v39[5];
    v20 = v15;
    v21 = v19;
    v22 = v20;
    v23 = v21;
    v33 = v34;
    v32 = v16;
    v24 = objc_opt_self();
    if (!v23 || v23 == v33)
    {
      if (!v23)
      {
        v48[0] = @"unit_string";
        v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:1];
        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = __109__HDMedicationDoseEventEntity__updateEntityIfNeeded_existingDoseUnitString_newDoseUnitString_database_error___block_invoke;
        v46 = &unk_278614508;
        v47 = v33;
        v29 = [v22 updateProperties:v28 database:v32 error:a7 bindingHandler:buf];

        if (!v29)
        {
          v27 = 0;
          goto LABEL_18;
        }
      }
    }

    else
    {
      v25 = v24;
      if (([v23 isEqualToString:v33] & 1) == 0)
      {
        _HKInitializeLogging();
        v26 = HKLogMedication();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543874;
          *&buf[4] = v25;
          *&buf[12] = 2114;
          *&buf[14] = v23;
          *&buf[22] = 2114;
          v46 = v33;
          _os_log_error_impl(&dword_228986000, v26, OS_LOG_TYPE_ERROR, "%{public}@: Attempting to merge a dose event, where the existingDoseUnitString: %{public}@ is not the same as the new dose unit string  %{public}@.", buf, 0x20u);
        }
      }
    }

    v27 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v22, "persistentID")}];
LABEL_18:

    goto LABEL_19;
  }

  v27 = 0;
LABEL_21:

LABEL_22:
  v30 = *MEMORY[0x277D85DE8];

  return v27;
}

uint64_t __107__HDMedicationDoseEventEntity__lookupExistingPropertyAndMergeIfNeeded_newDoseUnitString_transaction_error___block_invoke(uint64_t a1)
{
  v2 = HDSQLiteColumnWithNameAsString();
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

+ (id)insertDataObject:(id)a3 withProvenance:(id)a4 inDatabase:(id)a5 persistentID:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a6;
  v14 = a5;
  v15 = objc_opt_class();
  if (([v15 isEqual:objc_opt_class()] & 1) == 0)
  {
    v35 = [MEMORY[0x277CCA890] currentHandler];
    [v35 handleFailureInMethod:a2 object:a1 file:@"HDMedicationDoseEventEntity.m" lineNumber:346 description:{@"Subclasses must override %s", "+[HDMedicationDoseEventEntity insertDataObject:withProvenance:inDatabase:persistentID:error:]"}];
  }

  v16 = v14;
  v17 = v12;
  v18 = v13;
  v19 = objc_opt_self();
  os_unfair_lock_lock(&_MergedGlobals_205);
  v20 = qword_280D67C68;
  if (!qword_280D67C68)
  {
    v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v22 = qword_280D67C68;
    qword_280D67C68 = v21;

    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __93__HDMedicationDoseEventEntity__logPersistedDoseEventOnCommitDatabase_doseEvent_persistentID___block_invoke;
    v39[3] = &__block_descriptor_40_e5_v8__0l;
    v39[4] = v19;
    [v16 onCommit:v39 orRollback:&__block_literal_global_389_0];
    v20 = qword_280D67C68;
  }

  if ([v20 count] <= 0x63)
  {
    v23 = qword_280D67C68;
    v24 = objc_alloc(MEMORY[0x277CCACA8]);
    v25 = [v18 longLongValue];
    v26 = [v17 UUID];
    v27 = [v26 hk_shortRepresentation];
    v28 = [v24 initWithFormat:@"(%lld, %@)", v25, v27];
    [v23 addObject:v28];
  }

  os_unfair_lock_unlock(&_MergedGlobals_205);

  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __93__HDMedicationDoseEventEntity_insertDataObject_withProvenance_inDatabase_persistentID_error___block_invoke_2;
  v36[3] = &unk_278613038;
  v37 = v18;
  v38 = v17;
  v29 = v17;
  v30 = v18;
  v31 = [v16 executeCachedStatementForKey:&insertDataObject_withProvenance_inDatabase_persistentID_error__insertKey_2 error:a7 SQLGenerator:&__block_literal_global_118 bindingHandler:v36 enumerationHandler:0];

  if (v31)
  {
    v32 = v30;
  }

  else
  {
    v32 = 0;
  }

  v33 = v32;

  return v32;
}

void __93__HDMedicationDoseEventEntity_insertDataObject_withProvenance_inDatabase_persistentID_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, [*(a1 + 32) longLongValue]);
  sqlite3_bind_int64(a2, 2, [*(a1 + 40) logOrigin]);
  v4 = [*(a1 + 40) scheduleItemIdentifier];

  if (v4)
  {
    v5 = [*(a1 + 40) scheduleItemIdentifier];
    HDSQLiteBindFoundationValueToStatement();
  }

  else
  {
    sqlite3_bind_null(a2, 3);
  }

  v6 = [*(a1 + 40) medicationUUID];
  HDSQLiteBindFoundationValueToStatement();

  v7 = [*(a1 + 40) medicationIdentifier];
  HDSQLiteBindFoundationValueToStatement();

  v8 = [*(a1 + 40) scheduledDoseQuantity];

  if (v8)
  {
    v9 = [*(a1 + 40) scheduledDoseQuantity];
    [v9 doubleValue];
    sqlite3_bind_double(a2, 6, v10);
  }

  else
  {
    sqlite3_bind_null(a2, 6);
  }

  v11 = [*(a1 + 40) doseQuantity];

  if (v11)
  {
    v12 = [*(a1 + 40) doseQuantity];
    [v12 doubleValue];
    sqlite3_bind_double(a2, 7, v13);
  }

  else
  {
    sqlite3_bind_null(a2, 7);
  }

  v14 = [*(a1 + 40) scheduledDate];

  if (v14)
  {
    v15 = [*(a1 + 40) scheduledDate];
    [v15 timeIntervalSinceReferenceDate];
    sqlite3_bind_double(a2, 8, v16);
  }

  else
  {
    sqlite3_bind_null(a2, 8);
  }

  sqlite3_bind_int64(a2, 9, [*(a1 + 40) logStatus]);
  v17 = objc_alloc(MEMORY[0x277CCD660]);
  v18 = [*(a1 + 40) medicationIdentifier];
  v21 = [v17 initWithSemanticIdentifierString:v18];

  v19 = [v21 underlyingIdentifier];
  HDSQLiteBindFoundationValueToStatement();

  v20 = [*(a1 + 40) doseUnitString];
  HDSQLiteBindFoundationValueToStatement();
}

void __93__HDMedicationDoseEventEntity__logPersistedDoseEventOnCommitDatabase_doseEvent_persistentID___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&_MergedGlobals_205);
  v2 = [qword_280D67C68 copy];
  v3 = qword_280D67C68;
  qword_280D67C68 = 0;

  os_unfair_lock_unlock(&_MergedGlobals_205);
  _HKInitializeLogging();
  v4 = HKLogMedication();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = [v2 count];
    v7 = [v2 componentsJoinedByString:{@", "}];
    v9 = 138543874;
    v10 = v5;
    v11 = 2048;
    v12 = v6;
    v13 = 2114;
    v14 = v7;
    _os_log_impl(&dword_228986000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: persisted %ld [%{public}@]", &v9, 0x20u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __93__HDMedicationDoseEventEntity__logPersistedDoseEventOnCommitDatabase_doseEvent_persistentID___block_invoke_387()
{
  os_unfair_lock_lock(&_MergedGlobals_205);
  v0 = qword_280D67C68;
  qword_280D67C68 = 0;

  os_unfair_lock_unlock(&_MergedGlobals_205);
}

+ (id)codableObjectsFromObjectCollection:(id)a3
{
  v3 = [a3 generatedObjectCollection];
  v4 = [v3 medicationDoseEvents];

  return v4;
}

+ (BOOL)addCodableObject:(id)a3 toCollection:(id)a4
{
  if (a3)
  {
    [a4 addMedicationDoseEvent:a3];
  }

  return a3 != 0;
}

+ (id)entityEncoderForProfile:(id)a3 transaction:(id)a4 purpose:(int64_t)a5 encodingOptions:(id)a6 authorizationFilter:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a4;
  v14 = a3;
  v15 = [[_HDMedicationDoseEventEntityEncoder alloc] initWithHealthEntityClass:objc_opt_class() profile:v14 transaction:v13 purpose:a5 encodingOptions:v12 authorizationFilter:v11];

  return v15;
}

@end