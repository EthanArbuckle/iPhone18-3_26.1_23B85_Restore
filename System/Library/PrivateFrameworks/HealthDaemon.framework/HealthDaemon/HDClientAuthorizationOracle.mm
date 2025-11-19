@interface HDClientAuthorizationOracle
- (BOOL)clientHasAuthorizationForAllTypes;
- (BOOL)hasAuthorizationBypassToReadType:(id)a3;
- (BOOL)isAuthorizationStatusDeterminedForTypes:(id)a3 error:(id *)a4;
- (BOOL)isAuthorizedToReadObject:(id)a3 error:(id *)a4;
- (BOOL)performReadAuthorizationTransactionWithError:(id *)a3 handler:(id)a4;
- (HDClientAuthorizationOracle)init;
- (HDClientAuthorizationOracle)initWithSourceBundleIdentifier:(id)a3 entitlements:(id)a4 profile:(id)a5;
- (id)_unrestrictedAuthorizationForTypes:(uint64_t)a1;
- (id)additionalAuthorizationPredicateForObjectType:(id)a3 error:(id *)a4;
- (id)authorizationStatusRecordForType:(id)a3 error:(id *)a4;
- (id)authorizationStatusRecordsForTypes:(id)a3 error:(id *)a4;
- (id)filterForClientUserAnnotatedMedications:(id)a3 error:(id *)a4;
- (id)filteredObjectsForReadAuthorization:(id)a3 anchor:(id)a4 error:(id *)a5;
- (void)authorizationStatusForType:(id)a3 completion:(id)a4;
- (void)beginAuthorizationRequestDelegateTransactionWithSessionIdentifier:(id)a3 clientProcess:(id)a4 completion:(id)a5;
- (void)createRecalibrateEstimatesRequestRecordForSampleType:(id)a3 sourceEntity:(id)a4 effectiveDate:(id)a5 handler:(id)a6;
- (void)endAuthorizationRequestDelegateTransactionWithSessionIdentifier:(id)a3 error:(id)a4;
- (void)enqueueAuthorizationRequestForObjectType:(id)a3 sourceEntity:(id)a4 promptIfNeeded:(BOOL)a5 authorizationNeededHandler:(id)a6 completionHandler:(id)a7;
- (void)enqueueAuthorizationRequestToWriteTypes:(id)a3 readTypes:(id)a4 authorizationNeededHandler:(id)a5 requestCompletionHandler:(id)a6;
- (void)handleAuthorizationRequestsForBundleIdentifier:(id)a3 promptHandler:(id)a4 requestCompletionHandler:(id)a5;
- (void)handleHealthConceptAuthorizationRequestsWithPromptHandler:(id)a3 objectType:(id)a4 completion:(id)a5;
- (void)handleObjectAuthorizationRequestsWithPromptHandler:(id)a3 objectType:(id)a4 completion:(id)a5;
- (void)invalidate;
- (void)performIfAuthorizedToDeleteObjects:(id)a3 onQueue:(id)a4 usingBlock:(id)a5 errorHandler:(id)a6;
- (void)performIfAuthorizedToDeleteObjectsWithTypes:(id)a3 onQueue:(id)a4 usingBlock:(id)a5 errorHandler:(id)a6;
- (void)performIfAuthorizedToReadObjects:(id)a3 onQueue:(id)a4 usingBlock:(id)a5 errorHandler:(id)a6;
- (void)performIfAuthorizedToReadTypes:(id)a3 onQueue:(id)a4 usingBlock:(id)a5 errorHandler:(id)a6;
- (void)performIfAuthorizedToSaveObjects:(id)a3 onQueue:(id)a4 usingBlock:(id)a5 errorHandler:(id)a6;
- (void)performIfAuthorizedToSaveObjectsWithTypes:(id)a3 onQueue:(id)a4 usingBlock:(id)a5 errorHandler:(id)a6;
- (void)updateDefaultAuthorizationStatusesForSource:(id)a3 completion:(id)a4;
@end

@implementation HDClientAuthorizationOracle

- (HDClientAuthorizationOracle)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HDClientAuthorizationOracle)initWithSourceBundleIdentifier:(id)a3 entitlements:(id)a4 profile:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v20.receiver = self;
  v20.super_class = HDClientAuthorizationOracle;
  v11 = [(HDClientAuthorizationOracle *)&v20 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_profile, v10);
    v13 = [v8 copy];
    sourceBundleIdentifier = v12->_sourceBundleIdentifier;
    v12->_sourceBundleIdentifier = v13;

    objc_storeStrong(&v12->_entitlements, a4);
    v12->_clientHasPrivateEntitlement = [(_HKEntitlements *)v12->_entitlements hasEntitlement:*MEMORY[0x277CCC8B0]];
    v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
    authorizationRequestIdentifiers = v12->_authorizationRequestIdentifiers;
    v12->_authorizationRequestIdentifiers = v15;

    v17 = HKCreateSerialDispatchQueue();
    queue = v12->_queue;
    v12->_queue = v17;
  }

  return v12;
}

- (void)invalidate
{
  v4 = 0;
  atomic_compare_exchange_strong(&self->_invalidated, &v4, 1u);
  if (!v4)
  {
    if (self)
    {
      block[5] = v2;
      block[6] = v3;
      queue = self->_queue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __42__HDClientAuthorizationOracle__invalidate__block_invoke;
      block[3] = &unk_278613968;
      block[4] = self;
      dispatch_async(queue, block);
    }
  }
}

- (BOOL)clientHasAuthorizationForAllTypes
{
  v20 = *MEMORY[0x277D85DE8];
  if ([(NSString *)self->_sourceBundleIdentifier isEqualToString:*MEMORY[0x277CCE558]])
  {
    v3 = [HDKeyValueDomain alloc];
    v4 = *MEMORY[0x277CCE548];
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    v6 = [(HDKeyValueDomain *)v3 initWithCategory:5 domainName:v4 profile:WeakRetained];

    v7 = *MEMORY[0x277CCE550];
    v15 = 0;
    v8 = [(HDKeyValueDomain *)v6 numberForKey:v7 error:&v15];
    v9 = v15;
    v10 = v9;
    if (v8)
    {
      v11 = [v8 integerValue] == 1;
    }

    else
    {
      if (v9)
      {
        _HKInitializeLogging();
        v12 = HKLogAuthorization();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v17 = self;
          v18 = 2114;
          v19 = v10;
          _os_log_error_impl(&dword_228986000, v12, OS_LOG_TYPE_ERROR, "%{public}@: Failed to fetch authorization status for all types: %{public}@", buf, 0x16u);
        }
      }

      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v11;
}

- (id)filteredObjectsForReadAuthorization:(id)a3 anchor:(id)a4 error:(id *)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [(HDClientAuthorizationOracle *)self clientHasAuthorizationForAllTypes];
  if (self)
  {
    if (([(_HKEntitlements *)self->_entitlements hasEntitlement:*MEMORY[0x277CCB868]]| v10))
    {
LABEL_3:
      v11 = v8;
      goto LABEL_9;
    }
  }

  else if (v10)
  {
    goto LABEL_3;
  }

  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v13 = [WeakRetained authorizationManager];
  v11 = [v13 filteredAuthorizedObjectsForClient:v8 anchor:v9 bundleIdentifier:self->_sourceBundleIdentifier clientEntitlements:self->_entitlements error:a5];

  if (*a5)
  {
    _HKInitializeLogging();
    v14 = HKLogAuthorization();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v17 = [v8 count];
      v18 = [v8 firstObject];
      v19 = [v18 hk_objectType];
      v20 = *a5;
      v21 = 138544130;
      v22 = self;
      v23 = 2048;
      v24 = v17;
      v25 = 2112;
      v26 = v19;
      v27 = 2114;
      v28 = v20;
      _os_log_error_impl(&dword_228986000, v14, OS_LOG_TYPE_ERROR, "%{public}@: Failed to find authorization status record for %ld objects of type %@ with an error: %{public}@", &v21, 0x2Au);
    }
  }

LABEL_9:

  v15 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)filterForClientUserAnnotatedMedications:(id)a3 error:(id *)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(HDClientAuthorizationOracle *)self clientHasAuthorizationForAllTypes];
  if (self)
  {
    if (([(_HKEntitlements *)self->_entitlements hasEntitlement:*MEMORY[0x277CCB868]]| v7))
    {
LABEL_3:
      v8 = v6;
      goto LABEL_11;
    }
  }

  else if (v7)
  {
    goto LABEL_3;
  }

  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v10 = [WeakRetained authorizationManager];
  v11 = [v10 filterForClientUserAnnotatedMedications:v6 bundleIdentifier:self->_sourceBundleIdentifier clientEntitlements:self->_entitlements error:a4];

  if (*a4)
  {
    _HKInitializeLogging();
    v12 = HKLogAuthorization();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v15 = *a4;
      v16 = 138543874;
      v17 = self;
      v18 = 2112;
      v19 = v6;
      v20 = 2112;
      v21 = v15;
      _os_log_error_impl(&dword_228986000, v12, OS_LOG_TYPE_ERROR, "%{public}@: Failed to find authorization status record for objects: %@ with an error: %@", &v16, 0x20u);
    }

    v8 = 0;
  }

  else
  {
    v8 = v11;
  }

LABEL_11:
  v13 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)authorizationStatusForType:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CBEB98] setWithObject:v6];
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __69__HDClientAuthorizationOracle_authorizationStatusForType_completion___block_invoke;
  v18 = &unk_278618C68;
  v20 = self;
  v21 = v7;
  v19 = v6;
  v9 = v6;
  v10 = v7;
  v11 = v8;
  v12 = &v15;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    v14 = [WeakRetained database];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __71__HDClientAuthorizationOracle__authorizationStatusForTypes_completion___block_invoke;
    v22[3] = &unk_278614160;
    v22[4] = self;
    v23 = v11;
    v24 = v12;
    [v14 performWhenDataProtectedByFirstUnlockIsAvailableOnQueue:0 block:v22];
  }
}

void __69__HDClientAuthorizationOracle_authorizationStatusForType_completion___block_invoke(void *a1, void *a2)
{
  if (a2)
  {
    v3 = [a2 objectForKeyedSubscript:a1[4]];
    v4 = [v3 integerValue];

    v5 = a1[6];
    if (a1[5] && (v4 - 101) <= 3)
    {
      v6 = qword_229167600[v4 - 101];
    }

    else
    {
      v6 = 0;
    }

    v9 = [MEMORY[0x277CCABB0] numberWithInteger:v6];
    (*(v5 + 16))(v5, v9, 0);
  }

  else
  {
    v7 = a1[6];
    v8 = *(a1[6] + 16);

    v8();
  }
}

void __71__HDClientAuthorizationOracle__authorizationStatusForTypes_completion___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 8));
  v3 = [WeakRetained authorizationManager];
  v4 = a1[5];
  v5 = *(a1[4] + 16);
  v8 = 0;
  v6 = [v3 authorizationStatusForTypes:v4 bundleIdentifier:v5 error:&v8];
  v7 = v8;

  (*(a1[6] + 16))();
}

