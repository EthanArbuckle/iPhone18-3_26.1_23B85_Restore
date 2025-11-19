@interface HDAuthorizationManager
- (BOOL)_hasRequiredAuthorizationStatusesForBundleIdentifier:(id)a3 requiredReadTypes:(id)a4 error:(id *)a5;
- (BOOL)isAuthorizedForObjectType:(id)a3 authorizationStatus:(id)a4 clientEntitlements:(id)a5 sharing:(BOOL)a6 error:(id *)a7;
- (HDAuthorizationManager)initWithProfile:(id)a3;
- (id)_builtInSchemas;
- (id)_schemaProviderForType:(id)a3;
- (id)authorizationStatusForTypes:(id)a3 bundleIdentifier:(id)a4 error:(id *)a5;
- (id)diagnosticDescription;
- (id)enqueueAuthorizationRequestForBundleIdentifier:(id)a3 writeTypes:(id)a4 readTypes:(id)a5 authorizationNeededHandler:(id)a6 completion:(id)a7;
- (id)enqueueConceptAuthorizationRequestForBundleIdentifier:(id)a3 forObjectType:(id)a4 promptIfNeeded:(BOOL)a5 authorizationNeededHandler:(id)a6 completionHandler:(id)a7;
- (id)enqueueObjectAuthorizationRequestForBundleIdentifier:(id)a3 context:(id)a4 promptIfNeeded:(BOOL)a5 authorizationNeededHandler:(id)a6 completion:(id)a7;
- (id)fetchAuthorizationContextForPromptSession:(id)a3 error:(id *)a4;
- (id)fetchConceptAuthorizationContextForPromptSession:(id)a3 error:(id *)a4;
- (id)filterForClientUserAnnotatedMedications:(id)a3 bundleIdentifier:(id)a4 clientEntitlements:(id)a5 error:(id *)a6;
- (id)filteredAuthorizedObjectsForClient:(id)a3 anchor:(id)a4 bundleIdentifier:(id)a5 clientEntitlements:(id)a6 error:(id *)a7;
- (id)unitTest_schemaProviderMap;
- (int64_t)isClientAuthorizedToReadObject:(id)a3 sourceBundleIdentifier:(id)a4 clientEntitlements:(id)a5 profile:(id)a6 error:(id *)a7;
- (int64_t)isClientAuthorizedToReadType:(id)a3 sourceBundleIdentifier:(id)a4 clientEntitlements:(id)a5 profile:(id)a6 error:(id *)a7;
- (int64_t)isClientAuthorizedToWriteObject:(id)a3 sourceBundleIdentifier:(id)a4 clientEntitlements:(id)a5 profile:(id)a6 error:(id *)a7;
- (int64_t)isClientAuthorizedToWriteType:(id)a3 sourceBundleIdentifier:(id)a4 clientEntitlements:(id)a5 profile:(id)a6 error:(id *)a7;
- (int64_t)objectAuthorizationRecordForSource:(id)a3 objectUUID:(id)a4 resolveAssociations:(BOOL)a5 error:(id *)a6;
- (uint64_t)_authorizationRequestStatusForClientBundleIdentifier:(void *)a3 writeTypes:(void *)a4 readTypes:(uint64_t)a5 updateAuthorizationStatuses:(uint64_t)a6 error:;
- (void)_isRecalibrateEstimatesRequestSessionExpiredWithCreationDate:(void *)result;
- (void)_queue_cancelAuthorizationRequestsWithIdentifiers:(uint64_t)a1;
- (void)_queue_handleNextAuthorizationRequestGroup;
- (void)_queue_requestGroupDidFinishPrompting:(void *)a3 error:;
- (void)applicationsUninstalledNotification:(id)a3;
- (void)beginAuthorizationDelegateTransactionWithSessionIdentifier:(id)a3 completion:(id)a4;
- (void)cancelAuthorizationRequestsWithIdentifiers:(id)a3;
- (void)createRecalibrateEstimatesRequestRecordForSource:(id)a3 sampleType:(id)a4 effectiveDate:(id)a5 handler:(id)a6;
- (void)daemonReady:(id)a3;
- (void)endAuthorizationDelegateTransactionWithSessionIdentifier:(id)a3 error:(id)a4;
- (void)fetchAuthorizationStatusesForHealthConceptIdentifier:(id)a3 completion:(id)a4;
- (void)fetchConceptAuthorizationRecordsForSource:(id)a3 completion:(id)a4;
- (void)fetchSourcesWithExistingAuthorizationsForHealthConceptDomain:(id)a3 completion:(id)a4;
- (void)handleAuthorizationRequestsForBundleIdentifier:(id)a3 promptHandler:(id)a4 completion:(id)a5;
- (void)handleHealthConceptAuthorizationRequestsForBundleIdentifier:(id)a3 objectType:(id)a4 promptHandler:(id)a5 completion:(id)a6;
- (void)handleObjectAuthorizationRequestsForBundleIdentifier:(id)a3 objectType:(id)a4 promptHandler:(id)a5 completion:(id)a6;
- (void)invalidateAndWait;
- (void)openAppForAuthorization:(id)a3 sessionIdentifier:(id)a4 completion:(id)a5;
- (void)performObjectAuthorizationForSource:(id)a3 samples:(id)a4 associatedWithSamplesOfType:(id)a5 completion:(id)a6;
- (void)resetAllAuthorizationRecordsWithCompletion:(id)a3;
- (void)setAuthorizationStatuses:(id)a3 authorizationModes:(id)a4 forBundleIdentifier:(id)a5 options:(unint64_t)a6 completion:(id)a7;
- (void)setObjectAuthorizationStatusContext:(id)a3 forObjectType:(id)a4 bundleIdentifier:(id)a5 completion:(id)a6;
- (void)validateRecalibrateEstimatesRequestRecord:(id)a3 completion:(id)a4;
@end

@implementation HDAuthorizationManager

- (HDAuthorizationManager)initWithProfile:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v32 = [MEMORY[0x277CCA890] currentHandler];
    [v32 handleFailureInMethod:a2 object:self file:@"HDAuthorizationManager.m" lineNumber:350 description:{@"Invalid parameter not satisfying: %@", @"profile != nil"}];
  }

  v33.receiver = self;
  v33.super_class = HDAuthorizationManager;
  v6 = [(HDAuthorizationManager *)&v33 init];
  v7 = v6;
  if (v6)
  {
    objc_storeWeak(&v6->_profile, v5);
    v8 = HKCreateSerialDispatchQueue();
    queue = v7->_queue;
    v7->_queue = v8;

    v10 = HKCreateConcurrentDispatchQueue();
    completionQueue = v7->_completionQueue;
    v7->_completionQueue = v10;

    v12 = HKCreateSerialDispatchQueue();
    observationQueue = v7->_observationQueue;
    v7->_observationQueue = v12;

    v7->_requestSessionTimeout = 10.0;
    v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
    requestGroupsByBundleIdentifier = v7->_requestGroupsByBundleIdentifier;
    v7->_requestGroupsByBundleIdentifier = v14;

    v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
    pendingRequestGroups = v7->_pendingRequestGroups;
    v7->_pendingRequestGroups = v16;

    v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
    pendingObjectAuthorizationRequestsByBundleIdentifier = v7->_pendingObjectAuthorizationRequestsByBundleIdentifier;
    v7->_pendingObjectAuthorizationRequestsByBundleIdentifier = v18;

    v20 = objc_alloc_init(MEMORY[0x277CBEB38]);
    activeObjectPromptSessionsBySessionIdentifier = v7->_activeObjectPromptSessionsBySessionIdentifier;
    v7->_activeObjectPromptSessionsBySessionIdentifier = v20;

    v22 = objc_alloc_init(MEMORY[0x277CBEB38]);
    pendingHealthConceptAuthorizationRequestsByBundleIdentifier = v7->_pendingHealthConceptAuthorizationRequestsByBundleIdentifier;
    v7->_pendingHealthConceptAuthorizationRequestsByBundleIdentifier = v22;

    v24 = objc_alloc_init(MEMORY[0x277CBEB38]);
    activeHealthConceptPromptSessionsBySessionIdentifier = v7->_activeHealthConceptPromptSessionsBySessionIdentifier;
    v7->_activeHealthConceptPromptSessionsBySessionIdentifier = v24;

    v26 = objc_alloc_init(MEMORY[0x277CBEB38]);
    activeRecalibrateEstimatesRequestSessionsByBundleIdentifier = v7->_activeRecalibrateEstimatesRequestSessionsByBundleIdentifier;
    v7->_activeRecalibrateEstimatesRequestSessionsByBundleIdentifier = v26;

    v28 = [MEMORY[0x277D10AF8] sharedDiagnosticManager];
    [v28 addObject:v7];

    v29 = [MEMORY[0x277CCAB98] defaultCenter];
    [v29 addObserver:v7 selector:sel_applicationsUninstalledNotification_ name:@"HDHealthDaemonApplicationsUninstalledNotification" object:0];
    v30 = [v5 daemon];
    [v30 registerDaemonReadyObserver:v7 queue:v7->_observationQueue];

    v7->_lock._os_unfair_lock_opaque = 0;
  }

  return v7;
}

- (void)invalidateAndWait
{
  v3 = [MEMORY[0x277D10AF8] sharedDiagnosticManager];
  [v3 removeObject:self];

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 removeObserver:self name:@"HDHealthDaemonApplicationsUninstalledNotification" object:0];
}

- (void)setAuthorizationStatuses:(id)a3 authorizationModes:(id)a4 forBundleIdentifier:(id)a5 options:(unint64_t)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  queue = self->_queue;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __109__HDAuthorizationManager_setAuthorizationStatuses_authorizationModes_forBundleIdentifier_options_completion___block_invoke;
  v21[3] = &unk_2786141B0;
  v21[4] = self;
  v22 = v12;
  v23 = v13;
  v24 = v14;
  v25 = v15;
  v26 = a6;
  v17 = v15;
  v18 = v14;
  v19 = v13;
  v20 = v12;
  dispatch_async(queue, v21);
}

void __109__HDAuthorizationManager_setAuthorizationStatuses_authorizationModes_forBundleIdentifier_options_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  v5 = *(a1 + 72);
  v6 = *(a1 + 40);
  v7 = v2;
  v8 = v3;
  v9 = v4;
  if (!v1)
  {
    goto LABEL_9;
  }

  if (![v6 count])
  {
    v14 = [MEMORY[0x277CCA890] currentHandler];
    [v14 handleFailureInMethod:sel__queue_setAuthorizationStatuses_authorizationModes_forBundleIdentifier_options_completion_ object:v1 file:@"HDAuthorizationManager.m" lineNumber:684 description:{@"Invalid parameter not satisfying: %@", @"[authorizationStatuses count] > 0"}];

    if (v8)
    {
      goto LABEL_4;
    }

LABEL_11:
    v15 = [MEMORY[0x277CCA890] currentHandler];
    [v15 handleFailureInMethod:sel__queue_setAuthorizationStatuses_authorizationModes_forBundleIdentifier_options_completion_ object:v1 file:@"HDAuthorizationManager.m" lineNumber:685 description:{@"Invalid parameter not satisfying: %@", @"bundleIdentifier != nil"}];

    goto LABEL_4;
  }

  if (!v8)
  {
    goto LABEL_11;
  }

LABEL_4:
  v10 = objc_alloc_init(HDDefaultAuthorizationSchemaProvider);
  if (objc_opt_respondsToSelector())
  {
    WeakRetained = objc_loadWeakRetained((v1 + 48));
    v16 = 0;
    v12 = [(HDDefaultAuthorizationSchemaProvider *)v10 setAuthorizationStatuses:v6 authorizationModes:v7 bundleIdentifier:v8 options:v5 profile:WeakRetained error:&v16];
    v13 = v16;

    v9[2](v9, v12 == 1, v13);
  }

  else
  {
    _HKInitializeLogging();
    v13 = HKLogAuthorization();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_228986000, v13, OS_LOG_TYPE_FAULT, "Unexpectedly provider did not respond to a selector.", buf, 2u);
    }
  }

LABEL_9:
}

- (uint64_t)_authorizationRequestStatusForClientBundleIdentifier:(void *)a3 writeTypes:(void *)a4 readTypes:(uint64_t)a5 updateAuthorizationStatuses:(uint64_t)a6 error:
{
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v27 = v10;
  if (a1)
  {
    v45 = 0;
    v46 = &v45;
    v47 = 0x2020000000;
    v48 = 0;
    v43[0] = 0;
    v43[1] = v43;
    v43[2] = 0x2020000000;
    v44 = 0;
    v13 = [MEMORY[0x277CBEB98] hk_setByUnioningSet:v11 otherSet:v12];
    v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __134__HDAuthorizationManager__authorizationRequestStatusForClientBundleIdentifier_writeTypes_readTypes_updateAuthorizationStatuses_error___block_invoke;
    aBlock[3] = &unk_278621AF0;
    v34 = v10;
    v15 = v13;
    v35 = v15;
    v36 = a1;
    v40 = &v45;
    v37 = v11;
    v38 = v12;
    v16 = v14;
    v39 = v16;
    v41 = v43;
    v42 = a5;
    v17 = _Block_copy(aBlock);
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v19 = [WeakRetained database];

    v20 = +[HDDatabaseTransactionContext highPriorityContext];
    if (a5)
    {
      v21 = 0;
    }

    else
    {
      v21 = v20;
    }

    v22 = [(HDHealthEntity *)HDAuthorizationEntity transactionContextForWriting:a5 baseContext:v21];
    if (![v19 performTransactionWithContext:v22 error:a6 block:v17 inaccessibilityHandler:0])
    {
      goto LABEL_11;
    }

    if (![v16 count])
    {
      goto LABEL_17;
    }

    v23 = [(HDHealthEntity *)HDSampleEntity transactionContextForWriting:0 baseContext:v20];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __134__HDAuthorizationManager__authorizationRequestStatusForClientBundleIdentifier_writeTypes_readTypes_updateAuthorizationStatuses_error___block_invoke_401;
    v29[3] = &unk_278615F88;
    v30 = v16;
    v31 = a1;
    v32 = &v45;
    v24 = [v19 performTransactionWithContext:v23 error:a6 block:v29 inaccessibilityHandler:0];

    if (v24)
    {
LABEL_17:
      if (*(v46 + 24))
      {
        v25 = 1;
      }

      else
      {
        v25 = 2;
      }
    }

    else
    {
LABEL_11:
      v25 = 0;
    }

    _Block_object_dispose(v43, 8);
    _Block_object_dispose(&v45, 8);
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

- (BOOL)_hasRequiredAuthorizationStatusesForBundleIdentifier:(id)a3 requiredReadTypes:(id)a4 error:(id *)a5
{
  v36 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v9 = a4;
  v10 = [v9 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v31;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v31 != v12)
        {
          objc_enumerationMutation(v9);
        }

        if (([*(*(&v30 + 1) + 8 * i) isClinicalType] & 1) == 0)
        {
          [MEMORY[0x277CCA9B8] hk_assignError:a5 code:3 format:@"Required authorization check only permitted for clinical types"];
          v23 = 0;
          v15 = v9;
          goto LABEL_25;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v30 objects:v35 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v15 = [HDAuthorizationEntity authorizationRecordsByTypeForBundleIdentifier:v8 types:v9 profile:WeakRetained error:a5];

  if (v15)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v16 = v9;
    v17 = [v16 countByEnumeratingWithState:&v26 objects:v34 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v27;
      while (2)
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v27 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v26 + 1) + 8 * j);
          v22 = [v15 objectForKeyedSubscript:{v21, v26}];
          if (!v22 || [v16 containsObject:v21] && (objc_msgSend(v22, "readingEnabled") & 1) == 0)
          {
            [MEMORY[0x277CCA9B8] hk_assignError:a5 code:10 format:@"Required authorization not granted"];

            v23 = 0;
            goto LABEL_23;
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v26 objects:v34 count:16];
        if (v18)
        {
          continue;
        }

        break;
      }
    }

    v23 = 1;
LABEL_23:
  }

  else
  {
    v23 = 0;
  }

LABEL_25:

  v24 = *MEMORY[0x277D85DE8];
  return v23;
}

- (id)enqueueAuthorizationRequestForBundleIdentifier:(id)a3 writeTypes:(id)a4 readTypes:(id)a5 authorizationNeededHandler:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [MEMORY[0x277CCAD78] UUID];
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __132__HDAuthorizationManager_enqueueAuthorizationRequestForBundleIdentifier_writeTypes_readTypes_authorizationNeededHandler_completion___block_invoke;
  block[3] = &unk_278621A50;
  block[4] = self;
  v19 = v17;
  v29 = v19;
  v30 = v12;
  v31 = v13;
  v32 = v14;
  v33 = v15;
  v34 = v16;
  v20 = v16;
  v21 = v15;
  v22 = v14;
  v23 = v13;
  v24 = v12;
  dispatch_async(queue, block);
  v25 = v34;
  v26 = v19;

  return v19;
}

