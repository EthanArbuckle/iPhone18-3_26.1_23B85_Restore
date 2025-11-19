@interface HDFeatureAvailabilityStoreServer
+ (BOOL)validateConfiguration:(id)a3 client:(id)a4 error:(id *)a5;
+ (id)createTaskServerWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6 error:(id *)a7;
- (id)_clientRemoteObjectProxy;
- (uint64_t)_hasWriteEntitlementWithError:(uint64_t)result;
- (void)featureAvailabilityExtensionOnboardingCompletionDataDidBecomeAvailable:(id)a3;
- (void)featureAvailabilityProvidingDidUpdateOnboardingCompletion:(id)a3;
- (void)featureAvailabilityProvidingDidUpdateSettings:(id)a3;
- (void)remote_canCompleteOnboardingForCountryCode:(id)a3 completion:(id)a4;
- (void)remote_earliestDateLowestOnboardingVersionCompletedWithCompletion:(id)a3;
- (void)remote_getFeatureAvailabilityRequirementsWithCompletion:(id)a3;
- (void)remote_getFeatureOnboardingRecordWithCompletion:(id)a3;
- (void)remote_getIsCurrentOnboardingVersionCompletedWithCompletion:(id)a3;
- (void)remote_getIsFeatureCapabilitySupportedOnActivePairedDeviceWithCompletion:(id)a3;
- (void)remote_getPairedFeatureAttributesWithCompletion:(id)a3;
- (void)remote_getRegionAvailabilityWithCompletion:(id)a3;
- (void)remote_onboardedCountryCodeSupportedStateWithCompletion:(id)a3;
- (void)remote_onboardingEligibilityForCountryCode:(id)a3 completion:(id)a4;
- (void)remote_removeFeatureSettingValueForKey:(id)a3 completion:(id)a4;
- (void)remote_resetOnboardingWithCompletion:(id)a3;
- (void)remote_saveOnboardingCompletion:(id)a3 settings:(id)a4 completion:(id)a5;
- (void)remote_setCurrentOnboardingVersionCompletedForCountryCode:(id)a3 countryCodeProvenance:(int64_t)a4 date:(id)a5 settings:(id)a6 completion:(id)a7;
- (void)remote_setFeatureSettingData:(id)a3 forKey:(id)a4 completion:(id)a5;
- (void)remote_setFeatureSettingNumber:(id)a3 forKey:(id)a4 completion:(id)a5;
- (void)remote_setFeatureSettingString:(id)a3 forKey:(id)a4 completion:(id)a5;
- (void)remote_startObservingChangesWithCompletion:(id)a3;
- (void)remote_stopObservingChanges;
@end

@implementation HDFeatureAvailabilityStoreServer

- (void)remote_getFeatureOnboardingRecordWithCompletion:(id)a3
{
  v4 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__165;
  v14 = __Block_byref_object_dispose__165;
  v15 = 0;
  v5 = [(HDStandardTaskServer *)self profile];
  v6 = [v5 database];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __84__HDFeatureAvailabilityStoreServer_remote_getFeatureOnboardingRecordWithCompletion___block_invoke;
  v8[3] = &unk_27861A418;
  v8[5] = &v10;
  v9 = 0;
  v8[4] = self;
  [v6 performHighPriorityTransactionsWithError:&v9 block:v8];
  v7 = v9;

  v4[2](v4, v11[5], v7);
  _Block_object_dispose(&v10, 8);
}

BOOL __84__HDFeatureAvailabilityStoreServer_remote_getFeatureOnboardingRecordWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(*(a1 + 32) + 40) featureOnboardingRecordWithError:a2];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return *(*(*(a1 + 40) + 8) + 40) != 0;
}

- (void)remote_getIsCurrentOnboardingVersionCompletedWithCompletion:(id)a3
{
  v4 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__165;
  v14 = __Block_byref_object_dispose__165;
  v15 = 0;
  v5 = [(HDStandardTaskServer *)self profile];
  v6 = [v5 database];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __96__HDFeatureAvailabilityStoreServer_remote_getIsCurrentOnboardingVersionCompletedWithCompletion___block_invoke;
  v8[3] = &unk_27861A418;
  v8[5] = &v10;
  v9 = 0;
  v8[4] = self;
  [v6 performHighPriorityTransactionsWithError:&v9 block:v8];
  v7 = v9;

  v4[2](v4, v11[5], v7);
  _Block_object_dispose(&v10, 8);
}

BOOL __96__HDFeatureAvailabilityStoreServer_remote_getIsCurrentOnboardingVersionCompletedWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(*(a1 + 32) + 40) isCurrentOnboardingVersionCompletedWithError:a2];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return *(*(*(a1 + 40) + 8) + 40) != 0;
}