- (BOOL)performReadAuthorizationTransactionWithError:(id *)a3 handler:(id)a4
{
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v8 = [WeakRetained database];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __84__HDClientAuthorizationOracle_performReadAuthorizationTransactionWithError_handler___block_invoke;
  v11[3] = &unk_278618368;
  v11[4] = self;
  v12 = v6;
  v9 = v6;
  LOBYTE(a3) = [(HDHealthEntity *)HDAuthorizationEntity performReadTransactionWithHealthDatabase:v8 error:a3 block:v11];

  return a3;
}

uint64_t __84__HDClientAuthorizationOracle_performReadAuthorizationTransactionWithError_handler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __84__HDClientAuthorizationOracle_performReadAuthorizationTransactionWithError_handler___block_invoke_2;
  v12[3] = &unk_278618C90;
  v6 = *(a1 + 32);
  v13 = v5;
  v14 = v6;
  v7 = v5;
  v8 = _Block_copy(v12);
  v10 = (*(*(a1 + 40) + 16))(*(a1 + 40), v8, a3, v9);

  return v10;
}

uint64_t __84__HDClientAuthorizationOracle_performReadAuthorizationTransactionWithError_handler___block_invoke_2(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  v9 = [v7 hd_sampleType];
  v10 = [*(a1 + 32) objectForKeyedSubscript:v9];
  if (!v10)
  {
    v10 = [*(a1 + 40) authorizationStatusRecordForType:v9 error:a4];
    if (!v10)
    {
LABEL_7:
      v14 = 0;
      goto LABEL_16;
    }

    [*(a1 + 32) setObject:v10 forKeyedSubscript:v9];
  }

  if (![v10 canRead])
  {
    goto LABEL_7;
  }

  v11 = [v10 restrictedBundleIdentifier];
  if (v11)
  {
    v12 = [v7 _source];
    v13 = [v12 bundleIdentifier];
    v14 = [v13 isEqualToString:v11];
  }

  else
    v14 = ([v10 authorizationMode] != 1 || v8 && (v15 = objc_msgSend(v8, "longLongValue"), objc_msgSend(v10, "objectLimitAnchor"), v16 = {;
  }

LABEL_16:
  return v14;
}

- (id)additionalAuthorizationPredicateForObjectType:(id)a3 error:(id *)a4
{
  v4 = [(HDClientAuthorizationOracle *)self authorizationStatusRecordForType:a3 error:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 authorizationPredicate];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)authorizationStatusRecordForType:(id)a3 error:(id *)a4
{
  v7 = a3;
  if (!v7)
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"HDClientAuthorizationOracle.m" lineNumber:254 description:{@"Invalid parameter not satisfying: %@", @"type != nil"}];
  }

  v8 = [MEMORY[0x277CBEB98] setWithObject:v7];
  v9 = [(HDClientAuthorizationOracle *)self authorizationStatusRecordsForTypes:v8 error:a4];

  v10 = [v9 objectForKeyedSubscript:v7];

  return v10;
}

- (id)authorizationStatusRecordsForTypes:(id)a3 error:(id *)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = v7;
  if (!v7 || ![v7 count])
  {
    v23 = [MEMORY[0x277CCA890] currentHandler];
    [v23 handleFailureInMethod:a2 object:self file:@"HDClientAuthorizationOracle.m" lineNumber:262 description:{@"Invalid parameter not satisfying: %@", @"types != nil && types.count > 0"}];
  }

  v9 = [(HDClientAuthorizationOracle *)self clientHasAuthorizationForAllTypes];
  if (self)
  {
    if (([(_HKEntitlements *)self->_entitlements hasEntitlement:*MEMORY[0x277CCB868]]| v9))
    {
LABEL_18:
      v13 = [(HDClientAuthorizationOracle *)self _unrestrictedAuthorizationForTypes:v8];
      goto LABEL_19;
    }
  }

  else if (v9)
  {
    goto LABEL_18;
  }

  if (([v8 hk_containsObjectPassingTest:&__block_literal_global_43] & 1) == 0)
  {
    goto LABEL_18;
  }

  sourceBundleIdentifier = self->_sourceBundleIdentifier;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v12 = [HDAuthorizationEntity readAuthorizationStatusesByTypeForBundleIdentifier:sourceBundleIdentifier types:v8 profile:WeakRetained error:a4];
  v13 = [v12 mutableCopy];

  if (v13)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v26 = v8;
    v14 = v8;
    v15 = [v14 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v28;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v28 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v27 + 1) + 8 * i);
          v20 = [v13 objectForKeyedSubscript:v19];
          v21 = [HDAuthorizationStatus authorizationStatusForRecordForObjectType:v19 authorizationStatusRecord:v20 clientEntitlements:self->_entitlements];
          [v13 setObject:v21 forKeyedSubscript:v19];
        }

        v16 = [v14 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v16);
    }

    v22 = v13;
    v8 = v26;
  }

LABEL_19:
  v24 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)_unrestrictedAuthorizationForTypes:(uint64_t)a1
{
  if (a1)
  {
    v2 = a2;
    v3 = +[HDAuthorizationStatusRecord unrestrictedReadAuthorizationStatus];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __66__HDClientAuthorizationOracle__unrestrictedAuthorizationForTypes___block_invoke;
    v7[3] = &unk_278618CD8;
    v8 = v3;
    v4 = v3;
    v5 = [v2 hk_mapToDictionary:v7];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t __72__HDClientAuthorizationOracle_authorizationStatusRecordsForTypes_error___block_invoke(uint64_t a1, void *a2)
{
  [a2 code];

  return HKDataTypeRequiresAuthorization();
}

- (BOOL)hasAuthorizationBypassToReadType:(id)a3
{
  v4 = a3;
  if ([(HDClientAuthorizationOracle *)self clientHasAuthorizationForAllTypes]|| self && ([(_HKEntitlements *)self->_entitlements hasEntitlement:*MEMORY[0x277CCB868]]& 1) != 0)
  {
    v5 = 1;
  }

  else
  {
    entitlements = self->_entitlements;
    v7 = *MEMORY[0x277CCCCE0];
    v8 = [v4 identifier];
    v5 = [(_HKEntitlements *)entitlements arrayEntitlement:v7 containsString:v8];
  }

  return v5;
}

- (BOOL)isAuthorizedToReadObject:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 hd_sampleType];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a4 code:1301 format:{@"Object %@ is not a sample", v6}];
    LOBYTE(self) = 0;
    goto LABEL_6;
  }

  v8 = [v6 hd_sampleType];
  v9 = [(HDClientAuthorizationOracle *)self hasAuthorizationBypassToReadType:v8];

  if (!v9)
  {
    v32 = 0;
    v11 = [(HDClientAuthorizationOracle *)self authorizationStatusRecordForType:v7 error:&v32];
    v12 = v32;
    v13 = v12;
    if (!v11)
    {
      if (v12)
      {
        v15 = v12;
      }

      else
      {
        v15 = [MEMORY[0x277CCA9B8] hk_error:5 format:{@"Failed to fetch read authorization status for object: %@", v6}];
        if (!v15)
        {
          v13 = 0;
          LOBYTE(self) = 0;
          goto LABEL_22;
        }
      }

      if (a4)
      {
        v29 = v15;
        *a4 = v15;
      }

      else
      {
        _HKLogDroppedError();
      }

      LOBYTE(self) = 0;
      if (v13)
      {
        goto LABEL_28;
      }

      goto LABEL_22;
    }

    v14 = v6;
    v15 = v14;
    v30 = v11;
    if (!self)
    {

      v31 = v13;
      v28 = v13;
      goto LABEL_19;
    }

    v16 = v11;
    v17 = [v16 canRead];
    v18 = [v16 restrictedBundleIdentifier];

    if (v18)
    {
      v19 = [v15 _source];
      v20 = [v19 bundleIdentifier];
      v21 = [v20 isEqualToString:v18];

      if ((v21 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    else if (!v17)
    {
LABEL_18:

      v31 = v13;
      v22 = v15;
      WeakRetained = objc_loadWeakRetained(&self->_profile);
      v24 = [WeakRetained authorizationManager];
      sourceBundleIdentifier = self->_sourceBundleIdentifier;
      entitlements = self->_entitlements;
      self = objc_loadWeakRetained(&self->_profile);
      v27 = [v24 isClientAuthorizedToReadObject:v22 sourceBundleIdentifier:sourceBundleIdentifier clientEntitlements:entitlements profile:self error:&v31];

      LOBYTE(self) = v27 == 1;
      v28 = v31;
LABEL_19:
      v15 = v13;
      v13 = v28;
LABEL_21:
      v11 = v30;
LABEL_22:

LABEL_28:
      goto LABEL_6;
    }

    if (self->_clientHasPrivateEntitlement || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || ([v15 _requiresPrivateEntitlementForQueries] & 1) == 0)
    {

      LOBYTE(self) = 1;
      goto LABEL_21;
    }

    goto LABEL_18;
  }

  LOBYTE(self) = 1;
LABEL_6:

  return self;
}

- (BOOL)isAuthorizationStatusDeterminedForTypes:(id)a3 error:(id *)a4
{
  v44 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(HDClientAuthorizationOracle *)self clientHasAuthorizationForAllTypes];
  if (self)
  {
    if (([(_HKEntitlements *)self->_entitlements hasEntitlement:*MEMORY[0x277CCB868]]| v7))
    {
LABEL_3:
      v8 = 1;
      goto LABEL_35;
    }
  }

  else if (v7)
  {
    goto LABEL_3;
  }

  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v10 = [WeakRetained authorizationManager];
  v11 = [v10 authorizationStatusForTypes:v6 bundleIdentifier:self->_sourceBundleIdentifier error:a4];
  v12 = [v11 mutableCopy];

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v32 = v6;
  v13 = v6;
  v14 = [v13 countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (!v14)
  {
    goto LABEL_21;
  }

  v15 = v14;
  v16 = *v39;
  v33 = *MEMORY[0x277CCCCE0];
  do
  {
    v17 = 0;
    do
    {
      if (*v39 != v16)
      {
        objc_enumerationMutation(v13);
      }

      v18 = *(*(&v38 + 1) + 8 * v17);
      [v18 code];
      if (!HKDataTypeRequiresAuthorization() || ([v18 code], (HKDataTypeRequiresPerObjectAuthorization() & 1) != 0))
      {
        v19 = &unk_283CB0918;
LABEL_13:
        [v12 setObject:v19 forKeyedSubscript:v18];
        goto LABEL_14;
      }

      v20 = self;
      entitlements = self->_entitlements;
      v22 = [v18 identifier];
      LOBYTE(entitlements) = [(_HKEntitlements *)entitlements arrayEntitlement:v33 containsString:v22];

      if (entitlements)
      {
        v19 = &unk_283CB0918;
        self = v20;
        goto LABEL_13;
      }

      v23 = [v12 objectForKeyedSubscript:v18];

      self = v20;
      if (!v23)
      {
        v19 = &unk_283CB0930;
        goto LABEL_13;
      }

LABEL_14:
      ++v17;
    }

    while (v15 != v17);
    v24 = [v13 countByEnumeratingWithState:&v38 objects:v43 count:16];
    v15 = v24;
  }

  while (v24);
LABEL_21:

  if ([v12 count])
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v25 = [v12 allValues];
    v26 = [v25 countByEnumeratingWithState:&v34 objects:v42 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v35;
      while (2)
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v35 != v28)
          {
            objc_enumerationMutation(v25);
          }

          if (([*(*(&v34 + 1) + 8 * i) integerValue] - 101) > 3)
          {
            v8 = 0;
            goto LABEL_32;
          }
        }

        v27 = [v25 countByEnumeratingWithState:&v34 objects:v42 count:16];
        if (v27)
        {
          continue;
        }

        break;
      }
    }

    v8 = 1;
