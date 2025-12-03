@interface HDHRElectrocardiogramRecordingFeatureAvailabilityManager
- (BOOL)_requestCacheUpdateWorkWithError:(id *)error;
- (HDHRElectrocardiogramRecordingFeatureAvailabilityManager)initWithProfile:(id)profile cacheDefaults:(id)defaults;
- (HDHRElectrocardiogramRecordingFeatureAvailabilityManager)initWithV1FeatureAvailabilityManager:(id)manager v2FeatureAvailabilityManager:(id)availabilityManager cacheDefaults:(id)defaults protectedDataOperationForCaching:(id)caching;
- (id)canCompleteOnboardingForCountryCode:(id)code error:(id *)error;
- (id)earliestDateLowestOnboardingVersionCompletedWithError:(id *)error;
- (id)featureOnboardingRecordWithError:(id *)error;
- (id)isCurrentOnboardingVersionCompletedWithError:(id *)error;
- (id)isFeatureCapabilitySupportedOnActivePairedDeviceWithError:(id *)error;
- (id)onboardedCountryCodeSupportedStateWithError:(id *)error;
- (id)onboardingEligibilityForCountryCode:(id)code error:(id *)error;
- (id)pairedFeatureAttributesWithError:(id *)error;
- (void)_registerForCacheUpdatedNotifications;
- (void)_setV1CurrentOnboardingVersionCompletedForCountryCode:(id)code countryCodeProvenance:(int64_t)provenance date:(id)date settings:(id)settings completion:(id)completion;
- (void)dealloc;
- (void)featureAvailabilityExtensionDidUpdatePairedDeviceCapability:(id)capability;
- (void)featureAvailabilityExtensionDidUpdateRegionAvailability:(id)availability;
- (void)featureAvailabilityExtensionOnboardingCompletionDataDidBecomeAvailable:(id)available;
- (void)featureAvailabilityProvidingDidUpdateOnboardingCompletion:(id)completion;
- (void)featureAvailabilityProvidingDidUpdateSettings:(id)settings;
- (void)getFeatureOnboardingRecordWithCompletion:(id)completion;
- (void)isCurrentOnboardingVersionCompletedWithCompletion:(id)completion;
- (void)performWorkForOperation:(id)operation profile:(id)profile databaseAccessibilityAssertion:(id)assertion completion:(id)completion;
- (void)removeFeatureSettingValueForKey:(id)key completion:(id)completion;
- (void)resetOnboardingWithCompletion:(id)completion;
- (void)saveOnboardingCompletion:(id)completion settings:(id)settings completion:(id)a5;
- (void)setCurrentOnboardingVersionCompletedForCountryCode:(id)code countryCodeProvenance:(int64_t)provenance date:(id)date settings:(id)settings completion:(id)completion;
- (void)setFeatureSettingData:(id)data forKey:(id)key completion:(id)completion;
- (void)setFeatureSettingNumber:(id)number forKey:(id)key completion:(id)completion;
- (void)setFeatureSettingString:(id)string forKey:(id)key completion:(id)completion;
@end

@implementation HDHRElectrocardiogramRecordingFeatureAvailabilityManager

- (HDHRElectrocardiogramRecordingFeatureAvailabilityManager)initWithProfile:(id)profile cacheDefaults:(id)defaults
{
  profileCopy = profile;
  defaultsCopy = defaults;
  v8 = objc_alloc(MEMORY[0x277D107C0]);
  daemon = [profileCopy daemon];
  v10 = [v8 initWithDaemon:daemon remoteDisableCondition:*MEMORY[0x277CCCCF0] seedExpirationCondition:*MEMORY[0x277CCCD00]];

  mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
  if ([mEMORY[0x277CCDD30] isCompanionCapable])
  {
    v12 = HKHRElectrocardiogramRecordingV1FeatureAvailabilityProvider(profileCopy, 0, v10, 0, defaultsCopy, 0);
  }

  else
  {
    mEMORY[0x277CCDD30]2 = [MEMORY[0x277CCDD30] sharedBehavior];
    v12 = HKHRElectrocardiogramRecordingV1FeatureAvailabilityProvider(profileCopy, 0, v10, 0, defaultsCopy, [mEMORY[0x277CCDD30]2 isAppleWatch] ^ 1);
  }

  mEMORY[0x277CCDD30]3 = [MEMORY[0x277CCDD30] sharedBehavior];
  if ([mEMORY[0x277CCDD30]3 isCompanionCapable])
  {
    v15 = HKHRElectrocardiogramRecordingV2FeatureAvailabilityProvider(profileCopy, 0, v10, 0, defaultsCopy, 0);
  }

  else
  {
    mEMORY[0x277CCDD30]4 = [MEMORY[0x277CCDD30] sharedBehavior];
    v15 = HKHRElectrocardiogramRecordingV2FeatureAvailabilityProvider(profileCopy, 0, v10, 0, defaultsCopy, [mEMORY[0x277CCDD30]4 isAppleWatch] ^ 1);
  }

  mEMORY[0x277CCDD30]5 = [MEMORY[0x277CCDD30] sharedBehavior];
  isAppleWatch = [mEMORY[0x277CCDD30]5 isAppleWatch];

  if (isAppleWatch)
  {
    v19 = 0;
  }

  else
  {
    v19 = [objc_alloc(MEMORY[0x277D10800]) initWithProfile:profileCopy debugIdentifier:@"HDHRElectrocardiogramRecordingFeatureAvailabilityManager – Caching" delegate:0];
  }

  v20 = [(HDHRElectrocardiogramRecordingFeatureAvailabilityManager *)self initWithV1FeatureAvailabilityManager:v12 v2FeatureAvailabilityManager:v15 cacheDefaults:defaultsCopy protectedDataOperationForCaching:v19];

  return v20;
}

- (HDHRElectrocardiogramRecordingFeatureAvailabilityManager)initWithV1FeatureAvailabilityManager:(id)manager v2FeatureAvailabilityManager:(id)availabilityManager cacheDefaults:(id)defaults protectedDataOperationForCaching:(id)caching
{
  managerCopy = manager;
  availabilityManagerCopy = availabilityManager;
  defaultsCopy = defaults;
  cachingCopy = caching;
  v28.receiver = self;
  v28.super_class = HDHRElectrocardiogramRecordingFeatureAvailabilityManager;
  v15 = [(HDHRElectrocardiogramRecordingFeatureAvailabilityManager *)&v28 init];
  v16 = v15;
  if (v15)
  {
    v15->_needsOnboardingVersionCacheUpdate = 1;
    objc_storeStrong(&v15->_protectedDataOperationForCaching, caching);
    objc_storeStrong(&v16->_v1FeatureAvailabilityManager, manager);
    objc_storeStrong(&v16->_v2FeatureAvailabilityManager, availabilityManager);
    objc_storeStrong(&v16->_cacheDefaults, defaults);
    v17 = objc_alloc(MEMORY[0x277CCD738]);
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    v20 = [v17 initWithName:v19 loggingCategory:*MEMORY[0x277CCC2D8]];
    observers = v16->_observers;
    v16->_observers = v20;

    v22 = HKCreateSerialDispatchQueue();
    observerQueue = v16->_observerQueue;
    v16->_observerQueue = v22;

    [(HDHRElectrocardiogramRecordingFeatureAvailabilityManager *)v16 _registerForCacheUpdatedNotifications];
    [(HDFeatureAvailabilityExtension *)v16->_v1FeatureAvailabilityManager registerObserver:v16 queue:v16->_observerQueue];
    [(HDFeatureAvailabilityExtension *)v16->_v2FeatureAvailabilityManager registerObserver:v16 queue:v16->_observerQueue];
    [(HDProtectedDataOperation *)v16->_protectedDataOperationForCaching setDelegate:v16];
    v27 = 0;
    LOBYTE(v19) = [(HDHRElectrocardiogramRecordingFeatureAvailabilityManager *)v16 _requestCacheUpdateWorkWithError:&v27];
    v24 = v27;
    if ((v19 & 1) == 0)
    {
      _HKInitializeLogging();
      v25 = HKLogHeartRhythmCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        [HDHRElectrocardiogramRecordingFeatureAvailabilityManager initWithV1FeatureAvailabilityManager:v2FeatureAvailabilityManager:cacheDefaults:protectedDataOperationForCaching:];
      }
    }
  }

  return v16;
}

