@interface HDUserDomainConceptManager
+ (id)_countOfMedicalUserDomainConceptsWithPredicate:(void *)a3 transaction:(uint64_t)a4 error:;
+ (id)_countOfUserDomainConceptsWithEntity:(void *)a3 predicate:(void *)a4 transaction:(uint64_t)a5 error:;
+ (id)_enumerationPredicateWithOptions:(void *)a3 existingPredicate:;
+ (id)countOfUserDomainConceptsMatchingPredicate:(id)a3 options:(unint64_t)a4 transaction:(id)a5 error:(id *)a6;
+ (id)predicateForAllPinnedConceptsMappingToRecordsWithUUIDs:(id)a3 pinnedConceptUUIDs:(id)a4;
+ (id)predicateForElementsOfListType:(unint64_t)a3;
- (BOOL)deleteUserDomainConcept:(id)a3 error:(id *)a4;
- (BOOL)deleteUserDomainConcepts:(id)a3 error:(id *)a4;
- (BOOL)enumerateUserDomainConceptsWithPredicate:(id)a3 enumerationOptions:(unint64_t)a4 limit:(int64_t)a5 orderingTerms:(id)a6 error:(id *)a7 enumerationHandler:(id)a8;
- (BOOL)enumerateUserDomainConceptsWithPredicate:(id)a3 enumerationOptions:(unint64_t)a4 limit:(int64_t)a5 orderingTerms:(id)a6 transaction:(id)a7 error:(id *)a8 enumerationHandler:(id)a9;
- (BOOL)modifyUserDomainConcepts:(id)a3 method:(int64_t)a4 error:(id *)a5;
- (BOOL)modifyUserDomainConcepts:(id)a3 method:(int64_t)a4 syncProvenance:(int64_t)a5 syncIdentity:(int64_t)a6 syncVersion:(id)a7 error:(id *)a8;
- (BOOL)updateUserDomainConcept:(id)a3 error:(id *)a4;
- (HDProfile)profile;
- (HDUserDomainConceptManager)init;
- (HDUserDomainConceptManager)initWithProfile:(id)a3;
- (_HDUserDomainConceptObserverRecordSummary)_synthesizeSummaryForCallToObserversAndFlushRecordsIsSynchronous:(os_unfair_lock_s *)a1;
- (id)keyValueDomain;
- (id)orderingTermsForSortDescriptors:(id)a3 error:(id *)a4;
- (id)userDomainConceptAnalyticsWithError:(id *)a3;
- (void)_callObserversIfPossible;
- (void)_notifyObserversForUDC:(uint64_t)a3 type:(void *)a4 transaction:;
- (void)closeObserverTransaction;
- (void)openObserverTransaction;
@end

@implementation HDUserDomainConceptManager

- (HDUserDomainConceptManager)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HDUserDomainConceptManager)initWithProfile:(id)a3
{
  v4 = a3;
  v26.receiver = self;
  v26.super_class = HDUserDomainConceptManager;
  v5 = [(HDUserDomainConceptManager *)&v26 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, v4);
    v7 = objc_alloc(MEMORY[0x277CCD738]);
    v8 = NSStringFromProtocol(&unk_283CE69F8);
    v9 = HKLogHealthOntology();
    v10 = [v7 initWithName:v8 loggingCategory:v9];
    userDomainConceptObservers = v6->_userDomainConceptObservers;
    v6->_userDomainConceptObservers = v10;

    v12 = objc_alloc(MEMORY[0x277CCDA88]);
    v13 = NSStringFromProtocol(&unk_283D715B8);
    v14 = HKLogHealthOntology();
    v15 = [v12 initWithName:v13 loggingCategory:v14];
    synchronousUserDomainConceptObservers = v6->_synchronousUserDomainConceptObservers;
    v6->_synchronousUserDomainConceptObservers = v15;

    v6->_userDomainConceptObserverLock._os_unfair_lock_opaque = 0;
    v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
    pendingUserDomainConceptObserverRecords = v6->_pendingUserDomainConceptObserverRecords;
    v6->_pendingUserDomainConceptObserverRecords = v17;

    v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
    pendingUserDomainConceptSynchronousObserverRecords = v6->_pendingUserDomainConceptSynchronousObserverRecords;
    v6->_pendingUserDomainConceptSynchronousObserverRecords = v19;

    v21 = [[HDUserDomainConceptProcessingManager alloc] initWithProfile:v4];
    processingManager = v6->_processingManager;
    v6->_processingManager = v21;

    v23 = [[HDUserDomainConceptSyncRequester alloc] initWithUserDomainConceptManager:v6];
    syncRequester = v6->_syncRequester;
    v6->_syncRequester = v23;
  }

  return v6;
}

