@interface HDFeatureAvailabilityOnboardingEligibilityDeterminer
- (BOOL)_isActiveRemoteDevicePresent;
- (HDFeatureAvailabilityOnboardingEligibilityDeterminer)initWithFeatureIdentifier:(id)a3 currentOnboardingVersion:(int64_t)a4 pairedDeviceCapability:(id)a5 pairedDeviceCapabilityProvider:(id)a6 regionAvailabilityProvider:(id)a7 disableAndExpiryProvider:(id)a8 loggingCategory:(id)a9;
- (id)_onboardingEligibilitiesForOnboardingCompletions:(id)a3 onboardingEligibilityRetrievalBlock:(id)a4 error:(id *)a5;
- (id)_onboardingEligibilityForRegionEligibility:(id)a3 rescindedStatus:(id)a4 isCapabilitySupported:(id)a5 isActiveRemoteDevicePresent:(id)a6;
- (id)onboardingEligibilitiesForDevice:(id)a3 onboardingCompletions:(id)a4 error:(id *)a5;
- (id)onboardingEligibilitiesForOnboardingCompletions:(id)a3 error:(id *)a4;
- (id)onboardingEligibilityForCountryCode:(id)a3 error:(id *)a4;
- (id)onboardingEligibilityForDevice:(id)a3 countryCode:(id)a4 error:(id *)a5;
@end

@implementation HDFeatureAvailabilityOnboardingEligibilityDeterminer

- (HDFeatureAvailabilityOnboardingEligibilityDeterminer)initWithFeatureIdentifier:(id)a3 currentOnboardingVersion:(int64_t)a4 pairedDeviceCapability:(id)a5 pairedDeviceCapabilityProvider:(id)a6 regionAvailabilityProvider:(id)a7 disableAndExpiryProvider:(id)a8 loggingCategory:(id)a9
{
  v24 = a3;
  v23 = a5;
  v22 = a6;
  v15 = a7;
  v16 = a8;
  v17 = a9;
  v25.receiver = self;
  v25.super_class = HDFeatureAvailabilityOnboardingEligibilityDeterminer;
  v18 = [(HDFeatureAvailabilityOnboardingEligibilityDeterminer *)&v25 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_featureIdentifier, a3);
    v19->_currentOnboardingVersion = a4;
    objc_storeStrong(&v19->_pairedDeviceCapability, a5);
    objc_storeStrong(&v19->_pairedDeviceCapabilityProvider, a6);
    objc_storeStrong(&v19->_regionAvailabilityProvider, a7);
    objc_storeStrong(&v19->_disableAndExpiryProvider, a8);
    objc_storeStrong(&v19->_loggingCategory, a9);
  }

  return v19;
}