LABEL_32:
  }

  else
  {
    v8 = 0;
  }

  v6 = v32;

LABEL_35:
  v30 = *MEMORY[0x277D85DE8];
  return v8;
}

void __42__HDClientAuthorizationOracle__invalidate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v7 = [WeakRetained authorizationManager];

  if ([*(*(a1 + 32) + 40) count])
  {
    v3 = [*(*(a1 + 32) + 40) copy];
    [*(*(a1 + 32) + 40) removeAllObjects];
    [v7 cancelAuthorizationRequestsWithIdentifiers:v3];
  }

  if (*(*(a1 + 32) + 56))
  {
    v4 = [MEMORY[0x277CCA9B8] hk_error:100 description:@"The connection to the view service was invalidated."];
    [v7 endAuthorizationDelegateTransactionWithSessionIdentifier:*(*(a1 + 32) + 56) error:v4];
    v5 = *(a1 + 32);
    v6 = *(v5 + 56);
    *(v5 + 56) = 0;
  }
}

- (void)performIfAuthorizedToReadObjects:(id)a3 onQueue:(id)a4 usingBlock:(id)a5 errorHandler:(id)a6
{
  v61 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if ([v11 count])
  {
    if (v13)
    {
      goto LABEL_3;
    }

LABEL_30:
    v36 = [MEMORY[0x277CCA890] currentHandler];
    [v36 handleFailureInMethod:a2 object:self file:@"HDClientAuthorizationOracle.m" lineNumber:472 description:{@"Invalid parameter not satisfying: %@", @"block != NULL"}];

    if (v14)
    {
      goto LABEL_4;
    }

    goto LABEL_31;
  }

  v35 = [MEMORY[0x277CCA890] currentHandler];
  [v35 handleFailureInMethod:a2 object:self file:@"HDClientAuthorizationOracle.m" lineNumber:471 description:{@"Invalid parameter not satisfying: %@", @"[objects count] > 0"}];

  if (!v13)
  {
    goto LABEL_30;
  }

LABEL_3:
  if (v14)
  {
    goto LABEL_4;
  }

LABEL_31:
  v37 = [MEMORY[0x277CCA890] currentHandler];
  [v37 handleFailureInMethod:a2 object:self file:@"HDClientAuthorizationOracle.m" lineNumber:473 description:{@"Invalid parameter not satisfying: %@", @"errorHandler != NULL"}];

LABEL_4:
  v15 = [(HDClientAuthorizationOracle *)self clientHasAuthorizationForAllTypes];
  v44 = [MEMORY[0x277CBEB18] array];
  if (self)
  {
    if (([(_HKEntitlements *)self->_entitlements hasEntitlement:*MEMORY[0x277CCB868]]| v15))
    {
LABEL_19:
      v19 = 0;
      goto LABEL_20;
    }
  }

  else if (v15)
  {
    goto LABEL_19;
  }

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v16 = v11;
  v17 = [v16 countByEnumeratingWithState:&v56 objects:v60 count:16];
  if (!v17)
  {

    goto LABEL_19;
  }

  v18 = v17;
  v38 = a2;
  v39 = v14;
  v40 = v13;
  v41 = v12;
  v42 = v11;
  v19 = 0;
  obj = v16;
  v46 = *v57;
  v43 = 1;
  do
  {
    v20 = 0;
    v21 = v19;
    do
    {
      if (*v57 != v46)
      {
        objc_enumerationMutation(obj);
      }

      v22 = *(*(&v56 + 1) + 8 * v20);
      WeakRetained = objc_loadWeakRetained(&self->_profile);
      v24 = [WeakRetained authorizationManager];
      sourceBundleIdentifier = self->_sourceBundleIdentifier;
      entitlements = self->_entitlements;
      v27 = objc_loadWeakRetained(&self->_profile);
      v55 = v21;
      v28 = [v24 isClientAuthorizedToReadObject:v22 sourceBundleIdentifier:sourceBundleIdentifier clientEntitlements:entitlements profile:v27 error:&v55];
      v19 = v55;

      if (v28 == 1)
      {
        [v44 addObject:v22];
      }

      else
      {
        v43 = 0;
      }

      ++v20;
      v21 = v19;
    }

    while (v18 != v20);
    v18 = [obj countByEnumeratingWithState:&v56 objects:v60 count:16];
  }

  while (v18);

  if (v43)
  {
    v12 = v41;
    v11 = v42;
    v14 = v39;
    v13 = v40;
LABEL_20:
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __96__HDClientAuthorizationOracle_performIfAuthorizedToReadObjects_onQueue_usingBlock_errorHandler___block_invoke;
    aBlock[3] = &unk_278614E28;
    v53 = v44;
    v54 = v13;
    v29 = _Block_copy(aBlock);
    v30 = v29;
    if (v12)
    {
      dispatch_async(v12, v29);
    }

    else
    {
      v29[2](v29);
    }

    v31 = v53;
    goto LABEL_24;
  }

  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __96__HDClientAuthorizationOracle_performIfAuthorizedToReadObjects_onQueue_usingBlock_errorHandler___block_invoke_2;
  v47[3] = &unk_2786173F0;
  v47[4] = self;
  v48 = obj;
  v19 = v19;
  v49 = v19;
  v14 = v39;
  v51 = v38;
  v50 = v39;
  v33 = _Block_copy(v47);
  v34 = v33;
  v13 = v40;
  v12 = v41;
  if (v41)
  {
    dispatch_async(v41, v33);
  }

  else
  {
    v33[2](v33);
  }

  v11 = v42;

  v31 = v48;
LABEL_24:

  v32 = *MEMORY[0x277D85DE8];
}

void __96__HDClientAuthorizationOracle_performIfAuthorizedToReadObjects_onQueue_usingBlock_errorHandler___block_invoke(uint64_t a1)
{
  v4 = [MEMORY[0x277CCD8A8] hd_sampleTypesForObjects:*(a1 + 32)];
  v2 = *(a1 + 40);
  if ([v4 count])
  {
    v3 = v4;
  }

  else
  {
    v3 = 0;
  }

  (*(v2 + 16))(v2, v3);
}

uint64_t __96__HDClientAuthorizationOracle_performIfAuthorizedToReadObjects_onQueue_usingBlock_errorHandler___block_invoke_2(void *a1)
{
  v18 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1[4] + 8));
  v3 = [WeakRetained daemon];
  v4 = [v3 behavior];
  v5 = [v4 isAppleInternalInstall];

  if (v5)
  {
    v6 = [MEMORY[0x277CCD8A8] hd_sampleTypesForObjects:a1[5]];
    _HKInitializeLogging();
    v7 = HKLogAuthorization();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1[4] + 16);
      *buf = 138412546;
      v15 = v10;
      v16 = 2112;
      v17 = v6;
      _os_log_error_impl(&dword_228986000, v7, OS_LOG_TYPE_ERROR, "Client %@ is not read authorized for objects of data type(s) %@", buf, 0x16u);
    }
  }

  else
  {
    _HKInitializeLogging();
    v6 = HKLogAuthorization();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1[4] + 16);
      *buf = 138543362;
      v15 = v11;
      _os_log_error_impl(&dword_228986000, v6, OS_LOG_TYPE_ERROR, "Client %{public}@ is not read authorized for objects of data type(s).", buf, 0xCu);
    }
  }

  if (!a1[6])
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    [v12 handleFailureInMethod:a1[8] object:a1[4] file:@"HDClientAuthorizationOracle.m" lineNumber:517 description:{@"Invalid parameter not satisfying: %@", @"error != nil"}];

    v13 = a1[6];
  }

  result = (*(a1[7] + 16))();
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)performIfAuthorizedToReadTypes:(id)a3 onQueue:(id)a4 usingBlock:(id)a5 errorHandler:(id)a6
{
  v61 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if ([v11 count])
  {
    if (v13)
    {
      goto LABEL_3;
    }

LABEL_30:
    v36 = [MEMORY[0x277CCA890] currentHandler];
    [v36 handleFailureInMethod:a2 object:self file:@"HDClientAuthorizationOracle.m" lineNumber:535 description:{@"Invalid parameter not satisfying: %@", @"block != NULL"}];

    if (v14)
    {
      goto LABEL_4;
    }

    goto LABEL_31;
  }

  v35 = [MEMORY[0x277CCA890] currentHandler];
  [v35 handleFailureInMethod:a2 object:self file:@"HDClientAuthorizationOracle.m" lineNumber:534 description:{@"Invalid parameter not satisfying: %@", @"[types count] > 0"}];

  if (!v13)
  {
    goto LABEL_30;
  }

LABEL_3:
  if (v14)
  {
    goto LABEL_4;
  }

LABEL_31:
  v37 = [MEMORY[0x277CCA890] currentHandler];
  [v37 handleFailureInMethod:a2 object:self file:@"HDClientAuthorizationOracle.m" lineNumber:536 description:{@"Invalid parameter not satisfying: %@", @"errorHandler != NULL"}];

LABEL_4:
  v15 = [(HDClientAuthorizationOracle *)self clientHasAuthorizationForAllTypes];
  v44 = [MEMORY[0x277CBEB18] array];
  if (self)
  {
    if (([(_HKEntitlements *)self->_entitlements hasEntitlement:*MEMORY[0x277CCB868]]| v15))
    {
LABEL_19:
      v19 = 0;
      goto LABEL_20;
    }
  }

  else if (v15)
  {
    goto LABEL_19;
  }

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v16 = v11;
  v17 = [v16 countByEnumeratingWithState:&v56 objects:v60 count:16];
  if (!v17)
  {

    goto LABEL_19;
  }

  v18 = v17;
  v38 = a2;
  v39 = v14;
  v40 = v13;
  v41 = v12;
  v42 = v11;
  v19 = 0;
  obj = v16;
  v46 = *v57;
  v43 = 1;
  do
  {
    v20 = 0;
    v21 = v19;
    do
    {
      if (*v57 != v46)
      {
        objc_enumerationMutation(obj);
      }

      v22 = *(*(&v56 + 1) + 8 * v20);
      WeakRetained = objc_loadWeakRetained(&self->_profile);
      v24 = [WeakRetained authorizationManager];
      sourceBundleIdentifier = self->_sourceBundleIdentifier;
      entitlements = self->_entitlements;
      v27 = objc_loadWeakRetained(&self->_profile);
      v55 = v21;
      v28 = [v24 isClientAuthorizedToReadType:v22 sourceBundleIdentifier:sourceBundleIdentifier clientEntitlements:entitlements profile:v27 error:&v55];
      v19 = v55;

      if (v28 == 1)
      {
        [v44 addObject:v22];
      }

      else
      {
        v43 = 0;
      }

      ++v20;
      v21 = v19;
    }

    while (v18 != v20);
    v18 = [obj countByEnumeratingWithState:&v56 objects:v60 count:16];
  }

  while (v18);

  if (v43)
  {
    v12 = v41;
    v11 = v42;
    v14 = v39;
    v13 = v40;
LABEL_20:
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __94__HDClientAuthorizationOracle_performIfAuthorizedToReadTypes_onQueue_usingBlock_errorHandler___block_invoke;
    aBlock[3] = &unk_278614008;
    v54 = v13;
    v53 = v44;
    v29 = _Block_copy(aBlock);
    v30 = v29;
    if (v12)
    {
      dispatch_async(v12, v29);
    }

    else
    {
      v29[2](v29);
    }

    v31 = v54;
    goto LABEL_24;
  }

  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __94__HDClientAuthorizationOracle_performIfAuthorizedToReadTypes_onQueue_usingBlock_errorHandler___block_invoke_2;
  v47[3] = &unk_2786173F0;
  v47[4] = self;
  v48 = obj;
  v19 = v19;
  v49 = v19;
  v14 = v39;
  v51 = v38;
  v50 = v39;
  v33 = _Block_copy(v47);
  v34 = v33;
  v13 = v40;
  v12 = v41;
  if (v41)
  {
    dispatch_async(v41, v33);
  }

  else
  {
    v33[2](v33);
  }

  v11 = v42;

  v31 = v48;
LABEL_24:

  v32 = *MEMORY[0x277D85DE8];
}

