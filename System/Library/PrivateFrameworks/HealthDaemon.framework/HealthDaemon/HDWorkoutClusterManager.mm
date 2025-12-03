@interface HDWorkoutClusterManager
- (BOOL)createWorkoutCluster:(id)cluster error:(id *)error;
- (BOOL)deleteWorkoutClusterWithUUID:(id)d error:(id *)error;
- (BOOL)enumerateRouteLocationsForWorkoutUUID:(id)d startDate:(id)date limit:(unint64_t)limit error:(id *)error handler:(id)handler;
- (BOOL)performUsingAccessibilityAssertionWithError:(id *)error block:(id)block;
- (BOOL)updateWorkoutClusterWithUUID:(id)d newRelevance:(id)relevance newLastWorkoutUUID:(id)iD newBestWorkoutUUID:(id)uID newWorkoutAssociations:(id)associations workoutAssociationsToRemove:(id)remove error:(id *)error;
- (BOOL)updateWorkoutClusterWithUUID:(id)d newRouteLabel:(id)label error:(id *)error;
- (BOOL)updateWorkoutClusterWithUUID:(id)d newRouteSnapshot:(id)snapshot error:(id *)error;
- (HDMutableDatabaseTransactionContext)_transactionContextWithAccessibilityAssertion;
- (HDProfile)profile;
- (HDWorkoutClusterManager)initWithProfile:(id)profile;
- (id)accessibilityAssertion;
- (id)allWorkoutClustersWithError:(id *)error;
- (id)allWorkoutUUIDsForClusterUUID:(id)d error:(id *)error;
- (id)workoutClusterContainingWorkoutUUID:(id)d error:(id *)error;
- (id)workoutClustersContainingWorkoutUUIDs:(id)ds error:(id *)error;
- (id)workoutCountWithFilter:(id)filter error:(id *)error;
- (id)workoutRouteSnapshotForClusterUUID:(id)d error:(id *)error;
- (id)workoutsWithFilter:(id)filter anchor:(id)anchor limit:(unint64_t)limit newAnchor:(id *)newAnchor error:(id *)error;
- (id)workoutsWithFilter:(id)filter limit:(unint64_t)limit sortDescriptors:(id)descriptors error:(id *)error;
- (void)dealloc;
- (void)takeAccessibilityAssertionIfNeeded;
@end

@implementation HDWorkoutClusterManager

- (HDWorkoutClusterManager)initWithProfile:(id)profile
{
  profileCopy = profile;
  v8.receiver = self;
  v8.super_class = HDWorkoutClusterManager;
  v5 = [(HDWorkoutClusterManager *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, profileCopy);
    v6->_lock._os_unfair_lock_opaque = 0;
  }

  return v6;
}

- (void)dealloc
{
  [(HDAssertion *)self->_accessibilityAssertion invalidate];
  v3.receiver = self;
  v3.super_class = HDWorkoutClusterManager;
  [(HDWorkoutClusterManager *)&v3 dealloc];
}

- (void)takeAccessibilityAssertionIfNeeded
{
  v24 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  if (!self->_accessibilityAssertion)
  {
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    database = [WeakRetained database];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v19 = 0;
    v8 = [database takeAccessibilityAssertionWithOwnerIdentifier:v7 timeout:&v19 error:600.0];
    v9 = v19;
    accessibilityAssertion = self->_accessibilityAssertion;
    self->_accessibilityAssertion = v8;

    if (!self->_accessibilityAssertion)
    {
      hk_isDatabaseAccessibilityError = [v9 hk_isDatabaseAccessibilityError];
      _HKInitializeLogging();
      v12 = *MEMORY[0x277CCC330];
      v13 = *MEMORY[0x277CCC330];
      if (hk_isDatabaseAccessibilityError)
      {
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          v14 = v12;
          v15 = objc_opt_class();
          *buf = 138543618;
          v21 = v15;
          v22 = 2114;
          v23 = v9;
          v16 = v15;
          _os_log_debug_impl(&dword_228986000, v14, OS_LOG_TYPE_DEBUG, "%{public}@: Failed to acquire accessibility assertion with error=%{public}@", buf, 0x16u);
LABEL_12:
        }
      }

      else if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = v12;
        v18 = objc_opt_class();
        *buf = 138543618;
        v21 = v18;
        v22 = 2114;
        v23 = v9;
        v16 = v18;
        _os_log_error_impl(&dword_228986000, v14, OS_LOG_TYPE_ERROR, "%{public}@: Failed to acquire accessibility assertion with error=%{public}@", buf, 0x16u);
        goto LABEL_12;
      }
    }

    os_unfair_lock_unlock(&self->_lock);

    v17 = *MEMORY[0x277D85DE8];
    return;
  }

  v3 = *MEMORY[0x277D85DE8];

  os_unfair_lock_unlock(&self->_lock);
}