- (void)dealloc
{
  [(HDFeatureAvailabilityExtension *)self->_v1FeatureAvailabilityManager unregisterObserver:self];
  [(HDFeatureAvailabilityExtension *)self->_v2FeatureAvailabilityManager unregisterObserver:self];
  if (notify_is_valid_token(self->_didUpdateOnboardingCacheNotificationToken))
  {
    notify_cancel(self->_didUpdateOnboardingCacheNotificationToken);
  }

  v3.receiver = self;
  v3.super_class = HDHRElectrocardiogramRecordingFeatureAvailabilityManager;
  [(HDHRElectrocardiogramRecordingFeatureAvailabilityManager *)&v3 dealloc];
}

- (void)_registerForCacheUpdatedNotifications
{
  objc_initWeak(&location, self);
  v3 = *MEMORY[0x277CCC1E0];
  observerQueue = self->_observerQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __97__HDHRElectrocardiogramRecordingFeatureAvailabilityManager__registerForCacheUpdatedNotifications__block_invoke;
  v5[3] = &unk_278660570;
  objc_copyWeak(&v6, &location);
  notify_register_dispatch(v3, &self->_didUpdateOnboardingCacheNotificationToken, observerQueue, v5);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __97__HDHRElectrocardiogramRecordingFeatureAvailabilityManager__registerForCacheUpdatedNotifications__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained featureAvailabilityProvidingDidUpdateOnboardingCompletion:WeakRetained];
}

- (BOOL)_requestCacheUpdateWorkWithError:(id *)error
{
  protectedDataOperationForCaching = self->_protectedDataOperationForCaching;
  if (protectedDataOperationForCaching)
  {
    return [(HDProtectedDataOperation *)protectedDataOperationForCaching requestWorkWithPriority:2 error:error];
  }

  else
  {
    return 1;
  }
}

- (id)featureOnboardingRecordWithError:(id *)error
{
  v1FeatureAvailabilityManager = self->_v1FeatureAvailabilityManager;
  v22 = 0;
  v6 = [(HDFeatureAvailabilityExtension *)v1FeatureAvailabilityManager featureOnboardingRecordWithError:&v22];
  v7 = v22;
  if (!v6)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
    {
      [HDHRElectrocardiogramRecordingFeatureAvailabilityManager featureOnboardingRecordWithError:];
    }
  }

  v2FeatureAvailabilityManager = self->_v2FeatureAvailabilityManager;
  v21 = 0;
  v9 = [(HDFeatureAvailabilityExtension *)v2FeatureAvailabilityManager featureOnboardingRecordWithError:&v21];
  v10 = v21;
  if (v9)
  {
    if (v6)
    {
      onboardingState = [v6 onboardingState];
      onboardingState2 = [v9 onboardingState];
      v13 = onboardingState2;
      if ((onboardingState - 4) < 2)
      {
        if (onboardingState2 == 2)
        {
          v17 = 2;
        }

        else
        {
          v17 = onboardingState;
        }

        if (onboardingState2 == 4)
        {
          v17 = 4;
        }

        if (onboardingState2 != 5)
        {
          v13 = v17;
        }

        goto LABEL_30;
      }

      if (onboardingState != 2)
      {
        if (onboardingState != 1)
        {
LABEL_30:
          if ([v9 onboardingState] == v13)
          {
            v19 = v9;
          }

          else
          {
            v19 = v6;
          }

          v18 = v19;
          goto LABEL_34;
        }

        if ((onboardingState2 - 1) < 5)
        {
          v13 = qword_2294F78F0[onboardingState2 - 1];
          goto LABEL_30;
        }
      }

      v13 = 2;
      goto LABEL_30;
    }
  }

  else
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
    {
      [HDHRElectrocardiogramRecordingFeatureAvailabilityManager featureOnboardingRecordWithError:];
    }
  }

  if (v7)
  {
    v14 = v7;
  }

  else
  {
    v14 = v10;
  }

  v15 = v14;
  if (v15)
  {
    if (error)
    {
      v16 = v15;
      *error = v15;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  v18 = 0;
LABEL_34:

  return v18;
}

- (void)getFeatureOnboardingRecordWithCompletion:(id)completion
{
  v7 = 0;
  completionCopy = completion;
  v5 = [(HDHRElectrocardiogramRecordingFeatureAvailabilityManager *)self featureOnboardingRecordWithError:&v7];
  v6 = v7;
  completionCopy[2](completionCopy, v5, v6);
}

- (id)isCurrentOnboardingVersionCompletedWithError:(id *)error
{
  v1FeatureAvailabilityManager = self->_v1FeatureAvailabilityManager;
  v22 = 0;
  v6 = [(HDFeatureAvailabilityExtension *)v1FeatureAvailabilityManager isCurrentOnboardingVersionCompletedWithError:&v22];
  v7 = v22;
  v2FeatureAvailabilityManager = self->_v2FeatureAvailabilityManager;
  v21 = 0;
  v9 = [(HDFeatureAvailabilityExtension *)v2FeatureAvailabilityManager isCurrentOnboardingVersionCompletedWithError:&v21];
  v10 = v21;
  v11 = v10;
  if (v6)
  {
    v12 = v9 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    if (v7)
    {
      v13 = v7;
    }

    else
    {
      v13 = v10;
    }

    v14 = v13;
    if (v14)
    {
      if (error)
      {
        v15 = v14;
        *error = v14;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v19 = 0;
  }

  else
  {
    v16 = MEMORY[0x277CCABB0];
    bOOLValue = [v6 BOOLValue];
    if (bOOLValue)
    {
      bOOLValue2 = 1;
    }

    else
    {
      bOOLValue2 = [v9 BOOLValue];
    }

    v19 = [v16 numberWithInt:bOOLValue2];
  }

  return v19;
}

- (void)isCurrentOnboardingVersionCompletedWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = dispatch_group_create();
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x3032000000;
  v31[3] = __Block_byref_object_copy__9;
  v31[4] = __Block_byref_object_dispose__9;
  v32 = 0;
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x3032000000;
  v29[3] = __Block_byref_object_copy__9;
  v29[4] = __Block_byref_object_dispose__9;
  v30 = 0;
  dispatch_group_enter(v5);
  v1FeatureAvailabilityManager = self->_v1FeatureAvailabilityManager;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __110__HDHRElectrocardiogramRecordingFeatureAvailabilityManager_isCurrentOnboardingVersionCompletedWithCompletion___block_invoke;
  v25[3] = &unk_278660FB0;
  v27 = v31;
  v28 = v29;
  v7 = v5;
  v26 = v7;
  [(HDFeatureAvailabilityExtension *)v1FeatureAvailabilityManager isCurrentOnboardingVersionCompletedWithCompletion:v25];
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x3032000000;
  v23[3] = __Block_byref_object_copy__9;
  v23[4] = __Block_byref_object_dispose__9;
  v24 = 0;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x3032000000;
  v21[3] = __Block_byref_object_copy__9;
  v21[4] = __Block_byref_object_dispose__9;
  v22 = 0;
  dispatch_group_enter(v7);
  v2FeatureAvailabilityManager = self->_v2FeatureAvailabilityManager;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __110__HDHRElectrocardiogramRecordingFeatureAvailabilityManager_isCurrentOnboardingVersionCompletedWithCompletion___block_invoke_2;
  v17[3] = &unk_278660FB0;
  v19 = v23;
  v20 = v21;
  v9 = v7;
  v18 = v9;
  [(HDFeatureAvailabilityExtension *)v2FeatureAvailabilityManager isCurrentOnboardingVersionCompletedWithCompletion:v17];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __110__HDHRElectrocardiogramRecordingFeatureAvailabilityManager_isCurrentOnboardingVersionCompletedWithCompletion___block_invoke_3;
  block[3] = &unk_278660FD8;
  v12 = completionCopy;
  v13 = v31;
  v14 = v23;
  v15 = v29;
  v16 = v21;
  v10 = completionCopy;
  dispatch_group_notify(v9, MEMORY[0x277D85CD0], block);

  _Block_object_dispose(v21, 8);
  _Block_object_dispose(v23, 8);

  _Block_object_dispose(v29, 8);
  _Block_object_dispose(v31, 8);
}

void __110__HDHRElectrocardiogramRecordingFeatureAvailabilityManager_isCurrentOnboardingVersionCompletedWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_group_leave(*(a1 + 32));
}

void __110__HDHRElectrocardiogramRecordingFeatureAvailabilityManager_isCurrentOnboardingVersionCompletedWithCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_group_leave(*(a1 + 32));
}

