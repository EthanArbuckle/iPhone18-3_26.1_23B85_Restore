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
  v51.receiver = self;
  v51.super_class = IXPlaceholderAttributes;
  v5 = [(IXPlaceholderAttributes *)&v51 init];
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

    v18 = MEMORY[0x1E695DFD8];
    v19 = objc_opt_class();
    v20 = [v18 setWithObjects:{v19, objc_opt_class(), 0}];
    v21 = [v4 decodeObjectOfClasses:v20 forKey:@"sbAppTags"];
    sbAppTags = v5->_sbAppTags;
    v5->_sbAppTags = v21;

    v23 = MEMORY[0x1E695DFD8];
    v24 = objc_opt_class();
    v25 = [v23 setWithObjects:{v24, objc_opt_class(), 0}];
    v26 = [v4 decodeObjectOfClasses:v25 forKey:@"lsCounterpartIdentifiers"];
    lsCounterpartIdentifiers = v5->_lsCounterpartIdentifiers;
    v5->_lsCounterpartIdentifiers = v26;

    v5->_lsRequiresPostProcessing = [v4 decodeBoolForKey:@"lsRequiresPostProcessing"];
    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sbIconMasqueradeIdentifier"];
    sbIconMasqueradeIdentifier = v5->_sbIconMasqueradeIdentifier;
    v5->_sbIconMasqueradeIdentifier = v28;

    v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"companionBundleIdentifierForWatchApp"];
    companionBundleIdentifierForWatchApp = v5->_companionBundleIdentifierForWatchApp;
    v5->_companionBundleIdentifierForWatchApp = v30;

    v5->_watchOnlyApp = [v4 decodeBoolForKey:@"watchOnlyApp"];
    v5->_runsIndependentlyOfCompanionApp = [v4 decodeBoolForKey:@"runsIndependentlyOfCompanionApp"];
    v5->_arcadeApp = [v4 decodeBoolForKey:@"arcadeApp"];
    v32 = [v4 decodePropertyListForKey:@"webKitPushBundleMetadata"];
    webKitPushBundleMetadata = v5->_webKitPushBundleMetadata;
    v5->_webKitPushBundleMetadata = v32;

    v34 = MEMORY[0x1E695DFD8];
    v35 = objc_opt_class();
    v36 = [v34 setWithObjects:{v35, objc_opt_class(), 0}];
    v37 = [v4 decodeObjectOfClasses:v36 forKey:@"uiDeviceFamily"];
    uiDeviceFamily = v5->_uiDeviceFamily;
    v5->_uiDeviceFamily = v37;

    v39 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accentColorName"];
    accentColorName = v5->_accentColorName;
    v5->_accentColorName = v39;

    v41 = [v4 decodePropertyListForKey:@"uiLaunchScreen"];
    uiLaunchScreen = v5->_uiLaunchScreen;
    v5->_uiLaunchScreen = v41;

    v5->_lsRequiresIPhoneOS = [v4 decodeBoolForKey:@"lsRequiresIPhoneOS"];
    v43 = MEMORY[0x1E695DFD8];
    v44 = objc_opt_class();
    v45 = [v43 setWithObjects:{v44, objc_opt_class(), 0}];
    v46 = [v4 decodeObjectOfClasses:v45 forKey:@"cfBundleSupportedPlatforms"];
    cfBundleSupportedPlatforms = v5->_cfBundleSupportedPlatforms;
    v5->_cfBundleSupportedPlatforms = v46;

    v48 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dtPlatformName"];
    dtPlatformName = v5->_dtPlatformName;
    v5->_dtPlatformName = v48;
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
      v25 = _CompareObjects(v23, v24);

      if (!v25)
      {
        goto LABEL_3;
      }

      v26 = [(IXPlaceholderAttributes *)self requiredDeviceCapabilities];
      v27 = [v5 requiredDeviceCapabilities];
      v28 = _CompareObjects(v26, v27);

      if (!v28)
      {
        goto LABEL_3;
      }

      v29 = [(IXPlaceholderAttributes *)self sbAppTags];
      v30 = [v5 sbAppTags];
      v31 = _CompareObjects(v29, v30);

      if (!v31)
      {
        goto LABEL_3;
      }

      v32 = [(IXPlaceholderAttributes *)self lsCounterpartIdentifiers];
      v33 = [v5 lsCounterpartIdentifiers];
      v34 = _CompareObjects(v32, v33);

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
      v38 = _CompareObjects(v36, v37);

      if (!v38)
      {
        goto LABEL_3;
      }

      v39 = [(IXPlaceholderAttributes *)self companionBundleIdentifierForWatchApp];
      v40 = [v5 companionBundleIdentifierForWatchApp];
      v41 = _CompareObjects(v39, v40);

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
      v47 = _CompareObjects(v45, v46);

      if (!v47)
      {
        goto LABEL_3;
      }

      v48 = [(IXPlaceholderAttributes *)self uiDeviceFamily];
      v49 = [v5 uiDeviceFamily];
      v50 = _CompareObjects(v48, v49);

      if (!v50)
      {
        goto LABEL_3;
      }

      v51 = [(IXPlaceholderAttributes *)self accentColorName];
      v52 = [v5 accentColorName];
      v53 = _CompareObjects(v51, v52);

      if (!v53)
      {
        goto LABEL_3;
      }

      v54 = [(IXPlaceholderAttributes *)self uiLaunchScreen];
      v55 = [v5 uiLaunchScreen];
      v56 = _CompareObjects(v54, v55);

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
      v60 = _CompareObjects(v58, v59);

      if (!v60)
      {
        goto LABEL_3;
      }

      v10 = [(IXPlaceholderAttributes *)self dtPlatformName];
      v12 = [v5 dtPlatformName];
      v7 = _CompareObjects(v10, v12);
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
  v8 = LoadInfoPlistFromBundleAtURL(v6, v7, a4);

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
  v8 = LoadInfoPlistFromBundle(a3, v7, a4);

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
  v93 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(IXPlaceholderAttributes *)self init];
  if (!v5)
  {
    goto LABEL_77;
  }

  v6 = [v4 objectForKeyedSubscript:@"LSApplicationLaunchProhibited"];
  [(IXPlaceholderAttributes *)v5 setLaunchProhibited:IXBooleanValue(v6, 0)];

  v7 = [v4 objectForKeyedSubscript:*MEMORY[0x1E695E500]];
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
  v10 = [v4 objectForKeyedSubscript:*MEMORY[0x1E695E148]];
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
  v25 = IXFilterArrayForClass(v24);
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
  v29 = IXFilterArrayForClass(v28);
  [(IXPlaceholderAttributes *)v5 setLsCounterpartIdentifiers:v29];

  v30 = [v4 objectForKeyedSubscript:@"LSRequiresPostProcessing"];
  [(IXPlaceholderAttributes *)v5 setLsRequiresPostProcessing:IXBooleanValue(v30, 0)];

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
    v43 = IXFilterDictionaryForClass(v40, v41, v42);

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
  [(IXPlaceholderAttributes *)v5 setWatchOnlyApp:IXBooleanValue(v46, 0)];

  v47 = [v4 objectForKeyedSubscript:@"WKRunsIndependentlyOfCompanionApp"];
  [(IXPlaceholderAttributes *)v5 setRunsIndependentlyOfCompanionApp:IXBooleanValue(v47, 0)];

  v48 = [v4 objectForKeyedSubscript:@"NSApplicationRequiresArcade"];
  [(IXPlaceholderAttributes *)v5 setArcadeApp:IXBooleanValue(v48, 0)];

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
    v85 = v38;
    v86 = v4;
    v61 = objc_opt_new();
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    v90 = 0u;
    v62 = v60;
    v63 = [v62 countByEnumeratingWithState:&v87 objects:v92 count:16];
    if (v63)
    {
      v64 = v63;
      v65 = *v88;
      do
      {
        for (i = 0; i != v64; ++i)
        {
          if (*v88 != v65)
          {
            objc_enumerationMutation(v62);
          }

          v67 = *(*(&v87 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            v68 = [v67 intValue];
            v69 = [MEMORY[0x1E696AD98] numberWithInt:v68];
            [v61 addObject:v69];
          }
        }

        v64 = [v62 countByEnumeratingWithState:&v87 objects:v92 count:16];
      }

      while (v64);
    }

    v70 = [v61 copy];
    [(IXPlaceholderAttributes *)v5 setUiDeviceFamily:v70];

    v38 = v85;
    v4 = v86;
  }

  v71 = [v4 objectForKeyedSubscript:@"LSRequiresIPhoneOS"];
  [(IXPlaceholderAttributes *)v5 setLsRequiresIPhoneOS:IXBooleanValue(v71, 0)];

  v72 = [v4 objectForKeyedSubscript:*MEMORY[0x1E695E158]];
  objc_opt_class();
  v73 = v72;
  if (objc_opt_isKindOfClass())
  {
    v74 = v73;
  }

  else
  {
    v74 = 0;
  }

  objc_opt_class();
  if (v74)
  {
    v75 = IXFilterArrayForClass(v73);
  }

  else
  {
    v76 = v73;
    if (objc_opt_isKindOfClass())
    {
      v77 = v76;
    }

    else
    {
      v77 = 0;
    }

    if (!v77)
    {
      goto LABEL_73;
    }

    v91 = v76;
    v78 = MEMORY[0x1E695DEC8];
    v79 = v76;
    v75 = [v78 arrayWithObjects:&v91 count:1];
  }

  [(IXPlaceholderAttributes *)v5 setCfBundleSupportedPlatforms:v75];