- (id)accessibilityAssertion
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_accessibilityAssertion;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (BOOL)performUsingAccessibilityAssertionWithError:(id *)error block:(id)block
{
  blockCopy = block;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  database = [WeakRetained database];
  _transactionContextWithAccessibilityAssertion = [(HDWorkoutClusterManager *)self _transactionContextWithAccessibilityAssertion];
  LOBYTE(error) = [database performWithTransactionContext:_transactionContextWithAccessibilityAssertion error:error block:blockCopy];

  return error;
}

- (HDMutableDatabaseTransactionContext)_transactionContextWithAccessibilityAssertion
{
  if (self)
  {
    v2 = objc_alloc_init(HDMutableDatabaseTransactionContext);
    accessibilityAssertion = [self accessibilityAssertion];
    if (accessibilityAssertion)
    {
      [(HDMutableDatabaseTransactionContext *)v2 addAccessibilityAssertion:accessibilityAssertion];
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)workoutCountWithFilter:(id)filter error:(id *)error
{
  filterCopy = filter;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__130;
  v22 = __Block_byref_object_dispose__130;
  v23 = 0;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  database = [WeakRetained database];
  _transactionContextWithAccessibilityAssertion = [(HDWorkoutClusterManager *)self _transactionContextWithAccessibilityAssertion];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __56__HDWorkoutClusterManager_workoutCountWithFilter_error___block_invoke;
  v14[3] = &unk_278614288;
  v17 = &v18;
  v10 = filterCopy;
  v15 = v10;
  selfCopy = self;
  LODWORD(error) = [(HDHealthEntity *)HDWorkoutEntity performReadTransactionWithHealthDatabase:database context:_transactionContextWithAccessibilityAssertion error:error block:v14];

  if (error)
  {
    v11 = v19[5];
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  _Block_object_dispose(&v18, 8);

  return v12;
}

BOOL __56__HDWorkoutClusterManager_workoutCountWithFilter_error___block_invoke(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [v5 databaseForEntityClass:objc_opt_class()];

  v7 = *MEMORY[0x277D10A48];
  v8 = a1[4];
  WeakRetained = objc_loadWeakRetained((a1[5] + 24));
  v10 = [v8 predicateWithProfile:WeakRetained];
  v11 = [(HDSQLiteEntity *)HDWorkoutEntity countValueForProperty:v7 predicate:v10 database:v6 error:a3];
  v12 = *(a1[6] + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  v14 = *(*(a1[6] + 8) + 40) != 0;
  return v14;
}

- (id)workoutsWithFilter:(id)filter anchor:(id)anchor limit:(unint64_t)limit newAnchor:(id *)newAnchor error:(id *)error
{
  filterCopy = filter;
  anchorCopy = anchor;
  v13 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:limit];
  workoutType = [MEMORY[0x277CCD8D8] workoutType];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v16 = [(HDSampleEntity *)HDWorkoutEntity entityEnumeratorWithType:workoutType profile:WeakRetained];

  v17 = objc_loadWeakRetained(&self->_profile);
  v18 = [filterCopy predicateWithProfile:v17];
  [v16 setPredicate:v18];

  if (anchorCopy)
  {
    v19 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(anchorCopy, "_rowid")}];
    [v16 setAnchor:v19];
  }

  [v16 setLimitCount:limit];
  _transactionContextWithAccessibilityAssertion = [(HDWorkoutClusterManager *)self _transactionContextWithAccessibilityAssertion];
  [v16 setDatabaseTransactionContext:_transactionContextWithAccessibilityAssertion];

  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  _rowid = [anchorCopy _rowid];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __75__HDWorkoutClusterManager_workoutsWithFilter_anchor_limit_newAnchor_error___block_invoke;
  v25[3] = &unk_2786136F0;
  v21 = v13;
  v26 = v21;
  v27 = &v28;
  if ([v16 enumerateWithError:error handler:v25])
  {
    if (newAnchor)
    {
      *newAnchor = [MEMORY[0x277CCD840] _anchorWithRowid:v29[3]];
    }

    v22 = [v21 copy];
  }

  else
  {
    v22 = 0;
  }

  _Block_object_dispose(&v28, 8);

  return v22;
}

uint64_t __75__HDWorkoutClusterManager_workoutsWithFilter_anchor_limit_newAnchor_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [*(a1 + 32) addObject:a2];
  *(*(*(a1 + 40) + 8) + 24) = a3;
  return 1;
}

