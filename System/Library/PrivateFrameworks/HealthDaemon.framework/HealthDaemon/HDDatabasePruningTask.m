@interface HDDatabasePruningTask
+ (id)_maximumPruningAnchorWithRestrictionPredicates:(id)a3;
- (HDDatabasePruningTask)initWithProfile:(id)a3;
- (id)_allEntityClasses;
- (id)_minimumFrozenAnchorMapForPruningDate:(id)a3 error:(id *)a4;
- (id)_pruneObjectsForEntityClass:(void *)a3 frozenAnchor:(void *)a4 nowDate:(uint64_t)a5 limit:(uint64_t)a6 error:;
- (int64_t)pruneDatabaseWithAccessibilityAssertion:(id)a3 nowDate:(id)a4 prunedObjectLimit:(unint64_t)a5 prunedObjectTransactionLimit:(unint64_t)a6 shouldDefer:(id)a7 error:(id *)a8;
- (uint64_t)_entityClassSupportsPruning:;
- (void)enqueueMaintenanceOperationOnCoordinator:(id)a3 takeAccessibilityAssertion:(BOOL)a4 nowDate:(id)a5 shouldDefer:(id)a6 completion:(id)a7;
@end

@implementation HDDatabasePruningTask

- (HDDatabasePruningTask)initWithProfile:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = HDDatabasePruningTask;
  v5 = [(HDDatabasePruningTask *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, v4);
  }

  return v6;
}

- (void)enqueueMaintenanceOperationOnCoordinator:(id)a3 takeAccessibilityAssertion:(BOOL)a4 nowDate:(id)a5 shouldDefer:(id)a6 completion:(id)a7
{
  v10 = a4;
  v52 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = 0x277CCA000uLL;
  if (v10)
  {
    v17 = MEMORY[0x277CCACA8];
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    v20 = [MEMORY[0x277CCAD78] UUID];
    v21 = [v20 UUIDString];
    v22 = [v17 stringWithFormat:@"%@-%@", v19, v21];

    WeakRetained = objc_loadWeakRetained(&self->_profile);
    v24 = [WeakRetained database];
    v47 = 0;
    v25 = [v24 takeAccessibilityAssertionWithOwnerIdentifier:v22 timeout:&v47 error:600.0];
    v26 = v47;

    if (!v25)
    {
      _HKInitializeLogging();
      v27 = HKLogInfrastructure();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v49 = self;
        v50 = 2114;
        v51 = v26;
        _os_log_error_impl(&dword_228986000, v27, OS_LOG_TYPE_ERROR, "%{public}@: unable to take accessibility assertion: %{public}@", buf, 0x16u);
      }
    }

    v16 = 0x277CCA000;
  }

  else
  {
    v25 = 0;
  }

  v28 = *(v16 + 3240);
  v29 = objc_loadWeakRetained(&self->_profile);
  v30 = [v29 profileIdentifier];
  v31 = [v30 identifier];
  v32 = [v28 stringWithFormat:@"Database Pruning (%@)", v31];

  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __124__HDDatabasePruningTask_enqueueMaintenanceOperationOnCoordinator_takeAccessibilityAssertion_nowDate_shouldDefer_completion___block_invoke;
  v42[3] = &unk_27862E520;
  v42[4] = self;
  v43 = v25;
  v44 = v13;
  v45 = v14;
  v46 = v15;
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __124__HDDatabasePruningTask_enqueueMaintenanceOperationOnCoordinator_takeAccessibilityAssertion_nowDate_shouldDefer_completion___block_invoke_2;
  v39[3] = &unk_278621600;
  v40 = v43;
  v41 = v46;
  v33 = v46;
  v34 = v43;
  v35 = v14;
  v36 = v13;
  v37 = [HDMaintenanceOperation maintenanceOperationWithName:v32 asynchronousBlock:v42 canceledBlock:v39];
  [v12 enqueueMaintenanceOperation:v37];

  v38 = *MEMORY[0x277D85DE8];
}

