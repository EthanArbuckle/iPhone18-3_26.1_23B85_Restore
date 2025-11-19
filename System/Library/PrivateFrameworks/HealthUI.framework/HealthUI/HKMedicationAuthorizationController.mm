@interface HKMedicationAuthorizationController
+ (BOOL)_anyMedicationAuthorizedInViewModels:(id)a3;
+ (BOOL)_anyMedicationRequestedInViewModels:(id)a3;
- (BOOL)anyTypeEnabled;
- (BOOL)anyTypeRequested;
- (HKMedicationAuthorizationController)initWithHealthStore:(id)a3 source:(id)a4;
- (HKSourceAuthorizationControllerDelegate)delegate;
- (NSString)titleText;
- (UIImage)iconImage;
- (void)_commitConceptAuthorizationForViewModels:(id)a3;
- (void)_handleSetAuthorizationCompletionSuccess:(BOOL)a3 error:(id)a4;
- (void)_setObjectAuthorizationWithContext:(id)a3 objectType:(id)a4;
- (void)_updateAllActiveMedicationViewModelToAuthorized:(BOOL)a3;
- (void)_updateAllArchivedMedicationViewModelToAuthorized:(BOOL)a3;
- (void)_updateMedicationViewModels:(id)a3 atIndex:(int64_t)a4 authorized:(BOOL)a5;
- (void)reload;
- (void)updateActiveMedicationViewModelAtIndex:(int64_t)a3 authorized:(BOOL)a4;
- (void)updateArchivedMedicationViewModelAtIndex:(int64_t)a3 authorized:(BOOL)a4;
@end

@implementation HKMedicationAuthorizationController

- (HKMedicationAuthorizationController)initWithHealthStore:(id)a3 source:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = HKMedicationAuthorizationController;
  v8 = [(HKMedicationAuthorizationController *)&v12 init];
  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x1E696BF50]) initWithHealthStore:v6];
    authorizationStore = v8->_authorizationStore;
    v8->_authorizationStore = v9;

    objc_storeStrong(&v8->_source, a4);
  }

  return v8;
}

- (NSString)titleText
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v3 = [v2 localizedStringForKey:@"AUTHORIZATION_MEDICATION_HEALTH_DATA" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

  return v3;
}

- (UIImage)iconImage
{
  v2 = [HKDisplayCategory categoryWithID:31];
  v3 = [v2 systemImage];

  return v3;
}

- (void)updateActiveMedicationViewModelAtIndex:(int64_t)a3 authorized:(BOOL)a4
{
  [(HKMedicationAuthorizationController *)self _updateMedicationViewModels:self->_activeMedicationAuthorizationStatusViewModels atIndex:a3 authorized:a4];
  activeMedicationAuthorizationStatusViewModels = self->_activeMedicationAuthorizationStatusViewModels;

  [(HKMedicationAuthorizationController *)self _commitConceptAuthorizationForViewModels:activeMedicationAuthorizationStatusViewModels];
}

- (void)updateArchivedMedicationViewModelAtIndex:(int64_t)a3 authorized:(BOOL)a4
{
  [(HKMedicationAuthorizationController *)self _updateMedicationViewModels:self->_archivedMedicationAuthorizationStatusViewModels atIndex:a3 authorized:a4];
  archivedMedicationAuthorizationStatusViewModels = self->_archivedMedicationAuthorizationStatusViewModels;

  [(HKMedicationAuthorizationController *)self _commitConceptAuthorizationForViewModels:archivedMedicationAuthorizationStatusViewModels];
}

- (void)reload
{
  v3 = dispatch_semaphore_create(0);
  authorizationStore = self->_authorizationStore;
  source = self->_source;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__HKMedicationAuthorizationController_reload__block_invoke;
  v7[3] = &unk_1E81B8270;
  v7[4] = self;
  v8 = v3;
  v6 = v3;
  [(HKAuthorizationStore *)authorizationStore fetchConceptAuthorizationRecordsForSource:source completion:v7];
  dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
}

void __45__HKMedicationAuthorizationController_reload__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    _HKInitializeLogging();
    v7 = HKLogAuthorization();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __45__HKMedicationAuthorizationController_reload__block_invoke_cold_1(a1, v6, v7);
    }
  }

  v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v5, "count")}];
  v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v5, "count")}];
  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __45__HKMedicationAuthorizationController_reload__block_invoke_307;
  v22 = &unk_1E81B8248;
  v23 = v9;
  v24 = v8;
  v10 = v8;
  v11 = v9;
  [v5 enumerateKeysAndObjectsUsingBlock:&v19];
  v12 = [v10 copy];
  v13 = *(a1 + 32);
  v14 = *(v13 + 24);
  *(v13 + 24) = v12;

  v15 = [v11 copy];
  v16 = *(a1 + 32);
  v17 = *(v16 + 32);
  *(v16 + 32) = v15;

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 56));
  [WeakRetained didFinishLoading];

  dispatch_semaphore_signal(*(a1 + 40));
}