- (id)workoutsWithFilter:(id)filter limit:(unint64_t)limit sortDescriptors:(id)descriptors error:(id *)error
{
  v10 = MEMORY[0x277CBEB18];
  descriptorsCopy = descriptors;
  filterCopy = filter;
  v13 = [[v10 alloc] initWithCapacity:limit];
  workoutType = [MEMORY[0x277CCD8D8] workoutType];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v16 = [(HDSampleEntity *)HDWorkoutEntity entityEnumeratorWithType:workoutType profile:WeakRetained];

  v17 = objc_loadWeakRetained(&self->_profile);
  v18 = [filterCopy predicateWithProfile:v17];

  [v16 setPredicate:v18];
  [v16 setLimitCount:limit];
  [v16 setSortDescriptors:descriptorsCopy];

  _transactionContextWithAccessibilityAssertion = [(HDWorkoutClusterManager *)self _transactionContextWithAccessibilityAssertion];
  [v16 setDatabaseTransactionContext:_transactionContextWithAccessibilityAssertion];

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __74__HDWorkoutClusterManager_workoutsWithFilter_limit_sortDescriptors_error___block_invoke;
  v23[3] = &unk_2786204C8;
  v20 = v13;
  v24 = v20;
  if ([v16 enumerateWithError:error handler:v23])
  {
    v21 = [v20 copy];
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (BOOL)enumerateRouteLocationsForWorkoutUUID:(id)d startDate:(id)date limit:(unint64_t)limit error:(id *)error handler:(id)handler
{
  dCopy = d;
  dateCopy = date;
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  database = [WeakRetained database];
  _transactionContextWithAccessibilityAssertion = [(HDWorkoutClusterManager *)self _transactionContextWithAccessibilityAssertion];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __95__HDWorkoutClusterManager_enumerateRouteLocationsForWorkoutUUID_startDate_limit_error_handler___block_invoke;
  v22[3] = &unk_278625690;
  v23 = dCopy;
  selfCopy = self;
  v25 = dateCopy;
  v26 = handlerCopy;
  limitCopy = limit;
  v18 = handlerCopy;
  v19 = dateCopy;
  v20 = dCopy;
  LOBYTE(error) = [(HDHealthEntity *)HDSeriesSampleEntity performReadTransactionWithHealthDatabase:database context:_transactionContextWithAccessibilityAssertion error:error block:v22];

  return error;
}

uint64_t __95__HDWorkoutClusterManager_enumerateRouteLocationsForWorkoutUUID_startDate_limit_error_handler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v55[2] = *MEMORY[0x277D85DE8];
  v37 = a2;
  v35 = [HDWorkoutClusterEntity workoutEntityForUUID:"workoutEntityForUUID:transaction:error:" transaction:*(a1 + 32) error:?];
  if (v35)
  {
    v34 = [v37 databaseForEntityClass:objc_opt_class()];
    if (!*(a1 + 40))
    {
      goto LABEL_19;
    }

    v4 = MEMORY[0x277CBEB18];
    v5 = v34;
    v6 = v35;
    v7 = objc_alloc_init(v4);
    v8 = objc_alloc_init(MEMORY[0x277D10B80]);
    v9 = [MEMORY[0x277CCD920] workoutRouteType];
    v10 = HDSampleEntityPredicateForDataType(v9);

    v11 = [v6 persistentID];
    v12 = HDAssociationEntityPredicateForChildObjectsAssociatedWithParentObject(v11);
    v13 = MEMORY[0x277D10B20];
    v55[0] = v10;
    v55[1] = v12;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:2];
    v15 = [v13 predicateMatchingAllPredicates:v14];
    [v8 setPredicate:v15];

    [v8 setEntityClass:objc_opt_class()];
    v16 = [MEMORY[0x277D10B68] orderingTermWithProperty:@"start_date" entityClass:objc_opt_class() ascending:1];
    v54 = v16;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v54 count:1];
    [v8 setOrderingTerms:v17];

    v18 = [objc_alloc(MEMORY[0x277D10B78]) initWithDatabase:v5 descriptor:v8];
    v53 = @"hfd_key";
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v53 count:1];
    v47 = MEMORY[0x277D85DD0];
    v48 = 3221225472;
    v49 = __76__HDWorkoutClusterManager__routeSeriesIdentifiersForWorkout_database_error___block_invoke;
    v50 = &unk_27861E4C0;
    v51 = v7;
    v20 = v7;
    LODWORD(v7) = [v18 enumerateProperties:v19 error:a3 enumerationHandler:&v47];

    v21 = v7 ? v20 : 0;
    v22 = v21;

    if (v22)
    {
      v47 = 0;
      v48 = &v47;
      v49 = 0x2020000000;
      v50 = 0;
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      v23 = v22;
      v24 = [v23 countByEnumeratingWithState:&v43 objects:v52 count:16];
      if (v24)
      {
        v25 = *v44;
        while (2)
        {
          for (i = 0; i != v24; ++i)
          {
            if (*v44 != v25)
            {
              objc_enumerationMutation(v23);
            }

            v27 = *(*(&v43 + 1) + 8 * i);
            v28 = *(a1 + 48);
            v38[0] = MEMORY[0x277D85DD0];
            v38[1] = 3221225472;
            v38[2] = __95__HDWorkoutClusterManager_enumerateRouteLocationsForWorkoutUUID_startDate_limit_error_handler___block_invoke_2;
            v38[3] = &unk_278625668;
            v29 = v28;
            v39 = v29;
            v40 = *(a1 + 56);
            v41 = &v47;
            v42 = *(a1 + 64);
            if (![HDLocationSeriesSampleEntity enumerateLocationDataWithTransaction:v37 HFDKey:v27 startDate:v29 error:a3 handler:v38])
            {

              v31 = 0;
              goto LABEL_21;
            }

            v30 = *(v48 + 24) < *(a1 + 64);

            if (!v30)
            {
              goto LABEL_18;
            }
          }

          v24 = [v23 countByEnumeratingWithState:&v43 objects:v52 count:16];
          v31 = 1;
          if (v24)
          {
            continue;
          }

          break;
        }
      }

      else
      {
LABEL_18:
        v31 = 1;
      }

LABEL_21:

      _Block_object_dispose(&v47, 8);
    }

    else
    {
LABEL_19:
      v23 = 0;
      v31 = 0;
    }
  }

  else
  {
    v31 = 0;
  }

  v32 = *MEMORY[0x277D85DE8];
  return v31;
}

