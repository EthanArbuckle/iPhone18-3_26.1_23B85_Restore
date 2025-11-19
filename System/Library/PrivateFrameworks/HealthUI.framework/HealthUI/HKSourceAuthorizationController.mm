@interface HKSourceAuthorizationController
- (BOOL)_parentTypeDisabledForType:(id)a3 inSection:(int64_t)a4;
- (BOOL)allTypesEnabled;
- (BOOL)allTypesEnabledInSection:(int64_t)a3;
- (BOOL)anyTypeRequested;
- (BOOL)isRequestingDocumentAuthorization;
- (BOOL)isTypeEnabled:(id)a3 inSection:(int64_t)a4;
- (HKSourceAuthorizationController)initWithHealthStore:(id)a3 source:(id)a4 typesForSharing:(id)a5 typesForReading:(id)a6;
- (HKSourceAuthorizationControllerDelegate)delegate;
- (NSString)titleText;
- (UIImage)iconImage;
- (id)_enabledSubTypesForType:(id)a3 inSection:(int64_t)a4;
- (id)_enabledTypesInSection:(int64_t)a3;
- (id)_sortedTypes:(id)a3;
- (id)copyTypesWithBloodPressureTreatment:(id)a3;
- (id)typesInSection:(int64_t)a3;
- (int64_t)_authorizationStatusWithType:(id)a3;
- (unint64_t)countOfTypesInSection:(int64_t)a3;
- (void)_handleSetAuthorizationCompletionSuccess:(BOOL)a3 error:(id)a4;
- (void)_reloadDocumentAuthorizationRecords;
- (void)_reloadTypeAuthorizationRecords;
- (void)_setAuthorizationStatuses:(id)a3;
- (void)_updateAuthorizationStatusWithTypes:(id)a3;
- (void)commitAuthorizationStatuses;
- (void)commitObjectAuthorizationStatuses:(id)a3;
- (void)reload;
- (void)resetObjectAuthorizationStatuses;
- (void)setEnabled:(BOOL)a3 forAllTypesInSection:(int64_t)a4 commit:(BOOL)a5;
- (void)setEnabled:(BOOL)a3 forType:(id)a4 inSection:(int64_t)a5 commit:(BOOL)a6;
@end

@implementation HKSourceAuthorizationController

- (HKSourceAuthorizationController)initWithHealthStore:(id)a3 source:(id)a4 typesForSharing:(id)a5 typesForReading:(id)a6
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (v12)
  {
    if (v13)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [HKSourceAuthorizationController initWithHealthStore:a2 source:self typesForSharing:? typesForReading:?];
    if (v13)
    {
      goto LABEL_3;
    }
  }

  [HKSourceAuthorizationController initWithHealthStore:a2 source:self typesForSharing:? typesForReading:?];
LABEL_3:
  v26.receiver = self;
  v26.super_class = HKSourceAuthorizationController;
  v16 = [(HKSourceAuthorizationController *)&v26 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_healthStore, a3);
    v18 = [objc_alloc(MEMORY[0x1E696BF50]) initWithHealthStore:v12];
    authorizationStore = v17->_authorizationStore;
    v17->_authorizationStore = v18;

    objc_storeStrong(&v17->_source, a4);
    v20 = [(HKSourceAuthorizationController *)v17 copyTypesWithBloodPressureTreatment:v14];
    requestedTypesForSharing = v17->_requestedTypesForSharing;
    v17->_requestedTypesForSharing = v20;

    v22 = [(HKSourceAuthorizationController *)v17 copyTypesWithBloodPressureTreatment:v15];
    requestedTypesForReading = v17->_requestedTypesForReading;
    v17->_requestedTypesForReading = v22;

    requestedDocumentAuths = v17->_requestedDocumentAuths;
    v17->_requestedDocumentAuths = 0;

    v17->_isUpdatingAllTypes = 0;
    [(HKSourceAuthorizationController *)v17 reload];
  }

  return v17;
}

