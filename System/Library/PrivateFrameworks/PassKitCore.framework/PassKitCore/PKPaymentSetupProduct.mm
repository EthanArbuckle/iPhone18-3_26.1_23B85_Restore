@interface PKPaymentSetupProduct
+ (id)_displayNameForCardType:(id)a3;
+ (id)_inAppProvisioningURLWthScheme:(id)a3 path:(id)a4;
+ (id)productForIssuerProvisioningExtension:(id)a3 withStatus:(id)a4;
+ (id)productsFromBrowseableBankApps:(id)a3;
- (BOOL)hasPaymentOptionMatching:(int64_t)a3;
- (BOOL)isCarKey;
- (BOOL)supportsDevice:(id)a3;
- (BOOL)supportsDeviceOS:(id)a3;
- (BOOL)supportsOSVersion:(id)a3 deviceClass:(id)a4 minimumOSVersion:(id)a5;
- (BOOL)supportsSetupProductMethodForType:(unint64_t)a3;
- (BOOL)updateSupportWithOSVersion:(id)a3 deviceClass:(id)a4 deviceRegion:(id)a5 deviceVersion:(id)a6;
- (NSString)badge;
- (NSString)displayName;
- (NSString)displayStatus;
- (NSString)longLocalizedDescription;
- (NSString)partnerName;
- (PKPaymentSetupProduct)initWithFeatureIdentifier:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)partnerIdentifier;
- (id)productIdentifier;
- (id)provisioningMethodMetadataForMethod:(id)a3;
- (id)provisioningMethodMetadataForType:(id)a3;
- (id)provisioningMethodTypes;
- (id)setupProductMethodOfType:(unint64_t)a3 withIdentifier:(id)a4;
- (id)setupProductMethodsOfType:(unint64_t)a3;
- (int64_t)allSupportedProtocols;
- (int64_t)primaryCredentialType;
- (unint64_t)supportedProvisioningMethods;
- (void)_updateDebugConfigurationForState:(unint64_t)a3;
- (void)addSetupProductMethod:(id)a3;
- (void)augmentWithProduct:(id)a3;
- (void)didAuthorizeProvisioningExtension;
- (void)setProvisioningMethodMetadata:(id)a3 forMethod:(id)a4;
- (void)setProvisioningMethodMetadata:(id)a3 forType:(id)a4;
- (void)updateWithProductDictionary:(id)a3;
@end

@implementation PKPaymentSetupProduct

- (BOOL)hasPaymentOptionMatching:(int64_t)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_paymentOptions;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if ([*(*(&v11 + 1) + 8 * i) cardType] == a3)
        {
          v9 = 1;
          goto LABEL_11;
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  return v9;
}

