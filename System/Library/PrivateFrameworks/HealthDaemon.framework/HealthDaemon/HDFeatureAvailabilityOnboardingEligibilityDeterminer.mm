@interface HDFeatureAvailabilityOnboardingEligibilityDeterminer
- (BOOL)_isActiveRemoteDevicePresent;
- (HDFeatureAvailabilityOnboardingEligibilityDeterminer)initWithFeatureIdentifier:(id)identifier currentOnboardingVersion:(int64_t)version pairedDeviceCapability:(id)capability pairedDeviceCapabilityProvider:(id)provider regionAvailabilityProvider:(id)availabilityProvider disableAndExpiryProvider:(id)expiryProvider loggingCategory:(id)category;
- (id)_onboardingEligibilitiesForOnboardingCompletions:(id)completions onboardingEligibilityRetrievalBlock:(id)block error:(id *)error;
- (id)_onboardingEligibilityForRegionEligibility:(id)eligibility rescindedStatus:(id)status isCapabilitySupported:(id)supported isActiveRemoteDevicePresent:(id)present;
- (id)onboardingEligibilitiesForDevice:(id)device onboardingCompletions:(id)completions error:(id *)error;
- (id)onboardingEligibilitiesForOnboardingCompletions:(id)completions error:(id *)error;
- (id)onboardingEligibilityForCountryCode:(id)code error:(id *)error;
- (id)onboardingEligibilityForDevice:(id)device countryCode:(id)code error:(id *)error;
@end

@implementation HDFeatureAvailabilityOnboardingEligibilityDeterminer

- (HDFeatureAvailabilityOnboardingEligibilityDeterminer)initWithFeatureIdentifier:(id)identifier currentOnboardingVersion:(int64_t)version pairedDeviceCapability:(id)capability pairedDeviceCapabilityProvider:(id)provider regionAvailabilityProvider:(id)availabilityProvider disableAndExpiryProvider:(id)expiryProvider loggingCategory:(id)category
{
  identifierCopy = identifier;
  capabilityCopy = capability;
  providerCopy = provider;
  availabilityProviderCopy = availabilityProvider;
  expiryProviderCopy = expiryProvider;
  categoryCopy = category;
  v25.receiver = self;
  v25.super_class = HDFeatureAvailabilityOnboardingEligibilityDeterminer;
  v18 = [(HDFeatureAvailabilityOnboardingEligibilityDeterminer *)&v25 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_featureIdentifier, identifier);
    v19->_currentOnboardingVersion = version;
    objc_storeStrong(&v19->_pairedDeviceCapability, capability);
    objc_storeStrong(&v19->_pairedDeviceCapabilityProvider, provider);
    objc_storeStrong(&v19->_regionAvailabilityProvider, availabilityProvider);
    objc_storeStrong(&v19->_disableAndExpiryProvider, expiryProvider);
    objc_storeStrong(&v19->_loggingCategory, category);
  }

  return v19;
}