- (void)remote_canCompleteOnboardingForCountryCode:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__165;
  v20 = __Block_byref_object_dispose__165;
  v21 = 0;
  v8 = [(HDStandardTaskServer *)self profile];
  v9 = [v8 database];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __90__HDFeatureAvailabilityStoreServer_remote_canCompleteOnboardingForCountryCode_completion___block_invoke;
  v12[3] = &unk_27861A440;
  v14 = &v16;
  v15 = 0;
  v12[4] = self;
  v10 = v6;
  v13 = v10;
  [v9 performHighPriorityTransactionsWithError:&v15 block:v12];
  v11 = v15;

  v7[2](v7, v17[5], v11);
  _Block_object_dispose(&v16, 8);
}

BOOL __90__HDFeatureAvailabilityStoreServer_remote_canCompleteOnboardingForCountryCode_completion___block_invoke(void *a1, uint64_t a2)
{
  v3 = [*(a1[4] + 40) canCompleteOnboardingForCountryCode:a1[5] error:a2];
  v4 = *(a1[6] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return *(*(a1[6] + 8) + 40) != 0;
}

- (void)remote_onboardingEligibilityForCountryCode:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__165;
  v20 = __Block_byref_object_dispose__165;
  v21 = 0;
  v8 = [(HDStandardTaskServer *)self profile];
  v9 = [v8 database];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __90__HDFeatureAvailabilityStoreServer_remote_onboardingEligibilityForCountryCode_completion___block_invoke;
  v12[3] = &unk_27861A440;
  v14 = &v16;
  v15 = 0;
  v12[4] = self;
  v10 = v6;
  v13 = v10;
  [v9 performHighPriorityTransactionsWithError:&v15 block:v12];
  v11 = v15;

  v7[2](v7, v17[5], v11);
  _Block_object_dispose(&v16, 8);
}

BOOL __90__HDFeatureAvailabilityStoreServer_remote_onboardingEligibilityForCountryCode_completion___block_invoke(void *a1, uint64_t a2)
{
  v3 = [*(a1[4] + 40) onboardingEligibilityForCountryCode:a1[5] error:a2];
  v4 = *(a1[6] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return *(*(a1[6] + 8) + 40) != 0;
}

- (void)remote_onboardedCountryCodeSupportedStateWithCompletion:(id)a3
{
  v4 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__165;
  v14 = __Block_byref_object_dispose__165;
  v15 = 0;
  v5 = [(HDStandardTaskServer *)self profile];
  v6 = [v5 database];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __92__HDFeatureAvailabilityStoreServer_remote_onboardedCountryCodeSupportedStateWithCompletion___block_invoke;
  v8[3] = &unk_27861A418;
  v8[5] = &v10;
  v9 = 0;
  v8[4] = self;
  [v6 performHighPriorityTransactionsWithError:&v9 block:v8];
  v7 = v9;

  v4[2](v4, v11[5], v7);
  _Block_object_dispose(&v10, 8);
}

BOOL __92__HDFeatureAvailabilityStoreServer_remote_onboardedCountryCodeSupportedStateWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(*(a1 + 32) + 40) onboardedCountryCodeSupportedStateWithError:a2];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return *(*(*(a1 + 40) + 8) + 40) != 0;
}

- (void)remote_getIsFeatureCapabilitySupportedOnActivePairedDeviceWithCompletion:(id)a3
{
  v4 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__165;
  v14 = __Block_byref_object_dispose__165;
  v15 = 0;
  v5 = [(HDStandardTaskServer *)self profile];
  v6 = [v5 database];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __109__HDFeatureAvailabilityStoreServer_remote_getIsFeatureCapabilitySupportedOnActivePairedDeviceWithCompletion___block_invoke;
  v8[3] = &unk_27861A418;
  v8[5] = &v10;
  v9 = 0;
  v8[4] = self;
  [v6 performHighPriorityTransactionsWithError:&v9 block:v8];
  v7 = v9;

  v4[2](v4, v11[5], v7);
  _Block_object_dispose(&v10, 8);
}

BOOL __109__HDFeatureAvailabilityStoreServer_remote_getIsFeatureCapabilitySupportedOnActivePairedDeviceWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(*(a1 + 32) + 40) isFeatureCapabilitySupportedOnActivePairedDeviceWithError:a2];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return *(*(*(a1 + 40) + 8) + 40) != 0;
}