- (void)updateWithProductDictionary:(id)a3
{
  v161 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    setupProductMethods = self->_setupProductMethods;
    self->_setupProductMethods = 0;
  }

  v6 = [[PKPaymentSetupProductConfiguration alloc] initWithProductDictionary:v4];
  configuration = self->_configuration;
  self->_configuration = v6;

  v8 = [v4 PKStringForKey:@"localizedDescription"];
  localizedDescription = self->_localizedDescription;
  self->_localizedDescription = v8;

  v10 = [v4 PKStringForKey:@"longLocalizedDescription"];
  longLocalizedDescription = self->_longLocalizedDescription;
  self->_longLocalizedDescription = v10;

  v12 = [v4 PKStringForKey:@"localizedProductName"];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = [v4 PKStringForKey:@"localizedDisplayName"];
  }

  displayName = self->_displayName;
  self->_displayName = v14;

  [v4 PKArrayForKey:@"partners"];
  v130 = v133 = v4;
  if (v130)
  {
    v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v150 = 0u;
    v151 = 0u;
    v152 = 0u;
    v153 = 0u;
    v17 = v130;
    v18 = [v17 countByEnumeratingWithState:&v150 objects:v160 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v151;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v151 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = [[PKPaymentSetupPartner alloc] initWithDictionary:*(*(&v150 + 1) + 8 * i)];
          if (v22)
          {
            [v16 addObject:v22];
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v150 objects:v160 count:16];
      }

      while (v19);
    }

    v23 = [v16 copy];
    partners = self->_partners;
    self->_partners = v23;
  }

  v25 = [v4 PKNumberForKey:@"minimumSupportedAge"];
  v26 = [v4 PKNumberForKey:@"maximumSupportedAge"];
  v127 = v25;
  self->_minimumSupportedAge = [v25 integerValue];
  v126 = v26;
  self->_maximumSupportedAge = [v26 integerValue];
  v125 = [v4 PKNumberForKey:@"minimumTargetUserSupportedAge"];
  self->_minimumTargetUserSupportedAge = [v125 integerValue];
  v27 = [v4 PKStringForKey:@"region"];
  v28 = [v27 componentsSeparatedByString:{@", "}];

  if (v28)
  {
    v29 = [v28 firstObject];
    primaryRegion = self->_primaryRegion;
    self->_primaryRegion = v29;

    v31 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v28];
    v32 = [v31 copy];
    regions = self->_regions;
    self->_regions = v32;
  }

  v124 = v28;
  v34 = [PKPaymentSetupProductRegionData alloc];
  v35 = [v4 PKDictionaryForKey:@"regionData"];
  v36 = [(PKPaymentSetupProductRegionData *)v34 initWithRegionDataDictionary:v35];
  regionData = self->_regionData;
  self->_regionData = v36;

  v38 = [v4 copy];
  rawDictionary = self->_rawDictionary;
  self->_rawDictionary = v38;

  v40 = [v4 PKURLForKey:@"termsURL"];
  v41 = [v40 copy];
  termsURL = self->_termsURL;
  self->_termsURL = v41;

  v43 = [v4 PKDictionaryForKey:@"readerModeMetadata"];
  v44 = [v43 copy];
  readerModeMetadata = self->_readerModeMetadata;
  self->_readerModeMetadata = v44;

  v46 = [v4 PKArrayContaining:objc_opt_class() forKey:@"capabilities"];
  self->_flags = PKPaymentProductFlagsFromArray(v46);

  v47 = [v4 PKStringForKey:@"hsa2Requirement"];
  self->_hsa2Requirement = PKPaymentSetupHSA2RequirementFromString(v47);

  v48 = [MEMORY[0x1E695DF70] array];
  v49 = [v4 PKArrayForKey:@"requiredFields"];
  v50 = [v49 count];

  v132 = self;
  v129 = v48;
  if (v50)
  {
    v51 = [MEMORY[0x1E695DF70] array];
    v146 = 0u;
    v147 = 0u;
    v148 = 0u;
    v149 = 0u;
    v52 = [v4 PKArrayContaining:objc_opt_class() forKey:@"requiredFields"];
    v53 = [v52 countByEnumeratingWithState:&v146 objects:v159 count:16];
    if (v53)
    {
      v54 = v53;
      v55 = *v147;
      do
      {
        for (j = 0; j != v54; ++j)
        {
          if (*v147 != v55)
          {
            objc_enumerationMutation(v52);
          }

          v57 = *(*(&v146 + 1) + 8 * j);
          v58 = [v4 PKDictionaryForKey:@"requiredFieldOptions"];
          v59 = [v58 PKDictionaryForKey:v57];

          v4 = v133;
          v60 = [PKPaymentSetupField paymentSetupFieldWithIdentifier:v57 configuration:v59];
          [v51 safelyAddObject:v60];
        }

        v54 = [v52 countByEnumeratingWithState:&v146 objects:v159 count:16];
      }

      while (v54);
    }

    v61 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v51];
    requiredFields = self->_requiredFields;
    self->_requiredFields = v61;

    v48 = v129;
  }

  v63 = [v4 PKArrayForKey:@"paymentOptions"];
  v142 = 0u;
  v143 = 0u;
  v144 = 0u;
  v145 = 0u;
  v64 = [v63 countByEnumeratingWithState:&v142 objects:v158 count:16];
  if (v64)
  {
    v65 = v64;
    v66 = *v143;
    do
    {
      for (k = 0; k != v65; ++k)
      {
        if (*v143 != v66)
        {
          objc_enumerationMutation(v63);
        }

        v68 = [[PKPaymentSetupProductPaymentOption alloc] initWithPaymentOptionDictionary:*(*(&v142 + 1) + 8 * k)];
        [v48 safelyAddObject:v68];
      }

      v65 = [v63 countByEnumeratingWithState:&v142 objects:v158 count:16];
    }

    while (v65);
  }

  [v48 sortUsingComparator:{&__block_literal_global_699_1, v63}];
  v69 = [v48 copy];
  paymentOptions = self->_paymentOptions;
  self->_paymentOptions = v69;

  v128 = [v4 PKArrayContaining:objc_opt_class() forKey:@"provisioningMethodDetailsList"];
  if (v128)
  {
    v71 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v138 = 0u;
    v139 = 0u;
    v140 = 0u;
    v141 = 0u;
    obj = v128;
    v72 = [obj countByEnumeratingWithState:&v138 objects:v157 count:16];
    if (v72)
    {
      v73 = v72;
      v74 = *v139;
      do
      {
        for (m = 0; m != v73; ++m)
        {
          if (*v139 != v74)
          {
            objc_enumerationMutation(obj);
          }

          v76 = *(*(&v138 + 1) + 8 * m);
          v77 = [v76 PKStringForKey:@"provisioningMethodType"];
          v78 = [(PKPaymentSetupProductConfiguration *)self->_configuration partnerIdentifier];
          v79 = [v77 isEqualToString:@"digitalIssuance"];
          v80 = off_1E79C1918;
          if (v79 & 1) != 0 || (v81 = [v77 isEqualToString:@"readerMode"], v80 = off_1E79C1928, (v81) || (v82 = objc_msgSend(v77, "isEqualToString:", @"appClip"), v80 = off_1E79C1900, (v82) || (v83 = objc_msgSend(v77, "isEqualToString:", @"inApp"), v80 = off_1E79C1920, (v83) || (v84 = objc_msgSend(v77, "isEqualToString:", @"cameraCapture"), v80 = off_1E79C1910, (v84) || (v85 = objc_msgSend(v77, "isEqualToString:", @"web"), v80 = off_1E79C1930, v85))
          {
            v86 = [objc_alloc(*v80) initWithDictionary:v76 partnerIdentifier:v78];
            [v71 safelyAddObject:v86];
          }

          self = v132;
        }

        v73 = [obj countByEnumeratingWithState:&v138 objects:v157 count:16];
      }

      while (v73);
    }

    v87 = [v71 copy];
    v88 = self->_setupProductMethods;
    self->_setupProductMethods = v87;

    v4 = v133;
  }

  self->_showOtherProviders = [v4 PKBoolForKey:@"showOtherProvidersForAppProvisioningMethod"];
  v89 = [PKPaymentSetupProductImageAssetURLs alloc];
  v90 = [v4 PKDictionaryForKey:@"imageAssets"];
  v91 = [(PKPaymentSetupProductImageAssetURLs *)v89 initWithImageAssetsDictionary:v90];
  imageAssetURLs = self->_imageAssetURLs;
  self->_imageAssetURLs = v91;

  v93 = objc_alloc_init(PKPaymentSetupProductImageAssets);
  imageAssets = self->_imageAssets;
  self->_imageAssets = v93;

  v95 = [v4 PKDictionaryForKey:@"minimumOSVersion"];
  if (v95)
  {
    v96 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v154[0] = MEMORY[0x1E69E9820];
    v154[1] = 3221225472;
    v154[2] = __PKPaymentMinOSDictionaryFromDictionary_block_invoke;
    v154[3] = &unk_1E79C8F58;
    v155 = v96;
    v97 = v96;
    [v95 enumerateKeysAndObjectsUsingBlock:v154];
    v98 = [v97 copy];
  }

  else
  {
    v98 = 0;
  }

  minimumOSVersion = self->_minimumOSVersion;
  self->_minimumOSVersion = v98;

  v100 = [v4 PKArrayContaining:objc_opt_class() forKey:@"supportedTransitNetworkIdentifiers"];
  supportedTransitNetworkIdentifiers = self->_supportedTransitNetworkIdentifiers;
  self->_supportedTransitNetworkIdentifiers = v100;

  self->_suppressPendingPurchases = [v4 PKBoolForKey:@"suppressPendingPurchases"];
  v102 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v103 = [v4 PKArrayForKey:@"onboardingItems"];
  v104 = v103;
  if (v103)
  {
    v136 = 0u;
    v137 = 0u;
    v134 = 0u;
    v135 = 0u;
    v105 = [v103 countByEnumeratingWithState:&v134 objects:v156 count:16];
    if (v105)
    {
      v106 = v105;
      v107 = 0;
      v108 = *v135;
      do
      {
        v109 = 0;
        v110 = v107;
        do
        {
          if (*v135 != v108)
          {
            objc_enumerationMutation(v104);
          }

          v111 = [[PKDynamicProvisioningPageContent alloc] initWithDictonary:*(*(&v134 + 1) + 8 * v109)];
          v107 = v110 + 1;
          [(PKDynamicProvisioningPageContent *)v111 setPageNumber:v110];
          [v102 addObject:v111];

          ++v109;
          ++v110;
        }

        while (v106 != v109);
        v106 = [v104 countByEnumeratingWithState:&v134 objects:v156 count:16];
      }

      while (v106);
    }
  }

  v112 = [v102 copy];
  onboardingItems = v132->_onboardingItems;
  v132->_onboardingItems = v112;

  v114 = [v133 PKStringForKey:@"registrationRegionIdentifier"];
  v115 = [v114 copy];
  regionIdentifier = v132->_regionIdentifier;
  v132->_regionIdentifier = v115;

  v117 = [v133 PKStringForKey:@"criteriaIdentifier"];
  criteriaIdentifier = v132->_criteriaIdentifier;
  v132->_criteriaIdentifier = v117;

  v119 = [v133 PKDictionaryForKey:@"clientInfo"];
  clientInfo = v132->_clientInfo;
  v132->_clientInfo = v119;

  v121 = [v133 PKArrayContaining:objc_opt_class() forKey:@"searchTerms"];
  searchTerms = v132->_searchTerms;
  v132->_searchTerms = v121;

  v132->_allowOnManagedAccount = [v133 PKBoolForKey:@"allowOnManagedAccount"];
}

uint64_t __53__PKPaymentSetupProduct_updateWithProductDictionary___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 priority];
  if (v6 >= [v5 priority])
  {
    v8 = [v4 priority];
    v7 = v8 > [v5 priority];
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

- (int64_t)primaryCredentialType
{
  v2 = [(NSArray *)self->_paymentOptions firstObject];
  v3 = [v2 cardType];

  return v3;
}

- (void)addSetupProductMethod:(id)a3
{
  v4 = a3;
  if (v4)
  {
    setupProductMethods = self->_setupProductMethods;
    v10 = v4;
    if (!setupProductMethods)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DEC8]);
      v7 = self->_setupProductMethods;
      self->_setupProductMethods = v6;

      setupProductMethods = self->_setupProductMethods;
    }

    v8 = [(NSArray *)setupProductMethods arrayByAddingObject:v10];
    v9 = self->_setupProductMethods;
    self->_setupProductMethods = v8;

    v4 = v10;
  }
}

