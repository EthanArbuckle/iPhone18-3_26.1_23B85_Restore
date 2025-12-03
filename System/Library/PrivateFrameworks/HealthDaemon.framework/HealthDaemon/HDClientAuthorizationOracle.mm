@interface HDClientAuthorizationOracle
- (BOOL)clientHasAuthorizationForAllTypes;
- (BOOL)hasAuthorizationBypassToReadType:(id)type;
- (BOOL)isAuthorizationStatusDeterminedForTypes:(id)types error:(id *)error;
- (BOOL)isAuthorizedToReadObject:(id)object error:(id *)error;
- (BOOL)performReadAuthorizationTransactionWithError:(id *)error handler:(id)handler;
- (HDClientAuthorizationOracle)init;
- (HDClientAuthorizationOracle)initWithSourceBundleIdentifier:(id)identifier entitlements:(id)entitlements profile:(id)profile;
- (id)_unrestrictedAuthorizationForTypes:(uint64_t)types;
- (id)additionalAuthorizationPredicateForObjectType:(id)type error:(id *)error;
- (id)authorizationStatusRecordForType:(id)type error:(id *)error;
- (id)authorizationStatusRecordsForTypes:(id)types error:(id *)error;
- (id)filterForClientUserAnnotatedMedications:(id)medications error:(id *)error;
- (id)filteredObjectsForReadAuthorization:(id)authorization anchor:(id)anchor error:(id *)error;
- (void)authorizationStatusForType:(id)type completion:(id)completion;
- (void)beginAuthorizationRequestDelegateTransactionWithSessionIdentifier:(id)identifier clientProcess:(id)process completion:(id)completion;
- (void)createRecalibrateEstimatesRequestRecordForSampleType:(id)type sourceEntity:(id)entity effectiveDate:(id)date handler:(id)handler;
- (void)endAuthorizationRequestDelegateTransactionWithSessionIdentifier:(id)identifier error:(id)error;
- (void)enqueueAuthorizationRequestForObjectType:(id)type sourceEntity:(id)entity promptIfNeeded:(BOOL)needed authorizationNeededHandler:(id)handler completionHandler:(id)completionHandler;
- (void)enqueueAuthorizationRequestToWriteTypes:(id)types readTypes:(id)readTypes authorizationNeededHandler:(id)handler requestCompletionHandler:(id)completionHandler;
- (void)handleAuthorizationRequestsForBundleIdentifier:(id)identifier promptHandler:(id)handler requestCompletionHandler:(id)completionHandler;
- (void)handleHealthConceptAuthorizationRequestsWithPromptHandler:(id)handler objectType:(id)type completion:(id)completion;
- (void)handleObjectAuthorizationRequestsWithPromptHandler:(id)handler objectType:(id)type completion:(id)completion;
- (void)invalidate;
- (void)performIfAuthorizedToDeleteObjects:(id)objects onQueue:(id)queue usingBlock:(id)block errorHandler:(id)handler;
- (void)performIfAuthorizedToDeleteObjectsWithTypes:(id)types onQueue:(id)queue usingBlock:(id)block errorHandler:(id)handler;
- (void)performIfAuthorizedToReadObjects:(id)objects onQueue:(id)queue usingBlock:(id)block errorHandler:(id)handler;
- (void)performIfAuthorizedToReadTypes:(id)types onQueue:(id)queue usingBlock:(id)block errorHandler:(id)handler;
- (void)performIfAuthorizedToSaveObjects:(id)objects onQueue:(id)queue usingBlock:(id)block errorHandler:(id)handler;
- (void)performIfAuthorizedToSaveObjectsWithTypes:(id)types onQueue:(id)queue usingBlock:(id)block errorHandler:(id)handler;
- (void)updateDefaultAuthorizationStatusesForSource:(id)source completion:(id)completion;
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

