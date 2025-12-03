@interface PKPaymentWebServiceConfiguration
- (BOOL)AMPNonDefaultBehaviourDisabledForRegion:(id)region;
- (BOOL)_lock_supportedForOSVersion:(id)version inRegionDictionary:(id)dictionary deviceClass:(id)class platform:(id)platform;
- (BOOL)accountServiceEnabledForRegion:(id)region;
- (BOOL)applyServiceEnabledForRegion:(id)region;
- (BOOL)browseProvisioningBankAppsEnabledForRegion:(id)region;
- (BOOL)buddyManualProvisioningEnabledForRegion:(id)region;
- (BOOL)buddyProvisioningEnabledForRegion:(id)region;
- (BOOL)cameraFirstProvisioningEnabledForRegion:(id)region;
- (BOOL)cameraProvisioningEnabledForRegion:(id)region;
- (BOOL)deviceCheckInDisabledForRegion:(id)region;
- (BOOL)hasFeatureRequiringRegistrationInRegion:(id)region osVersion:(id)version deviceClass:(id)class;
- (BOOL)isEqual:(id)equal;
- (BOOL)manualProvisioningEnabledForRegion:(id)region;
- (BOOL)paymentTransactionIconsEnabledForRegion:(id)region;
- (BOOL)peerPaymentEnabledForRegion:(id)region;
- (BOOL)provisioningProximityVerificationInSetupAssistantEnabledForRegion:(id)region;
- (BOOL)quickAccessForMoreRemovePassEnabled;
- (BOOL)regionHasProvisioningEnablementPercentage:(id)percentage;
- (BOOL)remotePaymentsRequiredForVoiceover;
- (BOOL)shouldEnableTransitServiceCheckInForRegion:(id)region;
- (BOOL)suppressCardholderNameFieldForRegion:(id)region;
- (BOOL)tapToProvisionEnabledForRegion:(id)region;
- (BOOL)tapToProvisionFirstProvisioningEnabledForRegion:(id)region;
- (BOOL)userCanResetCloudStoreApplePayViewForRegion:(id)region;
- (PKPaymentWebServiceConfiguration)init;
- (PKPaymentWebServiceConfiguration)initWithCoder:(id)coder;
- (PKPaymentWebServiceConfiguration)initWithConfiguration:(id)configuration url:(id)url;
- (double)cashStickersAssetPrefetchTimeIntervalForRegion:(id)region;
- (double)deviceCheckInIntervalForRegion:(id)region;
- (double)deviceUpgradeTaskEnablementPercentageForRegion:(id)region;
- (double)dynamicAssetPrefetchTimeIntervalForRegion:(id)region;
- (double)howToUseWalletAssetPrefetchTimeIntervalForRegion:(id)region;
- (double)paymentOfferCatalogVersionChangeUpdatePeriodForRegion:(id)region;
- (double)paymentSetupFeaturesCacheUpdateIntervalForRegion:(id)region;
- (double)provisioningEnablementPercentageForRegion:(id)region;
- (double)sharingMessageCacheTimeToLiveInterval;
- (id)_featuresFromDictionary:(id)dictionary withRegion:(id)region osVersion:(id)version deviceClass:(id)class;
- (id)_lock_featuresForRegion:(id)region osVersion:(id)version deviceClass:(id)class;
- (id)_lock_globalFeaturesForOSVersion:(id)version deviceClass:(id)class;
- (id)_lock_region:(id)_lock_region;
- (id)_lock_unsupported_region:(id)_lock_unsupported_region;
- (id)_regionsForOSVersion:(id)version deviceClass:(id)class platform:(id)platform supportedRegions:(BOOL)regions;
- (id)allowedRelayServerHostsForRegion:(id)region;
- (id)applyServiceFeaturesForRegion:(id)region;
- (id)betaPaymentNetworkVersionsForRegion:(id)region;
- (id)betaPaymentNetworksForRegion:(id)region;
- (id)brokerURLForRegion:(id)region;
- (id)contactFormatConfiguration;
- (id)credentialTypesRequiringMetadata;
- (id)defaultServerURL;
- (id)discoveryManifestURLForRegion:(id)region;
- (id)featureWithType:(int64_t)type inRegion:(id)region;
- (id)featuresForRegion:(id)region;
- (id)heroImageManifestURLForRegion:(id)region;
- (id)marketGeoRegionNotificationNetworkThresholdsForRegion:(id)region;
- (id)marketGeoRegionNotificationTimeRangeForRegion:(id)region;
- (id)marketsURL;
- (id)numberOfDaysBetweenMapsReprocessingForRegion:(id)region;
- (id)paymentRelayServiceURLForRegion:(id)region;
- (id)paymentServicesMerchantURLForRegion:(id)region;
- (id)paymentServicesURLForRegion:(id)region;
- (id)paymentSetupBrowsableProductTypesForRegion:(id)region;
- (id)paymentSetupFeaturedNetworksForRegion:(id)region;
- (id)primaryFeaturedNetworkForRegion:(id)region;
- (id)relayServerHostForRegion:(id)region;
- (id)relayServerHostsToHandleUniversalLinksForRegion:(id)region;
- (id)stationCodeProvidersUsingLocalLookup;
- (id)supportedFeatureOfType:(int64_t)type inRegion:(id)region osVersion:(id)version deviceClass:(id)class didFailOSVersionRequirements:(BOOL *)requirements;
- (id)unsupportedProvisioningExtensions;
- (id)unsupportedWebPaymentConfigurations;
- (int64_t)paymentOfferCatalogVersionForRegion:(id)region;
- (unint64_t)autofillForegroundEligibilityCheckMaxCount:(id)count;
- (unint64_t)notificationAuthorizationPromptPresentationCount;
- (void)encodeWithCoder:(id)coder;
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