- (void)remote_earliestDateLowestOnboardingVersionCompletedWithCompletion:(id)a3
{
  v4 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__165;
  v14 = __Block_byref_object_dispose__165;
  v15 = 0;
  v5 = [(HDStandardTaskServer *)self profile];
  v6 = [v5 database];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __102__HDFeatureAvailabilityStoreServer_remote_earliestDateLowestOnboardingVersionCompletedWithCompletion___block_invoke;
  v8[3] = &unk_27861A418;
  v8[5] = &v10;
  v9 = 0;
  v8[4] = self;
  [v6 performHighPriorityTransactionsWithError:&v9 block:v8];
  v7 = v9;

  v4[2](v4, v11[5], v7);
  _Block_object_dispose(&v10, 8);
}

BOOL __102__HDFeatureAvailabilityStoreServer_remote_earliestDateLowestOnboardingVersionCompletedWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(*(a1 + 32) + 40) earliestDateLowestOnboardingVersionCompletedWithError:a2];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return *(*(*(a1 + 40) + 8) + 40) != 0;
}

- (void)remote_getPairedFeatureAttributesWithCompletion:(id)a3
{
  extension = self->_extension;
  v7 = 0;
  v4 = a3;
  v5 = [(HDFeatureAvailabilityExtension *)extension pairedFeatureAttributesWithError:&v7];
  v6 = v7;
  v4[2](v4, v5, v6);
}

- (void)remote_getFeatureAvailabilityRequirementsWithCompletion:(id)a3
{
  extension = self->_extension;
  v7 = 0;
  v4 = a3;
  v5 = [(HDFeatureAvailabilityExtension *)extension featureAvailabilityRequirementsWithError:&v7];
  v6 = v7;
  v4[2](v4, v5, v6);
}

- (void)remote_getRegionAvailabilityWithCompletion:(id)a3
{
  extension = self->_extension;
  v7 = 0;
  v4 = a3;
  v5 = [(HDFeatureAvailabilityExtension *)extension regionAvailabilityWithError:&v7];
  v6 = v7;
  v4[2](v4, v5, v6);
}

- (uint64_t)_hasWriteEntitlementWithError:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    v4 = [result client];
    v5 = [v4 entitlements];
    v6 = [v5 hasEntitlement:*MEMORY[0x277CCBEC8]];

    if (v6)
    {
      return 1;
    }

    v7 = [v3 client];
    v8 = [v7 entitlements];
    v9 = *MEMORY[0x277CCBED0];
    v10 = [v3[5] featureIdentifier];
    LOBYTE(v9) = [v8 arrayEntitlement:v9 containsString:v10];

    if (v9)
    {
      return 1;
    }

    else
    {
      v11 = MEMORY[0x277CCA9B8];
      v12 = [v3[5] featureIdentifier];
      v13 = [v11 hk_error:4 format:{@"Unauthorized access to modify availability of feature %@", v12}];
      if (v13)
      {
        if (a2)
        {
          v14 = v13;
          *a2 = v13;
        }

        else
        {
          _HKLogDroppedError();
        }
      }

      return 0;
    }
  }

  return result;
}

- (void)remote_setCurrentOnboardingVersionCompletedForCountryCode:(id)a3 countryCodeProvenance:(int64_t)a4 date:(id)a5 settings:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v18 = 0;
  v15 = a7;
  v16 = [(HDFeatureAvailabilityStoreServer *)self _hasWriteEntitlementWithError:?];
  v17 = v18;
  if (v16)
  {
    [(HDFeatureAvailabilityExtension *)self->_extension setCurrentOnboardingVersionCompletedForCountryCode:v12 countryCodeProvenance:a4 date:v13 settings:v14 completion:v15];
  }

  else
  {
    v15[2](v15, 0, v17);
  }
}

- (void)remote_saveOnboardingCompletion:(id)a3 settings:(id)a4 completion:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v21 = 0;
  v12 = [(HDFeatureAvailabilityStoreServer *)self _hasWriteEntitlementWithError:?];
  v13 = v21;
  if (v12)
  {
    v14 = [v9 featureIdentifier];
    v15 = [(HDFeatureAvailabilityExtension *)self->_extension featureIdentifier];
    v16 = [v14 isEqualToString:v15];

    if (v16)
    {
      [(HDFeatureAvailabilityExtension *)self->_extension saveOnboardingCompletion:v9 settings:v10 completion:v11];
    }

    else
    {
      v17 = MEMORY[0x277CCA9B8];
      v18 = objc_opt_class();
      v19 = [v9 featureIdentifier];
      v20 = [v17 hk_errorForInvalidArgument:@"@" class:v18 selector:a2 format:{@"Cannot save onboarding for feature %@", v19}];
      v11[2](v11, 0, v20);
    }
  }

  else
  {
    v11[2](v11, 0, v13);
  }
}

