@interface PKPaymentWebServiceConfiguration
- (BOOL)AMPNonDefaultBehaviourDisabledForRegion:(id)a3;
- (BOOL)_lock_supportedForOSVersion:(id)a3 inRegionDictionary:(id)a4 deviceClass:(id)a5 platform:(id)a6;
- (BOOL)accountServiceEnabledForRegion:(id)a3;
- (BOOL)applyServiceEnabledForRegion:(id)a3;
- (BOOL)browseProvisioningBankAppsEnabledForRegion:(id)a3;
- (BOOL)buddyManualProvisioningEnabledForRegion:(id)a3;
- (BOOL)buddyProvisioningEnabledForRegion:(id)a3;
- (BOOL)cameraFirstProvisioningEnabledForRegion:(id)a3;
- (BOOL)cameraProvisioningEnabledForRegion:(id)a3;
- (BOOL)deviceCheckInDisabledForRegion:(id)a3;
- (BOOL)hasFeatureRequiringRegistrationInRegion:(id)a3 osVersion:(id)a4 deviceClass:(id)a5;
- (BOOL)isEqual:(id)a3;
- (BOOL)manualProvisioningEnabledForRegion:(id)a3;
- (BOOL)paymentTransactionIconsEnabledForRegion:(id)a3;
- (BOOL)peerPaymentEnabledForRegion:(id)a3;
- (BOOL)provisioningProximityVerificationInSetupAssistantEnabledForRegion:(id)a3;
- (BOOL)quickAccessForMoreRemovePassEnabled;
- (BOOL)regionHasProvisioningEnablementPercentage:(id)a3;
- (BOOL)remotePaymentsRequiredForVoiceover;
- (BOOL)shouldEnableTransitServiceCheckInForRegion:(id)a3;
- (BOOL)suppressCardholderNameFieldForRegion:(id)a3;
- (BOOL)tapToProvisionEnabledForRegion:(id)a3;
- (BOOL)tapToProvisionFirstProvisioningEnabledForRegion:(id)a3;
- (BOOL)userCanResetCloudStoreApplePayViewForRegion:(id)a3;
- (PKPaymentWebServiceConfiguration)init;
- (PKPaymentWebServiceConfiguration)initWithCoder:(id)a3;
- (PKPaymentWebServiceConfiguration)initWithConfiguration:(id)a3 url:(id)a4;
- (double)cashStickersAssetPrefetchTimeIntervalForRegion:(id)a3;
- (double)deviceCheckInIntervalForRegion:(id)a3;
- (double)deviceUpgradeTaskEnablementPercentageForRegion:(id)a3;
- (double)dynamicAssetPrefetchTimeIntervalForRegion:(id)a3;
- (double)howToUseWalletAssetPrefetchTimeIntervalForRegion:(id)a3;
- (double)paymentOfferCatalogVersionChangeUpdatePeriodForRegion:(id)a3;
- (double)paymentSetupFeaturesCacheUpdateIntervalForRegion:(id)a3;
- (double)provisioningEnablementPercentageForRegion:(id)a3;
- (double)sharingMessageCacheTimeToLiveInterval;
- (id)_featuresFromDictionary:(id)a3 withRegion:(id)a4 osVersion:(id)a5 deviceClass:(id)a6;
- (id)_lock_featuresForRegion:(id)a3 osVersion:(id)a4 deviceClass:(id)a5;
- (id)_lock_globalFeaturesForOSVersion:(id)a3 deviceClass:(id)a4;
- (id)_lock_region:(id)a3;
- (id)_lock_unsupported_region:(id)a3;
- (id)_regionsForOSVersion:(id)a3 deviceClass:(id)a4 platform:(id)a5 supportedRegions:(BOOL)a6;
- (id)allowedRelayServerHostsForRegion:(id)a3;
- (id)applyServiceFeaturesForRegion:(id)a3;
- (id)betaPaymentNetworkVersionsForRegion:(id)a3;
- (id)betaPaymentNetworksForRegion:(id)a3;
- (id)brokerURLForRegion:(id)a3;
- (id)contactFormatConfiguration;
- (id)credentialTypesRequiringMetadata;
- (id)defaultServerURL;
- (id)discoveryManifestURLForRegion:(id)a3;
- (id)featureWithType:(int64_t)a3 inRegion:(id)a4;
- (id)featuresForRegion:(id)a3;
- (id)heroImageManifestURLForRegion:(id)a3;
- (id)marketGeoRegionNotificationNetworkThresholdsForRegion:(id)a3;
- (id)marketGeoRegionNotificationTimeRangeForRegion:(id)a3;
- (id)marketsURL;
- (id)numberOfDaysBetweenMapsReprocessingForRegion:(id)a3;
- (id)paymentRelayServiceURLForRegion:(id)a3;
- (id)paymentServicesMerchantURLForRegion:(id)a3;
- (id)paymentServicesURLForRegion:(id)a3;
- (id)paymentSetupBrowsableProductTypesForRegion:(id)a3;
- (id)paymentSetupFeaturedNetworksForRegion:(id)a3;
- (id)primaryFeaturedNetworkForRegion:(id)a3;
- (id)relayServerHostForRegion:(id)a3;
- (id)relayServerHostsToHandleUniversalLinksForRegion:(id)a3;
- (id)stationCodeProvidersUsingLocalLookup;
- (id)supportedFeatureOfType:(int64_t)a3 inRegion:(id)a4 osVersion:(id)a5 deviceClass:(id)a6 didFailOSVersionRequirements:(BOOL *)a7;
- (id)unsupportedProvisioningExtensions;
- (id)unsupportedWebPaymentConfigurations;
- (int64_t)paymentOfferCatalogVersionForRegion:(id)a3;
- (unint64_t)autofillForegroundEligibilityCheckMaxCount:(id)a3;
- (unint64_t)notificationAuthorizationPromptPresentationCount;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPaymentWebServiceConfiguration

- (PKPaymentWebServiceConfiguration)init
{
  v7.receiver = self;
  v7.super_class = PKPaymentWebServiceConfiguration;
  v2 = [(PKPaymentWebServiceConfiguration *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = objc_alloc_init(MEMORY[0x1E695DF20]);
    configuration = v3->_configuration;
    v3->_configuration = v4;
  }

  return v3;
}

- (unint64_t)notificationAuthorizationPromptPresentationCount
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSDictionary *)self->_configuration PKIntegerForKey:@"notificationAuthorizationPromptPresentationCount"];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = 3;
  }

  os_unfair_lock_unlock(&self->_lock);
  return v4;
}

- (PKPaymentWebServiceConfiguration)initWithConfiguration:(id)a3 url:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PKPaymentWebServiceConfiguration *)self init];
  if (v8)
  {
    v9 = PKDeepCopyDeduplicatedWithHashTable(v6, 0);
    configuration = v8->_configuration;
    v8->_configuration = v9;

    v11 = [v7 copy];
    configurationURL = v8->_configurationURL;
    v8->_configurationURL = v11;
  }

  return v8;
}

- (PKPaymentWebServiceConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(PKPaymentWebServiceConfiguration *)self init];
  v6 = v5;
  if (v5)
  {
    os_unfair_lock_lock(&v5->_lock);
    v7 = [v4 decodePropertyListForKey:@"configuration"];
    v8 = PKDeepCopyDeduplicatedWithHashTable(v7, 0);
    configuration = v6->_configuration;
    v6->_configuration = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"configurationURL"];
    configurationURL = v6->_configurationURL;
    v6->_configurationURL = v10;

    os_unfair_lock_unlock(&v6->_lock);
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [v4 encodeObject:self->_configuration forKey:@"configuration"];
  [v4 encodeObject:self->_configurationURL forKey:@"configurationURL"];

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(NSDictionary *)self->_configuration isEqualToDictionary:v4[3]];

  return v5;
}

- (id)brokerURLForRegion:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(PKPaymentWebServiceConfiguration *)self _lock_region:v4];

  if (v5)
  {
    v6 = [v5 objectForKey:@"serverURL"];
    if (v6)
    {
      v7 = [MEMORY[0x1E695DFF8] URLWithString:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);

  return v7;
}

- (id)paymentServicesURLForRegion:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(PKPaymentWebServiceConfiguration *)self _lock_region:v4];

  if (v5)
  {
    v6 = [v5 objectForKey:@"PaymentServicesURL"];
    if (v6)
    {
      v7 = [MEMORY[0x1E695DFF8] URLWithString:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);

  return v7;
}

- (id)paymentRelayServiceURLForRegion:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(PKPaymentWebServiceConfiguration *)self _lock_region:v4];

  if (v5)
  {
    v6 = [v5 objectForKey:@"PaymentRelayServiceURL"];
    if (v6)
    {
      v7 = [MEMORY[0x1E695DFF8] URLWithString:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);

  return v7;
}

- (id)paymentServicesMerchantURLForRegion:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(PKPaymentWebServiceConfiguration *)self _lock_region:v4];

  if (v5)
  {
    v6 = [v5 objectForKey:@"PaymentServicesMerchantURL"];
    if (v6)
    {
      v7 = [MEMORY[0x1E695DFF8] URLWithString:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);

  return v7;
}

- (BOOL)buddyProvisioningEnabledForRegion:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(PKPaymentWebServiceConfiguration *)self _lock_region:v4];

  v6 = [v5 objectForKey:@"BuddyProvisioningEnabled"];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 BOOLValue];
  }

  else
  {
    v8 = 1;
  }

  os_unfair_lock_unlock(&self->_lock);

  return v8;
}

- (BOOL)buddyManualProvisioningEnabledForRegion:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(PKPaymentWebServiceConfiguration *)self _lock_region:v4];

  v6 = [v5 objectForKey:@"BuddyManualProvisioningEnabled"];
  v7 = [v6 BOOLValue];

  os_unfair_lock_unlock(&self->_lock);
  return v7;
}

- (BOOL)manualProvisioningEnabledForRegion:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(PKPaymentWebServiceConfiguration *)self _lock_region:v4];

  v6 = [v5 objectForKey:@"ManualProvisioningEnabled"];
  v7 = [v6 BOOLValue];

  os_unfair_lock_unlock(&self->_lock);
  return v7;
}

- (BOOL)cameraProvisioningEnabledForRegion:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(PKPaymentWebServiceConfiguration *)self _lock_region:v4];

  v6 = [v5 objectForKey:@"CameraProvisioningEnabled"];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 BOOLValue];
  }

  else
  {
    v8 = 1;
  }

  os_unfair_lock_unlock(&self->_lock);

  return v8;
}

- (BOOL)cameraFirstProvisioningEnabledForRegion:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(PKPaymentWebServiceConfiguration *)self _lock_region:v4];

  v6 = [v5 objectForKey:@"CameraFirstProvisioningEnabledV2"];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 BOOLValue];
  }

  else
  {
    v8 = 1;
  }

  os_unfair_lock_unlock(&self->_lock);

  return v8;
}

- (BOOL)tapToProvisionEnabledForRegion:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(PKPaymentWebServiceConfiguration *)self _lock_region:v4];

  v6 = [v5 objectForKey:@"TapToProvisionEnabled"];
  v7 = v6;
  if (!v6 || ([v6 BOOLValue] & 1) == 0)
  {
    if (!PKEnableTapToProvision())
    {
      v9 = 0;
      goto LABEL_9;
    }

    v8 = PKLogFacilityTypeGetObject(0x25uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Enabling Tap To Provision from Internal Settings override", v11, 2u);
    }
  }

  v9 = 1;
LABEL_9:
  os_unfair_lock_unlock(&self->_lock);

  return v9;
}