- (id)copyTypesWithBloodPressureTreatment:(id)a3
{
  v3 = MEMORY[0x1E696C2E0];
  v4 = a3;
  v5 = [v3 dataTypeWithCode:16];
  v6 = [MEMORY[0x1E696C2E0] dataTypeWithCode:17];
  v7 = [v4 mutableCopy];
  v8 = [v4 containsObject:v5];
  v9 = [v4 containsObject:v6];

  [v7 removeObject:v5];
  [v7 removeObject:v6];
  if ((v8 & 1) != 0 || v9)
  {
    v10 = [MEMORY[0x1E696C2E0] dataTypeWithCode:80];
    [v7 addObject:v10];
  }

  return v7;
}

- (void)reload
{
  [(HKSourceAuthorizationController *)self _reloadTypeAuthorizationRecords];

  [(HKSourceAuthorizationController *)self _reloadDocumentAuthorizationRecords];
}

- (void)_reloadDocumentAuthorizationRecords
{
  v3 = [MEMORY[0x1E696C2E0] documentTypeForIdentifier:*MEMORY[0x1E696B7C0]];
  authorizationStore = self->_authorizationStore;
  v5 = [(HKSource *)self->_source bundleIdentifier];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __70__HKSourceAuthorizationController__reloadDocumentAuthorizationRecords__block_invoke;
  v6[3] = &unk_1E81BA360;
  v6[4] = self;
  [(HKAuthorizationStore *)authorizationStore fetchAuthorizationStatusesForDocumentType:v3 bundleIdentifier:v5 completion:v6];
}

void __70__HKSourceAuthorizationController__reloadDocumentAuthorizationRecords__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    _HKInitializeLogging();
    v7 = HKLogAuthorization();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __70__HKSourceAuthorizationController__reloadDocumentAuthorizationRecords__block_invoke_cold_1();
    }
  }

  [*(a1 + 32) setRequestedDocumentAuths:v5];
}

- (void)_reloadTypeAuthorizationRecords
{
  v45 = *MEMORY[0x1E69E9840];
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__24;
  v39 = __Block_byref_object_dispose__24;
  v40 = 0;
  v3 = dispatch_semaphore_create(0);
  authorizationStore = self->_authorizationStore;
  v5 = [(HKSource *)self->_source bundleIdentifier];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __66__HKSourceAuthorizationController__reloadTypeAuthorizationRecords__block_invoke;
  v32[3] = &unk_1E81BB220;
  v34 = &v35;
  v32[4] = self;
  v6 = v3;
  v33 = v6;
  [(HKAuthorizationStore *)authorizationStore fetchAuthorizationRecordsForBundleIdentifier:v5 completion:v32];

  dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v9 = [MEMORY[0x1E695DFA8] set];
  typesEnabledForSharing = self->_typesEnabledForSharing;
  self->_typesEnabledForSharing = v9;

  v11 = [MEMORY[0x1E695DFA8] set];
  typesEnabledForReading = self->_typesEnabledForReading;
  self->_typesEnabledForReading = v11;

  v13 = v36[5];
  v25 = MEMORY[0x1E69E9820];
  v26 = 3221225472;
  v27 = __66__HKSourceAuthorizationController__reloadTypeAuthorizationRecords__block_invoke_354;
  v28 = &unk_1E81BB248;
  v29 = self;
  v14 = v7;
  v30 = v14;
  v15 = v8;
  v31 = v15;
  [v13 enumerateKeysAndObjectsUsingBlock:&v25];
  v16 = [v14 allObjects];
  v17 = [(HKSourceAuthorizationController *)self _sortedTypes:v16];
  orderedTypesForSharing = self->_orderedTypesForSharing;
  self->_orderedTypesForSharing = v17;

  v19 = [v15 allObjects];
  v20 = [(HKSourceAuthorizationController *)self _sortedTypes:v19];
  orderedTypesForReading = self->_orderedTypesForReading;
  self->_orderedTypesForReading = v20;

  _HKInitializeLogging();
  v22 = HKLogAuthorization();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v24 = self->_orderedTypesForSharing;
    v23 = self->_orderedTypesForReading;
    *buf = 138412546;
    v42 = v23;
    v43 = 2112;
    v44 = v24;
    _os_log_impl(&dword_1C3942000, v22, OS_LOG_TYPE_DEFAULT, "Ordered read: %@\nOrdered Write: %@", buf, 0x16u);
  }

  _Block_object_dispose(&v35, 8);
}

