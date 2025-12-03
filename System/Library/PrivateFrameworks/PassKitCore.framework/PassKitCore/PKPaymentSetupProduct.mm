@interface PKPaymentSetupProduct
+ (id)_displayNameForCardType:(id)type;
+ (id)_inAppProvisioningURLWthScheme:(id)scheme path:(id)path;
+ (id)productForIssuerProvisioningExtension:(id)extension withStatus:(id)status;
+ (id)productsFromBrowseableBankApps:(id)apps;
- (BOOL)hasPaymentOptionMatching:(int64_t)matching;
- (BOOL)isCarKey;
- (BOOL)supportsDevice:(id)device;
- (BOOL)supportsDeviceOS:(id)s;
- (BOOL)supportsOSVersion:(id)version deviceClass:(id)class minimumOSVersion:(id)sVersion;
- (BOOL)supportsSetupProductMethodForType:(unint64_t)type;
- (BOOL)updateSupportWithOSVersion:(id)version deviceClass:(id)class deviceRegion:(id)region deviceVersion:(id)deviceVersion;
- (NSString)badge;
- (NSString)displayName;
- (NSString)displayStatus;
- (NSString)longLocalizedDescription;
- (NSString)partnerName;
- (PKPaymentSetupProduct)initWithFeatureIdentifier:(unint64_t)identifier;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)partnerIdentifier;
- (id)productIdentifier;
- (id)provisioningMethodMetadataForMethod:(id)method;
- (id)provisioningMethodMetadataForType:(id)type;
- (id)provisioningMethodTypes;
- (id)setupProductMethodOfType:(unint64_t)type withIdentifier:(id)identifier;
- (id)setupProductMethodsOfType:(unint64_t)type;
- (int64_t)allSupportedProtocols;
- (int64_t)primaryCredentialType;
- (unint64_t)supportedProvisioningMethods;
- (void)_updateDebugConfigurationForState:(unint64_t)state;
- (void)addSetupProductMethod:(id)method;
- (void)augmentWithProduct:(id)product;
- (void)didAuthorizeProvisioningExtension;
- (void)setProvisioningMethodMetadata:(id)metadata forMethod:(id)method;
- (void)setProvisioningMethodMetadata:(id)metadata forType:(id)type;
- (void)updateWithProductDictionary:(id)dictionary;
@end

@implementation PKPaymentSetupProduct

- (BOOL)hasPaymentOptionMatching:(int64_t)matching
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

        if ([*(*(&v11 + 1) + 8 * i) cardType] == matching)
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