- (BOOL)tapToProvisionFirstProvisioningEnabledForRegion:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(PKPaymentWebServiceConfiguration *)self _lock_region:v4];

  v6 = [v5 objectForKey:@"TapToProvisionFirstProvisioningEnabled"];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 BOOLValue];
  }

  else
  {
    v8 = 1;
  }

  os_unfair_lock_unlock(&self->_lock);

  return v8;
}

- (id)paymentSetupFeaturedNetworksForRegion:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(PKPaymentWebServiceConfiguration *)self _lock_region:v4];
  v6 = [v5 PKArrayContaining:objc_opt_class() forKey:@"PaymentSetupFeaturedNetworksV3"];
  if (![v6 count])
  {
    v7 = [v5 PKArrayContaining:objc_opt_class() forKey:@"PaymentSetupFeaturedNetworksV2"];

    v6 = v7;
  }

  if ([v6 count])
  {
    v8 = [v6 copy];
  }

  else
  {
    v9 = [v5 PKArrayContaining:objc_opt_class() forKey:@"PaymentSetupFeaturedNetworks"];
    v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v9, "count")}];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v11 = v9;
    v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v21;
      do
      {
        v15 = 0;
        do
        {
          if (*v21 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = PKPaymentNetworkNameForPaymentCredentialType([*(*(&v20 + 1) + 8 * v15) integerValue]);
          if (v16)
          {
            [v10 addObject:v16];
          }

          ++v15;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v13);
    }

    v8 = [v10 copy];
  }

  os_unfair_lock_unlock(&self->_lock);
  if (v8)
  {
    v17 = v8;
  }

  else
  {
    v17 = MEMORY[0x1E695E0F0];
  }

  v18 = v17;

  return v17;
}

- (id)primaryFeaturedNetworkForRegion:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(PKPaymentWebServiceConfiguration *)self _lock_region:v4];

  v6 = [v5 PKStringForKey:@"PaymentSetupPrimaryFeaturedNetworkV2"];
  if (!v6)
  {
    v7 = [v5 PKNumberForKey:@"PaymentSetupPrimaryFeaturedNetwork"];
    v6 = PKPaymentNetworkNameForPaymentCredentialType([v7 integerValue]);
  }

  os_unfair_lock_unlock(&self->_lock);

  return v6;
}

- (id)heroImageManifestURLForRegion:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(PKPaymentWebServiceConfiguration *)self _lock_region:v4];

  v6 = [v5 objectForKey:@"PaymentSetupImageManifestURLV3"];
  if (v6)
  {
    v7 = [MEMORY[0x1E695DFF8] URLWithString:v6];
  }

  else
  {
    v7 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);

  return v7;
}

- (id)discoveryManifestURLForRegion:(id)a3
{
  v4 = a3;
  v5 = PKDiscoveryManifestOverrideURL();
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    os_unfair_lock_lock(&self->_lock);
    v8 = [(PKPaymentWebServiceConfiguration *)self _lock_region:v4];
    v9 = [v8 objectForKey:@"DiscoveryManifestURL"];
    if (v9)
    {
      v7 = [MEMORY[0x1E695DFF8] URLWithString:v9];
    }

    else
    {
      v7 = 0;
    }

    os_unfair_lock_unlock(&self->_lock);
  }

  return v7;
}

- (id)marketsURL
{
  os_unfair_lock_lock(&self->_lock);
  v3 = PKMarketsURLOverride();
  if (v3)
  {
    v4 = v3;
LABEL_4:
    v5 = [MEMORY[0x1E695DFF8] URLWithString:v4];
    goto LABEL_5;
  }

  v4 = [(NSDictionary *)self->_configuration PKStringForKey:@"MarketGeosURL"];
  if (v4)
  {
    goto LABEL_4;
  }

  v5 = 0;
LABEL_5:
  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (id)defaultServerURL
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSDictionary *)self->_configuration PKStringForKey:@"defaultServerURL"];
  if (v3)
  {
    v4 = [MEMORY[0x1E695DFF8] URLWithString:v3];
  }

  else
  {
    v4 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);

  return v4;
}

- (BOOL)suppressCardholderNameFieldForRegion:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(PKPaymentWebServiceConfiguration *)self _lock_region:v4];

  v6 = [v5 objectForKey:@"PaymentSetupSuppressCardholderName"];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 BOOLValue];
  }

  else
  {
    v8 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);

  return v8;
}

- (id)paymentSetupBrowsableProductTypesForRegion:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  os_unfair_lock_lock(&self->_lock);
  v6 = [(PKPaymentWebServiceConfiguration *)self _lock_region:v4];
  v7 = [v6 PKArrayContaining:objc_opt_class() forKey:@"PaymentSetupBrowsableProductTypes"];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = PKPaymentSetupProductTypeFromString(*(*(&v16 + 1) + 8 * i));
        if (v12)
        {
          v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v12];
          [v5 addObject:v13];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  os_unfair_lock_unlock(&self->_lock);
  v14 = [v5 copy];

  return v14;
}

- (BOOL)regionHasProvisioningEnablementPercentage:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(PKPaymentWebServiceConfiguration *)self _lock_region:v4];

  v6 = [v5 objectForKey:@"ProvisioningEnablementPercentage"];
  os_unfair_lock_unlock(&self->_lock);

  return v6 != 0;
}

- (double)provisioningEnablementPercentageForRegion:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(PKPaymentWebServiceConfiguration *)self _lock_region:v4];

  v6 = [v5 objectForKey:@"ProvisioningEnablementPercentage"];
  v7 = v6;
  if (v6)
  {
    [v6 doubleValue];
    v9 = v8;
  }

  else
  {
    v9 = 1.0;
  }

  os_unfair_lock_unlock(&self->_lock);

  return v9;
}