void __66__HKSourceAuthorizationController__reloadTypeAuthorizationRecords__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  if (v7)
  {
    _HKInitializeLogging();
    v8 = HKLogAuthorization();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __66__HKSourceAuthorizationController__reloadTypeAuthorizationRecords__block_invoke_cold_1();
    }
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

void __66__HKSourceAuthorizationController__reloadTypeAuthorizationRecords__block_invoke_354(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = [v5 status];
  if (([v11 isClinicalType] & 1) == 0)
  {
    if (v6 == 100 || (v7 = *(a1 + 32), !*(v7 + 112)) || !*(v7 + 104))
    {
      if ([v5 requestedSharing])
      {
        v8 = *(*(a1 + 32) + 104);
        if (!v8 || [v8 containsObject:v11])
        {
          [*(a1 + 40) addObject:v11];
          if (HKAuthorizationStatusAllowsSharing())
          {
            [*(*(a1 + 32) + 88) addObject:v11];
          }
        }
      }

      if ([v5 requestedReading])
      {
        v9 = *(*(a1 + 32) + 112);
        if (!v9 || [v9 containsObject:v11])
        {
          [*(a1 + 48) addObject:v11];
          if (HKAuthorizationStatusAllowsReading())
          {
            [*(*(a1 + 32) + 96) addObject:v11];
          }
        }
      }

      if ([v11 code] == 16 || objc_msgSend(v11, "code") == 17)
      {
        v10 = [MEMORY[0x1E696C2E0] dataTypeWithCode:80];
        if ([v5 requestedSharing])
        {
          [*(a1 + 40) addObject:v10];
          [*(a1 + 40) removeObject:v11];
          if (HKAuthorizationStatusAllowsSharing())
          {
            [*(*(a1 + 32) + 88) addObject:v10];
            [*(*(a1 + 32) + 88) removeObject:v11];
          }
        }

        if ([v5 requestedReading])
        {
          [*(a1 + 48) addObject:v10];
          [*(a1 + 48) removeObject:v11];
          if (HKAuthorizationStatusAllowsReading())
          {
            [*(*(a1 + 32) + 96) addObject:v10];
            [*(*(a1 + 32) + 96) removeObject:v11];
          }
        }
      }
    }
  }
}

- (id)_sortedTypes:(id)a3
{
  v3 = [MEMORY[0x1E695DF70] arrayWithArray:a3];
  [v3 sortUsingComparator:&__block_literal_global_77];
  v4 = [MEMORY[0x1E695DEC8] arrayWithArray:v3];

  return v4;
}

uint64_t __48__HKSourceAuthorizationController__sortedTypes___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 hk_localizedName];
  v6 = [v4 hk_localizedName];

  v7 = [v5 localizedCaseInsensitiveCompare:v6];
  return v7;
}

- (BOOL)isRequestingDocumentAuthorization
{
  orderedTypesForReading = self->_orderedTypesForReading;
  v3 = [MEMORY[0x1E696C2E0] documentTypeForIdentifier:*MEMORY[0x1E696B7C0]];
  LOBYTE(orderedTypesForReading) = [(NSArray *)orderedTypesForReading indexOfObject:v3]!= 0x7FFFFFFFFFFFFFFFLL;

  return orderedTypesForReading;
}

- (unint64_t)countOfTypesInSection:(int64_t)a3
{
  v3 = [(HKSourceAuthorizationController *)self typesInSection:a3];
  v4 = [v3 count];

  return v4;
}

- (id)typesInSection:(int64_t)a3
{
  if (a3 == 4)
  {
    v4 = 72;
LABEL_5:
    v5 = *(&self->super.isa + v4);

    return v5;
  }

  if (a3 == 6)
  {
    v4 = 80;
    goto LABEL_5;
  }

  v5 = 0;

  return v5;
}