- (BOOL)updateUserDomainConcept:(id)a3 error:(id *)a4
{
  v12 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v6 = MEMORY[0x277CBEA60];
  v7 = a3;
  v8 = [v6 arrayWithObjects:&v11 count:1];

  LOBYTE(a4) = [(HDUserDomainConceptManager *)self modifyUserDomainConcepts:v8 method:1 error:a4, v11, v12];
  v9 = *MEMORY[0x277D85DE8];
  return a4;
}

- (BOOL)deleteUserDomainConcept:(id)a3 error:(id *)a4
{
  v12 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v6 = MEMORY[0x277CBEA60];
  v7 = a3;
  v8 = [v6 arrayWithObjects:&v11 count:1];

  LOBYTE(a4) = [(HDUserDomainConceptManager *)self modifyUserDomainConcepts:v8 method:3 error:a4, v11, v12];
  v9 = *MEMORY[0x277D85DE8];
  return a4;
}

- (BOOL)deleteUserDomainConcepts:(id)a3 error:(id *)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a3;
  _HKInitializeLogging();
  v7 = HKLogHealthOntology();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543618;
    v12 = self;
    v13 = 2114;
    v14 = v6;
    _os_log_impl(&dword_228986000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: deleteUserDomainConcepts: %{public}@", &v11, 0x16u);
  }

  v8 = [(HDUserDomainConceptManager *)self modifyUserDomainConcepts:v6 method:3 error:a4];
  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

- (BOOL)enumerateUserDomainConceptsWithPredicate:(id)a3 enumerationOptions:(unint64_t)a4 limit:(int64_t)a5 orderingTerms:(id)a6 transaction:(id)a7 error:(id *)a8 enumerationHandler:(id)a9
{
  v13 = a4;
  v16 = a9;
  v17 = a7;
  v18 = a6;
  v19 = [HDUserDomainConceptManager _enumerationPredicateWithOptions:v13 existingPredicate:a3];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  LOBYTE(a8) = [HDUserDomainConceptEntity enumerateUserDomainConceptsWithPredicate:v19 limit:a5 orderingTerms:v18 profile:WeakRetained transaction:v17 error:a8 enumerationHandler:v16];

  return a8;
}