- (double)deviceUpgradeTaskEnablementPercentageForRegion:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(PKPaymentWebServiceConfiguration *)self _lock_region:v4];

  v6 = [v5 objectForKey:@"deviceUpgradeTasksEnablementPercentage"];
  os_unfair_lock_unlock(&self->_lock);
  if (v6 || ([(NSDictionary *)self->_configuration objectForKey:@"deviceUpgradeTasksEnablementPercentage"], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    [v6 doubleValue];
    v8 = 1.0;
    if (v7 <= 1.0)
    {
      v8 = v7;
    }

    if (v7 >= 0.0)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0.0;
    }
  }

  else
  {
    v9 = 1.0;
  }

  return v9;
}

- (BOOL)paymentTransactionIconsEnabledForRegion:(id)a3
{
  v4 = a3;
  if (![(__CFString *)v4 length])
  {

    v4 = @"US";
  }

  os_unfair_lock_lock(&self->_lock);
  v5 = [(PKPaymentWebServiceConfiguration *)self _lock_region:v4];
  v6 = [v5 objectForKey:@"PaymentTransactionIconsEnabled"];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 BOOLValue];
  }

  else
  {
    if (([(__CFString *)v4 isEqualToString:@"US"]& 1) != 0 || ([(__CFString *)v4 isEqualToString:@"GB"]& 1) != 0 || ([(__CFString *)v4 isEqualToString:@"CA"]& 1) != 0 || ([(__CFString *)v4 isEqualToString:@"DE"]& 1) != 0)
    {
      v9 = 1;
      goto LABEL_11;
    }

    v8 = [(__CFString *)v4 isEqualToString:@"NL"];
  }

  v9 = v8;
LABEL_11:
  os_unfair_lock_unlock(&self->_lock);

  return v9;
}

- (unint64_t)autofillForegroundEligibilityCheckMaxCount:(id)a3
{
  v4 = a3;
  if (![(__CFString *)v4 length])
  {

    v4 = @"US";
  }

  os_unfair_lock_lock(&self->_lock);
  v5 = [(PKPaymentWebServiceConfiguration *)self _lock_region:v4];
  v6 = [v5 objectForKey:@"autofillForegroundEligibilityCheckMaxCount"];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 unsignedIntegerValue];
  }

  else
  {
    v8 = 5;
  }

  os_unfair_lock_unlock(&self->_lock);

  return v8;
}

- (BOOL)peerPaymentEnabledForRegion:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(PKPaymentWebServiceConfiguration *)self _lock_region:v4];

  v6 = [v5 objectForKey:@"PeerPaymentSupported"];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 BOOLValue];
  }

  else
  {
    v8 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);

  return v8;
}

- (BOOL)userCanResetCloudStoreApplePayViewForRegion:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(PKPaymentWebServiceConfiguration *)self _lock_region:v4];

  v6 = [v5 objectForKey:@"UserCanResetCloudApplePayView"];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 BOOLValue];
  }

  else
  {
    v8 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);

  return v8;
}

- (id)betaPaymentNetworksForRegion:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(PKPaymentWebServiceConfiguration *)self _lock_region:v4];

  v6 = [v5 PKArrayContaining:objc_opt_class() forKey:@"BetaPaymentNetworks"];
  if ([v6 count])
  {
    v7 = [v6 copy];
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  os_unfair_lock_unlock(&self->_lock);

  return v7;
}

- (id)betaPaymentNetworkVersionsForRegion:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(PKPaymentWebServiceConfiguration *)self _lock_region:v4];

  v6 = [v5 PKArrayContaining:objc_opt_class() forKey:@"BetaPaymentNetworkVersions"];
  if ([v6 count])
  {
    v7 = [v6 copy];
  }

  else
  {
    v7 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = MEMORY[0x1E695E0F0];
  }

  v9 = v8;

  return v8;
}

- (id)_featuresFromDictionary:(id)a3 withRegion:(id)a4 osVersion:(id)a5 deviceClass:(id)a6
{
  v40 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v31 = a5;
  v30 = a6;
  os_unfair_lock_assert_owner(&self->_lock);
  v32 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v12 = v10;
  v13 = [v12 countByEnumeratingWithState:&v33 objects:v39 count:16];
  if (v13)
  {
    v15 = v13;
    v16 = *v34;
    if (v31)
    {
      v17 = v30 == 0;
    }

    else
    {
      v17 = 1;
    }

    v18 = !v17;
    *&v14 = 138412290;
    v29 = v14;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v34 != v16)
        {
          objc_enumerationMutation(v12);
        }

        v20 = *(*(&v33 + 1) + 8 * i);
        v21 = PKWebServiceRegionFeatureTypeFromString(v20);
        if (v21)
        {
          v22 = v21;
          v23 = [v12 objectForKey:v20];
          v24 = [PKWebServiceRegionFeature regionFeatureWithType:v22 dictionary:v23 region:v11];

          if (v24)
          {
            if (!v18 || (-[NSObject versionRange](v24, "versionRange"), v25 = objc_claimAutoreleasedReturnValue(), v26 = [v25 versionMeetsRequirements:v31 deviceClass:v30], v25, v26))
            {
              [v32 addObject:{v24, v29}];
            }
          }
        }

        else
        {
          v24 = PKLogFacilityTypeGetObject(7uLL);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v29;
            v38 = v20;
            _os_log_impl(&dword_1AD337000, v24, OS_LOG_TYPE_DEFAULT, "Unknown feature with identifier: %@", buf, 0xCu);
          }
        }
      }

      v15 = [v12 countByEnumeratingWithState:&v33 objects:v39 count:16];
    }

    while (v15);
  }

  v27 = [v32 copy];

  return v27;
}

- (id)supportedFeatureOfType:(int64_t)a3 inRegion:(id)a4 osVersion:(id)a5 deviceClass:(id)a6 didFailOSVersionRequirements:(BOOL *)a7
{
  v12 = a5;
  v13 = a6;
  if (a7)
  {
    *a7 = 0;
  }

  v14 = [(PKPaymentWebServiceConfiguration *)self featureWithType:a3 inRegion:a4];
  v15 = v14;
  if (!v14)
  {
    goto LABEL_8;
  }

  v16 = [v14 versionRange];
  v17 = [v16 versionMeetsRequirements:v12 deviceClass:v13];

  if (v17)
  {
    v18 = v15;
    goto LABEL_9;
  }

  if (a7)
  {
    v18 = 0;
    *a7 = 1;
  }

  else
  {
LABEL_8:
    v18 = 0;
  }

LABEL_9:

  return v18;
}