- (id)onboardingEligibilityForCountryCode:(id)code error:(id *)error
{
  regionAvailabilityProvider = self->_regionAvailabilityProvider;
  codeCopy = code;
  v8 = [(HDRegionAvailabilityProviding *)regionAvailabilityProvider onboardingEligibilityForCountryCode:codeCopy];
  disableAndExpiryProvider = self->_disableAndExpiryProvider;
  v24 = 0;
  v10 = [(HDFeatureDisableAndExpiryProviding *)disableAndExpiryProvider rescindedStatusOnActivePairedDeviceForCountryCode:codeCopy error:&v24];

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

    if (error)
    {
      v18 = v17;
      *error = v17;
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
        if (error)
        {
          v22 = v17;
          *error = v17;
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

- (id)onboardingEligibilityForDevice:(id)device countryCode:(id)code error:(id *)error
{
  deviceCopy = device;
  regionAvailabilityProvider = self->_regionAvailabilityProvider;
  codeCopy = code;
  v11 = [(HDRegionAvailabilityProviding *)regionAvailabilityProvider onboardingEligibilityForCountryCode:codeCopy device:deviceCopy];
  disableAndExpiryProvider = self->_disableAndExpiryProvider;
  v23 = 0;
  v13 = [(HDFeatureDisableAndExpiryProviding *)disableAndExpiryProvider rescindedStatusForCountryCode:codeCopy device:deviceCopy error:&v23];

  v14 = v23;
  v15 = v14;
  if (v13)
  {
    pairedDeviceCapabilityProvider = self->_pairedDeviceCapabilityProvider;
    if (pairedDeviceCapabilityProvider && self->_pairedDeviceCapability)
    {
      if (deviceCopy)
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
    if (error)
    {
      v21 = v17;
      *error = v17;
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

- (id)_onboardingEligibilityForRegionEligibility:(id)eligibility rescindedStatus:(id)status isCapabilitySupported:(id)supported isActiveRemoteDevicePresent:(id)present
{
  supportedCopy = supported;
  presentCopy = present;
  statusCopy = status;
  eligibilityCopy = eligibility;
  ineligibilityReasons = [eligibilityCopy ineligibilityReasons];
  integerValue = [statusCopy integerValue];

  v16 = ineligibilityReasons | 0x80;
  if (integerValue != 2)
  {
    v16 = ineligibilityReasons;
  }

  if (integerValue == 1)
  {
    v17 = ineligibilityReasons | 0x40;
  }

  else
  {
    v17 = v16;
  }

  if (presentCopy && ![presentCopy BOOLValue])
  {
    v17 |= 2uLL;
  }

  if (supportedCopy && ![supportedCopy BOOLValue])
  {
    v17 |= 4uLL;
  }

  v18 = objc_alloc(MEMORY[0x277CCD3F8]);
  countryAvailabilityVersion = [eligibilityCopy countryAvailabilityVersion];

  v20 = [v18 initWithIneligibilityReasons:v17 countryAvailabilityVersion:countryAvailabilityVersion];
  v21 = [v20 eligibilityRespectingOverridesForFeatureIdentifier:self->_featureIdentifier];

  return v21;
}

- (id)onboardingEligibilitiesForOnboardingCompletions:(id)completions error:(id *)error
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __110__HDFeatureAvailabilityOnboardingEligibilityDeterminer_onboardingEligibilitiesForOnboardingCompletions_error___block_invoke;
  v6[3] = &unk_2786285C8;
  v6[4] = self;
  v4 = [(HDFeatureAvailabilityOnboardingEligibilityDeterminer *)self _onboardingEligibilitiesForOnboardingCompletions:completions onboardingEligibilityRetrievalBlock:v6 error:error];

  return v4;
}

- (id)onboardingEligibilitiesForDevice:(id)device onboardingCompletions:(id)completions error:(id *)error
{
  deviceCopy = device;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __117__HDFeatureAvailabilityOnboardingEligibilityDeterminer_onboardingEligibilitiesForDevice_onboardingCompletions_error___block_invoke;
  v12[3] = &unk_2786285F0;
  v12[4] = self;
  v13 = deviceCopy;
  v9 = deviceCopy;
  v10 = [(HDFeatureAvailabilityOnboardingEligibilityDeterminer *)self _onboardingEligibilitiesForOnboardingCompletions:completions onboardingEligibilityRetrievalBlock:v12 error:error];

  return v10;
}

- (id)_onboardingEligibilitiesForOnboardingCompletions:(id)completions onboardingEligibilityRetrievalBlock:(id)block error:(id *)error
{
  v42 = *MEMORY[0x277D85DE8];
  completionsCopy = completions;
  blockCopy = block;
  if ([completionsCopy count])
  {
    errorCopy = error;
    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    obj = completionsCopy;
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

        countryCode2 = *(*(&v33 + 1) + 8 * v13);
        if ([countryCode2 version] >= self->_currentOnboardingVersion)
        {
          v16 = v9;
          countryCode = [countryCode2 countryCode];
          v32 = 0;
          v18 = blockCopy[2](blockCopy, countryCode, &v32);
          v19 = v32;

          if (!v18)
          {
            _HKInitializeLogging();
            loggingCategory = self->_loggingCategory;
            v9 = v16;
            if (os_log_type_enabled(loggingCategory, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543618;
              selfCopy3 = self;
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
            countryCode2 = [countryCode2 countryCode];
            v24 = [v25 hk_error:100 format:{@"Unexpected failure when evaluating eligibility for %@", countryCode2}];
            if (v24)
            {
LABEL_23:
              if (errorCopy)
              {
                v26 = v24;
                *errorCopy = v24;
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

          v20 = [objc_alloc(MEMORY[0x277CCD3F0]) initWithOnboardingCompletion:countryCode2 onboardingEligibility:v18];
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
            selfCopy3 = self;
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
      selfCopy3 = self;
      _os_log_impl(&dword_228986000, v22, OS_LOG_TYPE_DEFAULT, "[%{public}@] No onboarding completion found", buf, 0xCu);
    }

    v21 = MEMORY[0x277CBEBF8];
  }

  v27 = *MEMORY[0x277D85DE8];

  return v21;
}

- (BOOL)_isActiveRemoteDevicePresent
{
  activePairedDevice = [(HDPairedDeviceCapabilityProviding *)self->_pairedDeviceCapabilityProvider activePairedDevice];
  v3 = activePairedDevice != 0;

  return v3;
}

@end