+ (id)_enumerationPredicateWithOptions:(void *)a3 existingPredicate:
{
  v4 = a3;
  objc_opt_self();
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [v5 hk_addNonNilObject:v4];

  if ((a2 & 1) == 0)
  {
    objc_opt_self();
    v6 = [MEMORY[0x277D10B18] predicateWithProperty:@"deleted" equalToValue:MEMORY[0x277CBEC28]];
    [v5 addObject:v6];
  }

  if ((a2 & 2) == 0)
  {
    v7 = +[HDUserDomainConceptEntity ignoreHiddenConceptsPredicate];
    [v5 addObject:v7];
  }

  if ([v5 count])
  {
    v8 = [MEMORY[0x277D10B20] predicateMatchingAllPredicates:v5];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)enumerateUserDomainConceptsWithPredicate:(id)a3 enumerationOptions:(unint64_t)a4 limit:(int64_t)a5 orderingTerms:(id)a6 error:(id *)a7 enumerationHandler:(id)a8
{
  v14 = a3;
  v15 = a6;
  v16 = a8;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v18 = [WeakRetained database];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __135__HDUserDomainConceptManager_enumerateUserDomainConceptsWithPredicate_enumerationOptions_limit_orderingTerms_error_enumerationHandler___block_invoke;
  v23[3] = &unk_27862B018;
  v23[4] = self;
  v24 = v14;
  v27 = a4;
  v28 = a5;
  v25 = v15;
  v26 = v16;
  v19 = v16;
  v20 = v15;
  v21 = v14;
  LOBYTE(a7) = [(HDHealthEntity *)HDUserDomainConceptEntity performReadTransactionWithHealthDatabase:v18 error:a7 block:v23];

  return a7;
}

- (id)userDomainConceptAnalyticsWithError:(id *)a3
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__172;
  v14 = __Block_byref_object_dispose__172;
  v15 = 0;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v5 = [WeakRetained database];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __66__HDUserDomainConceptManager_userDomainConceptAnalyticsWithError___block_invoke;
  v9[3] = &unk_278618610;
  v9[4] = &v10;
  LODWORD(a3) = [(HDHealthEntity *)HDUserDomainConceptEntity performReadTransactionWithHealthDatabase:v5 error:a3 block:v9];

  if (a3)
  {
    v6 = v11[5];
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  _Block_object_dispose(&v10, 8);

  return v7;
}

BOOL __66__HDUserDomainConceptManager_userDomainConceptAnalyticsWithError___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v58 = *MEMORY[0x277D85DE8];
  v3 = a2;
  objc_opt_self();
  v47 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = v3;
  objc_opt_self();
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v6 = [&unk_283CB0198 countByEnumeratingWithState:&v54 objects:&v52 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v55;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v55 != v8)
        {
          objc_enumerationMutation(&unk_283CB0198);
        }

        v49 = *(*(&v54 + 1) + 8 * i);
        v10 = v4;
        v50 = v4;
        v51 = v5;
        v11 = HKWithAutoreleasePool();

        if (!v11)
        {
          v12 = 0;
          v4 = v10;
          goto LABEL_11;
        }

        v4 = v10;
      }

      v7 = [&unk_283CB0198 countByEnumeratingWithState:&v54 objects:&v52 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v12 = v5;
LABEL_11:

  v13 = v47;
  if (v12)
  {
    [v47 addEntriesFromDictionary:v12];
    v45 = v4;
    v44 = v4;
    objc_opt_self();
    v14 = [MEMORY[0x277D10B68] orderingTermWithProperty:@"modification_date" entityClass:objc_opt_class() ascending:0];
    v15 = MEMORY[0x277D10B20];
    v16 = HDListUserDomainConceptEntityPredicateForListType(1, 1);
    v52 = v16;
    v17 = [MEMORY[0x277D10B18] predicateWithProperty:@"user_domain_concept_links.link_type" equalToValue:&unk_283CB3ED0];
    v53 = v17;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v52 count:2];
    v19 = [v15 predicateMatchingAllPredicates:v18];

    v20 = objc_alloc_init(MEMORY[0x277D10B80]);
    [v20 setEntityClass:objc_opt_class()];
    [v20 setLimitCount:1];
    [v20 setPredicate:v19];
    [v20 setGroupBy:@"udc_id"];
    v21 = v14;
    *&v54 = v14;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v54 count:1];
    [v20 setOrderingTerms:v22];

    v23 = *MEMORY[0x277D10A48];
    v24 = *MEMORY[0x277D10A70];
    v25 = [v44 protectedDatabase];

    v26 = [(HDSQLiteEntity *)HDListUserDomainConceptEntity aggregateSingleValueForProperty:v23 function:v24 queryDescriptor:v20 database:v25 error:a3];

    if (v26)
    {
      v27 = MEMORY[0x277CCABB0];
      v28 = [v26 allValues];
      v29 = [v28 firstObject];
      v30 = [v27 numberWithInteger:{objc_msgSend(v29, "integerValue")}];
    }

    else
    {
      v30 = 0;
    }

    if (v30)
    {
      v13 = v47;
      [v47 setObject:v30 forKeyedSubscript:@"countNumberLabConceptsPinned"];
      v32 = v44;
      v33 = objc_opt_self();
      v34 = HDMedicalUserDomainConceptEntityPredicateForCategoryType(&unk_283CB3E88, 1);
      v35 = MEMORY[0x277D10B20];
      v36 = HDUserDomainConceptEducationContentEntityPredicateForEducationContent(0);
      v52 = v36;
      v53 = v34;
      v37 = [MEMORY[0x277CBEA60] arrayWithObjects:&v52 count:2];
      v38 = [v35 predicateMatchingAllPredicates:v37];

      v39 = [(HDUserDomainConceptManager *)v33 _countOfMedicalUserDomainConceptsWithPredicate:v38 transaction:v32 error:a3];

      if (v39)
      {
        [v47 setObject:v39 forKeyedSubscript:@"countNumberLabConceptsWithEducation"];
        v31 = [v47 copy];
      }

      else
      {
        v31 = 0;
      }
    }

    else
    {
      v31 = 0;
      v13 = v47;
    }

    v4 = v45;
  }

  else
  {
    v31 = 0;
  }

  v40 = *(*(a1 + 32) + 8);
  v41 = *(v40 + 40);
  *(v40 + 40) = v31;

  result = *(*(*(a1 + 32) + 8) + 40) != 0;
  v43 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)orderingTermsForSortDescriptors:(id)a3 error:(id *)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v31;
    v10 = *MEMORY[0x277CCCE68];
    v28 = *MEMORY[0x277CCCE70];
    v27 = *MEMORY[0x277CCCE60];
    obj = v6;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v31 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v30 + 1) + 8 * i);
        v13 = [v12 key];
        v14 = [v13 isEqualToString:v10];

        v15 = @"creation_date";
        if ((v14 & 1) == 0)
        {
          v16 = [v12 key];
          v17 = [v16 isEqualToString:v28];

          v15 = @"modification_date";
          if ((v17 & 1) == 0)
          {
            v18 = [v12 key];
            v19 = [v18 isEqualToString:v27];

            v15 = @"sync_anchor";
            if ((v19 & 1) == 0)
            {
              v22 = MEMORY[0x277CCA9B8];
              v23 = [v12 key];
              [v22 hk_assignError:a4 code:3 format:{@"We don't have have any sort descriptor key defined for key: '%@'. Please add them here", v23}];

              v6 = obj;
              v21 = 0;
              goto LABEL_13;
            }
          }
        }

        v20 = [MEMORY[0x277D10B68] orderingTermWithProperty:v15 entityClass:objc_opt_class() ascending:{objc_msgSend(v12, "ascending")}];
        [v5 addObject:v20];
      }

      v6 = obj;
      v8 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v21 = v5;