- (BOOL)hasFeatureRequiringRegistrationInRegion:(id)a3 osVersion:(id)a4 deviceClass:(id)a5
{
  v60 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  os_unfair_lock_lock(&self->_lock);
  v11 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  PKRegionFeatureOverride();
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = v56 = 0u;
  v12 = [obj countByEnumeratingWithState:&v53 objects:v59 count:16];
  v42 = v10;
  if (v12)
  {
    v13 = v12;
    v14 = *v54;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v54 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v53 + 1) + 8 * i);
        [v16 enablementThreshold];
        if (v17 > 0.0 && ([v16 registrationType] == 2 || objc_msgSend(v16, "registrationType") == 3))
        {
          v28 = PKLogFacilityTypeGetObject(7uLL);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1AD337000, v28, OS_LOG_TYPE_DEFAULT, "Override feature adding support for region.", buf, 2u);
          }

          v27 = 1;
          v29 = obj;
          goto LABEL_42;
        }
      }

      v13 = [obj countByEnumeratingWithState:&v53 objects:v59 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  v18 = [(PKPaymentWebServiceConfiguration *)self _lock_featuresForRegion:v8 osVersion:v9 deviceClass:v10];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v19 = [v18 countByEnumeratingWithState:&v48 objects:v58 count:16];
  v40 = self;
  v41 = v9;
  if (v19)
  {
    v20 = v19;
    v21 = 0;
    v22 = *v49;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v49 != v22)
        {
          objc_enumerationMutation(v18);
        }

        v24 = *(*(&v48 + 1) + 8 * j);
        v25 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v24, "featureType")}];
        [v11 addObject:v25];

        [v24 enablementThreshold];
        if (v26 > 0.0 && ([v24 registrationType] == 2 || objc_msgSend(v24, "registrationType") == 3))
        {
          v21 = 1;
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v48 objects:v58 count:16];
    }

    while (v20);

    self = v40;
    v9 = v41;
    v10 = v42;
    if (v21)
    {
      v27 = 1;
      goto LABEL_43;
    }
  }

  else
  {
  }

  v29 = [(PKPaymentWebServiceConfiguration *)self _lock_globalFeaturesForOSVersion:v9 deviceClass:v10];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v30 = [v29 countByEnumeratingWithState:&v44 objects:v57 count:16];
  if (v30)
  {
    v31 = v30;
    v39 = v8;
    v27 = 0;
    v32 = *v45;
    do
    {
      for (k = 0; k != v31; ++k)
      {
        if (*v45 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v34 = *(*(&v44 + 1) + 8 * k);
        v35 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v34, "featureType")}];
        v36 = [v11 containsObject:v35];

        if ((v36 & 1) == 0)
        {
          [v34 enablementThreshold];
          if (v37 > 0.0 && ([v34 registrationType] == 2 || objc_msgSend(v34, "registrationType") == 3))
          {
            v27 = 1;
          }
        }
      }

      v31 = [v29 countByEnumeratingWithState:&v44 objects:v57 count:16];
    }

    while (v31);
    v8 = v39;
    self = v40;
    v9 = v41;
  }

  else
  {
    v27 = 0;
  }

LABEL_42:

LABEL_43:
  os_unfair_lock_unlock(&self->_lock);

  return v27 & 1;
}

- (id)_lock_globalFeaturesForOSVersion:(id)a3 deviceClass:(id)a4
{
  v6 = a4;
  v7 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  v8 = [(NSDictionary *)self->_configuration PKDictionaryForKey:@"globalFeatures"];
  v9 = [(PKPaymentWebServiceConfiguration *)self _featuresFromDictionary:v8 withRegion:0 osVersion:v7 deviceClass:v6];

  return v9;
}

- (id)featuresForRegion:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(PKPaymentWebServiceConfiguration *)self _lock_featuresForRegion:v4];

  v6 = [v5 copy];
  os_unfair_lock_unlock(&self->_lock);

  return v6;
}

- (id)_lock_featuresForRegion:(id)a3 osVersion:(id)a4 deviceClass:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  os_unfair_lock_assert_owner(&self->_lock);
  v11 = [(PKPaymentWebServiceConfiguration *)self _lock_region:v8];
  v12 = [v11 PKDictionaryForKey:@"features"];
  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v14 = [(PKPaymentWebServiceConfiguration *)self _lock_unsupported_region:v8];

    v13 = [v14 PKDictionaryForKey:@"features"];
    v11 = v14;
  }

  v15 = [(PKPaymentWebServiceConfiguration *)self _featuresFromDictionary:v13 withRegion:v8 osVersion:v9 deviceClass:v10];

  return v15;
}