void __110__HDHRElectrocardiogramRecordingFeatureAvailabilityManager_isCurrentOnboardingVersionCompletedWithCompletion___block_invoke_3(void *a1)
{
  v2 = *(*(a1[5] + 8) + 40);
  if (v2 && *(*(a1[6] + 8) + 40))
  {
    if ([v2 BOOLValue])
    {
      v3 = 1;
    }

    else
    {
      v3 = [*(*(a1[6] + 8) + 40) BOOLValue];
    }

    v6 = a1[4];
    v7 = [MEMORY[0x277CCABB0] numberWithBool:v3];
    (*(v6 + 16))(v6, v7, 0);
  }

  else
  {
    if (!*(*(a1[7] + 8) + 40))
    {
      v4 = *(*(a1[8] + 8) + 40);
    }

    v5 = *(a1[4] + 16);

    v5();
  }
}

- (id)canCompleteOnboardingForCountryCode:(id)code error:(id *)error
{
  v1FeatureAvailabilityManager = self->_v1FeatureAvailabilityManager;
  v24 = 0;
  codeCopy = code;
  v8 = [(HDFeatureAvailabilityExtension *)v1FeatureAvailabilityManager canCompleteOnboardingForCountryCode:codeCopy error:&v24];
  v9 = v24;
  v2FeatureAvailabilityManager = self->_v2FeatureAvailabilityManager;
  v23 = 0;
  v11 = [(HDFeatureAvailabilityExtension *)v2FeatureAvailabilityManager canCompleteOnboardingForCountryCode:codeCopy error:&v23];

  v12 = v23;
  v13 = v12;
  if (v8)
  {
    v14 = v11 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    if (v9)
    {
      v15 = v9;
    }

    else
    {
      v15 = v12;
    }

    v16 = v15;
    if (v16)
    {
      if (error)
      {
        v17 = v16;
        *error = v16;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v21 = 0;
  }

  else
  {
    v18 = MEMORY[0x277CCABB0];
    bOOLValue = [v8 BOOLValue];
    if (bOOLValue)
    {
      bOOLValue2 = 1;
    }

    else
    {
      bOOLValue2 = [v11 BOOLValue];
    }

    v21 = [v18 numberWithInt:bOOLValue2];
  }

  return v21;
}

- (id)onboardingEligibilityForCountryCode:(id)code error:(id *)error
{
  v1FeatureAvailabilityManager = self->_v1FeatureAvailabilityManager;
  v46 = 0;
  codeCopy = code;
  v8 = [(HDFeatureAvailabilityExtension *)v1FeatureAvailabilityManager onboardingEligibilityForCountryCode:codeCopy error:&v46];
  v9 = v46;
  v2FeatureAvailabilityManager = self->_v2FeatureAvailabilityManager;
  v45 = 0;
  v11 = [(HDFeatureAvailabilityExtension *)v2FeatureAvailabilityManager onboardingEligibilityForCountryCode:codeCopy error:&v45];

  v12 = v45;
  v13 = v12;
  if (v8)
  {
    v14 = v11 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (!v14)
  {
    v18 = self->_v1FeatureAvailabilityManager;
    v44 = 0;
    v19 = [(HDFeatureAvailabilityExtension *)v18 onboardedCountryCodeSupportedStateWithError:&v44];
    v20 = v44;
    v21 = self->_v2FeatureAvailabilityManager;
    v43 = 0;
    v22 = [(HDFeatureAvailabilityExtension *)v21 onboardedCountryCodeSupportedStateWithError:&v43];
    v23 = v43;
    v24 = v23;
    if (!(v19 | v22))
    {
      if (v20)
      {
        v25 = v20;
      }

      else
      {
        v25 = v23;
      }

      v26 = v25;
      if (v26)
      {
        if (error)
        {
          v27 = v26;
          *error = v26;
        }

        else
        {
          _HKLogDroppedError();
        }
      }

      v17 = 0;
      goto LABEL_58;
    }

    if (v19)
    {
      if (v22)
      {
        integerValue = [v19 integerValue];
        integerValue2 = [v22 integerValue];
        if ((integerValue - 4) < 2)
        {
          if (integerValue2 == 5 || integerValue2 == 4 || integerValue2 == 2)
          {
            goto LABEL_50;
          }
        }

        else
        {
          if (integerValue == 2)
          {
            goto LABEL_51;
          }

          if (integerValue != 1)
          {
            integerValue = integerValue2;
            if (integerValue2 != 1)
            {
              goto LABEL_51;
            }

            goto LABEL_44;
          }

          integerValue = 2;
          if (integerValue2 <= 3)
          {
            if (integerValue2 != 1 && integerValue2 != 3)
            {
              goto LABEL_51;
            }

LABEL_44:
            if ([v11 isEligible])
            {
              v31 = v11;
            }

            else
            {
              v31 = v8;
            }

            v42 = v31;
            goto LABEL_57;
          }

          if (integerValue2 == 5 || integerValue2 == 4)
          {
LABEL_50:
            integerValue = integerValue2;
          }
        }

LABEL_51:
        if (integerValue2 == integerValue)
        {
          v32 = v11;
        }

        else
        {
          v32 = v8;
        }

        v33 = v32;
        v42 = v33;
        if ((integerValue & 0xFFFFFFFFFFFFFFFELL) == 4)
        {
          v34 = v33;
          featureIdentifier = [(HDHRElectrocardiogramRecordingFeatureAvailabilityManager *)self featureIdentifier];
          v36 = v34;
          v37 = featureIdentifier;
          v17 = [v36 eligibilityRespectingOverridesForFeatureIdentifier:?];

          goto LABEL_58;
        }

        v40 = v24;
LABEL_57:
        featureIdentifier2 = [(HDHRElectrocardiogramRecordingFeatureAvailabilityManager *)self featureIdentifier];
        v17 = [v42 eligibilityRespectingOverridesForFeatureIdentifier:featureIdentifier2];

        v24 = v41;
        goto LABEL_58;
      }

      _HKInitializeLogging();
      if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
      {
        [HDHRElectrocardiogramRecordingFeatureAvailabilityManager onboardingEligibilityForCountryCode:error:];
      }

      v30 = v8;
    }

    else
    {
      _HKInitializeLogging();
      if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
      {
        [HDHRElectrocardiogramRecordingFeatureAvailabilityManager onboardingEligibilityForCountryCode:error:];
      }

      v30 = v11;
    }

    v17 = v30;
LABEL_58:

    goto LABEL_59;
  }

  if (v9)
  {
    v15 = v9;
  }

  else
  {
    v15 = v12;
  }

  v20 = v15;
  if (v20)
  {
    if (error)
    {
      v16 = v20;
      v17 = 0;
      *error = v20;
      goto LABEL_59;
    }

    _HKLogDroppedError();
  }

  v17 = 0;
LABEL_59:

  return v17;
}

- (id)onboardedCountryCodeSupportedStateWithError:(id *)error
{
  v1FeatureAvailabilityManager = self->_v1FeatureAvailabilityManager;
  v22 = 0;
  v6 = [(HDFeatureAvailabilityExtension *)v1FeatureAvailabilityManager onboardedCountryCodeSupportedStateWithError:&v22];
  v7 = v22;
  v2FeatureAvailabilityManager = self->_v2FeatureAvailabilityManager;
  v21 = 0;
  v9 = [(HDFeatureAvailabilityExtension *)v2FeatureAvailabilityManager onboardedCountryCodeSupportedStateWithError:&v21];
  v10 = v21;
  v11 = v10;
  if (v6 | v9)
  {
    if (!v6)
    {
      _HKInitializeLogging();
      if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
      {
        [HDHRElectrocardiogramRecordingFeatureAvailabilityManager onboardingEligibilityForCountryCode:error:];
      }

      v18 = v9;
      goto LABEL_34;
    }

    if (!v9)
    {
      _HKInitializeLogging();
      if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
      {
        [HDHRElectrocardiogramRecordingFeatureAvailabilityManager onboardingEligibilityForCountryCode:error:];
      }

      v18 = v6;
      goto LABEL_34;
    }

    integerValue = [v6 integerValue];
    integerValue2 = [v9 integerValue];
    v17 = integerValue2;
    if ((integerValue - 4) < 2)
    {
      if ((integerValue2 - 4) < 2 || integerValue2 == 2)
      {
        goto LABEL_33;
      }
    }

    else
    {
      if (integerValue == 2)
      {
        goto LABEL_32;
      }

      if (integerValue == 1)
      {
        if (integerValue2 <= 3)
        {
          if (integerValue2 == 1)
          {
            goto LABEL_33;
          }

          if (integerValue2 == 2)
          {
            goto LABEL_33;
          }

          v17 = 1;
          if (integerValue2 == 3)
          {
            goto LABEL_33;
          }

          goto LABEL_32;
        }

        if ((integerValue2 - 4) >= 2)
        {
LABEL_32:
          v17 = 2;
        }

LABEL_33:
        v18 = [MEMORY[0x277CCABB0] numberWithInteger:v17];
LABEL_34:
        v19 = v18;
        goto LABEL_35;
      }

      integerValue = integerValue2;
    }

    v17 = integerValue;
    goto LABEL_33;
  }

  if (v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = v10;
  }

  v13 = v12;
  if (v13)
  {
    if (error)
    {
      v14 = v13;
      *error = v13;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  v19 = 0;
LABEL_35:

  return v19;
}

- (id)isFeatureCapabilitySupportedOnActivePairedDeviceWithError:(id *)error
{
  v1FeatureAvailabilityManager = self->_v1FeatureAvailabilityManager;
  v22 = 0;
  v6 = [(HDFeatureAvailabilityExtension *)v1FeatureAvailabilityManager isFeatureCapabilitySupportedOnActivePairedDeviceWithError:&v22];
  v7 = v22;
  v2FeatureAvailabilityManager = self->_v2FeatureAvailabilityManager;
  v21 = 0;
  v9 = [(HDFeatureAvailabilityExtension *)v2FeatureAvailabilityManager isFeatureCapabilitySupportedOnActivePairedDeviceWithError:&v21];
  v10 = v21;
  v11 = v10;
  if (v6)
  {
    v12 = v9 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    if (v7)
    {
      v13 = v7;
    }

    else
    {
      v13 = v10;
    }

    v14 = v13;
    if (v14)
    {
      if (error)
      {
        v15 = v14;
        *error = v14;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v19 = 0;
  }

  else
  {
    v16 = MEMORY[0x277CCABB0];
    bOOLValue = [v6 BOOLValue];
    if (bOOLValue)
    {
      bOOLValue2 = 1;
    }

    else
    {
      bOOLValue2 = [v9 BOOLValue];
    }

    v19 = [v16 numberWithInt:bOOLValue2];
  }

  return v19;
}

- (id)earliestDateLowestOnboardingVersionCompletedWithError:(id *)error
{
  v1FeatureAvailabilityManager = self->_v1FeatureAvailabilityManager;
  v19 = 0;
  v6 = [(HDFeatureAvailabilityExtension *)v1FeatureAvailabilityManager earliestDateLowestOnboardingVersionCompletedWithError:&v19];
  v7 = v19;
  v2FeatureAvailabilityManager = self->_v2FeatureAvailabilityManager;
  v18 = 0;
  v9 = [(HDFeatureAvailabilityExtension *)v2FeatureAvailabilityManager earliestDateLowestOnboardingVersionCompletedWithError:&v18];
  v10 = v18;
  v11 = v10;
  if (v6 | v9)
  {
    if (v6)
    {
      if (v9)
      {
        v15 = [v6 earlierDate:v9];
      }

      else
      {
        v15 = v6;
      }
    }

    else
    {
      v15 = v9;
    }

    v16 = v15;
  }

  else
  {
    if (v7)
    {
      v12 = v7;
    }

    else
    {
      v12 = v10;
    }

    v13 = v12;
    if (v13)
    {
      if (error)
      {
        v14 = v13;
        *error = v13;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v16 = 0;
  }

  return v16;
}

- (id)pairedFeatureAttributesWithError:(id *)error
{
  v1FeatureAvailabilityManager = self->_v1FeatureAvailabilityManager;
  v26 = 0;
  v6 = [(HDFeatureAvailabilityExtension *)v1FeatureAvailabilityManager onboardedCountryCodeSupportedStateWithError:&v26];
  v7 = v26;
  v2FeatureAvailabilityManager = self->_v2FeatureAvailabilityManager;
  v25 = 0;
  v9 = [(HDFeatureAvailabilityExtension *)v2FeatureAvailabilityManager onboardedCountryCodeSupportedStateWithError:&v25];
  v10 = v25;
  v11 = v10;
  if (v6)
  {
    v12 = v9 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    if (v7)
    {
      v13 = v7;
    }

    else
    {
      v13 = v10;
    }

    v14 = v13;
    if (v14)
    {
      if (error)
      {
        v15 = v14;
        *error = v14;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    goto LABEL_46;
  }

  integerValue = [v6 integerValue];
  integerValue2 = [v9 integerValue];
  if ((integerValue - 4) < 2)
  {
    if (integerValue2 == 2)
    {
      v18 = 2;
    }

    else
    {
      v18 = integerValue;
    }

    v19 = integerValue2 == 5 || integerValue2 == 4;
    goto LABEL_25;
  }

  if (integerValue == 2)
  {
    goto LABEL_28;
  }

  if (integerValue == 1)
  {
    integerValue = 2;
    if (integerValue2 <= 3)
    {
      if (integerValue2 != 1 && integerValue2 != 3)
      {
        goto LABEL_28;
      }

      goto LABEL_34;
    }

    if (integerValue2 == 4)
    {
      v18 = 4;
    }

    else
    {
      v18 = 2;
    }

    v19 = integerValue2 == 5;
LABEL_25:
    if (v19)
    {
      integerValue = integerValue2;
    }

    else
    {
      integerValue = v18;
    }

LABEL_28:
    if ([v9 integerValue] == integerValue)
    {
      v20 = self->_v2FeatureAvailabilityManager;
    }

    else
    {
      v20 = self->_v1FeatureAvailabilityManager;
    }

    v21 = [(HDFeatureAvailabilityExtension *)v20 pairedFeatureAttributesWithError:error];
    goto LABEL_47;
  }

  if (integerValue2 != 1)
  {
    integerValue = integerValue2;
    goto LABEL_28;
  }

LABEL_34:
  _HKInitializeLogging();
  v22 = *MEMORY[0x277CCC2D8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
  {
    [HDHRElectrocardiogramRecordingFeatureAvailabilityManager pairedFeatureAttributesWithError:v22];
  }

  v14 = [MEMORY[0x277CCA9B8] hk_error:11 description:@"Unable to determine paired feature attributes for ECG without onboarding completion"];
  if (v14)
  {
    if (error)
    {
      v23 = v14;
      *error = v14;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

LABEL_46:
  v21 = 0;
LABEL_47:

  return v21;
}

- (void)setCurrentOnboardingVersionCompletedForCountryCode:(id)code countryCodeProvenance:(int64_t)provenance date:(id)date settings:(id)settings completion:(id)completion
{
  v31 = *MEMORY[0x277D85DE8];
  codeCopy = code;
  dateCopy = date;
  settingsCopy = settings;
  completionCopy = completion;
  if (![MEMORY[0x277CCDD30] isAppleInternalInstall])
  {
    v19 = 0;
LABEL_8:
    objc_initWeak(buf, self);
    v2FeatureAvailabilityManager = self->_v2FeatureAvailabilityManager;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __158__HDHRElectrocardiogramRecordingFeatureAvailabilityManager_setCurrentOnboardingVersionCompletedForCountryCode_countryCodeProvenance_date_settings_completion___block_invoke;
    v22[3] = &unk_278661140;
    objc_copyWeak(v27, buf);
    v26 = completionCopy;
    v28 = v19;
    v23 = codeCopy;
    v27[1] = provenance;
    v24 = dateCopy;
    v25 = settingsCopy;
    [(HDFeatureAvailabilityExtension *)v2FeatureAvailabilityManager setCurrentOnboardingVersionCompletedForCountryCode:v23 countryCodeProvenance:provenance date:v24 settings:v25 completion:v22];

    objc_destroyWeak(v27);
    objc_destroyWeak(buf);
    goto LABEL_9;
  }

  v16 = [(NSUserDefaults *)self->_cacheDefaults objectForKey:*MEMORY[0x277CCBCC0]];
  unsignedIntegerValue = [v16 unsignedIntegerValue];
  if (unsignedIntegerValue != 3)
  {
    v19 = unsignedIntegerValue == 4;

    goto LABEL_8;
  }

  _HKInitializeLogging();
  v18 = *MEMORY[0x277CCC2D8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_229486000, v18, OS_LOG_TYPE_DEFAULT, "[%{public}@] Force ECG v1 onboarding override is set, skipping attemp to onboard v2", buf, 0xCu);
  }

  [(HDHRElectrocardiogramRecordingFeatureAvailabilityManager *)self _setV1CurrentOnboardingVersionCompletedForCountryCode:codeCopy countryCodeProvenance:provenance date:dateCopy settings:settingsCopy completion:completionCopy];

LABEL_9:
  v21 = *MEMORY[0x277D85DE8];
}

void __158__HDHRElectrocardiogramRecordingFeatureAvailabilityManager_setCurrentOnboardingVersionCompletedForCountryCode_countryCodeProvenance_date_settings_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (a2)
  {
    v7 = *(*(a1 + 56) + 16);
  }

  else
  {
    _HKInitializeLogging();
    v8 = MEMORY[0x277CCC2D8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
    {
      __158__HDHRElectrocardiogramRecordingFeatureAvailabilityManager_setCurrentOnboardingVersionCompletedForCountryCode_countryCodeProvenance_date_settings_completion___block_invoke_cold_1();
    }

    if (*(a1 + 80) != 1)
    {
      [WeakRetained _setV1CurrentOnboardingVersionCompletedForCountryCode:*(a1 + 32) countryCodeProvenance:*(a1 + 72) date:*(a1 + 40) settings:*(a1 + 48) completion:*(a1 + 56)];
      goto LABEL_11;
    }

    _HKInitializeLogging();
    v9 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138543362;
      v12 = WeakRetained;
      _os_log_impl(&dword_229486000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Force ECG v2 onboarding override is set, skipping attemp to onboard v1", &v11, 0xCu);
    }

    v7 = *(*(a1 + 56) + 16);
  }

  v7();
LABEL_11:

  v10 = *MEMORY[0x277D85DE8];
}

- (void)saveOnboardingCompletion:(id)completion settings:(id)settings completion:(id)a5
{
  v5 = a5;
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC2D8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
  {
    [HDHRElectrocardiogramRecordingFeatureAvailabilityManager saveOnboardingCompletion:v6 settings:? completion:?];
  }

  v7 = [MEMORY[0x277CCA9B8] hk_error:3 description:@"Saving HKOnboardingCompletion directly is not supported for ECG's combined feature identifier"];
  v5[2](v5, 0, v7);
}

- (void)setFeatureSettingData:(id)data forKey:(id)key completion:(id)completion
{
  keyCopy = key;
  completionCopy = completion;
  _HKInitializeLogging();
  if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
  {
    [HDHRElectrocardiogramRecordingFeatureAvailabilityManager setFeatureSettingData:forKey:completion:];
  }

  v8 = [MEMORY[0x277CCA9B8] hk_error:3 description:@"Cannot set unknown data setting for ECG"];
  completionCopy[2](completionCopy, 0, v8);
}

- (void)setFeatureSettingString:(id)string forKey:(id)key completion:(id)completion
{
  keyCopy = key;
  completionCopy = completion;
  _HKInitializeLogging();
  if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
  {
    [HDHRElectrocardiogramRecordingFeatureAvailabilityManager setFeatureSettingString:forKey:completion:];
  }

  v8 = [MEMORY[0x277CCA9B8] hk_error:3 description:@"Cannot set unknown string setting for ECG"];
  completionCopy[2](completionCopy, 0, v8);
}

- (void)setFeatureSettingNumber:(id)number forKey:(id)key completion:(id)completion
{
  keyCopy = key;
  completionCopy = completion;
  _HKInitializeLogging();
  if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
  {
    [HDHRElectrocardiogramRecordingFeatureAvailabilityManager setFeatureSettingNumber:forKey:completion:];
  }

  v8 = [MEMORY[0x277CCA9B8] hk_error:3 description:@"Cannot set unknown number setting for ECG"];
  completionCopy[2](completionCopy, 0, v8);
}

- (void)removeFeatureSettingValueForKey:(id)key completion:(id)completion
{
  keyCopy = key;
  completionCopy = completion;
  _HKInitializeLogging();
  if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
  {
    [HDHRElectrocardiogramRecordingFeatureAvailabilityManager removeFeatureSettingValueForKey:completion:];
  }

  v7 = [MEMORY[0x277CCA9B8] hk_error:3 description:@"Cannot remove unknown setting for ECG"];
  completionCopy[2](completionCopy, 0, v7);
}

- (void)resetOnboardingWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = dispatch_group_create();
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x2020000000;
  v32 = 0;
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x3032000000;
  v29[3] = __Block_byref_object_copy__9;
  v29[4] = __Block_byref_object_dispose__9;
  v30 = 0;
  dispatch_group_enter(v5);
  v1FeatureAvailabilityManager = self->_v1FeatureAvailabilityManager;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __90__HDHRElectrocardiogramRecordingFeatureAvailabilityManager_resetOnboardingWithCompletion___block_invoke;
  v25[3] = &unk_278661000;
  v27 = v31;
  v28 = v29;
  v7 = v5;
  v26 = v7;
  [(HDFeatureAvailabilityExtension *)v1FeatureAvailabilityManager resetOnboardingWithCompletion:v25];
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x2020000000;
  v24 = 0;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x3032000000;
  v21[3] = __Block_byref_object_copy__9;
  v21[4] = __Block_byref_object_dispose__9;
  v22 = 0;
  dispatch_group_enter(v7);
  v2FeatureAvailabilityManager = self->_v2FeatureAvailabilityManager;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __90__HDHRElectrocardiogramRecordingFeatureAvailabilityManager_resetOnboardingWithCompletion___block_invoke_2;
  v17[3] = &unk_278661000;
  v19 = v23;
  v20 = v21;
  v9 = v7;
  v18 = v9;
  [(HDFeatureAvailabilityExtension *)v2FeatureAvailabilityManager resetOnboardingWithCompletion:v17];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __90__HDHRElectrocardiogramRecordingFeatureAvailabilityManager_resetOnboardingWithCompletion___block_invoke_3;
  block[3] = &unk_278660FD8;
  v12 = completionCopy;
  v13 = v31;
  v14 = v23;
  v15 = v29;
  v16 = v21;
  v10 = completionCopy;
  dispatch_group_notify(v9, MEMORY[0x277D85CD0], block);

  _Block_object_dispose(v21, 8);
  _Block_object_dispose(v23, 8);

  _Block_object_dispose(v29, 8);
  _Block_object_dispose(v31, 8);
}

void __90__HDHRElectrocardiogramRecordingFeatureAvailabilityManager_resetOnboardingWithCompletion___block_invoke(uint64_t a1, char a2, id obj)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), obj);
  v5 = obj;
  dispatch_group_leave(*(a1 + 32));
}

void __90__HDHRElectrocardiogramRecordingFeatureAvailabilityManager_resetOnboardingWithCompletion___block_invoke_2(uint64_t a1, char a2, id obj)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), obj);
  v5 = obj;
  dispatch_group_leave(*(a1 + 32));
}

uint64_t __90__HDHRElectrocardiogramRecordingFeatureAvailabilityManager_resetOnboardingWithCompletion___block_invoke_3(void *a1)
{
  if (*(*(a1[5] + 8) + 24) == 1 && *(*(a1[6] + 8) + 24) == 1)
  {
    return (*(a1[4] + 16))();
  }

  v2 = *(*(a1[7] + 8) + 40);
  if (!v2)
  {
    v2 = *(*(a1[8] + 8) + 40);
  }

  return (*(a1[4] + 16))(a1[4], 0, v2);
}

- (void)featureAvailabilityProvidingDidUpdateOnboardingCompletion:(id)completion
{
  v14 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC2D8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_229486000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Notifying observer for didUpdateOnboardingCompletion", buf, 0xCu);
  }

  v11 = 0;
  v5 = [(HDHRElectrocardiogramRecordingFeatureAvailabilityManager *)self _requestCacheUpdateWorkWithError:&v11];
  v6 = v11;
  if (!v5)
  {
    _HKInitializeLogging();
    v7 = HKLogHeartRhythmCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [HDHRElectrocardiogramRecordingFeatureAvailabilityManager featureAvailabilityProvidingDidUpdateOnboardingCompletion:];
    }
  }

  observers = self->_observers;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __118__HDHRElectrocardiogramRecordingFeatureAvailabilityManager_featureAvailabilityProvidingDidUpdateOnboardingCompletion___block_invoke;
  v10[3] = &unk_27865FD18;
  v10[4] = self;
  [(HKFeatureAvailabilityProvidingObserver *)observers notifyObservers:v10];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)featureAvailabilityProvidingDidUpdateSettings:(id)settings
{
  v10 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC2D8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_229486000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Notifying observer for didUpdateSettings", buf, 0xCu);
  }

  observers = self->_observers;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __106__HDHRElectrocardiogramRecordingFeatureAvailabilityManager_featureAvailabilityProvidingDidUpdateSettings___block_invoke;
  v7[3] = &unk_27865FD18;
  v7[4] = self;
  [(HKFeatureAvailabilityProvidingObserver *)observers notifyObservers:v7];
  v6 = *MEMORY[0x277D85DE8];
}

void __106__HDHRElectrocardiogramRecordingFeatureAvailabilityManager_featureAvailabilityProvidingDidUpdateSettings___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 featureAvailabilityProvidingDidUpdateSettings:*(a1 + 32)];
  }
}