- (void)updateWithProductDictionary:(id)dictionary
{
  v161 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  if (!dictionaryCopy)
  {
    setupProductMethods = self->_setupProductMethods;
    self->_setupProductMethods = 0;
  }

  v6 = [[PKPaymentSetupProductConfiguration alloc] initWithProductDictionary:dictionaryCopy];
  configuration = self->_configuration;
  self->_configuration = v6;

  v8 = [dictionaryCopy PKStringForKey:@"localizedDescription"];
  localizedDescription = self->_localizedDescription;
  self->_localizedDescription = v8;

  v10 = [dictionaryCopy PKStringForKey:@"longLocalizedDescription"];
  longLocalizedDescription = self->_longLocalizedDescription;
  self->_longLocalizedDescription = v10;

  v12 = [dictionaryCopy PKStringForKey:@"localizedProductName"];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = [dictionaryCopy PKStringForKey:@"localizedDisplayName"];
  }

  displayName = self->_displayName;
  self->_displayName = v14;

  [dictionaryCopy PKArrayForKey:@"partners"];
  v130 = v133 = dictionaryCopy;
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

  v25 = [dictionaryCopy PKNumberForKey:@"minimumSupportedAge"];
  v26 = [dictionaryCopy PKNumberForKey:@"maximumSupportedAge"];
  v127 = v25;
  self->_minimumSupportedAge = [v25 integerValue];
  v126 = v26;
  self->_maximumSupportedAge = [v26 integerValue];
  v125 = [dictionaryCopy PKNumberForKey:@"minimumTargetUserSupportedAge"];
  self->_minimumTargetUserSupportedAge = [v125 integerValue];
  v27 = [dictionaryCopy PKStringForKey:@"region"];
  v28 = [v27 componentsSeparatedByString:{@", "}];

  if (v28)
  {
    firstObject = [v28 firstObject];
    primaryRegion = self->_primaryRegion;
    self->_primaryRegion = firstObject;

    v31 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v28];
    v32 = [v31 copy];
    regions = self->_regions;
    self->_regions = v32;
  }

  v124 = v28;
  v34 = [PKPaymentSetupProductRegionData alloc];
  v35 = [dictionaryCopy PKDictionaryForKey:@"regionData"];
  v36 = [(PKPaymentSetupProductRegionData *)v34 initWithRegionDataDictionary:v35];
  regionData = self->_regionData;
  self->_regionData = v36;

  v38 = [dictionaryCopy copy];
  rawDictionary = self->_rawDictionary;
  self->_rawDictionary = v38;

  v40 = [dictionaryCopy PKURLForKey:@"termsURL"];
  v41 = [v40 copy];
  termsURL = self->_termsURL;
  self->_termsURL = v41;

  v43 = [dictionaryCopy PKDictionaryForKey:@"readerModeMetadata"];
  v44 = [v43 copy];
  readerModeMetadata = self->_readerModeMetadata;
  self->_readerModeMetadata = v44;

  v46 = [dictionaryCopy PKArrayContaining:objc_opt_class() forKey:@"capabilities"];
  self->_flags = PKPaymentProductFlagsFromArray(v46);

  v47 = [dictionaryCopy PKStringForKey:@"hsa2Requirement"];
  self->_hsa2Requirement = PKPaymentSetupHSA2RequirementFromString(v47);

  array = [MEMORY[0x1E695DF70] array];
  v49 = [dictionaryCopy PKArrayForKey:@"requiredFields"];
  v50 = [v49 count];

  selfCopy = self;
  v129 = array;
  if (v50)
  {
    array2 = [MEMORY[0x1E695DF70] array];
    v146 = 0u;
    v147 = 0u;
    v148 = 0u;
    v149 = 0u;
    v52 = [dictionaryCopy PKArrayContaining:objc_opt_class() forKey:@"requiredFields"];
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
          v58 = [dictionaryCopy PKDictionaryForKey:@"requiredFieldOptions"];
          v59 = [v58 PKDictionaryForKey:v57];

          dictionaryCopy = v133;
          v60 = [PKPaymentSetupField paymentSetupFieldWithIdentifier:v57 configuration:v59];
          [array2 safelyAddObject:v60];
        }

        v54 = [v52 countByEnumeratingWithState:&v146 objects:v159 count:16];
      }

      while (v54);
    }

    v61 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:array2];
    requiredFields = self->_requiredFields;
    self->_requiredFields = v61;

    array = v129;
  }

  v63 = [dictionaryCopy PKArrayForKey:@"paymentOptions"];
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
        [array safelyAddObject:v68];
      }

      v65 = [v63 countByEnumeratingWithState:&v142 objects:v158 count:16];
    }

    while (v65);
  }

  [array sortUsingComparator:{&__block_literal_global_699_1, v63}];
  v69 = [array copy];
  paymentOptions = self->_paymentOptions;
  self->_paymentOptions = v69;

  v128 = [dictionaryCopy PKArrayContaining:objc_opt_class() forKey:@"provisioningMethodDetailsList"];
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
          partnerIdentifier = [(PKPaymentSetupProductConfiguration *)self->_configuration partnerIdentifier];
          v79 = [v77 isEqualToString:@"digitalIssuance"];
          v80 = off_1E79C1918;
          if (v79 & 1) != 0 || (v81 = [v77 isEqualToString:@"readerMode"], v80 = off_1E79C1928, (v81) || (v82 = objc_msgSend(v77, "isEqualToString:", @"appClip"), v80 = off_1E79C1900, (v82) || (v83 = objc_msgSend(v77, "isEqualToString:", @"inApp"), v80 = off_1E79C1920, (v83) || (v84 = objc_msgSend(v77, "isEqualToString:", @"cameraCapture"), v80 = off_1E79C1910, (v84) || (v85 = objc_msgSend(v77, "isEqualToString:", @"web"), v80 = off_1E79C1930, v85))
          {
            v86 = [objc_alloc(*v80) initWithDictionary:v76 partnerIdentifier:partnerIdentifier];
            [v71 safelyAddObject:v86];
          }

          self = selfCopy;
        }

        v73 = [obj countByEnumeratingWithState:&v138 objects:v157 count:16];
      }

      while (v73);
    }

    v87 = [v71 copy];
    v88 = self->_setupProductMethods;
    self->_setupProductMethods = v87;

    dictionaryCopy = v133;
  }

  self->_showOtherProviders = [dictionaryCopy PKBoolForKey:@"showOtherProvidersForAppProvisioningMethod"];
  v89 = [PKPaymentSetupProductImageAssetURLs alloc];
  v90 = [dictionaryCopy PKDictionaryForKey:@"imageAssets"];
  v91 = [(PKPaymentSetupProductImageAssetURLs *)v89 initWithImageAssetsDictionary:v90];
  imageAssetURLs = self->_imageAssetURLs;
  self->_imageAssetURLs = v91;

  v93 = objc_alloc_init(PKPaymentSetupProductImageAssets);
  imageAssets = self->_imageAssets;
  self->_imageAssets = v93;

  v95 = [dictionaryCopy PKDictionaryForKey:@"minimumOSVersion"];
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

  v100 = [dictionaryCopy PKArrayContaining:objc_opt_class() forKey:@"supportedTransitNetworkIdentifiers"];
  supportedTransitNetworkIdentifiers = self->_supportedTransitNetworkIdentifiers;
  self->_supportedTransitNetworkIdentifiers = v100;

  self->_suppressPendingPurchases = [dictionaryCopy PKBoolForKey:@"suppressPendingPurchases"];
  v102 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v103 = [dictionaryCopy PKArrayForKey:@"onboardingItems"];
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
  onboardingItems = selfCopy->_onboardingItems;
  selfCopy->_onboardingItems = v112;

  v114 = [v133 PKStringForKey:@"registrationRegionIdentifier"];
  v115 = [v114 copy];
  regionIdentifier = selfCopy->_regionIdentifier;
  selfCopy->_regionIdentifier = v115;

  v117 = [v133 PKStringForKey:@"criteriaIdentifier"];
  criteriaIdentifier = selfCopy->_criteriaIdentifier;
  selfCopy->_criteriaIdentifier = v117;

  v119 = [v133 PKDictionaryForKey:@"clientInfo"];
  clientInfo = selfCopy->_clientInfo;
  selfCopy->_clientInfo = v119;

  v121 = [v133 PKArrayContaining:objc_opt_class() forKey:@"searchTerms"];
  searchTerms = selfCopy->_searchTerms;
  selfCopy->_searchTerms = v121;

  selfCopy->_allowOnManagedAccount = [v133 PKBoolForKey:@"allowOnManagedAccount"];
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
  firstObject = [(NSArray *)self->_paymentOptions firstObject];
  cardType = [firstObject cardType];

  return cardType;
}