- (BOOL)supportsSetupProductMethodForType:(unint64_t)a3
{
  v18 = *MEMORY[0x1E69E9840];
  if (!a3 && ![(NSArray *)self->_setupProductMethods count])
  {
    return 1;
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_setupProductMethods;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([v10 type] == a3 && (objc_msgSend(v10, "isSupported") & 1) != 0)
        {
          v11 = 1;
          goto LABEL_14;
        }
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_14:

  return v11;
}

- (id)setupProductMethodsOfType:(unint64_t)a3
{
  v19 = *MEMORY[0x1E69E9840];
  if (a3 || [(NSArray *)self->_setupProductMethods count])
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = self->_setupProductMethods;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v14 + 1) + 8 * i);
          if ([v11 type] == a3 && objc_msgSend(v11, "isSupported"))
          {
            [v5 addObject:v11];
          }
        }

        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }

    if ([v5 count])
    {
      v12 = [v5 copy];
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

  return v12;
}

- (id)setupProductMethodOfType:(unint64_t)a3 withIdentifier:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (a3)
  {
    if ([(NSArray *)self->_setupProductMethods count])
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v7 = self->_setupProductMethods;
      v8 = [(NSArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
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

            v12 = *(*(&v16 + 1) + 8 * i);
            if ([v12 type] == a3)
            {
              v13 = [v12 partnerIdentifier];
              if ([v13 isEqualToString:v6])
              {
                v14 = [v12 isSupported];

                if (v14)
                {
                  a3 = v12;
                  goto LABEL_17;
                }
              }

              else
              {
              }
            }
          }

          v9 = [(NSArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v9);
      }

      a3 = 0;
LABEL_17:
    }

    else
    {
      a3 = 0;
    }
  }

  return a3;
}

