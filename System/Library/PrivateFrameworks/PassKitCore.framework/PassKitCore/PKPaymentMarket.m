@interface PKPaymentMarket
- (BOOL)containsLocation:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)name;
- (NSString)notificationAssetIdentifier;
- (PKPaymentMarket)initWithCoder:(id)a3;
- (PKPaymentMarket)initWithDictionary:(id)a3 forDeviceClass:(id)a4 version:(id)a5;
- (double)shortestDistanceFromLocation:(id)a3;
- (id)_geoFenceWithDictionary:(id)a3;
- (id)analyticsReportingNameValue;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPaymentMarket

- (PKPaymentMarket)initWithDictionary:(id)a3 forDeviceClass:(id)a4 version:(id)a5
{
  v104 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v99.receiver = self;
  v99.super_class = PKPaymentMarket;
  v11 = [(PKPaymentMarket *)&v99 init];
  if (!v11)
  {
    goto LABEL_55;
  }

  v12 = [v8 PKStringForKey:@"Type"];
  v13 = v12;
  if (v12)
  {
    if ([v12 isEqual:@"transit"])
    {
      v14 = 1;
    }

    else
    {
      v15 = [v13 isEqual:@"access"];
      v14 = 2;
      if (!v15)
      {
        v14 = 0;
      }
    }
  }

  else
  {
    v14 = 0;
  }

  v11->_type = v14;

  v16 = [v8 PKStringForKey:@"Classification"];
  v17 = v16;
  if (v16)
  {
    if ([v16 isEqual:@"locality"])
    {
      v18 = 1;
    }

    else if ([v17 isEqual:@"country"])
    {
      v18 = 2;
    }

    else if ([v17 isEqual:@"administrativeArea"])
    {
      v18 = 3;
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  v11->_classification = v18;
  v19 = [v8 PKStringForKey:@"Identifier"];
  v20 = [v19 copy];
  identifier = v11->_identifier;
  v11->_identifier = v20;

  v22 = [v8 PKStringForKey:@"Region"];
  v23 = [v22 copy];
  region = v11->_region;
  v11->_region = v23;

  v25 = [v8 PKDictionaryForKey:@"LocalizedName"];
  v26 = [v25 copy];
  localizedNames = v11->_localizedNames;
  v11->_localizedNames = v26;

  v28 = [v8 PKStringForKey:@"NotificationAssetIdentifier"];
  v29 = [v28 copy];
  notificationAssetIdentifier = v11->_notificationAssetIdentifier;
  v11->_notificationAssetIdentifier = v29;

  v11->_expressUpgradeHideDisableAction = 0;
  v11->_expressUpgradePromoteDuration = 604800.0;
  v31 = [v8 PKDictionaryForKey:@"OpenLoopExpressUpgrade"];
  v32 = PKOverrideMarketGeoExpressUpgradePromotionDuration();
  v33 = PKOverrideMarketGeoExpressUpgradeHideDisableExpressModeAction();
  if (v32)
  {
    v34 = PKLogFacilityTypeGetObject(0xDuLL);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v35 = v11->_identifier;
      *buf = 138412546;
      v101 = v32;
      v102 = 2112;
      v103 = v35;
      _os_log_impl(&dword_1AD337000, v34, OS_LOG_TYPE_DEFAULT, "PKPaymentMarket: Overriding open loop express upgrade promoted duration with %@ for market %@ due to internal settings", buf, 0x16u);
    }

    [v32 doubleValue];
    v11->_expressUpgradePromoteDuration = v36;
  }

  else if (v31)
  {
    v37 = [v31 PKNumberForKey:@"PromoteDuration"];
    v38 = v37;
    if (v37)
    {
      [v37 doubleValue];
      v11->_expressUpgradePromoteDuration = v39;
    }
  }

  if (v33)
  {
    v40 = [v33 BOOLValue];
    v41 = PKLogFacilityTypeGetObject(0xDuLL);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      v42 = @"NO";
      v43 = v11->_identifier;
      if (v40)
      {
        v42 = @"YES";
      }

      *buf = 138412546;
      v101 = v42;
      v102 = 2112;
      v103 = v43;
      _os_log_impl(&dword_1AD337000, v41, OS_LOG_TYPE_DEFAULT, "PKPaymentMarket: Overriding open loop express upgrade hide disable express mode action to %@ for market %@ due to internal settings", buf, 0x16u);
    }

    goto LABEL_33;
  }

  v44 = [v31 objectForKey:@"HideDisableExpressAction"];

  if (v44)
  {
    v40 = [v31 PKBoolForKey:@"HideDisableExpressAction"];
LABEL_33:
    v45 = 1;
    if (!v40)
    {
      v45 = 2;
    }

    v11->_expressUpgradeHideDisableAction = v45;
  }

  v46 = [v8 PKDictionaryForKey:@"RenotifyCampaigns"];
  renotifyCampaigns = v11->_renotifyCampaigns;
  v11->_renotifyCampaigns = v46;

  v48 = PKOverrideMarketGeoRenotifyDCICampaignIdentifier();
  v90 = PKOverrideMarketGeoExpressOpenLoopNotificationIdentifier();
  v91 = v48;
  if (v48 | v90)
  {
    v49 = [(NSDictionary *)v11->_renotifyCampaigns mutableCopy];
    if (!v49)
    {
      v49 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    if (v91)
    {
      v50 = PKLogFacilityTypeGetObject(0xDuLL);
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
      {
        v51 = v11->_identifier;
        *buf = 138412546;
        v101 = v91;
        v102 = 2112;
        v103 = v51;
        _os_log_impl(&dword_1AD337000, v50, OS_LOG_TYPE_DEFAULT, "PKPaymentMarket: Overriding DCI renotify campaign identifier to %@ for market %@ due to internal settings", buf, 0x16u);
      }

      [v49 setObject:v91 forKeyedSubscript:@"DCI"];
    }

    if (v90)
    {
      v52 = PKLogFacilityTypeGetObject(0xDuLL);
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
      {
        v53 = v11->_identifier;
        *buf = 138412546;
        v101 = v90;
        v102 = 2112;
        v103 = v53;
        _os_log_impl(&dword_1AD337000, v52, OS_LOG_TYPE_DEFAULT, "PKPaymentMarket: Overriding open loop renotify campaign identifier to %@ for market %@ due to internal settings", buf, 0x16u);
      }

      [v49 setObject:v90 forKeyedSubscript:@"OpenLoop"];
    }

    v54 = [v49 copy];
    v55 = v11->_renotifyCampaigns;
    v11->_renotifyCampaigns = v54;
  }

  v84 = v33;
  v85 = v32;
  v86 = v31;
  v56 = [v8 PKArrayForKey:@"GeoFences"];
  v57 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v96[0] = MEMORY[0x1E69E9820];
  v96[1] = 3221225472;
  v96[2] = __61__PKPaymentMarket_initWithDictionary_forDeviceClass_version___block_invoke;
  v96[3] = &unk_1E79C9410;
  v58 = v11;
  v97 = v58;
  v59 = v57;
  v98 = v59;
  v83 = v56;
  [v56 enumerateObjectsUsingBlock:v96];
  v60 = [v59 copy];
  geoFences = v58->_geoFences;
  v58->_geoFences = v60;

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __61__PKPaymentMarket_initWithDictionary_forDeviceClass_version___block_invoke_2;
  aBlock[3] = &unk_1E79C9460;
  v89 = v8;
  v62 = v8;
  v93 = v62;
  v87 = v10;
  v94 = v10;
  v88 = v9;
  v95 = v9;
  v63 = _Block_copy(aBlock);
  v64 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v65 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v63[2](v63, @"SupportedCredentials", v64, v65);
  v66 = [v64 copy];
  supportedCredentialTypes = v58->_supportedCredentialTypes;
  v58->_supportedCredentialTypes = v66;

  v68 = [v65 copy];
  supportedTransitNetworks = v58->_supportedTransitNetworks;
  v58->_supportedTransitNetworks = v68;

  v70 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v71 = objc_alloc_init(MEMORY[0x1E695DFA8]);

  v63[2](v63, @"ExpressEnabledCredentials", v70, v71);
  v72 = [v70 copy];
  expressCredentialTypes = v58->_expressCredentialTypes;
  v58->_expressCredentialTypes = v72;

  v74 = [v71 copy];
  expressTransitNetworks = v58->_expressTransitNetworks;
  v58->_expressTransitNetworks = v74;

  v76 = [v62 objectForKey:@"productsRequiredForRegion"];
  v77 = v76;
  if (v76)
  {
    v78 = [v76 BOOLValue];
  }

  else
  {
    v78 = 1;
  }

  v58->_productsRequiredForRegion = v78;
  v79 = [v62 objectForKey:@"shouldConsiderCellularRegion"];
  if (v79 || ([v62 objectForKey:@"shouldConsiderCelluarRegion"], (v79 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v80 = v79;
    v81 = [v79 BOOLValue];
  }

  else
  {
    v81 = 1;
  }

  v58->_shouldConsiderCellularRegion = v81;

  v9 = v88;
  v8 = v89;
  v10 = v87;
LABEL_55:

  return v11;
}

void __61__PKPaymentMarket_initWithDictionary_forDeviceClass_version___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _geoFenceWithDictionary:a2];
  if (v3)
  {
    v4 = v3;
    [*(a1 + 40) addObject:v3];
    v3 = v4;
  }
}

void __61__PKPaymentMarket_initWithDictionary_forDeviceClass_version___block_invoke_2(id *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = [a1[4] PKArrayForKey:a2];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __61__PKPaymentMarket_initWithDictionary_forDeviceClass_version___block_invoke_3;
  v12[3] = &unk_1E79C9438;
  v13 = a1[5];
  v14 = a1[6];
  v15 = v7;
  v16 = v8;
  v10 = v8;
  v11 = v7;
  [v9 enumerateObjectsUsingBlock:v12];
}

void __61__PKPaymentMarket_initWithDictionary_forDeviceClass_version___block_invoke_3(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [PKOSVersionRequirementRange alloc];
  v4 = [v8 PKDictionaryForKey:@"OSVersions"];
  v5 = [(PKOSVersionRequirementRange *)v3 initWithDictionary:v4];

  if ([(PKOSVersionRequirementRange *)v5 versionMeetsRequirements:*(a1 + 32) deviceClass:*(a1 + 40)])
  {
    v6 = [v8 PKNumberForKey:@"CardType"];
    if (v6)
    {
      [*(a1 + 48) addObject:v6];
    }

    v7 = [v8 PKStringForKey:@"TransitNetworkIdentifier"];
    if (v7)
    {
      [*(a1 + 56) addObject:v7];
    }
  }
}

- (PKPaymentMarket)initWithCoder:(id)a3
{
  v4 = a3;
  v46.receiver = self;
  v46.super_class = PKPaymentMarket;
  v5 = [(PKPaymentMarket *)&v46 init];
  if (v5)
  {
    v5->_type = [v4 decodeIntegerForKey:@"type"];
    v5->_classification = [v4 decodeIntegerForKey:@"classification"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"region"];
    region = v5->_region;
    v5->_region = v8;

    v10 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_class();
    v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"localizedNames"];
    localizedNames = v5->_localizedNames;
    v5->_localizedNames = v13;

    v15 = MEMORY[0x1E695DFD8];
    v16 = objc_opt_class();
    v17 = [v15 setWithObjects:{v16, objc_opt_class(), 0}];
    v18 = [v4 decodeObjectOfClasses:v17 forKey:@"geoFences"];
    geoFences = v5->_geoFences;
    v5->_geoFences = v18;

    v20 = MEMORY[0x1E695DFD8];
    v21 = objc_opt_class();
    v22 = [v20 setWithObjects:{v21, objc_opt_class(), 0}];
    v23 = [v4 decodeObjectOfClasses:v22 forKey:@"supportedCredentialTypes"];
    supportedCredentialTypes = v5->_supportedCredentialTypes;
    v5->_supportedCredentialTypes = v23;

    v25 = MEMORY[0x1E695DFD8];
    v26 = objc_opt_class();
    v27 = [v25 setWithObjects:{v26, objc_opt_class(), 0}];
    v28 = [v4 decodeObjectOfClasses:v27 forKey:@"expressCredentialTypes"];
    expressCredentialTypes = v5->_expressCredentialTypes;
    v5->_expressCredentialTypes = v28;

    v30 = MEMORY[0x1E695DFD8];
    v31 = objc_opt_class();
    v32 = [v30 setWithObjects:{v31, objc_opt_class(), 0}];
    v33 = [v4 decodeObjectOfClasses:v32 forKey:@"supportedTransitNetworks"];
    supportedTransitNetworks = v5->_supportedTransitNetworks;
    v5->_supportedTransitNetworks = v33;

    v35 = MEMORY[0x1E695DFD8];
    v36 = objc_opt_class();
    v37 = [v35 setWithObjects:{v36, objc_opt_class(), 0}];
    v38 = [v4 decodeObjectOfClasses:v37 forKey:@"expressTransitNetworks"];
    expressTransitNetworks = v5->_expressTransitNetworks;
    v5->_expressTransitNetworks = v38;

    v40 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"notificationAssetIdentifier"];
    notificationAssetIdentifier = v5->_notificationAssetIdentifier;
    v5->_notificationAssetIdentifier = v40;

    v42 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"renotifyCampaigns"];
    renotifyCampaigns = v5->_renotifyCampaigns;
    v5->_renotifyCampaigns = v42;

    [v4 decodeDoubleForKey:@"expressUpgradePromotionDuration"];
    v5->_expressUpgradePromoteDuration = v44;
    v5->_expressUpgradeHideDisableAction = [v4 decodeIntegerForKey:@"expressUpgradeHideDisableAction"];
    v5->_productsRequiredForRegion = [v4 decodeBoolForKey:@"productsRequiredForRegion"];
    v5->_shouldConsiderCellularRegion = [v4 decodeBoolForKey:@"shouldConsiderCellularRegion"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  type = self->_type;
  v5 = a3;
  [v5 encodeInteger:type forKey:@"type"];
  [v5 encodeInteger:self->_classification forKey:@"classification"];
  [v5 encodeObject:self->_identifier forKey:@"identifier"];
  [v5 encodeObject:self->_region forKey:@"region"];
  [v5 encodeObject:self->_localizedNames forKey:@"localizedNames"];
  [v5 encodeObject:self->_geoFences forKey:@"geoFences"];
  [v5 encodeObject:self->_supportedCredentialTypes forKey:@"supportedCredentialTypes"];
  [v5 encodeObject:self->_expressCredentialTypes forKey:@"expressCredentialTypes"];
  [v5 encodeObject:self->_supportedTransitNetworks forKey:@"supportedTransitNetworks"];
  [v5 encodeObject:self->_expressTransitNetworks forKey:@"expressTransitNetworks"];
  [v5 encodeObject:self->_notificationAssetIdentifier forKey:@"notificationAssetIdentifier"];
  [v5 encodeObject:self->_renotifyCampaigns forKey:@"renotifyCampaigns"];
  [v5 encodeDouble:@"expressUpgradePromotionDuration" forKey:self->_expressUpgradePromoteDuration];
  [v5 encodeInteger:self->_expressUpgradeHideDisableAction forKey:@"expressUpgradeHideDisableAction"];
  [v5 encodeBool:self->_productsRequiredForRegion forKey:@"productsRequiredForRegion"];
  [v5 encodeBool:self->_shouldConsiderCellularRegion forKey:@"shouldConsiderCellularRegion"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v10.receiver = self;
  v10.super_class = PKPaymentMarket;
  v4 = [(PKPaymentMarket *)&v10 description];
  identifier = self->_identifier;
  v6 = [(PKPaymentMarket *)self notificationAssetIdentifier];
  v7 = [(PKPaymentMarket *)self englishName];
  v8 = [v3 stringWithFormat:@"%@ { Identifier: %@, NotificationAssetIdentifier: %@, Name: %@, RenotifyCampaigns: %@ }", v4, identifier, v6, v7, self->_renotifyCampaigns];

  return v8;
}

- (id)analyticsReportingNameValue
{
  v3 = [(PKPaymentMarket *)self englishName];
  v4 = v3;
  if (!v3)
  {
    v4 = [(PKPaymentMarket *)self name];
  }

  v5 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v6 = [v4 stringByTrimmingCharactersInSet:v5];

  if (!v3)
  {
  }

  if ([v6 length])
  {
    v7 = v6;
  }

  else
  {
    identifier = self->_identifier;
    if (!identifier)
    {
      identifier = @"unknown";
    }

    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Market ID: %@", identifier];
  }

  v9 = v7;

  return v9;
}

- (NSString)name
{
  localizedNames = self->_localizedNames;
  v3 = [MEMORY[0x1E695DF58] pk_deviceLanguage];
  v4 = [(NSDictionary *)localizedNames PKStringForKey:v3];

  return v4;
}

- (NSString)notificationAssetIdentifier
{
  notificationAssetIdentifier = self->_notificationAssetIdentifier;
  if (!notificationAssetIdentifier)
  {
    notificationAssetIdentifier = self->_identifier;
  }

  return notificationAssetIdentifier;
}

- (BOOL)containsLocation:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  geoFences = self->_geoFences;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __36__PKPaymentMarket_containsLocation___block_invoke;
  v8[3] = &unk_1E79C9488;
  v6 = v4;
  v9 = v6;
  v10 = &v11;
  [(NSSet *)geoFences enumerateObjectsUsingBlock:v8];
  LOBYTE(geoFences) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return geoFences;
}