- (HDClientAuthorizationOracle)initWithSourceBundleIdentifier:(id)identifier entitlements:(id)entitlements profile:(id)profile
{
  identifierCopy = identifier;
  entitlementsCopy = entitlements;
  profileCopy = profile;
  v20.receiver = self;
  v20.super_class = HDClientAuthorizationOracle;
  v11 = [(HDClientAuthorizationOracle *)&v20 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_profile, profileCopy);
    v13 = [identifierCopy copy];
    sourceBundleIdentifier = v12->_sourceBundleIdentifier;
    v12->_sourceBundleIdentifier = v13;

    objc_storeStrong(&v12->_entitlements, entitlements);
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
          selfCopy = self;
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

- (id)filteredObjectsForReadAuthorization:(id)authorization anchor:(id)anchor error:(id *)error
{
  v29 = *MEMORY[0x277D85DE8];
  authorizationCopy = authorization;
  anchorCopy = anchor;
  clientHasAuthorizationForAllTypes = [(HDClientAuthorizationOracle *)self clientHasAuthorizationForAllTypes];
  if (self)
  {
    if (([(_HKEntitlements *)self->_entitlements hasEntitlement:*MEMORY[0x277CCB868]]| clientHasAuthorizationForAllTypes))
    {
LABEL_3:
      v11 = authorizationCopy;
      goto LABEL_9;
    }
  }

  else if (clientHasAuthorizationForAllTypes)
  {
    goto LABEL_3;
  }

  WeakRetained = objc_loadWeakRetained(&self->_profile);
  authorizationManager = [WeakRetained authorizationManager];
  v11 = [authorizationManager filteredAuthorizedObjectsForClient:authorizationCopy anchor:anchorCopy bundleIdentifier:self->_sourceBundleIdentifier clientEntitlements:self->_entitlements error:error];

  if (*error)
  {
    _HKInitializeLogging();
    v14 = HKLogAuthorization();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v17 = [authorizationCopy count];
      firstObject = [authorizationCopy firstObject];
      hk_objectType = [firstObject hk_objectType];
      v20 = *error;
      v21 = 138544130;
      selfCopy = self;
      v23 = 2048;
      v24 = v17;
      v25 = 2112;
      v26 = hk_objectType;
      v27 = 2114;
      v28 = v20;
      _os_log_error_impl(&dword_228986000, v14, OS_LOG_TYPE_ERROR, "%{public}@: Failed to find authorization status record for %ld objects of type %@ with an error: %{public}@", &v21, 0x2Au);
    }
  }

LABEL_9:

  v15 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)filterForClientUserAnnotatedMedications:(id)medications error:(id *)error
{
  v22 = *MEMORY[0x277D85DE8];
  medicationsCopy = medications;
  clientHasAuthorizationForAllTypes = [(HDClientAuthorizationOracle *)self clientHasAuthorizationForAllTypes];
  if (self)
  {
    if (([(_HKEntitlements *)self->_entitlements hasEntitlement:*MEMORY[0x277CCB868]]| clientHasAuthorizationForAllTypes))
    {
LABEL_3:
      v8 = medicationsCopy;
      goto LABEL_11;
    }
  }

  else if (clientHasAuthorizationForAllTypes)
  {
    goto LABEL_3;
  }

  WeakRetained = objc_loadWeakRetained(&self->_profile);
  authorizationManager = [WeakRetained authorizationManager];
  v11 = [authorizationManager filterForClientUserAnnotatedMedications:medicationsCopy bundleIdentifier:self->_sourceBundleIdentifier clientEntitlements:self->_entitlements error:error];

  if (*error)
  {
    _HKInitializeLogging();
    v12 = HKLogAuthorization();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v15 = *error;
      v16 = 138543874;
      selfCopy = self;
      v18 = 2112;
      v19 = medicationsCopy;
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

- (void)authorizationStatusForType:(id)type completion:(id)completion
{
  typeCopy = type;
  completionCopy = completion;
  v8 = [MEMORY[0x277CBEB98] setWithObject:typeCopy];
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __69__HDClientAuthorizationOracle_authorizationStatusForType_completion___block_invoke;
  v18 = &unk_278618C68;
  selfCopy = self;
  v21 = completionCopy;
  v19 = typeCopy;
  v9 = typeCopy;
  v10 = completionCopy;
  v11 = v8;
  v12 = &v15;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    database = [WeakRetained database];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __71__HDClientAuthorizationOracle__authorizationStatusForTypes_completion___block_invoke;
    v22[3] = &unk_278614160;
    v22[4] = self;
    v23 = v11;
    v24 = v12;
    [database performWhenDataProtectedByFirstUnlockIsAvailableOnQueue:0 block:v22];
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

- (BOOL)performReadAuthorizationTransactionWithError:(id *)error handler:(id)handler
{
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  database = [WeakRetained database];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __84__HDClientAuthorizationOracle_performReadAuthorizationTransactionWithError_handler___block_invoke;
  v11[3] = &unk_278618368;
  v11[4] = self;
  v12 = handlerCopy;
  v9 = handlerCopy;
  LOBYTE(error) = [(HDHealthEntity *)HDAuthorizationEntity performReadTransactionWithHealthDatabase:database error:error block:v11];

  return error;
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

- (id)additionalAuthorizationPredicateForObjectType:(id)type error:(id *)error
{
  v4 = [(HDClientAuthorizationOracle *)self authorizationStatusRecordForType:type error:error];
  v5 = v4;
  if (v4)
  {
    authorizationPredicate = [v4 authorizationPredicate];
  }

  else
  {
    authorizationPredicate = 0;
  }

  return authorizationPredicate;
}

- (id)authorizationStatusRecordForType:(id)type error:(id *)error
{
  typeCopy = type;
  if (!typeCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDClientAuthorizationOracle.m" lineNumber:254 description:{@"Invalid parameter not satisfying: %@", @"type != nil"}];
  }

  v8 = [MEMORY[0x277CBEB98] setWithObject:typeCopy];
  v9 = [(HDClientAuthorizationOracle *)self authorizationStatusRecordsForTypes:v8 error:error];

  v10 = [v9 objectForKeyedSubscript:typeCopy];

  return v10;
}

- (id)authorizationStatusRecordsForTypes:(id)types error:(id *)error
{
  v32 = *MEMORY[0x277D85DE8];
  typesCopy = types;
  v8 = typesCopy;
  if (!typesCopy || ![typesCopy count])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDClientAuthorizationOracle.m" lineNumber:262 description:{@"Invalid parameter not satisfying: %@", @"types != nil && types.count > 0"}];
  }

  clientHasAuthorizationForAllTypes = [(HDClientAuthorizationOracle *)self clientHasAuthorizationForAllTypes];
  if (self)
  {
    if (([(_HKEntitlements *)self->_entitlements hasEntitlement:*MEMORY[0x277CCB868]]| clientHasAuthorizationForAllTypes))
    {
LABEL_18:
      v13 = [(HDClientAuthorizationOracle *)self _unrestrictedAuthorizationForTypes:v8];
      goto LABEL_19;
    }
  }

  else if (clientHasAuthorizationForAllTypes)
  {
    goto LABEL_18;
  }

  if (([v8 hk_containsObjectPassingTest:&__block_literal_global_43] & 1) == 0)
  {
    goto LABEL_18;
  }

  sourceBundleIdentifier = self->_sourceBundleIdentifier;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v12 = [HDAuthorizationEntity readAuthorizationStatusesByTypeForBundleIdentifier:sourceBundleIdentifier types:v8 profile:WeakRetained error:error];
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

- (id)_unrestrictedAuthorizationForTypes:(uint64_t)types
{
  if (types)
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

- (BOOL)hasAuthorizationBypassToReadType:(id)type
{
  typeCopy = type;
  if ([(HDClientAuthorizationOracle *)self clientHasAuthorizationForAllTypes]|| self && ([(_HKEntitlements *)self->_entitlements hasEntitlement:*MEMORY[0x277CCB868]]& 1) != 0)
  {
    v5 = 1;
  }

  else
  {
    entitlements = self->_entitlements;
    v7 = *MEMORY[0x277CCCCE0];
    identifier = [typeCopy identifier];
    v5 = [(_HKEntitlements *)entitlements arrayEntitlement:v7 containsString:identifier];
  }

  return v5;
}

- (BOOL)isAuthorizedToReadObject:(id)object error:(id *)error
{
  objectCopy = object;
  hd_sampleType = [objectCopy hd_sampleType];
  if (!hd_sampleType || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    [MEMORY[0x277CCA9B8] hk_assignError:error code:1301 format:{@"Object %@ is not a sample", objectCopy}];
    LOBYTE(self) = 0;
    goto LABEL_6;
  }

  hd_sampleType2 = [objectCopy hd_sampleType];
  v9 = [(HDClientAuthorizationOracle *)self hasAuthorizationBypassToReadType:hd_sampleType2];

  if (!v9)
  {
    v32 = 0;
    v11 = [(HDClientAuthorizationOracle *)self authorizationStatusRecordForType:hd_sampleType error:&v32];
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
        v15 = [MEMORY[0x277CCA9B8] hk_error:5 format:{@"Failed to fetch read authorization status for object: %@", objectCopy}];
        if (!v15)
        {
          v13 = 0;
          LOBYTE(self) = 0;
          goto LABEL_22;
        }
      }

      if (error)
      {
        v29 = v15;
        *error = v15;
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

    v14 = objectCopy;
    v15 = v14;
    v30 = v11;
    if (!self)
    {

      v31 = v13;
      v28 = v13;
      goto LABEL_19;
    }

    v16 = v11;
    canRead = [v16 canRead];
    restrictedBundleIdentifier = [v16 restrictedBundleIdentifier];

    if (restrictedBundleIdentifier)
    {
      _source = [v15 _source];
      bundleIdentifier = [_source bundleIdentifier];
      v21 = [bundleIdentifier isEqualToString:restrictedBundleIdentifier];

      if ((v21 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    else if (!canRead)
    {
LABEL_18:

      v31 = v13;
      v22 = v15;
      WeakRetained = objc_loadWeakRetained(&self->_profile);
      authorizationManager = [WeakRetained authorizationManager];
      sourceBundleIdentifier = self->_sourceBundleIdentifier;
      entitlements = self->_entitlements;
      self = objc_loadWeakRetained(&self->_profile);
      v27 = [authorizationManager isClientAuthorizedToReadObject:v22 sourceBundleIdentifier:sourceBundleIdentifier clientEntitlements:entitlements profile:self error:&v31];

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

- (BOOL)isAuthorizationStatusDeterminedForTypes:(id)types error:(id *)error
{
  v44 = *MEMORY[0x277D85DE8];
  typesCopy = types;
  clientHasAuthorizationForAllTypes = [(HDClientAuthorizationOracle *)self clientHasAuthorizationForAllTypes];
  if (self)
  {
    if (([(_HKEntitlements *)self->_entitlements hasEntitlement:*MEMORY[0x277CCB868]]| clientHasAuthorizationForAllTypes))
    {
LABEL_3:
      v8 = 1;
      goto LABEL_35;
    }
  }

  else if (clientHasAuthorizationForAllTypes)
  {
    goto LABEL_3;
  }

  WeakRetained = objc_loadWeakRetained(&self->_profile);
  authorizationManager = [WeakRetained authorizationManager];
  v11 = [authorizationManager authorizationStatusForTypes:typesCopy bundleIdentifier:self->_sourceBundleIdentifier error:error];
  v12 = [v11 mutableCopy];

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v32 = typesCopy;
  v13 = typesCopy;
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

      selfCopy = self;
      entitlements = self->_entitlements;
      identifier = [v18 identifier];
      LOBYTE(entitlements) = [(_HKEntitlements *)entitlements arrayEntitlement:v33 containsString:identifier];

      if (entitlements)
      {
        v19 = &unk_283CB0918;
        self = selfCopy;
        goto LABEL_13;
      }

      v23 = [v12 objectForKeyedSubscript:v18];

      self = selfCopy;
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
    allValues = [v12 allValues];
    v26 = [allValues countByEnumeratingWithState:&v34 objects:v42 count:16];
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
            objc_enumerationMutation(allValues);
          }

          if (([*(*(&v34 + 1) + 8 * i) integerValue] - 101) > 3)
          {
            v8 = 0;
            goto LABEL_32;
          }
        }

        v27 = [allValues countByEnumeratingWithState:&v34 objects:v42 count:16];
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

  typesCopy = v32;

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

- (void)performIfAuthorizedToReadObjects:(id)objects onQueue:(id)queue usingBlock:(id)block errorHandler:(id)handler
{
  v61 = *MEMORY[0x277D85DE8];
  objectsCopy = objects;
  queueCopy = queue;
  blockCopy = block;
  handlerCopy = handler;
  if ([objectsCopy count])
  {
    if (blockCopy)
    {
      goto LABEL_3;
    }

LABEL_30:
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDClientAuthorizationOracle.m" lineNumber:472 description:{@"Invalid parameter not satisfying: %@", @"block != NULL"}];

    if (handlerCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_31;
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"HDClientAuthorizationOracle.m" lineNumber:471 description:{@"Invalid parameter not satisfying: %@", @"[objects count] > 0"}];

  if (!blockCopy)
  {
    goto LABEL_30;
  }

LABEL_3:
  if (handlerCopy)
  {
    goto LABEL_4;
  }

LABEL_31:
  currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"HDClientAuthorizationOracle.m" lineNumber:473 description:{@"Invalid parameter not satisfying: %@", @"errorHandler != NULL"}];

LABEL_4:
  clientHasAuthorizationForAllTypes = [(HDClientAuthorizationOracle *)self clientHasAuthorizationForAllTypes];
  array = [MEMORY[0x277CBEB18] array];
  if (self)
  {
    if (([(_HKEntitlements *)self->_entitlements hasEntitlement:*MEMORY[0x277CCB868]]| clientHasAuthorizationForAllTypes))
    {
LABEL_19:
      v19 = 0;
      goto LABEL_20;
    }
  }

  else if (clientHasAuthorizationForAllTypes)
  {
    goto LABEL_19;
  }

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v16 = objectsCopy;
  v17 = [v16 countByEnumeratingWithState:&v56 objects:v60 count:16];
  if (!v17)
  {

    goto LABEL_19;
  }

  v18 = v17;
  v38 = a2;
  v39 = handlerCopy;
  v40 = blockCopy;
  v41 = queueCopy;
  v42 = objectsCopy;
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
      authorizationManager = [WeakRetained authorizationManager];
      sourceBundleIdentifier = self->_sourceBundleIdentifier;
      entitlements = self->_entitlements;
      v27 = objc_loadWeakRetained(&self->_profile);
      v55 = v21;
      v28 = [authorizationManager isClientAuthorizedToReadObject:v22 sourceBundleIdentifier:sourceBundleIdentifier clientEntitlements:entitlements profile:v27 error:&v55];
      v19 = v55;

      if (v28 == 1)
      {
        [array addObject:v22];
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
    queueCopy = v41;
    objectsCopy = v42;
    handlerCopy = v39;
    blockCopy = v40;
LABEL_20:
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __96__HDClientAuthorizationOracle_performIfAuthorizedToReadObjects_onQueue_usingBlock_errorHandler___block_invoke;
    aBlock[3] = &unk_278614E28;
    v53 = array;
    v54 = blockCopy;
    v29 = _Block_copy(aBlock);
    v30 = v29;
    if (queueCopy)
    {
      dispatch_async(queueCopy, v29);
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
  handlerCopy = v39;
  v51 = v38;
  v50 = v39;
  v33 = _Block_copy(v47);
  v34 = v33;
  blockCopy = v40;
  queueCopy = v41;
  if (v41)
  {
    dispatch_async(v41, v33);
  }

  else
  {
    v33[2](v33);
  }

  objectsCopy = v42;

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

- (void)performIfAuthorizedToReadTypes:(id)types onQueue:(id)queue usingBlock:(id)block errorHandler:(id)handler
{
  v61 = *MEMORY[0x277D85DE8];
  typesCopy = types;
  queueCopy = queue;
  blockCopy = block;
  handlerCopy = handler;
  if ([typesCopy count])
  {
    if (blockCopy)
    {
      goto LABEL_3;
    }

LABEL_30:
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDClientAuthorizationOracle.m" lineNumber:535 description:{@"Invalid parameter not satisfying: %@", @"block != NULL"}];

    if (handlerCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_31;
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"HDClientAuthorizationOracle.m" lineNumber:534 description:{@"Invalid parameter not satisfying: %@", @"[types count] > 0"}];

  if (!blockCopy)
  {
    goto LABEL_30;
  }

LABEL_3:
  if (handlerCopy)
  {
    goto LABEL_4;
  }

LABEL_31:
  currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"HDClientAuthorizationOracle.m" lineNumber:536 description:{@"Invalid parameter not satisfying: %@", @"errorHandler != NULL"}];

LABEL_4:
  clientHasAuthorizationForAllTypes = [(HDClientAuthorizationOracle *)self clientHasAuthorizationForAllTypes];
  array = [MEMORY[0x277CBEB18] array];
  if (self)
  {
    if (([(_HKEntitlements *)self->_entitlements hasEntitlement:*MEMORY[0x277CCB868]]| clientHasAuthorizationForAllTypes))
    {
LABEL_19:
      v19 = 0;
      goto LABEL_20;
    }
  }

  else if (clientHasAuthorizationForAllTypes)
  {
    goto LABEL_19;
  }

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v16 = typesCopy;
  v17 = [v16 countByEnumeratingWithState:&v56 objects:v60 count:16];
  if (!v17)
  {

    goto LABEL_19;
  }

  v18 = v17;
  v38 = a2;
  v39 = handlerCopy;
  v40 = blockCopy;
  v41 = queueCopy;
  v42 = typesCopy;
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
      authorizationManager = [WeakRetained authorizationManager];
      sourceBundleIdentifier = self->_sourceBundleIdentifier;
      entitlements = self->_entitlements;
      v27 = objc_loadWeakRetained(&self->_profile);
      v55 = v21;
      v28 = [authorizationManager isClientAuthorizedToReadType:v22 sourceBundleIdentifier:sourceBundleIdentifier clientEntitlements:entitlements profile:v27 error:&v55];
      v19 = v55;

      if (v28 == 1)
      {
        [array addObject:v22];
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
    queueCopy = v41;
    typesCopy = v42;
    handlerCopy = v39;
    blockCopy = v40;
LABEL_20:
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __94__HDClientAuthorizationOracle_performIfAuthorizedToReadTypes_onQueue_usingBlock_errorHandler___block_invoke;
    aBlock[3] = &unk_278614008;
    v54 = blockCopy;
    v53 = array;
    v29 = _Block_copy(aBlock);
    v30 = v29;
    if (queueCopy)
    {
      dispatch_async(queueCopy, v29);
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
  handlerCopy = v39;
  v51 = v38;
  v50 = v39;
  v33 = _Block_copy(v47);
  v34 = v33;
  blockCopy = v40;
  queueCopy = v41;
  if (v41)
  {
    dispatch_async(v41, v33);
  }

  else
  {
    v33[2](v33);
  }

  typesCopy = v42;

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

- (void)performIfAuthorizedToSaveObjects:(id)objects onQueue:(id)queue usingBlock:(id)block errorHandler:(id)handler
{
  v57 = *MEMORY[0x277D85DE8];
  objectsCopy = objects;
  queueCopy = queue;
  blockCopy = block;
  handlerCopy = handler;
  if ([objectsCopy count])
  {
    if (blockCopy)
    {
      goto LABEL_3;
    }

LABEL_27:
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDClientAuthorizationOracle.m" lineNumber:599 description:{@"Invalid parameter not satisfying: %@", @"block != NULL"}];

    if (handlerCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_28;
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"HDClientAuthorizationOracle.m" lineNumber:598 description:{@"Invalid parameter not satisfying: %@", @"[objects count] > 0"}];

  if (!blockCopy)
  {
    goto LABEL_27;
  }

LABEL_3:
  if (handlerCopy)
  {
    goto LABEL_4;
  }

LABEL_28:
  currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"HDClientAuthorizationOracle.m" lineNumber:600 description:{@"Invalid parameter not satisfying: %@", @"errorHandler != NULL"}];

LABEL_4:
  clientHasAuthorizationForAllTypes = [(HDClientAuthorizationOracle *)self clientHasAuthorizationForAllTypes];
  if (self)
  {
    if (([(_HKEntitlements *)self->_entitlements hasEntitlement:*MEMORY[0x277CCB868]]| clientHasAuthorizationForAllTypes))
    {
LABEL_16:
      v17 = 0;
      goto LABEL_17;
    }
  }

  else if (clientHasAuthorizationForAllTypes)
  {
    goto LABEL_16;
  }

  v54 = 0u;
  v55 = 0u;
  v53 = 0u;
  v52 = 0u;
  v16 = objectsCopy;
  v43 = [v16 countByEnumeratingWithState:&v52 objects:v56 count:16];
  if (!v43)
  {

    goto LABEL_16;
  }

  v36 = a2;
  v37 = handlerCopy;
  v38 = blockCopy;
  v39 = queueCopy;
  v40 = objectsCopy;
  obj = v16;
  v17 = 0;
  v42 = *v53;
  LOBYTE(blockCopy) = 1;
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
      authorizationManager = [WeakRetained authorizationManager];
      sourceBundleIdentifier = self->_sourceBundleIdentifier;
      entitlements = self->_entitlements;
      v25 = objc_loadWeakRetained(&self->_profile);
      v51 = v19;
      v26 = [authorizationManager isClientAuthorizedToWriteObject:v20 sourceBundleIdentifier:sourceBundleIdentifier clientEntitlements:entitlements profile:v25 error:&v51];
      v17 = v51;

      LODWORD(blockCopy) = (v26 == 1) & blockCopy;
      ++v18;
      v19 = v17;
    }

    while (v43 != v18);
    v43 = [obj countByEnumeratingWithState:&v52 objects:v56 count:16];
  }

  while (v43);

  if (blockCopy)
  {
    queueCopy = v39;
    objectsCopy = v40;
    handlerCopy = v37;
    blockCopy = v38;
LABEL_17:
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __96__HDClientAuthorizationOracle_performIfAuthorizedToSaveObjects_onQueue_usingBlock_errorHandler___block_invoke;
    aBlock[3] = &unk_278613658;
    v50 = blockCopy;
    v27 = _Block_copy(aBlock);
    v28 = v27;
    if (queueCopy)
    {
      dispatch_async(queueCopy, v27);
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
  handlerCopy = v37;
  v48 = v36;
  v47 = v37;
  v31 = _Block_copy(v44);
  v32 = v31;
  queueCopy = v39;
  objectsCopy = v40;
  if (v39)
  {
    dispatch_async(v39, v31);
  }

  else
  {
    v31[2](v31);
  }

  blockCopy = v38;

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

- (void)performIfAuthorizedToSaveObjectsWithTypes:(id)types onQueue:(id)queue usingBlock:(id)block errorHandler:(id)handler
{
  v57 = *MEMORY[0x277D85DE8];
  typesCopy = types;
  queueCopy = queue;
  blockCopy = block;
  handlerCopy = handler;
  if ([typesCopy count])
  {
    if (blockCopy)
    {
      goto LABEL_3;
    }

LABEL_27:
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDClientAuthorizationOracle.m" lineNumber:661 description:{@"Invalid parameter not satisfying: %@", @"block != NULL"}];

    if (handlerCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_28;
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"HDClientAuthorizationOracle.m" lineNumber:660 description:{@"Invalid parameter not satisfying: %@", @"[types count] > 0"}];

  if (!blockCopy)
  {
    goto LABEL_27;
  }

LABEL_3:
  if (handlerCopy)
  {
    goto LABEL_4;
  }

LABEL_28:
  currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"HDClientAuthorizationOracle.m" lineNumber:662 description:{@"Invalid parameter not satisfying: %@", @"errorHandler != NULL"}];

LABEL_4:
  clientHasAuthorizationForAllTypes = [(HDClientAuthorizationOracle *)self clientHasAuthorizationForAllTypes];
  if (self)
  {
    if (([(_HKEntitlements *)self->_entitlements hasEntitlement:*MEMORY[0x277CCB868]]| clientHasAuthorizationForAllTypes))
    {
LABEL_16:
      v17 = 0;
      goto LABEL_17;
    }
  }

  else if (clientHasAuthorizationForAllTypes)
  {
    goto LABEL_16;
  }

  v54 = 0u;
  v55 = 0u;
  v53 = 0u;
  v52 = 0u;
  v16 = typesCopy;
  v43 = [v16 countByEnumeratingWithState:&v52 objects:v56 count:16];
  if (!v43)
  {

    goto LABEL_16;
  }

  v36 = a2;
  v37 = handlerCopy;
  v38 = blockCopy;
  v39 = queueCopy;
  v40 = typesCopy;
  obj = v16;
  v17 = 0;
  v42 = *v53;
  LOBYTE(blockCopy) = 1;
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
      authorizationManager = [WeakRetained authorizationManager];
      sourceBundleIdentifier = self->_sourceBundleIdentifier;
      entitlements = self->_entitlements;
      v25 = objc_loadWeakRetained(&self->_profile);
      v51 = v19;
      v26 = [authorizationManager isClientAuthorizedToWriteType:v20 sourceBundleIdentifier:sourceBundleIdentifier clientEntitlements:entitlements profile:v25 error:&v51];
      v17 = v51;

      LODWORD(blockCopy) = (v26 == 1) & blockCopy;
      ++v18;
      v19 = v17;
    }

    while (v43 != v18);
    v43 = [obj countByEnumeratingWithState:&v52 objects:v56 count:16];
  }

  while (v43);

  if (blockCopy)
  {
    queueCopy = v39;
    typesCopy = v40;
    handlerCopy = v37;
    blockCopy = v38;
LABEL_17:
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __105__HDClientAuthorizationOracle_performIfAuthorizedToSaveObjectsWithTypes_onQueue_usingBlock_errorHandler___block_invoke;
    aBlock[3] = &unk_278613658;
    v50 = blockCopy;
    v27 = _Block_copy(aBlock);
    v28 = v27;
    if (queueCopy)
    {
      dispatch_async(queueCopy, v27);
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
  handlerCopy = v37;
  v48 = v36;
  v47 = v37;
  v31 = _Block_copy(v44);
  v32 = v31;
  queueCopy = v39;
  typesCopy = v40;
  if (v39)
  {
    dispatch_async(v39, v31);
  }

  else
  {
    v31[2](v31);
  }

  blockCopy = v38;

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

- (void)performIfAuthorizedToDeleteObjects:(id)objects onQueue:(id)queue usingBlock:(id)block errorHandler:(id)handler
{
  v59 = *MEMORY[0x277D85DE8];
  objectsCopy = objects;
  queueCopy3 = queue;
  blockCopy = block;
  handlerCopy = handler;
  if ([objectsCopy count])
  {
    if (blockCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDClientAuthorizationOracle.m" lineNumber:722 description:{@"Invalid parameter not satisfying: %@", @"block != NULL"}];

    if (handlerCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"HDClientAuthorizationOracle.m" lineNumber:721 description:{@"Invalid parameter not satisfying: %@", @"[objects count] > 0"}];

  if (!blockCopy)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (handlerCopy)
  {
    goto LABEL_4;
  }

LABEL_9:
  currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"HDClientAuthorizationOracle.m" lineNumber:723 description:{@"Invalid parameter not satisfying: %@", @"errorHandler != NULL"}];

LABEL_4:
  clientHasAuthorizationForAllTypes = [(HDClientAuthorizationOracle *)self clientHasAuthorizationForAllTypes];
  if (self)
  {
    if (([(_HKEntitlements *)self->_entitlements hasEntitlement:*MEMORY[0x277CCB868]]| clientHasAuthorizationForAllTypes))
    {
LABEL_6:
      v16 = 0;
      v17 = 0;
LABEL_21:
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __98__HDClientAuthorizationOracle_performIfAuthorizedToDeleteObjects_onQueue_usingBlock_errorHandler___block_invoke;
      aBlock[3] = &unk_278618D00;
      v51 = blockCopy;
      v52 = v16;
      v31 = _Block_copy(aBlock);
      v32 = v31;
      if (queueCopy3)
      {
        dispatch_async(queueCopy3, v31);
      }

      else
      {
        v31[2](v31);
      }

      v33 = v51;
      goto LABEL_25;
    }
  }

  else if (clientHasAuthorizationForAllTypes)
  {
    goto LABEL_6;
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v21 = objectsCopy;
  v44 = [v21 countByEnumeratingWithState:&v54 objects:v58 count:16];
  if (!v44)
  {

    v17 = 0;
    v16 = 1;
    goto LABEL_21;
  }

  v37 = a2;
  v38 = handlerCopy;
  v39 = blockCopy;
  queue = queueCopy3;
  v41 = objectsCopy;
  obj = v21;
  v17 = 0;
  v43 = *v55;
  LOBYTE(blockCopy) = 1;
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
      authorizationManager = [WeakRetained authorizationManager];
      sourceBundleIdentifier = self->_sourceBundleIdentifier;
      entitlements = self->_entitlements;
      v29 = objc_loadWeakRetained(&self->_profile);
      v53 = v23;
      v30 = [authorizationManager isClientAuthorizedToWriteObject:v24 sourceBundleIdentifier:sourceBundleIdentifier clientEntitlements:entitlements profile:v29 error:&v53];
      v17 = v53;

      LODWORD(blockCopy) = (v30 == 1) & blockCopy;
      ++v22;
      v23 = v17;
    }

    while (v44 != v22);
    v44 = [obj countByEnumeratingWithState:&v54 objects:v58 count:16];
  }

  while (v44);

  if (blockCopy)
  {
    v16 = 1;
    queueCopy3 = queue;
    objectsCopy = v41;
    handlerCopy = v38;
    blockCopy = v39;
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
  handlerCopy = v38;
  v49 = v37;
  v48 = v38;
  v35 = _Block_copy(v45);
  v36 = v35;
  queueCopy3 = queue;
  if (queue)
  {
    dispatch_async(queue, v35);
  }

  else
  {
    v35[2](v35);
  }

  objectsCopy = v41;
  blockCopy = v39;

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

- (void)performIfAuthorizedToDeleteObjectsWithTypes:(id)types onQueue:(id)queue usingBlock:(id)block errorHandler:(id)handler
{
  v59 = *MEMORY[0x277D85DE8];
  typesCopy = types;
  queueCopy3 = queue;
  blockCopy = block;
  handlerCopy = handler;
  if ([typesCopy count])
  {
    if (blockCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDClientAuthorizationOracle.m" lineNumber:785 description:{@"Invalid parameter not satisfying: %@", @"block != NULL"}];

    if (handlerCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"HDClientAuthorizationOracle.m" lineNumber:784 description:{@"Invalid parameter not satisfying: %@", @"[types count] > 0"}];

  if (!blockCopy)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (handlerCopy)
  {
    goto LABEL_4;
  }

LABEL_9:
  currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"HDClientAuthorizationOracle.m" lineNumber:786 description:{@"Invalid parameter not satisfying: %@", @"errorHandler != NULL"}];

LABEL_4:
  clientHasAuthorizationForAllTypes = [(HDClientAuthorizationOracle *)self clientHasAuthorizationForAllTypes];
  if (self)
  {
    if (([(_HKEntitlements *)self->_entitlements hasEntitlement:*MEMORY[0x277CCB868]]| clientHasAuthorizationForAllTypes))
    {
LABEL_6:
      v16 = 0;
      v17 = 0;
LABEL_21:
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __107__HDClientAuthorizationOracle_performIfAuthorizedToDeleteObjectsWithTypes_onQueue_usingBlock_errorHandler___block_invoke;
      aBlock[3] = &unk_278618D00;
      v51 = blockCopy;
      v52 = v16;
      v31 = _Block_copy(aBlock);
      v32 = v31;
      if (queueCopy3)
      {
        dispatch_async(queueCopy3, v31);
      }

      else
      {
        v31[2](v31);
      }

      v33 = v51;
      goto LABEL_25;
    }
  }

  else if (clientHasAuthorizationForAllTypes)
  {
    goto LABEL_6;
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v21 = typesCopy;
  v44 = [v21 countByEnumeratingWithState:&v54 objects:v58 count:16];
  if (!v44)
  {

    v17 = 0;
    v16 = 1;
    goto LABEL_21;
  }

  v37 = a2;
  v38 = handlerCopy;
  v39 = blockCopy;
  queue = queueCopy3;
  v41 = typesCopy;
  obj = v21;
  v17 = 0;
  v43 = *v55;
  LOBYTE(blockCopy) = 1;
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
      authorizationManager = [WeakRetained authorizationManager];
      sourceBundleIdentifier = self->_sourceBundleIdentifier;
      entitlements = self->_entitlements;
      v29 = objc_loadWeakRetained(&self->_profile);
      v53 = v23;
      v30 = [authorizationManager isClientAuthorizedToWriteType:v24 sourceBundleIdentifier:sourceBundleIdentifier clientEntitlements:entitlements profile:v29 error:&v53];
      v17 = v53;

      LODWORD(blockCopy) = (v30 == 1) & blockCopy;
      ++v22;
      v23 = v17;
    }

    while (v44 != v22);
    v44 = [obj countByEnumeratingWithState:&v54 objects:v58 count:16];
  }

  while (v44);

  if (blockCopy)
  {
    v16 = 1;
    queueCopy3 = queue;
    typesCopy = v41;
    handlerCopy = v38;
    blockCopy = v39;
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
  handlerCopy = v38;
  v49 = v37;
  v48 = v38;
  v35 = _Block_copy(v45);
  v36 = v35;
  queueCopy3 = queue;
  if (queue)
  {
    dispatch_async(queue, v35);
  }

  else
  {
    v35[2](v35);
  }

  typesCopy = v41;
  blockCopy = v39;

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

- (void)handleObjectAuthorizationRequestsWithPromptHandler:(id)handler objectType:(id)type completion:(id)completion
{
  completionCopy = completion;
  typeCopy = type;
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  authorizationManager = [WeakRetained authorizationManager];
  [authorizationManager handleObjectAuthorizationRequestsForBundleIdentifier:self->_sourceBundleIdentifier objectType:typeCopy promptHandler:handlerCopy completion:completionCopy];
}

- (void)enqueueAuthorizationRequestForObjectType:(id)type sourceEntity:(id)entity promptIfNeeded:(BOOL)needed authorizationNeededHandler:(id)handler completionHandler:(id)completionHandler
{
  v32 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  entityCopy = entity;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
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
  v25 = typeCopy;
  neededCopy = needed;
  v26 = entityCopy;
  v27 = handlerCopy;
  v28 = completionHandlerCopy;
  v19 = completionHandlerCopy;
  v20 = handlerCopy;
  v21 = entityCopy;
  v22 = typeCopy;
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

- (void)handleHealthConceptAuthorizationRequestsWithPromptHandler:(id)handler objectType:(id)type completion:(id)completion
{
  completionCopy = completion;
  typeCopy = type;
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  authorizationManager = [WeakRetained authorizationManager];
  [authorizationManager handleHealthConceptAuthorizationRequestsForBundleIdentifier:self->_sourceBundleIdentifier objectType:typeCopy promptHandler:handlerCopy completion:completionCopy];
}

- (void)createRecalibrateEstimatesRequestRecordForSampleType:(id)type sourceEntity:(id)entity effectiveDate:(id)date handler:(id)handler
{
  typeCopy = type;
  entityCopy = entity;
  dateCopy = date;
  handlerCopy = handler;
  if (!dateCopy)
  {
    v17 = MEMORY[0x277CCA9B8];
    v18 = objc_opt_class();
    v19 = @"Effective date cannot be nil.";
LABEL_14:
    v30 = [v17 hk_errorForInvalidArgument:@"@" class:v18 selector:a2 format:v19];
LABEL_17:
    v31 = v30;
    handlerCopy[2](handlerCopy, 0, v30);

    goto LABEL_18;
  }

  date = [MEMORY[0x277CBEAA8] date];
  v16 = [dateCopy compare:date];

  if (v16 == 1)
  {
    [MEMORY[0x277CCA9B8] hk_error:3 format:{@"Effective date (%@) cannot be in the future.", dateCopy}];
    v30 = LABEL_16:;
    goto LABEL_17;
  }

  if (!typeCopy)
  {
    v17 = MEMORY[0x277CCA9B8];
    v18 = objc_opt_class();
    v19 = @"Sample type cannot be nil.";
    goto LABEL_14;
  }

  if (([typeCopy allowsRecalibrationForEstimates] & 1) == 0)
  {
    [MEMORY[0x277CCA9B8] hk_error:3 format:{@"Estimate recalibration is not supported for %@.", typeCopy}];
    goto LABEL_16;
  }

  if (!self || ([(_HKEntitlements *)self->_entitlements hasEntitlement:*MEMORY[0x277CCB868]]& 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    authorizationManager = [WeakRetained authorizationManager];
    v22 = [MEMORY[0x277CBEB98] setWithObject:typeCopy];
    sourceBundleIdentifier = self->_sourceBundleIdentifier;
    v35 = 0;
    v24 = [authorizationManager authorizationStatusForTypes:v22 bundleIdentifier:sourceBundleIdentifier error:&v35];
    v25 = v35;

    v26 = [v24 objectForKey:typeCopy];
    v27 = v26;
    if (v26)
    {
      if ([v26 integerValue] == 101)
      {

        goto LABEL_12;
      }

      v32 = [MEMORY[0x277CCA9B8] hk_error:4 format:{@"Client %@ is not authorized to read and share %@.", self->_sourceBundleIdentifier, typeCopy}];
      handlerCopy[2](handlerCopy, 0, v32);
    }

    else
    {
      handlerCopy[2](handlerCopy, 0, v25);
    }

    goto LABEL_18;
  }

LABEL_12:
  v28 = objc_loadWeakRetained(&self->_profile);
  authorizationManager2 = [v28 authorizationManager];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __119__HDClientAuthorizationOracle_createRecalibrateEstimatesRequestRecordForSampleType_sourceEntity_effectiveDate_handler___block_invoke;
  v33[3] = &unk_278618DA0;
  v33[4] = self;
  v34 = handlerCopy;
  [authorizationManager2 createRecalibrateEstimatesRequestRecordForSource:entityCopy sampleType:typeCopy effectiveDate:dateCopy handler:v33];

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

- (void)enqueueAuthorizationRequestToWriteTypes:(id)types readTypes:(id)readTypes authorizationNeededHandler:(id)handler requestCompletionHandler:(id)completionHandler
{
  v53 = *MEMORY[0x277D85DE8];
  typesCopy = types;
  readTypesCopy = readTypes;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  if (!completionHandlerCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDClientAuthorizationOracle.m" lineNumber:993 description:{@"Invalid parameter not satisfying: %@", @"requestCompletionHandler != NULL"}];
  }

  if (![typesCopy count] && !objc_msgSend(readTypesCopy, "count"))
  {
    v22 = MEMORY[0x277CCA9B8];
    v23 = objc_opt_class();
    v24 = @"Must specify types to share or read";
    goto LABEL_37;
  }

  if ([typesCopy count] && (objc_msgSend(MEMORY[0x277CCD720], "_allowAuthorizationForSharingWithTypes:entitlements:disallowedTypes:", typesCopy, self->_entitlements, 0) & 1) == 0)
  {
    v22 = MEMORY[0x277CCA9B8];
    v23 = objc_opt_class();
    v24 = @"Invalid types for sharing";
LABEL_37:
    v41 = [v22 hk_errorForInvalidArgument:@"@" class:v23 selector:a2 format:v24];
    completionHandlerCopy[2](completionHandlerCopy, 0, v41);

    goto LABEL_38;
  }

  if ([readTypesCopy count] && (objc_msgSend(MEMORY[0x277CCD720], "_allowAuthorizationForReadingWithTypes:entitlements:disallowedTypes:", readTypesCopy, self->_entitlements, 0) & 1) == 0)
  {
    v22 = MEMORY[0x277CCA9B8];
    v23 = objc_opt_class();
    v24 = @"Invalid types for reading";
    goto LABEL_37;
  }

  v50 = 0;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v16 = [WeakRetained profileExtensionsConformingToProtocol:&unk_283D71148];
  firstObject = [v16 firstObject];

  if (firstObject)
  {
    v49 = 0;
    v18 = [firstObject deviceConfigurationSupportsHealthRecords:&v50 error:&v49];
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
    daemon = [v25 daemon];
    behavior = [daemon behavior];
    isAppleWatch = [behavior isAppleWatch];

    if ((isAppleWatch & 1) == 0)
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
  allTypes = [MEMORY[0x277CCD118] allTypes];
  v33 = [v31 setWithArray:allTypes];
  v34 = [readTypesCopy hk_minus:v33];

  readTypesCopy = v34;
LABEL_26:
  v35 = [typesCopy count];
  if (v35 + [readTypesCopy count])
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
    v45 = typesCopy;
    v46 = readTypesCopy;
    v47 = handlerCopy;
    v48 = completionHandlerCopy;
    dispatch_async(queue, block);
  }

  else
  {
    if (handlerCopy)
    {
      uUID = [MEMORY[0x277CCAD78] UUID];
      (*(handlerCopy + 2))(handlerCopy, uUID, 0, 0, &__block_literal_global_417);
    }

    _HKInitializeLogging();
    v37 = HKLogAuthorization();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_228986000, v37, OS_LOG_TYPE_DEFAULT, "There are zero types to write and read, not creating an authorization request", buf, 2u);
    }

    completionHandlerCopy[2](completionHandlerCopy, 1, 0);
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

- (void)handleAuthorizationRequestsForBundleIdentifier:(id)identifier promptHandler:(id)handler requestCompletionHandler:(id)completionHandler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  queue = self->_queue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __117__HDClientAuthorizationOracle_handleAuthorizationRequestsForBundleIdentifier_promptHandler_requestCompletionHandler___block_invoke;
  v15[3] = &unk_2786173A0;
  v15[4] = self;
  v16 = identifierCopy;
  v17 = handlerCopy;
  v18 = completionHandlerCopy;
  v12 = completionHandlerCopy;
  v13 = handlerCopy;
  v14 = identifierCopy;
  dispatch_async(queue, v15);
}

void __117__HDClientAuthorizationOracle_handleAuthorizationRequestsForBundleIdentifier_promptHandler_requestCompletionHandler___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 8));
  v2 = [WeakRetained authorizationManager];
  [v2 handleAuthorizationRequestsForBundleIdentifier:a1[5] promptHandler:a1[6] completion:a1[7]];
}

- (void)beginAuthorizationRequestDelegateTransactionWithSessionIdentifier:(id)identifier clientProcess:(id)process completion:(id)completion
{
  identifierCopy = identifier;
  processCopy = process;
  completionCopy = completion;
  if (!completionCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDClientAuthorizationOracle.m" lineNumber:1140 description:{@"Invalid parameter not satisfying: %@", @"completion != NULL"}];
  }

  v12 = *MEMORY[0x277CCB888];
  v20 = 0;
  v13 = [processCopy hasRequiredEntitlement:v12 error:&v20];
  v14 = v20;
  if (v13)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __134__HDClientAuthorizationOracle_Privileged__beginAuthorizationRequestDelegateTransactionWithSessionIdentifier_clientProcess_completion___block_invoke;
    block[3] = &unk_278614160;
    block[4] = self;
    v18 = identifierCopy;
    v19 = completionCopy;
    dispatch_async(queue, block);
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0, v14);
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

- (void)endAuthorizationRequestDelegateTransactionWithSessionIdentifier:(id)identifier error:(id)error
{
  identifierCopy = identifier;
  errorCopy = error;
  v8 = atomic_load(&self->_invalidated);
  if ((v8 & 1) == 0)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __113__HDClientAuthorizationOracle_Privileged__endAuthorizationRequestDelegateTransactionWithSessionIdentifier_error___block_invoke;
    block[3] = &unk_278613830;
    block[4] = self;
    v11 = identifierCopy;
    v12 = errorCopy;
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

- (void)updateDefaultAuthorizationStatusesForSource:(id)source completion:(id)completion
{
  completionCopy = completion;
  typesForReadAuthorizationOverride = [(_HKEntitlements *)self->_entitlements typesForReadAuthorizationOverride];
  typesForWriteAuthorizationOverride = [(_HKEntitlements *)self->_entitlements typesForWriteAuthorizationOverride];
  v8 = [typesForReadAuthorizationOverride setByAddingObjectsFromSet:typesForWriteAuthorizationOverride];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __98__HDClientAuthorizationOracle_Privileged__updateDefaultAuthorizationStatusesForSource_completion___block_invoke;
  aBlock[3] = &unk_2786130D8;
  v28 = completionCopy;
  v9 = _Block_copy(aBlock);
  if ([v8 count])
  {
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    authorizationManager = [WeakRetained authorizationManager];
    sourceBundleIdentifier = self->_sourceBundleIdentifier;
    v26 = 0;
    v13 = [authorizationManager authorizationStatusForTypes:v8 bundleIdentifier:sourceBundleIdentifier error:&v26];
    v14 = v26;

    if (v13)
    {
      v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __98__HDClientAuthorizationOracle_Privileged__updateDefaultAuthorizationStatusesForSource_completion___block_invoke_3;
      v22[3] = &unk_278618E68;
      v16 = typesForReadAuthorizationOverride;
      v23 = v16;
      v17 = typesForWriteAuthorizationOverride;
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