LABEL_13:

  v24 = *MEMORY[0x277D85DE8];

  return v21;
}

- (BOOL)modifyUserDomainConcepts:(id)a3 method:(int64_t)a4 syncProvenance:(int64_t)a5 syncIdentity:(int64_t)a6 syncVersion:(id)a7 error:(id *)a8
{
  v14 = a3;
  if (self)
  {
    v15 = [[_HDUserDomainConceptManagerModificationOperation alloc] initWithUserDomainConcepts:v14 method:a4 syncProvenance:a5 syncIdentity:a6 syncVersion:a7];
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    v17 = [(HDJournalableOperation *)v15 performOrJournalWithProfile:WeakRetained error:a8];

    if (v17 && [(HDJournalableOperation *)v15 didJournal])
    {
      v18 = [v14 hk_map:&__block_literal_global_209];
      os_unfair_lock_lock(&self->_userDomainConceptObserverLock);
      [(NSMutableArray *)self->_pendingUserDomainConceptObserverRecords addObjectsFromArray:v18];
      os_unfair_lock_unlock(&self->_userDomainConceptObserverLock);
      [(HDUserDomainConceptManager *)self _callObserversIfPossible];
    }
  }

  else
  {
    LOBYTE(v17) = 0;
  }

  return v17;
}

- (BOOL)modifyUserDomainConcepts:(id)a3 method:(int64_t)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [(HDUserDomainConceptManager *)self profile];
  LOBYTE(a5) = -[HDUserDomainConceptManager modifyUserDomainConcepts:method:syncProvenance:syncIdentity:syncVersion:error:](self, "modifyUserDomainConcepts:method:syncProvenance:syncIdentity:syncVersion:error:", v8, a4, 0, [v9 currentSyncIdentityPersistentID], 0x400000000, a5);

  return a5;
}

- (void)openObserverTransaction
{
  os_unfair_lock_lock(&self->_userDomainConceptObserverLock);
  ++self->_userDomainConceptObserverOpenTransactionsCount;

  os_unfair_lock_unlock(&self->_userDomainConceptObserverLock);
}