- (PKPaymentWebServiceConfiguration)initWithConfiguration:(id)configuration url:(id)url
{
  configurationCopy = configuration;
  urlCopy = url;
  v8 = [(PKPaymentWebServiceConfiguration *)self init];
  if (v8)
  {
    v9 = PKDeepCopyDeduplicatedWithHashTable(configurationCopy, 0);
    configuration = v8->_configuration;
    v8->_configuration = v9;

    v11 = [urlCopy copy];
    configurationURL = v8->_configurationURL;
    v8->_configurationURL = v11;
  }

  return v8;
}

- (PKPaymentWebServiceConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(PKPaymentWebServiceConfiguration *)self init];
  v6 = v5;
  if (v5)
  {
    os_unfair_lock_lock(&v5->_lock);
    v7 = [coderCopy decodePropertyListForKey:@"configuration"];
    v8 = PKDeepCopyDeduplicatedWithHashTable(v7, 0);
    configuration = v6->_configuration;
    v6->_configuration = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"configurationURL"];
    configurationURL = v6->_configurationURL;
    v6->_configurationURL = v10;

    os_unfair_lock_unlock(&v6->_lock);
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  os_unfair_lock_lock(&self->_lock);
  [coderCopy encodeObject:self->_configuration forKey:@"configuration"];
  [coderCopy encodeObject:self->_configurationURL forKey:@"configurationURL"];

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(NSDictionary *)self->_configuration isEqualToDictionary:equalCopy[3]];

  return v5;
}

- (id)brokerURLForRegion:(id)region
{
  regionCopy = region;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(PKPaymentWebServiceConfiguration *)self _lock_region:regionCopy];

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

- (id)paymentServicesURLForRegion:(id)region
{
  regionCopy = region;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(PKPaymentWebServiceConfiguration *)self _lock_region:regionCopy];

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

- (id)paymentRelayServiceURLForRegion:(id)region
{
  regionCopy = region;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(PKPaymentWebServiceConfiguration *)self _lock_region:regionCopy];

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

- (id)paymentServicesMerchantURLForRegion:(id)region
{
  regionCopy = region;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(PKPaymentWebServiceConfiguration *)self _lock_region:regionCopy];

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