- (PKPaymentSetupProduct)initWithFeatureIdentifier:(unint64_t)a3
{
  v4 = [(PKPaymentSetupProduct *)self init];
  v5 = v4;
  if (v4)
  {
    [(PKPaymentSetupProduct *)v4 updateWithProductDictionary:0];
    if (a3 > 1)
    {
      if (a3 != 5)
      {
        if (a3 == 2)
        {
          [(PKPaymentSetupProductConfiguration *)v5->_configuration setProductIdentifier:@"3-argon-CCS"];
          v5->_isServerDriven = 1;
        }

        goto LABEL_12;
      }

      configuration = v5->_configuration;
      v7 = @"savings";
    }

    else if (a3)
    {
      if (a3 != 1)
      {
LABEL_12:
        [(PKPaymentSetupProductConfiguration *)v5->_configuration setFeatureIdentifier:a3];
        [(PKPaymentSetupProductConfiguration *)v5->_configuration setType:7];
        [(PKPaymentSetupProductConfiguration *)v5->_configuration setState:0];
        return v5;
      }

      configuration = v5->_configuration;
      v7 = @"peerPayment";
    }

    else
    {
      configuration = v5->_configuration;
      v7 = @"unknown";
    }

    [(PKPaymentSetupProductConfiguration *)configuration setProductIdentifier:v7];
    goto LABEL_12;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[PKPaymentSetupProduct allocWithZone:](PKPaymentSetupProduct init];
  v6 = [(PKPaymentSetupProductConfiguration *)self->_configuration copyWithZone:a3];
  configuration = v5->_configuration;
  v5->_configuration = v6;

  v8 = [(NSString *)self->_displayName copyWithZone:a3];
  displayName = v5->_displayName;
  v5->_displayName = v8;

  v10 = [(NSString *)self->_localizedDescription copyWithZone:a3];
  localizedDescription = v5->_localizedDescription;
  v5->_localizedDescription = v10;

  v12 = [(NSSet *)self->_regions copyWithZone:a3];
  regions = v5->_regions;
  v5->_regions = v12;

  v14 = [(PKPaymentSetupProductRegionData *)self->_regionData copyWithZone:a3];
  regionData = v5->_regionData;
  v5->_regionData = v14;

  v16 = [(NSArray *)self->_requiredFields copyWithZone:a3];
  requiredFields = v5->_requiredFields;
  v5->_requiredFields = v16;

  v18 = [(NSArray *)self->_supportedProtocols copyWithZone:a3];
  supportedProtocols = v5->_supportedProtocols;
  v5->_supportedProtocols = v18;

  v20 = [(NSURL *)self->_termsURL copyWithZone:a3];
  termsURL = v5->_termsURL;
  v5->_termsURL = v20;

  v22 = [(NSDictionary *)self->_minimumOSVersion copyWithZone:a3];
  minimumOSVersion = v5->_minimumOSVersion;
  v5->_minimumOSVersion = v22;

  v24 = [(NSArray *)self->_setupProductMethods copyWithZone:a3];
  setupProductMethods = v5->_setupProductMethods;
  v5->_setupProductMethods = v24;

  v26 = [(NSArray *)self->_paymentOptions copyWithZone:a3];
  paymentOptions = v5->_paymentOptions;
  v5->_paymentOptions = v26;

  v28 = [(NSDictionary *)self->_rawDictionary copyWithZone:a3];
  rawDictionary = v5->_rawDictionary;
  v5->_rawDictionary = v28;

  v30 = [(NSDictionary *)self->_readerModeMetadata copyWithZone:a3];
  readerModeMetadata = v5->_readerModeMetadata;
  v5->_readerModeMetadata = v30;

  v5->_flags = self->_flags;
  v5->_hsa2Requirement = self->_hsa2Requirement;
  v32 = [(NSMutableDictionary *)self->_requestedProvisioningMethods mutableCopyWithZone:a3];
  requestedProvisioningMethods = v5->_requestedProvisioningMethods;
  v5->_requestedProvisioningMethods = v32;

  v34 = [(PKPaymentSetupProductImageAssets *)self->_imageAssets copyWithZone:a3];
  imageAssets = v5->_imageAssets;
  v5->_imageAssets = v34;

  v36 = [(PKPaymentSetupProductImageAssetURLs *)self->_imageAssetURLs copyWithZone:a3];
  imageAssetURLs = v5->_imageAssetURLs;
  v5->_imageAssetURLs = v36;

  v38 = [(NSArray *)self->_supportedTransitNetworkIdentifiers copyWithZone:a3];
  supportedTransitNetworkIdentifiers = v5->_supportedTransitNetworkIdentifiers;
  v5->_supportedTransitNetworkIdentifiers = v38;

  v5->_preventsFeatureApplication = self->_preventsFeatureApplication;
  v5->_provisioningStatus = self->_provisioningStatus;
  v40 = [(NSArray *)self->_featureApplications copyWithZone:a3];
  featureApplications = v5->_featureApplications;
  v5->_featureApplications = v40;

  v42 = [(NSArray *)self->_accounts copyWithZone:a3];
  accounts = v5->_accounts;
  v5->_accounts = v42;

  v5->_suppressPendingPurchases = self->_suppressPendingPurchases;
  v44 = [(NSArray *)self->_onboardingItems copyWithZone:a3];
  onboardingItems = v5->_onboardingItems;
  v5->_onboardingItems = v44;

  v5->_minimumSupportedAge = self->_minimumSupportedAge;
  v5->_maximumSupportedAge = self->_maximumSupportedAge;
  v5->_minimumTargetUserSupportedAge = self->_minimumTargetUserSupportedAge;
  v5->_meetsAgeRequirements = self->_meetsAgeRequirements;
  v46 = [(NSDictionary *)self->_clientInfo copyWithZone:a3];
  clientInfo = v5->_clientInfo;
  v5->_clientInfo = v46;

  v48 = [(NSArray *)self->_searchTerms copyWithZone:a3];
  searchTerms = v5->_searchTerms;
  v5->_searchTerms = v48;

  v5->_allowOnManagedAccount = self->_allowOnManagedAccount;
  v5->_supportedProvisioningMethods = self->_supportedProvisioningMethods;
  v50 = [(NSString *)self->_criteriaIdentifier copyWithZone:a3];
  criteriaIdentifier = v5->_criteriaIdentifier;
  v5->_criteriaIdentifier = v50;

  v5->_showOtherProviders = self->_showOtherProviders;
  return v5;
}

- (NSString)partnerName
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = [(PKPaymentSetupProduct *)self partnerIdentifier];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = self->_partners;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = [v9 identifier];
        v11 = [v10 isEqualToString:v3];

        if (v11)
        {
          v13 = [v9 displayName];
          goto LABEL_12;
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v12 = [(NSDictionary *)self->_rawDictionary PKStringForKey:@"localizedProductName"];
  if (v12)
  {
    v13 = v12;
    v4 = v13;
LABEL_12:
    v14 = v13;
  }

  else
  {
    v14 = [(NSDictionary *)self->_rawDictionary PKStringForKey:@"localizedDisplayName"];
    v4 = 0;
  }

  return v14;
}

- (int64_t)allSupportedProtocols
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = self->_paymentOptions;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v5 |= [*(*(&v9 + 1) + 8 * i) supportedProtocols];
      }

      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)provisioningMethodMetadataForMethod:(id)a3
{
  if (a3)
  {
    v4 = [a3 identifier];
    v5 = [(NSMutableDictionary *)self->_requestedProvisioningMethods objectForKey:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)provisioningMethodMetadataForType:(id)a3
{
  v4 = PKSetupProductMethodTypeFromString(a3);
  setupProductMethods = self->_setupProductMethods;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __59__PKPaymentSetupProduct_provisioningMethodMetadataForType___block_invoke;
  v9[3] = &__block_descriptor_40_e30_B16__0__PKSetupProductMethod_8l;
  v9[4] = v4;
  v6 = [(NSArray *)setupProductMethods pk_firstObjectPassingTest:v9];
  if (v6)
  {
    v7 = [(PKPaymentSetupProduct *)self provisioningMethodMetadataForMethod:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setProvisioningMethodMetadata:(id)a3 forMethod:(id)a4
{
  v11 = a3;
  v6 = a4;
  if (!self->_requestedProvisioningMethods)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    requestedProvisioningMethods = self->_requestedProvisioningMethods;
    self->_requestedProvisioningMethods = v7;
  }

  v9 = [v6 identifier];
  v10 = self->_requestedProvisioningMethods;
  if (v11)
  {
    [(NSMutableDictionary *)v10 setObject:v11 forKey:v9];
  }

  else
  {
    [(NSMutableDictionary *)v10 removeObjectForKey:v9];
  }
}

- (void)setProvisioningMethodMetadata:(id)a3 forType:(id)a4
{
  v6 = a3;
  v7 = PKSetupProductMethodTypeFromString(a4);
  setupProductMethods = self->_setupProductMethods;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __63__PKPaymentSetupProduct_setProvisioningMethodMetadata_forType___block_invoke;
  v10[3] = &__block_descriptor_40_e30_B16__0__PKSetupProductMethod_8l;
  v10[4] = v7;
  v9 = [(NSArray *)setupProductMethods pk_firstObjectPassingTest:v10];
  if (v9)
  {
    [(PKPaymentSetupProduct *)self setProvisioningMethodMetadata:v6 forMethod:v9];
  }
}

- (NSString)displayName
{
  displayName = self->_displayName;
  if (displayName)
  {
    v3 = displayName;
    goto LABEL_14;
  }

  v5 = [(PKPaymentSetupProductConfiguration *)self->_configuration featureIdentifier];
  if (v5 == 4)
  {
    v11 = @"APPLY_FLOW_NEW_APPLICATION_TITLE";
    v12 = 4;
  }

  else
  {
    if (v5 != 2)
    {
      v3 = 0;
      goto LABEL_14;
    }

    if ([(NSArray *)self->_featureApplications count])
    {
      v11 = @"APPLY_FLOW_RESUME_APPLICATION_TITLE";
    }

    else if ([(NSArray *)self->_accounts count])
    {
      v11 = @"APPLY_FLOW_NEW_APPLICATION_WITH_ACCOUNT_TITLE";
    }

    else
    {
      v11 = @"APPLY_FLOW_NEW_APPLICATION_TITLE";
    }

    v12 = 2;
  }

  v3 = PKLocalizedFeatureString(v11, v12, 0, v6, v7, v8, v9, v10, v14);
LABEL_14:

  return v3;
}

- (NSString)longLocalizedDescription
{
  longLocalizedDescription = self->_longLocalizedDescription;
  if (!longLocalizedDescription)
  {
    v4 = [(PKPaymentSetupProductConfiguration *)self->_configuration type];
    if (v4 != 3)
    {
      if (v4 == 7)
      {
        if ([(PKPaymentSetupProductConfiguration *)self->_configuration featureIdentifier]== 4)
        {
          v6 = PKLocalizedAppleBalanceString(&cfstr_AppleAccountBo.isa, 0);
LABEL_10:
          v7 = self->_longLocalizedDescription;
          self->_longLocalizedDescription = v6;
        }
      }

      else if (v4 == 4)
      {
        v5 = @"PAYMENT_SETUP_EMONEY_LONG_DESCRIPTION";
LABEL_9:
        v6 = PKLocalizedPaymentString(&v5->isa, 0);
        goto LABEL_10;
      }

      longLocalizedDescription = self->_longLocalizedDescription;
      goto LABEL_12;
    }

    v5 = @"PAYMENT_SETUP_TRANSIT_LONG_DESCRIPTION";
    goto LABEL_9;
  }

LABEL_12:
  v8 = longLocalizedDescription;

  return v8;
}

- (NSString)displayStatus
{
  if ([(PKPaymentSetupProductConfiguration *)self->_configuration type]!= 10)
  {
    v3 = 0;
    goto LABEL_30;
  }

  v3 = 0;
  provisioningStatus = self->_provisioningStatus;
  if (provisioningStatus > 5)
  {
    if (provisioningStatus <= 7)
    {
      if (provisioningStatus == 6)
      {
        v5 = @"CARD_TYPE_IDENTITY_RETRY_ADDING";
      }

      else if (PKUseWLAN())
      {
        v5 = @"CARD_TYPE_IDENTITY_WAITING_WLAN";
      }

      else
      {
        v5 = @"CARD_TYPE_IDENTITY_WAITING_WIFI";
      }
    }

    else
    {
      switch(provisioningStatus)
      {
        case 8:
          v5 = @"CARD_TYPE_IDENTITY_UNABLE_TO_ADD";
          break;
        case 9:
          v5 = @"CARD_TYPE_IDENTITY_CANNOT_ADD";
          break;
        case 10:
          v5 = @"CARD_TYPE_IDENTITY_LIVENESS_STEP_UP";
          break;
        default:
          goto LABEL_30;
      }
    }

    goto LABEL_28;
  }

  if (provisioningStatus <= 2)
  {
    if (provisioningStatus == 1)
    {
      v5 = @"CARD_TYPE_IDENTITY_PENDING";
    }

    else
    {
      if (provisioningStatus != 2)
      {
        goto LABEL_30;
      }

      v5 = @"CARD_TYPE_IDENTITY_ACTION_REQUIRED";
    }

    goto LABEL_28;
  }

  if (provisioningStatus != 3)
  {
    if (provisioningStatus == 4)
    {
      v5 = @"CARD_TYPE_IDENTITY_AUTH_CODE";
    }

    else
    {
      v5 = @"CARD_TYPE_IDENTITY_RETRY_AUTH_CODE";
    }

    goto LABEL_28;
  }

  if ([(PKPaymentSetupProduct *)self primaryCredentialType]== 129)
  {
    v5 = @"CARD_TYPE_IDENTITY_READY";
LABEL_28:
    PKLocalizedIdentityString(&v5->isa, 0);
    goto LABEL_29;
  }

  PKLocalizedIdentityString(&cfstr_CardTypeIdenti_2.isa, &stru_1F2281668.isa, self->_displayName);
  v3 = LABEL_29:;
LABEL_30:

  return v3;
}

- (NSString)badge
{
  if ([(PKPaymentSetupProductConfiguration *)self->_configuration type]!= 10 || ((provisioningStatus = self->_provisioningStatus, v4 = provisioningStatus > 0xA, v5 = (1 << provisioningStatus) & 0x77C, !v4) ? (v6 = v5 == 0) : (v6 = 1), v6))
  {
    v7 = 0;
  }

  else
  {
    v7 = [MEMORY[0x1E696ADA0] localizedStringFromNumber:&unk_1F23B58E8 numberStyle:0];
  }

  return v7;
}

- (id)provisioningMethodTypes
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_setupProductMethods;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = PKPaymentSupportedProvisioningMethodToString([*(*(&v12 + 1) + 8 * i) type]);
        if (v9)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [v3 copy];

  return v10;
}

- (unint64_t)supportedProvisioningMethods
{
  v17 = *MEMORY[0x1E69E9840];
  self->_supportedProvisioningMethods = 0;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = self->_setupProductMethods;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v12 + 1) + 8 * v7) type] - 1;
        if (v8 <= 7 && ((0xF3u >> v8) & 1) != 0)
        {
          self->_supportedProvisioningMethods |= qword_1ADB9B4F8[v8];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  supportedProvisioningMethods = self->_supportedProvisioningMethods;
  v10 = [(PKPaymentSetupProductConfiguration *)self->_configuration type];
  if (v10 == 7)
  {
    if ([(PKPaymentSetupProductConfiguration *)self->_configuration featureIdentifier]== 2)
    {
      return 4;
    }

    else
    {
      return supportedProvisioningMethods;
    }
  }

  else if (v10 == 5)
  {
    return 16;
  }

  else
  {
    return supportedProvisioningMethods;
  }
}

- (BOOL)supportsOSVersion:(id)a3 deviceClass:(id)a4 minimumOSVersion:(id)a5
{
  v7 = a3;
  if (a5)
  {
    v8 = [a5 objectForKey:a4];
    v9 = v8;
    if (v8)
    {
      v10 = ([v8 compare:v7 options:64] + 1) < 2;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (BOOL)updateSupportWithOSVersion:(id)a3 deviceClass:(id)a4 deviceRegion:(id)a5 deviceVersion:(id)a6
{
  v34 = *MEMORY[0x1E69E9840];
  v10 = a4;
  v28 = a5;
  v11 = a6;
  v12 = [(PKPaymentSetupProduct *)self supportsOSVersion:a3 deviceClass:v10 minimumOSVersion:self->_minimumOSVersion];
  v13 = v12;
  if (v12)
  {
    v27 = v12;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v14 = [(PKPaymentSetupProduct *)self setupProductMethods];
    v15 = [v14 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v30;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v30 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v29 + 1) + 8 * i);
          v20 = [v19 requiredOSVersionRange];
          v21 = v20;
          v22 = 1;
          if (v10 && v11 && v20)
          {
            v22 = [v20 versionMeetsRequirements:v11 deviceClass:v10];
          }

          v23 = [v19 regions];
          v24 = v23;
          if (v23)
          {
            v25 = [v23 containsObject:v28];
          }

          else
          {
            v25 = 1;
          }

          [v19 setSupported:v22 & v25];
        }

        v16 = [v14 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v16);
    }

    v13 = v27;
  }

  return v13;
}

- (BOOL)supportsDevice:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 deviceVersion];
  v6 = [v4 deviceClass];
  v7 = [v4 deviceRegion];
  if (objc_opt_respondsToSelector())
  {
    v8 = [v4 cellularNetworkRegion];
  }

  else
  {
    v8 = 0;
  }

  v9 = [v5 versionForDeviceClass:v6];
  v10 = [v4 deviceVersion];
  v11 = [(PKPaymentSetupProduct *)self updateSupportWithOSVersion:v9 deviceClass:v6 deviceRegion:v7 deviceVersion:v10];

  if (v11 && (v7 && -[NSSet containsObject:](self->_regions, "containsObject:", v7) || v8 && -[NSSet containsObject:](self->_regions, "containsObject:", v8)) && ((-[PKPaymentSetupProduct allSupportedProtocols](self, "allSupportedProtocols") & 4) == 0 || [v4 felicaSecureElementIsAvailable]))
  {
    if (objc_opt_respondsToSelector())
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v12 = [(PKPaymentSetupProduct *)self paymentOptions];
      v13 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v13)
      {
        v14 = *v18;
        while (2)
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v18 != v14)
            {
              objc_enumerationMutation(v12);
            }

            if ([v4 supportsCredentialType:{objc_msgSend(*(*(&v17 + 1) + 8 * i), "cardType")}])
            {
              LOBYTE(v13) = 1;
              goto LABEL_25;
            }
          }

          v13 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
          if (v13)
          {
            continue;
          }

          break;
        }
      }