- (void)featureAvailabilityExtensionDidUpdatePairedDeviceCapability:(id)capability
{
  v14 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC2D8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_229486000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Notifying observer for didUpdatePairedDeviceCapability", buf, 0xCu);
  }

  v11 = 0;
  v5 = [(HDHRElectrocardiogramRecordingFeatureAvailabilityManager *)self _requestCacheUpdateWorkWithError:&v11];
  v6 = v11;
  if (!v5)
  {
    _HKInitializeLogging();
    v7 = HKLogHeartRhythmCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [HDHRElectrocardiogramRecordingFeatureAvailabilityManager featureAvailabilityExtensionDidUpdatePairedDeviceCapability:];
    }
  }

  observers = self->_observers;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __120__HDHRElectrocardiogramRecordingFeatureAvailabilityManager_featureAvailabilityExtensionDidUpdatePairedDeviceCapability___block_invoke;
  v10[3] = &unk_27865FD18;
  v10[4] = self;
  [(HKFeatureAvailabilityProvidingObserver *)observers notifyObservers:v10];

  v9 = *MEMORY[0x277D85DE8];
}

void __120__HDHRElectrocardiogramRecordingFeatureAvailabilityManager_featureAvailabilityExtensionDidUpdatePairedDeviceCapability___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 featureAvailabilityExtensionDidUpdatePairedDeviceCapability:*(a1 + 32)];
  }
}