- (void)closeObserverTransaction
{
  os_unfair_lock_lock(&self->_userDomainConceptObserverLock);
  userDomainConceptObserverOpenTransactionsCount = self->_userDomainConceptObserverOpenTransactionsCount;
  if (userDomainConceptObserverOpenTransactionsCount <= 0)
  {
    v5 = [MEMORY[0x277CCA890] currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"HDUserDomainConceptManager.m" lineNumber:332 description:@"No open transactions"];

    userDomainConceptObserverOpenTransactionsCount = self->_userDomainConceptObserverOpenTransactionsCount;
  }

  self->_userDomainConceptObserverOpenTransactionsCount = userDomainConceptObserverOpenTransactionsCount - 1;
  os_unfair_lock_unlock(&self->_userDomainConceptObserverLock);

  [(HDUserDomainConceptManager *)self _callObserversIfPossible];
}

- (void)_callObserversIfPossible
{
  v26 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v2 = [(HDUserDomainConceptManager *)a1 _synthesizeSummaryForCallToObserversAndFlushRecordsIsSynchronous:?];
    v3 = v2;
    if (v2 && ([v2 isEmpty] & 1) == 0)
    {
      _HKInitializeLogging();
      v4 = HKLogHealthOntology();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = [v3 addedConcepts];
        v6 = [v5 count];
        v7 = [v3 updatedConcepts];
        v8 = [v7 count];
        v9 = [v3 journaledConcepts];
        v10 = [v9 count];
        v11 = [v3 removedConcepts];
        *buf = 138544386;
        v17 = a1;
        v18 = 2048;
        v19 = v6;
        v20 = 2048;
        v21 = v8;
        v22 = 2048;
        v23 = v10;
        v24 = 2048;
        v25 = [v11 count];
        _os_log_impl(&dword_228986000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: notify UDC observers about: added=%ld, updated=%ld, journaled=%ld, deleted=%ld", buf, 0x34u);
      }

      v12 = *(a1 + 8);
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __54__HDUserDomainConceptManager__callObserversIfPossible__block_invoke;
      v14[3] = &unk_27862B088;
      v14[4] = a1;
      v15 = v3;
      [v12 notifyObservers:v14];
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_notifyObserversForUDC:(uint64_t)a3 type:(void *)a4 transaction:
{
  v7 = a4;
  if (a1)
  {
    v8 = a2;
    os_unfair_lock_lock((a1 + 24));
    v9 = *(a1 + 56);
    if (!v9)
    {
      v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v11 = *(a1 + 56);
      *(a1 + 56) = v10;

      v12 = [v7 protectedDatabase];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __70__HDUserDomainConceptManager__notifyObserversForUDC_type_transaction___block_invoke;
      v17[3] = &unk_278620C68;
      v17[4] = a1;
      v13 = v7;
      v18 = v13;
      [v12 beforeCommit:v17];

      v15[4] = a1;
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __70__HDUserDomainConceptManager__notifyObserversForUDC_type_transaction___block_invoke_2;
      v16[3] = &unk_278613968;
      v16[4] = a1;
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __70__HDUserDomainConceptManager__notifyObserversForUDC_type_transaction___block_invoke_3;
      v15[3] = &unk_2786138D0;
      [v13 onCommit:v16 orRollback:v15];

      v9 = *(a1 + 56);
    }

    v14 = [[_HDUserDomainConceptObserverRecord alloc] initWithUserDomainConcept:v8 modificationType:a3];

    [v9 addObject:v14];
    os_unfair_lock_unlock((a1 + 24));
  }
}

+ (id)countOfUserDomainConceptsMatchingPredicate:(id)a3 options:(unint64_t)a4 transaction:(id)a5 error:(id *)a6
{
  v7 = a4;
  v10 = a5;
  v11 = [(HDUserDomainConceptManager *)a1 _enumerationPredicateWithOptions:v7 existingPredicate:a3];
  v12 = v10;
  v13 = v11;
  v14 = objc_opt_self();
  v15 = objc_opt_class();
  v16 = [(HDUserDomainConceptManager *)v14 _countOfUserDomainConceptsWithEntity:v15 predicate:v13 transaction:v12 error:a6];

  return v16;
}

BOOL __129__HDUserDomainConceptManager__enumerateAndDeleteSemanticDuplicatesOfConceptIfSupportsHidingSemanticDuplicates_transaction_error___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((v6 + 64));
  v9 = [HDUserDomainConceptEntity deleteUserDomainConcept:v7 profile:WeakRetained transaction:*(a1 + 40) error:a4];

  return v9;
}

+ (id)_countOfUserDomainConceptsWithEntity:(void *)a3 predicate:(void *)a4 transaction:(uint64_t)a5 error:
{
  v8 = a4;
  v9 = a3;
  objc_opt_self();
  v10 = [v8 protectedDatabase];

  v11 = [a2 countDistinctForProperty:@"udc_id" predicate:v9 database:v10 error:a5];

  return v11;
}

+ (id)_countOfMedicalUserDomainConceptsWithPredicate:(void *)a3 transaction:(uint64_t)a4 error:
{
  v6 = a3;
  v7 = a2;
  v8 = objc_opt_self();
  v9 = objc_opt_class();
  v10 = [(HDUserDomainConceptManager *)v8 _countOfUserDomainConceptsWithEntity:v9 predicate:v7 transaction:v6 error:a4];

  return v10;
}

BOOL __95__HDUserDomainConceptManager__analyticsForMedicalUserDomainConceptCountsWithTransaction_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = [*(a1 + 32) integerValue];
  v5 = *(a1 + 56);
  objc_opt_self();
  if ((v4 - 1) >= 7)
  {
    _HKInitializeLogging();
    v14 = *MEMORY[0x277CCC2C0];
    v13 = 1;
    if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_INFO))
    {
      v15 = v14;
      v16 = HKStringFromMedicalRecordCategoryType();
      v19 = 138412290;
      v20 = v16;
      _os_log_impl(&dword_228986000, v15, OS_LOG_TYPE_INFO, "Health records category %@ not supported in daily analytics", &v19, 0xCu);
    }

    v6 = 0;
  }

  else
  {
    v6 = off_27862B0D0[v4 - 1];
    v7 = *(a1 + 56);
    v8 = *(a1 + 40);
    v9 = objc_opt_self();
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:v4];
    v11 = HDMedicalUserDomainConceptEntityPredicateForCategoryType(v10, 1);

    v12 = [(HDUserDomainConceptManager *)v9 _countOfMedicalUserDomainConceptsWithPredicate:v11 transaction:v8 error:a2];

    v13 = v12 != 0;
    if (v12)
    {
      [*(a1 + 48) setObject:v12 forKeyedSubscript:v6];
    }
  }

  v17 = *MEMORY[0x277D85DE8];
  return v13;
}