void __94__HDClientAuthorizationOracle_performIfAuthorizedToReadTypes_onQueue_usingBlock_errorHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if ([*(a1 + 32) count])
  {
    v4 = [MEMORY[0x277CBEB98] setWithArray:*(a1 + 32)];
    (*(v2 + 16))(v2, v4);
  }

  else
  {
    v3 = *(v2 + 16);

    v3(v2, 0);
  }
}

uint64_t __94__HDClientAuthorizationOracle_performIfAuthorizedToReadTypes_onQueue_usingBlock_errorHandler___block_invoke_2(void *a1)
{
  v22 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1[4] + 8));
  v3 = [WeakRetained daemon];
  v4 = [v3 behavior];
  v5 = [v4 isAppleInternalInstall];

  _HKInitializeLogging();
  v6 = HKLogAuthorization();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
  if (v5)
  {
    if (!v7)
    {
      goto LABEL_5;
    }

    v8 = a1[5];
    v9 = *(a1[4] + 16);
    *buf = 138412546;
    v19 = v9;
    v20 = 2112;
    v21 = v8;
    v10 = "Client %@ is not read authorized for data type(s) %@";
    v11 = v6;
    v12 = 22;
  }

  else
  {
    if (!v7)
    {
      goto LABEL_5;
    }

    v15 = *(a1[4] + 16);
    *buf = 138543362;
    v19 = v15;
    v10 = "Client %{public}@ is not read authorized for data type(s).";
    v11 = v6;
    v12 = 12;
  }

  _os_log_error_impl(&dword_228986000, v11, OS_LOG_TYPE_ERROR, v10, buf, v12);
LABEL_5:

  if (!a1[6])
  {
    v16 = [MEMORY[0x277CCA890] currentHandler];
    [v16 handleFailureInMethod:a1[8] object:a1[4] file:@"HDClientAuthorizationOracle.m" lineNumber:582 description:{@"Invalid parameter not satisfying: %@", @"error != nil"}];

    v17 = a1[6];
  }

  result = (*(a1[7] + 16))();
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)performIfAuthorizedToSaveObjects:(id)a3 onQueue:(id)a4 usingBlock:(id)a5 errorHandler:(id)a6
{
  v57 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if ([v11 count])
  {
    if (v13)
    {
      goto LABEL_3;
    }

LABEL_27:
    v34 = [MEMORY[0x277CCA890] currentHandler];
    [v34 handleFailureInMethod:a2 object:self file:@"HDClientAuthorizationOracle.m" lineNumber:599 description:{@"Invalid parameter not satisfying: %@", @"block != NULL"}];

    if (v14)
    {
      goto LABEL_4;
    }

    goto LABEL_28;
  }

  v33 = [MEMORY[0x277CCA890] currentHandler];
  [v33 handleFailureInMethod:a2 object:self file:@"HDClientAuthorizationOracle.m" lineNumber:598 description:{@"Invalid parameter not satisfying: %@", @"[objects count] > 0"}];

  if (!v13)
  {
    goto LABEL_27;
  }

LABEL_3:
  if (v14)
  {
    goto LABEL_4;
  }

LABEL_28:
  v35 = [MEMORY[0x277CCA890] currentHandler];
  [v35 handleFailureInMethod:a2 object:self file:@"HDClientAuthorizationOracle.m" lineNumber:600 description:{@"Invalid parameter not satisfying: %@", @"errorHandler != NULL"}];

LABEL_4:
  v15 = [(HDClientAuthorizationOracle *)self clientHasAuthorizationForAllTypes];
  if (self)
  {
    if (([(_HKEntitlements *)self->_entitlements hasEntitlement:*MEMORY[0x277CCB868]]| v15))
    {
LABEL_16:
      v17 = 0;
      goto LABEL_17;
    }
  }

  else if (v15)
  {
    goto LABEL_16;
  }

  v54 = 0u;
  v55 = 0u;
  v53 = 0u;
  v52 = 0u;
  v16 = v11;
  v43 = [v16 countByEnumeratingWithState:&v52 objects:v56 count:16];
  if (!v43)
  {

    goto LABEL_16;
  }

  v36 = a2;
  v37 = v14;
  v38 = v13;
  v39 = v12;
  v40 = v11;
  obj = v16;
  v17 = 0;
  v42 = *v53;
  LOBYTE(v13) = 1;
  do
  {
    v18 = 0;
    v19 = v17;
    do
    {
      if (*v53 != v42)
      {
        objc_enumerationMutation(obj);
      }

      v20 = *(*(&v52 + 1) + 8 * v18);
      WeakRetained = objc_loadWeakRetained(&self->_profile);
      v22 = [WeakRetained authorizationManager];
      sourceBundleIdentifier = self->_sourceBundleIdentifier;
      entitlements = self->_entitlements;
      v25 = objc_loadWeakRetained(&self->_profile);
      v51 = v19;
      v26 = [v22 isClientAuthorizedToWriteObject:v20 sourceBundleIdentifier:sourceBundleIdentifier clientEntitlements:entitlements profile:v25 error:&v51];
      v17 = v51;

      LODWORD(v13) = (v26 == 1) & v13;
      ++v18;
      v19 = v17;
    }

    while (v43 != v18);
    v43 = [obj countByEnumeratingWithState:&v52 objects:v56 count:16];
  }

  while (v43);

  if (v13)
  {
    v12 = v39;
    v11 = v40;
    v14 = v37;
    v13 = v38;
LABEL_17:
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __96__HDClientAuthorizationOracle_performIfAuthorizedToSaveObjects_onQueue_usingBlock_errorHandler___block_invoke;
    aBlock[3] = &unk_278613658;
    v50 = v13;
    v27 = _Block_copy(aBlock);
    v28 = v27;
    if (v12)
    {
      dispatch_async(v12, v27);
    }

    else
    {
      v27[2](v27);
    }

    v29 = v50;
    goto LABEL_21;
  }

  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __96__HDClientAuthorizationOracle_performIfAuthorizedToSaveObjects_onQueue_usingBlock_errorHandler___block_invoke_2;
  v44[3] = &unk_2786173F0;
  v44[4] = self;
  v45 = obj;
  v17 = v17;
  v46 = v17;
  v14 = v37;
  v48 = v36;
  v47 = v37;
  v31 = _Block_copy(v44);
  v32 = v31;
  v12 = v39;
  v11 = v40;
  if (v39)
  {
    dispatch_async(v39, v31);
  }

  else
  {
    v31[2](v31);
  }

  v13 = v38;

  v29 = v45;
LABEL_21:

  v30 = *MEMORY[0x277D85DE8];
}

uint64_t __96__HDClientAuthorizationOracle_performIfAuthorizedToSaveObjects_onQueue_usingBlock_errorHandler___block_invoke(uint64_t a1)
{
  HDSetHealthInUseDefaultWithReason(@"Saving objects to the database.");
  v2 = *(*(a1 + 32) + 16);

  return v2();
}

