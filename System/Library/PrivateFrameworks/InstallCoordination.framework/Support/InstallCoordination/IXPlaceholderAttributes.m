@interface IXPlaceholderAttributes
- (BOOL)isEqual:(id)a3;
- (IXPlaceholderAttributes)init;
- (IXPlaceholderAttributes)initWithCoder:(id)a3;
- (IXPlaceholderAttributes)initWithInfoPlistDictionary:(id)a3;
- (IXPlaceholderAttributes)initWithInfoPlistFromBundle:(__CFBundle *)a3 error:(id *)a4;
- (IXPlaceholderAttributes)initWithInfoPlistFromBundleURL:(id)a3 error:(id *)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)infoPlistContent;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setRequiredDeviceCapabilitiesWithArray:(id)a3;
@end

@implementation IXPlaceholderAttributes

- (IXPlaceholderAttributes)init
{
  v3.receiver = self;
  v3.super_class = IXPlaceholderAttributes;
  return [(IXPlaceholderAttributes *)&v3 init];
}

- (IXPlaceholderAttributes)initWithCoder:(id)a3
{
  v4 = a3;
  v47.receiver = self;
  v47.super_class = IXPlaceholderAttributes;
  v5 = [(IXPlaceholderAttributes *)&v47 init];
  if (v5)
  {
    v5->_launchProhibited = [v4 decodeBoolForKey:@"launchProhibited"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleVersion"];
    bundleVersion = v5->_bundleVersion;
    v5->_bundleVersion = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleShortVersionString"];
    bundleShortVersionString = v5->_bundleShortVersionString;
    v5->_bundleShortVersionString = v8;

    v10 = [v4 decodePropertyListForKey:@"extensionDictionary"];
    extensionDictionary = v5->_extensionDictionary;
    v5->_extensionDictionary = v10;

    v12 = [v4 decodePropertyListForKey:@"exAppExtensionAttributes"];
    exAppExtensionAttributes = v5->_exAppExtensionAttributes;
    v5->_exAppExtensionAttributes = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"minimumOSVersion"];
    minimumOSVersion = v5->_minimumOSVersion;
    v5->_minimumOSVersion = v14;

    v16 = [v4 decodePropertyListForKey:@"requiredDeviceCapabilities"];
    requiredDeviceCapabilities = v5->_requiredDeviceCapabilities;
    v5->_requiredDeviceCapabilities = v16;

    v18 = objc_opt_class();
    v19 = [NSSet setWithObjects:v18, objc_opt_class(), 0];
    v20 = [v4 decodeObjectOfClasses:v19 forKey:@"sbAppTags"];
    sbAppTags = v5->_sbAppTags;
    v5->_sbAppTags = v20;

    v22 = objc_opt_class();
    v23 = [NSSet setWithObjects:v22, objc_opt_class(), 0];
    v24 = [v4 decodeObjectOfClasses:v23 forKey:@"lsCounterpartIdentifiers"];
    lsCounterpartIdentifiers = v5->_lsCounterpartIdentifiers;
    v5->_lsCounterpartIdentifiers = v24;

    v5->_lsRequiresPostProcessing = [v4 decodeBoolForKey:@"lsRequiresPostProcessing"];
    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sbIconMasqueradeIdentifier"];
    sbIconMasqueradeIdentifier = v5->_sbIconMasqueradeIdentifier;
    v5->_sbIconMasqueradeIdentifier = v26;

    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"companionBundleIdentifierForWatchApp"];
    companionBundleIdentifierForWatchApp = v5->_companionBundleIdentifierForWatchApp;
    v5->_companionBundleIdentifierForWatchApp = v28;

    v5->_watchOnlyApp = [v4 decodeBoolForKey:@"watchOnlyApp"];
    v5->_runsIndependentlyOfCompanionApp = [v4 decodeBoolForKey:@"runsIndependentlyOfCompanionApp"];
    v5->_arcadeApp = [v4 decodeBoolForKey:@"arcadeApp"];
    v30 = [v4 decodePropertyListForKey:@"webKitPushBundleMetadata"];
    webKitPushBundleMetadata = v5->_webKitPushBundleMetadata;
    v5->_webKitPushBundleMetadata = v30;

    v32 = objc_opt_class();
    v33 = [NSSet setWithObjects:v32, objc_opt_class(), 0];
    v34 = [v4 decodeObjectOfClasses:v33 forKey:@"uiDeviceFamily"];
    uiDeviceFamily = v5->_uiDeviceFamily;
    v5->_uiDeviceFamily = v34;

    v36 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accentColorName"];
    accentColorName = v5->_accentColorName;
    v5->_accentColorName = v36;

    v38 = [v4 decodePropertyListForKey:@"uiLaunchScreen"];
    uiLaunchScreen = v5->_uiLaunchScreen;
    v5->_uiLaunchScreen = v38;

    v5->_lsRequiresIPhoneOS = [v4 decodeBoolForKey:@"lsRequiresIPhoneOS"];
    v40 = objc_opt_class();
    v41 = [NSSet setWithObjects:v40, objc_opt_class(), 0];
    v42 = [v4 decodeObjectOfClasses:v41 forKey:@"cfBundleSupportedPlatforms"];
    cfBundleSupportedPlatforms = v5->_cfBundleSupportedPlatforms;
    v5->_cfBundleSupportedPlatforms = v42;

    v44 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dtPlatformName"];
    dtPlatformName = v5->_dtPlatformName;
    v5->_dtPlatformName = v44;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeBool:-[IXPlaceholderAttributes launchProhibited](self forKey:{"launchProhibited"), @"launchProhibited"}];
  v5 = [(IXPlaceholderAttributes *)self bundleVersion];
  [v4 encodeObject:v5 forKey:@"bundleVersion"];

  v6 = [(IXPlaceholderAttributes *)self bundleShortVersionString];
  [v4 encodeObject:v6 forKey:@"bundleShortVersionString"];

  v7 = [(IXPlaceholderAttributes *)self extensionDictionary];
  [v4 encodeObject:v7 forKey:@"extensionDictionary"];

  v8 = [(IXPlaceholderAttributes *)self exAppExtensionAttributes];
  [v4 encodeObject:v8 forKey:@"exAppExtensionAttributes"];

  v9 = [(IXPlaceholderAttributes *)self minimumOSVersion];
  [v4 encodeObject:v9 forKey:@"minimumOSVersion"];

  v10 = [(IXPlaceholderAttributes *)self requiredDeviceCapabilities];
  [v4 encodeObject:v10 forKey:@"requiredDeviceCapabilities"];

  v11 = [(IXPlaceholderAttributes *)self sbAppTags];
  [v4 encodeObject:v11 forKey:@"sbAppTags"];

  v12 = [(IXPlaceholderAttributes *)self lsCounterpartIdentifiers];
  [v4 encodeObject:v12 forKey:@"lsCounterpartIdentifiers"];

  [v4 encodeBool:-[IXPlaceholderAttributes lsRequiresPostProcessing](self forKey:{"lsRequiresPostProcessing"), @"lsRequiresPostProcessing"}];
  v13 = [(IXPlaceholderAttributes *)self sbIconMasqueradeIdentifier];
  [v4 encodeObject:v13 forKey:@"sbIconMasqueradeIdentifier"];

  v14 = [(IXPlaceholderAttributes *)self companionBundleIdentifierForWatchApp];
  [v4 encodeObject:v14 forKey:@"companionBundleIdentifierForWatchApp"];

  [v4 encodeBool:-[IXPlaceholderAttributes watchOnlyApp](self forKey:{"watchOnlyApp"), @"watchOnlyApp"}];
  [v4 encodeBool:-[IXPlaceholderAttributes runsIndependentlyOfCompanionApp](self forKey:{"runsIndependentlyOfCompanionApp"), @"runsIndependentlyOfCompanionApp"}];
  [v4 encodeBool:-[IXPlaceholderAttributes arcadeApp](self forKey:{"arcadeApp"), @"arcadeApp"}];
  v15 = [(IXPlaceholderAttributes *)self webKitPushBundleMetadata];
  [v4 encodeObject:v15 forKey:@"webKitPushBundleMetadata"];

  v16 = [(IXPlaceholderAttributes *)self uiDeviceFamily];
  [v4 encodeObject:v16 forKey:@"uiDeviceFamily"];

  v17 = [(IXPlaceholderAttributes *)self accentColorName];
  [v4 encodeObject:v17 forKey:@"accentColorName"];

  v18 = [(IXPlaceholderAttributes *)self uiLaunchScreen];
  [v4 encodeObject:v18 forKey:@"uiLaunchScreen"];

  [v4 encodeBool:-[IXPlaceholderAttributes lsRequiresIPhoneOS](self forKey:{"lsRequiresIPhoneOS"), @"lsRequiresIPhoneOS"}];
  v19 = [(IXPlaceholderAttributes *)self cfBundleSupportedPlatforms];
  [v4 encodeObject:v19 forKey:@"cfBundleSupportedPlatforms"];

  v20 = [(IXPlaceholderAttributes *)self dtPlatformName];
  [v4 encodeObject:v20 forKey:@"dtPlatformName"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(IXPlaceholderAttributes *)self launchProhibited];
    if (v6 != [v5 launchProhibited])
    {
LABEL_3:
      v7 = 0;
LABEL_20:

      goto LABEL_21;
    }

    v8 = [(IXPlaceholderAttributes *)self bundleVersion];
    v9 = [v5 bundleVersion];
    v10 = v8;
    v11 = v9;
    v12 = v11;
    if ((v10 != 0) != (v11 != 0) || v10 && v11 && ![v10 isEqual:v11])
    {
      goto LABEL_18;
    }

    v13 = [(IXPlaceholderAttributes *)self bundleShortVersionString];
    v14 = [v5 bundleShortVersionString];
    v10 = v13;
    v15 = v14;
    v12 = v15;
    if ((v10 != 0) != (v15 != 0) || v10 && v15 && ![v10 isEqual:v15])
    {
      goto LABEL_18;
    }

    v16 = [(IXPlaceholderAttributes *)self extensionDictionary];
    v17 = [v5 extensionDictionary];
    v10 = v16;
    v18 = v17;
    v12 = v18;
    if ((v10 != 0) != (v18 != 0) || v10 && v18 && ![v10 isEqual:v18])
    {
      goto LABEL_18;
    }

    v19 = [(IXPlaceholderAttributes *)self exAppExtensionAttributes];
    v20 = [v5 exAppExtensionAttributes];
    v10 = v19;
    v21 = v20;
    v12 = v21;
    if ((v10 != 0) != (v21 != 0) || v10 && v21 && ![v10 isEqual:v21])
    {
LABEL_18:

      v7 = 0;
    }

    else
    {

      v23 = [(IXPlaceholderAttributes *)self minimumOSVersion];
      v24 = [v5 minimumOSVersion];
      v25 = sub_100007900(v23, v24);

      if (!v25)
      {
        goto LABEL_3;
      }

      v26 = [(IXPlaceholderAttributes *)self requiredDeviceCapabilities];
      v27 = [v5 requiredDeviceCapabilities];
      v28 = sub_100007900(v26, v27);

      if (!v28)
      {
        goto LABEL_3;
      }

      v29 = [(IXPlaceholderAttributes *)self sbAppTags];
      v30 = [v5 sbAppTags];
      v31 = sub_100007900(v29, v30);

      if (!v31)
      {
        goto LABEL_3;
      }

      v32 = [(IXPlaceholderAttributes *)self lsCounterpartIdentifiers];
      v33 = [v5 lsCounterpartIdentifiers];
      v34 = sub_100007900(v32, v33);

      if (!v34)
      {
        goto LABEL_3;
      }

      v35 = [(IXPlaceholderAttributes *)self lsRequiresPostProcessing];
      if (v35 != [v5 lsRequiresPostProcessing])
      {
        goto LABEL_3;
      }

      v36 = [(IXPlaceholderAttributes *)self sbIconMasqueradeIdentifier];
      v37 = [v5 sbIconMasqueradeIdentifier];
      v38 = sub_100007900(v36, v37);

      if (!v38)
      {
        goto LABEL_3;
      }

      v39 = [(IXPlaceholderAttributes *)self companionBundleIdentifierForWatchApp];
      v40 = [v5 companionBundleIdentifierForWatchApp];
      v41 = sub_100007900(v39, v40);

      if (!v41)
      {
        goto LABEL_3;
      }

      v42 = [(IXPlaceholderAttributes *)self watchOnlyApp];
      if (v42 != [v5 watchOnlyApp])
      {
        goto LABEL_3;
      }

      v43 = [(IXPlaceholderAttributes *)self runsIndependentlyOfCompanionApp];
      if (v43 != [v5 runsIndependentlyOfCompanionApp])
      {
        goto LABEL_3;
      }

      v44 = [(IXPlaceholderAttributes *)self arcadeApp];
      if (v44 != [v5 arcadeApp])
      {
        goto LABEL_3;
      }

      v45 = [(IXPlaceholderAttributes *)self webKitPushBundleMetadata];
      v46 = [v5 webKitPushBundleMetadata];
      v47 = sub_100007900(v45, v46);

      if (!v47)
      {
        goto LABEL_3;
      }

      v48 = [(IXPlaceholderAttributes *)self uiDeviceFamily];
      v49 = [v5 uiDeviceFamily];
      v50 = sub_100007900(v48, v49);

      if (!v50)
      {
        goto LABEL_3;
      }

      v51 = [(IXPlaceholderAttributes *)self accentColorName];
      v52 = [v5 accentColorName];
      v53 = sub_100007900(v51, v52);

      if (!v53)
      {
        goto LABEL_3;
      }

      v54 = [(IXPlaceholderAttributes *)self uiLaunchScreen];
      v55 = [v5 uiLaunchScreen];
      v56 = sub_100007900(v54, v55);

      if (!v56)
      {
        goto LABEL_3;
      }

      v57 = [(IXPlaceholderAttributes *)self lsRequiresIPhoneOS];
      if (v57 != [v5 lsRequiresIPhoneOS])
      {
        goto LABEL_3;
      }

      v58 = [(IXPlaceholderAttributes *)self cfBundleSupportedPlatforms];
      v59 = [v5 cfBundleSupportedPlatforms];
      v60 = sub_100007900(v58, v59);

      if (!v60)
      {
        goto LABEL_3;
      }

      v10 = [(IXPlaceholderAttributes *)self dtPlatformName];
      v12 = [v5 dtPlatformName];
      v7 = sub_100007900(v10, v12);
    }

    goto LABEL_20;
  }

  v7 = 0;