BOOL __95__HDWorkoutClusterManager_enumerateRouteLocationsForWorkoutUUID_startDate_limit_error_handler___block_invoke_2(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1[4] && ([v3 timestamp], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "hk_isBeforeOrEqualToDate:", a1[4]), v5, (v6 & 1) != 0))
  {
    v7 = 1;
  }

  else if ((*(a1[5] + 16))())
  {
    v7 = ++*(*(a1[6] + 8) + 24) < a1[7];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t __76__HDWorkoutClusterManager__routeSeriesIdentifiersForWorkout_database_error___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCABB0] numberWithLongLong:HDSQLiteColumnAsInt64()];
  [v1 addObject:v2];

  return 1;
}

- (BOOL)createWorkoutCluster:(id)cluster error:(id *)error
{
  clusterCopy = cluster;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __54__HDWorkoutClusterManager_createWorkoutCluster_error___block_invoke;
  v9[3] = &unk_278620C68;
  v10 = clusterCopy;
  selfCopy = self;
  v7 = clusterCopy;
  LOBYTE(error) = [(HDWorkoutClusterManager *)self performUsingAccessibilityAssertionWithError:error block:v9];

  return error;
}

BOOL __54__HDWorkoutClusterManager_createWorkoutCluster_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 24));
  v5 = [HDWorkoutClusterEntity insertWorkoutCluster:v3 profile:WeakRetained error:a2];

  return v5 != 0;
}