- (void)commitObjectAuthorizationStatuses:(id)a3
{
  v4 = self;
  v5 = a3;
  v6 = [objc_opt_class() _statusesByConceptIdentifiersFromStatuses:v5];

  v7 = [objc_alloc(MEMORY[0x1E696C2D8]) initWithObjectAuthorizationStatuses:v6 sessionIdentifier:0];
  authorizationStore = v4->_authorizationStore;
  v9 = [(HKSource *)v4->_source bundleIdentifier];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __69__HKSourceAuthorizationController_commitObjectAuthorizationStatuses___block_invoke;
  v10[3] = &unk_1E81B59C0;
  v10[4] = v4;
  [(HKAuthorizationStore *)authorizationStore setObjectAuthorizationStatusContext:v7 forObjectType:0 bundleIdentifier:v9 completion:v10];
}

void __69__HKSourceAuthorizationController_commitObjectAuthorizationStatuses___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v6 = HKLogAuthorization();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __69__HKSourceAuthorizationController_commitObjectAuthorizationStatuses___block_invoke_cold_1();
    }
  }

  [*(a1 + 32) _reloadDocumentAuthorizationRecords];
}

void __77__HKSourceAuthorizationController__statusesByConceptIdentifiersFromStatuses___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = MEMORY[0x1E696C1A0];
  v7 = a4;
  v8 = a3;
  v9 = a2;
  v10 = [v6 alloc];
  v11 = *MEMORY[0x1E696B908];
  v12 = [v9 UUIDString];

  v13 = [v10 initWithDomain:v11 underlyingIdentifier:v12];
  v7[2](v7, v13, v8);
}

- (void)resetObjectAuthorizationStatuses
{
  v3 = [MEMORY[0x1E696C2E0] documentTypeForIdentifier:*MEMORY[0x1E696B7C0]];
  authorizationStore = self->_authorizationStore;
  v5 = [(HKSource *)self->_source bundleIdentifier];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __67__HKSourceAuthorizationController_resetObjectAuthorizationStatuses__block_invoke;
  v6[3] = &unk_1E81B59C0;
  v6[4] = self;
  [(HKAuthorizationStore *)authorizationStore resetAllObjectAuthorizationStatusForBundleIdentifier:v5 objectType:v3 completion:v6];
}

void __67__HKSourceAuthorizationController_resetObjectAuthorizationStatuses__block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v6 = HKLogAuthorization();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __67__HKSourceAuthorizationController_resetObjectAuthorizationStatuses__block_invoke_cold_1();
    }
  }

  [*(a1 + 32) _reloadDocumentAuthorizationRecords];
}

- (BOOL)isTypeEnabled:(id)a3 inSection:(int64_t)a4
{
  v6 = a3;
  v7 = [(HKSourceAuthorizationController *)self _enabledTypesInSection:a4];
  LOBYTE(self) = [v7 containsObject:v6];

  return self;
}

- (void)setEnabled:(BOOL)a3 forType:(id)a4 inSection:(int64_t)a5 commit:(BOOL)a6
{
  v6 = a6;
  v8 = a3;
  v10 = a4;
  v11 = [(HKSourceAuthorizationController *)self _enabledTypesInSection:a5];
  v12 = [MEMORY[0x1E695DFA8] setWithObject:v10];
  if (v8)
  {
    if ([(HKSourceAuthorizationController *)self _parentTypeDisabledForType:v10 inSection:a5]&& !self->_isUpdatingAllTypes)
    {
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __71__HKSourceAuthorizationController_setEnabled_forType_inSection_commit___block_invoke;
      v19[3] = &unk_1E81BB2B0;
      v19[4] = self;
      v20 = v10;
      v21 = a5;
      dispatch_async(MEMORY[0x1E69E96A0], v19);

      goto LABEL_12;
    }

    [v11 addObject:v10];
    if (!v6)
    {
      goto LABEL_12;
    }

LABEL_9:
    [(HKSourceAuthorizationController *)self _updateAuthorizationStatusWithTypes:v12];
    goto LABEL_12;
  }

  v13 = [(HKSourceAuthorizationController *)self _enabledSubTypesForType:v10 inSection:a5];
  if ([v13 count] && !self->_isUpdatingAllTypes)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __71__HKSourceAuthorizationController_setEnabled_forType_inSection_commit___block_invoke_2;
    block[3] = &unk_1E81B74D8;
    block[4] = self;
    v16 = v13;
    v17 = v10;
    v18 = a5;
    v14 = v13;
    dispatch_async(MEMORY[0x1E69E96A0], block);

    goto LABEL_12;
  }

  [v11 removeObject:v10];

  if (v6)
  {
    goto LABEL_9;
  }