LABEL_21:

  return v7;
}

- (unint64_t)hash
{
  v3 = [(IXPlaceholderAttributes *)self launchProhibited];
  v4 = [(IXPlaceholderAttributes *)self bundleVersion];
  v5 = [v4 hash];

  v6 = [(IXPlaceholderAttributes *)self bundleShortVersionString];
  v7 = v5 | [v6 hash] | v3;

  v8 = [(IXPlaceholderAttributes *)self extensionDictionary];
  v9 = [v8 hash];

  v10 = [(IXPlaceholderAttributes *)self exAppExtensionAttributes];
  v11 = v9 | [v10 hash];

  v12 = [(IXPlaceholderAttributes *)self minimumOSVersion];
  v13 = v7 | v11 | [v12 hash];

  v14 = [(IXPlaceholderAttributes *)self requiredDeviceCapabilities];
  v15 = [v14 hash];

  v16 = [(IXPlaceholderAttributes *)self sbAppTags];
  v17 = v15 | [v16 hash];

  v18 = [(IXPlaceholderAttributes *)self lsCounterpartIdentifiers];
  v19 = v17 | [v18 hash];

  v20 = v13 | v19 | [(IXPlaceholderAttributes *)self lsRequiresPostProcessing];
  v21 = [(IXPlaceholderAttributes *)self sbIconMasqueradeIdentifier];
  v22 = [v21 hash];

  v23 = [(IXPlaceholderAttributes *)self companionBundleIdentifierForWatchApp];
  v24 = v22 | [v23 hash];

  v25 = v24 | [(IXPlaceholderAttributes *)self watchOnlyApp];
  v26 = v25 | [(IXPlaceholderAttributes *)self runsIndependentlyOfCompanionApp];
  v27 = v20 | v26 | [(IXPlaceholderAttributes *)self arcadeApp];
  v28 = [(IXPlaceholderAttributes *)self webKitPushBundleMetadata];
  v29 = [v28 hash];

  v30 = [(IXPlaceholderAttributes *)self uiDeviceFamily];
  v31 = v29 | [v30 hash];

  v32 = [(IXPlaceholderAttributes *)self accentColorName];
  v33 = v31 | [v32 hash];

  v34 = [(IXPlaceholderAttributes *)self uiLaunchScreen];
  v35 = v33 | [v34 hash];

  v36 = v35 | [(IXPlaceholderAttributes *)self lsRequiresIPhoneOS];
  v37 = [(IXPlaceholderAttributes *)self cfBundleSupportedPlatforms];
  v38 = v27 | v36 | [v37 hash];

  v39 = [(IXPlaceholderAttributes *)self dtPlatformName];
  v40 = [v39 hash];

  return v38 | v40;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setLaunchProhibited:{-[IXPlaceholderAttributes launchProhibited](self, "launchProhibited")}];
  v5 = [(IXPlaceholderAttributes *)self bundleVersion];
  [v4 setBundleVersion:v5];

  v6 = [(IXPlaceholderAttributes *)self bundleShortVersionString];
  [v4 setBundleShortVersionString:v6];

  v7 = [(IXPlaceholderAttributes *)self extensionDictionary];
  [v4 setExtensionDictionary:v7];

  v8 = [(IXPlaceholderAttributes *)self exAppExtensionAttributes];
  [v4 setExAppExtensionAttributes:v8];

  v9 = [(IXPlaceholderAttributes *)self minimumOSVersion];
  [v4 setMinimumOSVersion:v9];

  v10 = [(IXPlaceholderAttributes *)self requiredDeviceCapabilities];
  [v4 setRequiredDeviceCapabilities:v10];

  v11 = [(IXPlaceholderAttributes *)self sbAppTags];
  [v4 setSbAppTags:v11];

  v12 = [(IXPlaceholderAttributes *)self lsCounterpartIdentifiers];
  [v4 setLsCounterpartIdentifiers:v12];

  [v4 setLsRequiresPostProcessing:{-[IXPlaceholderAttributes lsRequiresPostProcessing](self, "lsRequiresPostProcessing")}];
  v13 = [(IXPlaceholderAttributes *)self sbIconMasqueradeIdentifier];
  [v4 setSbIconMasqueradeIdentifier:v13];

  v14 = [(IXPlaceholderAttributes *)self companionBundleIdentifierForWatchApp];
  [v4 setCompanionBundleIdentifierForWatchApp:v14];

  [v4 setWatchOnlyApp:{-[IXPlaceholderAttributes watchOnlyApp](self, "watchOnlyApp")}];
  [v4 setRunsIndependentlyOfCompanionApp:{-[IXPlaceholderAttributes runsIndependentlyOfCompanionApp](self, "runsIndependentlyOfCompanionApp")}];
  [v4 setArcadeApp:{-[IXPlaceholderAttributes arcadeApp](self, "arcadeApp")}];
  v15 = [(IXPlaceholderAttributes *)self webKitPushBundleMetadata];
  [v4 setWebKitPushBundleMetadata:v15];

  v16 = [(IXPlaceholderAttributes *)self uiDeviceFamily];
  [v4 setUiDeviceFamily:v16];

  v17 = [(IXPlaceholderAttributes *)self accentColorName];
  [v4 setAccentColorName:v17];

  v18 = [(IXPlaceholderAttributes *)self uiLaunchScreen];
  [v4 setUiLaunchScreen:v18];

  [v4 setLsRequiresIPhoneOS:{-[IXPlaceholderAttributes lsRequiresIPhoneOS](self, "lsRequiresIPhoneOS")}];
  v19 = [(IXPlaceholderAttributes *)self cfBundleSupportedPlatforms];
  [v4 setCfBundleSupportedPlatforms:v19];

  v20 = [(IXPlaceholderAttributes *)self dtPlatformName];
  [v4 setDtPlatformName:v20];

  return v4;
}