- (id)allWorkoutClustersWithError:(id *)error
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__130;
  v11 = __Block_byref_object_dispose__130;
  v12 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55__HDWorkoutClusterManager_allWorkoutClustersWithError___block_invoke;
  v6[3] = &unk_27861A418;
  v6[4] = self;
  v6[5] = &v7;
  if ([(HDWorkoutClusterManager *)self performUsingAccessibilityAssertionWithError:error block:v6])
  {
    v3 = v8[5];
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  _Block_object_dispose(&v7, 8);

  return v4;
}

BOOL __55__HDWorkoutClusterManager_allWorkoutClustersWithError___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
  v5 = [HDWorkoutClusterEntity workoutClustersForProfile:WeakRetained limit:*MEMORY[0x277D10C08] error:a2];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  return *(*(*(a1 + 40) + 8) + 40) != 0;
}

- (id)workoutClusterContainingWorkoutUUID:(id)d error:(id *)error
{
  dCopy = d;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__130;
  v19 = __Block_byref_object_dispose__130;
  v20 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __69__HDWorkoutClusterManager_workoutClusterContainingWorkoutUUID_error___block_invoke;
  v11[3] = &unk_27861A440;
  v14 = &v15;
  v7 = dCopy;
  v12 = v7;
  selfCopy = self;
  if ([(HDWorkoutClusterManager *)self performUsingAccessibilityAssertionWithError:error block:v11])
  {
    v8 = v16[5];
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  _Block_object_dispose(&v15, 8);

  return v9;
}

BOOL __69__HDWorkoutClusterManager_workoutClusterContainingWorkoutUUID_error___block_invoke(void *a1, uint64_t a2)
{
  v4 = a1[4];
  WeakRetained = objc_loadWeakRetained((a1[5] + 24));
  v6 = [HDWorkoutClusterEntity workoutClusterContainingWorkoutUUID:v4 profile:WeakRetained error:a2];
  v7 = *(a1[6] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  return *(*(a1[6] + 8) + 40) != 0;
}

- (id)workoutClustersContainingWorkoutUUIDs:(id)ds error:(id *)error
{
  dsCopy = ds;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__130;
  v19 = __Block_byref_object_dispose__130;
  v20 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __71__HDWorkoutClusterManager_workoutClustersContainingWorkoutUUIDs_error___block_invoke;
  v11[3] = &unk_27861A440;
  v14 = &v15;
  v7 = dsCopy;
  v12 = v7;
  selfCopy = self;
  if ([(HDWorkoutClusterManager *)self performUsingAccessibilityAssertionWithError:error block:v11])
  {
    v8 = v16[5];
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  _Block_object_dispose(&v15, 8);

  return v9;
}

BOOL __71__HDWorkoutClusterManager_workoutClustersContainingWorkoutUUIDs_error___block_invoke(void *a1, uint64_t a2)
{
  v4 = a1[4];
  WeakRetained = objc_loadWeakRetained((a1[5] + 24));
  v6 = [HDWorkoutClusterEntity clusterUUIDsForWorkoutUUIDs:v4 profile:WeakRetained error:a2];
  v7 = *(a1[6] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  return *(*(a1[6] + 8) + 40) != 0;
}

- (id)allWorkoutUUIDsForClusterUUID:(id)d error:(id *)error
{
  dCopy = d;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__130;
  v19 = __Block_byref_object_dispose__130;
  v20 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __63__HDWorkoutClusterManager_allWorkoutUUIDsForClusterUUID_error___block_invoke;
  v11[3] = &unk_27861A440;
  v14 = &v15;
  v7 = dCopy;
  v12 = v7;
  selfCopy = self;
  if ([(HDWorkoutClusterManager *)self performUsingAccessibilityAssertionWithError:error block:v11])
  {
    v8 = v16[5];
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  _Block_object_dispose(&v15, 8);

  return v9;
}

BOOL __63__HDWorkoutClusterManager_allWorkoutUUIDsForClusterUUID_error___block_invoke(void *a1, uint64_t a2)
{
  v4 = a1[4];
  WeakRetained = objc_loadWeakRetained((a1[5] + 24));
  v6 = [HDWorkoutClusterEntity workoutUUIDsForClusterUUID:v4 profile:WeakRetained error:a2];
  v7 = *(a1[6] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  return *(*(a1[6] + 8) + 40) != 0;
}

- (id)workoutRouteSnapshotForClusterUUID:(id)d error:(id *)error
{
  dCopy = d;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__130;
  v21 = __Block_byref_object_dispose__130;
  v22 = 0;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  database = [WeakRetained database];
  _transactionContextWithAccessibilityAssertion = [(HDWorkoutClusterManager *)self _transactionContextWithAccessibilityAssertion];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __68__HDWorkoutClusterManager_workoutRouteSnapshotForClusterUUID_error___block_invoke;
  v14[3] = &unk_278614110;
  v10 = dCopy;
  v15 = v10;
  v16 = &v17;
  LODWORD(error) = [(HDHealthEntity *)HDWorkoutClusterEntity performReadTransactionWithHealthDatabase:database context:_transactionContextWithAccessibilityAssertion error:error block:v14];

  if (error)
  {
    v11 = v18[5];
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  _Block_object_dispose(&v17, 8);

  return v12;
}

BOOL __68__HDWorkoutClusterManager_workoutRouteSnapshotForClusterUUID_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [HDWorkoutClusterEntity entityForClusterUUID:*(a1 + 32) transaction:v5 error:a3];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 workoutRouteSnapshotWithTransaction:v5 error:a3];
    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    v11 = *(*(*(a1 + 40) + 8) + 40) != 0;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)updateWorkoutClusterWithUUID:(id)d newRouteSnapshot:(id)snapshot error:(id *)error
{
  dCopy = d;
  snapshotCopy = snapshot;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __79__HDWorkoutClusterManager_updateWorkoutClusterWithUUID_newRouteSnapshot_error___block_invoke;
  v13[3] = &unk_27861A028;
  v14 = dCopy;
  v15 = snapshotCopy;
  selfCopy = self;
  v10 = snapshotCopy;
  v11 = dCopy;
  LOBYTE(error) = [(HDWorkoutClusterManager *)self performUsingAccessibilityAssertionWithError:error block:v13];

  return error;
}

BOOL __79__HDWorkoutClusterManager_updateWorkoutClusterWithUUID_newRouteSnapshot_error___block_invoke(void *a1, uint64_t a2)
{
  v3 = a1[4];
  v4 = a1[5];
  WeakRetained = objc_loadWeakRetained((a1[6] + 24));
  v6 = [HDWorkoutClusterEntity updateWorkoutClusterWithUUID:v3 routeSnapshot:v4 profile:WeakRetained error:a2];

  return v6;
}

- (BOOL)updateWorkoutClusterWithUUID:(id)d newRouteLabel:(id)label error:(id *)error
{
  dCopy = d;
  labelCopy = label;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __76__HDWorkoutClusterManager_updateWorkoutClusterWithUUID_newRouteLabel_error___block_invoke;
  v13[3] = &unk_27861A028;
  v14 = dCopy;
  v15 = labelCopy;
  selfCopy = self;
  v10 = labelCopy;
  v11 = dCopy;
  LOBYTE(error) = [(HDWorkoutClusterManager *)self performUsingAccessibilityAssertionWithError:error block:v13];

  return error;
}

BOOL __76__HDWorkoutClusterManager_updateWorkoutClusterWithUUID_newRouteLabel_error___block_invoke(void *a1, uint64_t a2)
{
  v3 = a1[4];
  v4 = a1[5];
  WeakRetained = objc_loadWeakRetained((a1[6] + 24));
  v6 = [HDWorkoutClusterEntity updateWorkoutClusterWithUUID:v3 routeLabel:v4 profile:WeakRetained error:a2];

  return v6;
}

- (BOOL)updateWorkoutClusterWithUUID:(id)d newRelevance:(id)relevance newLastWorkoutUUID:(id)iD newBestWorkoutUUID:(id)uID newWorkoutAssociations:(id)associations workoutAssociationsToRemove:(id)remove error:(id *)error
{
  dCopy = d;
  relevanceCopy = relevance;
  iDCopy = iD;
  uIDCopy = uID;
  associationsCopy = associations;
  removeCopy = remove;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __164__HDWorkoutClusterManager_updateWorkoutClusterWithUUID_newRelevance_newLastWorkoutUUID_newBestWorkoutUUID_newWorkoutAssociations_workoutAssociationsToRemove_error___block_invoke;
  v28[3] = &unk_2786256B8;
  v29 = dCopy;
  v30 = relevanceCopy;
  v31 = iDCopy;
  v32 = uIDCopy;
  v33 = associationsCopy;
  v34 = removeCopy;
  selfCopy = self;
  v21 = removeCopy;
  v22 = associationsCopy;
  v23 = uIDCopy;
  v24 = iDCopy;
  v25 = relevanceCopy;
  v26 = dCopy;
  LOBYTE(self) = [(HDWorkoutClusterManager *)self performUsingAccessibilityAssertionWithError:error block:v28];

  return self;
}

BOOL __164__HDWorkoutClusterManager_updateWorkoutClusterWithUUID_newRelevance_newLastWorkoutUUID_newBestWorkoutUUID_newWorkoutAssociations_workoutAssociationsToRemove_error___block_invoke(void *a1, uint64_t a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v6 = a1[7];
  v7 = a1[8];
  v8 = a1[9];
  WeakRetained = objc_loadWeakRetained((a1[10] + 24));
  v10 = [HDWorkoutClusterEntity updateWorkoutClusterWithUUID:v3 relevanceValue:v4 lastWorkoutUUID:v5 bestWorkoutUUID:v6 workoutUUIDsToAssociate:v7 workoutUUIDsToRemove:v8 profile:WeakRetained error:a2];

  return v10;
}

- (BOOL)deleteWorkoutClusterWithUUID:(id)d error:(id *)error
{
  dCopy = d;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __62__HDWorkoutClusterManager_deleteWorkoutClusterWithUUID_error___block_invoke;
  v9[3] = &unk_278620C68;
  v10 = dCopy;
  selfCopy = self;
  v7 = dCopy;
  LOBYTE(error) = [(HDWorkoutClusterManager *)self performUsingAccessibilityAssertionWithError:error block:v9];

  return error;
}

BOOL __62__HDWorkoutClusterManager_deleteWorkoutClusterWithUUID_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 24));
  v5 = [HDWorkoutClusterEntity deleteWorkoutClusterWithUUID:v3 profile:WeakRetained error:a2];

  return v5;
}

- (HDProfile)profile
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);

  return WeakRetained;
}

@end