void __132__HDAuthorizationManager_enqueueAuthorizationRequestForBundleIdentifier_writeTypes_readTypes_authorizationNeededHandler_completion___block_invoke(void *a1)
{
  v75 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v1 = a1[5];
  v3 = a1[6];
  v4 = a1[7];
  v5 = a1[8];
  v6 = a1[9];
  v7 = a1[10];
  v8 = v1;
  v9 = v3;
  v70 = v4;
  v10 = v5;
  v11 = v6;
  v12 = v7;
  v13 = v12;
  if (v2)
  {
    v68 = v11;
    v69 = v12;
    if (!v9)
    {
      v61 = [MEMORY[0x277CCA890] currentHandler];
      [v61 handleFailureInMethod:sel__queue_enqueueAuthorizationRequestWithIdentifier_bundleIdentifier_writeTypes_readTypes_authorizationNeededHandler_completion_ object:v2 file:@"HDAuthorizationManager.m" lineNumber:716 description:{@"Invalid parameter not satisfying: %@", @"bundleIdentifier != nil"}];
    }

    WeakRetained = objc_loadWeakRetained((v2 + 48));
    v15 = [WeakRetained sourceManager];
    v71 = 0;
    v16 = [v15 clientSourceForBundleIdentifier:v9 error:&v71];
    v17 = v71;

    if (!v16)
    {
      v33 = v17;
      if (!v17)
      {
        v33 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:sel__queue_enqueueAuthorizationRequestWithIdentifier_bundleIdentifier_writeTypes_readTypes_authorizationNeededHandler_completion_ format:{@"Failed to look up source with bundle identifier %@", v9}];
      }

      v13 = v69;
      if (v69)
      {
        (v69)[2](v69, v8, 0, v33);
      }

      goto LABEL_37;
    }

    v64 = v17;
    v18 = [_HDAuthorizationRequest alloc];
    v67 = v8;
    v19 = v8;
    v20 = v70;
    v65 = v10;
    v21 = v10;
    v22 = v69;
    v66 = v19;
    if (v18)
    {
      if (!v19)
      {
        v63 = [MEMORY[0x277CCA890] currentHandler];
        [v63 handleFailureInMethod:sel_initWithIdentifier_typesToWrite_typesToRead_completionHandler_ object:v18 file:@"HDAuthorizationManager.m" lineNumber:2277 description:{@"Invalid parameter not satisfying: %@", @"identifier != nil"}];
      }

      *v72 = v18;
      *&v72[8] = _HDAuthorizationRequest;
      v23 = objc_msgSendSuper2(v72, sel_init);
      v18 = v23;
      if (v23)
      {
        objc_storeStrong(&v23->_identifier, v1);
        v24 = [v20 copy];
        typesToWrite = v18->_typesToWrite;
        v18->_typesToWrite = v24;

        v26 = [v21 copy];
        typesToRead = v18->_typesToRead;
        v18->_typesToRead = v26;

        v28 = [v22 copy];
        completionHandler = v18->_completionHandler;
        v18->_completionHandler = v28;
      }
    }

    v30 = [*(v2 + 72) objectForKeyedSubscript:v9];
    if (v30)
    {
      v31 = v30;
      v32 = v18;
      v8 = v67;
    }

    else
    {
      v31 = [_HDAuthorizationRequestGroup alloc];
      v34 = v16;
      v8 = v67;
      if (v31)
      {
        *v72 = v31;
        *&v72[8] = _HDAuthorizationRequestGroup;
        v31 = objc_msgSendSuper2(v72, sel_init);
        if (v31)
        {
          v35 = [v34 copy];
          source = v31->_source;
          v31->_source = v35;

          v37 = [MEMORY[0x277CBEB18] array];
          requests = v31->_requests;
          v31->_requests = v37;

          v39 = [MEMORY[0x277CBEB18] array];
          completions = v31->_completions;
          v31->_completions = v39;

          v41 = [MEMORY[0x277CBEB58] set];
          v42 = v31->_typesToWrite;
          v31->_typesToWrite = v41;

          v43 = [MEMORY[0x277CBEB58] set];
          v44 = v31->_typesToRead;
          v31->_typesToRead = v43;
        }
      }

      [*(v2 + 72) setObject:v31 forKeyedSubscript:v9];
      v45 = v18;
      if (!v31)
      {
        v48 = 1;
LABEL_26:

        _HKInitializeLogging();
        v49 = HKLogAuthorization();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
        {
          if (v18)
          {
            identifier = v18->_identifier;
          }

          else
          {
            identifier = 0;
          }

          v51 = identifier;
          v52 = [(_HDAuthorizationRequestGroup *)&v31->super.isa bundleIdentifier];
          if (v48)
          {
            v53 = 0;
          }

          else
          {
            v53 = [(NSMutableArray *)v31->_requests count];
          }

          *v72 = 138543874;
          *&v72[4] = v51;
          *&v72[12] = 2114;
          *&v72[14] = v52;
          v73 = 2048;
          v74 = v53;
          _os_log_impl(&dword_228986000, v49, OS_LOG_TYPE_DEFAULT, "Added authorization request %{public}@ to group for %{public}@. Request count: %ld", v72, 0x20u);

          v8 = v67;
        }

        v11 = v68;
        if (v68)
        {
          v54 = [(_HDAuthorizationRequestGroup *)&v31->super.isa bundleIdentifier];
          if (v48)
          {
            v55 = 0;
            v56 = 0;
          }

          else
          {
            v55 = v31->_typesToWrite;
            v56 = v31->_typesToRead;
          }

          *v72 = 0;
          v57 = v56;
          v58 = [(HDAuthorizationManager *)v2 _authorizationRequestStatusForClientBundleIdentifier:v54 writeTypes:v55 readTypes:v57 updateAuthorizationStatuses:0 error:v72];
          v59 = *v72;

          v11 = v68;
          v68[2](v68, v66, v58 == 1, v59);

          v8 = v67;
        }

        v33 = v64;
        v10 = v65;
        v13 = v69;
LABEL_37:

        goto LABEL_38;
      }
    }

    if (v18)
    {
      [(NSMutableArray *)v31->_requests addObject:v18];
      v46 = v18->_typesToWrite;
    }

    else
    {
      v62 = [MEMORY[0x277CCA890] currentHandler];
      [v62 handleFailureInMethod:sel_addRequest_ object:v31 file:@"HDAuthorizationManager.m" lineNumber:2343 description:{@"Invalid parameter not satisfying: %@", @"request != nil"}];

      [(NSMutableArray *)v31->_requests addObject:0];
      v46 = 0;
    }

    [(NSMutableSet *)v31->_typesToWrite unionSet:v46];
    if (v18)
    {
      v47 = v18->_typesToRead;
    }

    else
    {
      v47 = 0;
    }

    [(NSMutableSet *)v31->_typesToRead unionSet:v47];
    v48 = 0;
    goto LABEL_26;
  }

LABEL_38:

  v60 = *MEMORY[0x277D85DE8];
}

- (void)handleAuthorizationRequestsForBundleIdentifier:(id)a3 promptHandler:(id)a4 completion:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v11;
  if (v9)
  {
    queue = self->_queue;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __98__HDAuthorizationManager_handleAuthorizationRequestsForBundleIdentifier_promptHandler_completion___block_invoke;
    v15[3] = &unk_2786173A0;
    v15[4] = self;
    v16 = v9;
    v17 = v10;
    v18 = v12;
    dispatch_async(queue, v15);
  }

  else if (v11)
  {
    v14 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:@"nil bundle identifier"];
    (v12)[2](v12, 0, v14);
  }
}

uint64_t __98__HDAuthorizationManager_handleAuthorizationRequestsForBundleIdentifier_promptHandler_completion___block_invoke(uint64_t *a1)
{
  v2 = [*(a1[4] + 72) objectForKeyedSubscript:a1[5]];
  v3 = v2;
  v11 = v2;
  if (v2)
  {
    v4 = a1[6];
    if (v4)
    {
      objc_setProperty_nonatomic_copy(v2, v2, v4, 72);
      v3 = v11;
    }

    v5 = a1[7];
    if (v5)
    {
      v6 = v5;
      v7 = *(v11 + 5);
      v8 = _Block_copy(v6);
      [v7 addObject:v8];

      v3 = v11;
    }

    if (([*(a1[4] + 80) containsObject:v3] & 1) == 0)
    {
      [*(a1[4] + 80) addObject:v11];
    }

    [(HDAuthorizationManager *)a1[4] _queue_handleNextAuthorizationRequestGroup];
  }

  else
  {
    v9 = a1[7];
    if (v9)
    {
      (*(v9 + 16))(v9, 1, 0);
    }
  }

  return MEMORY[0x2821F96F8]();
}

- (void)_queue_handleNextAuthorizationRequestGroup
{
  v41 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v2 = (a1 + 88);
    if (!*(a1 + 88))
    {
      v3 = [*(a1 + 80) firstObject];
      v4 = [(_HDAuthorizationRequestGroup *)v3 bundleIdentifier];
      if (!v3)
      {
LABEL_19:

        goto LABEL_20;
      }

      [*(a1 + 80) removeObjectAtIndex:0];
      [*(a1 + 72) removeObjectForKey:v4];
      _HKInitializeLogging();
      v5 = HKLogAuthorization();
      v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);

      if (v6)
      {
        v7 = HKLogAuthorization();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          v27 = v3[1];
          v28 = [v27 allObjects];
          v29 = v3[2];
          v30 = [v29 allObjects];
          *buf = 138412802;
          v36 = v3;
          v37 = 2112;
          v38 = v28;
          v39 = 2112;
          v40 = v30;
          _os_log_debug_impl(&dword_228986000, v7, OS_LOG_TYPE_DEBUG, "activating request group %@ (write: %@, read: %@)", buf, 0x20u);
        }
      }

      v8 = [v3[7] bundleIdentifier];
      v10 = v3[1];
      v9 = v3[2];
      v34 = 0;
      v11 = v9;
      v12 = v10;
      v13 = [(HDAuthorizationManager *)a1 _authorizationRequestStatusForClientBundleIdentifier:v8 writeTypes:v12 readTypes:v11 updateAuthorizationStatuses:1 error:&v34];
      v14 = v34;

      if (v13)
      {
        if (v13 == 1 && (v15 = v3[9]) != 0 && (v16 = *(a1 + 44), v15, (v16 & 1) == 0))
        {
          _HKInitializeLogging();
          v22 = HKLogAuthorization();
          v23 = os_log_type_enabled(v22, OS_LOG_TYPE_INFO);

          if (v23)
          {
            v24 = HKLogAuthorization();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
            {
              v25 = [v3[7] bundleIdentifier];
              *buf = 138412290;
              v36 = v25;
              _os_log_impl(&dword_228986000, v24, OS_LOG_TYPE_INFO, "prompting for authorization for %@", buf, 0xCu);
            }
          }

          v26 = *(a1 + 136);
          v31[0] = MEMORY[0x277D85DD0];
          v31[1] = 3221225472;
          v31[2] = __68__HDAuthorizationManager__queue_handleNextAuthorizationRequestGroup__block_invoke;
          v31[3] = &unk_278613630;
          v31[4] = a1;
          v32 = v3;
          v33 = v4;
          if ([(_HDAuthorizationRequestGroup *)v32 promptIfNecessaryWithTimeout:v31 completion:v26])
          {
            objc_storeStrong(v2, v3);

            goto LABEL_18;
          }
        }

        else
        {
          _HKInitializeLogging();
          v17 = HKLogAuthorization();
          v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG);

          if (v18)
          {
            v19 = HKLogAuthorization();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
            {
              v20 = [(_HDAuthorizationRequestGroup *)v3 bundleIdentifier];
              *buf = 138412290;
              v36 = v20;
              _os_log_debug_impl(&dword_228986000, v19, OS_LOG_TYPE_DEBUG, "NOT prompting for authorization for %@", buf, 0xCu);
LABEL_29:

              goto LABEL_16;
            }

            goto LABEL_16;
          }
        }

LABEL_17:
        [(HDAuthorizationManager *)a1 _queue_requestGroupDidFinishPrompting:v3 error:v14];
LABEL_18:

        goto LABEL_19;
      }

      _HKInitializeLogging();
      v19 = HKLogAuthorization();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = [(_HDAuthorizationRequestGroup *)v3 bundleIdentifier];
        *buf = 138543618;
        v36 = v20;
        v37 = 2114;
        v38 = v14;
        _os_log_error_impl(&dword_228986000, v19, OS_LOG_TYPE_ERROR, "failed to determine authorization request status for %{public}@: %{public}@", buf, 0x16u);
        goto LABEL_29;
      }

LABEL_16:

      goto LABEL_17;
    }
  }

LABEL_20:
  v21 = *MEMORY[0x277D85DE8];
}

- (void)cancelAuthorizationRequestsWithIdentifiers:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __69__HDAuthorizationManager_cancelAuthorizationRequestsWithIdentifiers___block_invoke;
  v7[3] = &unk_278613920;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)_queue_cancelAuthorizationRequestsWithIdentifiers:(uint64_t)a1
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (!v3)
    {
      v22 = [MEMORY[0x277CCA890] currentHandler];
      [v22 handleFailureInMethod:sel__queue_cancelAuthorizationRequestsWithIdentifiers_ object:a1 file:@"HDAuthorizationManager.m" lineNumber:758 description:{@"Invalid parameter not satisfying: %@", @"identifiers != nil"}];
    }

    v23 = v4;
    v5 = [MEMORY[0x277CBEB98] setWithArray:v4];
    v6 = [MEMORY[0x277CCA9B8] hk_error:100 description:@"Authorization request canceled"];
    [(_HDAuthorizationRequestGroup *)*(a1 + 88) cancelRequestsWithIdentifiers:v5 error:v6];
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v7 = [*(a1 + 72) allValues];
    v8 = [v7 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v29;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v29 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [(_HDAuthorizationRequestGroup *)*(*(&v28 + 1) + 8 * i) cancelRequestsWithIdentifiers:v5 error:v6];
        }

        v9 = [v7 countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v9);
    }

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v12 = [*(a1 + 128) allKeys];
    v13 = [v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v25;
      do
      {
        for (j = 0; j != v14; ++j)
        {
          if (*v25 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v24 + 1) + 8 * j);
          v18 = [*(a1 + 128) objectForKeyedSubscript:v17];
          v19 = v18;
          if (v18)
          {
            v18 = v18[1];
          }

          v20 = [v18 sessionIdentifier];

          if ([v5 containsObject:v20])
          {
            [*(a1 + 128) removeObjectForKey:v17];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
      }

      while (v14);
    }

    v4 = v23;
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)beginAuthorizationDelegateTransactionWithSessionIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __96__HDAuthorizationManager_beginAuthorizationDelegateTransactionWithSessionIdentifier_completion___block_invoke;
  block[3] = &unk_278614160;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

void __96__HDAuthorizationManager_beginAuthorizationDelegateTransactionWithSessionIdentifier_completion___block_invoke(uint64_t a1)
{
  v42[2] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  v3 = *(a1 + 40);
  v4 = v2;
  if (v1)
  {
    v5 = [*(v1 + 104) objectForKeyedSubscript:v3];
    if (v5)
    {
      _HKInitializeLogging();
      v6 = HKLogAuthorization();
      v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);

      if (v7)
      {
        v8 = HKLogAuthorization();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          *&buf[4] = v3;
          _os_log_impl(&dword_228986000, v8, OS_LOG_TYPE_INFO, "Beginning prompt session: %@", buf, 0xCu);
        }
      }

      v9 = v4;
      v10 = v9;
      if (v5[32] == 1)
      {
        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = __76___HDObjectAuthorizationPromptSession_beginPromptTransactionWithCompletion___block_invoke;
        v40 = &unk_278613658;
        v11 = &v41;
        v41 = v9;
      }

      else
      {
        v5[32] = 1;
        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = __76___HDObjectAuthorizationPromptSession_beginPromptTransactionWithCompletion___block_invoke_2;
        v40 = &unk_278614008;
        v11 = v42;
        v18 = v9;
        v41 = v5;
        v42[0] = v18;
      }

      HKDispatchAsyncOnGlobalConcurrentQueue();

LABEL_36:
      goto LABEL_37;
    }

    os_unfair_lock_lock((v1 + 40));
    v10 = [*(v1 + 120) objectForKeyedSubscript:v3];
    os_unfair_lock_unlock((v1 + 40));
    if (v10)
    {
      _HKInitializeLogging();
      v12 = HKLogAuthorization();
      v13 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);

      if (v13)
      {
        v14 = HKLogAuthorization();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          *&buf[4] = v3;
          _os_log_impl(&dword_228986000, v14, OS_LOG_TYPE_INFO, "Beginning prompt session: %@", buf, 0xCu);
        }
      }

      v15 = v4;
      v16 = v15;
      if (v10[32] == 1)
      {
        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = __83___HDHealthConceptAuthorizationPromptSession_beginPromptTransactionWithCompletion___block_invoke;
        v40 = &unk_278613658;
        v17 = &v41;
        v41 = v15;
      }

      else
      {
        v10[32] = 1;
        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = __83___HDHealthConceptAuthorizationPromptSession_beginPromptTransactionWithCompletion___block_invoke_2;
        v40 = &unk_278614008;
        v17 = v42;
        v26 = v15;
        v41 = v10;
        v42[0] = v26;
      }

      HKDispatchAsyncOnGlobalConcurrentQueue();

      goto LABEL_36;
    }

    v19 = *(v1 + 88);
    v20 = v19;
    if (v19)
    {
      v21 = v19[8];
      if (v21)
      {
        v22 = v21;
        if ([v21 isEqual:v3])
        {
          if (!*(v20 + 64) || *(v20 + 24) != 1)
          {
            v29 = [*(v20 + 56) bundleIdentifier];
            if (!*(v20 + 64))
            {
              v34 = [MEMORY[0x277CCA890] currentHandler];
              [v34 handleFailureInMethod:sel_beginTransaction object:v20 file:@"HDAuthorizationManager.m" lineNumber:2425 description:{@"Invalid parameter not satisfying: %@", @"_promptSessionIdentifier != nil"}];
            }

            if (*(v20 + 24) == 1)
            {
              v35 = [MEMORY[0x277CCA890] currentHandler];
              [v35 handleFailureInMethod:sel_beginTransaction object:v20 file:@"HDAuthorizationManager.m" lineNumber:2426 description:{@"Invalid parameter not satisfying: %@", @"!_inTransaction"}];
            }

            *(v20 + 24) = 1;
            [(_HDAuthorizationRequestGroup *)v20 _cancelTimeoutSource];
            _HKInitializeLogging();
            v31 = HKLogAuthorization();
            v32 = os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG);

            if (v32)
            {
              v33 = HKLogAuthorization();
              if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412546;
                *&buf[4] = v29;
                *&buf[12] = 2112;
                *&buf[14] = v3;
                _os_log_debug_impl(&dword_228986000, v33, OS_LOG_TYPE_DEBUG, "beginning authorization transaction for %@ (%@)", buf, 0x16u);
              }
            }

            v27 = 0;
            if (v29)
            {
              goto LABEL_33;
            }

            goto LABEL_30;
          }

          v23 = MEMORY[0x277CCA9B8];
          v24 = objc_opt_class();
          v25 = @"There is already an active authorization session transaction";
        }

        else
        {
          v23 = MEMORY[0x277CCA9B8];
          v24 = objc_opt_class();
          v25 = @"Session identifier does not match active authorization session identifier";
        }

        v27 = [v23 hk_errorForInvalidArgument:@"@" class:v24 selector:sel__queue_beginAuthorizationDelegateTransactionWithSessionIdentifier_completion_ format:v25];
