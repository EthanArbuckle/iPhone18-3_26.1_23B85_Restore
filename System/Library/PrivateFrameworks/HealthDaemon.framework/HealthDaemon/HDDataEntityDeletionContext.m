@interface HDDataEntityDeletionContext
- (BOOL)deleteObjectWithPersistentID:(int64_t)a3 entityClass:(Class)a4 error:(id *)a5;
- (BOOL)deleteObjectWithPersistentID:(int64_t)a3 objectUUID:(id)a4 entityClass:(Class)a5 objectType:(id)a6 provenanceIdentifier:(id)a7 deletionDate:(id)a8 deletedSampleIntervals:(id)a9 error:(id *)a10;
- (HDDataEntityDeletionContext)initWithProfile:(id)a3 transaction:(id)a4;
- (_HDObjectDeletionInfo)deleteInfoForObjectWithUUID:(SEL)a3 error:(id)a4;
@end

@implementation HDDataEntityDeletionContext

- (HDDataEntityDeletionContext)initWithProfile:(id)a3 transaction:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v17 = [MEMORY[0x277CCA890] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"HDDataEntityDeletionContext.m" lineNumber:45 description:{@"Invalid parameter not satisfying: %@", @"profile != nil"}];
  }

  v18.receiver = self;
  v18.super_class = HDDataEntityDeletionContext;
  v9 = [(HDDataEntityDeletionContext *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_profile, v7);
    objc_storeStrong(&v10->_transaction, a4);
    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    deleteStatementsByClassName = v10->_deleteStatementsByClassName;
    v10->_deleteStatementsByClassName = v11;

    v10->_deletedObjectCount = 0;
    v13 = objc_alloc_init(MEMORY[0x277CBEB58]);
    deletedObjectTypeSet = v10->_deletedObjectTypeSet;
    v10->_deletedObjectTypeSet = v13;

    lastInsertedDeletedObjectPersistentID = v10->_lastInsertedDeletedObjectPersistentID;
    v10->_lastInsertedDeletedObjectPersistentID = 0;

    *&v10->_preserveExactStartAndEndDates = 256;
  }

  return v10;
}

- (_HDObjectDeletionInfo)deleteInfoForObjectWithUUID:(SEL)a3 error:(id)a4
{
  v8 = a4;
  if (!self->_deleteInfoSQL)
  {
    v26 = [HDDataEntity disambiguatedSQLForProperty:@"data_id"];
    v25 = [HDDataEntity disambiguatedSQLForProperty:@"data_provenances.source_id"];
    v9 = [HDDataEntity disambiguatedSQLForProperty:@"provenance"];
    v10 = [HDDataEntity disambiguatedSQLForProperty:@"uuid"];
    v11 = [HDDataEntity disambiguatedSQLForProperty:@"type"];
    v12 = +[(HDSQLiteSchemaEntity *)HDDataEntity];
    v27 = v8;
    v13 = a5;
    v14 = +[(HDSQLiteSchemaEntity *)HDDataProvenanceEntity];
    v15 = +[HDDataProvenanceEntity databaseTable];
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT %@, %@, %@ FROM %@ INNER JOIN %@ AS %@ ON %@.%@=%@.ROWID WHERE ((%@ = ?) AND (%@ = ?))", v26, v25, v9, v12, v14, v15, v12, @"provenance", v15, v10, v11, 0];
    deleteInfoSQL = self->_deleteInfoSQL;
    self->_deleteInfoSQL = v16;

    a5 = v13;
    v8 = v27;
  }

  v31 = 0;
  v32 = &v31;
  v33 = 0x4010000000;
  v34 = &unk_22929BC4D;
  v35 = 0u;
  v36 = 0u;
  v18 = [(HDDatabaseTransaction *)self->_transaction databaseForEntityClass:objc_opt_class()];
  v19 = self->_deleteInfoSQL;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __65__HDDataEntityDeletionContext_deleteInfoForObjectWithUUID_error___block_invoke;
  v29[3] = &unk_278614860;
  v20 = v8;
  v30 = v20;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __65__HDDataEntityDeletionContext_deleteInfoForObjectWithUUID_error___block_invoke_2;
  v28[3] = &unk_278614620;
  v28[4] = &v31;
  v21 = [v18 executeSQL:v19 error:a5 bindingHandler:v29 enumerationHandler:v28];
  v22 = v32;
  *(v32 + 32) = v21;
  v23 = *(v22 + 3);
  *&retstr->var0 = *(v22 + 2);
  *&retstr->var2 = v23;

  _Block_object_dispose(&v31, 8);
  return result;
}