uint64_t __96__HDClientAuthorizationOracle_performIfAuthorizedToSaveObjects_onQueue_usingBlock_errorHandler___block_invoke_2(void *a1)
{
  v18 = *MEMORY[0x277D85DE8];
  HDSetHealthInUseDefaultWithReason(@"Saving objects to the database.");
  WeakRetained = objc_loadWeakRetained((a1[4] + 8));
  v3 = [WeakRetained daemon];
  v4 = [v3 behavior];
  v5 = [v4 isAppleInternalInstall];

  if (v5)
  {
    v6 = [MEMORY[0x277CCD8A8] hd_sampleTypesForObjects:a1[5]];
    _HKInitializeLogging();
    v7 = HKLogAuthorization();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1[4] + 16);
      *buf = 138412546;
      v15 = v10;
      v16 = 2112;
      v17 = v6;
      _os_log_error_impl(&dword_228986000, v7, OS_LOG_TYPE_ERROR, "Client %@ is not write authorized to save objects for data type(s) %@", buf, 0x16u);
    }
  }

  else
  {
    _HKInitializeLogging();
    v6 = HKLogAuthorization();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1[4] + 16);
      *buf = 138543362;
      v15 = v11;
      _os_log_error_impl(&dword_228986000, v6, OS_LOG_TYPE_ERROR, "Client %{public}@ is not write authorized to save objects for data type(s).", buf, 0xCu);
    }
  }

  if (!a1[6])
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    [v12 handleFailureInMethod:a1[8] object:a1[4] file:@"HDClientAuthorizationOracle.m" lineNumber:643 description:{@"Invalid parameter not satisfying: %@", @"error != nil"}];

    v13 = a1[6];
  }

  result = (*(a1[7] + 16))();
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)performIfAuthorizedToSaveObjectsWithTypes:(id)a3 onQueue:(id)a4 usingBlock:(id)a5 errorHandler:(id)a6
{
  v57 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if ([v11 count])
  {
    if (v13)
    {
      goto LABEL_3;
    }

LABEL_27:
    v34 = [MEMORY[0x277CCA890] currentHandler];
    [v34 handleFailureInMethod:a2 object:self file:@"HDClientAuthorizationOracle.m" lineNumber:661 description:{@"Invalid parameter not satisfying: %@", @"block != NULL"}];

    if (v14)
    {
      goto LABEL_4;
    }

    goto LABEL_28;
  }

  v33 = [MEMORY[0x277CCA890] currentHandler];
  [v33 handleFailureInMethod:a2 object:self file:@"HDClientAuthorizationOracle.m" lineNumber:660 description:{@"Invalid parameter not satisfying: %@", @"[types count] > 0"}];

  if (!v13)
  {
    goto LABEL_27;
  }

LABEL_3:
  if (v14)
  {
    goto LABEL_4;
  }

LABEL_28:
  v35 = [MEMORY[0x277CCA890] currentHandler];
  [v35 handleFailureInMethod:a2 object:self file:@"HDClientAuthorizationOracle.m" lineNumber:662 description:{@"Invalid parameter not satisfying: %@", @"errorHandler != NULL"}];

LABEL_4:
  v15 = [(HDClientAuthorizationOracle *)self clientHasAuthorizationForAllTypes];
  if (self)
  {
    if (([(_HKEntitlements *)self->_entitlements hasEntitlement:*MEMORY[0x277CCB868]]| v15))
    {
LABEL_16:
      v17 = 0;
      goto LABEL_17;
    }
  }

  else if (v15)
  {
    goto LABEL_16;
  }

  v54 = 0u;
  v55 = 0u;
  v53 = 0u;
  v52 = 0u;
  v16 = v11;
  v43 = [v16 countByEnumeratingWithState:&v52 objects:v56 count:16];
  if (!v43)
  {

    goto LABEL_16;
  }

  v36 = a2;
  v37 = v14;
  v38 = v13;
  v39 = v12;
  v40 = v11;
  obj = v16;
  v17 = 0;
  v42 = *v53;
  LOBYTE(v13) = 1;
  do
  {
    v18 = 0;
    v19 = v17;
    do
    {
      if (*v53 != v42)
      {
        objc_enumerationMutation(obj);
      }

      v20 = *(*(&v52 + 1) + 8 * v18);
      WeakRetained = objc_loadWeakRetained(&self->_profile);
      v22 = [WeakRetained authorizationManager];
      sourceBundleIdentifier = self->_sourceBundleIdentifier;
      entitlements = self->_entitlements;
      v25 = objc_loadWeakRetained(&self->_profile);
      v51 = v19;
      v26 = [v22 isClientAuthorizedToWriteType:v20 sourceBundleIdentifier:sourceBundleIdentifier clientEntitlements:entitlements profile:v25 error:&v51];
      v17 = v51;

      LODWORD(v13) = (v26 == 1) & v13;
      ++v18;
      v19 = v17;
    }

    while (v43 != v18);
    v43 = [obj countByEnumeratingWithState:&v52 objects:v56 count:16];
  }

  while (v43);

  if (v13)
  {
    v12 = v39;
    v11 = v40;
    v14 = v37;
    v13 = v38;
LABEL_17:
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __105__HDClientAuthorizationOracle_performIfAuthorizedToSaveObjectsWithTypes_onQueue_usingBlock_errorHandler___block_invoke;
    aBlock[3] = &unk_278613658;
    v50 = v13;
    v27 = _Block_copy(aBlock);
    v28 = v27;
    if (v12)
    {
      dispatch_async(v12, v27);
    }

    else
    {
      v27[2](v27);
    }

    v29 = v50;
    goto LABEL_21;
  }

  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __105__HDClientAuthorizationOracle_performIfAuthorizedToSaveObjectsWithTypes_onQueue_usingBlock_errorHandler___block_invoke_2;
  v44[3] = &unk_2786173F0;
  v44[4] = self;
  v45 = obj;
  v17 = v17;
  v46 = v17;
  v14 = v37;
  v48 = v36;
  v47 = v37;
  v31 = _Block_copy(v44);
  v32 = v31;
  v12 = v39;
  v11 = v40;
  if (v39)
  {
    dispatch_async(v39, v31);
  }

  else
  {
    v31[2](v31);
  }

  v13 = v38;

  v29 = v45;
LABEL_21:

  v30 = *MEMORY[0x277D85DE8];
}

uint64_t __105__HDClientAuthorizationOracle_performIfAuthorizedToSaveObjectsWithTypes_onQueue_usingBlock_errorHandler___block_invoke(uint64_t a1)
{
  HDSetHealthInUseDefaultWithReason(@"Saving objects to the database.");
  v2 = *(*(a1 + 32) + 16);

  return v2();
}

uint64_t __105__HDClientAuthorizationOracle_performIfAuthorizedToSaveObjectsWithTypes_onQueue_usingBlock_errorHandler___block_invoke_2(void *a1)
{
  v22 = *MEMORY[0x277D85DE8];
  HDSetHealthInUseDefaultWithReason(@"Saving objects to the database.");
  WeakRetained = objc_loadWeakRetained((a1[4] + 8));
  v3 = [WeakRetained daemon];
  v4 = [v3 behavior];
  v5 = [v4 isAppleInternalInstall];

  _HKInitializeLogging();
  v6 = HKLogAuthorization();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
  if (v5)
  {
    if (!v7)
    {
      goto LABEL_5;
    }

    v8 = a1[5];
    v9 = *(a1[4] + 16);
    *buf = 138412546;
    v19 = v9;
    v20 = 2112;
    v21 = v8;
    v10 = "Client %@ is not write authorized for data type(s) %@";
    v11 = v6;
    v12 = 22;
  }

  else
  {
    if (!v7)
    {
      goto LABEL_5;
    }

    v15 = *(a1[4] + 16);
    *buf = 138543362;
    v19 = v15;
    v10 = "Client %{public}@ is not write authorized for data type(s).";
    v11 = v6;
    v12 = 12;
  }

  _os_log_error_impl(&dword_228986000, v11, OS_LOG_TYPE_ERROR, v10, buf, v12);
LABEL_5:

  if (!a1[6])
  {
    v16 = [MEMORY[0x277CCA890] currentHandler];
    [v16 handleFailureInMethod:a1[8] object:a1[4] file:@"HDClientAuthorizationOracle.m" lineNumber:704 description:{@"Invalid parameter not satisfying: %@", @"error != nil"}];

    v17 = a1[6];
  }

  result = (*(a1[7] + 16))();
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)performIfAuthorizedToDeleteObjects:(id)a3 onQueue:(id)a4 usingBlock:(id)a5 errorHandler:(id)a6
{
  v59 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if ([v11 count])
  {
    if (v13)
    {
      goto LABEL_3;
    }

LABEL_8:
    v19 = [MEMORY[0x277CCA890] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"HDClientAuthorizationOracle.m" lineNumber:722 description:{@"Invalid parameter not satisfying: %@", @"block != NULL"}];

    if (v14)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v18 = [MEMORY[0x277CCA890] currentHandler];
  [v18 handleFailureInMethod:a2 object:self file:@"HDClientAuthorizationOracle.m" lineNumber:721 description:{@"Invalid parameter not satisfying: %@", @"[objects count] > 0"}];

  if (!v13)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v14)
  {
    goto LABEL_4;
  }

LABEL_9:
  v20 = [MEMORY[0x277CCA890] currentHandler];
  [v20 handleFailureInMethod:a2 object:self file:@"HDClientAuthorizationOracle.m" lineNumber:723 description:{@"Invalid parameter not satisfying: %@", @"errorHandler != NULL"}];

LABEL_4:
  v15 = [(HDClientAuthorizationOracle *)self clientHasAuthorizationForAllTypes];
  if (self)
  {
    if (([(_HKEntitlements *)self->_entitlements hasEntitlement:*MEMORY[0x277CCB868]]| v15))
    {
LABEL_6:
      v16 = 0;
      v17 = 0;
LABEL_21:
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __98__HDClientAuthorizationOracle_performIfAuthorizedToDeleteObjects_onQueue_usingBlock_errorHandler___block_invoke;
      aBlock[3] = &unk_278618D00;
      v51 = v13;
      v52 = v16;
      v31 = _Block_copy(aBlock);
      v32 = v31;
      if (v12)
      {
        dispatch_async(v12, v31);
      }

      else
      {
        v31[2](v31);
      }

      v33 = v51;
      goto LABEL_25;
    }
  }

  else if (v15)
  {
    goto LABEL_6;
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v21 = v11;
  v44 = [v21 countByEnumeratingWithState:&v54 objects:v58 count:16];
  if (!v44)
  {

    v17 = 0;
    v16 = 1;
    goto LABEL_21;
  }

  v37 = a2;
  v38 = v14;
  v39 = v13;
  queue = v12;
  v41 = v11;
  obj = v21;
  v17 = 0;
  v43 = *v55;
  LOBYTE(v13) = 1;
  do
  {
    v22 = 0;
    v23 = v17;
    do
    {
      if (*v55 != v43)
      {
        objc_enumerationMutation(obj);
      }

      v24 = *(*(&v54 + 1) + 8 * v22);
      WeakRetained = objc_loadWeakRetained(&self->_profile);
      v26 = [WeakRetained authorizationManager];
      sourceBundleIdentifier = self->_sourceBundleIdentifier;
      entitlements = self->_entitlements;
      v29 = objc_loadWeakRetained(&self->_profile);
      v53 = v23;
      v30 = [v26 isClientAuthorizedToWriteObject:v24 sourceBundleIdentifier:sourceBundleIdentifier clientEntitlements:entitlements profile:v29 error:&v53];
      v17 = v53;

      LODWORD(v13) = (v30 == 1) & v13;
      ++v22;
      v23 = v17;
    }

    while (v44 != v22);
    v44 = [obj countByEnumeratingWithState:&v54 objects:v58 count:16];
  }

  while (v44);

  if (v13)
  {
    v16 = 1;
    v12 = queue;
    v11 = v41;
    v14 = v38;
    v13 = v39;
    goto LABEL_21;
  }

  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __98__HDClientAuthorizationOracle_performIfAuthorizedToDeleteObjects_onQueue_usingBlock_errorHandler___block_invoke_2;
  v45[3] = &unk_2786173F0;
  v45[4] = self;
  v46 = obj;
  v17 = v17;
  v47 = v17;
  v14 = v38;
  v49 = v37;
  v48 = v38;
  v35 = _Block_copy(v45);
  v36 = v35;
  v12 = queue;
  if (queue)
  {
    dispatch_async(queue, v35);
  }

  else
  {
    v35[2](v35);
  }

  v11 = v41;
  v13 = v39;

  v33 = v46;
LABEL_25:

  v34 = *MEMORY[0x277D85DE8];
}

uint64_t __98__HDClientAuthorizationOracle_performIfAuthorizedToDeleteObjects_onQueue_usingBlock_errorHandler___block_invoke_2(void *a1)
{
  v18 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1[4] + 8));
  v3 = [WeakRetained daemon];
  v4 = [v3 behavior];
  v5 = [v4 isAppleInternalInstall];

  if (v5)
  {
    v6 = [MEMORY[0x277CCD8A8] hd_sampleTypesForObjects:a1[5]];
    _HKInitializeLogging();
    v7 = HKLogAuthorization();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1[4] + 16);
      *buf = 138412546;
      v15 = v10;
      v16 = 2112;
      v17 = v6;
      _os_log_error_impl(&dword_228986000, v7, OS_LOG_TYPE_ERROR, "Client %@ is not authorized to delete objects for data type(s) %@", buf, 0x16u);
    }
  }

  else
  {
    _HKInitializeLogging();
    v6 = HKLogAuthorization();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1[4] + 16);
      *buf = 138543362;
      v15 = v11;
      _os_log_error_impl(&dword_228986000, v6, OS_LOG_TYPE_ERROR, "Client %{public}@ is not authorized to delete objects for data type(s).", buf, 0xCu);
    }
  }

  if (!a1[6])
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    [v12 handleFailureInMethod:a1[8] object:a1[4] file:@"HDClientAuthorizationOracle.m" lineNumber:767 description:{@"Invalid parameter not satisfying: %@", @"error != nil"}];

    v13 = a1[6];
  }

  result = (*(a1[7] + 16))();
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)performIfAuthorizedToDeleteObjectsWithTypes:(id)a3 onQueue:(id)a4 usingBlock:(id)a5 errorHandler:(id)a6
{
  v59 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if ([v11 count])
  {
    if (v13)
    {
      goto LABEL_3;
    }

LABEL_8:
    v19 = [MEMORY[0x277CCA890] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"HDClientAuthorizationOracle.m" lineNumber:785 description:{@"Invalid parameter not satisfying: %@", @"block != NULL"}];

    if (v14)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v18 = [MEMORY[0x277CCA890] currentHandler];
  [v18 handleFailureInMethod:a2 object:self file:@"HDClientAuthorizationOracle.m" lineNumber:784 description:{@"Invalid parameter not satisfying: %@", @"[types count] > 0"}];

  if (!v13)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v14)
  {
    goto LABEL_4;
  }

LABEL_9:
  v20 = [MEMORY[0x277CCA890] currentHandler];
  [v20 handleFailureInMethod:a2 object:self file:@"HDClientAuthorizationOracle.m" lineNumber:786 description:{@"Invalid parameter not satisfying: %@", @"errorHandler != NULL"}];

LABEL_4:
  v15 = [(HDClientAuthorizationOracle *)self clientHasAuthorizationForAllTypes];
  if (self)
  {
    if (([(_HKEntitlements *)self->_entitlements hasEntitlement:*MEMORY[0x277CCB868]]| v15))
    {
LABEL_6:
      v16 = 0;
      v17 = 0;
LABEL_21:
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __107__HDClientAuthorizationOracle_performIfAuthorizedToDeleteObjectsWithTypes_onQueue_usingBlock_errorHandler___block_invoke;
      aBlock[3] = &unk_278618D00;
      v51 = v13;
      v52 = v16;
      v31 = _Block_copy(aBlock);
      v32 = v31;
      if (v12)
      {
        dispatch_async(v12, v31);
      }

      else
      {
        v31[2](v31);
      }

      v33 = v51;
      goto LABEL_25;
    }
  }

  else if (v15)
  {
    goto LABEL_6;
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v21 = v11;
  v44 = [v21 countByEnumeratingWithState:&v54 objects:v58 count:16];
  if (!v44)
  {

    v17 = 0;
    v16 = 1;
    goto LABEL_21;
  }

  v37 = a2;
  v38 = v14;
  v39 = v13;
  queue = v12;
  v41 = v11;
  obj = v21;
  v17 = 0;
  v43 = *v55;
  LOBYTE(v13) = 1;
  do
  {
    v22 = 0;
    v23 = v17;
    do
    {
      if (*v55 != v43)
      {
        objc_enumerationMutation(obj);
      }

      v24 = *(*(&v54 + 1) + 8 * v22);
      WeakRetained = objc_loadWeakRetained(&self->_profile);
      v26 = [WeakRetained authorizationManager];
      sourceBundleIdentifier = self->_sourceBundleIdentifier;
      entitlements = self->_entitlements;
      v29 = objc_loadWeakRetained(&self->_profile);
      v53 = v23;
      v30 = [v26 isClientAuthorizedToWriteType:v24 sourceBundleIdentifier:sourceBundleIdentifier clientEntitlements:entitlements profile:v29 error:&v53];
      v17 = v53;

      LODWORD(v13) = (v30 == 1) & v13;
      ++v22;
      v23 = v17;
    }

    while (v44 != v22);
    v44 = [obj countByEnumeratingWithState:&v54 objects:v58 count:16];
  }

  while (v44);

  if (v13)
  {
    v16 = 1;
    v12 = queue;
    v11 = v41;
    v14 = v38;
    v13 = v39;
    goto LABEL_21;
  }

  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __107__HDClientAuthorizationOracle_performIfAuthorizedToDeleteObjectsWithTypes_onQueue_usingBlock_errorHandler___block_invoke_2;
  v45[3] = &unk_2786173F0;
  v45[4] = self;
  v46 = obj;
  v17 = v17;
  v47 = v17;
  v14 = v38;
  v49 = v37;
  v48 = v38;
  v35 = _Block_copy(v45);
  v36 = v35;
  v12 = queue;
  if (queue)
  {
    dispatch_async(queue, v35);
  }

  else
  {
    v35[2](v35);
  }

  v11 = v41;
  v13 = v39;

  v33 = v46;
LABEL_25:

  v34 = *MEMORY[0x277D85DE8];
}

uint64_t __107__HDClientAuthorizationOracle_performIfAuthorizedToDeleteObjectsWithTypes_onQueue_usingBlock_errorHandler___block_invoke_2(void *a1)
{
  v22 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1[4] + 8));
  v3 = [WeakRetained daemon];
  v4 = [v3 behavior];
  v5 = [v4 isAppleInternalInstall];

  _HKInitializeLogging();
  v6 = HKLogAuthorization();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
  if (v5)
  {
    if (!v7)
    {
      goto LABEL_5;
    }

    v8 = a1[5];
    v9 = *(a1[4] + 16);
    *buf = 138412546;
    v19 = v9;
    v20 = 2112;
    v21 = v8;
    v10 = "Client %@ is not authorized to delete for data type(s) %@";
    v11 = v6;
    v12 = 22;
  }

  else
  {
    if (!v7)
    {
      goto LABEL_5;
    }

    v15 = *(a1[4] + 16);
    *buf = 138412290;
    v19 = v15;
    v10 = "Client %@ is not authorized to delete for data type(s).";
    v11 = v6;
    v12 = 12;
  }

  _os_log_error_impl(&dword_228986000, v11, OS_LOG_TYPE_ERROR, v10, buf, v12);