LABEL_30:
        _HKInitializeLogging();
        v28 = HKLogAuthorization();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          *&buf[4] = v27;
          _os_log_error_impl(&dword_228986000, v28, OS_LOG_TYPE_ERROR, "cannot begin authorization transaction: %{public}@", buf, 0xCu);
        }

        v29 = 0;
LABEL_33:
        if (v4)
        {
          (*(v4 + 2))(v4, v29, v27);
        }

        goto LABEL_36;
      }

      v27 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:sel__queue_beginAuthorizationDelegateTransactionWithSessionIdentifier_completion_ format:@"There is no active authorization session"];
    }

    else
    {
      v36 = MEMORY[0x277CCA9B8];
      v37 = objc_opt_class();
      v38 = [v3 UUIDString];
      v27 = [v36 hk_errorForInvalidArgument:@"@" class:v37 selector:sel__queue_beginAuthorizationDelegateTransactionWithSessionIdentifier_completion_ format:{@"Failed to find authorization session with identifier %@", v38}];
    }

    v22 = 0;
    goto LABEL_30;
  }

LABEL_37:

  v30 = *MEMORY[0x277D85DE8];
}

- (void)endAuthorizationDelegateTransactionWithSessionIdentifier:(id)a3 error:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"HDAuthorizationManager.m" lineNumber:525 description:{@"Invalid parameter not satisfying: %@", @"sessionIdentifier != nil"}];
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __89__HDAuthorizationManager_endAuthorizationDelegateTransactionWithSessionIdentifier_error___block_invoke;
  block[3] = &unk_278613830;
  block[4] = self;
  v14 = v7;
  v15 = v8;
  v10 = v8;
  v11 = v7;
  dispatch_async(queue, block);
}

void __89__HDAuthorizationManager_endAuthorizationDelegateTransactionWithSessionIdentifier_error___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  v3 = *(a1 + 40);
  v4 = v2;
  if (v1)
  {
    v5 = [*(v1 + 104) objectForKeyedSubscript:v3];
    if (v5)
    {
      _HKInitializeLogging();
      v6 = HKLogAuthorization();
      v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);

      if (v7)
      {
        v8 = HKLogAuthorization();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          v25 = 138412290;
          v26 = v3;
          _os_log_impl(&dword_228986000, v8, OS_LOG_TYPE_INFO, "Ending prompt session: %@", &v25, 0xCu);
        }
      }

      [(_HDObjectAuthorizationPromptSession *)v5 endPromptTransactionWithSuccess:v4 error:?];
    }

    else
    {
      os_unfair_lock_lock((v1 + 40));
      v9 = [*(v1 + 120) objectForKeyedSubscript:v3];
      os_unfair_lock_unlock((v1 + 40));
      if (v9)
      {
        _HKInitializeLogging();
        v10 = HKLogAuthorization();
        v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);

        if (v11)
        {
          v12 = HKLogAuthorization();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            v25 = 138412290;
            v26 = v3;
            _os_log_impl(&dword_228986000, v12, OS_LOG_TYPE_INFO, "Ending prompt session: %@", &v25, 0xCu);
          }
        }

        [(_HDHealthConceptAuthorizationPromptSession *)v9 endPromptTransactionWithSuccess:v4 error:?];
      }

      else
      {
        v13 = *(v1 + 88);
        v14 = v13;
        if (v13)
        {
          v13 = v13[8];
        }

        v15 = [v13 isEqual:v3];
        if (v14)
        {
          v16 = v15;
        }

        else
        {
          v16 = 0;
        }

        if (v14 && v14[8] && (v16 & v14[3]) == 1)
        {
          _HKInitializeLogging();
          v17 = HKLogAuthorization();
          v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG);

          if (v18)
          {
            v19 = HKLogAuthorization();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
            {
              v23 = [(_HDAuthorizationRequestGroup *)v14 bundleIdentifier];
              v24 = [v3 UUIDString];
              v25 = 138412546;
              v26 = v23;
              v27 = 2112;
              v28 = v24;
              _os_log_debug_impl(&dword_228986000, v19, OS_LOG_TYPE_DEBUG, "ending authorization transaction for %@ (%@)", &v25, 0x16u);
            }
          }

          [(HDAuthorizationManager *)v1 _queue_requestGroupDidFinishPrompting:v14 error:v4];
        }

        else
        {
          _HKInitializeLogging();
          v20 = HKLogAuthorization();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            v22 = [v3 UUIDString];
            v25 = 138412290;
            v26 = v22;
            _os_log_error_impl(&dword_228986000, v20, OS_LOG_TYPE_ERROR, "cannot end transaction %@", &v25, 0xCu);
          }
        }
      }
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)resetAllAuthorizationRecordsWithCompletion:(id)a3
{
  v4 = a3;
  _HKInitializeLogging();
  v5 = HKLogAuthorization();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_228986000, v5, OS_LOG_TYPE_DEFAULT, "Resetting all authorization records", buf, 2u);
  }

  v6 = [(HKDaemonTransaction *)HDDaemonTransaction transactionWithOwner:self activityName:@"ResetAllAuthorizationRecords"];
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__HDAuthorizationManager_resetAllAuthorizationRecordsWithCompletion___block_invoke;
  block[3] = &unk_278616D18;
  v11 = v6;
  v12 = v4;
  block[4] = self;
  v8 = v6;
  v9 = v4;
  dispatch_async(queue, block);
}

void __69__HDAuthorizationManager_resetAllAuthorizationRecordsWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __69__HDAuthorizationManager_resetAllAuthorizationRecordsWithCompletion___block_invoke_2;
  v13 = &unk_278616CC8;
  v15 = *(a1 + 48);
  v14 = *(a1 + 40);
  v3 = &v10;
  if (v2)
  {
    WeakRetained = objc_loadWeakRetained((v2 + 48));
    v17 = 0;
    v5 = [HDAuthorizationEntity resetAllAuthorizationStatusesWithProfile:WeakRetained error:&v17, v10, v11];
    v6 = v17;

    if (v5)
    {
      v7 = objc_loadWeakRetained((v2 + 48));
      v16 = v6;
      v8 = [HDObjectAuthorizationEntity resetAllObjectAuthorizationRecordsForProfile:v7 error:&v16];
      v9 = v16;

      v6 = v9;
    }

    else
    {
      v8 = 0;
    }

    v12(v3, v8, v6);
  }
}

void __69__HDAuthorizationManager_resetAllAuthorizationRecordsWithCompletion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v6 = HKLogAuthorization();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v9 = 138543362;
      v10 = v5;
      _os_log_error_impl(&dword_228986000, v6, OS_LOG_TYPE_ERROR, "Failed to reset all authorization settings: %{public}@", &v9, 0xCu);
    }
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, a2, v5);
  }

  [*(a1 + 32) invalidate];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)openAppForAuthorization:(id)a3 sessionIdentifier:(id)a4 completion:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [MEMORY[0x277CC1E60] applicationProxyForIdentifier:v9 placeholder:0];
  if (v12)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __79__HDAuthorizationManager_openAppForAuthorization_sessionIdentifier_completion___block_invoke;
    block[3] = &unk_278621AA0;
    block[4] = self;
    v16 = v9;
    v19 = v11;
    v17 = v12;
    v18 = v10;
    dispatch_async(queue, block);
  }

  else
  {
    v14 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:@"No app with the requested bundle identifier."];
    (*(v11 + 2))(v11, 0, v14);
  }
}

void __79__HDAuthorizationManager_openAppForAuthorization_sessionIdentifier_completion___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  if (!v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v4 = *(a1 + 32);
    v5 = *(v4 + 16);
    *(v4 + 16) = v3;

    v2 = *(*(a1 + 32) + 16);
  }

  v6 = [v2 objectForKeyedSubscript:*(a1 + 40)];
  v7 = v6;
  if (!v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [*(*(a1 + 32) + 16) setObject:v7 forKeyedSubscript:*(a1 + 40)];
  }

  v8 = *(a1 + 64);
  if (v8)
  {
    v9 = [v8 copy];
    v10 = _Block_copy(v9);
    [v7 addObject:v10];
  }

  if (!v6)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __79__HDAuthorizationManager_openAppForAuthorization_sessionIdentifier_completion___block_invoke_2;
    aBlock[3] = &unk_278613630;
    v11 = *(a1 + 40);
    aBlock[4] = *(a1 + 32);
    v39 = v11;
    v40 = v7;
    v33 = _Block_copy(aBlock);
    v12 = [*(a1 + 48) localizedName];
    v13 = v12;
    if (!v12)
    {
      v13 = *(a1 + 40);
    }

    v14 = v13;

    v15 = objc_alloc_init(MEMORY[0x277D10BC0]);
    v16 = MEMORY[0x277CCACA8];
    v17 = HKHealthKitFrameworkBundle();
    v18 = *MEMORY[0x277CCC1C8];
    v19 = [v17 localizedStringForKey:@"OPEN_%@_TITLE" value:&stru_283BF39C8 table:*MEMORY[0x277CCC1C8]];
    v20 = [v16 stringWithFormat:v19, v14];
    [v15 setTitle:v20];

    v21 = MEMORY[0x277CCACA8];
    v22 = HKHealthKitFrameworkBundle();
    v23 = [v22 localizedStringForKey:@"OPEN_%@_DESCRIPTION" value:&stru_283BF39C8 table:v18];
    v24 = [v21 stringWithFormat:v23, v14];
    [v15 setMessage:v24];

    v25 = MEMORY[0x277CCACA8];
    v26 = HKHealthKitFrameworkBundle();
    v27 = [v26 localizedStringForKey:@"OPEN_%@" value:&stru_283BF39C8 table:v18];
    v28 = [v25 stringWithFormat:v27, v14];
    [v15 setDefaultButton:v28];

    v29 = HKHealthKitFrameworkBundle();
    v30 = [v29 localizedStringForKey:@"NOT_NOW" value:&stru_283BF39C8 table:v18];
    [v15 setCancelButton:v30];

    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __79__HDAuthorizationManager_openAppForAuthorization_sessionIdentifier_completion___block_invoke_4;
    v34[3] = &unk_278621AC8;
    v31 = *(a1 + 40);
    v34[4] = *(a1 + 32);
    v35 = v31;
    v37 = v33;
    v36 = *(a1 + 56);
    v32 = v33;
    [v15 presentWithResponseHandler:v34];
  }
}

void __79__HDAuthorizationManager_openAppForAuthorization_sessionIdentifier_completion___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(v7 + 56);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79__HDAuthorizationManager_openAppForAuthorization_sessionIdentifier_completion___block_invoke_3;
  block[3] = &unk_278617B08;
  block[4] = v7;
  v12 = v6;
  v9 = *(a1 + 48);
  v15 = a2;
  v13 = v9;
  v14 = v5;
  v10 = v5;
  dispatch_async(v8, block);
}

uint64_t __79__HDAuthorizationManager_openAppForAuthorization_sessionIdentifier_completion___block_invoke_3(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  [*(*(a1 + 32) + 16) removeObjectForKey:*(a1 + 40)];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(a1 + 48);
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(a1 + 64);
        v8 = *(a1 + 56);
        (*(*(*(&v11 + 1) + 8 * v6) + 16))(*(*(&v11 + 1) + 8 * v6));
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  result = [*(a1 + 48) removeAllObjects];
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void __79__HDAuthorizationManager_openAppForAuthorization_sessionIdentifier_completion___block_invoke_4(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v32[1] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a4;
  if (a3)
  {
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v26 = 0;
    v27 = &v26;
    v28 = 0x2050000000;
    v9 = _MergedGlobals_203;
    v29 = _MergedGlobals_203;
    if (!_MergedGlobals_203)
    {
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __getUIHealthAuthorizationActionClass_block_invoke;
      v25[3] = &unk_278616E90;
      v25[4] = &v26;
      __getUIHealthAuthorizationActionClass_block_invoke(v25);
      v9 = v27[3];
    }

    v10 = v9;
    _Block_object_dispose(&v26, 8);
    if (v9)
    {
      v11 = objc_alloc_init(v9);
      v12 = *MEMORY[0x277D0ABD0];
      v30 = v11;
      v31 = v12;
      v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:1];
      v32[0] = v13;
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:&v31 count:1];
    }

    v14 = *(*(a1 + 32) + 56);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __79__HDAuthorizationManager_openAppForAuthorization_sessionIdentifier_completion___block_invoke_5;
    v19[3] = &unk_278621AA0;
    v20 = *(a1 + 40);
    v21 = v9;
    v24 = *(a1 + 56);
    v15 = *(a1 + 48);
    v16 = *(a1 + 32);
    v22 = v15;
    v23 = v16;
    v17 = v9;
    dispatch_async(v14, v19);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __79__HDAuthorizationManager_openAppForAuthorization_sessionIdentifier_completion___block_invoke_5(uint64_t a1)
{
  v2 = MEMORY[0x277D0AD78];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __79__HDAuthorizationManager_openAppForAuthorization_sessionIdentifier_completion___block_invoke_6;
  v7[3] = &unk_278621A78;
  v11 = *(a1 + 64);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v8 = v5;
  v9 = v6;
  v10 = *(a1 + 32);
  [v2 hd_openApplication:v3 optionsDictionary:v4 completion:v7];
}

void __79__HDAuthorizationManager_openAppForAuthorization_sessionIdentifier_completion___block_invoke_6(uint64_t a1, uint64_t a2)
{
  (*(*(a1 + 56) + 16))(*(a1 + 56), a2 != 0);
  if (*(a1 + 32))
  {
    v3 = dispatch_time(0, 30000000000);
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = *(v5 + 56);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __79__HDAuthorizationManager_openAppForAuthorization_sessionIdentifier_completion___block_invoke_7;
    block[3] = &unk_278613830;
    block[4] = v5;
    v8 = v4;
    v9 = *(a1 + 48);
    dispatch_after(v3, v6, block);
  }
}

void __79__HDAuthorizationManager_openAppForAuthorization_sessionIdentifier_completion___block_invoke_7(void *a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v8[0] = a1[5];
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  [(HDAuthorizationManager *)v2 _queue_cancelAuthorizationRequestsWithIdentifiers:v3];

  v4 = [MEMORY[0x277CCA9B8] hk_error:100 description:@"Application failed to prompt for authorization in a timely fashion."];
  v5 = [*(a1[4] + 72) objectForKeyedSubscript:a1[6]];
  v6 = [MEMORY[0x277CBEB98] setWithObject:a1[5]];
  [(_HDAuthorizationRequestGroup *)v5 cancelRequestsWithIdentifiers:v6 error:v4];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)applicationsUninstalledNotification:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"HDHealthDaemonApplicationsUninstalledBundleIdentifiersKey"];

  v6 = [(HKDaemonTransaction *)HDDaemonTransaction transactionWithOwner:self activityName:@"ApplicationsUninstalled"];
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__HDAuthorizationManager_applicationsUninstalledNotification___block_invoke;
  block[3] = &unk_278613830;
  v11 = v5;
  v12 = self;
  v13 = v6;
  v8 = v6;
  v9 = v5;
  dispatch_async(queue, block);
}

uint64_t __62__HDAuthorizationManager_applicationsUninstalledNotification___block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v27;
    do
    {
      v5 = 0;
      do
      {
        if (*v27 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v26 + 1) + 8 * v5);
        v7 = *(a1 + 40);
        v25 = 0;
        if (v7)
        {
          v8 = v6;
          WeakRetained = objc_loadWeakRetained((v7 + 48));
          v10 = [HDAuthorizationEntity resetAuthorizationStatusesForBundleIdentifier:v8 profile:WeakRetained error:&v25];

          v11 = @"Authorization reset";
          v12 = objc_loadWeakRetained((v7 + 48));
          v13 = [v12 nanoSyncManager];
          [v13 syncHealthDataWithOptions:0 reason:@"Authorization reset" completion:0];

          v14 = v8;
          v15 = objc_loadWeakRetained((v7 + 48));
          v16 = [v15 daemon];
          v17 = [v16 xpcEventManager];
          [v17 authorizationChangedForBundleIdentifier:v14];

          v18 = v25;
          v19 = v18;
          if (v10)
          {
            _HKInitializeLogging();
            v20 = HKLogAuthorization();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v31 = v14;
              _os_log_impl(&dword_228986000, v20, OS_LOG_TYPE_DEFAULT, "Reset authorization records for uninstalled application %@", buf, 0xCu);
            }

LABEL_14:

            goto LABEL_15;
          }

          if (v18 && (HKIsUnitTesting() & 1) == 0)
          {
            _HKInitializeLogging();
            v20 = HKLogAuthorization();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v31 = v14;
              v32 = 2114;
              v33 = v19;
              _os_log_error_impl(&dword_228986000, v20, OS_LOG_TYPE_ERROR, "Error resetting authorization records for uninstalled application %@: %{public}@", buf, 0x16u);
            }

            goto LABEL_14;
          }
        }

        else
        {
          v19 = 0;
        }

LABEL_15:

        ++v5;
      }

      while (v3 != v5);
      v21 = [obj countByEnumeratingWithState:&v26 objects:v34 count:16];
      v3 = v21;
    }

    while (v21);
  }

  result = [*(a1 + 48) invalidate];
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)daemonReady:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_observationQueue);
  v4 = [(HDAuthorizationManager *)self _builtInSchemas];
  v5 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:v4];
  schemaProviderMap = self->_schemaProviderMap;
  self->_schemaProviderMap = v5;

  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v8 = [WeakRetained daemon];

  v9 = [v8 pluginManager];
  v10 = [v9 pluginsConformingToProtocol:&unk_283D713D8];
  v11 = [v10 allValues];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = v11;
  v13 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      v16 = 0;
      do
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v19 + 1) + 8 * v16) schemaProviderMap];
        [(NSMutableDictionary *)self->_schemaProviderMap hk_addEntriesFromNonNilDictionary:v17];

        ++v16;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v14);
  }

  v18 = *MEMORY[0x277D85DE8];
}