void __124__HDDatabasePruningTask_enqueueMaintenanceOperationOnCoordinator_takeAccessibilityAssertion_nowDate_shouldDefer_completion___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  v10 = 0;
  if (v4)
  {
    [v4 pruneDatabaseWithAccessibilityAssertion:v5 nowDate:v6 prunedObjectLimit:20000 prunedObjectTransactionLimit:1000 shouldDefer:v7 error:&v10];
    v8 = v10;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  [a1[5] invalidate];
  (*(a1[8] + 16))();

  v3[2](v3);
}

void __124__HDDatabasePruningTask_enqueueMaintenanceOperationOnCoordinator_takeAccessibilityAssertion_nowDate_shouldDefer_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 invalidate];
  (*(*(a1 + 40) + 16))();
  v4[2]();
}

- (int64_t)pruneDatabaseWithAccessibilityAssertion:(id)a3 nowDate:(id)a4 prunedObjectLimit:(unint64_t)a5 prunedObjectTransactionLimit:(unint64_t)a6 shouldDefer:(id)a7 error:(id *)a8
{
  v38 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a7;
  v17 = [MEMORY[0x277CCDD30] sharedBehavior];
  v18 = [v17 features];
  v19 = [v18 databasePruningTaskShouldUseRestrictionPredicates];
  if (!v16 || !v19)
  {

    goto LABEL_9;
  }

  v20 = v16[2](v16);

  if (!v20)
  {
LABEL_9:
    v23 = objc_alloc_init(HDMutableDatabaseTransactionContext);
    [(HDMutableDatabaseTransactionContext *)v23 setCacheScope:1];
    if (v14)
    {
      [(HDMutableDatabaseTransactionContext *)v23 addAccessibilityAssertion:v14];
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v36 = 0x2020000000;
    v37 = 0;
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    v26 = [WeakRetained database];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __138__HDDatabasePruningTask_pruneDatabaseWithAccessibilityAssertion_nowDate_prunedObjectLimit_prunedObjectTransactionLimit_shouldDefer_error___block_invoke;
    v29[3] = &unk_27862E548;
    p_buf = &buf;
    v29[4] = self;
    v30 = v15;
    v33 = a6;
    v31 = v16;
    v34 = a5;
    [v26 performWithTransactionContext:v23 error:a8 block:v29];

    v24 = *(*(&buf + 1) + 24);
    _Block_object_dispose(&buf, 8);
    goto LABEL_12;
  }

  _HKInitializeLogging();
  v21 = HKLogInfrastructure();
  v22 = os_log_type_enabled(v21, OS_LOG_TYPE_INFO);

  if (!v22)
  {
    v24 = 2;
    goto LABEL_13;
  }

  v23 = HKLogInfrastructure();
  if (os_log_type_enabled(&v23->super.super, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = self;
    _os_log_impl(&dword_228986000, &v23->super.super, OS_LOG_TYPE_INFO, "%{public}@: Pruning activity was deferred.", &buf, 0xCu);
  }

  v24 = 2;
LABEL_12:

LABEL_13:
  v27 = *MEMORY[0x277D85DE8];
  return v24;
}

uint64_t __138__HDDatabasePruningTask_pruneDatabaseWithAccessibilityAssertion_nowDate_prunedObjectLimit_prunedObjectTransactionLimit_shouldDefer_error___block_invoke(void *a1, void *a2)
{
  v118 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCDD30] sharedBehavior];
  v3 = [v2 features];
  v4 = [v3 databasePruningTaskShouldUseRestrictionPredicates];

  v6 = a1[4];
  v5 = a1[5];
  if (v4)
  {
    v77 = a1[8];
    v7 = a1[6];
    v8 = v5;
    v9 = v7;
    if (!v6)
    {
      v74 = 0;
      goto LABEL_79;
    }

    Current = CFAbsoluteTimeGetCurrent();
    v11 = v6;
    WeakRetained = objc_loadWeakRetained((v6 + 8));
    v88 = 0;
    obj = [HDSyncStoreEntity activeStoresForRestrictionPredictePruningInProfile:WeakRetained referenceDate:v8 error:&v88];
    v80 = v88;

    if (v80)
    {
      if (a2)
      {
        v13 = v80;
        *a2 = v80;
      }

      else
      {
        _HKLogDroppedError();
      }

      v74 = 1;
      goto LABEL_78;
    }

    v35 = obj;
    *&v113 = 0;
    *(&v113 + 1) = &v113;
    v114 = 0x3032000000;
    v115 = __Block_byref_object_copy__196;
    v116 = __Block_byref_object_dispose__196;
    v117 = 0;
    v89 = MEMORY[0x277D85DD0];
    v90 = 3221225472;
    v91 = __56__HDDatabasePruningTask__instantiateActiveStores_error___block_invoke;
    v92 = &unk_27861EC68;
    v93 = v6;
    v94 = &v113;
    v36 = [v35 hk_map:&v89];
    v37 = v36;
    v38 = *(*(&v113 + 1) + 40);
    if (v38)
    {

      v70 = 0;
    }

    else
    {
      v70 = v36;
    }

    _Block_object_dispose(&v113, 8);
    v73 = v38;
    if (v38)
    {
      if (a2)
      {
        v39 = v73;
        *a2 = v73;
      }

      else
      {
        _HKLogDroppedError();
      }

      v74 = 1;
LABEL_77:

LABEL_78:
LABEL_79:

      *(*(a1[7] + 8) + 24) = v74;
      v6 = *(*(a1[7] + 8) + 24) != 1;
      goto LABEL_80;
    }

    v84 = 0;
    v85 = &v84;
    v86 = 0x2020000000;
    v87 = 0;
    v83[0] = 0;
    v83[1] = v83;
    v83[2] = 0x2020000000;
    v83[3] = 0;
    v40 = [(HDDatabasePruningTask *)v11 _allEntityClasses];
    v103 = 0u;
    v104 = 0u;
    v101 = 0u;
    v102 = 0u;
    v69 = v40;
    v66 = [v69 countByEnumeratingWithState:&v101 objects:&v113 count:16];
    if (!v66)
    {
LABEL_66:

      _HKInitializeLogging();
      v52 = HKLogInfrastructure();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
      {
        v53 = v85[3];
        v54 = CFAbsoluteTimeGetCurrent();
        *v109 = 138543874;
        *&v109[4] = v11;
        *&v109[12] = 2048;
        *&v109[14] = v53;
        *&v109[22] = 2048;
        v110 = v54 - Current;
        _os_log_impl(&dword_228986000, v52, OS_LOG_TYPE_DEFAULT, "%{public}@: Finished pruning %ld objects in %0.2lfs", v109, 0x20u);
      }

      v74 = 0;
LABEL_76:

      _Block_object_dispose(v83, 8);
      _Block_object_dispose(&v84, 8);
      goto LABEL_77;
    }

    v67 = *v102;
    v64 = &v111;
    v63 = &buf[16];
    v41 = &selRef_predicateForMaximumQuantity_quantityType_operatorType_;
    v74 = 1;
LABEL_46:
    v68 = 0;
    v65 = v41[194];
    while (1)
    {
      if (*v102 != v67)
      {
        objc_enumerationMutation(v69);
      }

      v42 = *(*(&v101 + 1) + 8 * v68);
      if ([HDDatabasePruningTask _entityClassSupportsPruning:]& 1) != 0 || (objc_opt_respondsToSelector())
      {
        break;
      }

LABEL_64:
      if (++v68 == v66)
      {
        v66 = [v69 countByEnumeratingWithState:&v101 objects:&v113 count:16];
        v41 = &selRef_predicateForMaximumQuantity_quantityType_operatorType_;
        if (v66)
        {
          goto LABEL_46;
        }

        goto LABEL_66;
      }
    }

    v43 = v70;
    if ([v42 conformsToProtocol:{&unk_283CCCD88, v63, v64}])
    {
      *v109 = 0;
      *&v109[8] = v109;
      *&v109[16] = 0x3032000000;
      v110 = COERCE_DOUBLE(__Block_byref_object_copy__196);
      v111 = __Block_byref_object_dispose__196;
      v112 = 0;
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __81__HDDatabasePruningTask__pruningRestrictionPredicatesFromStores_forEntity_error___block_invoke;
      v106 = COERCE_DOUBLE(&unk_27862E598);
      v107 = v109;
      v108 = v42;
      v44 = [v43 hk_map:buf];
      v45 = *(*&v109[8] + 40);
      if (v45)
      {
        v46 = v45;
        v47 = v46;

        _Block_object_dispose(v109, 8);
        v48 = 0;
LABEL_57:

        v49 = v46;
        if (v49)
        {
          v60 = v49;
          v61 = v60;
          if (a2)
          {
            v62 = v60;
            *a2 = v61;
          }

          else
          {
            _HKLogDroppedError();
          }

          v74 = 1;
        }

        else
        {
          *v109 = 0;
          *&v109[8] = v109;
          *&v109[16] = 0x2020000000;
          LOBYTE(v110) = 0;
          while (!v9 || !v9[2](v9))
          {
            v89 = MEMORY[0x277D85DD0];
            v90 = 3221225472;
            v91 = __124__HDDatabasePruningTask__pruneDatabaseUsingRestrictionPredicatesWithNowDate_prunedObjectTransactionLimit_shouldDefer_error___block_invoke;
            v92 = &unk_27862E5C0;
            v96 = v83;
            v93 = v11;
            v99 = v77;
            v100 = v42;
            v50 = v48;
            v94 = v50;
            v95 = v8;
            v97 = v109;
            v98 = &v84;
            v51 = HKWithAutoreleasePool();

            if ((v51 & 1) == 0)
            {
              goto LABEL_74;
            }

            if ((*(*&v109[8] + 24) & 1) == 0)
            {
              _Block_object_dispose(v109, 8);

              goto LABEL_64;
            }
          }

          _HKInitializeLogging();
          v55 = HKLogInfrastructure();
          if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
          {
            v56 = v85[3];
            v57 = CFAbsoluteTimeGetCurrent();
            *buf = 138543874;
            *&buf[4] = v11;
            *&buf[12] = 2048;
            *&buf[14] = v56;
            *&buf[22] = 2048;
            v106 = v57 - Current;
            _os_log_impl(&dword_228986000, v55, OS_LOG_TYPE_DEFAULT, "%{public}@: Pruning activity was deferred after pruning %ld objects in %0.2lfs", buf, 0x20u);
          }

          v74 = 2;
LABEL_74:
          _Block_object_dispose(v109, 8);
        }

        v52 = v69;
        goto LABEL_76;
      }

      _Block_object_dispose(v109, 8);
    }

    else
    {
      v44 = 0;
    }

    v44 = v44;
    v46 = 0;
    v48 = v44;
    goto LABEL_57;
  }

  v14 = a1[4];
  v15 = a1[8];
  v16 = a1[9];
  v17 = v5;
  v81 = v17;
  if (v6)
  {
    v18 = v17;
    v19 = CFAbsoluteTimeGetCurrent();
    v78 = [v6 _minimumFrozenAnchorMapForPruningDate:v18 error:a2];
    if (v78)
    {
      *v109 = 0;
      *&v109[8] = v109;
      *&v109[16] = 0x2020000000;
      v110 = 0.0;
      [(HDDatabasePruningTask *)v14 _allEntityClasses];
      v103 = 0u;
      v104 = 0u;
      v101 = 0u;
      obja = v102 = 0u;
      v20 = [obja countByEnumeratingWithState:&v101 objects:&v113 count:16];
      if (v20)
      {
        v21 = *v102;
        v71 = *v102;
        while (2)
        {
          v22 = 0;
          v72 = v20;
          do
          {
            if (*v102 != v21)
            {
              objc_enumerationMutation(obja);
            }

            v23 = *(*(&v101 + 1) + 8 * v22);
            if (([HDDatabasePruningTask _entityClassSupportsPruning:]& 1) != 0)
            {
              if ([v23 conformsToProtocol:&unk_283CCCD88])
              {
                v24 = [v23 syncEntityIdentifier];
                v25 = [v78 anchorIfPresentForSyncEntityIdentifier:v24];
              }

              else
              {
                v25 = 0;
              }

              *buf = 0;
              *&buf[8] = buf;
              *&buf[16] = 0x2020000000;
              LOBYTE(v106) = 0;
              v26 = MEMORY[0x277D85DD0];
              while (1)
              {
                v89 = v26;
                v90 = 3221225472;
                v91 = __118__HDDatabasePruningTask__pruneDatabaseUsingMinAnchorWithNowDate_prunedObjectLimit_prunedObjectTransactionLimit_error___block_invoke;
                v92 = &unk_27862E570;
                v98 = v16;
                v99 = v15;
                v96 = v109;
                v93 = v6;
                v100 = v23;
                v27 = v25;
                v94 = v27;
                v95 = v81;
                v97 = buf;
                v28 = HKWithAutoreleasePool();

                if ((v28 & 1) == 0)
                {
                  break;
                }

                if (*(*&buf[8] + 24) != 1 || *(*&v109[8] + 24) >= v16)
                {
                  _Block_object_dispose(buf, 8);

                  v21 = v71;
                  v20 = v72;
                  goto LABEL_22;
                }
              }

              _Block_object_dispose(buf, 8);

              v6 = 0;
              v29 = obja;
              goto LABEL_28;
            }

LABEL_22:
            ++v22;
          }

          while (v22 != v20);
          v20 = [obja countByEnumeratingWithState:&v101 objects:&v113 count:16];
          if (v20)
          {
            continue;
          }

          break;
        }
      }

      _HKInitializeLogging();
      v29 = HKLogInfrastructure();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v30 = *(*&v109[8] + 24);
        v31 = CFAbsoluteTimeGetCurrent();
        *buf = 138543874;
        *&buf[4] = v6;
        *&buf[12] = 2048;
        *&buf[14] = v30;
        *&buf[22] = 2048;
        v106 = v31 - v19;
        _os_log_impl(&dword_228986000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@: Finished pruning %ld objects in %0.2lfs", buf, 0x20u);
      }

      v6 = 1;
LABEL_28:

      _Block_object_dispose(v109, 8);
    }

    else
    {
      _HKInitializeLogging();
      v32 = HKLogInfrastructure();
      v33 = os_log_type_enabled(v32, OS_LOG_TYPE_INFO);

      if (v33)
      {
        v34 = HKLogInfrastructure();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
        {
          LODWORD(v113) = 138543362;
          *(&v113 + 4) = v6;
          _os_log_impl(&dword_228986000, v34, OS_LOG_TYPE_INFO, "%{public}@: Failed to determine minimum frozen anchors before pruning", &v113, 0xCu);
        }
      }

      v6 = 0;
    }
  }

  *(*(a1[7] + 8) + 24) = v6 ^ 1;
LABEL_80:
  v58 = *MEMORY[0x277D85DE8];
  return v6;
}