LABEL_5:

  if (!a1[6])
  {
    v16 = [MEMORY[0x277CCA890] currentHandler];
    [v16 handleFailureInMethod:a1[8] object:a1[4] file:@"HDClientAuthorizationOracle.m" lineNumber:831 description:{@"Invalid parameter not satisfying: %@", @"error != nil"}];

    v17 = a1[6];
  }

  result = (*(a1[7] + 16))();
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)handleObjectAuthorizationRequestsWithPromptHandler:(id)a3 objectType:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v11 = [WeakRetained authorizationManager];
  [v11 handleObjectAuthorizationRequestsForBundleIdentifier:self->_sourceBundleIdentifier objectType:v9 promptHandler:v10 completion:v8];
}

- (void)enqueueAuthorizationRequestForObjectType:(id)a3 sourceEntity:(id)a4 promptIfNeeded:(BOOL)a5 authorizationNeededHandler:(id)a6 completionHandler:(id)a7
{
  v32 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  _HKInitializeLogging();
  v16 = HKLogAuthorization();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    sourceBundleIdentifier = self->_sourceBundleIdentifier;
    *buf = 138412290;
    v31 = sourceBundleIdentifier;
    _os_log_impl(&dword_228986000, v16, OS_LOG_TYPE_DEFAULT, "Enqueuing per object health concept authorization request for %@", buf, 0xCu);
  }

  queue = self->_queue;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __145__HDClientAuthorizationOracle_enqueueAuthorizationRequestForObjectType_sourceEntity_promptIfNeeded_authorizationNeededHandler_completionHandler___block_invoke;
  v24[3] = &unk_278618D28;
  v24[4] = self;
  v25 = v12;
  v29 = a5;
  v26 = v13;
  v27 = v14;
  v28 = v15;
  v19 = v15;
  v20 = v14;
  v21 = v13;
  v22 = v12;
  dispatch_async(queue, v24);

  v23 = *MEMORY[0x277D85DE8];
}

void __145__HDClientAuthorizationOracle_enqueueAuthorizationRequestForObjectType_sourceEntity_promptIfNeeded_authorizationNeededHandler_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(a1 + 72);
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v6 = v5;
  if (v2)
  {
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __152__HDClientAuthorizationOracle__queue_enqueueAuthorizationRequestForObjectType_sourceEntity_promptIfNeeded_authorizationNeededHandler_completionHandler___block_invoke;
    v16 = &unk_278618D78;
    v17 = v2;
    v18 = v5;
    v7 = v4;
    v8 = v1;
    v9 = _Block_copy(&v13);
    WeakRetained = objc_loadWeakRetained((v2 + 8));
    v11 = [WeakRetained authorizationManager];
    v12 = [v11 enqueueConceptAuthorizationRequestForBundleIdentifier:*(v2 + 16) forObjectType:v8 promptIfNeeded:v3 authorizationNeededHandler:v7 completionHandler:v9];

    if (v12)
    {
      [*(v2 + 40) addObject:v12];
    }
  }
}

void __152__HDClientAuthorizationOracle__queue_enqueueAuthorizationRequestForObjectType_sourceEntity_promptIfNeeded_authorizationNeededHandler_completionHandler___block_invoke(uint64_t a1, void *a2, char a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  v11 = *(v10 + 48);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __152__HDClientAuthorizationOracle__queue_enqueueAuthorizationRequestForObjectType_sourceEntity_promptIfNeeded_authorizationNeededHandler_completionHandler___block_invoke_2;
  block[3] = &unk_278618D50;
  block[4] = v10;
  v15 = v7;
  v18 = a3;
  v16 = v8;
  v17 = v9;
  v12 = v8;
  v13 = v7;
  dispatch_async(v11, block);
}

uint64_t __152__HDClientAuthorizationOracle__queue_enqueueAuthorizationRequestForObjectType_sourceEntity_promptIfNeeded_authorizationNeededHandler_completionHandler___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 40) removeObject:*(a1 + 40)];
  result = *(a1 + 56);
  if (result)
  {
    v3 = *(a1 + 64);
    v4 = *(a1 + 48);
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

- (void)handleHealthConceptAuthorizationRequestsWithPromptHandler:(id)a3 objectType:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v11 = [WeakRetained authorizationManager];
  [v11 handleHealthConceptAuthorizationRequestsForBundleIdentifier:self->_sourceBundleIdentifier objectType:v9 promptHandler:v10 completion:v8];
}