- (BOOL)buddyProvisioningEnabledForRegion:(id)region
{
  regionCopy = region;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(PKPaymentWebServiceConfiguration *)self _lock_region:regionCopy];

  v6 = [v5 objectForKey:@"BuddyProvisioningEnabled"];
  v7 = v6;
  if (v6)
  {
    bOOLValue = [v6 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  os_unfair_lock_unlock(&self->_lock);

  return bOOLValue;
}

- (BOOL)buddyManualProvisioningEnabledForRegion:(id)region
{
  regionCopy = region;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(PKPaymentWebServiceConfiguration *)self _lock_region:regionCopy];

  v6 = [v5 objectForKey:@"BuddyManualProvisioningEnabled"];
  bOOLValue = [v6 BOOLValue];

  os_unfair_lock_unlock(&self->_lock);
  return bOOLValue;
}

- (BOOL)manualProvisioningEnabledForRegion:(id)region
{
  regionCopy = region;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(PKPaymentWebServiceConfiguration *)self _lock_region:regionCopy];

  v6 = [v5 objectForKey:@"ManualProvisioningEnabled"];
  bOOLValue = [v6 BOOLValue];

  os_unfair_lock_unlock(&self->_lock);
  return bOOLValue;
}

- (BOOL)cameraProvisioningEnabledForRegion:(id)region
{
  regionCopy = region;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(PKPaymentWebServiceConfiguration *)self _lock_region:regionCopy];

  v6 = [v5 objectForKey:@"CameraProvisioningEnabled"];
  v7 = v6;
  if (v6)
  {
    bOOLValue = [v6 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  os_unfair_lock_unlock(&self->_lock);

  return bOOLValue;
}

- (BOOL)cameraFirstProvisioningEnabledForRegion:(id)region
{
  regionCopy = region;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(PKPaymentWebServiceConfiguration *)self _lock_region:regionCopy];

  v6 = [v5 objectForKey:@"CameraFirstProvisioningEnabledV2"];
  v7 = v6;
  if (v6)
  {
    bOOLValue = [v6 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  os_unfair_lock_unlock(&self->_lock);

  return bOOLValue;
}

- (BOOL)tapToProvisionEnabledForRegion:(id)region
{
  regionCopy = region;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(PKPaymentWebServiceConfiguration *)self _lock_region:regionCopy];

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

- (BOOL)tapToProvisionFirstProvisioningEnabledForRegion:(id)region
{
  regionCopy = region;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(PKPaymentWebServiceConfiguration *)self _lock_region:regionCopy];

  v6 = [v5 objectForKey:@"TapToProvisionFirstProvisioningEnabled"];
  v7 = v6;
  if (v6)
  {
    bOOLValue = [v6 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  os_unfair_lock_unlock(&self->_lock);

  return bOOLValue;
}

- (id)paymentSetupFeaturedNetworksForRegion:(id)region
{
  v25 = *MEMORY[0x1E69E9840];
  regionCopy = region;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(PKPaymentWebServiceConfiguration *)self _lock_region:regionCopy];
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

- (id)primaryFeaturedNetworkForRegion:(id)region
{
  regionCopy = region;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(PKPaymentWebServiceConfiguration *)self _lock_region:regionCopy];

  v6 = [v5 PKStringForKey:@"PaymentSetupPrimaryFeaturedNetworkV2"];
  if (!v6)
  {
    v7 = [v5 PKNumberForKey:@"PaymentSetupPrimaryFeaturedNetwork"];
    v6 = PKPaymentNetworkNameForPaymentCredentialType([v7 integerValue]);
  }

  os_unfair_lock_unlock(&self->_lock);

  return v6;
}

- (id)heroImageManifestURLForRegion:(id)region
{
  regionCopy = region;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(PKPaymentWebServiceConfiguration *)self _lock_region:regionCopy];

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

- (id)discoveryManifestURLForRegion:(id)region
{
  regionCopy = region;
  v5 = PKDiscoveryManifestOverrideURL();
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    os_unfair_lock_lock(&self->_lock);
    v8 = [(PKPaymentWebServiceConfiguration *)self _lock_region:regionCopy];
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

- (BOOL)suppressCardholderNameFieldForRegion:(id)region
{
  regionCopy = region;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(PKPaymentWebServiceConfiguration *)self _lock_region:regionCopy];

  v6 = [v5 objectForKey:@"PaymentSetupSuppressCardholderName"];
  v7 = v6;
  if (v6)
  {
    bOOLValue = [v6 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  os_unfair_lock_unlock(&self->_lock);

  return bOOLValue;
}

- (id)paymentSetupBrowsableProductTypesForRegion:(id)region
{
  v21 = *MEMORY[0x1E69E9840];
  regionCopy = region;
  array = [MEMORY[0x1E695DF70] array];
  os_unfair_lock_lock(&self->_lock);
  v6 = [(PKPaymentWebServiceConfiguration *)self _lock_region:regionCopy];
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
          [array addObject:v13];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  os_unfair_lock_unlock(&self->_lock);
  v14 = [array copy];

  return v14;
}

- (BOOL)regionHasProvisioningEnablementPercentage:(id)percentage
{
  percentageCopy = percentage;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(PKPaymentWebServiceConfiguration *)self _lock_region:percentageCopy];

  v6 = [v5 objectForKey:@"ProvisioningEnablementPercentage"];
  os_unfair_lock_unlock(&self->_lock);

  return v6 != 0;
}

- (double)provisioningEnablementPercentageForRegion:(id)region
{
  regionCopy = region;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(PKPaymentWebServiceConfiguration *)self _lock_region:regionCopy];

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

- (double)deviceUpgradeTaskEnablementPercentageForRegion:(id)region
{
  regionCopy = region;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(PKPaymentWebServiceConfiguration *)self _lock_region:regionCopy];

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

- (BOOL)paymentTransactionIconsEnabledForRegion:(id)region
{
  regionCopy = region;
  if (![(__CFString *)regionCopy length])
  {

    regionCopy = @"US";
  }

  os_unfair_lock_lock(&self->_lock);
  v5 = [(PKPaymentWebServiceConfiguration *)self _lock_region:regionCopy];
  v6 = [v5 objectForKey:@"PaymentTransactionIconsEnabled"];
  v7 = v6;
  if (v6)
  {
    bOOLValue = [v6 BOOLValue];
  }

  else
  {
    if (([(__CFString *)regionCopy isEqualToString:@"US"]& 1) != 0 || ([(__CFString *)regionCopy isEqualToString:@"GB"]& 1) != 0 || ([(__CFString *)regionCopy isEqualToString:@"CA"]& 1) != 0 || ([(__CFString *)regionCopy isEqualToString:@"DE"]& 1) != 0)
    {
      v9 = 1;
      goto LABEL_11;
    }

    bOOLValue = [(__CFString *)regionCopy isEqualToString:@"NL"];
  }

  v9 = bOOLValue;
LABEL_11:
  os_unfair_lock_unlock(&self->_lock);

  return v9;
}

- (unint64_t)autofillForegroundEligibilityCheckMaxCount:(id)count
{
  countCopy = count;
  if (![(__CFString *)countCopy length])
  {

    countCopy = @"US";
  }

  os_unfair_lock_lock(&self->_lock);
  v5 = [(PKPaymentWebServiceConfiguration *)self _lock_region:countCopy];
  v6 = [v5 objectForKey:@"autofillForegroundEligibilityCheckMaxCount"];
  v7 = v6;
  if (v6)
  {
    unsignedIntegerValue = [v6 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 5;
  }

  os_unfair_lock_unlock(&self->_lock);

  return unsignedIntegerValue;
}

- (BOOL)peerPaymentEnabledForRegion:(id)region
{
  regionCopy = region;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(PKPaymentWebServiceConfiguration *)self _lock_region:regionCopy];

  v6 = [v5 objectForKey:@"PeerPaymentSupported"];
  v7 = v6;
  if (v6)
  {
    bOOLValue = [v6 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  os_unfair_lock_unlock(&self->_lock);

  return bOOLValue;
}

- (BOOL)userCanResetCloudStoreApplePayViewForRegion:(id)region
{
  regionCopy = region;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(PKPaymentWebServiceConfiguration *)self _lock_region:regionCopy];

  v6 = [v5 objectForKey:@"UserCanResetCloudApplePayView"];
  v7 = v6;
  if (v6)
  {
    bOOLValue = [v6 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  os_unfair_lock_unlock(&self->_lock);

  return bOOLValue;
}

- (id)betaPaymentNetworksForRegion:(id)region
{
  regionCopy = region;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(PKPaymentWebServiceConfiguration *)self _lock_region:regionCopy];

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

- (id)betaPaymentNetworkVersionsForRegion:(id)region
{
  regionCopy = region;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(PKPaymentWebServiceConfiguration *)self _lock_region:regionCopy];

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

- (id)_featuresFromDictionary:(id)dictionary withRegion:(id)region osVersion:(id)version deviceClass:(id)class
{
  v40 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  regionCopy = region;
  versionCopy = version;
  classCopy = class;
  os_unfair_lock_assert_owner(&self->_lock);
  v32 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v12 = dictionaryCopy;
  v13 = [v12 countByEnumeratingWithState:&v33 objects:v39 count:16];
  if (v13)
  {
    v15 = v13;
    v16 = *v34;
    if (versionCopy)
    {
      v17 = classCopy == 0;
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
          v24 = [PKWebServiceRegionFeature regionFeatureWithType:v22 dictionary:v23 region:regionCopy];

          if (v24)
          {
            if (!v18 || (-[NSObject versionRange](v24, "versionRange"), v25 = objc_claimAutoreleasedReturnValue(), v26 = [v25 versionMeetsRequirements:versionCopy deviceClass:classCopy], v25, v26))
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

- (id)supportedFeatureOfType:(int64_t)type inRegion:(id)region osVersion:(id)version deviceClass:(id)class didFailOSVersionRequirements:(BOOL *)requirements
{
  versionCopy = version;
  classCopy = class;
  if (requirements)
  {
    *requirements = 0;
  }

  v14 = [(PKPaymentWebServiceConfiguration *)self featureWithType:type inRegion:region];
  v15 = v14;
  if (!v14)
  {
    goto LABEL_8;
  }

  versionRange = [v14 versionRange];
  v17 = [versionRange versionMeetsRequirements:versionCopy deviceClass:classCopy];

  if (v17)
  {
    v18 = v15;
    goto LABEL_9;
  }

  if (requirements)
  {
    v18 = 0;
    *requirements = 1;
  }

  else
  {
LABEL_8:
    v18 = 0;
  }

LABEL_9:

  return v18;
}

- (BOOL)hasFeatureRequiringRegistrationInRegion:(id)region osVersion:(id)version deviceClass:(id)class
{
  v60 = *MEMORY[0x1E69E9840];
  regionCopy = region;
  versionCopy = version;
  classCopy = class;
  os_unfair_lock_lock(&self->_lock);
  v11 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  PKRegionFeatureOverride();
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = v56 = 0u;
  v12 = [obj countByEnumeratingWithState:&v53 objects:v59 count:16];
  v42 = classCopy;
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

  v18 = [(PKPaymentWebServiceConfiguration *)self _lock_featuresForRegion:regionCopy osVersion:versionCopy deviceClass:classCopy];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v19 = [v18 countByEnumeratingWithState:&v48 objects:v58 count:16];
  selfCopy = self;
  v41 = versionCopy;
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

    self = selfCopy;
    versionCopy = v41;
    classCopy = v42;
    if (v21)
    {
      v27 = 1;
      goto LABEL_43;
    }
  }

  else
  {
  }

  v29 = [(PKPaymentWebServiceConfiguration *)self _lock_globalFeaturesForOSVersion:versionCopy deviceClass:classCopy];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v30 = [v29 countByEnumeratingWithState:&v44 objects:v57 count:16];
  if (v30)
  {
    v31 = v30;
    v39 = regionCopy;
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
    regionCopy = v39;
    self = selfCopy;
    versionCopy = v41;
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

- (id)_lock_globalFeaturesForOSVersion:(id)version deviceClass:(id)class
{
  classCopy = class;
  versionCopy = version;
  os_unfair_lock_assert_owner(&self->_lock);
  v8 = [(NSDictionary *)self->_configuration PKDictionaryForKey:@"globalFeatures"];
  v9 = [(PKPaymentWebServiceConfiguration *)self _featuresFromDictionary:v8 withRegion:0 osVersion:versionCopy deviceClass:classCopy];

  return v9;
}

- (id)featuresForRegion:(id)region
{
  regionCopy = region;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(PKPaymentWebServiceConfiguration *)self _lock_featuresForRegion:regionCopy];

  v6 = [v5 copy];
  os_unfair_lock_unlock(&self->_lock);

  return v6;
}

- (id)_lock_featuresForRegion:(id)region osVersion:(id)version deviceClass:(id)class
{
  regionCopy = region;
  versionCopy = version;
  classCopy = class;
  os_unfair_lock_assert_owner(&self->_lock);
  v11 = [(PKPaymentWebServiceConfiguration *)self _lock_region:regionCopy];
  v12 = [v11 PKDictionaryForKey:@"features"];
  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v14 = [(PKPaymentWebServiceConfiguration *)self _lock_unsupported_region:regionCopy];

    v13 = [v14 PKDictionaryForKey:@"features"];
    v11 = v14;
  }

  v15 = [(PKPaymentWebServiceConfiguration *)self _featuresFromDictionary:v13 withRegion:regionCopy osVersion:versionCopy deviceClass:classCopy];

  return v15;
}

- (id)featureWithType:(int64_t)type inRegion:(id)region
{
  v46 = *MEMORY[0x1E69E9840];
  regionCopy = region;
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
  selfCopy = self;
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
      region = [v13 region];
      if ([v13 featureType] == type && (!region || regionCopy && objc_msgSend(regionCopy, "isEqual:", region)))
      {
        v15 = v13;

        v16 = PKLogFacilityTypeGetObject(7uLL);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          typeCopy = type;
          _os_log_impl(&dword_1AD337000, v16, OS_LOG_TYPE_DEFAULT, "Using override for feature of type: %ld", buf, 0xCu);
        }

        v10 = v15;
      }
    }

    v9 = [v7 countByEnumeratingWithState:&v37 objects:v45 count:16];
  }

  while (v9);
  self = selfCopy;
  if (!v10)
  {
LABEL_16:
    [(PKPaymentWebServiceConfiguration *)self _lock_featuresForRegion:regionCopy];
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
        if ([v22 featureType] == type)
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
          if ([v26 featureType] == type)
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

- (BOOL)accountServiceEnabledForRegion:(id)region
{
  v16 = *MEMORY[0x1E69E9840];
  regionCopy = region;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(PKPaymentWebServiceConfiguration *)self _lock_region:regionCopy];
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
    v8 = [(__CFString *)regionCopy isEqualToString:@"US"];
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
      v15 = regionCopy;
      v12 = "Warning: Toggle region not allowed: %@";
      goto LABEL_11;
    }
  }

  os_unfair_lock_unlock(&self->_lock);

  return v8;
}

- (BOOL)applyServiceEnabledForRegion:(id)region
{
  v16 = *MEMORY[0x1E69E9840];
  regionCopy = region;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(PKPaymentWebServiceConfiguration *)self _lock_region:regionCopy];
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
    v8 = [(__CFString *)regionCopy isEqualToString:@"US"];
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
      v15 = regionCopy;
      v12 = "Warning: Toggle region not allowed: %@";
      goto LABEL_11;
    }
  }

  os_unfair_lock_unlock(&self->_lock);

  return v8;
}

- (id)applyServiceFeaturesForRegion:(id)region
{
  regionCopy = region;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(PKPaymentWebServiceConfiguration *)self _lock_region:regionCopy];

  v6 = [v5 PKDictionaryForKey:@"applyServiceFeatures"];
  v7 = [v6 copy];

  os_unfair_lock_unlock(&self->_lock);

  return v7;
}

- (BOOL)AMPNonDefaultBehaviourDisabledForRegion:(id)region
{
  regionCopy = region;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(PKPaymentWebServiceConfiguration *)self _lock_region:regionCopy];

  LOBYTE(regionCopy) = [v5 PKBoolForKey:@"AMPNonDefaultBehaviorDisabled"];
  os_unfair_lock_unlock(&self->_lock);

  return regionCopy;
}