- (id)_allEntityClasses
{
  v32 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 8));
    v3 = [WeakRetained daemon];
    v4 = [v3 behavior];
    v5 = [HDDatabase allEntityClassesWithBehavior:v4];

    v6 = objc_loadWeakRetained((a1 + 8));
    v7 = [v6 syncEngine];
    v8 = [v7 allOrderedSyncEntities];
    v9 = [v5 arrayByAddingObjectsFromArray:v8];

    v10 = objc_loadWeakRetained((a1 + 8));
    v11 = [v10 daemon];
    v12 = [v11 pluginManager];
    v13 = [v12 pluginsConformingToProtocol:&unk_283CCAD48];
    v14 = [v13 allValues];

    v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v16 = v14;
    v17 = [v16 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v28;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v28 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v27 + 1) + 8 * i);
          v22 = [v21 databaseEntitiesForProtectionClass:{1, v27}];
          [v15 addObjectsFromArray:v22];

          v23 = [v21 databaseEntitiesForProtectionClass:2];
          [v15 addObjectsFromArray:v23];
        }

        v18 = [v16 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v18);
    }

    v24 = [v9 arrayByAddingObjectsFromArray:v15];
  }

  else
  {
    v24 = 0;
  }

  v25 = *MEMORY[0x277D85DE8];

  return v24;
}