LABEL_25:
    }

    else
    {
      LOBYTE(v13) = 1;
    }
  }

  else
  {
    LOBYTE(v13) = 0;
  }

  return v13;
}

- (BOOL)supportsDeviceOS:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 deviceVersion];
  v6 = [v4 deviceClass];
  v7 = [v5 versionForDeviceClass:v6];
  if ([(PKPaymentSetupProduct *)self supportsOSVersion:v7 deviceClass:v6 minimumOSVersion:self->_minimumOSVersion])
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = [(PKPaymentSetupProduct *)self setupProductMethods];
    v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v20;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v19 + 1) + 8 * i) requiredOSVersionRange];
          v14 = v13;
          if (!v6 || (v13 ? (v15 = v5 == 0) : (v15 = 1), v15))
          {
          }

          else
          {
            v16 = [v13 versionMeetsRequirements:v5 deviceClass:v6];

            if (!v16)
            {
              v17 = 0;
              goto LABEL_19;
            }
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v10);
    }

    v17 = 1;
LABEL_19:
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (void)augmentWithProduct:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    objc_storeStrong(&self->_augmentedProduct, a3);
    v6 = [v5 onboardingItems];
    if (v6)
    {
      v7 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        onboardingItems = self->_onboardingItems;
        v9 = 138412546;
        v10 = onboardingItems;
        v11 = 2112;
        v12 = v6;
        _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "augmentWithProduct: Replacing old onboardingItems (%@) with new onboardingItems (%@)", &v9, 0x16u);
      }

      objc_storeStrong(&self->_onboardingItems, v6);
    }
  }

  else
  {
    v6 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = self;
      _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "Invalid request to augment self with nil augmenting product: %@", &v9, 0xCu);
    }
  }
}