- (id)featureWithType:(int64_t)a3 inRegion:(id)a4
{
  v46 = *MEMORY[0x1E69E9840];
  v6 = a4;
  os_unfair_lock_lock(&self->_lock);
  v7 = PKRegionFeatureOverride();
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v37 objects:v45 count:16];
  if (!v8)
  {
    goto LABEL_16;
  }

  v9 = v8;
  v28 = self;
  v10 = 0;
  v11 = *v38;
  do
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v38 != v11)
      {
        objc_enumerationMutation(v7);
      }

      v13 = *(*(&v37 + 1) + 8 * i);
      v14 = [v13 region];
      if ([v13 featureType] == a3 && (!v14 || v6 && objc_msgSend(v6, "isEqual:", v14)))
      {
        v15 = v13;

        v16 = PKLogFacilityTypeGetObject(7uLL);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v44 = a3;
          _os_log_impl(&dword_1AD337000, v16, OS_LOG_TYPE_DEFAULT, "Using override for feature of type: %ld", buf, 0xCu);
        }

        v10 = v15;
      }
    }

    v9 = [v7 countByEnumeratingWithState:&v37 objects:v45 count:16];
  }

  while (v9);
  self = v28;
  if (!v10)
  {
LABEL_16:
    [(PKPaymentWebServiceConfiguration *)self _lock_featuresForRegion:v6];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v17 = v36 = 0u;
    v18 = [v17 countByEnumeratingWithState:&v33 objects:v42 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v34;
LABEL_18:
      v21 = 0;
      while (1)
      {
        if (*v34 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v33 + 1) + 8 * v21);
        if ([v22 featureType] == a3)
        {
          break;
        }

        if (v19 == ++v21)
        {
          v19 = [v17 countByEnumeratingWithState:&v33 objects:v42 count:16];
          if (v19)
          {
            goto LABEL_18;
          }

          goto LABEL_24;
        }
      }

      v10 = v22;

      if (v10)
      {
        goto LABEL_37;
      }
    }

    else
    {
LABEL_24:
    }

    [(PKPaymentWebServiceConfiguration *)self _lock_globalFeaturesForOSVersion:0 deviceClass:0];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v23 = v32 = 0u;
    v10 = [v23 countByEnumeratingWithState:&v29 objects:v41 count:16];
    if (v10)
    {
      v24 = *v30;
      while (2)
      {
        for (j = 0; j != v10; j = j + 1)
        {
          if (*v30 != v24)
          {
            objc_enumerationMutation(v23);
          }

          v26 = *(*(&v29 + 1) + 8 * j);
          if ([v26 featureType] == a3)
          {
            v10 = v26;
            goto LABEL_36;
          }
        }

        v10 = [v23 countByEnumeratingWithState:&v29 objects:v41 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

LABEL_36:
  }

LABEL_37:
  os_unfair_lock_unlock(&self->_lock);

  return v10;
}

- (id)unsupportedWebPaymentConfigurations
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSDictionary *)self->_configuration PKArrayForKey:@"UnsupportedWebPaymentConfigurations"];
  v4 = [v3 copy];

  os_unfair_lock_unlock(&self->_lock);

  return v4;
}

- (BOOL)remotePaymentsRequiredForVoiceover
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSDictionary *)self->_configuration PKBoolForKey:@"MandateRemotePayments"];
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (BOOL)accountServiceEnabledForRegion:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(PKPaymentWebServiceConfiguration *)self _lock_region:v4];
  v6 = [v5 objectForKey:@"accountServiceEnabled"];
  v7 = v6;
  if (v6)
  {
    LOBYTE(v8) = [v6 BOOLValue];
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  v9 = PKAccountServiceOverrideURL();

  if ((v8 & 1) == 0 && v9)
  {
    v8 = [(__CFString *)v4 isEqualToString:@"US"];
    v10 = PKLogFacilityTypeGetObject(0xFuLL);
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      if (v11)
      {
        v14 = 138412290;
        v15 = @"YES";
        v12 = "Account service enabled in region overrideURLActive: %@";
LABEL_11:
        _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, v12, &v14, 0xCu);
      }
    }

    else if (v11)
    {
      v14 = 138412290;
      v15 = v4;
      v12 = "Warning: Toggle region not allowed: %@";
      goto LABEL_11;
    }
  }

  os_unfair_lock_unlock(&self->_lock);

  return v8;
}

- (BOOL)applyServiceEnabledForRegion:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(PKPaymentWebServiceConfiguration *)self _lock_region:v4];
  v6 = [v5 objectForKey:@"applyServiceEnabled"];
  v7 = v6;
  if (v6)
  {
    LOBYTE(v8) = [v6 BOOLValue];
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  v9 = PKApplyServiceOverrideURL();

  if ((v8 & 1) == 0 && v9)
  {
    v8 = [(__CFString *)v4 isEqualToString:@"US"];
    v10 = PKLogFacilityTypeGetObject(0xEuLL);
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      if (v11)
      {
        v14 = 138412290;
        v15 = @"YES";
        v12 = "Apply service enabled in region overrideURLActive: %@";
LABEL_11:
        _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, v12, &v14, 0xCu);
      }
    }

    else if (v11)
    {
      v14 = 138412290;
      v15 = v4;
      v12 = "Warning: Toggle region not allowed: %@";
      goto LABEL_11;
    }
  }

  os_unfair_lock_unlock(&self->_lock);

  return v8;
}

- (id)applyServiceFeaturesForRegion:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(PKPaymentWebServiceConfiguration *)self _lock_region:v4];

  v6 = [v5 PKDictionaryForKey:@"applyServiceFeatures"];
  v7 = [v6 copy];

  os_unfair_lock_unlock(&self->_lock);

  return v7;
}

- (BOOL)AMPNonDefaultBehaviourDisabledForRegion:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(PKPaymentWebServiceConfiguration *)self _lock_region:v4];

  LOBYTE(v4) = [v5 PKBoolForKey:@"AMPNonDefaultBehaviorDisabled"];
  os_unfair_lock_unlock(&self->_lock);

  return v4;
}

- (id)numberOfDaysBetweenMapsReprocessingForRegion:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(PKPaymentWebServiceConfiguration *)self _lock_region:v4];

  v6 = [v5 PKNumberForKey:@"MapsReprocessingWaitTime"];
  os_unfair_lock_unlock(&self->_lock);

  return v6;
}

- (BOOL)browseProvisioningBankAppsEnabledForRegion:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(PKPaymentWebServiceConfiguration *)self _lock_region:v4];

  LOBYTE(v4) = [v5 PKBoolForKey:@"BrowseProvisioningBankAppsEnabled"];
  os_unfair_lock_unlock(&self->_lock);
  if (v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = PKForceBrowseBankPartners();
  }

  return v6;
}