LABEL_73:
  v80 = [v4 objectForKeyedSubscript:@"DTPlatformName"];
  objc_opt_class();
  v81 = v80;
  if (objc_opt_isKindOfClass())
  {
    v82 = v81;
  }

  else
  {
    v82 = 0;
  }

  [(IXPlaceholderAttributes *)v5 setDtPlatformName:v82];
LABEL_77:

  v83 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)setRequiredDeviceCapabilitiesWithArray:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    v10 = MEMORY[0x1E695E118];
    do
    {
      v11 = 0;
      do
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v17 + 1) + 8 * v11);
        objc_opt_class();
        v13 = v12;
        if (objc_opt_isKindOfClass())
        {
          v14 = v13;
        }

        else
        {
          v14 = 0;
        }

        if (v14)
        {
          [v5 setObject:v10 forKeyedSubscript:{v13, v17}];
        }

        ++v11;
      }

      while (v8 != v11);
      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  if ([v5 count])
  {
    v15 = [v5 copy];
    [(IXPlaceholderAttributes *)self setRequiredDeviceCapabilities:v15];
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (id)infoPlistContent
{
  v3 = objc_opt_new();
  if ([(IXPlaceholderAttributes *)self launchProhibited])
  {
    [v3 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"LSApplicationLaunchProhibited"];
  }

  v4 = [(IXPlaceholderAttributes *)self bundleVersion];
  [v3 setObject:v4 forKeyedSubscript:*MEMORY[0x1E695E500]];

  v5 = [(IXPlaceholderAttributes *)self bundleShortVersionString];
  [v3 setObject:v5 forKeyedSubscript:*MEMORY[0x1E695E148]];

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
    [v3 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"WKWatchOnly"];
  }

  if ([(IXPlaceholderAttributes *)self runsIndependentlyOfCompanionApp])
  {
    [v3 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"WKRunsIndependentlyOfCompanionApp"];
  }

  if ([(IXPlaceholderAttributes *)self arcadeApp])
  {
    [v3 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"NSApplicationRequiresArcade"];
  }

  if ([(IXPlaceholderAttributes *)self lsRequiresPostProcessing])
  {
    [v3 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"LSRequiresPostProcessing"];
  }

  if ([(IXPlaceholderAttributes *)self lsRequiresIPhoneOS])
  {
    [v3 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"LSRequiresIPhoneOS"];
  }

  v18 = [(IXPlaceholderAttributes *)self cfBundleSupportedPlatforms];
  [v3 setObject:v18 forKeyedSubscript:*MEMORY[0x1E695E158]];

  v19 = [(IXPlaceholderAttributes *)self dtPlatformName];
  [v3 setObject:v19 forKeyedSubscript:@"DTPlatformName"];

  v20 = [v3 copy];

  return v20;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(IXPlaceholderAttributes *)self infoPlistContent];
  v7 = [v3 stringWithFormat:@"<%@<%p> : %@>", v5, self, v6];

  return v7;
}

@end