- (id)numberOfDaysBetweenMapsReprocessingForRegion:(id)region
{
  regionCopy = region;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(PKPaymentWebServiceConfiguration *)self _lock_region:regionCopy];

  v6 = [v5 PKNumberForKey:@"MapsReprocessingWaitTime"];
  os_unfair_lock_unlock(&self->_lock);

  return v6;
}

- (BOOL)browseProvisioningBankAppsEnabledForRegion:(id)region
{
  regionCopy = region;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(PKPaymentWebServiceConfiguration *)self _lock_region:regionCopy];

  LOBYTE(regionCopy) = [v5 PKBoolForKey:@"BrowseProvisioningBankAppsEnabled"];
  os_unfair_lock_unlock(&self->_lock);
  if (regionCopy)
  {
    v6 = 1;
  }

  else
  {
    v6 = PKForceBrowseBankPartners();
  }

  return v6;
}

- (id)marketGeoRegionNotificationTimeRangeForRegion:(id)region
{
  regionCopy = region;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(PKPaymentWebServiceConfiguration *)self _lock_region:regionCopy];

  v6 = [v5 PKNumberForKey:@"MarketGeoRegionNotificationTimeRange"];
  os_unfair_lock_unlock(&self->_lock);

  return v6;
}

- (id)marketGeoRegionNotificationNetworkThresholdsForRegion:(id)region
{
  regionCopy = region;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(PKPaymentWebServiceConfiguration *)self _lock_region:regionCopy];

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