uint64_t __36__PKPaymentMarket_containsLocation___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  result = [a2 containsLocation:*(a1 + 32)];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

- (double)shortestDistanceFromLocation:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v5 = *MEMORY[0x1E6985C30];
  v15 = 0x2020000000;
  v16 = v5;
  geoFences = self->_geoFences;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __48__PKPaymentMarket_shortestDistanceFromLocation___block_invoke;
  v10[3] = &unk_1E79C9488;
  v7 = v4;
  v11 = v7;
  v12 = &v13;
  [(NSSet *)geoFences enumerateObjectsUsingBlock:v10];
  v8 = v14[3];

  _Block_object_dispose(&v13, 8);
  return v8;
}

uint64_t __48__PKPaymentMarket_shortestDistanceFromLocation___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 distanceFromLocation:*(a1 + 32)];
  v5 = *(*(a1 + 40) + 8);
  if (v4 < *(v5 + 24))
  {
    *(v5 + 24) = v4;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = 0;
  if (v4 && (isKindOfClass & 1) != 0)
  {
    identifier = self->_identifier;
    v8 = v4[10];
    if (identifier && v8)
    {
      v6 = [(NSString *)identifier isEqual:?];
    }

    else
    {
      v6 = identifier == v8;
    }
  }

  return v6;
}

- (id)_geoFenceWithDictionary:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 PKStringForKey:@"Type"];
  v5 = v4;
  if (v4 && [v4 isEqual:@"circle"])
  {
    v6 = [[PKPaymentMarketCircularGeoFence alloc] initWithDictionary:v3];
  }

  else
  {
    v7 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v5;
      _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "unsupported geo fence type %@", &v9, 0xCu);
    }

    v6 = 0;
  }

  return v6;
}

@end