- (uint64_t)_entityClassSupportsPruning:
{
  if (objc_opt_respondsToSelector())
  {
    v0 = 1;
  }

  else
  {
    v0 = objc_opt_respondsToSelector();
  }

  return v0 & 1;
}

BOOL __118__HDDatabasePruningTask__pruneDatabaseUsingMinAnchorWithNowDate_prunedObjectLimit_prunedObjectTransactionLimit_error___block_invoke(void *a1, void *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  Current = CFAbsoluteTimeGetCurrent();
  v5 = a1[6];
  v6 = a1[9];
  if ((v6 - *(*(a1[7] + 8) + 24)) >= a1[10])
  {
    v7 = a1[10];
  }

  else
  {
    v7 = v6 - *(*(a1[7] + 8) + 24);
  }

  v8 = a1[11];
  v9 = a1[4];
  v10 = a1[5];
  v26 = 0;
  v11 = [(HDDatabasePruningTask *)v9 _pruneObjectsForEntityClass:v8 frozenAnchor:v10 nowDate:v5 limit:v7 error:&v26];
  v12 = v26;
  _HKInitializeLogging();
  v13 = HKLogInfrastructure();
  v14 = v13;
  if (v11)
  {
    v15 = os_log_type_enabled(v13, OS_LOG_TYPE_INFO);

    if (v15)
    {
      v16 = HKLogInfrastructure();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = a1[4];
        v18 = a1[11];
        v19 = CFAbsoluteTimeGetCurrent();
        *buf = 138544130;
        v28 = v17;
        v29 = 2114;
        v30 = v18;
        v31 = 2114;
        v32 = v11;
        v33 = 2048;
        v34 = v19 - Current;
        _os_log_impl(&dword_228986000, v16, OS_LOG_TYPE_INFO, "%{public}@: %{public}@ pruned %{public}@ objects in %0.2lfs", buf, 0x2Au);
      }
    }

    *(*(a1[8] + 8) + 24) = [v11 integerValue] == v7;
    if (*(*(a1[8] + 8) + 24) == 1)
    {
      usleep(0x2710u);
    }

    if ([v11 integerValue] >= 1)
    {
      *(*(a1[7] + 8) + 24) += [v11 integerValue];
    }
  }

  else
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v24 = a1[4];
      v25 = a1[11];
      *buf = 138543874;
      v28 = v24;
      v29 = 2114;
      v30 = v25;
      v31 = 2114;
      v32 = v12;
      _os_log_error_impl(&dword_228986000, v14, OS_LOG_TYPE_ERROR, "%{public}@: Pruning failed for %{public}@: %{public}@", buf, 0x20u);
    }

    v20 = v12;
    if (v20)
    {
      if (a2)
      {
        v21 = v20;
        *a2 = v20;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  v22 = *MEMORY[0x277D85DE8];
  return v11 != 0;
}

- (id)_pruneObjectsForEntityClass:(void *)a3 frozenAnchor:(void *)a4 nowDate:(uint64_t)a5 limit:(uint64_t)a6 error:
{
  v11 = a3;
  v12 = a4;
  if (a1)
  {
    if (objc_opt_respondsToSelector())
    {
      WeakRetained = objc_loadWeakRetained((a1 + 8));
      v14 = [a2 pruneSyncedObjectsThroughAnchor:v11 limit:a5 nowDate:v12 profile:WeakRetained error:a6];
LABEL_6:
      v15 = v14;

      goto LABEL_8;
    }

    if (objc_opt_respondsToSelector())
    {
      WeakRetained = objc_loadWeakRetained((a1 + 8));
      v14 = [a2 pruneWithProfile:WeakRetained nowDate:v12 limit:a5 error:a6];
      goto LABEL_6;
    }
  }

  v15 = 0;
LABEL_8:

  return v15;
}

id __56__HDDatabasePruningTask__instantiateActiveStores_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!*(*(*(a1 + 40) + 8) + 40) && (v7 = HDSyncStoreClassForSyncStoreType([v3 type])) != 0 && objc_msgSend(v7, "providesSamplePruningRestrictionPredicate"))
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
    v9 = *(*(a1 + 40) + 8);
    obj = *(v9 + 40);
    v10 = HDInstantiateSyncStore(WeakRetained, v4, &obj);
    objc_storeStrong((v9 + 40), obj);

    if (v10 && [v10 providesSamplePruningRestrictionPredicate])
    {
      v5 = v10;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id __81__HDDatabasePruningTask__pruningRestrictionPredicatesFromStores_forEntity_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 8);
  v4 = *(v2 + 40);
  v3 = (v2 + 40);
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v6 = *(a1 + 40);
    obj = 0;
    v5 = [a2 samplePruningRestrictionPredicateForSyncEntity:v6 error:&obj];
    objc_storeStrong(v3, obj);
  }

  return v5;
}