uint64_t __65__HDDataEntityDeletionContext_deleteInfoForObjectWithUUID_error___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = *(a1 + 32);
  HDSQLiteBindFoundationValueToStatement();

  return sqlite3_bind_int64(a2, 2, 1);
}

uint64_t __65__HDDataEntityDeletionContext_deleteInfoForObjectWithUUID_error___block_invoke_2(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 40) = HDSQLiteColumnAsInt64();
  *(*(*(a1 + 32) + 8) + 48) = HDSQLiteColumnAsInt64();
  *(*(*(a1 + 32) + 8) + 56) = HDSQLiteColumnAsInt64();
  return 0;
}

- (BOOL)deleteObjectWithPersistentID:(int64_t)a3 entityClass:(Class)a4 error:(id *)a5
{
  v36 = *MEMORY[0x277D85DE8];
  v9 = NSStringFromClass(a4);
  v10 = [(NSMutableDictionary *)self->_deleteStatementsByClassName objectForKeyedSubscript:v9];
  v11 = [(HDDatabaseTransaction *)self->_transaction databaseForEntityClass:a4];
  v29 = v9;
  if (!v10)
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v12 = [(objc_class *)a4 deleteStatementsForRelatedEntitiesWithTransaction:self->_transaction];
    [v10 addObjectsFromArray:v12];

    v13 = [(objc_class *)a4 baseDataEntityClass];
    if ([(objc_class *)a4 isSubclassOfClass:v13])
    {
      v14 = a4;
      do
      {
        v15 = [(objc_class *)v14 deleteStatementWithProperty:@"data_id" database:v11];
        [v10 addObject:v15];
        v14 = [(objc_class *)v14 superclass];
      }

      while (([(objc_class *)v14 isSubclassOfClass:v13]& 1) != 0);
    }

    v9 = v29;
    [(NSMutableDictionary *)self->_deleteStatementsByClassName setObject:v10 forKeyedSubscript:v29];
  }

  if (self->_callWillDeleteWithProfileTransaction)
  {
    v16 = [[a4 alloc] initWithPersistentID:a3];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      WeakRetained = objc_loadWeakRetained(&self->_profile);
      v18 = [v16 willDeleteWithProfile:WeakRetained transaction:self->_transaction error:a5];

      if ((v18 & 1) == 0)
      {

        v19 = 0;
        goto LABEL_25;
      }
    }

    else
    {
      [v16 willDeleteFromDatabase:v11];
    }
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v20 = v10;
  v21 = [v20 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v21)
  {
    v22 = v21;
    v28 = v11;
    v23 = *v32;
    while (2)
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v32 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v31 + 1) + 8 * i);
        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 3221225472;
        v30[2] = __78__HDDataEntityDeletionContext_deleteObjectWithPersistentID_entityClass_error___block_invoke;
        v30[3] = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l;
        v30[4] = a3;
        if (![v25 performStatementWithError:a5 bindingHandler:v30])
        {
          v19 = 0;
          goto LABEL_22;
        }
      }

      v22 = [v20 countByEnumeratingWithState:&v31 objects:v35 count:16];
      if (v22)
      {
        continue;
      }

      break;
    }

    v19 = 1;