- (double)deviceCheckInIntervalForRegion:(id)region
{
  regionCopy = region;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(PKPaymentWebServiceConfiguration *)self _lock_region:regionCopy];

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

- (BOOL)deviceCheckInDisabledForRegion:(id)region
{
  regionCopy = region;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(PKPaymentWebServiceConfiguration *)self _lock_region:regionCopy];

  LOBYTE(regionCopy) = [v5 PKBoolForKey:@"DeviceCheckInDisabled"];
  os_unfair_lock_unlock(&self->_lock);

  return regionCopy;
}

- (BOOL)shouldEnableTransitServiceCheckInForRegion:(id)region
{
  regionCopy = region;
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
    v7 = [(PKPaymentWebServiceConfiguration *)self _lock_region:regionCopy];
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

- (id)relayServerHostForRegion:(id)region
{
  v3 = [(PKPaymentWebServiceConfiguration *)self featureWithType:5 inRegion:region];
  relayServerHost = [v3 relayServerHost];
  v5 = PKSharingRelayServerURLForCurrentEnvironment(relayServerHost);

  return v5;
}

- (id)allowedRelayServerHostsForRegion:(id)region
{
  regionCopy = region;
  v5 = [(PKPaymentWebServiceConfiguration *)self featureWithType:5 inRegion:regionCopy];
  allowedRelayServerHosts = [v5 allowedRelayServerHosts];
  v7 = objc_alloc(MEMORY[0x1E695DFA8]);
  v8 = [(PKPaymentWebServiceConfiguration *)self relayServerHostsToHandleUniversalLinksForRegion:regionCopy];

  v9 = [v7 initWithArray:v8];
  if (allowedRelayServerHosts)
  {
    [v9 addObjectsFromArray:allowedRelayServerHosts];
  }

  [v9 addObject:@"wallet.apple.com"];
  allObjects = [v9 allObjects];

  return allObjects;
}

- (id)relayServerHostsToHandleUniversalLinksForRegion:(id)region
{
  v3 = [(PKPaymentWebServiceConfiguration *)self featureWithType:5 inRegion:region];
  relayServerHostsToHandleUniversalLinks = [v3 relayServerHostsToHandleUniversalLinks];
  v5 = [relayServerHostsToHandleUniversalLinks mutableCopy];
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

  relayServerHost = [v3 relayServerHost];
  [v8 safelyAddObject:relayServerHost];

  v10 = PKSharingRelayServerURLs();
  [v8 addObjectsFromArray:v10];

  v11 = [v8 copy];

  return v11;
}

- (double)dynamicAssetPrefetchTimeIntervalForRegion:(id)region
{
  regionCopy = region;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(PKPaymentWebServiceConfiguration *)self _lock_region:regionCopy];

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

- (double)howToUseWalletAssetPrefetchTimeIntervalForRegion:(id)region
{
  regionCopy = region;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(PKPaymentWebServiceConfiguration *)self _lock_region:regionCopy];

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

- (double)cashStickersAssetPrefetchTimeIntervalForRegion:(id)region
{
  regionCopy = region;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(PKPaymentWebServiceConfiguration *)self _lock_region:regionCopy];

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

- (double)paymentSetupFeaturesCacheUpdateIntervalForRegion:(id)region
{
  regionCopy = region;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(PKPaymentWebServiceConfiguration *)self _lock_region:regionCopy];

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

- (double)paymentOfferCatalogVersionChangeUpdatePeriodForRegion:(id)region
{
  regionCopy = region;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(PKPaymentWebServiceConfiguration *)self _lock_region:regionCopy];

  v6 = [v5 PKNumberForKey:@"paymentOfferCatalogVersionChangeUpdatePeriod"];
  os_unfair_lock_unlock(&self->_lock);
  [v6 doubleValue];
  v8 = v7;

  return v8;
}