uint64_t __134__HDAuthorizationManager__authorizationRequestStatusForClientBundleIdentifier_writeTypes_readTypes_updateAuthorizationStatuses_error___block_invoke(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v75 = *MEMORY[0x277D85DE8];
  v4 = a1[4];
  v5 = a1[5];
  WeakRetained = objc_loadWeakRetained((a1[6] + 48));
  v7 = [HDAuthorizationEntity readAuthorizationStatusesByTypeForBundleIdentifier:v4 types:v5 profile:WeakRetained error:a3];

  if (!v7)
  {
    v47 = 0;
    goto LABEL_69;
  }

  v8 = a1;
  if (![v7 count])
  {
    *(*(a1[10] + 8) + 24) = 1;
    if ([MEMORY[0x277CCDD30] isAppleInternalInstall])
    {
      _HKInitializeLogging();
      v9 = HKLogAuthorization();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_228986000, v9, OS_LOG_TYPE_DEFAULT, "Authorization required. There are no authorization statuses", buf, 2u);
      }
    }
  }

  v52 = a3;
  v57 = [MEMORY[0x277CBEB38] dictionary];
  v56 = [MEMORY[0x277CBEB38] dictionary];
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  obj = a1[5];
  v59 = [obj countByEnumeratingWithState:&v62 objects:v74 count:16];
  if (v59)
  {
    v58 = *v63;
    v54 = v7;
    do
    {
      for (i = 0; i != v59; ++i)
      {
        if (*v63 != v58)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v62 + 1) + 8 * i);
        v12 = [v7 objectForKeyedSubscript:v11];
        v13 = [v12 authorizationRecord];
        v14 = [v8[7] containsObject:v11];
        v15 = [v8[8] containsObject:v11];
        if ([v13 readingEnabled] && objc_msgSend(v13, "mode") == 1)
        {
          v16 = [v12 objectLimitAnchor];
          [v8[9] setObject:v16 forKeyedSubscript:v11];
        }

        v17 = [v11 parentType];

        if (!v17)
        {
          goto LABEL_45;
        }

        v18 = [v11 parentType];
        v19 = [v7 objectForKeyedSubscript:v18];

        v61 = v12;
        v20 = [v12 authorizationRecord];
        v60 = v19;
        v21 = [v19 authorizationRecord];
        v22 = v20;
        v23 = [v22 readingEnabled];
        v24 = [v22 sharingEnabled];

        if (v15)
        {
          v25 = [v21 deniedReading];
          v26 = v25;
          if ((v14 & 1) == 0)
          {
            if (v25)
            {
              v29 = 102;
              v28 = 104;
LABEL_29:
              if (v24)
              {
                v30 = v29;
              }

              else
              {
                v30 = v28;
              }

              v31 = 201;
              if ((v14 & v15) != 0)
              {
                v31 = 203;
              }

              v32 = 200;
              if (v15)
              {
                v32 = 202;
              }

              if (v14)
              {
                v33 = v31;
              }

              else
              {
                v33 = v32;
              }

              v26 = 1;
              goto LABEL_42;
            }

            goto LABEL_40;
          }

          v23 &= v25 ^ 1;
        }

        else
        {
          v26 = 0;
          if (!v14)
          {
            v30 = 0;
            v33 = 0;
            goto LABEL_42;
          }
        }

        v27 = [v21 deniedSharing];
        if (v27 & 1) != 0 || (v26)
        {
          v24 &= v27 ^ 1;
          v28 = 103;
          if ((v23 & 1) == 0)
          {
            v28 = 104;
          }

          v29 = 101;
          if ((v23 & 1 & v24) == 0)
          {
            v29 = 102;
          }

          goto LABEL_29;
        }

LABEL_40:
        v30 = 0;
        v33 = 0;
        v26 = 0;
LABEL_42:

        *(*(a1[11] + 8) + 24) = v26;
        v8 = a1;

        if (*(*(a1[11] + 8) + 24) == 1)
        {
          v34 = [MEMORY[0x277CCABB0] numberWithInteger:v30];
          [v57 setObject:v34 forKeyedSubscript:v11];

          v35 = [MEMORY[0x277CCABB0] numberWithInteger:v33];
          [v56 setObject:v35 forKeyedSubscript:v11];

          v7 = v54;
          v36 = v60;
          v12 = v61;
LABEL_58:

          goto LABEL_59;
        }

        v7 = v54;
        v12 = v61;
LABEL_45:
        v37 = [v13 requestedSharing];
        v38 = [v13 requestedReading];
        if (!(v37 & 1 | ((v14 & 1) == 0)) || ((v15 ^ 1 | v38) & 1) == 0 || ([v12 isAuthorizationDetermined] & 1) == 0)
        {
          v39 = 201;
          if ((v14 & v15) != 0)
          {
            v39 = 203;
          }

          v40 = 200;
          if (v15)
          {
            v40 = 202;
          }

          v41 = v14 ? v39 : v40;
          [v57 setObject:&unk_283CB2520 forKeyedSubscript:v11];
          v42 = [MEMORY[0x277CCABB0] numberWithInteger:v41];
          [v56 setObject:v42 forKeyedSubscript:v11];

          *(*(v8[10] + 8) + 24) = 1;
          if ([MEMORY[0x277CCDD30] isAppleInternalInstall])
          {
            _HKInitializeLogging();
            v36 = HKLogAuthorization();
            if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
            {
              v43 = [v12 isAuthorizationDetermined];
              *buf = 138413058;
              v67 = v11;
              v68 = 1024;
              v69 = v14;
              v70 = 1024;
              v71 = v15;
              v72 = 1024;
              v73 = v43;
              _os_log_impl(&dword_228986000, v36, OS_LOG_TYPE_DEFAULT, "Authorization required. Type: %@, ReqWrite: %i, ReqRead: %i, AuthNotDetermined: %i", buf, 0x1Eu);
            }

            goto LABEL_58;
          }
        }

LABEL_59:
      }

      v59 = [obj countByEnumeratingWithState:&v62 objects:v74 count:16];
    }

    while (v59);
  }

  if ((*(*(v8[10] + 8) + 24) & 1) == 0 && *(*(v8[11] + 8) + 24) != 1 || *(v8 + 96) != 1)
  {
LABEL_66:
    v47 = 1;
    goto LABEL_67;
  }

  v44 = v8;
  v45 = objc_loadWeakRetained((v8[6] + 48));
  v46 = [v45 sourceManager];
  v47 = [v46 localSourceForBundleIdentifier:v44[4] copyIfNecessary:1 error:v52];

  if (v47)
  {
    v48 = objc_loadWeakRetained((v44[6] + 48));
    v49 = [HDAuthorizationEntity setAuthorizationStatuses:v57 authorizationRequests:v56 authorizationModes:MEMORY[0x277CBEC10] sourceEntity:v47 options:0 profile:v48 error:v52];

    if (!v49)
    {
      v47 = 0;
      goto LABEL_67;
    }

    goto LABEL_66;
  }

LABEL_67:

LABEL_69:
  v50 = *MEMORY[0x277D85DE8];
  return v47;
}

BOOL __134__HDAuthorizationManager__authorizationRequestStatusForClientBundleIdentifier_writeTypes_readTypes_updateAuthorizationStatuses_error___block_invoke_401(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = *(a1 + 32);
  v5 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v21 + 1) + 8 * i);
        WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 48));
        v11 = [HDSampleEntity maxAnchorForSamplesWithType:v9 profile:WeakRetained error:a3];

        v12 = v11 != 0;
        if (!v11)
        {
          goto LABEL_16;
        }

        v13 = [v11 longLongValue];
        v14 = [*(a1 + 32) objectForKeyedSubscript:v9];
        v15 = [v14 longLongValue];

        if (v13 > v15)
        {
          *(*(*(a1 + 48) + 8) + 24) = 1;
          if ([MEMORY[0x277CCDD30] isAppleInternalInstall])
          {
            _HKInitializeLogging();
            v16 = HKLogAuthorization();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_228986000, v16, OS_LOG_TYPE_DEFAULT, "Authorization required. Re-authorization for anchor-limited authorization", buf, 2u);
            }
          }

LABEL_16:

          goto LABEL_17;
        }
      }

      v6 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
      v12 = 1;
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v12 = 1;
  }

LABEL_17:

  v17 = *MEMORY[0x277D85DE8];
  return v12;
}

void __68__HDAuthorizationManager__queue_handleNextAuthorizationRequestGroup__block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((v6 + 48));
    v8 = [WeakRetained daemon];
    v9 = [v8 analyticsSubmissionCoordinator];
    v10 = *(a1 + 48);
    v11 = objc_loadWeakRetained((*(a1 + 32) + 48));
    [v9 authorization_reportAuthRequestPromptedForBundleIdentifer:v10 profileType:{objc_msgSend(v11, "profileType")}];
  }

  else
  {
    v12 = *(v6 + 56);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __68__HDAuthorizationManager__queue_handleNextAuthorizationRequestGroup__block_invoke_2;
    block[3] = &unk_278613830;
    block[4] = v6;
    v14 = *(a1 + 40);
    v15 = v5;
    dispatch_async(v12, block);
  }
}

- (void)_queue_requestGroupDidFinishPrompting:(void *)a3 error:
{
  v55 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!a1)
  {
    goto LABEL_47;
  }

  if (v5)
  {
    if (v6)
    {
      goto LABEL_23;
    }

    v8 = *(v5 + 7);
  }

  else
  {
    v39 = [MEMORY[0x277CCA890] currentHandler];
    [v39 handleFailureInMethod:sel__queue_requestGroupDidFinishPrompting_error_ object:a1 file:@"HDAuthorizationManager.m" lineNumber:1015 description:{@"Invalid parameter not satisfying: %@", @"requestGroup != nil"}];

    if (v7)
    {
LABEL_23:
      _HKInitializeLogging();
      v21 = HKLogAuthorization();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v52 = v7;
        _os_log_error_impl(&dword_228986000, v21, OS_LOG_TYPE_ERROR, "authorization request failed with error: %{public}@", buf, 0xCu);
      }

      goto LABEL_25;
    }

    v8 = 0;
  }

  v9 = v8;
  v50[0] = 0;
  v10 = [v9 _fetchBundleWithError:v50];
  v11 = v50[0];
  if (!v10)
  {
    _HKInitializeLogging();
    v13 = HKLogAuthorization();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v38 = [v9 bundleIdentifier];
      *buf = 138543618;
      v52 = v38;
      v53 = 2114;
      v54 = v11;
      _os_log_error_impl(&dword_228986000, v13, OS_LOG_TYPE_ERROR, "Failed to look up bundle for %{public}@: %{public}@", buf, 0x16u);
    }

    goto LABEL_13;
  }

  v12 = *MEMORY[0x277CCCD18];
  v13 = [v10 objectForInfoDictionaryKey:*MEMORY[0x277CCCD18]];
  if (!v13)
  {
LABEL_13:
    v7 = 0;
    goto LABEL_22;
  }

  *&v46 = v11;
  v14 = [MEMORY[0x277CCD720] _objectTypesFromIdentifierArray:v13 error:&v46];
  v15 = v46;

  if (v14)
  {
    if (![v14 count])
    {
      v7 = 0;
      goto LABEL_21;
    }

    v16 = [v14 count];
    if (v16 >= *MEMORY[0x277CCC568])
    {
      v18 = [(_HDAuthorizationRequestGroup *)v5 bundleIdentifier];
      *&v42 = v15;
      v40 = [a1 _hasRequiredAuthorizationStatusesForBundleIdentifier:v18 requiredReadTypes:v14 error:&v42];
      v19 = v42;

      if (v40)
      {
        v20 = 0;
      }

      else
      {
        v20 = v19;
      }

      v7 = v20;
      v15 = v19;
      goto LABEL_21;
    }

    v17 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:sel__validateRequiredAuthorizationWithRequestGroup_ format:{@"Must specify at least %lu identifiers for %@", *MEMORY[0x277CCC568], v12}];
  }

  else
  {
    v17 = v15;
    v15 = v17;
  }

  v7 = v17;
LABEL_21:

  v11 = v15;
LABEL_22:

  if (v7)
  {
    goto LABEL_23;
  }

  _HKInitializeLogging();
  v36 = HKLogAuthorization();
  v37 = os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG);

  if (!v37)
  {
    v7 = 0;
    goto LABEL_26;
  }

  v21 = HKLogAuthorization();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_228986000, v21, OS_LOG_TYPE_DEBUG, "authorization request finished successfully", buf, 2u);
  }

  v7 = 0;
LABEL_25:

LABEL_26:
  v7 = v7;
  if (v5)
  {
    if (v5[8])
    {
      [(_HDAuthorizationRequestGroup *)v5 _cancelTimeoutSource];
      *(v5 + 24) = 0;
    }

    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v22 = v5[4];
    v23 = [v22 countByEnumeratingWithState:&v46 objects:buf count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v47;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v47 != v25)
          {
            objc_enumerationMutation(v22);
          }

          [(_HDAuthorizationRequest *)*(*(&v46 + 1) + 8 * i) invokeCompletionHandlerWithSuccess:v7 error:?];
        }

        v24 = [v22 countByEnumeratingWithState:&v46 objects:buf count:16];
      }

      while (v24);
    }

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v27 = v5[5];
    v28 = [v27 countByEnumeratingWithState:&v42 objects:v50 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v43;
      do
      {
        for (j = 0; j != v29; ++j)
        {
          if (*v43 != v30)
          {
            objc_enumerationMutation(v27);
          }

          (*(*(*(&v42 + 1) + 8 * j) + 16))();
        }

        v29 = [v27 countByEnumeratingWithState:&v42 objects:v50 count:16];
      }

      while (v29);
    }

    v32 = v5[5];
    v5[5] = 0;
  }

  v33 = a1[11];
  if (v33 == v5)
  {
    a1[11] = 0;
  }

  v34 = a1[7];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__HDAuthorizationManager__queue_requestGroupDidFinishPrompting_error___block_invoke;
  block[3] = &unk_278613968;
  block[4] = a1;
  dispatch_async(v34, block);
LABEL_47:

  v35 = *MEMORY[0x277D85DE8];
}

- (void)setObjectAuthorizationStatusContext:(id)a3 forObjectType:(id)a4 bundleIdentifier:(id)a5 completion:(id)a6
{
  v75 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(HDAuthorizationManager *)self _schemaProviderForType:v11];
  if (objc_opt_respondsToSelector())
  {
    if (self)
    {
      WeakRetained = objc_loadWeakRetained(&self->_profile);
    }

    else
    {
      WeakRetained = 0;
    }

    v73 = 0;
    v16 = [v14 setObjectAuthorizationStatusContext:v10 forObjectType:v11 bundleIdentifier:v12 profile:WeakRetained error:&v73];
    v17 = v73;

    v13[2](v13, v16, v17);
  }

  else
  {
    if (self)
    {
      v18 = objc_loadWeakRetained(&self->_profile);
    }

    else
    {
      v18 = 0;
    }

    v19 = [v18 sourceManager];
    v72 = 0;
    v20 = [v19 localSourceForBundleIdentifier:v12 error:&v72];
    v17 = v72;

    if (v20)
    {
      v59 = v13;
      if (self)
      {
        v21 = objc_loadWeakRetained(&self->_profile);
      }

      else
      {
        v21 = 0;
      }

      v71 = v17;
      v22 = [v20 sourceUUIDWithProfile:v21 error:&v71];
      v23 = v71;

      v64 = v22;
      v58 = v20;
      if (v22)
      {
        v60 = self;
        v61 = v11;
        v56 = v14;
        v57 = v12;
        v63 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v24 = [v10 objectAuthorizationStatuses];
        v67 = 0u;
        v68 = 0u;
        v69 = 0u;
        v70 = 0u;
        v65 = [v24 countByEnumeratingWithState:&v67 objects:v74 count:16];
        if (v65)
        {
          v25 = @"HKHealthConceptDomainHealthKit";
          v26 = *v68;
          v27 = v23;
          v62 = *v68;
          do
          {
            for (i = 0; i != v65; ++i)
            {
              if (*v68 != v26)
              {
                objc_enumerationMutation(v24);
              }

              v29 = *(*(&v67 + 1) + 8 * i);
              v30 = [v29 domain];
              v31 = [v30 isEqualToString:v25];

              if (v31)
              {
                v32 = objc_alloc(MEMORY[0x277CCAD78]);
                v33 = [v29 underlyingIdentifier];
                v34 = [v32 initWithUUIDString:v33];

                v35 = objc_alloc(MEMORY[0x277CCD710]);
                v36 = [v10 sessionIdentifier];
                v37 = [v24 objectForKeyedSubscript:v29];
                v38 = v25;
                v39 = v24;
                v40 = v27;
                v41 = v10;
                v42 = HKObjectAuthorizationStatusForNumber();
                Current = CFAbsoluteTimeGetCurrent();
                v44 = v35;
                v45 = v34;
                v46 = v34;
                v47 = v36;
                v48 = v42;
                v10 = v41;
                v27 = v40;
                v24 = v39;
                v25 = v38;
                v26 = v62;
                v49 = [v44 initWithObjectUUID:v46 sourceUUID:v64 sessionUUID:v36 status:v48 modificationDate:Current];

                [v63 addObject:v49];
              }

              else if (!v27)
              {
                v27 = [MEMORY[0x277CCA9B8] hk_error:2000 format:{@"%@: Domain of the concept identifier does not match the right domain for the following object type %@:", objc_opt_class(), v61}];
              }
            }

            v65 = [v24 countByEnumeratingWithState:&v67 objects:v74 count:16];
          }

          while (v65);
        }

        else
        {
          v27 = v23;
        }

        v13 = v59;
        if (!v63 && v27)
        {
          v59[2](v59, 0, v27);
        }

        v50 = v27;
        if (v60)
        {
          v51 = objc_loadWeakRetained(&v60->_profile);
          v52 = [v51 currentSyncIdentityPersistentID];
          v53 = objc_loadWeakRetained(&v60->_profile);
        }

        else
        {
          v52 = [0 currentSyncIdentityPersistentID];
          v51 = 0;
          v53 = 0;
        }

        v66 = v27;
        v54 = [HDObjectAuthorizationEntity setObjectAuthorizationRecords:v63 syncProvenance:0 syncIdentity:v52 profile:v53 error:&v66];
        v17 = v66;

        v59[2](v59, v54, v17);
        v11 = v61;
        v14 = v56;
        v12 = v57;
      }

      else
      {
        v59[2](v59, 0, v23);
        v17 = v23;
        v13 = v59;
      }

      v20 = v58;
    }

    else
    {
      v13[2](v13, 0, v17);
    }
  }

  v55 = *MEMORY[0x277D85DE8];
}