- (BOOL)isCarKey
{
  v2 = [(PKPaymentSetupProduct *)self configuration];
  v3 = [v2 type] == 11;

  return v3;
}

- (id)productIdentifier
{
  v2 = [(PKPaymentSetupProduct *)self configuration];
  v3 = [v2 productIdentifier];

  return v3;
}

- (id)partnerIdentifier
{
  v2 = [(PKPaymentSetupProduct *)self configuration];
  v3 = [v2 partnerIdentifier];

  return v3;
}

- (void)_updateDebugConfigurationForState:(unint64_t)a3
{
  v14[2] = *MEMORY[0x1E69E9840];
  [(PKPaymentSetupProductConfiguration *)self->_configuration setState:?];
  if (a3 == 4)
  {
    v5 = objc_alloc_init(PKDynamicProvisioningPageContent);
    [(PKDynamicProvisioningPageContent *)v5 setPageNumber:0];
    [(PKDynamicProvisioningPageContent *)v5 setTitle:@"Notify Requested Demo"];
    [(PKDynamicProvisioningPageContent *)v5 setSubtitle:@"You're all set. We'll be in touch soon."];
    [(PKDynamicProvisioningPageContent *)v5 setPrimaryActionTitle:@"Done"];
    v12 = v5;
    v9 = MEMORY[0x1E695DEC8];
    v10 = &v12;
    goto LABEL_7;
  }

  if (a3 == 3)
  {
    v5 = objc_alloc_init(PKDynamicProvisioningPageContent);
    [(PKDynamicProvisioningPageContent *)v5 setPageNumber:0];
    [(PKDynamicProvisioningPageContent *)v5 setTitle:@"Notify Demo"];
    [(PKDynamicProvisioningPageContent *)v5 setSubtitle:@"Do you want to be notified ?"];
    [(PKDynamicProvisioningPageContent *)v5 setPrimaryActionTitle:@"Notify Me"];
    [(PKDynamicProvisioningPageContent *)v5 setSecondaryActionTitle:@"Cancel"];
    v13 = v5;
    v9 = MEMORY[0x1E695DEC8];
    v10 = &v13;
LABEL_7:
    v11 = [v9 arrayWithObjects:v10 count:1];
    onboardingItems = self->_onboardingItems;
    self->_onboardingItems = v11;
    goto LABEL_8;
  }

  if (a3 != 1)
  {
    return;
  }

  v5 = objc_alloc_init(PKDynamicProvisioningPageContent);
  [(PKDynamicProvisioningPageContent *)v5 setPageNumber:0];
  [(PKDynamicProvisioningPageContent *)v5 setTitle:@"Demo Page 1"];
  [(PKDynamicProvisioningPageContent *)v5 setSubtitle:@"Demo Demo Page"];
  [(PKDynamicProvisioningPageContent *)v5 setHeroImageURL:&stru_1F227FD28];
  [(PKDynamicProvisioningPageContent *)v5 setPrimaryActionTitle:@"Continue"];
  [(PKDynamicProvisioningPageContent *)v5 setSecondaryActionTitle:@"Cancel"];
  [(PKDynamicProvisioningPageContent *)v5 setContentAlignment:4];
  onboardingItems = objc_alloc_init(PKDynamicProvisioningPageContent);
  [(PKDynamicProvisioningPageContent *)onboardingItems setPageNumber:1];
  [(PKDynamicProvisioningPageContent *)onboardingItems setTitle:@"Demo Page 2"];
  [(PKDynamicProvisioningPageContent *)onboardingItems setSubtitle:@"Demo Demo Page"];
  [(PKDynamicProvisioningPageContent *)onboardingItems setIdentifier:@"mainFeatureOnboardingPageIdentifier"];
  v14[0] = v5;
  v14[1] = onboardingItems;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
  v8 = self->_onboardingItems;
  self->_onboardingItems = v7;

LABEL_8:
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  v4 = [(PKPaymentSetupProductConfiguration *)self->_configuration productIdentifier];
  [v3 appendFormat:@"productIdentifier: '%@'; ", v4];

  [v3 appendFormat:@"displayName: '%@'; ", self->_displayName];
  [v3 appendFormat:@">"];
  v5 = [v3 copy];

  return v5;
}