_HDUserDomainConceptObserverRecord *__73__HDUserDomainConceptManager__notifyObserversIfPossibleForJournaledUDCs___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[_HDUserDomainConceptObserverRecord alloc] initWithUserDomainConcept:v2 modificationType:4];

  return v3;
}

uint64_t __70__HDUserDomainConceptManager__notifyObserversForUDC_type_transaction___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock((*(a1 + 32) + 24));
  [*(*(a1 + 32) + 48) addObjectsFromArray:*(*(a1 + 32) + 56)];
  os_unfair_lock_unlock((*(a1 + 32) + 24));
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v2)
  {
    v4 = [(HDUserDomainConceptManager *)v2 _synthesizeSummaryForCallToObserversAndFlushRecordsIsSynchronous:?];
    v5 = [v4 journaledConcepts];
    v6 = [v5 count];

    if (v6)
    {
      _HKInitializeLogging();
      v7 = HKLogHealthOntology();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v19 = [v4 journaledConcepts];
        *v20 = 138543618;
        *&v20[4] = v2;
        *&v20[12] = 2048;
        *&v20[14] = [v19 count];
        _os_log_error_impl(&dword_228986000, v7, OS_LOG_TYPE_ERROR, "%{public}@: synchronous observer cache summary contains %ld journaled records, but it should not have any", v20, 0x16u);
      }
    }

    _HKInitializeLogging();
    v8 = HKLogHealthOntology();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v4 addedConcepts];
      v10 = [v9 count];
      v11 = [v4 updatedConcepts];
      v12 = [v11 count];
      v13 = [v4 removedConcepts];
      v14 = [v13 count];
      *v20 = 138544130;
      *&v20[4] = v2;
      *&v20[12] = 2048;
      *&v20[14] = v10;
      *&v20[22] = 2048;
      v21 = v12;
      LOWORD(v22) = 2048;
      *(&v22 + 2) = v14;
      _os_log_impl(&dword_228986000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: notify synchronous UDC observers about: added=%ld, updated=%ld, deleted=%ld", v20, 0x2Au);
    }

    v15 = *(v2 + 16);
    *v20 = MEMORY[0x277D85DD0];
    *&v20[8] = 3221225472;
    *&v20[16] = __71__HDUserDomainConceptManager__callSynchronousObserversWithTransaction___block_invoke;
    v21 = &unk_27862B0B0;
    *&v22 = v2;
    *(&v22 + 1) = v4;
    v23 = v3;
    v16 = v4;
    [v15 notifyObservers:v20];
  }

  v17 = *MEMORY[0x277D85DE8];
  return 1;
}