- (id)enqueueObjectAuthorizationRequestForBundleIdentifier:(id)a3 context:(id)a4 promptIfNeeded:(BOOL)a5 authorizationNeededHandler:(id)a6 completion:(id)a7
{
  v87 = a5;
  v126 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v16 = [_HDObjectAuthorizationRequest alloc];
  v17 = [v13 samples];
  v18 = [v13 metadata];
  v19 = v17;
  v20 = v18;
  v21 = v15;
  if (v16)
  {
    v122.receiver = v16;
    v122.super_class = _HDObjectAuthorizationRequest;
    v16 = [(HDAuthorizationManager *)&v122 init];
    if (v16)
    {
      v22 = [MEMORY[0x277CCAD78] UUID];
      identifier = v16->_identifier;
      v16->_identifier = v22;

      v24 = [v19 copy];
      samples = v16->_samples;
      v16->_samples = v24;

      v26 = [v20 copy];
      metadata = v16->_metadata;
      v16->_metadata = v26;

      v28 = _Block_copy(v21);
      completion = v16->_completion;
      v16->_completion = v28;
    }
  }

  v30 = [v13 promptWithAllSamples];
  if (v16)
  {
    v16->_promptWithAllSamples = v30;
  }

  if (!v12)
  {
    v77 = [MEMORY[0x277CCA890] currentHandler];
    [v77 handleFailureInMethod:a2 object:self file:@"HDAuthorizationManager.m" lineNumber:1326 description:{@"Invalid parameter not satisfying: %@", @"bundleIdentifier != nil"}];

    completionQueue = self->_completionQueue;
    v119[0] = MEMORY[0x277D85DD0];
    v119[1] = 3221225472;
    v119[2] = __140__HDAuthorizationManager_enqueueObjectAuthorizationRequestForBundleIdentifier_context_promptIfNeeded_authorizationNeededHandler_completion___block_invoke;
    v119[3] = &unk_278614008;
    v121 = v21;
    v79 = v16;
    v120 = v79;
    dispatch_async(completionQueue, v119);
    if (v16)
    {
      v80 = v79->_identifier;
    }

    else
    {
      v80 = 0;
    }

    v47 = v80;

    v45 = v121;
    goto LABEL_55;
  }

  v90 = v14;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v32 = [WeakRetained sourceManager];
  v118 = 0;
  v91 = v12;
  v33 = [v32 localSourceForBundleIdentifier:v12 error:&v118];
  v34 = v118;

  if (!v33)
  {
    v43 = self->_completionQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __140__HDAuthorizationManager_enqueueObjectAuthorizationRequestForBundleIdentifier_context_promptIfNeeded_authorizationNeededHandler_completion___block_invoke_2;
    block[3] = &unk_278616488;
    v117 = v21;
    v44 = v16;
    v115 = v44;
    v45 = v34;
    v116 = v45;
    dispatch_async(v43, block);
    if (v16)
    {
      v46 = v44->_identifier;
    }

    else
    {
      v46 = 0;
    }

    v14 = v90;
    v47 = v46;

    v48 = v117;
    goto LABEL_54;
  }

  v89 = self;
  v86 = v21;
  v35 = [MEMORY[0x277CCAD78] UUID];
  v85 = v35;
  if ([v13 persistSession])
  {
    v36 = v35;
  }

  else
  {
    v36 = 0;
  }

  v38 = v36;
  if (v16)
  {
    objc_setProperty_nonatomic_copy(v16, v37, v38, 56);
  }

  v39 = [v13 samples];
  v40 = objc_loadWeakRetained(&v89->_profile);
  v113 = v34;
  v83 = v38;
  v41 = [HDObjectAuthorizationEntity authorizationRecordsForSamples:v39 sourceEntity:v33 sessionIdentifier:v38 profile:v40 error:&v113];
  v84 = v113;

  v42 = [v13 promptWithNoSamples];
  v88 = v41;
  if (![v13 promptWithAllSamples])
  {
    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v49 = v41;
    v50 = [v49 countByEnumeratingWithState:&v109 objects:v125 count:16];
    v14 = v90;
    if (v50)
    {
      v51 = v50;
      v81 = v33;
      v52 = *v110;
      while (2)
      {
        for (i = 0; i != v51; ++i)
        {
          if (*v110 != v52)
          {
            objc_enumerationMutation(v49);
          }

          if (![*(*(&v109 + 1) + 8 * i) status])
          {
            [(HDSmoothingTask *)v16 setTransaction:v49];
            v42 = 1;
            goto LABEL_29;
          }
        }

        v51 = [v49 countByEnumeratingWithState:&v109 objects:v125 count:16];
        if (v51)
        {
          continue;
        }

        break;
      }

LABEL_29:
      v14 = v90;
      v33 = v81;
    }

    v21 = v86;
    if (!v42 || !v87)
    {
      goto LABEL_33;
    }

LABEL_32:
    queue = v89->_queue;
    v104[0] = MEMORY[0x277D85DD0];
    v104[1] = 3221225472;
    v104[2] = __140__HDAuthorizationManager_enqueueObjectAuthorizationRequestForBundleIdentifier_context_promptIfNeeded_authorizationNeededHandler_completion___block_invoke_3;
    v104[3] = &unk_27861F9C0;
    v104[4] = v89;
    v105 = v12;
    v48 = v85;
    v106 = v85;
    v107 = v16;
    v108 = v14;
    dispatch_async(queue, v104);

    goto LABEL_51;
  }

  [(HDSmoothingTask *)v16 setTransaction:v41];
  v21 = v86;
  v14 = v90;
  if (v87)
  {
    goto LABEL_32;
  }

LABEL_33:
  if (!v88)
  {
    v45 = v84;
    if (v16)
    {
      (*(v21 + 2))(v21, v16->_identifier, 0, v84);
      v74 = v16->_identifier;
    }

    else
    {
      (*(v21 + 2))(v21, 0, 0, v84);
      v74 = 0;
    }

    v48 = v85;
    goto LABEL_53;
  }

  v82 = v33;
  v55 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v56 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  v57 = [v13 samples];
  v58 = [v57 countByEnumeratingWithState:&v100 objects:v124 count:16];
  if (v58)
  {
    v59 = v58;
    v60 = *v101;
    do
    {
      for (j = 0; j != v59; ++j)
      {
        if (*v101 != v60)
        {
          objc_enumerationMutation(v57);
        }

        v62 = *(*(&v100 + 1) + 8 * j);
        v63 = [v62 UUID];
        [v56 setObject:v62 forKeyedSubscript:v63];
      }

      v59 = [v57 countByEnumeratingWithState:&v100 objects:v124 count:16];
    }

    while (v59);
  }

  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v64 = v88;
  v65 = [v64 countByEnumeratingWithState:&v96 objects:v123 count:16];
  if (v65)
  {
    v66 = v65;
    v67 = *v97;
    do
    {
      for (k = 0; k != v66; ++k)
      {
        if (*v97 != v67)
        {
          objc_enumerationMutation(v64);
        }

        v69 = *(*(&v96 + 1) + 8 * k);
        if ([v69 status] == 2)
        {
          v70 = [v69 objectUUID];
          v71 = [v56 objectForKeyedSubscript:v70];
          [v55 addObject:v71];
        }
      }

      v66 = [v64 countByEnumeratingWithState:&v96 objects:v123 count:16];
    }

    while (v66);
  }

  v72 = v89->_queue;
  v92[0] = MEMORY[0x277D85DD0];
  v92[1] = 3221225472;
  v92[2] = __140__HDAuthorizationManager_enqueueObjectAuthorizationRequestForBundleIdentifier_context_promptIfNeeded_authorizationNeededHandler_completion___block_invoke_5;
  v92[3] = &unk_278616488;
  v21 = v86;
  v95 = v86;
  v93 = v16;
  v94 = v55;
  v73 = v55;
  dispatch_async(v72, v92);

  v14 = v90;
  v12 = v91;
  v33 = v82;
  v48 = v85;
LABEL_51:
  v45 = v84;
  if (v16)
  {
    v74 = v16->_identifier;
  }

  else
  {
    v74 = 0;
  }

LABEL_53:
  v47 = v74;

LABEL_54:
LABEL_55:

  v75 = *MEMORY[0x277D85DE8];

  return v47;
}

void __140__HDAuthorizationManager_enqueueObjectAuthorizationRequestForBundleIdentifier_context_promptIfNeeded_authorizationNeededHandler_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v1)
  {
    v1 = v1[3];
  }

  v3 = MEMORY[0x277CCA9B8];
  v4 = v1;
  v5 = [v3 hk_error:3 description:@"Bundle identifier must be non-nil when requesting object authorization."];
  (*(v2 + 16))(v2, v4, 0, v5);
}

uint64_t __140__HDAuthorizationManager_enqueueObjectAuthorizationRequestForBundleIdentifier_context_promptIfNeeded_authorizationNeededHandler_completion___block_invoke_2(void *a1)
{
  v2 = a1[6];
  v3 = a1[4];
  if (v3)
  {
    v4 = *(v3 + 24);
  }

  else
  {
    v4 = 0;
  }

  return (*(v2 + 16))(v2, v4, 0, a1[5]);
}

void __140__HDAuthorizationManager_enqueueObjectAuthorizationRequestForBundleIdentifier_context_promptIfNeeded_authorizationNeededHandler_completion___block_invoke_3(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 96) objectForKeyedSubscript:*(a1 + 40)];
  if (v2)
  {
    goto LABEL_6;
  }

  v2 = [_HDObjectAuthorizationPromptSession alloc];
  v4 = *(a1 + 40);
  v3 = *(a1 + 48);
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 48));
  v6 = v4;
  v7 = v3;
  v8 = WeakRetained;
  if (v2)
  {
    v20.receiver = v2;
    v20.super_class = _HDObjectAuthorizationPromptSession;
    v9 = objc_msgSendSuper2(&v20, sel_init);
    v2 = v9;
    if (v9)
    {
      objc_storeWeak(&v9->_profile, v8);
      v10 = [v7 copy];
      sessionIdentifier = v2->_sessionIdentifier;
      v2->_sessionIdentifier = v10;

      objc_storeStrong(&v2->_bundleIdentifier, v4);
      v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
      requests = v2->_requests;
      v2->_requests = v12;

      v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
      completions = v2->_completions;
      v2->_completions = v14;
    }
  }

  [*(*(a1 + 32) + 96) setObject:v2 forKeyedSubscript:*(a1 + 40)];
  if (v2)
  {
LABEL_6:
    [(NSMutableArray *)v2->_requests addObject:*(a1 + 56)];
  }

  v16 = *(*(a1 + 32) + 64);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __140__HDAuthorizationManager_enqueueObjectAuthorizationRequestForBundleIdentifier_context_promptIfNeeded_authorizationNeededHandler_completion___block_invoke_4;
  v17[3] = &unk_278614008;
  v19 = *(a1 + 64);
  v18 = *(a1 + 56);
  dispatch_async(v16, v17);
}

uint64_t __140__HDAuthorizationManager_enqueueObjectAuthorizationRequestForBundleIdentifier_context_promptIfNeeded_authorizationNeededHandler_completion___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *(v3 + 24);
  }

  else
  {
    v4 = 0;
  }

  return (*(v2 + 16))(v2, v4, 1, 0);
}

uint64_t __140__HDAuthorizationManager_enqueueObjectAuthorizationRequestForBundleIdentifier_context_promptIfNeeded_authorizationNeededHandler_completion___block_invoke_5(void *a1)
{
  v2 = a1[6];
  v3 = a1[4];
  if (v3)
  {
    v4 = *(v3 + 24);
  }

  else
  {
    v4 = 0;
  }

  return (*(v2 + 16))(v2, v4, a1[5], 0);
}

- (void)handleObjectAuthorizationRequestsForBundleIdentifier:(id)a3 objectType:(id)a4 promptHandler:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __115__HDAuthorizationManager_handleObjectAuthorizationRequestsForBundleIdentifier_objectType_promptHandler_completion___block_invoke;
  block[3] = &unk_278621B18;
  block[4] = self;
  v20 = v10;
  v22 = v13;
  v23 = v12;
  v21 = v11;
  v15 = v11;
  v16 = v12;
  v17 = v13;
  v18 = v10;
  dispatch_async(queue, block);
}

void __115__HDAuthorizationManager_handleObjectAuthorizationRequestsForBundleIdentifier_objectType_promptHandler_completion___block_invoke(uint64_t a1)
{
  v44 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 96) objectForKeyedSubscript:*(a1 + 40)];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = v4;
  if (v3)
  {
    dispatch_assert_queue_V2(*(v3 + 56));
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v6 = *(v3 + 104);
    v7 = [v6 countByEnumeratingWithState:&v39 objects:buf count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v40;
LABEL_4:
      v10 = 0;
      while (1)
      {
        if (*v40 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(v3 + 104) objectForKeyedSubscript:*(*(&v39 + 1) + 8 * v10)];
        v12 = v11;
        if (v11)
        {
          v11 = v11[6];
        }

        if ([v11 isEqualToString:v5])
        {
          break;
        }

        if (v8 == ++v10)
        {
          v8 = [v6 countByEnumeratingWithState:&v39 objects:buf count:16];
          if (v8)
          {
            goto LABEL_4;
          }

          goto LABEL_12;
        }
      }
    }

    else
    {
LABEL_12:
      v12 = 0;
    }

    if (v12)
    {
      if (v2 && [*(v2 + 16) count])
      {
        v13 = *(a1 + 56);
        v14 = *(v2 + 24);
      }

      else
      {
        v13 = *(a1 + 56);
        v14 = v12[3];
      }

      v15 = _Block_copy(v13);
      [v14 addObject:v15];

      goto LABEL_29;
    }
  }

  else
  {
  }

  if (v2 && [*(v2 + 16) count])
  {
    v16 = *(v2 + 24);
    v17 = _Block_copy(*(a1 + 56));
    [v16 addObject:v17];

    [*(*(a1 + 32) + 104) setObject:v2 forKeyedSubscript:*(v2 + 56)];
    [*(*(a1 + 32) + 96) removeObjectForKey:*(a1 + 40)];
    _HKInitializeLogging();
    v18 = HKLogAuthorization();
    LODWORD(v17) = os_log_type_enabled(v18, OS_LOG_TYPE_INFO);

    if (v17)
    {
      v19 = HKLogAuthorization();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_228986000, v19, OS_LOG_TYPE_INFO, "Beginning a new prompt session.", buf, 2u);
      }
    }

    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __115__HDAuthorizationManager_handleObjectAuthorizationRequestsForBundleIdentifier_objectType_promptHandler_completion___block_invoke_445;
    v37[3] = &unk_278616020;
    v37[4] = *(a1 + 32);
    v20 = v2;
    v38 = v20;
    v21 = [v37 copy];
    v22 = v20[5];
    v20[5] = v21;

    v23 = *(*(a1 + 32) + 64);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __115__HDAuthorizationManager_handleObjectAuthorizationRequestsForBundleIdentifier_objectType_promptHandler_completion___block_invoke_3;
    block[3] = &unk_278616488;
    v36 = *(a1 + 64);
    v24 = v20;
    v34 = v24;
    v35 = *(a1 + 48);
    dispatch_async(v23, block);
    objc_initWeak(buf, v24);
    v25 = dispatch_time(0, (*(*(a1 + 32) + 136) * 1000000000.0));
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __115__HDAuthorizationManager_handleObjectAuthorizationRequestsForBundleIdentifier_objectType_promptHandler_completion___block_invoke_5;
    v31[3] = &unk_278616F38;
    objc_copyWeak(&v32, buf);
    dispatch_after(v25, MEMORY[0x277D85CD0], v31);
    objc_destroyWeak(&v32);
    objc_destroyWeak(buf);

    v26 = v38;
  }

  else
  {
    v27 = *(*(a1 + 32) + 64);
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __115__HDAuthorizationManager_handleObjectAuthorizationRequestsForBundleIdentifier_objectType_promptHandler_completion___block_invoke_6;
    v29[3] = &unk_278613658;
    v30 = *(a1 + 56);
    dispatch_async(v27, v29);
    v26 = v30;
  }

  v12 = 0;
LABEL_29:

  v28 = *MEMORY[0x277D85DE8];
}

void __115__HDAuthorizationManager_handleObjectAuthorizationRequestsForBundleIdentifier_objectType_promptHandler_completion___block_invoke_445(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 56);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __115__HDAuthorizationManager_handleObjectAuthorizationRequestsForBundleIdentifier_objectType_promptHandler_completion___block_invoke_2;
  v4[3] = &unk_278613920;
  v4[4] = v2;
  v5 = v1;
  dispatch_async(v3, v4);
}

uint64_t __115__HDAuthorizationManager_handleObjectAuthorizationRequestsForBundleIdentifier_objectType_promptHandler_completion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 104);
  if (v1)
  {
    v3 = *(v1 + 56);
  }

  else
  {
    v3 = 0;
  }

  return [v2 removeObjectForKey:v3];
}

void __115__HDAuthorizationManager_handleObjectAuthorizationRequestsForBundleIdentifier_objectType_promptHandler_completion___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(a1 + 32);
  if (v2)
  {
    v4 = MEMORY[0x277CCD6F8];
    v5 = *(a1 + 40);
    v6 = [[v4 alloc] initForBundleIdentifier:*(v2 + 48) sessionIdentifier:*(v2 + 56) objectType:v5];

    v7 = *(a1 + 32);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __115__HDAuthorizationManager_handleObjectAuthorizationRequestsForBundleIdentifier_objectType_promptHandler_completion___block_invoke_4;
  v8[3] = &unk_2786130B0;
  v9 = v7;
  (*(v1 + 16))(v1, v6, v8);
}