- (void)createRecalibrateEstimatesRequestRecordForSampleType:(id)a3 sourceEntity:(id)a4 effectiveDate:(id)a5 handler:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (!v13)
  {
    v17 = MEMORY[0x277CCA9B8];
    v18 = objc_opt_class();
    v19 = @"Effective date cannot be nil.";
LABEL_14:
    v30 = [v17 hk_errorForInvalidArgument:@"@" class:v18 selector:a2 format:v19];
LABEL_17:
    v31 = v30;
    v14[2](v14, 0, v30);

    goto LABEL_18;
  }

  v15 = [MEMORY[0x277CBEAA8] date];
  v16 = [v13 compare:v15];

  if (v16 == 1)
  {
    [MEMORY[0x277CCA9B8] hk_error:3 format:{@"Effective date (%@) cannot be in the future.", v13}];
    v30 = LABEL_16:;
    goto LABEL_17;
  }

  if (!v11)
  {
    v17 = MEMORY[0x277CCA9B8];
    v18 = objc_opt_class();
    v19 = @"Sample type cannot be nil.";
    goto LABEL_14;
  }

  if (([v11 allowsRecalibrationForEstimates] & 1) == 0)
  {
    [MEMORY[0x277CCA9B8] hk_error:3 format:{@"Estimate recalibration is not supported for %@.", v11}];
    goto LABEL_16;
  }

  if (!self || ([(_HKEntitlements *)self->_entitlements hasEntitlement:*MEMORY[0x277CCB868]]& 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    v21 = [WeakRetained authorizationManager];
    v22 = [MEMORY[0x277CBEB98] setWithObject:v11];
    sourceBundleIdentifier = self->_sourceBundleIdentifier;
    v35 = 0;
    v24 = [v21 authorizationStatusForTypes:v22 bundleIdentifier:sourceBundleIdentifier error:&v35];
    v25 = v35;

    v26 = [v24 objectForKey:v11];
    v27 = v26;
    if (v26)
    {
      if ([v26 integerValue] == 101)
      {

        goto LABEL_12;
      }

      v32 = [MEMORY[0x277CCA9B8] hk_error:4 format:{@"Client %@ is not authorized to read and share %@.", self->_sourceBundleIdentifier, v11}];
      v14[2](v14, 0, v32);
    }

    else
    {
      v14[2](v14, 0, v25);
    }

    goto LABEL_18;
  }

LABEL_12:
  v28 = objc_loadWeakRetained(&self->_profile);
  v29 = [v28 authorizationManager];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __119__HDClientAuthorizationOracle_createRecalibrateEstimatesRequestRecordForSampleType_sourceEntity_effectiveDate_handler___block_invoke;
  v33[3] = &unk_278618DA0;
  v33[4] = self;
  v34 = v14;
  [v29 createRecalibrateEstimatesRequestRecordForSource:v12 sampleType:v11 effectiveDate:v13 handler:v33];

LABEL_18:
}

void __119__HDClientAuthorizationOracle_createRecalibrateEstimatesRequestRecordForSampleType_sourceEntity_effectiveDate_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v8 = a3;
  if (v5)
  {
    v9 = *(a1 + 32);
    v10 = *(v9 + 48);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __119__HDClientAuthorizationOracle_createRecalibrateEstimatesRequestRecordForSampleType_sourceEntity_effectiveDate_handler___block_invoke_2;
    v11[3] = &unk_278613920;
    v11[4] = v9;
    v12 = v5;
    dispatch_async(v10, v11);
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), v5, v8, v6, v7);
}

void __119__HDClientAuthorizationOracle_createRecalibrateEstimatesRequestRecordForSampleType_sourceEntity_effectiveDate_handler___block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 40);
  v2 = [*(a1 + 40) sessionIdentifier];
  [v1 addObject:v2];
}

- (void)enqueueAuthorizationRequestToWriteTypes:(id)a3 readTypes:(id)a4 authorizationNeededHandler:(id)a5 requestCompletionHandler:(id)a6
{
  v53 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (!v14)
  {
    v43 = [MEMORY[0x277CCA890] currentHandler];
    [v43 handleFailureInMethod:a2 object:self file:@"HDClientAuthorizationOracle.m" lineNumber:993 description:{@"Invalid parameter not satisfying: %@", @"requestCompletionHandler != NULL"}];
  }

  if (![v11 count] && !objc_msgSend(v12, "count"))
  {
    v22 = MEMORY[0x277CCA9B8];
    v23 = objc_opt_class();
    v24 = @"Must specify types to share or read";
    goto LABEL_37;
  }

  if ([v11 count] && (objc_msgSend(MEMORY[0x277CCD720], "_allowAuthorizationForSharingWithTypes:entitlements:disallowedTypes:", v11, self->_entitlements, 0) & 1) == 0)
  {
    v22 = MEMORY[0x277CCA9B8];
    v23 = objc_opt_class();
    v24 = @"Invalid types for sharing";
LABEL_37:
    v41 = [v22 hk_errorForInvalidArgument:@"@" class:v23 selector:a2 format:v24];
    v14[2](v14, 0, v41);

    goto LABEL_38;
  }

  if ([v12 count] && (objc_msgSend(MEMORY[0x277CCD720], "_allowAuthorizationForReadingWithTypes:entitlements:disallowedTypes:", v12, self->_entitlements, 0) & 1) == 0)
  {
    v22 = MEMORY[0x277CCA9B8];
    v23 = objc_opt_class();
    v24 = @"Invalid types for reading";
    goto LABEL_37;
  }

  v50 = 0;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v16 = [WeakRetained profileExtensionsConformingToProtocol:&unk_283D71148];
  v17 = [v16 firstObject];

  if (v17)
  {
    v49 = 0;
    v18 = [v17 deviceConfigurationSupportsHealthRecords:&v50 error:&v49];
    v19 = v49;
    v20 = v19;
    if ((v18 & 1) == 0 && v19)
    {
      _HKInitializeLogging();
      v21 = HKLogAuthorization();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v52 = v20;
        _os_log_error_impl(&dword_228986000, v21, OS_LOG_TYPE_ERROR, "Failed to determine Health Records feature availability with error: %{public}@", buf, 0xCu);
      }
    }

    if (v50)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v25 = objc_loadWeakRetained(&self->_profile);
    v26 = [v25 daemon];
    v27 = [v26 behavior];
    v28 = [v27 isAppleWatch];

    if ((v28 & 1) == 0)
    {
      _HKInitializeLogging();
      v29 = HKLogAuthorization();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_228986000, v29, OS_LOG_TYPE_ERROR, "Unable to get Health Records plugin", buf, 2u);
      }
    }
  }

  _HKInitializeLogging();
  v30 = HKLogAuthorization();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_228986000, v30, OS_LOG_TYPE_DEFAULT, "CHR is not supported, removing clinical types from the request", buf, 2u);
  }

  v31 = MEMORY[0x277CBEB98];
  v32 = [MEMORY[0x277CCD118] allTypes];
  v33 = [v31 setWithArray:v32];
  v34 = [v12 hk_minus:v33];

  v12 = v34;
LABEL_26:
  v35 = [v11 count];
  if (v35 + [v12 count])
  {
    _HKInitializeLogging();
    v38 = HKLogAuthorization();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      sourceBundleIdentifier = self->_sourceBundleIdentifier;
      *buf = 138412290;
      v52 = sourceBundleIdentifier;
      _os_log_impl(&dword_228986000, v38, OS_LOG_TYPE_DEFAULT, "Enqueuing authorization request for %@", buf, 0xCu);
    }

    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __133__HDClientAuthorizationOracle_enqueueAuthorizationRequestToWriteTypes_readTypes_authorizationNeededHandler_requestCompletionHandler___block_invoke_418;
    block[3] = &unk_278618DC8;
    block[4] = self;
    v45 = v11;
    v46 = v12;
    v47 = v13;
    v48 = v14;
    dispatch_async(queue, block);
  }

  else
  {
    if (v13)
    {
      v36 = [MEMORY[0x277CCAD78] UUID];
      (*(v13 + 2))(v13, v36, 0, 0, &__block_literal_global_417);
    }

    _HKInitializeLogging();
    v37 = HKLogAuthorization();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_228986000, v37, OS_LOG_TYPE_DEFAULT, "There are zero types to write and read, not creating an authorization request", buf, 2u);
    }

    v14[2](v14, 1, 0);
  }

LABEL_38:
  v42 = *MEMORY[0x277D85DE8];
}

void __133__HDClientAuthorizationOracle_enqueueAuthorizationRequestToWriteTypes_readTypes_authorizationNeededHandler_requestCompletionHandler___block_invoke_418(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(v1 + 16);
  v4 = *(a1 + 48);
  v5 = *(a1 + 64);
  v6 = *(a1 + 56);
  v7 = v5;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __158__HDClientAuthorizationOracle__queue_enqueueAuthorizationRequestForBundleIdentifier_writeTypes_readTypes_authorizationNeededHandler_requestCompletionHandler___block_invoke;
  aBlock[3] = &unk_278618D78;
  aBlock[4] = v1;
  v16 = v7;
  v20 = v16;
  v8 = v4;
  v9 = v2;
  v10 = v3;
  v11 = _Block_copy(aBlock);
  if (v6)
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __158__HDClientAuthorizationOracle__queue_enqueueAuthorizationRequestForBundleIdentifier_writeTypes_readTypes_authorizationNeededHandler_requestCompletionHandler___block_invoke_3;
    v17[3] = &unk_278618D78;
    v17[4] = v1;
    v18 = v6;
    v12 = _Block_copy(v17);
  }

  else
  {
    v12 = 0;
  }

  WeakRetained = objc_loadWeakRetained((v1 + 8));
  v14 = [WeakRetained authorizationManager];
  v15 = [v14 enqueueAuthorizationRequestForBundleIdentifier:v10 writeTypes:v9 readTypes:v8 authorizationNeededHandler:v12 completion:v11];

  if (v15)
  {
    [*(v1 + 40) addObject:v15];
  }
}

void __158__HDClientAuthorizationOracle__queue_enqueueAuthorizationRequestForBundleIdentifier_writeTypes_readTypes_authorizationNeededHandler_requestCompletionHandler___block_invoke(uint64_t a1, void *a2, char a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  v11 = *(v10 + 48);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __158__HDClientAuthorizationOracle__queue_enqueueAuthorizationRequestForBundleIdentifier_writeTypes_readTypes_authorizationNeededHandler_requestCompletionHandler___block_invoke_2;
  block[3] = &unk_278618D50;
  block[4] = v10;
  v15 = v7;
  v18 = a3;
  v16 = v8;
  v17 = v9;
  v12 = v8;
  v13 = v7;
  dispatch_async(v11, block);
}

uint64_t __158__HDClientAuthorizationOracle__queue_enqueueAuthorizationRequestForBundleIdentifier_writeTypes_readTypes_authorizationNeededHandler_requestCompletionHandler___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 40) removeObject:*(a1 + 40)];
  result = *(a1 + 56);
  if (result)
  {
    v3 = *(a1 + 64);
    v4 = *(a1 + 48);
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

void __158__HDClientAuthorizationOracle__queue_enqueueAuthorizationRequestForBundleIdentifier_writeTypes_readTypes_authorizationNeededHandler_requestCompletionHandler___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v10 = [WeakRetained authorizationManager];
  objc_initWeak(&location, v10);

  v11 = *(a1 + 40);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __158__HDClientAuthorizationOracle__queue_enqueueAuthorizationRequestForBundleIdentifier_writeTypes_readTypes_authorizationNeededHandler_requestCompletionHandler___block_invoke_4;
  v13[3] = &unk_278617620;
  objc_copyWeak(&v15, &location);
  v12 = v7;
  v14 = v12;
  (*(v11 + 16))(v11, v12, a3, v8, v13);

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __158__HDClientAuthorizationOracle__queue_enqueueAuthorizationRequestForBundleIdentifier_writeTypes_readTypes_authorizationNeededHandler_requestCompletionHandler___block_invoke_4(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5[0] = *(a1 + 32);
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  [WeakRetained cancelAuthorizationRequestsWithIdentifiers:v3];

  v4 = *MEMORY[0x277D85DE8];
}

- (void)handleAuthorizationRequestsForBundleIdentifier:(id)a3 promptHandler:(id)a4 requestCompletionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  queue = self->_queue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __117__HDClientAuthorizationOracle_handleAuthorizationRequestsForBundleIdentifier_promptHandler_requestCompletionHandler___block_invoke;
  v15[3] = &unk_2786173A0;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(queue, v15);
}