+ (id)productsFromBrowseableBankApps:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v30 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v4;
  v31 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v31)
  {
    v29 = *v36;
    v32 = a1;
    do
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v36 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v35 + 1) + 8 * i);
        v7 = [v6 PKArrayContaining:objc_opt_class() forKey:@"cameraCaptureSupport"];
        v8 = [v6 PKArrayContaining:objc_opt_class() forKey:@"inAppProvisioningSupport"];
        v9 = [v6 PKStringForKey:@"appLaunchURLScheme"];
        v10 = [v6 PKStringForKey:@"appLaunchURLPath"];
        v11 = [a1 _inAppProvisioningURLWthScheme:v9 path:v10];

        v12 = objc_alloc_init(PKPaymentSetupProduct);
        v13 = [v6 PKStringForKey:@"displayName"];
        displayName = v12->_displayName;
        v12->_displayName = v13;

        v15 = [v6 PKArrayContaining:objc_opt_class() forKey:@"searchTerms"];
        searchTerms = v12->_searchTerms;
        v12->_searchTerms = v15;

        v17 = objc_alloc_init(PKPaymentSetupProductConfiguration);
        [(PKPaymentSetupProductConfiguration *)v17 setType:5];
        v18 = MEMORY[0x1E696AEC0];
        v19 = [(PKPaymentSetupProduct *)v12 displayName];
        v20 = [v18 stringWithFormat:@"%@%@", v19, v11];

        [(PKPaymentSetupProductConfiguration *)v17 setProductIdentifier:v20];
        objc_storeStrong(&v12->_configuration, v17);
        if ([v7 count])
        {
          v34[0] = MEMORY[0x1E69E9820];
          v34[1] = 3221225472;
          v34[2] = __86__PKPaymentSetupProduct_PKBrowseableBankAppAdditions__productsFromBrowseableBankApps___block_invoke;
          v34[3] = &__block_descriptor_40_e28___NSString_16__0__NSString_8l;
          v34[4] = a1;
          v21 = [v7 pk_arrayByApplyingBlock:v34];
          v22 = [[PKSetupProductMethodCameraCapture alloc] initWithCardTypeSupport:v21 partnerIdentifier:v20];
          [(PKPaymentSetupProduct *)v12 addSetupProductMethod:v22];

          a1 = v32;
        }

        if ([v8 count])
        {
          v33[0] = MEMORY[0x1E69E9820];
          v33[1] = 3221225472;
          v33[2] = __86__PKPaymentSetupProduct_PKBrowseableBankAppAdditions__productsFromBrowseableBankApps___block_invoke_2;
          v33[3] = &__block_descriptor_40_e28___NSString_16__0__NSString_8l;
          v33[4] = a1;
          v23 = [v8 pk_arrayByApplyingBlock:v33];
          v24 = [v6 PKArrayContaining:objc_opt_class() forKey:@"associatedStoreIdentifiers"];
          v25 = [[PKSetupProductMethodInApp alloc] initWithURL:v11 identifiers:v24 cardTypeSupport:v23 identifier:v20];
          [(PKPaymentSetupProduct *)v12 addSetupProductMethod:v25];

          a1 = v32;
        }

        [v30 addObject:v12];
      }

      v31 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v31);
  }

  v26 = [v30 copy];

  return v26;
}

