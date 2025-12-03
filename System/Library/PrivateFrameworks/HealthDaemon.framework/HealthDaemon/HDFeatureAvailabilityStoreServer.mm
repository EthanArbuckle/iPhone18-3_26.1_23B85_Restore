@interface HDFeatureAvailabilityStoreServer
+ (BOOL)validateConfiguration:(id)configuration client:(id)client error:(id *)error;
+ (id)createTaskServerWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate error:(id *)error;
- (id)_clientRemoteObjectProxy;
- (uint64_t)_hasWriteEntitlementWithError:(uint64_t)result;
- (void)featureAvailabilityExtensionOnboardingCompletionDataDidBecomeAvailable:(id)available;
- (void)featureAvailabilityProvidingDidUpdateOnboardingCompletion:(id)completion;
- (void)featureAvailabilityProvidingDidUpdateSettings:(id)settings;
- (void)remote_canCompleteOnboardingForCountryCode:(id)code completion:(id)completion;
- (void)remote_earliestDateLowestOnboardingVersionCompletedWithCompletion:(id)completion;
- (void)remote_getFeatureAvailabilityRequirementsWithCompletion:(id)completion;
- (void)remote_getFeatureOnboardingRecordWithCompletion:(id)completion;
- (void)remote_getIsCurrentOnboardingVersionCompletedWithCompletion:(id)completion;
- (void)remote_getIsFeatureCapabilitySupportedOnActivePairedDeviceWithCompletion:(id)completion;
- (void)remote_getPairedFeatureAttributesWithCompletion:(id)completion;
- (void)remote_getRegionAvailabilityWithCompletion:(id)completion;
- (void)remote_onboardedCountryCodeSupportedStateWithCompletion:(id)completion;
- (void)remote_onboardingEligibilityForCountryCode:(id)code completion:(id)completion;
- (void)remote_removeFeatureSettingValueForKey:(id)key completion:(id)completion;
- (void)remote_resetOnboardingWithCompletion:(id)completion;
- (void)remote_saveOnboardingCompletion:(id)completion settings:(id)settings completion:(id)a5;
- (void)remote_setCurrentOnboardingVersionCompletedForCountryCode:(id)code countryCodeProvenance:(int64_t)provenance date:(id)date settings:(id)settings completion:(id)completion;
- (void)remote_setFeatureSettingData:(id)data forKey:(id)key completion:(id)completion;
- (void)remote_setFeatureSettingNumber:(id)number forKey:(id)key completion:(id)completion;
- (void)remote_setFeatureSettingString:(id)string forKey:(id)key completion:(id)completion;
- (void)remote_startObservingChangesWithCompletion:(id)completion;
- (void)remote_stopObservingChanges;
@end

@implementation HDFeatureAvailabilityStoreServer