void __115__HDAuthorizationManager_handleObjectAuthorizationRequestsForBundleIdentifier_objectType_promptHandler_completion___block_invoke_4(uint64_t a1, char a2, void *a3)
{
  if ((a2 & 1) == 0)
  {
    [(_HDObjectAuthorizationPromptSession *)*(a1 + 32) endPromptTransactionWithSuccess:a3 error:?];
  }
}

void __115__HDAuthorizationManager_handleObjectAuthorizationRequestsForBundleIdentifier_objectType_promptHandler_completion___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && (WeakRetained[32] & 1) == 0)
  {
    v4 = WeakRetained;
    _HKInitializeLogging();
    v2 = HKLogAuthorization();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_228986000, v2, OS_LOG_TYPE_ERROR, "Timed out waiting on prompt transaction to begin.", buf, 2u);
    }

    v3 = [MEMORY[0x277CCA9B8] hk_error:103 description:@"Timed out waiting for authorization transaction to begin."];
    [(_HDObjectAuthorizationPromptSession *)v4 endPromptTransactionWithSuccess:v3 error:?];

    WeakRetained = v4;
  }
}

- (id)fetchAuthorizationContextForPromptSession:(id)a3 error:(id *)a4
{
  v92 = *MEMORY[0x277D85DE8];
  v6 = a3;
  activeObjectPromptSessionsBySessionIdentifier = self->_activeObjectPromptSessionsBySessionIdentifier;
  v66 = v6;
  v8 = [v6 sessionIdentifier];
  v9 = [(NSMutableDictionary *)activeObjectPromptSessionsBySessionIdentifier objectForKeyedSubscript:v8];

  v67 = v9;
  if (!v9)
  {
    goto LABEL_58;
  }

  v10 = *(v9 + 48);
  v11 = [v66 bundleIdentifier];
  v12 = v11;
  if (v10 == v11)
  {

LABEL_7:
    v70 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    obj = *(v9 + 16);
    v71 = [obj countByEnumeratingWithState:&v77 objects:v89 count:16];
    if (!v71)
    {
LABEL_54:

      v57 = objc_alloc(MEMORY[0x277CCD700]);
      v58 = [v67[2] firstObject];
      v59 = v58;
      if (v58)
      {
        v60 = *(v58 + 40);
      }

      else
      {
        v60 = 0;
      }

      v61 = [v57 initWithSamplesRequiringAuthorization:v70 metadata:v60];

      goto LABEL_63;
    }

    v69 = *v78;
LABEL_9:
    v18 = 0;
    while (1)
    {
      if (*v78 != v69)
      {
        objc_enumerationMutation(obj);
      }

      v19 = *(*(&v77 + 1) + 8 * v18);
      if (!v19)
      {
        v33 = 0;
        goto LABEL_50;
      }

      v72 = v18;
      v20 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v85 = 0u;
      v86 = 0u;
      v87 = 0u;
      v88 = 0u;
      v73 = v19;
      v75 = *(v19 + 48);
      v21 = [v75 countByEnumeratingWithState:&v85 objects:v91 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v86;
        do
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v86 != v23)
            {
              objc_enumerationMutation(v75);
            }

            v25 = *(*(&v85 + 1) + 8 * i);
            v26 = objc_alloc(MEMORY[0x277CCD710]);
            v27 = [v25 objectUUID];
            v28 = [v25 sourceUUID];
            v29 = [v25 sessionUUID];
            v30 = [v25 status];
            [v25 modificationDate];
            v31 = [v26 initWithObjectUUID:v27 sourceUUID:v28 sessionUUID:v29 status:v30 modificationDate:?];

            v32 = [v25 objectUUID];
            [v20 setObject:v31 forKeyedSubscript:v32];
          }

          v22 = [v75 countByEnumeratingWithState:&v85 objects:v91 count:16];
        }

        while (v22);
      }

      v33 = objc_alloc_init(MEMORY[0x277CBEB38]);
      if (*(v73 + 8) != 1)
      {
        break;
      }

      v83 = 0uLL;
      v84 = 0uLL;
      v81 = 0uLL;
      v82 = 0uLL;
      v76 = *(v73 + 32);
      v34 = [v76 countByEnumeratingWithState:&v81 objects:v90 count:16];
      if (v34)
      {
        v35 = v34;
        v36 = *v82;
        v18 = v72;
        do
        {
          for (j = 0; j != v35; ++j)
          {
            if (*v82 != v36)
            {
              objc_enumerationMutation(v76);
            }

            v38 = *(*(&v81 + 1) + 8 * j);
            v39 = [v38 UUID];
            v40 = [v20 objectForKeyedSubscript:v39];
            if (v40)
            {
              [v33 setObject:v40 forKeyedSubscript:v38];
            }

            else
            {
              v41 = objc_alloc_init(MEMORY[0x277CCD710]);
              [v33 setObject:v41 forKeyedSubscript:v38];
            }
          }

          v35 = [v76 countByEnumeratingWithState:&v81 objects:v90 count:16];
        }

        while (v35);
        goto LABEL_49;
      }

LABEL_48:
      v18 = v72;
LABEL_49:

LABEL_50:
      [v70 addEntriesFromDictionary:v33];

      if (++v18 == v71)
      {
        v56 = [obj countByEnumeratingWithState:&v77 objects:v89 count:16];
        v71 = v56;
        if (!v56)
        {
          goto LABEL_54;
        }

        goto LABEL_9;
      }
    }

    v83 = 0uLL;
    v84 = 0uLL;
    v81 = 0uLL;
    v82 = 0uLL;
    v76 = *(v73 + 32);
    v42 = [v76 countByEnumeratingWithState:&v81 objects:v90 count:16];
    if (!v42)
    {
      goto LABEL_48;
    }

    v43 = v42;
    v74 = v33;
    v44 = *v82;
LABEL_34:
    v45 = 0;
    while (1)
    {
      if (*v82 != v44)
      {
        objc_enumerationMutation(v76);
      }

      v46 = *(*(&v81 + 1) + 8 * v45);
      v47 = [v46 UUID];
      v48 = [v20 objectForKeyedSubscript:v47];
      if (!v48)
      {
        break;
      }

      v49 = v48;
      v50 = [v46 UUID];
      v51 = [v20 objectForKeyedSubscript:v50];
      v52 = [v51 status];

      if (!v52)
      {
        goto LABEL_41;
      }

LABEL_45:
      if (v43 == ++v45)
      {
        v43 = [v76 countByEnumeratingWithState:&v81 objects:v90 count:16];
        if (!v43)
        {
          v18 = v72;
          v33 = v74;
          goto LABEL_49;
        }

        goto LABEL_34;
      }
    }

LABEL_41:
    v53 = [v46 UUID];
    v54 = [v20 objectForKeyedSubscript:v53];
    if (v54)
    {
      [v74 setObject:v54 forKeyedSubscript:v46];
    }

    else
    {
      v55 = objc_alloc_init(MEMORY[0x277CCD710]);
      [v74 setObject:v55 forKeyedSubscript:v46];
    }

    goto LABEL_45;
  }

  v13 = [v66 bundleIdentifier];
  if (v13)
  {
    v14 = v13;
    v15 = v67[6];
    v16 = [v66 bundleIdentifier];
    v17 = [v15 isEqualToString:v16];

    v9 = v67;
    if ((v17 & 1) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_7;
  }

LABEL_58:
  v62 = [MEMORY[0x277CCA9B8] hk_error:3 description:@"Could not locate prompt session"];
  if (v62)
  {
    if (a4)
    {
      v63 = v62;
      *a4 = v62;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  v61 = 0;
LABEL_63:

  v64 = *MEMORY[0x277D85DE8];

  return v61;
}

- (int64_t)objectAuthorizationRecordForSource:(id)a3 objectUUID:(id)a4 resolveAssociations:(BOOL)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = objc_alloc_init(MEMORY[0x277CBEB58]);
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v14 = [WeakRetained database];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __98__HDAuthorizationManager_objectAuthorizationRecordForSource_objectUUID_resolveAssociations_error___block_invoke;
  v26[3] = &unk_278621B40;
  v15 = v11;
  v31 = a5;
  v27 = v15;
  v28 = self;
  v16 = v10;
  v29 = v16;
  v17 = v12;
  v30 = v17;
  LODWORD(a6) = [(HDHealthEntity *)HDObjectAuthorizationEntity performReadTransactionWithHealthDatabase:v14 error:a6 block:v26];

  if (!a6)
  {
    goto LABEL_11;
  }

  if (([v17 containsObject:&unk_283CB2538] & 1) == 0)
  {
    v19 = [MEMORY[0x277CBEB98] setWithObject:&unk_283CB2550];
    v20 = v19;
    if (v17 == v19)
    {
    }

    else
    {
      v21 = [MEMORY[0x277CBEB98] setWithObject:&unk_283CB2550];
      if (!v21)
      {

LABEL_11:
        v18 = 0;
        goto LABEL_12;
      }

      v22 = v21;
      v23 = [MEMORY[0x277CBEB98] setWithObject:&unk_283CB2550];
      v24 = [v17 isEqualToSet:v23];

      if (!v24)
      {
        goto LABEL_11;
      }
    }

    v18 = 2;
    goto LABEL_12;
  }

  v18 = 1;
LABEL_12:

  return v18;
}

BOOL __98__HDAuthorizationManager_objectAuthorizationRecordForSource_objectUUID_resolveAssociations_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  v39 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CBEB58] setWithObject:*(a1 + 32)];
  if (*(v4 + 64) == 1)
  {
    v6 = *(v4 + 32);
    WeakRetained = objc_loadWeakRetained((*(v4 + 40) + 48));
    v8 = [HDAssociationEntity associationUUIDsForObjectUUID:v6 subObjectReference:0 excludeDeleted:1 profile:WeakRetained error:a3];

    if (v8)
    {
      [v5 addObjectsFromArray:v8];
    }
  }

  v9 = *(v4 + 48);
  v10 = objc_loadWeakRetained((*(v4 + 40) + 48));
  v11 = [v9 sourceUUIDWithProfile:v10 error:a3];

  if (v11)
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = v5;
    v12 = v5;
    v33 = [v12 countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v33)
    {
      v13 = *v35;
      v14 = off_27860F000;
      do
      {
        v15 = 0;
        do
        {
          if (*v35 != v13)
          {
            objc_enumerationMutation(v12);
          }

          v16 = *(*(&v34 + 1) + 8 * v15);
          v17 = v14[9];
          v18 = objc_loadWeakRetained((*(v4 + 40) + 48));
          v19 = [(__objc2_class *)v17 authorizationRecordsBySourceForSampleWithUUID:v16 profile:v18 error:a3];

          if (v19)
          {
            v20 = [v19 objectForKeyedSubscript:v11];
            v21 = v20;
            if (v20)
            {
              v22 = [v20 status];
              if (v22)
              {
                v23 = *(v4 + 56);
                [MEMORY[0x277CCABB0] numberWithInteger:v22];
                v24 = v13;
                v25 = v4;
                v26 = a3;
                v27 = v12;
                v29 = v28 = v11;
                [v23 addObject:v29];

                v11 = v28;
                v12 = v27;
                a3 = v26;
                v4 = v25;
                v13 = v24;
                v14 = off_27860F000;
              }
            }
          }

          ++v15;
        }

        while (v33 != v15);
        v33 = [v12 countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v33);
    }

    v5 = v32;
  }

  v30 = *MEMORY[0x277D85DE8];
  return v11 != 0;
}

- (void)performObjectAuthorizationForSource:(id)a3 samples:(id)a4 associatedWithSamplesOfType:(id)a5 completion:(id)a6
{
  v53 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v39 = self;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v47 = 0;
  v15 = [HDObjectAuthorizationEntity authorizationStatusForSamplesOfType:v12 sourceEntity:v10 profile:WeakRetained error:&v47];
  v16 = v47;

  if (v15)
  {
    v34 = v13;
    v35 = v12;
    v36 = v11;
    v37 = v10;
    v38 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v33 = v15;
    v17 = v15;
    v18 = [v17 countByEnumeratingWithState:&v43 objects:v52 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v44;
      do
      {
        v21 = 0;
        v22 = v16;
        do
        {
          if (*v44 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v23 = *(*(&v43 + 1) + 8 * v21);
          if ([v23 status] == 2)
          {
            v24 = [v23 objectUUID];
            v25 = objc_loadWeakRetained(&v39->_profile);
            v42 = v22;
            v26 = [HDAssociationEntity objectUUIDsAssociatedWithObjectUUID:v24 subObjectReference:0 excludeDeleted:1 profile:v25 error:&v42];
            v16 = v42;

            if (v26)
            {
              [v38 addObjectsFromArray:v26];
            }

            else
            {
              _HKInitializeLogging();
              v27 = HKLogAuthorization();
              v28 = os_log_type_enabled(v27, OS_LOG_TYPE_INFO);

              if (v28)
              {
                v29 = HKLogAuthorization();
                if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412546;
                  v49 = v24;
                  v50 = 2112;
                  v51 = v16;
                  _os_log_impl(&dword_228986000, v29, OS_LOG_TYPE_INFO, "[database] Error looking up samples associated with %@: %@", buf, 0x16u);
                }
              }
            }

            v22 = v16;
          }

          else
          {
            v16 = v22;
          }

          ++v21;
        }

        while (v19 != v21);
        v19 = [v17 countByEnumeratingWithState:&v43 objects:v52 count:16];
      }

      while (v19);
    }

    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __109__HDAuthorizationManager_performObjectAuthorizationForSource_samples_associatedWithSamplesOfType_completion___block_invoke;
    v40[3] = &unk_278617BF0;
    v41 = v38;
    v30 = v38;
    v11 = v36;
    v31 = [v36 hk_filter:v40];
    v13 = v34;
    (v34)[2](v34, v31, 0);

    v10 = v37;
    v12 = v35;
    v15 = v33;
  }

  else
  {
    v13[2](v13, 0, v16);
  }

  v32 = *MEMORY[0x277D85DE8];
}

uint64_t __109__HDAuthorizationManager_performObjectAuthorizationForSource_samples_associatedWithSamplesOfType_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 UUID];
  v4 = [v2 containsObject:v3];

  return v4;
}

- (id)enqueueConceptAuthorizationRequestForBundleIdentifier:(id)a3 forObjectType:(id)a4 promptIfNeeded:(BOOL)a5 authorizationNeededHandler:(id)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v16 = [MEMORY[0x277CCAD78] UUID];
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __154__HDAuthorizationManager_enqueueConceptAuthorizationRequestForBundleIdentifier_forObjectType_promptIfNeeded_authorizationNeededHandler_completionHandler___block_invoke;
  block[3] = &unk_278621B68;
  block[4] = self;
  v18 = v16;
  v27 = v18;
  v28 = v12;
  v32 = a5;
  v29 = v13;
  v30 = v14;
  v31 = v15;
  v19 = v15;
  v20 = v14;
  v21 = v13;
  v22 = v12;
  dispatch_async(queue, block);
  v23 = v31;
  v24 = v18;

  return v18;
}