LABEL_12:
}

void __71__HKSourceAuthorizationController_setEnabled_forType_inSection_commit___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) parentType];
  [v4 authorizationController:v2 parentTypeIsDisabled:v3 forType:*(a1 + 40) inSection:*(a1 + 48)];
}

void __71__HKSourceAuthorizationController_setEnabled_forType_inSection_commit___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 authorizationController:*(a1 + 32) subTypesEnabled:*(a1 + 40) forType:*(a1 + 48) inSection:*(a1 + 56)];
}

- (BOOL)_parentTypeDisabledForType:(id)a3 inSection:(int64_t)a4
{
  v6 = a3;
  v7 = [v6 parentType];

  if (v7)
  {
    v8 = [(HKSourceAuthorizationController *)self typesInSection:a4];
    v9 = [v6 parentType];
    v10 = [v8 containsObject:v9];

    v11 = [v6 parentType];
    v12 = ![(HKSourceAuthorizationController *)self isTypeEnabled:v11 inSection:a4];

    v13 = v10 & v12;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)_enabledSubTypesForType:(id)a3 inSection:(int64_t)a4
{
  v6 = a3;
  v7 = [(HKSourceAuthorizationController *)self _enabledTypesInSection:a4];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __69__HKSourceAuthorizationController__enabledSubTypesForType_inSection___block_invoke;
  v11[3] = &unk_1E81BB2D8;
  v12 = v6;
  v8 = v6;
  v9 = [v7 objectsPassingTest:v11];

  return v9;
}

uint64_t __69__HKSourceAuthorizationController__enabledSubTypesForType_inSection___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 parentType];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (BOOL)allTypesEnabled
{
  v3 = [(HKSourceAuthorizationController *)self allTypesEnabledInSection:6];
  if (v3)
  {

    LOBYTE(v3) = [(HKSourceAuthorizationController *)self allTypesEnabledInSection:4];
  }

  return v3;
}

- (BOOL)allTypesEnabledInSection:(int64_t)a3
{
  if (a3 == 6)
  {
    v4 = 80;
    v5 = 96;
    goto LABEL_5;
  }

  if (a3 == 4)
  {
    v4 = 72;
    v5 = 88;
LABEL_5:
    v6 = [*(&self->super.isa + v5) count];
    return v6 == [*(&self->super.isa + v4) count];
  }

  return 0;
}

- (BOOL)anyTypeRequested
{
  v3 = [(HKSourceAuthorizationController *)self orderedTypesForReading];
  if ([v3 count])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(HKSourceAuthorizationController *)self orderedTypesForSharing];
    v4 = [v5 count] != 0;
  }

  return v4;
}

- (void)setEnabled:(BOOL)a3 forAllTypesInSection:(int64_t)a4 commit:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v19 = *MEMORY[0x1E69E9840];
  self->_isUpdatingAllTypes = 1;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = [(HKSourceAuthorizationController *)self typesInSection:a4, 0];
  v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [(HKSourceAuthorizationController *)self setEnabled:v7 forType:*(*(&v14 + 1) + 8 * v13++) inSection:a4 commit:v5];
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }

  self->_isUpdatingAllTypes = 0;
}