+ (id)_displayNameForCardType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"credit"])
  {
    v4 = @"CARD_TYPE_CREDIT_CARD";
  }

  else if ([v3 isEqualToString:@"debit"])
  {
    v4 = @"CARD_TYPE_DEBIT_CARD";
  }

  else if ([v3 isEqualToString:@"prepaid"])
  {
    v4 = @"CARD_TYPE_PREPAID_CARD";
  }

  else
  {
    v5 = v3;
    if (![v3 isEqualToString:@"bankcard"])
    {
      goto LABEL_10;
    }

    v4 = @"CARD_TYPE_BANK_CARD";
  }

  v5 = PKLocalizedPaymentString(&v4->isa, 0);

LABEL_10:

  return v5;
}

+ (id)_inAppProvisioningURLWthScheme:(id)a3 path:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 length])
  {
    v7 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@://", v5];
    if ([v6 length])
    {
      v8 = [MEMORY[0x1E696AB08] URLPathAllowedCharacterSet];
      v9 = [v6 stringByAddingPercentEncodingWithAllowedCharacters:v8];

      [v7 appendString:v9];
      v6 = v9;
    }

    v10 = [MEMORY[0x1E695DFF8] URLWithString:v7];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)productForIssuerProvisioningExtension:(id)a3 withStatus:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  v8 = 0;
  if (v5 && v6)
  {
    if (([v6 passEntriesAvailable] & 1) != 0 || objc_msgSend(v7, "remotePassEntriesAvailable"))
    {
      v9 = [v5 identifier];
      v10 = objc_alloc_init(PKPaymentSetupProductConfiguration);
      [(PKPaymentSetupProductConfiguration *)v10 setType:6];
      [(PKPaymentSetupProductConfiguration *)v10 setProductIdentifier:v9];
      [(PKPaymentSetupProductConfiguration *)v10 setPartnerIdentifier:v9];
      v8 = objc_alloc_init(PKPaymentSetupProduct);
      objc_storeStrong(&v8->_configuration, v10);
      v11 = [v5 _plugIn];
      v12 = [v11 localizedContainingName];
      v13 = v12;
      if (v12)
      {
        v14 = v12;
      }

      else
      {
        v14 = [v5 _localizedName];
      }

      displayName = v8->_displayName;
      v8->_displayName = v14;

      v16 = -[PKSetupProductMethodAppExtension initWithExtension:status:partnerIdentifier:]([PKSetupProductMethodAppExtension alloc], "initWithExtension:status:partnerIdentifier:", v5, [v7 requiresAuthentication], v9);
      [(PKPaymentSetupProduct *)v8 addSetupProductMethod:v16];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (void)didAuthorizeProvisioningExtension
{
  v3 = [(PKPaymentSetupProduct *)self partnerIdentifier];
  v4 = [(PKPaymentSetupProduct *)self setupProductMethodOfType:4 withIdentifier:v3];

  [v4 setRequiresAuthorization:0];
}

@end