void __70__HDUserDomainConceptManager__notifyObserversForUDC_type_transaction___block_invoke_2(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 24));
  [*(*(a1 + 32) + 40) addObjectsFromArray:*(*(a1 + 32) + 56)];
  v2 = *(a1 + 32);
  v3 = *(v2 + 56);
  *(v2 + 56) = 0;

  os_unfair_lock_unlock((*(a1 + 32) + 24));
  v4 = *(a1 + 32);

  [(HDUserDomainConceptManager *)v4 _callObserversIfPossible];
}

void __70__HDUserDomainConceptManager__notifyObserversForUDC_type_transaction___block_invoke_3(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 24));
  v2 = *(a1 + 32);
  v3 = *(v2 + 56);
  *(v2 + 56) = 0;

  v4 = (*(a1 + 32) + 24);

  os_unfair_lock_unlock(v4);
}

- (_HDUserDomainConceptObserverRecordSummary)_synthesizeSummaryForCallToObserversAndFlushRecordsIsSynchronous:(os_unfair_lock_s *)a1
{
  v3 = a1;
  v28 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(a1 + 6);
  if (a2)
  {
    v4 = 12;
  }

  else
  {
    if (*&v3[8]._os_unfair_lock_opaque)
    {
      v5 = 0;
      goto LABEL_34;
    }

    v4 = 10;
  }

  v6 = *&v3[v4]._os_unfair_lock_opaque;
  v22 = v3;
  os_unfair_lock_assert_owner(v3 + 6);
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (!v8)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    goto LABEL_33;
  }

  v9 = v8;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = *v24;
  do
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v24 != v14)
      {
        objc_enumerationMutation(v7);
      }

      v16 = *(*(&v23 + 1) + 8 * i);
      v17 = [v16 changeType];
      if (v17 > 2)
      {
        if (v17 == 3)
        {
          if (v13)
          {
            v18 = v13;
          }

          else
          {
            v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
            v13 = v18;
          }
        }

        else
        {
          if (v17 != 4)
          {
            continue;
          }

          if (v10)
          {
            v18 = v10;
          }

          else
          {
            v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
            v10 = v18;
          }
        }
      }

      else if (v17 == 1)
      {
        if (v11)
        {
          v18 = v11;
        }

        else
        {
          v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
          v11 = v18;
        }
      }

      else
      {
        if (v17 != 2)
        {
          continue;
        }

        if (v12)
        {
          v18 = v12;
        }

        else
        {
          v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
          v12 = v18;
        }
      }

      v19 = [v16 userDomainConcept];
      [v18 addObject:v19];
    }

    v9 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
  }

  while (v9);
LABEL_33:

  [v7 removeAllObjects];
  v5 = [[_HDUserDomainConceptObserverRecordSummary alloc] initWithJournaledConcepts:v10 addedConcepts:v11 updatedConcepts:v12 removedConcepts:v13];

  v3 = v22;
LABEL_34:
  os_unfair_lock_unlock(v3 + 6);
  v20 = *MEMORY[0x277D85DE8];

  return v5;
}