- (void)commitAuthorizationStatuses
{
  v3 = [MEMORY[0x1E695DFA8] set];
  [v3 addObjectsFromArray:self->_orderedTypesForSharing];
  [v3 addObjectsFromArray:self->_orderedTypesForReading];
  [(HKSourceAuthorizationController *)self _updateAuthorizationStatusWithTypes:v3];
}

- (int64_t)_authorizationStatusWithType:(id)a3
{
  typesEnabledForSharing = self->_typesEnabledForSharing;
  v5 = a3;
  [(NSMutableSet *)typesEnabledForSharing containsObject:v5];
  [(NSMutableSet *)self->_typesEnabledForReading containsObject:v5];

  return HKInternalAuthorizationStatusMake();
}

- (void)_updateAuthorizationStatusWithTypes:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 count])
  {
    v5 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v4, "count")}];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v7)
    {
      v8 = v7;
      v21 = v4;
      v9 = 0;
      v10 = *v23;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v23 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v22 + 1) + 8 * i);
          if ([v12 code] == 80)
          {
            v9 = 1;
          }

          else
          {
            v13 = [MEMORY[0x1E696AD98] numberWithInteger:{-[HKSourceAuthorizationController _authorizationStatusWithType:](self, "_authorizationStatusWithType:", v12)}];
            [v5 setObject:v13 forKeyedSubscript:v12];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v8);

      v4 = v21;
      if ((v9 & 1) == 0)
      {
        goto LABEL_15;
      }

      typesEnabledForSharing = self->_typesEnabledForSharing;
      v15 = [MEMORY[0x1E696C2E0] dataTypeWithCode:80];
      [(NSMutableSet *)typesEnabledForSharing containsObject:v15];

      typesEnabledForReading = self->_typesEnabledForReading;
      v17 = [MEMORY[0x1E696C2E0] dataTypeWithCode:80];
      [(NSMutableSet *)typesEnabledForReading containsObject:v17];

      v18 = [MEMORY[0x1E696AD98] numberWithInteger:HKInternalAuthorizationStatusMake()];
      v19 = [MEMORY[0x1E696C2E0] dataTypeWithCode:16];
      [v5 setObject:v18 forKeyedSubscript:v19];

      v6 = [MEMORY[0x1E696AD98] numberWithInteger:HKInternalAuthorizationStatusMake()];
      v20 = [MEMORY[0x1E696C2E0] dataTypeWithCode:17];
      [v5 setObject:v6 forKeyedSubscript:v20];
    }

LABEL_15:
    [(HKSourceAuthorizationController *)self _setAuthorizationStatuses:v5];
    goto LABEL_18;
  }

  _HKInitializeLogging();
  v5 = HKLogAuthorization();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    [HKSourceAuthorizationController _updateAuthorizationStatusWithTypes:];
  }

LABEL_18:
}

- (void)_setAuthorizationStatuses:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  authorizationStore = self->_authorizationStore;
  v6 = [(HKSource *)self->_source bundleIdentifier];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__HKSourceAuthorizationController__setAuthorizationStatuses___block_invoke;
  v7[3] = &unk_1E81B8298;
  objc_copyWeak(&v8, &location);
  [(HKAuthorizationStore *)authorizationStore setAuthorizationStatuses:v4 authorizationModes:MEMORY[0x1E695E0F8] forBundleIdentifier:v6 options:0 completion:v7];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __61__HKSourceAuthorizationController__setAuthorizationStatuses___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleSetAuthorizationCompletionSuccess:a2 error:v5];
}

- (void)_handleSetAuthorizationCompletionSuccess:(BOOL)a3 error:(id)a4
{
  v5 = a4;
  if (!a3)
  {
    _HKInitializeLogging();
    v6 = HKLogAuthorization();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [HKSourceAuthorizationController _handleSetAuthorizationCompletionSuccess:error:];
    }
  }

  _HKInitializeLogging();
  v7 = HKLogAuthorization();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);

  if (v8)
  {
    v9 = HKLogAuthorization();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [HKSourceAuthorizationController _handleSetAuthorizationCompletionSuccess:v9 error:?];
    }
  }

  notify_post("HKUIAuthorizationDidUpdateNotification");
}