LABEL_22:
    v11 = v28;
    v9 = v29;
  }

  else
  {
    v19 = 1;
  }

LABEL_25:
  v26 = *MEMORY[0x277D85DE8];
  return v19;
}

uint64_t __125__HDDataEntityDeletionContext__deleteAssociatedObjectsForPersistentID_entityClass_deletionDate_deletedSampleIntervals_error___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7, uint64_t a8)
{
  ++*(*(*(a1 + 72) + 8) + 24);
  v15 = *(a1 + 32);
  v16 = a7;
  v17 = a6;
  v18 = a5;
  v19 = a3;
  [v15 addObject:v18];
  [*(a1 + 40) addObject:v16];

  v20 = [*(a1 + 48) deleteObjectWithPersistentID:a2 objectUUID:v19 entityClass:a4 objectType:v18 provenanceIdentifier:v17 deletionDate:*(a1 + 56) deletedSampleIntervals:*(a1 + 64) error:a8];
  return v20;
}

- (BOOL)deleteObjectWithPersistentID:(int64_t)a3 objectUUID:(id)a4 entityClass:(Class)a5 objectType:(id)a6 provenanceIdentifier:(id)a7 deletionDate:(id)a8 deletedSampleIntervals:(id)a9 error:(id *)a10
{
  v133 = *MEMORY[0x277D85DE8];
  v102 = a4;
  v101 = a6;
  v100 = a7;
  v16 = a8;
  v17 = a9;
  v103 = v16;
  v104 = v17;
  if (!self)
  {

    goto LABEL_90;
  }

  v18 = [(HDDatabaseTransaction *)self->_transaction databaseForEntityClass:a5];
  v19 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v20 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v21 = 0;
  v112 = 0;
  v113 = &v112;
  v114 = 0x2020000000;
  v115 = 0;
  if (!self->_recursiveDeleteAuthorizationBlock)
  {
    v21 = HDAssociationEntityPredicateForAssociationEntityWithBehavior(1);
  }

  *buf = MEMORY[0x277D85DD0];
  *&buf[8] = 3221225472;
  *&buf[16] = __125__HDDataEntityDeletionContext__deleteAssociatedObjectsForPersistentID_entityClass_deletionDate_deletedSampleIntervals_error___block_invoke;
  v126 = &unk_278621968;
  v132 = &v112;
  v22 = v19;
  v127 = v22;
  v23 = v20;
  v128 = v23;
  v129 = self;
  v24 = v103;
  v130 = v24;
  v25 = v104;
  v131 = v25;
  if (([(objc_class *)a5 enumerateAssociatedObjectsForIdentifier:a3 inDatabase:v18 predicate:v21 error:a10 associatedObjectHandler:buf]& 1) != 0)
  {
    if (!*(v113 + 24) || ((*(self->_recursiveDeleteAuthorizationBlock + 2))() & 1) != 0)
    {
      v26 = 1;
      goto LABEL_10;
    }

    [MEMORY[0x277CCA9B8] hk_assignError:a10 code:3 description:@"object not found"];
    [v18 requireRollback];
  }

  v26 = 0;
LABEL_10:

  _Block_object_dispose(&v112, 8);
  if (!v26)
  {
LABEL_90:
    LOBYTE(v29) = 0;
    goto LABEL_91;
  }

  v27 = objc_opt_class();
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v98 = [v27 attachmentObjectIdentifierForSampleWithUUID:v102 profile:WeakRetained transaction:self->_transaction error:a10];

  v110 = 0;
  v111 = 0;
  v109 = 1;
  v99 = [(HDDatabaseTransaction *)self->_transaction databaseForEntityClass:a5];
  v107 = 0;
  v108 = 0;
  v29 = [HDDataExternalSyncIdentifierEntity populateSyncInfoForObjectID:a3 database:v99 localSourceIDOut:&v111 externalSyncObjectCodeOut:&v110 syncIdentifierOut:&v108 syncVersionOut:&v107 deletedOut:&v109 errorOut:a10];
  v30 = v108;
  v97 = v107;
  v31 = v30;
  if (v29)
  {
    if (v30)
    {
      if (v109 == 1)
      {
        _HKInitializeLogging();
        v32 = *MEMORY[0x277CCC2A0];
        if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          *&buf[4] = a3;
          _os_log_impl(&dword_228986000, v32, OS_LOG_TYPE_DEFAULT, "Attempted to delete the object with ID '%lld' which external sync already considers to be deleted", buf, 0xCu);
        }
      }
    }

    v33 = 0.0;
    v34 = 0.0;
    if (self->_insertDeletedObjects)
    {
      v35 = v99;
      v121 = 0;
      v122 = &v121;
      v123 = 0x2020000000;
      v124 = 0;
      v117 = 0;
      v118 = &v117;
      v119 = 0x2020000000;
      v120 = 0;
      startAndEndDatesSQL = self->_startAndEndDatesSQL;
      if (!startAndEndDatesSQL)
      {
        v37 = objc_alloc(MEMORY[0x277CCACA8]);
        v38 = +[(HDSQLiteSchemaEntity *)HDSampleEntity];
        v39 = [v37 initWithFormat:@"SELECT %@, %@ FROM %@ WHERE %@ = ?", @"start_date", @"end_date", v38, @"data_id"];
        v40 = self->_startAndEndDatesSQL;
        self->_startAndEndDatesSQL = v39;

        startAndEndDatesSQL = self->_startAndEndDatesSQL;
      }

      v112 = MEMORY[0x277D85DD0];
      v113 = 3221225472;
      v114 = __123__HDDataEntityDeletionContext__startAndEndDatesForSampleWithPersistentID_startTimestampOut_endTimestampOut_database_error___block_invoke;
      v115 = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l;
      v116 = a3;
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __123__HDDataEntityDeletionContext__startAndEndDatesForSampleWithPersistentID_startTimestampOut_endTimestampOut_database_error___block_invoke_2;
      v126 = &unk_278615C30;
      v127 = &v121;
      v128 = &v117;
      v41 = [v35 executeSQL:startAndEndDatesSQL error:a10 bindingHandler:&v112 enumerationHandler:buf];
      if (v41)
      {
        v33 = v122[3];
        v34 = v118[3];
      }

      _Block_object_dispose(&v117, 8);
      _Block_object_dispose(&v121, 8);

      if (!v41)
      {
        goto LABEL_87;
      }
    }

    if (![(HDDataEntityDeletionContext *)self deleteObjectWithPersistentID:a3 entityClass:a5 error:a10])
    {
      goto LABEL_87;
    }

    if (v25)
    {
      [v25 insertIntervalWithStartTime:v33 endTime:v34];
    }

    if (!v24 || !v100 || !self->_insertDeletedObjects)
    {
      goto LABEL_70;
    }

    v93 = [MEMORY[0x277CCD2E0] _deletedObjectWithUUID:v102 metadata:0];
    v94 = [(objc_class *)a5 _deletedEntityClass];
    if (!v94)
    {
      v88 = [MEMORY[0x277CCA890] currentHandler];
      [v88 handleFailureInMethod:a2 object:self file:@"HDDataEntityDeletionContext.m" lineNumber:295 description:{@"Invalid parameter not satisfying: %@", @"deletedEntityClass != Nil"}];
    }

    v106 = 0;
    v42 = v100;
    deletedObjectProvenanceIDsByOriginalProvenanceID = self->_deletedObjectProvenanceIDsByOriginalProvenanceID;
    if (deletedObjectProvenanceIDsByOriginalProvenanceID)
    {
      v44 = [(NSMutableDictionary *)deletedObjectProvenanceIDsByOriginalProvenanceID objectForKeyedSubscript:v42];
      if (v44)
      {
        v45 = v44;
        goto LABEL_60;
      }
    }

    else
    {
      v46 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v47 = self->_deletedObjectProvenanceIDsByOriginalProvenanceID;
      self->_deletedObjectProvenanceIDsByOriginalProvenanceID = v46;
    }

    v48 = objc_loadWeakRetained(&self->_profile);
    v96 = [v48 dataProvenanceManager];

    v49 = [v96 originProvenanceForPersistentID:v42 transaction:self->_transaction error:&v106];
    v50 = v49;
    if (!v49)
    {
      goto LABEL_48;
    }

    if (![v49 syncProvenance])
    {
      v51 = [v50 syncIdentity];
      v52 = objc_loadWeakRetained(&self->_profile);
      LOBYTE(v51) = v51 == [v52 currentSyncIdentityPersistentID];

      if (v51)
      {
        goto LABEL_37;
      }
    }

    v54 = [v50 sourceID];
    v112 = 0;
    v55 = v54;
    localSourceIDsByOriginalSourceID = self->_localSourceIDsByOriginalSourceID;
    if (localSourceIDsByOriginalSourceID)
    {
      v57 = [(NSMutableDictionary *)localSourceIDsByOriginalSourceID objectForKeyedSubscript:v55];
      if (v57)
      {
LABEL_45:

        v63 = v112;
        if (v57 || !v63)
        {
          if (v57 | v63)
          {
            v92 = [v50 copy];
            [v92 setSyncProvenance:0];
            [v92 setSourceID:v57];
            v66 = objc_loadWeakRetained(&self->_profile);
            [v92 setSyncIdentity:{objc_msgSend(v66, "currentSyncIdentityPersistentID")}];

            v67 = [v96 provenanceEntityForProvenance:v92 error:&v106];
            v68 = v67;
            if (v67)
            {
              v53 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v67, "persistentID")}];
            }

            else
            {
              v53 = 0;
            }

            if (!v53)
            {
              goto LABEL_58;
            }

            goto LABEL_57;
          }

          _HKInitializeLogging();
          v65 = *MEMORY[0x277CCC2A0];
          if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            *&buf[4] = v42;
            _os_log_impl(&dword_228986000, v65, OS_LOG_TYPE_INFO, "Unable to find localSourceID for originalProvenanceID (%@), so we'll keep using the originalProvenanceID", buf, 0xCu);
          }