BOOL __124__HDDatabasePruningTask__pruneDatabaseUsingRestrictionPredicatesWithNowDate_prunedObjectTransactionLimit_shouldDefer_error___block_invoke(void *a1, void *a2)
{
  v37 = *MEMORY[0x277D85DE8];
  Current = CFAbsoluteTimeGetCurrent();
  v5 = a1[6];
  v6 = a1[11];
  v7 = a1[10] - *(*(a1[7] + 8) + 24);
  v9 = a1[4];
  v8 = a1[5];
  v28 = 0;
  v10 = v8;
  v11 = v5;
  if (v9)
  {
    if (objc_opt_respondsToSelector())
    {
      WeakRetained = objc_loadWeakRetained((v9 + 8));
      [v6 pruneSyncedObjectsWithRestrictionPredicates:v10 limit:v7 nowDate:v11 profile:WeakRetained error:&v28];
    }

    else
    {
      WeakRetained = [objc_opt_class() _maximumPruningAnchorWithRestrictionPredicates:v10];
      [(HDDatabasePruningTask *)v9 _pruneObjectsForEntityClass:v6 frozenAnchor:WeakRetained nowDate:v11 limit:v7 error:&v28];
    }
    v13 = ;
  }

  else
  {
    v13 = 0;
  }

  v14 = v28;
  _HKInitializeLogging();
  v15 = HKLogInfrastructure();
  v16 = v15;
  if (v13)
  {
    v17 = os_log_type_enabled(v15, OS_LOG_TYPE_INFO);

    if (v17)
    {
      v18 = HKLogInfrastructure();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = a1[4];
        v20 = a1[11];
        v21 = CFAbsoluteTimeGetCurrent();
        *buf = 138544130;
        v30 = v19;
        v31 = 2114;
        v32 = v20;
        v33 = 2114;
        v34 = v13;
        v35 = 2048;
        v36 = v21 - Current;
        _os_log_impl(&dword_228986000, v18, OS_LOG_TYPE_INFO, "%{public}@: %{public}@ pruned %{public}@ objects in %0.2lfs", buf, 0x2Au);
      }
    }

    *(*(a1[8] + 8) + 24) = [v13 integerValue] == v7;
    *(*(a1[9] + 8) + 24) += [v13 integerValue];
    if (*(*(a1[8] + 8) + 24) == 1)
    {
      *(*(a1[7] + 8) + 24) = 0;
      usleep(0x2710u);
    }

    else
    {
      *(*(a1[7] + 8) + 24) += [v13 integerValue];
    }
  }

  else
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v26 = a1[4];
      v27 = a1[11];
      *buf = 138543874;
      v30 = v26;
      v31 = 2114;
      v32 = v27;
      v33 = 2114;
      v34 = v14;
      _os_log_error_impl(&dword_228986000, v16, OS_LOG_TYPE_ERROR, "%{public}@: Pruning failed for %{public}@: %{public}@", buf, 0x20u);
    }

    v22 = v14;
    if (v22)
    {
      if (a2)
      {
        v23 = v22;
        *a2 = v22;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  v24 = *MEMORY[0x277D85DE8];
  return v13 != 0;
}

- (id)_minimumFrozenAnchorMapForPruningDate:(id)a3 error:(id *)a4
{
  v6 = [a3 dateByAddingTimeInterval:-2419200.0];
  v7 = objc_alloc_init(HDSyncAnchorMap);
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  LODWORD(a4) = [HDSyncAnchorEntity getMinimumSyncAnchorsOfType:2 anchorMap:v7 updatedSince:v6 profile:WeakRetained error:a4];

  if (a4)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  return v9;
}

+ (id)_maximumPruningAnchorWithRestrictionPredicates:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = v3;
  if (v3 && [v3 count])
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v19;
      v9 = &unk_283CB4068;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v19 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v18 + 1) + 8 * i);
          v12 = [v11 maximumAnchor];
          v13 = [v12 longLongValue];
          v14 = [v9 longLongValue];

          if (v13 < v14)
          {
            v15 = [v11 maximumAnchor];

            v9 = v15;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v7);
    }

    else
    {
      v9 = &unk_283CB4068;
    }
  }

  else
  {
    v9 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v9;
}

@end