void __54__HDUserDomainConceptManager__callObserversIfPossible__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v18 = a2;
  v4 = v3;
  v5 = v4;
  if (v2)
  {
    v6 = [v4 journaledConcepts];
    v7 = [v6 count];

    if (v7)
    {
      v8 = [v5 journaledConcepts];
      [v18 userDomainConceptManager:v2 didJournalUserDomainConcepts:v8];
    }

    v9 = [v5 addedConcepts];
    v10 = [v9 count];

    if (v10)
    {
      v11 = [v5 addedConcepts];
      [v18 userDomainConceptManager:v2 didAddUserDomainConcepts:v11];
    }

    v12 = [v5 updatedConcepts];
    v13 = [v12 count];

    if (v13)
    {
      v14 = [v5 updatedConcepts];
      [v18 userDomainConceptManager:v2 didUpdateUserDomainConcepts:v14];
    }

    v15 = [v5 removedConcepts];
    v16 = [v15 count];

    if (v16)
    {
      v17 = [v5 removedConcepts];
      [v18 userDomainConceptManager:v2 didDeleteUserDomainConcepts:v17];
    }
  }
}

void __71__HDUserDomainConceptManager__callSynchronousObserversWithTransaction___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v2 = a1[5];
  v4 = a1[6];
  v16 = a2;
  v5 = v2;
  v6 = v4;
  if (v3)
  {
    v7 = [v5 addedConcepts];
    v8 = [v7 count];

    if (v8)
    {
      v9 = [v5 addedConcepts];
      [v16 userDomainConceptManager:v3 didAddUserDomainConcepts:v9 transaction:v6];
    }

    v10 = [v5 updatedConcepts];
    v11 = [v10 count];

    if (v11)
    {
      v12 = [v5 updatedConcepts];
      [v16 userDomainConceptManager:v3 didUpdateUserDomainConcepts:v12 transaction:v6];
    }

    v13 = [v5 removedConcepts];
    v14 = [v13 count];

    if (v14)
    {
      v15 = [v5 removedConcepts];
      [v16 userDomainConceptManager:v3 didDeleteUserDomainConcepts:v15 transaction:v6];
    }
  }
}

- (id)keyValueDomain
{
  v3 = [HDKeyValueDomain alloc];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v5 = [(HDKeyValueDomain *)v3 initWithCategory:100 domainName:@"com.apple.health.records.userdomain" profile:WeakRetained];

  return v5;
}

+ (id)predicateForAllPinnedConceptsMappingToRecordsWithUUIDs:(id)a3 pinnedConceptUUIDs:(id)a4
{
  v5 = MEMORY[0x277D10B70];
  v6 = a4;
  v7 = HDMedicalUserDomainConceptEntityPredicateForMedicalRecordWithUUIDs(a3);
  v8 = HDUserDomainConceptEntityPredicateForConceptUUIDs(v6);

  v9 = [v5 compoundPredicateWithPredicate:v7 otherPredicate:v8];

  return v9;
}

+ (id)predicateForElementsOfListType:(unint64_t)a3
{
  v22[1] = *MEMORY[0x277D85DE8];
  v4 = objc_alloc_init(MEMORY[0x277D10B80]);
  [v4 setEntityClass:objc_opt_class()];
  [v4 setLimitCount:1];
  v5 = HDListUserDomainConceptEntityPredicateForListType(a3, 1);
  [v4 setPredicate:v5];

  v6 = [MEMORY[0x277D10B68] orderingTermWithProperty:@"modification_date" entityClass:objc_opt_class() ascending:0];
  v22[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
  [v4 setOrderingTerms:v7];

  v8 = MEMORY[0x277D10B18];
  v9 = [(HDSQLiteSchemaEntity *)HDUserDomainConceptLinkEntity disambiguatedSQLForProperty:@"udc_id"];
  v21 = @"udc_id";
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];
  v11 = [v8 predicateWithProperty:v9 comparisonType:7 subqueryDescriptor:v4 subqueryProperties:v10];

  v12 = [MEMORY[0x277D10B18] predicateWithProperty:@"user_domain_concept_links.link_type" equalToValue:&unk_283CB3ED0];
  v13 = objc_alloc_init(MEMORY[0x277D10B80]);
  [v13 setEntityClass:objc_opt_class()];
  v14 = [MEMORY[0x277D10B70] compoundPredicateWithPredicate:v11 otherPredicate:v12];
  [v13 setPredicate:v14];

  v15 = MEMORY[0x277D10B18];
  v20 = @"user_domain_concept_links.target_uuid";
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:1];
  v17 = [v15 predicateWithProperty:@"uuid" comparisonType:7 subqueryDescriptor:v13 subqueryProperties:v16];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (HDProfile)profile
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);

  return WeakRetained;
}

@end