LABEL_37:
          v53 = v42;
LABEL_57:
          [(NSMutableDictionary *)self->_deletedObjectProvenanceIDsByOriginalProvenanceID setObject:v53 forKeyedSubscript:v42];
LABEL_58:
          v45 = v53;
          goto LABEL_59;
        }

        v64 = v63;
        v106 = v63;

LABEL_48:
        v45 = 0;
LABEL_59:

LABEL_60:
        v69 = v106;
        if (!v45)
        {
          _HKInitializeLogging();
          v80 = *MEMORY[0x277CCC2A0];
          if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_INFO))
          {
            *buf = 138543618;
            *&buf[4] = v42;
            *&buf[12] = 2114;
            *&buf[14] = v69;
            _os_log_impl(&dword_228986000, v80, OS_LOG_TYPE_INFO, "Failed to get deleted object provenance for original provenance %{public}@: %{public}@", buf, 0x16u);
          }

          v81 = v69;
          v82 = v81;
          if (v81)
          {
            if (a10)
            {
              v83 = v81;
              *a10 = v82;
            }

            else
            {
              _HKLogDroppedError();
            }
          }

          goto LABEL_87;
        }

        if (!self->_preserveExactStartAndEndDates)
        {
          v33 = (v33 / 86400) * 86400.0;
          v34 = (v34 / 86400 + 1) * 86400.0;
        }

        v105 = 0;
        v70 = [v94 insertDeletedObject:v93 dataType:v101 provenanceIdentifier:v45 deletionDate:v24 persistStartAndEndDates:1 startTimestamp:v99 endTimestamp:v33 inDatabase:v34 error:&v105];
        v71 = v105;
        if (v70)
        {
          v72 = [v70 longLongValue];
          lastInsertedDeletedObjectPersistentID = self->_lastInsertedDeletedObjectPersistentID;
          if (!lastInsertedDeletedObjectPersistentID || v72 > [(NSNumber *)lastInsertedDeletedObjectPersistentID longLongValue])
          {
            objc_storeStrong(&self->_lastInsertedDeletedObjectPersistentID, v70);
          }

          if (!v31 || (v74 = objc_loadWeakRetained(&self->_profile), LOBYTE(v91) = 1, v75 = [HDDataExternalSyncIdentifierEntity insertSyncIdentifierWithProfile:v74 database:v99 objectID:v72 localSourceID:v111 externalSyncObjectCode:v110 syncIdentifier:v31 syncVersion:v97 deleted:v91 errorOut:a10], v74, v75))
          {

LABEL_70:
            v76 = objc_loadWeakRetained(&self->_profile);
            v77 = [v76 attachmentManager];
            v78 = [v101 attachmentSchemaIdentifier];
            v79 = [v77 removeAttachmentReferencesWithObjectIdentifier:v98 schemaIdentifier:v78 transaction:self->_transaction error:a10];

            if (v79)
            {
              ++self->_deletedObjectCount;
              [(NSMutableSet *)self->_deletedObjectTypeSet addObject:v101];
              LOBYTE(v29) = 1;
              goto LABEL_88;
            }

LABEL_87:
            LOBYTE(v29) = 0;
            goto LABEL_88;
          }
        }

        else
        {
          _HKInitializeLogging();
          v84 = *MEMORY[0x277CCC2A0];
          if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_INFO))
          {
            *buf = 138543874;
            *&buf[4] = v94;
            *&buf[12] = 2114;
            *&buf[14] = a5;
            *&buf[22] = 2114;
            v126 = v71;
            _os_log_impl(&dword_228986000, v84, OS_LOG_TYPE_INFO, "Failed to insert deleted object with entity class %{public}@ after deleting an object of class %{public}@: %{public}@", buf, 0x20u);
          }

          v85 = v71;
          v86 = v85;
          if (v85)
          {
            if (a10)
            {
              v87 = v85;
              *a10 = v86;
            }

            else
            {
              _HKLogDroppedError();
            }
          }
        }

        goto LABEL_87;
      }
    }

    else
    {
      v58 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v59 = self->_localSourceIDsByOriginalSourceID;
      self->_localSourceIDsByOriginalSourceID = v58;
    }

    v60 = objc_loadWeakRetained(&self->_profile);
    v61 = [v60 sourceManager];
    v62 = [v61 localSourceForSourceID:v55 copyIfNecessary:1 error:&v112];

    if (v62)
    {
      v57 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v62, "persistentID")}];
      [(NSMutableDictionary *)self->_localSourceIDsByOriginalSourceID setObject:v57 forKeyedSubscript:v55];
    }

    else
    {
      v57 = 0;
    }

    goto LABEL_45;
  }

LABEL_88:

LABEL_91:
  v89 = *MEMORY[0x277D85DE8];
  return v29;
}

uint64_t __123__HDDataEntityDeletionContext__startAndEndDatesForSampleWithPersistentID_startTimestampOut_endTimestampOut_database_error___block_invoke_2(uint64_t a1, uint64_t a2)
{
  *(*(*(a1 + 32) + 8) + 24) = MEMORY[0x22AAC6C50](a2, 0);
  *(*(*(a1 + 40) + 8) + 24) = MEMORY[0x22AAC6C50](a2, 1);
  return 1;
}

void __37__HDDataEntityDeletionContext_finish__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v7++) finish];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

@end