- (void)remote_setFeatureSettingData:(id)a3 forKey:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v13 = 0;
  v10 = a5;
  v11 = [(HDFeatureAvailabilityStoreServer *)self _hasWriteEntitlementWithError:?];
  v12 = v13;
  if (v11)
  {
    [(HDFeatureAvailabilityExtension *)self->_extension setFeatureSettingData:v8 forKey:v9 completion:v10];
  }

  else
  {
    v10[2](v10, 0, v12);
  }
}

- (void)remote_setFeatureSettingString:(id)a3 forKey:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v13 = 0;
  v10 = a5;
  v11 = [(HDFeatureAvailabilityStoreServer *)self _hasWriteEntitlementWithError:?];
  v12 = v13;
  if (v11)
  {
    [(HDFeatureAvailabilityExtension *)self->_extension setFeatureSettingString:v8 forKey:v9 completion:v10];
  }

  else
  {
    v10[2](v10, 0, v12);
  }
}

- (void)remote_setFeatureSettingNumber:(id)a3 forKey:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v13 = 0;
  v10 = a5;
  v11 = [(HDFeatureAvailabilityStoreServer *)self _hasWriteEntitlementWithError:?];
  v12 = v13;
  if (v11)
  {
    [(HDFeatureAvailabilityExtension *)self->_extension setFeatureSettingNumber:v8 forKey:v9 completion:v10];
  }

  else
  {
    v10[2](v10, 0, v12);
  }
}

- (void)remote_removeFeatureSettingValueForKey:(id)a3 completion:(id)a4
{
  v6 = a3;
  v10 = 0;
  v7 = a4;
  v8 = [(HDFeatureAvailabilityStoreServer *)self _hasWriteEntitlementWithError:?];
  v9 = v10;
  if (v8)
  {
    [(HDFeatureAvailabilityExtension *)self->_extension removeFeatureSettingValueForKey:v6 completion:v7];
  }

  else
  {
    v7[2](v7, 0, v9);
  }
}

- (void)remote_resetOnboardingWithCompletion:(id)a3
{
  v7 = 0;
  v4 = a3;
  v5 = [(HDFeatureAvailabilityStoreServer *)self _hasWriteEntitlementWithError:?];
  v6 = v7;
  if (v5)
  {
    [(HDFeatureAvailabilityExtension *)self->_extension resetOnboardingWithCompletion:v4];
  }

  else
  {
    v4[2](v4, 0, v6);
  }
}

- (void)remote_startObservingChangesWithCompletion:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  _HKInitializeLogging();
  v5 = HKLogInfrastructure();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = self;
    _os_log_impl(&dword_228986000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Registering for extension changes", &v7, 0xCu);
  }

  [(HDFeatureAvailabilityExtension *)self->_extension registerObserver:self queue:self->_queue];
  v4[2](v4, 1, 0);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)remote_stopObservingChanges
{
  v7 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v3 = HKLogInfrastructure();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = self;
    _os_log_impl(&dword_228986000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] Unregistering for extension changes", &v5, 0xCu);
  }

  [(HDFeatureAvailabilityExtension *)self->_extension unregisterObserver:self];
  v4 = *MEMORY[0x277D85DE8];
}

- (void)featureAvailabilityProvidingDidUpdateOnboardingCompletion:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v4 = HKLogInfrastructure();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = self;
    _os_log_impl(&dword_228986000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Notifying client of onboarding completion update", &v7, 0xCu);
  }

  v5 = [(HDFeatureAvailabilityStoreServer *)self _clientRemoteObjectProxy];
  [v5 client_featureAvailabilityExtensionDidUpdateOnboardingCompletion];

  v6 = *MEMORY[0x277D85DE8];
}

- (id)_clientRemoteObjectProxy
{
  if (a1)
  {
    v1 = [a1 client];
    v2 = [v1 connection];
    v3 = [v2 remoteObjectProxy];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)featureAvailabilityProvidingDidUpdateSettings:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v4 = HKLogInfrastructure();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = self;
    _os_log_impl(&dword_228986000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Notifying client of settings update", &v7, 0xCu);
  }

  v5 = [(HDFeatureAvailabilityStoreServer *)self _clientRemoteObjectProxy];
  [v5 client_featureAvailabilityProvidingDidUpdateSettings];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)featureAvailabilityExtensionOnboardingCompletionDataDidBecomeAvailable:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v4 = HKLogInfrastructure();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = self;
    _os_log_impl(&dword_228986000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Notifying client of onboarding completion data becoming available", &v7, 0xCu);
  }

  v5 = [(HDFeatureAvailabilityStoreServer *)self _clientRemoteObjectProxy];
  [v5 client_featureAvailabilityExtensionDidUpdateOnboardingCompletion];

  v6 = *MEMORY[0x277D85DE8];
}