void __117__HDClientAuthorizationOracle_handleAuthorizationRequestsForBundleIdentifier_promptHandler_requestCompletionHandler___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 8));
  v2 = [WeakRetained authorizationManager];
  [v2 handleAuthorizationRequestsForBundleIdentifier:a1[5] promptHandler:a1[6] completion:a1[7]];
}

- (void)beginAuthorizationRequestDelegateTransactionWithSessionIdentifier:(id)a3 clientProcess:(id)a4 completion:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v11)
  {
    v16 = [MEMORY[0x277CCA890] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"HDClientAuthorizationOracle.m" lineNumber:1140 description:{@"Invalid parameter not satisfying: %@", @"completion != NULL"}];
  }

  v12 = *MEMORY[0x277CCB888];
  v20 = 0;
  v13 = [v10 hasRequiredEntitlement:v12 error:&v20];
  v14 = v20;
  if (v13)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __134__HDClientAuthorizationOracle_Privileged__beginAuthorizationRequestDelegateTransactionWithSessionIdentifier_clientProcess_completion___block_invoke;
    block[3] = &unk_278614160;
    block[4] = self;
    v18 = v9;
    v19 = v11;
    dispatch_async(queue, block);
  }

  else
  {
    (*(v11 + 2))(v11, 0, v14);
  }
}

void __134__HDClientAuthorizationOracle_Privileged__beginAuthorizationRequestDelegateTransactionWithSessionIdentifier_clientProcess_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  v3 = *(a1 + 40);
  v4 = v2;
  v5 = v4;
  if (v1)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __127__HDClientAuthorizationOracle_Privileged___queue_beginAuthorizationRequestDelegateTransactionWithSessionIdentifier_completion___block_invoke;
    aBlock[3] = &unk_278618DF0;
    v17 = v4;
    v5 = _Block_copy(aBlock);
    v6 = atomic_load((v1 + 64));
    if (v6)
    {
      v7 = MEMORY[0x277CCA9B8];
      v8 = objc_opt_class();
      v9 = @"Authorization server invalidated";
    }

    else if (*(v1 + 56))
    {
      v7 = MEMORY[0x277CCA9B8];
      v8 = objc_opt_class();
      v9 = @"There is already an open transaction";
    }

    else
    {
      if (v3)
      {
        WeakRetained = objc_loadWeakRetained((v1 + 8));
        v12 = [WeakRetained authorizationManager];
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __127__HDClientAuthorizationOracle_Privileged___queue_beginAuthorizationRequestDelegateTransactionWithSessionIdentifier_completion___block_invoke_498;
        v13[3] = &unk_278618E40;
        v13[4] = v1;
        v14 = v3;
        v15 = v5;
        [v12 beginAuthorizationDelegateTransactionWithSessionIdentifier:v14 completion:v13];

        goto LABEL_7;
      }

      v7 = MEMORY[0x277CCA9B8];
      v8 = objc_opt_class();
      v9 = @"sessionIdentifier may not be nil";
    }

    v10 = [v7 hk_errorForInvalidArgument:@"@" class:v8 selector:sel__queue_beginAuthorizationRequestDelegateTransactionWithSessionIdentifier_completion_ format:v9];
    (*(v5 + 2))(v5, 0, v10);

LABEL_7:
  }
}

void __127__HDClientAuthorizationOracle_Privileged___queue_beginAuthorizationRequestDelegateTransactionWithSessionIdentifier_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    _HKInitializeLogging();
    v7 = HKLogAuthorization();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = 138543362;
      v10 = v6;
      _os_log_error_impl(&dword_228986000, v7, OS_LOG_TYPE_ERROR, "Could not begin transaction: %{public}@", &v9, 0xCu);
    }
  }

  (*(*(a1 + 32) + 16))();

  v8 = *MEMORY[0x277D85DE8];
}

void __127__HDClientAuthorizationOracle_Privileged___queue_beginAuthorizationRequestDelegateTransactionWithSessionIdentifier_completion___block_invoke_498(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(v8 + 48);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __127__HDClientAuthorizationOracle_Privileged___queue_beginAuthorizationRequestDelegateTransactionWithSessionIdentifier_completion___block_invoke_2;
  block[3] = &unk_278618E18;
  v14 = v5;
  v15 = v8;
  v16 = v7;
  v10 = *(a1 + 48);
  v17 = v6;
  v18 = v10;
  v11 = v6;
  v12 = v5;
  dispatch_async(v9, block);
}

uint64_t __127__HDClientAuthorizationOracle_Privileged___queue_beginAuthorizationRequestDelegateTransactionWithSessionIdentifier_completion___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    objc_storeStrong((*(a1 + 40) + 56), *(a1 + 48));
    _HKInitializeLogging();
    v2 = HKLogAuthorization();
    v3 = os_log_type_enabled(v2, OS_LOG_TYPE_INFO);

    if (v3)
    {
      v4 = HKLogAuthorization();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = *(a1 + 48);
        v10 = 138543362;
        v11 = v5;
        _os_log_impl(&dword_228986000, v4, OS_LOG_TYPE_INFO, "Starting transaction %{public}@", &v10, 0xCu);
      }
    }
  }

  v6 = *(a1 + 32);
  v7 = *(a1 + 56);
  result = (*(*(a1 + 64) + 16))();
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)endAuthorizationRequestDelegateTransactionWithSessionIdentifier:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = atomic_load(&self->_invalidated);
  if ((v8 & 1) == 0)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __113__HDClientAuthorizationOracle_Privileged__endAuthorizationRequestDelegateTransactionWithSessionIdentifier_error___block_invoke;
    block[3] = &unk_278613830;
    block[4] = self;
    v11 = v6;
    v12 = v7;
    dispatch_async(queue, block);
  }
}

void __113__HDClientAuthorizationOracle_Privileged__endAuthorizationRequestDelegateTransactionWithSessionIdentifier_error___block_invoke(void *a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = a1[5];
  v3 = *(a1[4] + 56);
  if (v3 == v2 || v2 && [v3 isEqual:?])
  {
    _HKInitializeLogging();
    v4 = HKLogAuthorization();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);

    if (v5)
    {
      v6 = HKLogAuthorization();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = a1[5];
        v15 = 138543362;
        v16 = v7;
        _os_log_impl(&dword_228986000, v6, OS_LOG_TYPE_INFO, "Ending transaction %{public}@", &v15, 0xCu);
      }
    }

    WeakRetained = objc_loadWeakRetained((a1[4] + 8));
    v9 = [WeakRetained authorizationManager];
    [v9 endAuthorizationDelegateTransactionWithSessionIdentifier:*(a1[4] + 56) error:a1[6]];

    v10 = a1[4];
    v11 = *(v10 + 56);
    *(v10 + 56) = 0;
  }

  else
  {
    _HKInitializeLogging();
    v11 = HKLogAuthorization();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = a1[5];
      v14 = *(a1[4] + 56);
      v15 = 138543618;
      v16 = v13;
      v17 = 2114;
      v18 = v14;
      _os_log_error_impl(&dword_228986000, v11, OS_LOG_TYPE_ERROR, "No active transaction to end (Ending %{public}@, but active is %{public}@)", &v15, 0x16u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)updateDefaultAuthorizationStatusesForSource:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = [(_HKEntitlements *)self->_entitlements typesForReadAuthorizationOverride];
  v7 = [(_HKEntitlements *)self->_entitlements typesForWriteAuthorizationOverride];
  v8 = [v6 setByAddingObjectsFromSet:v7];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __98__HDClientAuthorizationOracle_Privileged__updateDefaultAuthorizationStatusesForSource_completion___block_invoke;
  aBlock[3] = &unk_2786130D8;
  v28 = v5;
  v9 = _Block_copy(aBlock);
  if ([v8 count])
  {
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    v11 = [WeakRetained authorizationManager];
    sourceBundleIdentifier = self->_sourceBundleIdentifier;
    v26 = 0;
    v13 = [v11 authorizationStatusForTypes:v8 bundleIdentifier:sourceBundleIdentifier error:&v26];
    v14 = v26;

    if (v13)
    {
      v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __98__HDClientAuthorizationOracle_Privileged__updateDefaultAuthorizationStatusesForSource_completion___block_invoke_3;
      v22[3] = &unk_278618E68;
      v16 = v6;
      v23 = v16;
      v17 = v7;
      v24 = v17;
      v18 = v15;
      v25 = v18;
      [v13 enumerateKeysAndObjectsUsingBlock:v22];
      if ([v18 count])
      {
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __98__HDClientAuthorizationOracle_Privileged__updateDefaultAuthorizationStatusesForSource_completion___block_invoke_4;
        v19[3] = &unk_278613150;
        v19[4] = self;
        v20 = v18;
        v21 = v9;
        [(HDClientAuthorizationOracle *)self enqueueAuthorizationRequestToWriteTypes:v17 readTypes:v16 authorizationNeededHandler:0 requestCompletionHandler:v19];
        [(HDClientAuthorizationOracle *)self handleAuthorizationRequestsWithPromptHandler:0 requestCompletionHandler:0];
      }

      else
      {
        (*(v9 + 2))(v9, 1, 0);
      }
    }

    else
    {
      (*(v9 + 2))(v9, 0, v14);
    }
  }

  else
  {
    (*(v9 + 2))(v9, 1, 0);
  }
}

void __98__HDClientAuthorizationOracle_Privileged__updateDefaultAuthorizationStatusesForSource_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v6 = *(a1 + 32);
  v5 = v4;
  HKDispatchAsyncOnGlobalConcurrentQueue();
}

uint64_t __98__HDClientAuthorizationOracle_Privileged__updateDefaultAuthorizationStatusesForSource_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 48), *(a1 + 32));
  }

  return result;
}

void __98__HDClientAuthorizationOracle_Privileged__updateDefaultAuthorizationStatusesForSource_completion___block_invoke_3(id *a1, void *a2, void *a3)
{
  v11 = a2;
  if ([a3 integerValue] == 100)
  {
    v5 = [a1[4] containsObject:v11];
    v6 = [a1[5] containsObject:v11];
    v7 = 103;
    if ((v5 & v6) != 0)
    {
      v7 = 101;
    }

    v8 = 104;
    if (v6)
    {
      v8 = 102;
    }

    if (v5)
    {
      v9 = v7;
    }

    else
    {
      v9 = v8;
    }

    v10 = [MEMORY[0x277CCABB0] numberWithInteger:v9];
    [a1[6] setObject:v10 forKeyedSubscript:v11];
  }
}

void __98__HDClientAuthorizationOracle_Privileged__updateDefaultAuthorizationStatusesForSource_completion___block_invoke_4(void *a1, int a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1[4] + 8));
    v3 = [WeakRetained authorizationManager];
    [v3 setAuthorizationStatuses:a1[5] authorizationModes:MEMORY[0x277CBEC10] forBundleIdentifier:*(a1[4] + 16) options:2 completion:a1[6]];
  }

  else
  {
    v4 = a1[6];
    v5 = *(a1[6] + 16);

    v5();
  }
}

@end