void __154__HDAuthorizationManager_enqueueConceptAuthorizationRequestForBundleIdentifier_forObjectType_promptIfNeeded_authorizationNeededHandler_completionHandler___block_invoke(uint64_t a1)
{
  v80 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(a1 + 48);
  v3 = *(a1 + 56);
  v5 = *(a1 + 80);
  v6 = *(a1 + 64);
  v7 = *(a1 + 72);
  v8 = v2;
  v9 = v4;
  v10 = v3;
  v11 = v6;
  v12 = v7;
  v13 = v12;
  if (v1)
  {
    if (v9)
    {
      v67 = v5;
      obj = v4;
      v71 = v11;
      v72 = v10;
      v73 = v8;
      v70 = objc_alloc_init(MEMORY[0x277CBEB58]);
      WeakRetained = objc_loadWeakRetained((v1 + 48));
      v15 = *MEMORY[0x277D10C08];
      v78 = 0;
      v16 = [HDUserDomainConceptAPIObjectManager allUserAnnotatedMedicationsFromUserDomainConceptsWithProfile:WeakRetained predicate:0 limit:v15 error:&v78];
      v17 = v78;

      v18 = objc_loadWeakRetained((v1 + 48));
      v19 = [v18 sourceManager];
      v77 = v17;
      v20 = [v19 localSourceForBundleIdentifier:v9 error:&v77];
      v21 = v77;

      v69 = v16;
      if (v20)
      {
        v22 = [v16 hk_map:&__block_literal_global_109];
        v23 = objc_loadWeakRetained((v1 + 48));
        v76 = v21;
        v65 = v22;
        v24 = v22;
        v25 = v20;
        v26 = [HDConceptAuthorizationEntity authorizationRecordsForHealthConceptIdentifiers:v24 sourceEntity:v20 profile:v23 error:&v76];
        v66 = v76;

        v64 = v26;
        if ([v26 count])
        {
          v74[0] = MEMORY[0x277D85DD0];
          v74[1] = 3221225472;
          v74[2] = __170__HDAuthorizationManager__queue_enqueueConceptAuthorizationRequestWithIdentifier_bundleIdentifier_objectType_promptIfNeeded_authorizationNeededHandler_completionHandler___block_invoke_2;
          v74[3] = &unk_278621BD8;
          v75 = v26;
          v27 = [v16 hk_filter:v74];
          v28 = v70;
          [v70 addObjectsFromArray:v27];
        }

        else
        {
          v28 = v70;
          [v70 addObjectsFromArray:v16];
        }

        v11 = v71;
        v10 = v72;
        v8 = v73;
        if ([v28 count] || !objc_msgSend(v16, "count")) && (v67)
        {
          v31 = [_HDHealthConceptAuthorizationRequest alloc];
          v32 = v28;
          v33 = v31;
          v34 = [v32 allObjects];
          v35 = v73;
          v36 = v34;
          v37 = v13;
          v38 = &selRef_includesContext_;
          if (v33)
          {
            if (!v35)
            {
              v61 = [MEMORY[0x277CCA890] currentHandler];
              [v61 handleFailureInMethod:sel_initWithIdentifier_userAnnotatedMedications_completionHandler_ object:v33 file:@"HDAuthorizationManager.m" lineNumber:2698 description:{@"Invalid parameter not satisfying: %@", @"identifier != nil"}];

              v38 = &selRef_includesContext_;
            }

            v79.receiver = v33;
            v79.super_class = _HDHealthConceptAuthorizationRequest;
            v39 = objc_msgSendSuper2(&v79, v38[28]);
            v33 = v39;
            if (v39)
            {
              objc_storeStrong(&v39->_identifier, v2);
              v40 = [v36 copy];
              userAnnotatedMedications = v33->_userAnnotatedMedications;
              v33->_userAnnotatedMedications = v40;

              v42 = [v37 copy];
              completionHandler = v33->_completionHandler;
              v33->_completionHandler = v42;
            }
          }

          v68 = v35;
          os_unfair_lock_lock((v1 + 40));
          v44 = [*(v1 + 112) objectForKeyedSubscript:v9];
          if (v44)
          {
            goto LABEL_24;
          }

          v45 = v38;
          v44 = [_HDHealthConceptAuthorizationPromptSession alloc];
          v46 = objc_loadWeakRetained((v1 + 48));
          v62 = v9;
          v47 = v68;
          v48 = v46;
          if (v44)
          {
            v79.receiver = v44;
            v79.super_class = _HDHealthConceptAuthorizationPromptSession;
            v49 = objc_msgSendSuper2(&v79, v45 + 2936);
            v44 = v49;
            if (v49)
            {
              objc_storeWeak(&v49->_profile, v48);
              v50 = [v47 copy];
              sessionIdentifier = v44->_sessionIdentifier;
              v44->_sessionIdentifier = v50;

              objc_storeStrong(&v44->_bundleIdentifier, obj);
              v52 = objc_alloc_init(MEMORY[0x277CBEB18]);
              requests = v44->_requests;
              v44->_requests = v52;

              v54 = objc_alloc_init(MEMORY[0x277CBEB18]);
              completions = v44->_completions;
              v44->_completions = v54;

              v44->_lock._os_unfair_lock_opaque = 0;
            }
          }

          [*(v1 + 112) setObject:v44 forKeyedSubscript:v62];
          if (v44)
          {
LABEL_24:
            v56 = v33;
            os_unfair_lock_lock(&v44->_lock);
            [(NSMutableArray *)v44->_requests addObject:v56];

            os_unfair_lock_unlock(&v44->_lock);
          }

          os_unfair_lock_unlock((v1 + 40));
          _HKInitializeLogging();
          v57 = HKLogAuthorization();
          v10 = v72;
          v8 = v73;
          v11 = v71;
          v58 = v65;
          if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
          {
            if (v33)
            {
              identifier = v33->_identifier;
            }

            else
            {
              identifier = 0;
            }

            LODWORD(v79.receiver) = 138543362;
            *(&v79.receiver + 4) = identifier;
            _os_log_impl(&dword_228986000, v57, OS_LOG_TYPE_DEFAULT, "Added authorization request %{public}@", &v79, 0xCu);
          }

          if (v71)
          {
            v71[2](v71, v68, 1, v66);
          }

          v28 = v70;
        }

        else
        {
          (v13)[2](v13, v73, 1, 0);
          v58 = v65;
        }

        v30 = v66;
      }

      else
      {
        v25 = 0;
        if (v13)
        {
          v8 = v73;
          (v13)[2](v13, v73, 0, v21);
          v30 = v21;
        }

        else
        {
          v30 = v21;
          v8 = v73;
        }

        v11 = v71;
        v10 = v72;
        v28 = v70;
      }
    }

    else if (v12)
    {
      v29 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:sel__queue_enqueueConceptAuthorizationRequestWithIdentifier_bundleIdentifier_objectType_promptIfNeeded_authorizationNeededHandler_completionHandler_ format:@"bundleIdentifier may not be nil"];
      (v13)[2](v13, v8, 0, v29);
    }
  }

  v60 = *MEMORY[0x277D85DE8];
}

id __170__HDAuthorizationManager__queue_enqueueConceptAuthorizationRequestWithIdentifier_bundleIdentifier_objectType_promptIfNeeded_authorizationNeededHandler_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 medication];
  v3 = [v2 identifier];

  return v3;
}

uint64_t __170__HDAuthorizationManager__queue_enqueueConceptAuthorizationRequestWithIdentifier_bundleIdentifier_objectType_promptIfNeeded_authorizationNeededHandler_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __170__HDAuthorizationManager__queue_enqueueConceptAuthorizationRequestWithIdentifier_bundleIdentifier_objectType_promptIfNeeded_authorizationNeededHandler_completionHandler___block_invoke_3;
  v7[3] = &unk_278621BB0;
  v8 = v3;
  v5 = v3;
  LODWORD(v4) = [v4 hk_containsObjectPassingTest:v7];

  return v4 ^ 1;
}

BOOL __170__HDAuthorizationManager__queue_enqueueConceptAuthorizationRequestWithIdentifier_bundleIdentifier_objectType_promptIfNeeded_authorizationNeededHandler_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 identifier];
  v5 = [*(a1 + 32) medication];
  v6 = [v5 identifier];
  if (v4 == v6)
  {
    v12 = [v3 status] != 0;
  }

  else
  {
    v7 = [*(a1 + 32) medication];
    v8 = [v7 identifier];
    if (v8)
    {
      v9 = [v3 identifier];
      v10 = [*(a1 + 32) medication];
      v11 = [v10 identifier];
      if ([v9 isEqual:v11])
      {
        v12 = [v3 status] != 0;
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (void)handleHealthConceptAuthorizationRequestsForBundleIdentifier:(id)a3 objectType:(id)a4 promptHandler:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __122__HDAuthorizationManager_handleHealthConceptAuthorizationRequestsForBundleIdentifier_objectType_promptHandler_completion___block_invoke;
  block[3] = &unk_278621B18;
  block[4] = self;
  v20 = v10;
  v22 = v13;
  v23 = v12;
  v21 = v11;
  v15 = v11;
  v16 = v12;
  v17 = v13;
  v18 = v10;
  dispatch_async(queue, block);
}

void __122__HDAuthorizationManager_handleHealthConceptAuthorizationRequestsForBundleIdentifier_objectType_promptHandler_completion___block_invoke(uint64_t a1)
{
  v41 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock((*(a1 + 32) + 40));
  v2 = [*(*(a1 + 32) + 112) objectForKeyedSubscript:*(a1 + 40)];
  os_unfair_lock_unlock((*(a1 + 32) + 40));
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (!v3)
  {
LABEL_13:

LABEL_17:
    os_unfair_lock_lock((*(a1 + 32) + 40));
    if ([(_HDHealthConceptAuthorizationPromptSession *)v2 requestCount])
    {
      [(_HDHealthConceptAuthorizationPromptSession *)v2 addCompletion:?];
      if (v2)
      {
        v13 = *(v2 + 56);
      }

      else
      {
        v13 = 0;
      }

      [*(*(a1 + 32) + 120) setObject:v2 forKeyedSubscript:v13];
      [*(*(a1 + 32) + 112) removeObjectForKey:*(a1 + 40)];
      _HKInitializeLogging();
      v14 = HKLogAuthorization();
      v15 = os_log_type_enabled(v14, OS_LOG_TYPE_INFO);

      if (v15)
      {
        v16 = HKLogAuthorization();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          LOWORD(buf[0]) = 0;
          _os_log_impl(&dword_228986000, v16, OS_LOG_TYPE_INFO, "Beginning a new prompt session.", buf, 2u);
        }
      }

      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __122__HDAuthorizationManager_handleHealthConceptAuthorizationRequestsForBundleIdentifier_objectType_promptHandler_completion___block_invoke_468;
      v34[3] = &unk_278616020;
      v34[4] = *(a1 + 32);
      v17 = v2;
      v35 = v17;
      if (v2)
      {
        v18 = [v34 copy];
        v19 = v17[5];
        v17[5] = v18;
      }

      os_unfair_lock_unlock((*(a1 + 32) + 40));
      v20 = *(*(a1 + 32) + 64);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __122__HDAuthorizationManager_handleHealthConceptAuthorizationRequestsForBundleIdentifier_objectType_promptHandler_completion___block_invoke_3;
      block[3] = &unk_278616488;
      v33 = *(a1 + 64);
      v21 = v17;
      v31 = v21;
      v32 = *(a1 + 48);
      dispatch_async(v20, block);
      objc_initWeak(buf, v21);
      v22 = dispatch_time(0, (*(*(a1 + 32) + 136) * 1000000000.0));
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __122__HDAuthorizationManager_handleHealthConceptAuthorizationRequestsForBundleIdentifier_objectType_promptHandler_completion___block_invoke_5;
      v28[3] = &unk_278616F38;
      objc_copyWeak(&v29, buf);
      dispatch_after(v22, MEMORY[0x277D85CD0], v28);
      objc_destroyWeak(&v29);
      objc_destroyWeak(buf);

      v23 = v35;
    }

    else
    {
      os_unfair_lock_unlock((*(a1 + 32) + 40));
      v24 = *(*(a1 + 32) + 64);
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __122__HDAuthorizationManager_handleHealthConceptAuthorizationRequestsForBundleIdentifier_objectType_promptHandler_completion___block_invoke_6;
      v26[3] = &unk_278613658;
      v27 = *(a1 + 56);
      dispatch_async(v24, v26);
      v23 = v27;
    }

    v11 = 0;
    goto LABEL_31;
  }

  dispatch_assert_queue_V2(*(v3 + 56));
  os_unfair_lock_lock((v3 + 40));
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v5 = *(v3 + 120);
  v6 = [v5 countByEnumeratingWithState:&v36 objects:buf count:16];
  if (!v6)
  {
LABEL_12:

    os_unfair_lock_unlock((v3 + 40));
    goto LABEL_13;
  }

  v7 = v6;
  v8 = *v37;
LABEL_4:
  v9 = 0;
  while (1)
  {
    if (*v37 != v8)
    {
      objc_enumerationMutation(v5);
    }

    v10 = [*(v3 + 120) objectForKeyedSubscript:*(*(&v36 + 1) + 8 * v9)];
    v11 = v10;
    if (v10)
    {
      v10 = v10[6];
    }

    if ([v10 isEqualToString:v4])
    {
      break;
    }

    if (v7 == ++v9)
    {
      v7 = [v5 countByEnumeratingWithState:&v36 objects:buf count:16];
      if (v7)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  os_unfair_lock_unlock((v3 + 40));

  if (!v11)
  {
    goto LABEL_17;
  }

  if ([(_HDHealthConceptAuthorizationPromptSession *)v2 requestCount])
  {
    v12 = v2;
  }

  else
  {
    v12 = v11;
  }

  [(_HDHealthConceptAuthorizationPromptSession *)v12 addCompletion:?];
LABEL_31:

  v25 = *MEMORY[0x277D85DE8];
}

void __122__HDAuthorizationManager_handleHealthConceptAuthorizationRequestsForBundleIdentifier_objectType_promptHandler_completion___block_invoke_468(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 56);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __122__HDAuthorizationManager_handleHealthConceptAuthorizationRequestsForBundleIdentifier_objectType_promptHandler_completion___block_invoke_2;
  v4[3] = &unk_278613920;
  v4[4] = v2;
  v5 = v1;
  dispatch_async(v3, v4);
}

uint64_t __122__HDAuthorizationManager_handleHealthConceptAuthorizationRequestsForBundleIdentifier_objectType_promptHandler_completion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 120);
  if (v1)
  {
    v3 = *(v1 + 56);
  }

  else
  {
    v3 = 0;
  }

  return [v2 removeObjectForKey:v3];
}

void __122__HDAuthorizationManager_handleHealthConceptAuthorizationRequestsForBundleIdentifier_objectType_promptHandler_completion___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(a1 + 32);
  if (v2)
  {
    v4 = MEMORY[0x277CCD6F8];
    v5 = *(a1 + 40);
    v6 = [[v4 alloc] initForBundleIdentifier:*(v2 + 48) sessionIdentifier:*(v2 + 56) objectType:v5];

    v7 = *(a1 + 32);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __122__HDAuthorizationManager_handleHealthConceptAuthorizationRequestsForBundleIdentifier_objectType_promptHandler_completion___block_invoke_4;
  v8[3] = &unk_2786130B0;
  v9 = v7;
  (*(v1 + 16))(v1, v6, v8);
}

void __122__HDAuthorizationManager_handleHealthConceptAuthorizationRequestsForBundleIdentifier_objectType_promptHandler_completion___block_invoke_4(uint64_t a1, char a2, void *a3)
{
  if ((a2 & 1) == 0)
  {
    [(_HDHealthConceptAuthorizationPromptSession *)*(a1 + 32) endPromptTransactionWithSuccess:a3 error:?];
  }
}

void __122__HDAuthorizationManager_handleHealthConceptAuthorizationRequestsForBundleIdentifier_objectType_promptHandler_completion___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && (WeakRetained[32] & 1) == 0)
  {
    v4 = WeakRetained;
    _HKInitializeLogging();
    v2 = HKLogAuthorization();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_228986000, v2, OS_LOG_TYPE_ERROR, "Timed out waiting on prompt transaction to begin.", buf, 2u);
    }

    v3 = [MEMORY[0x277CCA9B8] hk_error:103 description:@"Timed out waiting for authorization transaction to begin."];
    [(_HDHealthConceptAuthorizationPromptSession *)v4 endPromptTransactionWithSuccess:v3 error:?];

    WeakRetained = v4;
  }
}

- (void)fetchAuthorizationStatusesForHealthConceptIdentifier:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (v7)
  {
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    v14 = 0;
    v10 = [HDConceptAuthorizationEntity authorizationRecordsForHealthConceptIdentifier:v7 profile:WeakRetained error:&v14];
    v11 = v14;

    if (v10)
    {
      v12 = [v10 hk_map:&__block_literal_global_474];
      v8[2](v8, v12, 0);
    }

    else
    {
      (v8)[2](v8, 0, v11);
    }
  }

  else
  {
    v13 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:@"healthConceptIdentifier may not be nil"];
    (v8)[2](v8, 0, v13);
  }
}

void __90__HDAuthorizationManager_fetchAuthorizationStatusesForHealthConceptIdentifier_completion___block_invoke(uint64_t a1, void *a2, void *a3, void (**a4)(void, void, void))
{
  v7 = MEMORY[0x277CCABB0];
  v8 = a4;
  v9 = a2;
  v10 = [v7 numberWithInteger:{objc_msgSend(a3, "status")}];
  (a4)[2](v8, v9, v10);
}

- (void)fetchSourcesWithExistingAuthorizationsForHealthConceptDomain:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v13 = 0;
  v9 = [HDConceptAuthorizationEntity fetchSourcesWithExistingAuthorizationsForHealthConceptDomain:v7 profile:WeakRetained error:&v13];

  v10 = v13;
  if (v9)
  {
    v11 = v9;
    v12 = 0;
  }

  else
  {
    v11 = 0;
    v12 = v10;
  }

  v6[2](v6, v11, v12);
}

- (id)fetchConceptAuthorizationContextForPromptSession:(id)a3 error:(id *)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = a3;
  activeHealthConceptPromptSessionsBySessionIdentifier = self->_activeHealthConceptPromptSessionsBySessionIdentifier;
  v8 = [v6 sessionIdentifier];
  v9 = [(NSMutableDictionary *)activeHealthConceptPromptSessionsBySessionIdentifier objectForKeyedSubscript:v8];

  if (!v9)
  {
    goto LABEL_20;
  }

  v10 = v9[6];
  v11 = [v6 bundleIdentifier];
  v12 = v11;
  if (v10 == v11)
  {
  }

  else
  {
    v13 = [v6 bundleIdentifier];
    if (!v13)
    {

LABEL_20:
      v28 = [MEMORY[0x277CCA9B8] hk_error:3 description:@"Could not locate prompt session for health concept"];
      if (v28)
      {
        if (a4)
        {
          v29 = v28;
          *a4 = v28;
        }

        else
        {
          _HKLogDroppedError();
        }
      }

      v27 = 0;
      goto LABEL_25;
    }

    v14 = v13;
    v15 = v9[6];
    v16 = [v6 bundleIdentifier];
    v17 = [v15 isEqualToString:v16];

    if ((v17 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v19 = v9[2];
  v20 = [v19 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v33;
    do
    {
      v23 = 0;
      do
      {
        if (*v33 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v32 + 1) + 8 * v23);
        if (v24)
        {
          v25 = *(v24 + 24);
        }

        else
        {
          v25 = 0;
        }

        [v18 addObjectsFromArray:{v25, v32}];
        ++v23;
      }

      while (v21 != v23);
      v26 = [v19 countByEnumeratingWithState:&v32 objects:v36 count:16];
      v21 = v26;
    }

    while (v26);
  }

  v27 = [objc_alloc(MEMORY[0x277CCD1C0]) initWithConceptsRequiringAuthorization:v18];
LABEL_25:

  v30 = *MEMORY[0x277D85DE8];

  return v27;
}

- (void)createRecalibrateEstimatesRequestRecordForSource:(id)a3 sampleType:(id)a4 effectiveDate:(id)a5 handler:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v15 = [WeakRetained sourceManager];
  v25 = 0;
  v16 = [v15 clientSourceForSourceEntity:v13 error:&v25];

  v17 = v25;
  if (v16)
  {
    queue = self->_queue;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __108__HDAuthorizationManager_createRecalibrateEstimatesRequestRecordForSource_sampleType_effectiveDate_handler___block_invoke;
    v19[3] = &unk_278621AA0;
    v20 = v16;
    v21 = self;
    v24 = v12;
    v22 = v10;
    v23 = v11;
    dispatch_async(queue, v19);
  }

  else
  {
    (*(v12 + 2))(v12, 0, v17);
  }
}