+ (id)createTaskServerWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6 error:(id *)a7
{
  v54 = *MEMORY[0x277D85DE8];
  v42 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v41 = v12;
  v14 = [v12 profile];
  v15 = [v14 profileExtensionsConformingToProtocol:&unk_283D71258];

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v16 = v15;
  v17 = [v16 countByEnumeratingWithState:&v43 objects:v53 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v44;
LABEL_3:
    v20 = 0;
    while (1)
    {
      if (*v44 != v19)
      {
        objc_enumerationMutation(v16);
      }

      v21 = *(*(&v43 + 1) + 8 * v20);
      v22 = [v11 featureIdentifier];
      v23 = [v21 featureAvailabilityExtensionForFeatureIdentifier:v22];

      if (v23)
      {
        break;
      }

      if (v18 == ++v20)
      {
        v18 = [v16 countByEnumeratingWithState:&v43 objects:v53 count:16];
        if (v18)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v30 = v41;
    v29 = v42;
    v32 = [(HDStandardTaskServer *)[HDFeatureAvailabilityStoreServer alloc] initWithUUID:v42 configuration:v11 client:v41 delegate:v13];
    _HKInitializeLogging();
    v33 = HKLogInfrastructure();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v34 = [v11 featureIdentifier];
      *buf = 138543874;
      v48 = v32;
      v49 = 2114;
      v50 = v23;
      v51 = 2114;
      v52 = v34;
      _os_log_impl(&dword_228986000, v33, OS_LOG_TYPE_DEFAULT, "[%{public}@] Using profile extension %{public}@ for feature %{public}@", buf, 0x20u);
    }

    v35 = v23;
    v36 = v35;
    if (v32)
    {
      objc_storeStrong(&v32->_extension, v23);
      v37 = HKCreateSerialDispatchQueue();
      queue = v32->_queue;
      v32->_queue = v37;
      v26 = v36;
      goto LABEL_19;
    }

    v26 = v35;
  }

  else
  {
LABEL_9:

    v24 = MEMORY[0x277CCA9B8];
    v25 = objc_opt_class();
    v26 = [v11 featureIdentifier];
    v27 = [v24 hk_errorForInvalidArgument:@"@" class:v25 selector:a2 format:{@"No profile extension providing feature availability for %@", v26}];
    queue = v27;
    if (v27)
    {
      v30 = v41;
      v29 = v42;
      if (a7)
      {
        v31 = v27;
        v32 = 0;
        *a7 = queue;
      }

      else
      {
        _HKLogDroppedError();
        v32 = 0;
      }

      v36 = queue;
    }

    else
    {
      v32 = 0;
      v36 = 0;
      v30 = v41;
      v29 = v42;
    }

LABEL_19:
  }

  v38 = *MEMORY[0x277D85DE8];

  return v32;
}

+ (BOOL)validateConfiguration:(id)a3 client:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [v8 entitlements];
  v10 = [v9 hasEntitlement:*MEMORY[0x277CCBEC8]];

  if (v10)
  {
    goto LABEL_5;
  }

  v11 = [v8 entitlements];
  v12 = *MEMORY[0x277CCBED0];
  v13 = [v7 featureIdentifier];
  LOBYTE(v12) = [v11 arrayEntitlement:v12 containsString:v13];

  if (v12)
  {
    goto LABEL_5;
  }

  v14 = [v8 entitlements];
  v15 = [v14 hasEntitlement:*MEMORY[0x277CCBEB8]];

  if (v15)
  {
    goto LABEL_5;
  }

  v16 = [v8 entitlements];
  v17 = *MEMORY[0x277CCBEC0];
  v18 = [v7 featureIdentifier];
  LOBYTE(v17) = [v16 arrayEntitlement:v17 containsString:v18];

  if (v17)
  {
LABEL_5:
    v19 = 1;
  }

  else
  {
    v21 = MEMORY[0x277CCA9B8];
    v22 = [v7 featureIdentifier];
    v23 = [v21 hk_error:4 format:{@"Unauthorized access to availability of feature %@", v22}];
    if (v23)
    {
      if (a5)
      {
        v24 = v23;
        *a5 = v23;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v19 = 0;
  }

  return v19;
}

@end