- (id)_enabledTypesInSection:(int64_t)a3
{
  if (a3 == 4)
  {
    v4 = 88;
LABEL_5:
    v5 = *(&self->super.isa + v4);

    return v5;
  }

  if (a3 == 6)
  {
    v4 = 96;
    goto LABEL_5;
  }

  v5 = 0;

  return v5;
}

- (NSString)titleText
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v3 = [v2 localizedStringForKey:@"AUTHORIZATION_NON_CLINICAL_HEALTH_DATA" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

  return v3;
}

- (UIImage)iconImage
{
  v2 = MEMORY[0x1E69DCAB8];
  v3 = *MEMORY[0x1E696C860];
  v4 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v4 scale];
  v5 = [v2 _applicationIconImageForBundleIdentifier:v3 format:0 scale:?];

  return v5;
}

- (HKSourceAuthorizationControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithHealthStore:(uint64_t)a1 source:(uint64_t)a2 typesForSharing:typesForReading:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKSourceAuthorizationController.m" lineNumber:104 description:{@"Invalid parameter not satisfying: %@", @"healthStore != nil"}];
}

- (void)initWithHealthStore:(uint64_t)a1 source:(uint64_t)a2 typesForSharing:typesForReading:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKSourceAuthorizationController.m" lineNumber:105 description:{@"Invalid parameter not satisfying: %@", @"source != nil"}];
}

void __70__HKSourceAuthorizationController__reloadDocumentAuthorizationRecords__block_invoke_cold_1()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_4();
  _os_log_error_impl(&dword_1C3942000, v0, OS_LOG_TYPE_ERROR, "failed to get object authorization records with error: %@", v1, 0xCu);
}

void __66__HKSourceAuthorizationController__reloadTypeAuthorizationRecords__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_6();
  objc_opt_class();
  OUTLINED_FUNCTION_1_4();
  v1 = v0;
  OUTLINED_FUNCTION_2_0(&dword_1C3942000, v2, v3, "%{public}@: failed to get authorization records: %{public}@", v4, v5, v6, v7, v8);
}

void __69__HKSourceAuthorizationController_commitObjectAuthorizationStatuses___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_6();
  v1 = [*(v0 + 32) source];
  v2 = [v1 bundleIdentifier];
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_2_0(&dword_1C3942000, v3, v4, "Failed to set status for bundleId %@ with error: %@.", v5, v6, v7, v8, v9);
}

void __67__HKSourceAuthorizationController_resetObjectAuthorizationStatuses__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_6();
  v1 = [*(v0 + 32) source];
  v2 = [v1 bundleIdentifier];
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_2_0(&dword_1C3942000, v3, v4, "Failed to reset object authorization status for bundle id: %{public}@ with error: %{public}@", v5, v6, v7, v8, v9);
}

- (void)_updateAuthorizationStatusWithTypes:.cold.1()
{
  OUTLINED_FUNCTION_6();
  v3 = v2;
  v13 = *MEMORY[0x1E69E9840];
  v5 = [*(v4 + 88) count];
  v6 = [*(v1 + 96) count];
  v7 = 138543874;
  v8 = v3;
  v9 = 2048;
  v10 = v5;
  v11 = 2048;
  v12 = v6;
  _os_log_fault_impl(&dword_1C3942000, v0, OS_LOG_TYPE_FAULT, "[HKSourceAuthorizationController _updateAuthorizationStatusWithTypes] called with 0 types. _types = %{public}@ _typesEnabledForSharing.count = %ld _typesEnabledForReading.count = %ld", &v7, 0x20u);
}

- (void)_handleSetAuthorizationCompletionSuccess:error:.cold.1()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_4();
  _os_log_error_impl(&dword_1C3942000, v0, OS_LOG_TYPE_ERROR, "Failed to set object authorization statuses: %{public}@", v1, 0xCu);
}

@end