- (void)featureAvailabilityExtensionDidUpdateRegionAvailability:(id)availability
{
  v14 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC2D8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_229486000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Notifying observer for didUpdateRegionAvailability", buf, 0xCu);
  }

  v11 = 0;
  v5 = [(HDHRElectrocardiogramRecordingFeatureAvailabilityManager *)self _requestCacheUpdateWorkWithError:&v11];
  v6 = v11;
  if (!v5)
  {
    _HKInitializeLogging();
    v7 = HKLogHeartRhythmCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [HDHRElectrocardiogramRecordingFeatureAvailabilityManager featureAvailabilityExtensionDidUpdateRegionAvailability:];
    }
  }

  observers = self->_observers;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __116__HDHRElectrocardiogramRecordingFeatureAvailabilityManager_featureAvailabilityExtensionDidUpdateRegionAvailability___block_invoke;
  v10[3] = &unk_27865FD18;
  v10[4] = self;
  [(HKFeatureAvailabilityProvidingObserver *)observers notifyObservers:v10];

  v9 = *MEMORY[0x277D85DE8];
}

void __116__HDHRElectrocardiogramRecordingFeatureAvailabilityManager_featureAvailabilityExtensionDidUpdateRegionAvailability___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 conformsToProtocol:&unk_283CDA550])
  {
    [v3 featureAvailabilityExtensionDidUpdateRegionAvailability:*(a1 + 32)];
  }
}