void __45__HKMedicationAuthorizationController_reload__block_invoke_307(uint64_t a1, void *a2, void *a3)
{
  v22 = a2;
  v5 = a3;
  v6 = [v22 medication];
  v7 = [v6 identifier];
  v8 = [v5 identifier];
  v9 = [v7 isEqual:v8];

  v10 = [v5 status];
  if (v9 && v10)
  {
    v11 = [v22 medication];
    v12 = [v11 displayText];

    v13 = [v5 status] == 2;
    v14 = [v5 status] != 0;
    v15 = [HKMedicationAuthorizationStatusViewModel alloc];
    v16 = [v22 hk_objectType];
    v17 = [v22 medication];
    v18 = [v17 identifier];
    v19 = [(HKMedicationAuthorizationStatusViewModel *)v15 initWithMedicationName:v12 authorized:v13 requested:v14 type:v16 identifier:v18];

    v20 = [v22 isArchived];
    v21 = 40;
    if (v20)
    {
      v21 = 32;
    }

    [*(a1 + v21) addObject:v19];
  }
}

- (BOOL)anyTypeEnabled
{
  if ([objc_opt_class() _anyMedicationAuthorizedInViewModels:self->_activeMedicationAuthorizationStatusViewModels])
  {
    return 1;
  }

  v4 = objc_opt_class();
  archivedMedicationAuthorizationStatusViewModels = self->_archivedMedicationAuthorizationStatusViewModels;

  return [v4 _anyMedicationAuthorizedInViewModels:archivedMedicationAuthorizationStatusViewModels];
}

- (BOOL)anyTypeRequested
{
  if ([objc_opt_class() _anyMedicationRequestedInViewModels:self->_activeMedicationAuthorizationStatusViewModels])
  {
    return 1;
  }

  v4 = objc_opt_class();
  archivedMedicationAuthorizationStatusViewModels = self->_archivedMedicationAuthorizationStatusViewModels;

  return [v4 _anyMedicationRequestedInViewModels:archivedMedicationAuthorizationStatusViewModels];
}

+ (BOOL)_anyMedicationAuthorizedInViewModels:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v8 + 1) + 8 * i) isAuthorized])
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

+ (BOOL)_anyMedicationRequestedInViewModels:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v8 + 1) + 8 * i) requested])
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

- (void)_updateAllActiveMedicationViewModelToAuthorized:(BOOL)a3
{
  [HKMedicationAuthorizationStatusViewModel updateAllMedicationViewModels:self->_activeMedicationAuthorizationStatusViewModels authorized:a3];
  activeMedicationAuthorizationStatusViewModels = self->_activeMedicationAuthorizationStatusViewModels;

  [(HKMedicationAuthorizationController *)self _commitConceptAuthorizationForViewModels:activeMedicationAuthorizationStatusViewModels];
}

- (void)_updateAllArchivedMedicationViewModelToAuthorized:(BOOL)a3
{
  [HKMedicationAuthorizationStatusViewModel updateAllMedicationViewModels:self->_archivedMedicationAuthorizationStatusViewModels authorized:a3];
  archivedMedicationAuthorizationStatusViewModels = self->_archivedMedicationAuthorizationStatusViewModels;

  [(HKMedicationAuthorizationController *)self _commitConceptAuthorizationForViewModels:archivedMedicationAuthorizationStatusViewModels];
}

- (void)_updateMedicationViewModels:(id)a3 atIndex:(int64_t)a4 authorized:(BOOL)a5
{
  v5 = a5;
  v7 = [a3 mutableCopy];
  v8 = [v7 objectAtIndexedSubscript:a4];
  [v8 setAuthorized:v5];
  v9 = [v7 copy];
}

- (void)_commitConceptAuthorizationForViewModels:(id)a3
{
  v4 = a3;
  v8 = [HKMedicationAuthorizationStatusViewModel authorizationStatusesFromMedicationViewModels:v4];
  v5 = [objc_alloc(MEMORY[0x1E696C2D8]) initWithObjectAuthorizationStatuses:v8 sessionIdentifier:0];
  v6 = [v4 firstObject];

  v7 = [v6 type];
  [(HKMedicationAuthorizationController *)self _setObjectAuthorizationWithContext:v5 objectType:v7];
}

- (void)_setObjectAuthorizationWithContext:(id)a3 objectType:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  authorizationStore = self->_authorizationStore;
  v9 = [(HKSource *)self->_source bundleIdentifier];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __85__HKMedicationAuthorizationController__setObjectAuthorizationWithContext_objectType___block_invoke;
  v10[3] = &unk_1E81B8298;
  objc_copyWeak(&v11, &location);
  [(HKAuthorizationStore *)authorizationStore setObjectAuthorizationStatusContext:v6 forObjectType:v7 bundleIdentifier:v9 completion:v10];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __85__HKMedicationAuthorizationController__setObjectAuthorizationWithContext_objectType___block_invoke(uint64_t a1, uint64_t a2, void *a3)
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
      [HKMedicationAuthorizationController _handleSetAuthorizationCompletionSuccess:v5 error:v6];
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
      [HKMedicationAuthorizationController _handleSetAuthorizationCompletionSuccess:v9 error:?];
    }
  }

  notify_post("HKUIAuthorizationDidUpdateNotification");
}

- (HKSourceAuthorizationControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __45__HKMedicationAuthorizationController_reload__block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = 138543618;
  v7 = objc_opt_class();
  v8 = 2114;
  v9 = a2;
  v5 = v7;
  _os_log_error_impl(&dword_1C3942000, a3, OS_LOG_TYPE_ERROR, "%{public}@: failed to get concept authorization records: %{public}@", &v6, 0x16u);
}

- (void)_handleSetAuthorizationCompletionSuccess:(uint64_t)a1 error:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1C3942000, a2, OS_LOG_TYPE_ERROR, "Failed to set object authorization statuses: %{public}@", &v2, 0xCu);
}

@end