- (id)marketGeoRegionNotificationTimeRangeForRegion:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(PKPaymentWebServiceConfiguration *)self _lock_region:v4];

  v6 = [v5 PKNumberForKey:@"MarketGeoRegionNotificationTimeRange"];
  os_unfair_lock_unlock(&self->_lock);

  return v6;
}

- (id)marketGeoRegionNotificationNetworkThresholdsForRegion:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(PKPaymentWebServiceConfiguration *)self _lock_region:v4];

  v6 = [v5 PKDictionaryForKey:@"MarketGeoRegionNotificationNetworkThresholds"];
  os_unfair_lock_unlock(&self->_lock);
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = MEMORY[0x1E695E0F8];
  }

  v8 = v7;

  return v7;
}

- (double)deviceCheckInIntervalForRegion:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(PKPaymentWebServiceConfiguration *)self _lock_region:v4];

  [v5 PKDoubleForKey:@"DeviceCheckInInterval"];
  v7 = 604800.0;
  if (v6 <= 604800.0)
  {
    v7 = v6;
  }

  if (v6 < 600.0)
  {
    v7 = 600.0;
  }

  if (v6 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v7;
  }

  os_unfair_lock_unlock(&self->_lock);

  return v8;
}

- (BOOL)deviceCheckInDisabledForRegion:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(PKPaymentWebServiceConfiguration *)self _lock_region:v4];

  LOBYTE(v4) = [v5 PKBoolForKey:@"DeviceCheckInDisabled"];
  os_unfair_lock_unlock(&self->_lock);

  return v4;
}

- (BOOL)shouldEnableTransitServiceCheckInForRegion:(id)a3
{
  v4 = a3;
  if (PKForceEnableTransitServiceCheckIn())
  {
    v5 = PKLogFacilityTypeGetObject(0xDuLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Transit service check in enabled by internal toggle", v9, 2u);
    }

    v6 = 1;
  }

  else
  {
    os_unfair_lock_lock(&self->_lock);
    v7 = [(PKPaymentWebServiceConfiguration *)self _lock_region:v4];
    v6 = [v7 PKBoolForKey:@"EnableTransitServiceCheckIn"];
    os_unfair_lock_unlock(&self->_lock);
  }

  return v6;
}

- (id)contactFormatConfiguration
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSDictionary *)self->_configuration PKDictionaryForKey:@"contactFormatConfiguration"];
  if (v3)
  {
    v4 = [[PKContactFormatConfiguration alloc] initWithDictionary:v3];
  }

  else
  {
    v4 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);

  return v4;
}

- (id)credentialTypesRequiringMetadata
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSDictionary *)self->_configuration PKSetForKey:@"credentialTypesRequiringMetadata"];
  v4 = [v3 copy];

  os_unfair_lock_unlock(&self->_lock);

  return v4;
}

- (id)relayServerHostForRegion:(id)a3
{
  v3 = [(PKPaymentWebServiceConfiguration *)self featureWithType:5 inRegion:a3];
  v4 = [v3 relayServerHost];
  v5 = PKSharingRelayServerURLForCurrentEnvironment(v4);

  return v5;
}

- (id)allowedRelayServerHostsForRegion:(id)a3
{
  v4 = a3;
  v5 = [(PKPaymentWebServiceConfiguration *)self featureWithType:5 inRegion:v4];
  v6 = [v5 allowedRelayServerHosts];
  v7 = objc_alloc(MEMORY[0x1E695DFA8]);
  v8 = [(PKPaymentWebServiceConfiguration *)self relayServerHostsToHandleUniversalLinksForRegion:v4];

  v9 = [v7 initWithArray:v8];
  if (v6)
  {
    [v9 addObjectsFromArray:v6];
  }

  [v9 addObject:@"wallet.apple.com"];
  v10 = [v9 allObjects];

  return v10;
}

- (id)relayServerHostsToHandleUniversalLinksForRegion:(id)a3
{
  v3 = [(PKPaymentWebServiceConfiguration *)self featureWithType:5 inRegion:a3];
  v4 = [v3 relayServerHostsToHandleUniversalLinks];
  v5 = [v4 mutableCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  v8 = v7;

  v9 = [v3 relayServerHost];
  [v8 safelyAddObject:v9];

  v10 = PKSharingRelayServerURLs();
  [v8 addObjectsFromArray:v10];

  v11 = [v8 copy];

  return v11;
}

- (double)dynamicAssetPrefetchTimeIntervalForRegion:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(PKPaymentWebServiceConfiguration *)self _lock_region:v4];

  v6 = [v5 PKNumberForKey:@"dynamicAssetPrefetchTimeInterval"];
  if (v6)
  {
    v7 = v6;
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v7 = [(NSDictionary *)self->_configuration PKNumberForKey:@"defaultDynamicAssetPrefetchTimeInterval"];
    os_unfair_lock_unlock(&self->_lock);
    if (!v7)
    {
      v9 = 86400.0;
      goto LABEL_5;
    }
  }

  [v7 doubleValue];
  v9 = v8;

LABEL_5:
  return v9;
}

- (double)howToUseWalletAssetPrefetchTimeIntervalForRegion:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(PKPaymentWebServiceConfiguration *)self _lock_region:v4];

  v6 = [v5 PKNumberForKey:@"howToUseWalletAssetPrefetchTimeInterval"];
  if (v6)
  {
    v7 = v6;
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v7 = [(NSDictionary *)self->_configuration PKNumberForKey:@"defaultHowToUseWalletAssetPrefetchTimeInterval"];
    os_unfair_lock_unlock(&self->_lock);
    if (!v7)
    {
      v9 = 604800.0;
      goto LABEL_5;
    }
  }

  [v7 doubleValue];
  v9 = v8;

LABEL_5:
  return v9;
}