- (id)onboardingEligibilityForCountryCode:(id)a3 error:(id *)a4
{
  regionAvailabilityProvider = self->_regionAvailabilityProvider;
  v7 = a3;
  v8 = [(HDRegionAvailabilityProviding *)regionAvailabilityProvider onboardingEligibilityForCountryCode:v7];
  disableAndExpiryProvider = self->_disableAndExpiryProvider;
  v24 = 0;
  v10 = [(HDFeatureDisableAndExpiryProviding *)disableAndExpiryProvider rescindedStatusOnActivePairedDeviceForCountryCode:v7 error:&v24];

  v11 = v24;
  v12 = v11;
  if (!v10)
  {
    if (v11)
    {
      v17 = v11;
    }

    else
    {
      v17 = [MEMORY[0x277CCA9B8] hk_error:100 format:{@"Failure when determining rescinded status, no error given"}];
      if (!v17)
      {
        goto LABEL_28;
      }
    }

    if (a4)
    {
      v18 = v17;
      *a4 = v17;
    }

    else
    {
      _HKLogDroppedError();
    }

    v19 = 0;
    v20 = 0;
    if (v12)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  pairedDeviceCapabilityProvider = self->_pairedDeviceCapabilityProvider;
  if (pairedDeviceCapabilityProvider)
  {
    pairedDeviceCapability = self->_pairedDeviceCapability;
    if (pairedDeviceCapability)
    {
      v23 = v12;
      v15 = [(HDPairedDeviceCapabilityProviding *)pairedDeviceCapabilityProvider isCapabilitySupportedOnActivePairedDevice:pairedDeviceCapability error:&v23];
      v16 = v23;

      if (v15)
      {
        if ([v15 BOOLValue])
        {
          v17 = MEMORY[0x277CBEC38];
        }

        else
        {
          v17 = [MEMORY[0x277CCABB0] numberWithBool:{-[HDFeatureAvailabilityOnboardingEligibilityDeterminer _isActiveRemoteDevicePresent](self, "_isActiveRemoteDevicePresent")}];
        }

        v12 = v16;
        goto LABEL_20;
      }

      if (v16)
      {
        v17 = v16;
        goto LABEL_26;
      }

      v17 = [MEMORY[0x277CCA9B8] hk_error:100 format:{@"Failure when determining device capability support, no error given"}];
      if (v17)
      {
LABEL_26:
        if (a4)
        {
          v22 = v17;
          *a4 = v17;
        }

        else
        {
          _HKLogDroppedError();
        }

        v19 = 0;
        v20 = 0;
        v12 = v16;
        if (v16)
        {
          goto LABEL_22;
        }

        goto LABEL_21;
      }

LABEL_28:
      v19 = 0;
      v20 = 0;
      goto LABEL_21;
    }
  }

  v17 = 0;
  v15 = 0;
LABEL_20:
  v20 = [(HDFeatureAvailabilityOnboardingEligibilityDeterminer *)self _onboardingEligibilityForRegionEligibility:v8 rescindedStatus:v10 isCapabilitySupported:v15 isActiveRemoteDevicePresent:v17];

  v19 = v12;
LABEL_21:

  v12 = v19;
LABEL_22:

  return v20;
}

- (id)onboardingEligibilityForDevice:(id)a3 countryCode:(id)a4 error:(id *)a5
{
  v8 = a3;
  regionAvailabilityProvider = self->_regionAvailabilityProvider;
  v10 = a4;
  v11 = [(HDRegionAvailabilityProviding *)regionAvailabilityProvider onboardingEligibilityForCountryCode:v10 device:v8];
  disableAndExpiryProvider = self->_disableAndExpiryProvider;
  v23 = 0;
  v13 = [(HDFeatureDisableAndExpiryProviding *)disableAndExpiryProvider rescindedStatusForCountryCode:v10 device:v8 error:&v23];

  v14 = v23;
  v15 = v14;
  if (v13)
  {
    pairedDeviceCapabilityProvider = self->_pairedDeviceCapabilityProvider;
    if (pairedDeviceCapabilityProvider && self->_pairedDeviceCapability)
    {
      if (v8)
      {
        v17 = [MEMORY[0x277CCABB0] numberWithBool:{-[HDPairedDeviceCapabilityProviding isCapabilitySupported:onDevice:](pairedDeviceCapabilityProvider, "isCapabilitySupported:onDevice:")}];
        v18 = MEMORY[0x277CBEC38];
      }

      else
      {
        v18 = MEMORY[0x277CBEC28];
        v17 = MEMORY[0x277CBEC28];
      }
    }

    else
    {
      v18 = 0;
      v17 = 0;
    }

    v19 = [(HDFeatureAvailabilityOnboardingEligibilityDeterminer *)self _onboardingEligibilityForRegionEligibility:v11 rescindedStatus:v13 isCapabilitySupported:v17 isActiveRemoteDevicePresent:v18];
    goto LABEL_8;
  }

  if (v14)
  {
    v17 = v14;
    goto LABEL_12;
  }

  v17 = [MEMORY[0x277CCA9B8] hk_error:100 format:{@"Failure when determining rescinded status, no error given"}];
  if (v17)
  {
LABEL_12:
    if (a5)
    {
      v21 = v17;
      *a5 = v17;
    }

    else
    {
      _HKLogDroppedError();
    }

    v19 = 0;
    v20 = 0;
    if (v15)
    {
      goto LABEL_16;
    }

    goto LABEL_8;
  }

  v19 = 0;
LABEL_8:

  v20 = v19;
LABEL_16:

  return v20;
}

- (id)_onboardingEligibilityForRegionEligibility:(id)a3 rescindedStatus:(id)a4 isCapabilitySupported:(id)a5 isActiveRemoteDevicePresent:(id)a6
{
  v10 = a5;
  v11 = a6;
  v12 = a4;
  v13 = a3;
  v14 = [v13 ineligibilityReasons];
  v15 = [v12 integerValue];

  v16 = v14 | 0x80;
  if (v15 != 2)
  {
    v16 = v14;
  }

  if (v15 == 1)
  {
    v17 = v14 | 0x40;
  }

  else
  {
    v17 = v16;
  }

  if (v11 && ![v11 BOOLValue])
  {
    v17 |= 2uLL;
  }

  if (v10 && ![v10 BOOLValue])
  {
    v17 |= 4uLL;
  }

  v18 = objc_alloc(MEMORY[0x277CCD3F8]);
  v19 = [v13 countryAvailabilityVersion];

  v20 = [v18 initWithIneligibilityReasons:v17 countryAvailabilityVersion:v19];
  v21 = [v20 eligibilityRespectingOverridesForFeatureIdentifier:self->_featureIdentifier];

  return v21;
}

- (id)onboardingEligibilitiesForOnboardingCompletions:(id)a3 error:(id *)a4
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __110__HDFeatureAvailabilityOnboardingEligibilityDeterminer_onboardingEligibilitiesForOnboardingCompletions_error___block_invoke;
  v6[3] = &unk_2786285C8;
  v6[4] = self;
  v4 = [(HDFeatureAvailabilityOnboardingEligibilityDeterminer *)self _onboardingEligibilitiesForOnboardingCompletions:a3 onboardingEligibilityRetrievalBlock:v6 error:a4];

  return v4;
}