- (void)featureAvailabilityExtensionOnboardingCompletionDataDidBecomeAvailable:(id)available
{
  v14 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_observerQueue);
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC2D8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_229486000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Notifying observer for onboardingCompletionDataDidBecomeAvailable", buf, 0xCu);
  }

  if (self->_needsOnboardingVersionCacheUpdate)
  {
    v11 = 0;
    v5 = [(HDHRElectrocardiogramRecordingFeatureAvailabilityManager *)self _requestCacheUpdateWorkWithError:&v11];
    v6 = v11;
    if (v5)
    {
      self->_needsOnboardingVersionCacheUpdate = 0;
    }

    else
    {
      _HKInitializeLogging();
      v7 = HKLogHeartRhythmCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [HDHRElectrocardiogramRecordingFeatureAvailabilityManager featureAvailabilityExtensionOnboardingCompletionDataDidBecomeAvailable:];
      }
    }
  }

  observers = self->_observers;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __131__HDHRElectrocardiogramRecordingFeatureAvailabilityManager_featureAvailabilityExtensionOnboardingCompletionDataDidBecomeAvailable___block_invoke;
  v10[3] = &unk_27865FD18;
  v10[4] = self;
  [(HKFeatureAvailabilityProvidingObserver *)observers notifyObservers:v10];
  v9 = *MEMORY[0x277D85DE8];
}