- (void)remote_getFeatureOnboardingRecordWithCompletion:(id)completion
{
  completionCopy = completion;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__165;
  v14 = __Block_byref_object_dispose__165;
  v15 = 0;
  profile = [(HDStandardTaskServer *)self profile];
  database = [profile database];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __84__HDFeatureAvailabilityStoreServer_remote_getFeatureOnboardingRecordWithCompletion___block_invoke;
  v8[3] = &unk_27861A418;
  v8[5] = &v10;
  v9 = 0;
  v8[4] = self;
  [database performHighPriorityTransactionsWithError:&v9 block:v8];
  v7 = v9;

  completionCopy[2](completionCopy, v11[5], v7);
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

- (void)remote_getIsCurrentOnboardingVersionCompletedWithCompletion:(id)completion
{
  completionCopy = completion;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__165;
  v14 = __Block_byref_object_dispose__165;
  v15 = 0;
  profile = [(HDStandardTaskServer *)self profile];
  database = [profile database];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __96__HDFeatureAvailabilityStoreServer_remote_getIsCurrentOnboardingVersionCompletedWithCompletion___block_invoke;
  v8[3] = &unk_27861A418;
  v8[5] = &v10;
  v9 = 0;
  v8[4] = self;
  [database performHighPriorityTransactionsWithError:&v9 block:v8];
  v7 = v9;

  completionCopy[2](completionCopy, v11[5], v7);
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

- (void)remote_canCompleteOnboardingForCountryCode:(id)code completion:(id)completion
{
  codeCopy = code;
  completionCopy = completion;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__165;
  v20 = __Block_byref_object_dispose__165;
  v21 = 0;
  profile = [(HDStandardTaskServer *)self profile];
  database = [profile database];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __90__HDFeatureAvailabilityStoreServer_remote_canCompleteOnboardingForCountryCode_completion___block_invoke;
  v12[3] = &unk_27861A440;
  v14 = &v16;
  v15 = 0;
  v12[4] = self;
  v10 = codeCopy;
  v13 = v10;
  [database performHighPriorityTransactionsWithError:&v15 block:v12];
  v11 = v15;

  completionCopy[2](completionCopy, v17[5], v11);
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

- (void)remote_onboardingEligibilityForCountryCode:(id)code completion:(id)completion
{
  codeCopy = code;
  completionCopy = completion;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__165;
  v20 = __Block_byref_object_dispose__165;
  v21 = 0;
  profile = [(HDStandardTaskServer *)self profile];
  database = [profile database];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __90__HDFeatureAvailabilityStoreServer_remote_onboardingEligibilityForCountryCode_completion___block_invoke;
  v12[3] = &unk_27861A440;
  v14 = &v16;
  v15 = 0;
  v12[4] = self;
  v10 = codeCopy;
  v13 = v10;
  [database performHighPriorityTransactionsWithError:&v15 block:v12];
  v11 = v15;

  completionCopy[2](completionCopy, v17[5], v11);
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

- (void)remote_onboardedCountryCodeSupportedStateWithCompletion:(id)completion
{
  completionCopy = completion;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__165;
  v14 = __Block_byref_object_dispose__165;
  v15 = 0;
  profile = [(HDStandardTaskServer *)self profile];
  database = [profile database];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __92__HDFeatureAvailabilityStoreServer_remote_onboardedCountryCodeSupportedStateWithCompletion___block_invoke;
  v8[3] = &unk_27861A418;
  v8[5] = &v10;
  v9 = 0;
  v8[4] = self;
  [database performHighPriorityTransactionsWithError:&v9 block:v8];
  v7 = v9;

  completionCopy[2](completionCopy, v11[5], v7);
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

- (void)remote_getIsFeatureCapabilitySupportedOnActivePairedDeviceWithCompletion:(id)completion
{
  completionCopy = completion;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__165;
  v14 = __Block_byref_object_dispose__165;
  v15 = 0;
  profile = [(HDStandardTaskServer *)self profile];
  database = [profile database];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __109__HDFeatureAvailabilityStoreServer_remote_getIsFeatureCapabilitySupportedOnActivePairedDeviceWithCompletion___block_invoke;
  v8[3] = &unk_27861A418;
  v8[5] = &v10;
  v9 = 0;
  v8[4] = self;
  [database performHighPriorityTransactionsWithError:&v9 block:v8];
  v7 = v9;

  completionCopy[2](completionCopy, v11[5], v7);
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

- (void)remote_earliestDateLowestOnboardingVersionCompletedWithCompletion:(id)completion
{
  completionCopy = completion;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__165;
  v14 = __Block_byref_object_dispose__165;
  v15 = 0;
  profile = [(HDStandardTaskServer *)self profile];
  database = [profile database];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __102__HDFeatureAvailabilityStoreServer_remote_earliestDateLowestOnboardingVersionCompletedWithCompletion___block_invoke;
  v8[3] = &unk_27861A418;
  v8[5] = &v10;
  v9 = 0;
  v8[4] = self;
  [database performHighPriorityTransactionsWithError:&v9 block:v8];
  v7 = v9;

  completionCopy[2](completionCopy, v11[5], v7);
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

- (void)remote_getPairedFeatureAttributesWithCompletion:(id)completion
{
  extension = self->_extension;
  v7 = 0;
  completionCopy = completion;
  v5 = [(HDFeatureAvailabilityExtension *)extension pairedFeatureAttributesWithError:&v7];
  v6 = v7;
  completionCopy[2](completionCopy, v5, v6);
}

- (void)remote_getFeatureAvailabilityRequirementsWithCompletion:(id)completion
{
  extension = self->_extension;
  v7 = 0;
  completionCopy = completion;
  v5 = [(HDFeatureAvailabilityExtension *)extension featureAvailabilityRequirementsWithError:&v7];
  v6 = v7;
  completionCopy[2](completionCopy, v5, v6);
}

- (void)remote_getRegionAvailabilityWithCompletion:(id)completion
{
  extension = self->_extension;
  v7 = 0;
  completionCopy = completion;
  v5 = [(HDFeatureAvailabilityExtension *)extension regionAvailabilityWithError:&v7];
  v6 = v7;
  completionCopy[2](completionCopy, v5, v6);
}

- (uint64_t)_hasWriteEntitlementWithError:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    client = [result client];
    entitlements = [client entitlements];
    v6 = [entitlements hasEntitlement:*MEMORY[0x277CCBEC8]];

    if (v6)
    {
      return 1;
    }

    client2 = [v3 client];
    entitlements2 = [client2 entitlements];
    v9 = *MEMORY[0x277CCBED0];
    featureIdentifier = [v3[5] featureIdentifier];
    LOBYTE(v9) = [entitlements2 arrayEntitlement:v9 containsString:featureIdentifier];

    if (v9)
    {
      return 1;
    }

    else
    {
      v11 = MEMORY[0x277CCA9B8];
      featureIdentifier2 = [v3[5] featureIdentifier];
      v13 = [v11 hk_error:4 format:{@"Unauthorized access to modify availability of feature %@", featureIdentifier2}];
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

- (void)remote_setCurrentOnboardingVersionCompletedForCountryCode:(id)code countryCodeProvenance:(int64_t)provenance date:(id)date settings:(id)settings completion:(id)completion
{
  codeCopy = code;
  dateCopy = date;
  settingsCopy = settings;
  v18 = 0;
  completionCopy = completion;
  v16 = [(HDFeatureAvailabilityStoreServer *)self _hasWriteEntitlementWithError:?];
  v17 = v18;
  if (v16)
  {
    [(HDFeatureAvailabilityExtension *)self->_extension setCurrentOnboardingVersionCompletedForCountryCode:codeCopy countryCodeProvenance:provenance date:dateCopy settings:settingsCopy completion:completionCopy];
  }

  else
  {
    completionCopy[2](completionCopy, 0, v17);
  }
}

- (void)remote_saveOnboardingCompletion:(id)completion settings:(id)settings completion:(id)a5
{
  completionCopy = completion;
  settingsCopy = settings;
  v11 = a5;
  v21 = 0;
  v12 = [(HDFeatureAvailabilityStoreServer *)self _hasWriteEntitlementWithError:?];
  v13 = v21;
  if (v12)
  {
    featureIdentifier = [completionCopy featureIdentifier];
    featureIdentifier2 = [(HDFeatureAvailabilityExtension *)self->_extension featureIdentifier];
    v16 = [featureIdentifier isEqualToString:featureIdentifier2];

    if (v16)
    {
      [(HDFeatureAvailabilityExtension *)self->_extension saveOnboardingCompletion:completionCopy settings:settingsCopy completion:v11];
    }

    else
    {
      v17 = MEMORY[0x277CCA9B8];
      v18 = objc_opt_class();
      featureIdentifier3 = [completionCopy featureIdentifier];
      v20 = [v17 hk_errorForInvalidArgument:@"@" class:v18 selector:a2 format:{@"Cannot save onboarding for feature %@", featureIdentifier3}];
      v11[2](v11, 0, v20);
    }
  }

  else
  {
    v11[2](v11, 0, v13);
  }
}

- (void)remote_setFeatureSettingData:(id)data forKey:(id)key completion:(id)completion
{
  dataCopy = data;
  keyCopy = key;
  v13 = 0;
  completionCopy = completion;
  v11 = [(HDFeatureAvailabilityStoreServer *)self _hasWriteEntitlementWithError:?];
  v12 = v13;
  if (v11)
  {
    [(HDFeatureAvailabilityExtension *)self->_extension setFeatureSettingData:dataCopy forKey:keyCopy completion:completionCopy];
  }

  else
  {
    completionCopy[2](completionCopy, 0, v12);
  }
}

- (void)remote_setFeatureSettingString:(id)string forKey:(id)key completion:(id)completion
{
  stringCopy = string;
  keyCopy = key;
  v13 = 0;
  completionCopy = completion;
  v11 = [(HDFeatureAvailabilityStoreServer *)self _hasWriteEntitlementWithError:?];
  v12 = v13;
  if (v11)
  {
    [(HDFeatureAvailabilityExtension *)self->_extension setFeatureSettingString:stringCopy forKey:keyCopy completion:completionCopy];
  }

  else
  {
    completionCopy[2](completionCopy, 0, v12);
  }
}

- (void)remote_setFeatureSettingNumber:(id)number forKey:(id)key completion:(id)completion
{
  numberCopy = number;
  keyCopy = key;
  v13 = 0;
  completionCopy = completion;
  v11 = [(HDFeatureAvailabilityStoreServer *)self _hasWriteEntitlementWithError:?];
  v12 = v13;
  if (v11)
  {
    [(HDFeatureAvailabilityExtension *)self->_extension setFeatureSettingNumber:numberCopy forKey:keyCopy completion:completionCopy];
  }

  else
  {
    completionCopy[2](completionCopy, 0, v12);
  }
}

- (void)remote_removeFeatureSettingValueForKey:(id)key completion:(id)completion
{
  keyCopy = key;
  v10 = 0;
  completionCopy = completion;
  v8 = [(HDFeatureAvailabilityStoreServer *)self _hasWriteEntitlementWithError:?];
  v9 = v10;
  if (v8)
  {
    [(HDFeatureAvailabilityExtension *)self->_extension removeFeatureSettingValueForKey:keyCopy completion:completionCopy];
  }

  else
  {
    completionCopy[2](completionCopy, 0, v9);
  }
}

- (void)remote_resetOnboardingWithCompletion:(id)completion
{
  v7 = 0;
  completionCopy = completion;
  v5 = [(HDFeatureAvailabilityStoreServer *)self _hasWriteEntitlementWithError:?];
  v6 = v7;
  if (v5)
  {
    [(HDFeatureAvailabilityExtension *)self->_extension resetOnboardingWithCompletion:completionCopy];
  }

  else
  {
    completionCopy[2](completionCopy, 0, v6);
  }
}

- (void)remote_startObservingChangesWithCompletion:(id)completion
{
  v9 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  _HKInitializeLogging();
  v5 = HKLogInfrastructure();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_228986000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Registering for extension changes", &v7, 0xCu);
  }

  [(HDFeatureAvailabilityExtension *)self->_extension registerObserver:self queue:self->_queue];
  completionCopy[2](completionCopy, 1, 0);

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
    selfCopy = self;
    _os_log_impl(&dword_228986000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] Unregistering for extension changes", &v5, 0xCu);
  }

  [(HDFeatureAvailabilityExtension *)self->_extension unregisterObserver:self];
  v4 = *MEMORY[0x277D85DE8];
}

- (void)featureAvailabilityProvidingDidUpdateOnboardingCompletion:(id)completion
{
  v9 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v4 = HKLogInfrastructure();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_228986000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Notifying client of onboarding completion update", &v7, 0xCu);
  }

  _clientRemoteObjectProxy = [(HDFeatureAvailabilityStoreServer *)self _clientRemoteObjectProxy];
  [_clientRemoteObjectProxy client_featureAvailabilityExtensionDidUpdateOnboardingCompletion];

  v6 = *MEMORY[0x277D85DE8];
}

- (id)_clientRemoteObjectProxy
{
  if (self)
  {
    client = [self client];
    connection = [client connection];
    remoteObjectProxy = [connection remoteObjectProxy];
  }

  else
  {
    remoteObjectProxy = 0;
  }

  return remoteObjectProxy;
}

- (void)featureAvailabilityProvidingDidUpdateSettings:(id)settings
{
  v9 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v4 = HKLogInfrastructure();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_228986000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Notifying client of settings update", &v7, 0xCu);
  }

  _clientRemoteObjectProxy = [(HDFeatureAvailabilityStoreServer *)self _clientRemoteObjectProxy];
  [_clientRemoteObjectProxy client_featureAvailabilityProvidingDidUpdateSettings];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)featureAvailabilityExtensionOnboardingCompletionDataDidBecomeAvailable:(id)available
{
  v9 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v4 = HKLogInfrastructure();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_228986000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Notifying client of onboarding completion data becoming available", &v7, 0xCu);
  }

  _clientRemoteObjectProxy = [(HDFeatureAvailabilityStoreServer *)self _clientRemoteObjectProxy];
  [_clientRemoteObjectProxy client_featureAvailabilityExtensionDidUpdateOnboardingCompletion];

  v6 = *MEMORY[0x277D85DE8];
}

+ (id)createTaskServerWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate error:(id *)error
{
  v54 = *MEMORY[0x277D85DE8];
  dCopy = d;
  configurationCopy = configuration;
  clientCopy = client;
  delegateCopy = delegate;
  v41 = clientCopy;
  profile = [clientCopy profile];
  v15 = [profile profileExtensionsConformingToProtocol:&unk_283D71258];

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
      featureIdentifier = [configurationCopy featureIdentifier];
      v23 = [v21 featureAvailabilityExtensionForFeatureIdentifier:featureIdentifier];

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
    v29 = dCopy;
    v32 = [(HDStandardTaskServer *)[HDFeatureAvailabilityStoreServer alloc] initWithUUID:dCopy configuration:configurationCopy client:v41 delegate:delegateCopy];
    _HKInitializeLogging();
    v33 = HKLogInfrastructure();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      featureIdentifier2 = [configurationCopy featureIdentifier];
      *buf = 138543874;
      v48 = v32;
      v49 = 2114;
      v50 = v23;
      v51 = 2114;
      v52 = featureIdentifier2;
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
      featureIdentifier3 = v36;
      goto LABEL_19;
    }

    featureIdentifier3 = v35;
  }

  else
  {
LABEL_9:

    v24 = MEMORY[0x277CCA9B8];
    v25 = objc_opt_class();
    featureIdentifier3 = [configurationCopy featureIdentifier];
    v27 = [v24 hk_errorForInvalidArgument:@"@" class:v25 selector:a2 format:{@"No profile extension providing feature availability for %@", featureIdentifier3}];
    queue = v27;
    if (v27)
    {
      v30 = v41;
      v29 = dCopy;
      if (error)
      {
        v31 = v27;
        v32 = 0;
        *error = queue;
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
      v29 = dCopy;
    }

LABEL_19:
  }

  v38 = *MEMORY[0x277D85DE8];

  return v32;
}

+ (BOOL)validateConfiguration:(id)configuration client:(id)client error:(id *)error
{
  configurationCopy = configuration;
  clientCopy = client;
  entitlements = [clientCopy entitlements];
  v10 = [entitlements hasEntitlement:*MEMORY[0x277CCBEC8]];

  if (v10)
  {
    goto LABEL_5;
  }

  entitlements2 = [clientCopy entitlements];
  v12 = *MEMORY[0x277CCBED0];
  featureIdentifier = [configurationCopy featureIdentifier];
  LOBYTE(v12) = [entitlements2 arrayEntitlement:v12 containsString:featureIdentifier];

  if (v12)
  {
    goto LABEL_5;
  }

  entitlements3 = [clientCopy entitlements];
  v15 = [entitlements3 hasEntitlement:*MEMORY[0x277CCBEB8]];

  if (v15)
  {
    goto LABEL_5;
  }

  entitlements4 = [clientCopy entitlements];
  v17 = *MEMORY[0x277CCBEC0];
  featureIdentifier2 = [configurationCopy featureIdentifier];
  LOBYTE(v17) = [entitlements4 arrayEntitlement:v17 containsString:featureIdentifier2];

  if (v17)
  {
LABEL_5:
    v19 = 1;
  }

  else
  {
    v21 = MEMORY[0x277CCA9B8];
    featureIdentifier3 = [configurationCopy featureIdentifier];
    v23 = [v21 hk_error:4 format:{@"Unauthorized access to availability of feature %@", featureIdentifier3}];
    if (v23)
    {
      if (error)
      {
        v24 = v23;
        *error = v23;
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