- (id)onboardingEligibilitiesForDevice:(id)a3 onboardingCompletions:(id)a4 error:(id *)a5
{
  v8 = a3;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __117__HDFeatureAvailabilityOnboardingEligibilityDeterminer_onboardingEligibilitiesForDevice_onboardingCompletions_error___block_invoke;
  v12[3] = &unk_2786285F0;
  v12[4] = self;
  v13 = v8;
  v9 = v8;
  v10 = [(HDFeatureAvailabilityOnboardingEligibilityDeterminer *)self _onboardingEligibilitiesForOnboardingCompletions:a4 onboardingEligibilityRetrievalBlock:v12 error:a5];

  return v10;
}

- (id)_onboardingEligibilitiesForOnboardingCompletions:(id)a3 onboardingEligibilityRetrievalBlock:(id)a4 error:(id *)a5
{
  v42 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v31 = a4;
  if ([v8 count])
  {
    v29 = a5;
    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    obj = v8;
    v10 = [obj countByEnumeratingWithState:&v33 objects:v41 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v34;
LABEL_4:
      v13 = 0;
      while (1)
      {
        if (*v34 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v33 + 1) + 8 * v13);
        if ([v14 version] >= self->_currentOnboardingVersion)
        {
          v16 = v9;
          v17 = [v14 countryCode];
          v32 = 0;
          v18 = v31[2](v31, v17, &v32);
          v19 = v32;

          if (!v18)
          {
            _HKInitializeLogging();
            loggingCategory = self->_loggingCategory;
            v9 = v16;
            if (os_log_type_enabled(loggingCategory, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543618;
              v38 = self;
              v39 = 2114;
              v40 = v19;
              _os_log_error_impl(&dword_228986000, loggingCategory, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to determine onboarding eligibility: %{public}@", buf, 0x16u);
            }

            if (v19)
            {
              v24 = v19;
              goto LABEL_23;
            }

            v25 = MEMORY[0x277CCA9B8];
            v14 = [v14 countryCode];
            v24 = [v25 hk_error:100 format:{@"Unexpected failure when evaluating eligibility for %@", v14}];
            if (v24)
            {
LABEL_23:
              if (v29)
              {
                v26 = v24;
                *v29 = v24;
              }

              else
              {
                _HKLogDroppedError();
              }

              if (!v19)
              {
                goto LABEL_27;
              }
            }

            else
            {
LABEL_27:
            }

            v21 = 0;
            goto LABEL_29;
          }

          v20 = [objc_alloc(MEMORY[0x277CCD3F0]) initWithOnboardingCompletion:v14 onboardingEligibility:v18];
          v9 = v16;
          [v16 addObject:v20];
        }

        else
        {
          _HKInitializeLogging();
          v15 = self->_loggingCategory;
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v38 = self;
            _os_log_impl(&dword_228986000, v15, OS_LOG_TYPE_DEFAULT, "[%{public}@] Onboarding completion found with older version than current", buf, 0xCu);
          }
        }

        if (v11 == ++v13)
        {
          v11 = [obj countByEnumeratingWithState:&v33 objects:v41 count:16];
          if (v11)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    v21 = v9;
LABEL_29:
  }

  else
  {
    _HKInitializeLogging();
    v22 = self->_loggingCategory;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v38 = self;
      _os_log_impl(&dword_228986000, v22, OS_LOG_TYPE_DEFAULT, "[%{public}@] No onboarding completion found", buf, 0xCu);
    }

    v21 = MEMORY[0x277CBEBF8];
  }

  v27 = *MEMORY[0x277D85DE8];

  return v21;
}

- (BOOL)_isActiveRemoteDevicePresent
{
  v2 = [(HDPairedDeviceCapabilityProviding *)self->_pairedDeviceCapabilityProvider activePairedDevice];
  v3 = v2 != 0;

  return v3;
}

@end