void __131__HDHRElectrocardiogramRecordingFeatureAvailabilityManager_featureAvailabilityExtensionOnboardingCompletionDataDidBecomeAvailable___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 conformsToProtocol:&unk_283CDA550])
  {
    [v3 featureAvailabilityExtensionOnboardingCompletionDataDidBecomeAvailable:*(a1 + 32)];
  }
}

- (void)_setV1CurrentOnboardingVersionCompletedForCountryCode:(id)code countryCodeProvenance:(int64_t)provenance date:(id)date settings:(id)settings completion:(id)completion
{
  completionCopy = completion;
  settingsCopy = settings;
  dateCopy = date;
  codeCopy = code;
  v1FeatureAvailabilityManager = [(HDHRElectrocardiogramRecordingFeatureAvailabilityManager *)self v1FeatureAvailabilityManager];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __161__HDHRElectrocardiogramRecordingFeatureAvailabilityManager__setV1CurrentOnboardingVersionCompletedForCountryCode_countryCodeProvenance_date_settings_completion___block_invoke;
  v18[3] = &unk_278661168;
  v19 = completionCopy;
  v17 = completionCopy;
  [v1FeatureAvailabilityManager setCurrentOnboardingVersionCompletedForCountryCode:codeCopy countryCodeProvenance:provenance date:dateCopy settings:settingsCopy completion:v18];
}

uint64_t __161__HDHRElectrocardiogramRecordingFeatureAvailabilityManager__setV1CurrentOnboardingVersionCompletedForCountryCode_countryCodeProvenance_date_settings_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    a2 = 1;
  }

  return (*(v2 + 16))(v2, a2);
}