- (IXPlaceholderAttributes)initWithInfoPlistFromBundleURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(IXPlaceholderAttributes *)self _plistKeys];
  v8 = sub_100094D20(v6, v7, a4);

  if (v8)
  {
    self = [(IXPlaceholderAttributes *)self initWithInfoPlistDictionary:v8];
    v9 = self;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (IXPlaceholderAttributes)initWithInfoPlistFromBundle:(__CFBundle *)a3 error:(id *)a4
{
  v6 = self;
  v7 = [(IXPlaceholderAttributes *)self _plistKeys];
  v8 = sub_100094E80(a3, v7, a4);

  if (v8)
  {
    v6 = [(IXPlaceholderAttributes *)v6 initWithInfoPlistDictionary:v8];
    v9 = v6;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (IXPlaceholderAttributes)initWithInfoPlistDictionary:(id)a3
{
  v4 = a3;
  v5 = [(IXPlaceholderAttributes *)self init];
  if (!v5)
  {
    goto LABEL_77;
  }

  v6 = [v4 objectForKeyedSubscript:@"LSApplicationLaunchProhibited"];
  [(IXPlaceholderAttributes *)v5 setLaunchProhibited:sub_10008F068(v6, 0)];

  v7 = [v4 objectForKeyedSubscript:kCFBundleVersionKey];
  objc_opt_class();
  v8 = v7;
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  [(IXPlaceholderAttributes *)v5 setBundleVersion:v9];
  v10 = [v4 objectForKeyedSubscript:_kCFBundleShortVersionStringKey];
  objc_opt_class();
  v11 = v10;
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  [(IXPlaceholderAttributes *)v5 setBundleShortVersionString:v12];
  v13 = [v4 objectForKeyedSubscript:@"NSExtension"];
  objc_opt_class();
  v14 = v13;
  if (objc_opt_isKindOfClass())
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  [(IXPlaceholderAttributes *)v5 setExtensionDictionary:v15];
  v16 = [v4 objectForKeyedSubscript:@"EXAppExtensionAttributes"];
  objc_opt_class();
  v17 = v16;
  if (objc_opt_isKindOfClass())
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  [(IXPlaceholderAttributes *)v5 setExAppExtensionAttributes:v18];
  v19 = [v4 objectForKeyedSubscript:@"MinimumOSVersion"];
  objc_opt_class();
  v20 = v19;
  if (objc_opt_isKindOfClass())
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  [(IXPlaceholderAttributes *)v5 setMinimumOSVersion:v21];
  v22 = [v4 objectForKeyedSubscript:@"SBAppTags"];
  objc_opt_class();
  v23 = v22;
  if (objc_opt_isKindOfClass())
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  objc_opt_class();
  v25 = sub_10008F1F8(v24);
  [(IXPlaceholderAttributes *)v5 setSbAppTags:v25];

  v26 = [v4 objectForKeyedSubscript:@"LSCounterpartIdentifiers"];
  objc_opt_class();
  v27 = v26;
  if (objc_opt_isKindOfClass())
  {
    v28 = v27;
  }

  else
  {
    v28 = 0;
  }

  objc_opt_class();
  v29 = sub_10008F1F8(v28);
  [(IXPlaceholderAttributes *)v5 setLsCounterpartIdentifiers:v29];

  v30 = [v4 objectForKeyedSubscript:@"LSRequiresPostProcessing"];
  [(IXPlaceholderAttributes *)v5 setLsRequiresPostProcessing:sub_10008F068(v30, 0)];

  v31 = [v4 objectForKeyedSubscript:@"SBIconMasqueradeIdentifier"];
  objc_opt_class();
  v32 = v31;
  if (objc_opt_isKindOfClass())
  {
    v33 = v32;
  }

  else
  {
    v33 = 0;
  }

  [(IXPlaceholderAttributes *)v5 setSbIconMasqueradeIdentifier:v33];
  v34 = [v4 objectForKeyedSubscript:@"WKCompanionAppBundleIdentifier"];
  objc_opt_class();
  v35 = v34;
  if (objc_opt_isKindOfClass())
  {
    v36 = v35;
  }

  else
  {
    v36 = 0;
  }

  [(IXPlaceholderAttributes *)v5 setCompanionBundleIdentifierForWatchApp:v36];
  v37 = [v4 objectForKeyedSubscript:@"UIRequiredDeviceCapabilities"];
  objc_opt_class();
  v38 = v37;
  if (objc_opt_isKindOfClass())
  {
    v39 = v38;
  }

  else
  {
    v39 = 0;
  }

  if (v39)
  {
    v40 = v38;
    v41 = objc_opt_class();
    v42 = objc_opt_class();
    v43 = sub_10008F36C(v40, v41, v42);

    [(IXPlaceholderAttributes *)v5 setRequiredDeviceCapabilities:v43];
  }

  else
  {
    objc_opt_class();
    v44 = v38;
    if (objc_opt_isKindOfClass())
    {
      v45 = v44;
    }

    else
    {
      v45 = 0;
    }

    if (v45)
    {
      [(IXPlaceholderAttributes *)v5 setRequiredDeviceCapabilitiesWithArray:v44];
    }
  }

  v46 = [v4 objectForKeyedSubscript:@"WKWatchOnly"];
  [(IXPlaceholderAttributes *)v5 setWatchOnlyApp:sub_10008F068(v46, 0)];

  v47 = [v4 objectForKeyedSubscript:@"WKRunsIndependentlyOfCompanionApp"];
  [(IXPlaceholderAttributes *)v5 setRunsIndependentlyOfCompanionApp:sub_10008F068(v47, 0)];

  v48 = [v4 objectForKeyedSubscript:@"NSApplicationRequiresArcade"];
  [(IXPlaceholderAttributes *)v5 setArcadeApp:sub_10008F068(v48, 0)];

  v49 = [v4 objectForKeyedSubscript:@"WKPushBundleMetadata"];
  objc_opt_class();
  v50 = v49;
  if (objc_opt_isKindOfClass())
  {
    v51 = v50;
  }

  else
  {
    v51 = 0;
  }

  [(IXPlaceholderAttributes *)v5 setWebKitPushBundleMetadata:v51];
  v52 = [v4 objectForKeyedSubscript:@"NSAccentColorName"];
  objc_opt_class();
  v53 = v52;
  if (objc_opt_isKindOfClass())
  {
    v54 = v53;
  }

  else
  {
    v54 = 0;
  }

  [(IXPlaceholderAttributes *)v5 setAccentColorName:v54];
  v55 = [v4 objectForKeyedSubscript:@"UILaunchScreen"];
  objc_opt_class();
  v56 = v55;
  if (objc_opt_isKindOfClass())
  {
    v57 = v56;
  }

  else
  {
    v57 = 0;
  }

  [(IXPlaceholderAttributes *)v5 setUiLaunchScreen:v57];
  v58 = [v4 objectForKeyedSubscript:@"UIDeviceFamily"];
  objc_opt_class();
  v59 = v58;
  if (objc_opt_isKindOfClass())
  {
    v60 = v59;
  }

  else
  {
    v60 = 0;
  }

  if (v60)
  {
    v82 = v38;
    v83 = v4;
    v61 = objc_opt_new();
    v84 = 0u;
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    v62 = v60;
    v63 = [v62 countByEnumeratingWithState:&v84 objects:v89 count:16];
    if (v63)
    {
      v64 = v63;
      v65 = *v85;
      do
      {
        for (i = 0; i != v64; i = i + 1)
        {
          if (*v85 != v65)
          {
            objc_enumerationMutation(v62);
          }

          v67 = *(*(&v84 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            v68 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v67 intValue]);
            [v61 addObject:v68];
          }
        }

        v64 = [v62 countByEnumeratingWithState:&v84 objects:v89 count:16];
      }

      while (v64);
    }

    v69 = [v61 copy];
    [(IXPlaceholderAttributes *)v5 setUiDeviceFamily:v69];

    v38 = v82;
    v4 = v83;
  }

  v70 = [v4 objectForKeyedSubscript:@"LSRequiresIPhoneOS"];
  [(IXPlaceholderAttributes *)v5 setLsRequiresIPhoneOS:sub_10008F068(v70, 0)];

  v71 = [v4 objectForKeyedSubscript:_kCFBundleSupportedPlatformsKey];
  objc_opt_class();
  v72 = v71;
  if (objc_opt_isKindOfClass())
  {
    v73 = v72;
  }

  else
  {
    v73 = 0;
  }

  objc_opt_class();
  if (v73)
  {
    v74 = sub_10008F1F8(v72);
  }

  else
  {
    v75 = v72;
    if (objc_opt_isKindOfClass())
    {
      v76 = v75;
    }

    else
    {
      v76 = 0;
    }

    if (!v76)
    {
      goto LABEL_73;
    }

    v88 = v75;
    v77 = v75;
    v74 = [NSArray arrayWithObjects:&v88 count:1];
  }

  [(IXPlaceholderAttributes *)v5 setCfBundleSupportedPlatforms:v74];

LABEL_73:
  v78 = [v4 objectForKeyedSubscript:@"DTPlatformName"];
  objc_opt_class();
  v79 = v78;
  if (objc_opt_isKindOfClass())
  {
    v80 = v79;
  }

  else
  {
    v80 = 0;
  }

  [(IXPlaceholderAttributes *)v5 setDtPlatformName:v80];
LABEL_77:

  return v5;
}

- (void)setRequiredDeviceCapabilitiesWithArray:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * v10);
        objc_opt_class();
        v12 = v11;
        if (objc_opt_isKindOfClass())
        {
          v13 = v12;
        }

        else
        {
          v13 = 0;
        }

        if (v13)
        {
          [v5 setObject:&__kCFBooleanTrue forKeyedSubscript:{v12, v15}];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  if ([v5 count])
  {
    v14 = [v5 copy];
    [(IXPlaceholderAttributes *)self setRequiredDeviceCapabilities:v14];
  }
}

- (id)infoPlistContent
{
  v3 = objc_opt_new();
  if ([(IXPlaceholderAttributes *)self launchProhibited])
  {
    [v3 setObject:&__kCFBooleanTrue forKeyedSubscript:@"LSApplicationLaunchProhibited"];
  }

  v4 = [(IXPlaceholderAttributes *)self bundleVersion];
  [v3 setObject:v4 forKeyedSubscript:kCFBundleVersionKey];

  v5 = [(IXPlaceholderAttributes *)self bundleShortVersionString];
  [v3 setObject:v5 forKeyedSubscript:_kCFBundleShortVersionStringKey];

  v6 = [(IXPlaceholderAttributes *)self extensionDictionary];
  [v3 setObject:v6 forKeyedSubscript:@"NSExtension"];

  v7 = [(IXPlaceholderAttributes *)self exAppExtensionAttributes];
  [v3 setObject:v7 forKeyedSubscript:@"EXAppExtensionAttributes"];

  v8 = [(IXPlaceholderAttributes *)self minimumOSVersion];
  [v3 setObject:v8 forKeyedSubscript:@"MinimumOSVersion"];

  v9 = [(IXPlaceholderAttributes *)self requiredDeviceCapabilities];
  [v3 setObject:v9 forKeyedSubscript:@"UIRequiredDeviceCapabilities"];

  v10 = [(IXPlaceholderAttributes *)self sbAppTags];
  [v3 setObject:v10 forKeyedSubscript:@"SBAppTags"];

  v11 = [(IXPlaceholderAttributes *)self lsCounterpartIdentifiers];
  [v3 setObject:v11 forKeyedSubscript:@"LSCounterpartIdentifiers"];

  v12 = [(IXPlaceholderAttributes *)self sbIconMasqueradeIdentifier];
  [v3 setObject:v12 forKeyedSubscript:@"SBIconMasqueradeIdentifier"];

  v13 = [(IXPlaceholderAttributes *)self companionBundleIdentifierForWatchApp];
  [v3 setObject:v13 forKeyedSubscript:@"WKCompanionAppBundleIdentifier"];

  v14 = [(IXPlaceholderAttributes *)self webKitPushBundleMetadata];
  [v3 setObject:v14 forKeyedSubscript:@"WKPushBundleMetadata"];

  v15 = [(IXPlaceholderAttributes *)self uiDeviceFamily];
  [v3 setObject:v15 forKeyedSubscript:@"UIDeviceFamily"];

  v16 = [(IXPlaceholderAttributes *)self accentColorName];
  [v3 setObject:v16 forKeyedSubscript:@"NSAccentColorName"];

  v17 = [(IXPlaceholderAttributes *)self uiLaunchScreen];
  [v3 setObject:v17 forKeyedSubscript:@"UILaunchScreen"];

  if ([(IXPlaceholderAttributes *)self watchOnlyApp])
  {
    [v3 setObject:&__kCFBooleanTrue forKeyedSubscript:@"WKWatchOnly"];
  }

  if ([(IXPlaceholderAttributes *)self runsIndependentlyOfCompanionApp])
  {
    [v3 setObject:&__kCFBooleanTrue forKeyedSubscript:@"WKRunsIndependentlyOfCompanionApp"];
  }

  if ([(IXPlaceholderAttributes *)self arcadeApp])
  {
    [v3 setObject:&__kCFBooleanTrue forKeyedSubscript:@"NSApplicationRequiresArcade"];
  }

  if ([(IXPlaceholderAttributes *)self lsRequiresPostProcessing])
  {
    [v3 setObject:&__kCFBooleanTrue forKeyedSubscript:@"LSRequiresPostProcessing"];
  }

  if ([(IXPlaceholderAttributes *)self lsRequiresIPhoneOS])
  {
    [v3 setObject:&__kCFBooleanTrue forKeyedSubscript:@"LSRequiresIPhoneOS"];
  }

  v18 = [(IXPlaceholderAttributes *)self cfBundleSupportedPlatforms];
  [v3 setObject:v18 forKeyedSubscript:_kCFBundleSupportedPlatformsKey];

  v19 = [(IXPlaceholderAttributes *)self dtPlatformName];
  [v3 setObject:v19 forKeyedSubscript:@"DTPlatformName"];

  v20 = [v3 copy];

  return v20;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(IXPlaceholderAttributes *)self infoPlistContent];
  v6 = [NSString stringWithFormat:@"<%@<%p> : %@>", v4, self, v5];

  return v6;
}

@end