- (int64_t)paymentOfferCatalogVersionForRegion:(id)region
{
  regionCopy = region;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(PKPaymentWebServiceConfiguration *)self _lock_region:regionCopy];

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
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  os_unfair_lock_unlock(&self->_lock);

  return bOOLValue;
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

- (BOOL)provisioningProximityVerificationInSetupAssistantEnabledForRegion:(id)region
{
  regionCopy = region;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(PKPaymentWebServiceConfiguration *)self _lock_region:regionCopy];

  v6 = [v5 PKNumberForKey:@"ProximityVerificationInSetupAssistantEnabled"];
  v7 = v6;
  if (v6)
  {
    bOOLValue = [v6 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  os_unfair_lock_unlock(&self->_lock);

  return bOOLValue;
}

- (id)_regionsForOSVersion:(id)version deviceClass:(id)class platform:(id)platform supportedRegions:(BOOL)regions
{
  v29 = *MEMORY[0x1E69E9840];
  versionCopy = version;
  classCopy = class;
  platformCopy = platform;
  os_unfair_lock_lock(&self->_lock);
  if (regions)
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
        if (v20 && [(PKPaymentWebServiceConfiguration *)self _lock_supportedForOSVersion:versionCopy inRegionDictionary:v20 deviceClass:classCopy platform:platformCopy])
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

- (BOOL)_lock_supportedForOSVersion:(id)version inRegionDictionary:(id)dictionary deviceClass:(id)class platform:(id)platform
{
  versionCopy = version;
  classCopy = class;
  platformCopy = platform;
  if (dictionary)
  {
    v12 = [dictionary objectForKey:@"minimumOSVersion"];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
      v15 = v14;
      if (platformCopy)
      {
        v16 = [v14 objectForKey:platformCopy];

        v15 = v16;
      }

      v17 = [v15 objectForKey:classCopy];
      v18 = v17;
      if (v17)
      {
        v19 = ([v17 compare:versionCopy options:64] + 1) < 2;
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

- (id)_lock_region:(id)_lock_region
{
  v11 = *MEMORY[0x1E69E9840];
  _lock_regionCopy = _lock_region;
  _lock_regions = [(PKPaymentWebServiceConfiguration *)self _lock_regions];
  v6 = [_lock_regions objectForKey:_lock_regionCopy];

  if (!v6)
  {
    v7 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412290;
      v10 = _lock_regionCopy;
      _os_log_error_impl(&dword_1AD337000, v7, OS_LOG_TYPE_ERROR, "Region %@ requested but no region data found!", &v9, 0xCu);
    }
  }

  return v6;
}

- (id)_lock_unsupported_region:(id)_lock_unsupported_region
{
  _lock_unsupported_regionCopy = _lock_unsupported_region;
  _lock_unsupported_regions = [(PKPaymentWebServiceConfiguration *)self _lock_unsupported_regions];
  v6 = [_lock_unsupported_regions objectForKey:_lock_unsupported_regionCopy];

  return v6;
}

@end