- (void)performWorkForOperation:(id)operation profile:(id)profile databaseAccessibilityAssertion:(id)assertion completion:(id)completion
{
  v35 = *MEMORY[0x277D85DE8];
  operationCopy = operation;
  completionCopy = completion;
  v30 = 0;
  v10 = [(HDHRElectrocardiogramRecordingFeatureAvailabilityManager *)self featureOnboardingRecordWithError:&v30];
  v11 = v30;
  if (v10 && ([v10 onboardingCompletion], v12 = objc_claimAutoreleasedReturnValue(), v12, v12))
  {
    if ([v10 onboardingState] == 1)
    {
      goto LABEL_20;
    }

    v13 = *MEMORY[0x277CCBCF0];
    v14 = [(NSUserDefaults *)self->_cacheDefaults integerForKey:*MEMORY[0x277CCBCF0]];
    onboardingCompletion = [v10 onboardingCompletion];
    version = [onboardingCompletion version];

    if (v14 == version)
    {
      _HKInitializeLogging();
      v17 = *MEMORY[0x277CCC2D8];
      if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        selfCopy3 = self;
        v33 = 2048;
        v34 = v14;
        _os_log_impl(&dword_229486000, v17, OS_LOG_TYPE_DEFAULT, "[%{public}@] Current onboarding version matched cached version (%ld)", buf, 0x16u);
      }

      goto LABEL_20;
    }

    [(NSUserDefaults *)self->_cacheDefaults setInteger:version forKey:v13];
    _HKInitializeLogging();
    v24 = *MEMORY[0x277CCC2D8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy3 = self;
      v33 = 2048;
      v34 = version;
      _os_log_impl(&dword_229486000, v24, OS_LOG_TYPE_DEFAULT, "[%{public}@] Updated cached onboarding version to %ld", buf, 0x16u);
    }

    mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
    isCompanionCapable = [mEMORY[0x277CCDD30] isCompanionCapable];

    if (isCompanionCapable)
    {
      v27 = *MEMORY[0x277CCE460];
      v20 = [MEMORY[0x277CBEB98] setWithObject:v13];
      HKSynchronizeNanoPreferencesUserDefaults();
LABEL_19:
    }
  }

  else
  {
    _HKInitializeLogging();
    v18 = *MEMORY[0x277CCC2D8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy3 = self;
      _os_log_impl(&dword_229486000, v18, OS_LOG_TYPE_DEFAULT, "[%{public}@] No onboarding completions found when trying to update cached onboarding version", buf, 0xCu);
    }

    if (v11 && [v11 code] == 6)
    {
      v29 = 0;
      v19 = [operationCopy requestWorkWithPriority:2 error:&v29];
      v20 = v29;
      if ((v19 & 1) == 0)
      {
        _HKInitializeLogging();
        v21 = HKLogHeartRhythmCategory();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = objc_opt_class();
          *buf = 138543618;
          selfCopy3 = v22;
          v33 = 2114;
          v34 = v20;
          v23 = v22;
          _os_log_impl(&dword_229486000, v21, OS_LOG_TYPE_DEFAULT, "[%{public}@] Error re-requesting work due to database inaccessibility: %{public}@", buf, 0x16u);
        }
      }

      goto LABEL_19;
    }
  }

LABEL_20:
  completionCopy[2](completionCopy);

  v28 = *MEMORY[0x277D85DE8];
}

- (void)initWithV1FeatureAvailabilityManager:v2FeatureAvailabilityManager:cacheDefaults:protectedDataOperationForCaching:.cold.1()
{
  OUTLINED_FUNCTION_4();
  v10 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  OUTLINED_FUNCTION_0_15();
  v1 = v0;
  OUTLINED_FUNCTION_1_7(&dword_229486000, v2, v3, "[%{public}@] Error requesting work for init: %{public}@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)featureOnboardingRecordWithError:.cold.1()
{
  OUTLINED_FUNCTION_4();
  v13 = *MEMORY[0x277D85DE8];
  v2 = v1;
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_15();
  v4 = v3;
  OUTLINED_FUNCTION_3(&dword_229486000, v5, v6, "[%{public}@] Failed to retrieve onboarding record for ECG1: %{public}@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)featureOnboardingRecordWithError:.cold.2()
{
  OUTLINED_FUNCTION_4();
  v13 = *MEMORY[0x277D85DE8];
  v2 = v1;
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_15();
  v4 = v3;
  OUTLINED_FUNCTION_3(&dword_229486000, v5, v6, "[%{public}@] Failed to retrieve onboarding record for ECG2: %{public}@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)onboardingEligibilityForCountryCode:error:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_4(&dword_229486000, v0, v1, "Error checking onboarded country code supported state for ECG 2.0, returning supported state for 1.0: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)onboardingEligibilityForCountryCode:error:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_4(&dword_229486000, v0, v1, "Error checking onboarded country code supported state for ECG 1.0, returning supported state for 2.0: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __158__HDHRElectrocardiogramRecordingFeatureAvailabilityManager_setCurrentOnboardingVersionCompletedForCountryCode_countryCodeProvenance_date_settings_completion___block_invoke_cold_1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_15();
  v4 = v0;
  _os_log_error_impl(&dword_229486000, v1, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to complete ECG 2.0 onboarding with error: %{public}@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)saveOnboardingCompletion:(void *)a1 settings:completion:.cold.1(void *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = a1;
  objc_opt_class();
  OUTLINED_FUNCTION_2_0();
  v3 = v2;
  _os_log_error_impl(&dword_229486000, v1, OS_LOG_TYPE_ERROR, "[%{public}@] Saving HKOnboardingCompletion directly is not supported for ECG's combined feature identifier", v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

- (void)setFeatureSettingData:forKey:completion:.cold.1()
{
  OUTLINED_FUNCTION_4();
  v13 = *MEMORY[0x277D85DE8];
  v2 = v1;
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_15();
  v4 = v3;
  OUTLINED_FUNCTION_3(&dword_229486000, v5, v6, "[%{public}@] Unknown data setting for ECG: %{public}@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)setFeatureSettingString:forKey:completion:.cold.1()
{
  OUTLINED_FUNCTION_4();
  v13 = *MEMORY[0x277D85DE8];
  v2 = v1;
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_15();
  v4 = v3;
  OUTLINED_FUNCTION_3(&dword_229486000, v5, v6, "[%{public}@] Unknown string setting for ECG: %{public}@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)setFeatureSettingNumber:forKey:completion:.cold.1()
{
  OUTLINED_FUNCTION_4();
  v13 = *MEMORY[0x277D85DE8];
  v2 = v1;
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_15();
  v4 = v3;
  OUTLINED_FUNCTION_3(&dword_229486000, v5, v6, "[%{public}@] Unknown number setting for ECG: %{public}@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)removeFeatureSettingValueForKey:completion:.cold.1()
{
  OUTLINED_FUNCTION_4();
  v13 = *MEMORY[0x277D85DE8];
  v2 = v1;
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_15();
  v4 = v3;
  OUTLINED_FUNCTION_3(&dword_229486000, v5, v6, "[%{public}@] Unknown setting for ECG: %{public}@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)featureAvailabilityProvidingDidUpdateOnboardingCompletion:.cold.1()
{
  OUTLINED_FUNCTION_4();
  v10 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  OUTLINED_FUNCTION_0_15();
  v1 = v0;
  OUTLINED_FUNCTION_1_7(&dword_229486000, v2, v3, "[%{public}@] Error requesting work for onboarding completion update: %{public}@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)featureAvailabilityExtensionDidUpdatePairedDeviceCapability:.cold.1()
{
  OUTLINED_FUNCTION_4();
  v10 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  OUTLINED_FUNCTION_0_15();
  v1 = v0;
  OUTLINED_FUNCTION_1_7(&dword_229486000, v2, v3, "[%{public}@] Error requesting work for paired device capability update: %{public}@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)featureAvailabilityExtensionDidUpdateRegionAvailability:.cold.1()
{
  OUTLINED_FUNCTION_4();
  v10 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  OUTLINED_FUNCTION_0_15();
  v1 = v0;
  OUTLINED_FUNCTION_1_7(&dword_229486000, v2, v3, "[%{public}@] Error requesting work for region availability update: %{public}@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)featureAvailabilityExtensionOnboardingCompletionDataDidBecomeAvailable:.cold.1()
{
  OUTLINED_FUNCTION_4();
  v10 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  OUTLINED_FUNCTION_0_15();
  v1 = v0;
  OUTLINED_FUNCTION_1_7(&dword_229486000, v2, v3, "[%{public}@] Error requesting work for database available: %{public}@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

@end