void __108__HDAuthorizationManager_createRecalibrateEstimatesRequestRecordForSource_sampleType_effectiveDate_handler___block_invoke(uint64_t a1)
{
  v12 = [*(a1 + 32) bundleIdentifier];
  v2 = [*(*(a1 + 40) + 128) objectForKeyedSubscript:?];
  if (v2)
  {
    if (![(HDAuthorizationManager *)*(a1 + 40) _isRecalibrateEstimatesRequestSessionExpiredWithCreationDate:?])
    {
      v11 = *(a1 + 64);
      v7 = [MEMORY[0x277CCA9B8] hk_error:3 description:@"An active recalibrate estimates request session already exists."];
      (*(v11 + 16))(v11, 0, v7);
      goto LABEL_9;
    }

    [*(*(a1 + 40) + 128) setObject:0 forKeyedSubscript:v12];
  }

  v3 = objc_alloc(MEMORY[0x277CCD888]);
  v4 = [MEMORY[0x277CCAD78] UUID];
  v5 = [v3 initWithSessionIdentifier:v4 source:*(a1 + 32) sampleType:*(a1 + 48) effectiveDate:*(a1 + 56)];

  v6 = [_HDRecalibrateEstimatesRequestSession alloc];
  v7 = v5;
  if (v6)
  {
    v13.receiver = v6;
    v13.super_class = _HDRecalibrateEstimatesRequestSession;
    v8 = objc_msgSendSuper2(&v13, sel_init);
    v6 = v8;
    if (v8)
    {
      objc_storeStrong(&v8->_requestRecord, v5);
      v9 = [MEMORY[0x277CBEAA8] date];
      creationDate = v6->_creationDate;
      v6->_creationDate = v9;
    }
  }

  [*(*(a1 + 40) + 128) setObject:v6 forKeyedSubscript:v12];
  (*(*(a1 + 64) + 16))();

LABEL_9:
}

- (void)_isRecalibrateEstimatesRequestSessionExpiredWithCreationDate:(void *)result
{
  if (result)
  {
    v2 = result;
    v3 = MEMORY[0x277CBEAA8];
    v4 = a2;
    v5 = [v3 date];
    [v2 requestSessionTimeout];
    v6 = [v4 dateByAddingTimeInterval:?];

    v7 = [v5 hk_isAfterDate:v6];
    return v7;
  }

  return result;
}

- (id)authorizationStatusForTypes:(id)a3 bundleIdentifier:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v11 = [HDAuthorizationStatus authorizationStatusForTypes:v9 bundleIdentifier:v8 profile:WeakRetained error:a5];

  return v11;
}

- (BOOL)isAuthorizedForObjectType:(id)a3 authorizationStatus:(id)a4 clientEntitlements:(id)a5 sharing:(BOOL)a6 error:(id *)a7
{
  v7 = a6;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  if (!v13)
  {
    v26 = [MEMORY[0x277CCA890] currentHandler];
    [v26 handleFailureInMethod:a2 object:self file:@"HDAuthorizationManager.m" lineNumber:1903 description:{@"Invalid parameter not satisfying: %@", @"authorizationStatus != nil"}];
  }

  v27 = self;
  v15 = [v13 integerValue];
  v16 = HKAuthorizationStatusAllowsSharing();
  v17 = HKAuthorizationStatusAllowsReading();
  v18 = *MEMORY[0x277CCCCE0];
  v19 = v12;
  v20 = [v12 identifier];
  v21 = [v14 arrayEntitlement:v18 containsString:v20];

  if ((v15 - 101) >= 4)
  {
    if (v15 == 100)
    {
      v22 = v7 | v21 ^ 1;
      v23 = v22 ^ 1;
    }

    else
    {
      v24 = [MEMORY[0x277CCA890] currentHandler];
      [v24 handleFailureInMethod:a2 object:v27 file:@"HDAuthorizationManager.m" lineNumber:1925 description:{@"Unexpected authorization status %@", v13}];

      v23 = 0;
      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
    if (v7)
    {
      v23 = v16;
    }

    else
    {
      v23 = v17;
    }
  }

  if (a7 && (v23 & 1) == 0)
  {
    if (v22)
    {
      [MEMORY[0x277CCA9B8] hk_error:5 description:@"Authorization is not determined"];
    }

    else
    {
      [MEMORY[0x277CCA9B8] hk_error:4 format:@"Not authorized"];
    }
    *a7 = ;
  }

  return v23 & 1;
}

- (void)validateRecalibrateEstimatesRequestRecord:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79__HDAuthorizationManager_validateRecalibrateEstimatesRequestRecord_completion___block_invoke;
  block[3] = &unk_278614160;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

void __79__HDAuthorizationManager_validateRecalibrateEstimatesRequestRecord_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) source];
  v9 = [v2 bundleIdentifier];

  v3 = [*(*(a1 + 40) + 128) objectForKeyedSubscript:v9];
  v4 = v3;
  if (!v3 || ![*(v3 + 8) isEqual:*(a1 + 32)])
  {
    v8 = *(a1 + 48);
    v7 = [MEMORY[0x277CCA9B8] hk_error:3 description:@"Recalibrate estimates request record validation failed."];
    (*(v8 + 16))(v8, 0, v7);
    goto LABEL_6;
  }

  [*(*(a1 + 40) + 128) setObject:0 forKeyedSubscript:v9];
  v5 = [(HDAuthorizationManager *)*(a1 + 40) _isRecalibrateEstimatesRequestSessionExpiredWithCreationDate:?];
  v6 = *(a1 + 48);
  if (v5)
  {
    v7 = [MEMORY[0x277CCA9B8] hk_error:103 description:@"Recalibrate estimates request session timed out."];
    (*(v6 + 16))(v6, 0, v7);
LABEL_6:

    goto LABEL_7;
  }

  (*(v6 + 16))(v6, 1, 0);
LABEL_7:
}

- (id)diagnosticDescription
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAB68] string];
  v4 = self->_promptingRequestGroup;
  if (v4)
  {
    [v3 appendFormat:@"Prompting request group:"];
    [v3 appendFormat:@"\n%@\n\n", v4];
  }

  v5 = [(NSMutableArray *)self->_pendingRequestGroups copy];
  if ([v5 count])
  {
    [v3 appendFormat:@"Pending request groups:"];
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v18;
      do
      {
        v10 = 0;
        do
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v17 + 1) + 8 * v10);
          v12 = [(_HDAuthorizationRequestGroup *)v11 bundleIdentifier];
          if (v11)
          {
            v13 = [v11[4] count];
          }

          else
          {
            v13 = 0;
          }

          [v3 appendFormat:@"\n%@ (%lu requests)", v12, v13, v17];

          ++v10;
        }

        while (v8 != v10);
        v14 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
        v8 = v14;
      }

      while (v14);
    }

    [v3 appendFormat:@"\n\n"];
  }

  v15 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)_schemaProviderForType:(id)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(a3, "code")}];
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_schemaProviderMap objectForKeyedSubscript:v4];
  if (!v5)
  {
    v5 = objc_alloc_init(HDDefaultAuthorizationSchemaProvider);
    [(NSMutableDictionary *)self->_schemaProviderMap setObject:v5 forKeyedSubscript:v4];
  }

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (id)unitTest_schemaProviderMap
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableDictionary *)self->_schemaProviderMap copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (int64_t)isClientAuthorizedToReadObject:(id)a3 sourceBundleIdentifier:(id)a4 clientEntitlements:(id)a5 profile:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v17 = 0;
LABEL_6:
    [MEMORY[0x277CCA9B8] hk_assignError:a7 code:2000 format:{@"Unable to determine the provider for the object %@", v12}];
    v18 = 3;
    goto LABEL_7;
  }

  v16 = [v12 hk_objectType];
  v17 = [(HDAuthorizationManager *)self _schemaProviderForType:v16];

  if (!v17 || (objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_6;
  }

  v18 = [v17 isClientAuthorizedToReadObject:v12 sourceBundleIdentifier:v13 clientEntitlements:v14 profile:v15 error:a7];
LABEL_7:

  return v18;
}

- (int64_t)isClientAuthorizedToReadType:(id)a3 sourceBundleIdentifier:(id)a4 clientEntitlements:(id)a5 profile:(id)a6 error:(id *)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a3;
  v16 = [(HDAuthorizationManager *)self _schemaProviderForType:v15];
  if (objc_opt_respondsToSelector())
  {
    v17 = [v16 isClientAuthorizedToReadType:v15 sourceBundleIdentifier:v12 clientEntitlements:v13 profile:v14 error:a7];
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a7 code:2000 format:{@"Unable to determine the provider for this type %@", v15}];
    v17 = 3;
  }

  return v17;
}

- (int64_t)isClientAuthorizedToWriteObject:(id)a3 sourceBundleIdentifier:(id)a4 clientEntitlements:(id)a5 profile:(id)a6 error:(id *)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a3;
  v16 = [v15 hd_sampleType];
  v17 = [(HDAuthorizationManager *)self _schemaProviderForType:v16];

  if (objc_opt_respondsToSelector())
  {
    v18 = [v17 isClientAuthorizedToWriteObject:v15 sourceBundleIdentifier:v12 clientEntitlements:v13 profile:v14 error:a7];
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a7 code:2000 format:{@"Unable to determine the provider for this object %@", v15}];
    v18 = 3;
  }

  return v18;
}

- (int64_t)isClientAuthorizedToWriteType:(id)a3 sourceBundleIdentifier:(id)a4 clientEntitlements:(id)a5 profile:(id)a6 error:(id *)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a3;
  v16 = [(HDAuthorizationManager *)self _schemaProviderForType:v15];
  if (objc_opt_respondsToSelector())
  {
    v17 = [v16 isClientAuthorizedToWriteType:v15 sourceBundleIdentifier:v12 clientEntitlements:v13 profile:v14 error:a7];
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a7 code:2000 format:{@"Unable to determine the provider for this type %@", v15}];
    v17 = 3;
  }

  return v17;
}

- (id)filteredAuthorizedObjectsForClient:(id)a3 anchor:(id)a4 bundleIdentifier:(id)a5 clientEntitlements:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__99;
  v42 = __Block_byref_object_dispose__99;
  v43 = 0;
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __110__HDAuthorizationManager_filteredAuthorizedObjectsForClient_anchor_bundleIdentifier_clientEntitlements_error___block_invoke;
  v36[3] = &unk_278621C20;
  v36[4] = self;
  v18 = v17;
  v37 = v18;
  [v12 enumerateObjectsUsingBlock:v36];
  if (v18)
  {
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __110__HDAuthorizationManager_filteredAuthorizedObjectsForClient_anchor_bundleIdentifier_clientEntitlements_error___block_invoke_2;
    v29[3] = &unk_278621C48;
    v30 = v13;
    v31 = v14;
    v32 = v15;
    v33 = self;
    v35 = &v38;
    v19 = v16;
    v34 = v19;
    [v18 enumerateKeysAndObjectsUsingBlock:v29];
    v20 = v39[5];
    if (v20)
    {
      v21 = v20;
      v22 = v21;
      if (a7)
      {
        v23 = v21;
        *a7 = v22;
      }

      else
      {
        _HKLogDroppedError();
      }

      v27 = 0;
    }

    else
    {
      v27 = v19;
    }

    v25 = v30;
  }

  else
  {
    v24 = [MEMORY[0x277CCA9B8] hk_error:2000 format:{@"Unable to determine the authorization providers for the objects %@, hence returning nil", v12}];
    v25 = v24;
    if (v24)
    {
      if (a7)
      {
        v26 = v24;
        *a7 = v25;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v27 = 0;
  }

  _Block_object_dispose(&v38, 8);

  return v27;
}

void __110__HDAuthorizationManager_filteredAuthorizedObjectsForClient_anchor_bundleIdentifier_clientEntitlements_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8 = v3;
  v5 = [v3 hd_sampleType];
  v6 = [v4 _schemaProviderForType:v5];

  v7 = [*(a1 + 40) objectForKeyedSubscript:v6];
  if (!v7)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB40]);
    [*(a1 + 40) setObject:v7 forKeyedSubscript:v6];
  }

  [v7 addObject:v8];
}

void __110__HDAuthorizationManager_filteredAuthorizedObjectsForClient_anchor_bundleIdentifier_clientEntitlements_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (objc_opt_respondsToSelector())
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    WeakRetained = objc_loadWeakRetained((*(a1 + 56) + 48));
    v11 = *(*(a1 + 72) + 8);
    obj = *(v11 + 40);
    v12 = [v5 filteredAuthorizedObjectsForClient:v6 anchor:v7 bundleIdentifier:v8 clientEntitlements:v9 profile:WeakRetained error:&obj];
    objc_storeStrong((v11 + 40), obj);

    if (v12)
    {
      [*(a1 + 64) addObjectsFromArray:v12];
    }
  }

  else
  {
    v13 = *(*(a1 + 72) + 8);
    v14 = *(v13 + 40);
    if (v14)
    {
      v15 = v14;
      v16 = *(v13 + 40);
      *(v13 + 40) = v15;
    }

    else
    {
      v17 = *(a1 + 56);
      v18 = [MEMORY[0x277CCA9B8] hk_error:2000 format:{@"%@: Provider %@: does not respond to the selector for the following object set %@:", objc_opt_class(), v5, v6}];
      v19 = *(*(a1 + 72) + 8);
      v16 = *(v19 + 40);
      *(v19 + 40) = v18;
    }

    _HKInitializeLogging();
    v12 = HKLogAuthorization();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v21 = *(a1 + 56);
      *buf = 138412802;
      v25 = objc_opt_class();
      v26 = 2112;
      v27 = v5;
      v28 = 2112;
      v29 = v6;
      v22 = v25;
      _os_log_error_impl(&dword_228986000, v12, OS_LOG_TYPE_ERROR, "%@: Provider %@: does not respond to the selector for the following object set %@:", buf, 0x20u);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (id)filterForClientUserAnnotatedMedications:(id)a3 bundleIdentifier:(id)a4 clientEntitlements:(id)a5 error:(id *)a6
{
  v31 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if (!v11)
  {
    v22 = [MEMORY[0x277CCA890] currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"HDAuthorizationManager.m" lineNumber:2187 description:{@"Invalid parameter not satisfying: %@", @"userAnnotatedMedicationObjects != nil"}];
  }

  v14 = [MEMORY[0x277CCD720] userAnnotatedMedicationType];
  v15 = [(HDAuthorizationManager *)self _schemaProviderForType:v14];
  if (v15)
  {
    if (objc_opt_respondsToSelector())
    {
      WeakRetained = objc_loadWeakRetained(&self->_profile);
      v17 = [v15 filterForClientUserAnnotatedMedications:v11 bundleIdentifier:v12 clientEntitlements:v13 profile:WeakRetained error:a6];

      goto LABEL_11;
    }

    _HKInitializeLogging();
    v18 = HKLogAuthorization();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v26 = objc_opt_class();
      v27 = 2112;
      v28 = v15;
      v29 = 2112;
      v30 = v11;
      v21 = v26;
      _os_log_error_impl(&dword_228986000, v18, OS_LOG_TYPE_ERROR, "%@: Provider %@: does not respond to the selector for the following objects %@:", buf, 0x20u);
    }

    [MEMORY[0x277CCA9B8] hk_assignError:a6 code:2000 format:{@"%@: Provider %@: does not respond to the selector for the following objects %@:", objc_opt_class(), v15, v11}];
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a6 code:2000 format:{@"Unable to determine the authorization provider for the objects %@, returning nil", v11, v23, v24}];
  }

  v17 = 0;
LABEL_11:

  v19 = *MEMORY[0x277D85DE8];

  return v17;
}

- (void)fetchConceptAuthorizationRecordsForSource:(id)a3 completion:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (v7)
  {
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    v10 = *MEMORY[0x277D10C08];
    v33 = 0;
    v11 = [HDUserDomainConceptAPIObjectManager allUserAnnotatedMedicationsFromUserDomainConceptsWithProfile:WeakRetained predicate:0 limit:v10 error:&v33];
    v12 = v33;

    if ([v11 count])
    {
      v13 = objc_loadWeakRetained(&self->_profile);
      v14 = [v13 sourceManager];
      v15 = [v7 bundleIdentifier];
      v32 = v12;
      v16 = [v14 localSourceForBundleIdentifier:v15 copyIfNecessary:1 error:&v32];
      v17 = v32;

      if (v16)
      {
        v18 = objc_loadWeakRetained(&self->_profile);
        v31 = v17;
        v19 = [HDConceptAuthorizationEntity authorizationRecordsForMedications:v11 sourceEntity:v16 profile:v18 error:&v31];
        v12 = v31;

        _HKInitializeLogging();
        v20 = HKLogAuthorization();
        v21 = os_log_type_enabled(v20, OS_LOG_TYPE_INFO);

        if (v19)
        {
          if (v21)
          {
            v22 = HKLogAuthorization();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_228986000, v22, OS_LOG_TYPE_INFO, "Successfully retrieved concept authorization records for medications", buf, 2u);
            }
          }

          v8[2](v8, v19, 0);
        }

        else
        {
          if (v21)
          {
            v27 = HKLogAuthorization();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
            {
              *buf = 138543362;
              v35 = v12;
              _os_log_impl(&dword_228986000, v27, OS_LOG_TYPE_INFO, "Failed to retrieve concept authorization records for medications with error: %{public}@", buf, 0xCu);
            }
          }

          (v8)[2](v8, 0, v12);
        }
      }

      else
      {
        (v8)[2](v8, 0, v17);
        v12 = v17;
      }
    }

    else
    {
      if (!v12)
      {
        v12 = [MEMORY[0x277CCA9B8] hk_error:2000 format:{@"%@: The following client does not have any medications saved.", objc_opt_class()}];
      }

      _HKInitializeLogging();
      v24 = HKLogAuthorization();
      v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG);

      if (v25)
      {
        v26 = HKLogAuthorization();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          v29 = objc_opt_class();
          *buf = 138412290;
          v35 = v29;
          v30 = v29;
          _os_log_debug_impl(&dword_228986000, v26, OS_LOG_TYPE_DEBUG, "%@: The following client does not have any medications saved.", buf, 0xCu);
        }
      }

      (v8)[2](v8, 0, v12);
    }
  }

  else
  {
    v23 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:@"Source may not be nil"];
    (v8)[2](v8, 0, v23);
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (id)_builtInSchemas
{
  v8[3] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(HDVisionPrescriptionAuthorizationSchemaProvider);
  v3 = objc_alloc_init(HDConceptAuthorizationSchemaProvider);
  v7[0] = &unk_283CB3C78;
  v7[1] = &unk_283CB3C90;
  v8[0] = v2;
  v8[1] = v3;
  v7[2] = &unk_283CB3CA8;
  v8[2] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

@end