- (void)addSetupProductMethod:(id)method
{
  methodCopy = method;
  if (methodCopy)
  {
    setupProductMethods = self->_setupProductMethods;
    v10 = methodCopy;
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

    methodCopy = v10;
  }
}

- (BOOL)supportsSetupProductMethodForType:(unint64_t)type
{
  v18 = *MEMORY[0x1E69E9840];
  if (!type && ![(NSArray *)self->_setupProductMethods count])
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
        if ([v10 type] == type && (objc_msgSend(v10, "isSupported") & 1) != 0)
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

- (id)setupProductMethodsOfType:(unint64_t)type
{
  v19 = *MEMORY[0x1E69E9840];
  if (type || [(NSArray *)self->_setupProductMethods count])
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
          if ([v11 type] == type && objc_msgSend(v11, "isSupported"))
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

- (id)setupProductMethodOfType:(unint64_t)type withIdentifier:(id)identifier
{
  v21 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if (type)
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
            if ([v12 type] == type)
            {
              partnerIdentifier = [v12 partnerIdentifier];
              if ([partnerIdentifier isEqualToString:identifierCopy])
              {
                isSupported = [v12 isSupported];

                if (isSupported)
                {
                  type = v12;
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

      type = 0;
LABEL_17:
    }

    else
    {
      type = 0;
    }
  }

  return type;
}

- (PKPaymentSetupProduct)initWithFeatureIdentifier:(unint64_t)identifier
{
  v4 = [(PKPaymentSetupProduct *)self init];
  v5 = v4;
  if (v4)
  {
    [(PKPaymentSetupProduct *)v4 updateWithProductDictionary:0];
    if (identifier > 1)
    {
      if (identifier != 5)
      {
        if (identifier == 2)
        {
          [(PKPaymentSetupProductConfiguration *)v5->_configuration setProductIdentifier:@"3-argon-CCS"];
          v5->_isServerDriven = 1;
        }

        goto LABEL_12;
      }

      configuration = v5->_configuration;
      v7 = @"savings";
    }

    else if (identifier)
    {
      if (identifier != 1)
      {
LABEL_12:
        [(PKPaymentSetupProductConfiguration *)v5->_configuration setFeatureIdentifier:identifier];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[PKPaymentSetupProduct allocWithZone:](PKPaymentSetupProduct init];
  v6 = [(PKPaymentSetupProductConfiguration *)self->_configuration copyWithZone:zone];
  configuration = v5->_configuration;
  v5->_configuration = v6;

  v8 = [(NSString *)self->_displayName copyWithZone:zone];
  displayName = v5->_displayName;
  v5->_displayName = v8;

  v10 = [(NSString *)self->_localizedDescription copyWithZone:zone];
  localizedDescription = v5->_localizedDescription;
  v5->_localizedDescription = v10;

  v12 = [(NSSet *)self->_regions copyWithZone:zone];
  regions = v5->_regions;
  v5->_regions = v12;

  v14 = [(PKPaymentSetupProductRegionData *)self->_regionData copyWithZone:zone];
  regionData = v5->_regionData;
  v5->_regionData = v14;

  v16 = [(NSArray *)self->_requiredFields copyWithZone:zone];
  requiredFields = v5->_requiredFields;
  v5->_requiredFields = v16;

  v18 = [(NSArray *)self->_supportedProtocols copyWithZone:zone];
  supportedProtocols = v5->_supportedProtocols;
  v5->_supportedProtocols = v18;

  v20 = [(NSURL *)self->_termsURL copyWithZone:zone];
  termsURL = v5->_termsURL;
  v5->_termsURL = v20;

  v22 = [(NSDictionary *)self->_minimumOSVersion copyWithZone:zone];
  minimumOSVersion = v5->_minimumOSVersion;
  v5->_minimumOSVersion = v22;

  v24 = [(NSArray *)self->_setupProductMethods copyWithZone:zone];
  setupProductMethods = v5->_setupProductMethods;
  v5->_setupProductMethods = v24;

  v26 = [(NSArray *)self->_paymentOptions copyWithZone:zone];
  paymentOptions = v5->_paymentOptions;
  v5->_paymentOptions = v26;

  v28 = [(NSDictionary *)self->_rawDictionary copyWithZone:zone];
  rawDictionary = v5->_rawDictionary;
  v5->_rawDictionary = v28;

  v30 = [(NSDictionary *)self->_readerModeMetadata copyWithZone:zone];
  readerModeMetadata = v5->_readerModeMetadata;
  v5->_readerModeMetadata = v30;

  v5->_flags = self->_flags;
  v5->_hsa2Requirement = self->_hsa2Requirement;
  v32 = [(NSMutableDictionary *)self->_requestedProvisioningMethods mutableCopyWithZone:zone];
  requestedProvisioningMethods = v5->_requestedProvisioningMethods;
  v5->_requestedProvisioningMethods = v32;

  v34 = [(PKPaymentSetupProductImageAssets *)self->_imageAssets copyWithZone:zone];
  imageAssets = v5->_imageAssets;
  v5->_imageAssets = v34;

  v36 = [(PKPaymentSetupProductImageAssetURLs *)self->_imageAssetURLs copyWithZone:zone];
  imageAssetURLs = v5->_imageAssetURLs;
  v5->_imageAssetURLs = v36;

  v38 = [(NSArray *)self->_supportedTransitNetworkIdentifiers copyWithZone:zone];
  supportedTransitNetworkIdentifiers = v5->_supportedTransitNetworkIdentifiers;
  v5->_supportedTransitNetworkIdentifiers = v38;

  v5->_preventsFeatureApplication = self->_preventsFeatureApplication;
  v5->_provisioningStatus = self->_provisioningStatus;
  v40 = [(NSArray *)self->_featureApplications copyWithZone:zone];
  featureApplications = v5->_featureApplications;
  v5->_featureApplications = v40;

  v42 = [(NSArray *)self->_accounts copyWithZone:zone];
  accounts = v5->_accounts;
  v5->_accounts = v42;

  v5->_suppressPendingPurchases = self->_suppressPendingPurchases;
  v44 = [(NSArray *)self->_onboardingItems copyWithZone:zone];
  onboardingItems = v5->_onboardingItems;
  v5->_onboardingItems = v44;

  v5->_minimumSupportedAge = self->_minimumSupportedAge;
  v5->_maximumSupportedAge = self->_maximumSupportedAge;
  v5->_minimumTargetUserSupportedAge = self->_minimumTargetUserSupportedAge;
  v5->_meetsAgeRequirements = self->_meetsAgeRequirements;
  v46 = [(NSDictionary *)self->_clientInfo copyWithZone:zone];
  clientInfo = v5->_clientInfo;
  v5->_clientInfo = v46;

  v48 = [(NSArray *)self->_searchTerms copyWithZone:zone];
  searchTerms = v5->_searchTerms;
  v5->_searchTerms = v48;

  v5->_allowOnManagedAccount = self->_allowOnManagedAccount;
  v5->_supportedProvisioningMethods = self->_supportedProvisioningMethods;
  v50 = [(NSString *)self->_criteriaIdentifier copyWithZone:zone];
  criteriaIdentifier = v5->_criteriaIdentifier;
  v5->_criteriaIdentifier = v50;

  v5->_showOtherProviders = self->_showOtherProviders;
  return v5;
}

- (NSString)partnerName
{
  v21 = *MEMORY[0x1E69E9840];
  partnerIdentifier = [(PKPaymentSetupProduct *)self partnerIdentifier];
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
        identifier = [v9 identifier];
        v11 = [identifier isEqualToString:partnerIdentifier];

        if (v11)
        {
          displayName = [v9 displayName];
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
    displayName = v12;
    v4 = displayName;
LABEL_12:
    v14 = displayName;
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

- (id)provisioningMethodMetadataForMethod:(id)method
{
  if (method)
  {
    identifier = [method identifier];
    v5 = [(NSMutableDictionary *)self->_requestedProvisioningMethods objectForKey:identifier];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)provisioningMethodMetadataForType:(id)type
{
  v4 = PKSetupProductMethodTypeFromString(type);
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

- (void)setProvisioningMethodMetadata:(id)metadata forMethod:(id)method
{
  metadataCopy = metadata;
  methodCopy = method;
  if (!self->_requestedProvisioningMethods)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    requestedProvisioningMethods = self->_requestedProvisioningMethods;
    self->_requestedProvisioningMethods = v7;
  }

  identifier = [methodCopy identifier];
  v10 = self->_requestedProvisioningMethods;
  if (metadataCopy)
  {
    [(NSMutableDictionary *)v10 setObject:metadataCopy forKey:identifier];
  }

  else
  {
    [(NSMutableDictionary *)v10 removeObjectForKey:identifier];
  }
}

- (void)setProvisioningMethodMetadata:(id)metadata forType:(id)type
{
  metadataCopy = metadata;
  v7 = PKSetupProductMethodTypeFromString(type);
  setupProductMethods = self->_setupProductMethods;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __63__PKPaymentSetupProduct_setProvisioningMethodMetadata_forType___block_invoke;
  v10[3] = &__block_descriptor_40_e30_B16__0__PKSetupProductMethod_8l;
  v10[4] = v7;
  v9 = [(NSArray *)setupProductMethods pk_firstObjectPassingTest:v10];
  if (v9)
  {
    [(PKPaymentSetupProduct *)self setProvisioningMethodMetadata:metadataCopy forMethod:v9];
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

  featureIdentifier = [(PKPaymentSetupProductConfiguration *)self->_configuration featureIdentifier];
  if (featureIdentifier == 4)
  {
    v11 = @"APPLY_FLOW_NEW_APPLICATION_TITLE";
    v12 = 4;
  }

  else
  {
    if (featureIdentifier != 2)
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
    type = [(PKPaymentSetupProductConfiguration *)self->_configuration type];
    if (type != 3)
    {
      if (type == 7)
      {
        if ([(PKPaymentSetupProductConfiguration *)self->_configuration featureIdentifier]== 4)
        {
          v6 = PKLocalizedAppleBalanceString(&cfstr_AppleAccountBo.isa, 0);
LABEL_10:
          v7 = self->_longLocalizedDescription;
          self->_longLocalizedDescription = v6;
        }
      }

      else if (type == 4)
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
  type = [(PKPaymentSetupProductConfiguration *)self->_configuration type];
  if (type == 7)
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

  else if (type == 5)
  {
    return 16;
  }

  else
  {
    return supportedProvisioningMethods;
  }
}

- (BOOL)supportsOSVersion:(id)version deviceClass:(id)class minimumOSVersion:(id)sVersion
{
  versionCopy = version;
  if (sVersion)
  {
    v8 = [sVersion objectForKey:class];
    v9 = v8;
    if (v8)
    {
      v10 = ([v8 compare:versionCopy options:64] + 1) < 2;
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

- (BOOL)updateSupportWithOSVersion:(id)version deviceClass:(id)class deviceRegion:(id)region deviceVersion:(id)deviceVersion
{
  v34 = *MEMORY[0x1E69E9840];
  classCopy = class;
  regionCopy = region;
  deviceVersionCopy = deviceVersion;
  v12 = [(PKPaymentSetupProduct *)self supportsOSVersion:version deviceClass:classCopy minimumOSVersion:self->_minimumOSVersion];
  v13 = v12;
  if (v12)
  {
    v27 = v12;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    setupProductMethods = [(PKPaymentSetupProduct *)self setupProductMethods];
    v15 = [setupProductMethods countByEnumeratingWithState:&v29 objects:v33 count:16];
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
            objc_enumerationMutation(setupProductMethods);
          }

          v19 = *(*(&v29 + 1) + 8 * i);
          requiredOSVersionRange = [v19 requiredOSVersionRange];
          v21 = requiredOSVersionRange;
          v22 = 1;
          if (classCopy && deviceVersionCopy && requiredOSVersionRange)
          {
            v22 = [requiredOSVersionRange versionMeetsRequirements:deviceVersionCopy deviceClass:classCopy];
          }

          regions = [v19 regions];
          v24 = regions;
          if (regions)
          {
            v25 = [regions containsObject:regionCopy];
          }

          else
          {
            v25 = 1;
          }

          [v19 setSupported:v22 & v25];
        }

        v16 = [setupProductMethods countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v16);
    }

    v13 = v27;
  }

  return v13;
}

- (BOOL)supportsDevice:(id)device
{
  v22 = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  deviceVersion = [deviceCopy deviceVersion];
  deviceClass = [deviceCopy deviceClass];
  deviceRegion = [deviceCopy deviceRegion];
  if (objc_opt_respondsToSelector())
  {
    cellularNetworkRegion = [deviceCopy cellularNetworkRegion];
  }

  else
  {
    cellularNetworkRegion = 0;
  }

  v9 = [deviceVersion versionForDeviceClass:deviceClass];
  deviceVersion2 = [deviceCopy deviceVersion];
  v11 = [(PKPaymentSetupProduct *)self updateSupportWithOSVersion:v9 deviceClass:deviceClass deviceRegion:deviceRegion deviceVersion:deviceVersion2];

  if (v11 && (deviceRegion && -[NSSet containsObject:](self->_regions, "containsObject:", deviceRegion) || cellularNetworkRegion && -[NSSet containsObject:](self->_regions, "containsObject:", cellularNetworkRegion)) && ((-[PKPaymentSetupProduct allSupportedProtocols](self, "allSupportedProtocols") & 4) == 0 || [deviceCopy felicaSecureElementIsAvailable]))
  {
    if (objc_opt_respondsToSelector())
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      paymentOptions = [(PKPaymentSetupProduct *)self paymentOptions];
      v13 = [paymentOptions countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v13)
      {
        v14 = *v18;
        while (2)
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v18 != v14)
            {
              objc_enumerationMutation(paymentOptions);
            }

            if ([deviceCopy supportsCredentialType:{objc_msgSend(*(*(&v17 + 1) + 8 * i), "cardType")}])
            {
              LOBYTE(v13) = 1;
              goto LABEL_25;
            }
          }

          v13 = [paymentOptions countByEnumeratingWithState:&v17 objects:v21 count:16];
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

- (BOOL)supportsDeviceOS:(id)s
{
  v24 = *MEMORY[0x1E69E9840];
  sCopy = s;
  deviceVersion = [sCopy deviceVersion];
  deviceClass = [sCopy deviceClass];
  v7 = [deviceVersion versionForDeviceClass:deviceClass];
  if ([(PKPaymentSetupProduct *)self supportsOSVersion:v7 deviceClass:deviceClass minimumOSVersion:self->_minimumOSVersion])
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    setupProductMethods = [(PKPaymentSetupProduct *)self setupProductMethods];
    v9 = [setupProductMethods countByEnumeratingWithState:&v19 objects:v23 count:16];
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
            objc_enumerationMutation(setupProductMethods);
          }

          requiredOSVersionRange = [*(*(&v19 + 1) + 8 * i) requiredOSVersionRange];
          v14 = requiredOSVersionRange;
          if (!deviceClass || (requiredOSVersionRange ? (v15 = deviceVersion == 0) : (v15 = 1), v15))
          {
          }

          else
          {
            v16 = [requiredOSVersionRange versionMeetsRequirements:deviceVersion deviceClass:deviceClass];

            if (!v16)
            {
              v17 = 0;
              goto LABEL_19;
            }
          }
        }

        v10 = [setupProductMethods countByEnumeratingWithState:&v19 objects:v23 count:16];
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

- (void)augmentWithProduct:(id)product
{
  v13 = *MEMORY[0x1E69E9840];
  productCopy = product;
  if (productCopy)
  {
    objc_storeStrong(&self->_augmentedProduct, product);
    onboardingItems = [productCopy onboardingItems];
    if (onboardingItems)
    {
      v7 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        onboardingItems = self->_onboardingItems;
        v9 = 138412546;
        selfCopy = onboardingItems;
        v11 = 2112;
        v12 = onboardingItems;
        _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "augmentWithProduct: Replacing old onboardingItems (%@) with new onboardingItems (%@)", &v9, 0x16u);
      }

      objc_storeStrong(&self->_onboardingItems, onboardingItems);
    }
  }

  else
  {
    onboardingItems = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(onboardingItems, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_1AD337000, onboardingItems, OS_LOG_TYPE_DEFAULT, "Invalid request to augment self with nil augmenting product: %@", &v9, 0xCu);
    }
  }
}

- (BOOL)isCarKey
{
  configuration = [(PKPaymentSetupProduct *)self configuration];
  v3 = [configuration type] == 11;

  return v3;
}

- (id)productIdentifier
{
  configuration = [(PKPaymentSetupProduct *)self configuration];
  productIdentifier = [configuration productIdentifier];

  return productIdentifier;
}

- (id)partnerIdentifier
{
  configuration = [(PKPaymentSetupProduct *)self configuration];
  partnerIdentifier = [configuration partnerIdentifier];

  return partnerIdentifier;
}

- (void)_updateDebugConfigurationForState:(unint64_t)state
{
  v14[2] = *MEMORY[0x1E69E9840];
  [(PKPaymentSetupProductConfiguration *)self->_configuration setState:?];
  if (state == 4)
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

  if (state == 3)
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

  if (state != 1)
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
  productIdentifier = [(PKPaymentSetupProductConfiguration *)self->_configuration productIdentifier];
  [v3 appendFormat:@"productIdentifier: '%@'; ", productIdentifier];

  [v3 appendFormat:@"displayName: '%@'; ", self->_displayName];
  [v3 appendFormat:@">"];
  v5 = [v3 copy];

  return v5;
}

+ (id)productsFromBrowseableBankApps:(id)apps
{
  v40 = *MEMORY[0x1E69E9840];
  appsCopy = apps;
  v30 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(appsCopy, "count")}];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = appsCopy;
  v31 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v31)
  {
    v29 = *v36;
    selfCopy = self;
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
        v11 = [self _inAppProvisioningURLWthScheme:v9 path:v10];

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
        displayName = [(PKPaymentSetupProduct *)v12 displayName];
        v20 = [v18 stringWithFormat:@"%@%@", displayName, v11];

        [(PKPaymentSetupProductConfiguration *)v17 setProductIdentifier:v20];
        objc_storeStrong(&v12->_configuration, v17);
        if ([v7 count])
        {
          v34[0] = MEMORY[0x1E69E9820];
          v34[1] = 3221225472;
          v34[2] = __86__PKPaymentSetupProduct_PKBrowseableBankAppAdditions__productsFromBrowseableBankApps___block_invoke;
          v34[3] = &__block_descriptor_40_e28___NSString_16__0__NSString_8l;
          v34[4] = self;
          v21 = [v7 pk_arrayByApplyingBlock:v34];
          v22 = [[PKSetupProductMethodCameraCapture alloc] initWithCardTypeSupport:v21 partnerIdentifier:v20];
          [(PKPaymentSetupProduct *)v12 addSetupProductMethod:v22];

          self = selfCopy;
        }

        if ([v8 count])
        {
          v33[0] = MEMORY[0x1E69E9820];
          v33[1] = 3221225472;
          v33[2] = __86__PKPaymentSetupProduct_PKBrowseableBankAppAdditions__productsFromBrowseableBankApps___block_invoke_2;
          v33[3] = &__block_descriptor_40_e28___NSString_16__0__NSString_8l;
          v33[4] = self;
          v23 = [v8 pk_arrayByApplyingBlock:v33];
          v24 = [v6 PKArrayContaining:objc_opt_class() forKey:@"associatedStoreIdentifiers"];
          v25 = [[PKSetupProductMethodInApp alloc] initWithURL:v11 identifiers:v24 cardTypeSupport:v23 identifier:v20];
          [(PKPaymentSetupProduct *)v12 addSetupProductMethod:v25];

          self = selfCopy;
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

+ (id)_displayNameForCardType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"credit"])
  {
    v4 = @"CARD_TYPE_CREDIT_CARD";
  }

  else if ([typeCopy isEqualToString:@"debit"])
  {
    v4 = @"CARD_TYPE_DEBIT_CARD";
  }

  else if ([typeCopy isEqualToString:@"prepaid"])
  {
    v4 = @"CARD_TYPE_PREPAID_CARD";
  }

  else
  {
    v5 = typeCopy;
    if (![typeCopy isEqualToString:@"bankcard"])
    {
      goto LABEL_10;
    }

    v4 = @"CARD_TYPE_BANK_CARD";
  }

  v5 = PKLocalizedPaymentString(&v4->isa, 0);

LABEL_10:

  return v5;
}

+ (id)_inAppProvisioningURLWthScheme:(id)scheme path:(id)path
{
  schemeCopy = scheme;
  pathCopy = path;
  if ([schemeCopy length])
  {
    schemeCopy = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@://", schemeCopy];
    if ([pathCopy length])
    {
      uRLPathAllowedCharacterSet = [MEMORY[0x1E696AB08] URLPathAllowedCharacterSet];
      v9 = [pathCopy stringByAddingPercentEncodingWithAllowedCharacters:uRLPathAllowedCharacterSet];

      [schemeCopy appendString:v9];
      pathCopy = v9;
    }

    v10 = [MEMORY[0x1E695DFF8] URLWithString:schemeCopy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)productForIssuerProvisioningExtension:(id)extension withStatus:(id)status
{
  extensionCopy = extension;
  statusCopy = status;
  v7 = statusCopy;
  v8 = 0;
  if (extensionCopy && statusCopy)
  {
    if (([statusCopy passEntriesAvailable] & 1) != 0 || objc_msgSend(v7, "remotePassEntriesAvailable"))
    {
      identifier = [extensionCopy identifier];
      v10 = objc_alloc_init(PKPaymentSetupProductConfiguration);
      [(PKPaymentSetupProductConfiguration *)v10 setType:6];
      [(PKPaymentSetupProductConfiguration *)v10 setProductIdentifier:identifier];
      [(PKPaymentSetupProductConfiguration *)v10 setPartnerIdentifier:identifier];
      v8 = objc_alloc_init(PKPaymentSetupProduct);
      objc_storeStrong(&v8->_configuration, v10);
      _plugIn = [extensionCopy _plugIn];
      localizedContainingName = [_plugIn localizedContainingName];
      v13 = localizedContainingName;
      if (localizedContainingName)
      {
        _localizedName = localizedContainingName;
      }

      else
      {
        _localizedName = [extensionCopy _localizedName];
      }

      displayName = v8->_displayName;
      v8->_displayName = _localizedName;

      v16 = -[PKSetupProductMethodAppExtension initWithExtension:status:partnerIdentifier:]([PKSetupProductMethodAppExtension alloc], "initWithExtension:status:partnerIdentifier:", extensionCopy, [v7 requiresAuthentication], identifier);
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
  partnerIdentifier = [(PKPaymentSetupProduct *)self partnerIdentifier];
  v4 = [(PKPaymentSetupProduct *)self setupProductMethodOfType:4 withIdentifier:partnerIdentifier];

  [v4 setRequiresAuthorization:0];
}

@end