- (double)cashStickersAssetPrefetchTimeIntervalForRegion:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(PKPaymentWebServiceConfiguration *)self _lock_region:v4];

  v6 = [v5 PKNumberForKey:@"appleCashStickerAssetPrefetchTimeInterval"];
  if (v6)
  {
    v7 = v6;
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v7 = [(NSDictionary *)self->_configuration PKNumberForKey:@"defaultAppleCashStickerAssetPrefetchTimeInterval"];
    os_unfair_lock_unlock(&self->_lock);
    if (!v7)
    {
      v9 = 604800.0;
      goto LABEL_5;
    }
  }

  [v7 doubleValue];
  v9 = v8;

LABEL_5:
  return v9;
}

- (double)paymentSetupFeaturesCacheUpdateIntervalForRegion:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(PKPaymentWebServiceConfiguration *)self _lock_region:v4];

  v6 = [v5 PKNumberForKey:@"paymentSetupFeaturesCacheUpdateInterval"];
  if (v6)
  {
    v7 = v6;
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v7 = [(NSDictionary *)self->_configuration PKNumberForKey:@"defaultPaymentSetupFeaturesCacheUpdateInterval"];
    os_unfair_lock_unlock(&self->_lock);
    if (!v7)
    {
      v9 = -1.0;
      goto LABEL_5;
    }
  }

  [v7 doubleValue];
  v9 = v8;

LABEL_5:
  return v9;
}

- (double)paymentOfferCatalogVersionChangeUpdatePeriodForRegion:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(PKPaymentWebServiceConfiguration *)self _lock_region:v4];

  v6 = [v5 PKNumberForKey:@"paymentOfferCatalogVersionChangeUpdatePeriod"];
  os_unfair_lock_unlock(&self->_lock);
  [v6 doubleValue];
  v8 = v7;

  return v8;
}

- (int64_t)paymentOfferCatalogVersionForRegion:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(PKPaymentWebServiceConfiguration *)self _lock_region:v4];

  v6 = [v5 PKIntegerForKey:@"paymentOfferCatalogVersion"];
  os_unfair_lock_unlock(&self->_lock);

  return v6;
}

- (double)sharingMessageCacheTimeToLiveInterval
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSDictionary *)self->_configuration PKNumberForKey:@"sharingMessageCacheTimeToLiveInterval"];
  os_unfair_lock_unlock(&self->_lock);
  if (v3)
  {
    [v3 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 172800.0;
  }

  return v5;
}

- (BOOL)quickAccessForMoreRemovePassEnabled
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSDictionary *)self->_configuration PKNumberForKey:@"quickAccessForMoreRemovePassEnabled"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 BOOLValue];
  }

  else
  {
    v5 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (id)stationCodeProvidersUsingLocalLookup
{
  v5[1] = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSDictionary *)self->_configuration PKArrayContaining:objc_opt_class() forKey:@"stationCodeProvidersUsingLocalLookup"];
  if (!v3)
  {
    v5[0] = @"transit.apple.tmoney";
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  }

  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)unsupportedProvisioningExtensions
{
  os_unfair_lock_lock(&self->_lock);
  configuration = self->_configuration;
  v4 = objc_opt_class();
  v5 = [(NSDictionary *)configuration PKDictionaryOfKeyClass:v4 valueClass:objc_opt_class() ForKey:@"unsupportedProvisioningExtensions"];
  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (BOOL)provisioningProximityVerificationInSetupAssistantEnabledForRegion:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(PKPaymentWebServiceConfiguration *)self _lock_region:v4];

  v6 = [v5 PKNumberForKey:@"ProximityVerificationInSetupAssistantEnabled"];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 BOOLValue];
  }

  else
  {
    v8 = 1;
  }

  os_unfair_lock_unlock(&self->_lock);

  return v8;
}

- (id)_regionsForOSVersion:(id)a3 deviceClass:(id)a4 platform:(id)a5 supportedRegions:(BOOL)a6
{
  v29 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  os_unfair_lock_lock(&self->_lock);
  if (a6)
  {
    [(PKPaymentWebServiceConfiguration *)self _lock_regions];
  }

  else
  {
    [(PKPaymentWebServiceConfiguration *)self _lock_unsupported_regions];
  }
  v13 = ;
  v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v14 = v13;
  v15 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v25;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v25 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v24 + 1) + 8 * i);
        v20 = [v14 objectForKey:v19];
        if (v20 && [(PKPaymentWebServiceConfiguration *)self _lock_supportedForOSVersion:v10 inRegionDictionary:v20 deviceClass:v11 platform:v12])
        {
          [v23 addObject:v19];
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v16);
  }

  v21 = [v23 copy];
  os_unfair_lock_unlock(&self->_lock);

  return v21;
}

- (BOOL)_lock_supportedForOSVersion:(id)a3 inRegionDictionary:(id)a4 deviceClass:(id)a5 platform:(id)a6
{
  v9 = a3;
  v10 = a5;
  v11 = a6;
  if (a4)
  {
    v12 = [a4 objectForKey:@"minimumOSVersion"];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
      v15 = v14;
      if (v11)
      {
        v16 = [v14 objectForKey:v11];

        v15 = v16;
      }

      v17 = [v15 objectForKey:v10];
      v18 = v17;
      if (v17)
      {
        v19 = ([v17 compare:v9 options:64] + 1) < 2;
      }

      else
      {
        v19 = 1;
      }
    }

    else
    {
      v19 = 1;
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (id)_lock_region:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PKPaymentWebServiceConfiguration *)self _lock_regions];
  v6 = [v5 objectForKey:v4];

  if (!v6)
  {
    v7 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412290;
      v10 = v4;
      _os_log_error_impl(&dword_1AD337000, v7, OS_LOG_TYPE_ERROR, "Region %@ requested but no region data found!", &v9, 0xCu);
    }
  }

  return v6;
}

- (id)_lock_unsupported_region:(id)a3
{
  v4 = a3;
  v5 = [(PKPaymentWebServiceConfiguration *)self _lock_unsupported_regions];
  v6 = [v5 objectForKey:v4];

  return v6;
}

@end