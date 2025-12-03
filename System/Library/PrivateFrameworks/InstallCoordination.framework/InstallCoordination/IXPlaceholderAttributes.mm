@interface IXPlaceholderAttributes
- (BOOL)isEqual:(id)equal;
- (IXPlaceholderAttributes)init;
- (IXPlaceholderAttributes)initWithCoder:(id)coder;
- (IXPlaceholderAttributes)initWithInfoPlistDictionary:(id)dictionary;
- (IXPlaceholderAttributes)initWithInfoPlistFromBundle:(__CFBundle *)bundle error:(id *)error;
- (IXPlaceholderAttributes)initWithInfoPlistFromBundleURL:(id)l error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)infoPlistContent;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setRequiredDeviceCapabilitiesWithArray:(id)array;
@end

@implementation IXPlaceholderAttributes

- (IXPlaceholderAttributes)init
{
  v3.receiver = self;
  v3.super_class = IXPlaceholderAttributes;
  return [(IXPlaceholderAttributes *)&v3 init];
}

- (IXPlaceholderAttributes)initWithCoder:(id)coder
{
  coderCopy = coder;
  v51.receiver = self;
  v51.super_class = IXPlaceholderAttributes;
  v5 = [(IXPlaceholderAttributes *)&v51 init];
  if (v5)
  {
    v5->_launchProhibited = [coderCopy decodeBoolForKey:@"launchProhibited"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleVersion"];
    bundleVersion = v5->_bundleVersion;
    v5->_bundleVersion = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleShortVersionString"];
    bundleShortVersionString = v5->_bundleShortVersionString;
    v5->_bundleShortVersionString = v8;

    v10 = [coderCopy decodePropertyListForKey:@"extensionDictionary"];
    extensionDictionary = v5->_extensionDictionary;
    v5->_extensionDictionary = v10;

    v12 = [coderCopy decodePropertyListForKey:@"exAppExtensionAttributes"];
    exAppExtensionAttributes = v5->_exAppExtensionAttributes;
    v5->_exAppExtensionAttributes = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"minimumOSVersion"];
    minimumOSVersion = v5->_minimumOSVersion;
    v5->_minimumOSVersion = v14;

    v16 = [coderCopy decodePropertyListForKey:@"requiredDeviceCapabilities"];
    requiredDeviceCapabilities = v5->_requiredDeviceCapabilities;
    v5->_requiredDeviceCapabilities = v16;

    v18 = MEMORY[0x1E695DFD8];
    v19 = objc_opt_class();
    v20 = [v18 setWithObjects:{v19, objc_opt_class(), 0}];
    v21 = [coderCopy decodeObjectOfClasses:v20 forKey:@"sbAppTags"];
    sbAppTags = v5->_sbAppTags;
    v5->_sbAppTags = v21;

    v23 = MEMORY[0x1E695DFD8];
    v24 = objc_opt_class();
    v25 = [v23 setWithObjects:{v24, objc_opt_class(), 0}];
    v26 = [coderCopy decodeObjectOfClasses:v25 forKey:@"lsCounterpartIdentifiers"];
    lsCounterpartIdentifiers = v5->_lsCounterpartIdentifiers;
    v5->_lsCounterpartIdentifiers = v26;

    v5->_lsRequiresPostProcessing = [coderCopy decodeBoolForKey:@"lsRequiresPostProcessing"];
    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sbIconMasqueradeIdentifier"];
    sbIconMasqueradeIdentifier = v5->_sbIconMasqueradeIdentifier;
    v5->_sbIconMasqueradeIdentifier = v28;

    v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"companionBundleIdentifierForWatchApp"];
    companionBundleIdentifierForWatchApp = v5->_companionBundleIdentifierForWatchApp;
    v5->_companionBundleIdentifierForWatchApp = v30;

    v5->_watchOnlyApp = [coderCopy decodeBoolForKey:@"watchOnlyApp"];
    v5->_runsIndependentlyOfCompanionApp = [coderCopy decodeBoolForKey:@"runsIndependentlyOfCompanionApp"];
    v5->_arcadeApp = [coderCopy decodeBoolForKey:@"arcadeApp"];
    v32 = [coderCopy decodePropertyListForKey:@"webKitPushBundleMetadata"];
    webKitPushBundleMetadata = v5->_webKitPushBundleMetadata;
    v5->_webKitPushBundleMetadata = v32;

    v34 = MEMORY[0x1E695DFD8];
    v35 = objc_opt_class();
    v36 = [v34 setWithObjects:{v35, objc_opt_class(), 0}];
    v37 = [coderCopy decodeObjectOfClasses:v36 forKey:@"uiDeviceFamily"];
    uiDeviceFamily = v5->_uiDeviceFamily;
    v5->_uiDeviceFamily = v37;

    v39 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accentColorName"];
    accentColorName = v5->_accentColorName;
    v5->_accentColorName = v39;

    v41 = [coderCopy decodePropertyListForKey:@"uiLaunchScreen"];
    uiLaunchScreen = v5->_uiLaunchScreen;
    v5->_uiLaunchScreen = v41;

    v5->_lsRequiresIPhoneOS = [coderCopy decodeBoolForKey:@"lsRequiresIPhoneOS"];
    v43 = MEMORY[0x1E695DFD8];
    v44 = objc_opt_class();
    v45 = [v43 setWithObjects:{v44, objc_opt_class(), 0}];
    v46 = [coderCopy decodeObjectOfClasses:v45 forKey:@"cfBundleSupportedPlatforms"];
    cfBundleSupportedPlatforms = v5->_cfBundleSupportedPlatforms;
    v5->_cfBundleSupportedPlatforms = v46;

    v48 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dtPlatformName"];
    dtPlatformName = v5->_dtPlatformName;
    v5->_dtPlatformName = v48;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[IXPlaceholderAttributes launchProhibited](self forKey:{"launchProhibited"), @"launchProhibited"}];
  bundleVersion = [(IXPlaceholderAttributes *)self bundleVersion];
  [coderCopy encodeObject:bundleVersion forKey:@"bundleVersion"];

  bundleShortVersionString = [(IXPlaceholderAttributes *)self bundleShortVersionString];
  [coderCopy encodeObject:bundleShortVersionString forKey:@"bundleShortVersionString"];

  extensionDictionary = [(IXPlaceholderAttributes *)self extensionDictionary];
  [coderCopy encodeObject:extensionDictionary forKey:@"extensionDictionary"];

  exAppExtensionAttributes = [(IXPlaceholderAttributes *)self exAppExtensionAttributes];
  [coderCopy encodeObject:exAppExtensionAttributes forKey:@"exAppExtensionAttributes"];

  minimumOSVersion = [(IXPlaceholderAttributes *)self minimumOSVersion];
  [coderCopy encodeObject:minimumOSVersion forKey:@"minimumOSVersion"];

  requiredDeviceCapabilities = [(IXPlaceholderAttributes *)self requiredDeviceCapabilities];
  [coderCopy encodeObject:requiredDeviceCapabilities forKey:@"requiredDeviceCapabilities"];

  sbAppTags = [(IXPlaceholderAttributes *)self sbAppTags];
  [coderCopy encodeObject:sbAppTags forKey:@"sbAppTags"];

  lsCounterpartIdentifiers = [(IXPlaceholderAttributes *)self lsCounterpartIdentifiers];
  [coderCopy encodeObject:lsCounterpartIdentifiers forKey:@"lsCounterpartIdentifiers"];

  [coderCopy encodeBool:-[IXPlaceholderAttributes lsRequiresPostProcessing](self forKey:{"lsRequiresPostProcessing"), @"lsRequiresPostProcessing"}];
  sbIconMasqueradeIdentifier = [(IXPlaceholderAttributes *)self sbIconMasqueradeIdentifier];
  [coderCopy encodeObject:sbIconMasqueradeIdentifier forKey:@"sbIconMasqueradeIdentifier"];

  companionBundleIdentifierForWatchApp = [(IXPlaceholderAttributes *)self companionBundleIdentifierForWatchApp];
  [coderCopy encodeObject:companionBundleIdentifierForWatchApp forKey:@"companionBundleIdentifierForWatchApp"];

  [coderCopy encodeBool:-[IXPlaceholderAttributes watchOnlyApp](self forKey:{"watchOnlyApp"), @"watchOnlyApp"}];
  [coderCopy encodeBool:-[IXPlaceholderAttributes runsIndependentlyOfCompanionApp](self forKey:{"runsIndependentlyOfCompanionApp"), @"runsIndependentlyOfCompanionApp"}];
  [coderCopy encodeBool:-[IXPlaceholderAttributes arcadeApp](self forKey:{"arcadeApp"), @"arcadeApp"}];
  webKitPushBundleMetadata = [(IXPlaceholderAttributes *)self webKitPushBundleMetadata];
  [coderCopy encodeObject:webKitPushBundleMetadata forKey:@"webKitPushBundleMetadata"];

  uiDeviceFamily = [(IXPlaceholderAttributes *)self uiDeviceFamily];
  [coderCopy encodeObject:uiDeviceFamily forKey:@"uiDeviceFamily"];

  accentColorName = [(IXPlaceholderAttributes *)self accentColorName];
  [coderCopy encodeObject:accentColorName forKey:@"accentColorName"];

  uiLaunchScreen = [(IXPlaceholderAttributes *)self uiLaunchScreen];
  [coderCopy encodeObject:uiLaunchScreen forKey:@"uiLaunchScreen"];

  [coderCopy encodeBool:-[IXPlaceholderAttributes lsRequiresIPhoneOS](self forKey:{"lsRequiresIPhoneOS"), @"lsRequiresIPhoneOS"}];
  cfBundleSupportedPlatforms = [(IXPlaceholderAttributes *)self cfBundleSupportedPlatforms];
  [coderCopy encodeObject:cfBundleSupportedPlatforms forKey:@"cfBundleSupportedPlatforms"];

  dtPlatformName = [(IXPlaceholderAttributes *)self dtPlatformName];
  [coderCopy encodeObject:dtPlatformName forKey:@"dtPlatformName"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    launchProhibited = [(IXPlaceholderAttributes *)self launchProhibited];
    if (launchProhibited != [v5 launchProhibited])
    {
LABEL_3:
      v7 = 0;
LABEL_20:

      goto LABEL_21;
    }

    bundleVersion = [(IXPlaceholderAttributes *)self bundleVersion];
    bundleVersion2 = [v5 bundleVersion];
    dtPlatformName = bundleVersion;
    v11 = bundleVersion2;
    dtPlatformName2 = v11;
    if ((dtPlatformName != 0) != (v11 != 0) || dtPlatformName && v11 && ![dtPlatformName isEqual:v11])
    {
      goto LABEL_18;
    }

    bundleShortVersionString = [(IXPlaceholderAttributes *)self bundleShortVersionString];
    bundleShortVersionString2 = [v5 bundleShortVersionString];
    dtPlatformName = bundleShortVersionString;
    v15 = bundleShortVersionString2;
    dtPlatformName2 = v15;
    if ((dtPlatformName != 0) != (v15 != 0) || dtPlatformName && v15 && ![dtPlatformName isEqual:v15])
    {
      goto LABEL_18;
    }

    extensionDictionary = [(IXPlaceholderAttributes *)self extensionDictionary];
    extensionDictionary2 = [v5 extensionDictionary];
    dtPlatformName = extensionDictionary;
    v18 = extensionDictionary2;
    dtPlatformName2 = v18;
    if ((dtPlatformName != 0) != (v18 != 0) || dtPlatformName && v18 && ![dtPlatformName isEqual:v18])
    {
      goto LABEL_18;
    }

    exAppExtensionAttributes = [(IXPlaceholderAttributes *)self exAppExtensionAttributes];
    exAppExtensionAttributes2 = [v5 exAppExtensionAttributes];
    dtPlatformName = exAppExtensionAttributes;
    v21 = exAppExtensionAttributes2;
    dtPlatformName2 = v21;
    if ((dtPlatformName != 0) != (v21 != 0) || dtPlatformName && v21 && ![dtPlatformName isEqual:v21])
    {
LABEL_18:

      v7 = 0;
    }

    else
    {

      minimumOSVersion = [(IXPlaceholderAttributes *)self minimumOSVersion];
      minimumOSVersion2 = [v5 minimumOSVersion];
      v25 = _CompareObjects(minimumOSVersion, minimumOSVersion2);

      if (!v25)
      {
        goto LABEL_3;
      }

      requiredDeviceCapabilities = [(IXPlaceholderAttributes *)self requiredDeviceCapabilities];
      requiredDeviceCapabilities2 = [v5 requiredDeviceCapabilities];
      v28 = _CompareObjects(requiredDeviceCapabilities, requiredDeviceCapabilities2);

      if (!v28)
      {
        goto LABEL_3;
      }

      sbAppTags = [(IXPlaceholderAttributes *)self sbAppTags];
      sbAppTags2 = [v5 sbAppTags];
      v31 = _CompareObjects(sbAppTags, sbAppTags2);

      if (!v31)
      {
        goto LABEL_3;
      }

      lsCounterpartIdentifiers = [(IXPlaceholderAttributes *)self lsCounterpartIdentifiers];
      lsCounterpartIdentifiers2 = [v5 lsCounterpartIdentifiers];
      v34 = _CompareObjects(lsCounterpartIdentifiers, lsCounterpartIdentifiers2);

      if (!v34)
      {
        goto LABEL_3;
      }

      lsRequiresPostProcessing = [(IXPlaceholderAttributes *)self lsRequiresPostProcessing];
      if (lsRequiresPostProcessing != [v5 lsRequiresPostProcessing])
      {
        goto LABEL_3;
      }

      sbIconMasqueradeIdentifier = [(IXPlaceholderAttributes *)self sbIconMasqueradeIdentifier];
      sbIconMasqueradeIdentifier2 = [v5 sbIconMasqueradeIdentifier];
      v38 = _CompareObjects(sbIconMasqueradeIdentifier, sbIconMasqueradeIdentifier2);

      if (!v38)
      {
        goto LABEL_3;
      }

      companionBundleIdentifierForWatchApp = [(IXPlaceholderAttributes *)self companionBundleIdentifierForWatchApp];
      companionBundleIdentifierForWatchApp2 = [v5 companionBundleIdentifierForWatchApp];
      v41 = _CompareObjects(companionBundleIdentifierForWatchApp, companionBundleIdentifierForWatchApp2);

      if (!v41)
      {
        goto LABEL_3;
      }

      watchOnlyApp = [(IXPlaceholderAttributes *)self watchOnlyApp];
      if (watchOnlyApp != [v5 watchOnlyApp])
      {
        goto LABEL_3;
      }

      runsIndependentlyOfCompanionApp = [(IXPlaceholderAttributes *)self runsIndependentlyOfCompanionApp];
      if (runsIndependentlyOfCompanionApp != [v5 runsIndependentlyOfCompanionApp])
      {
        goto LABEL_3;
      }

      arcadeApp = [(IXPlaceholderAttributes *)self arcadeApp];
      if (arcadeApp != [v5 arcadeApp])
      {
        goto LABEL_3;
      }

      webKitPushBundleMetadata = [(IXPlaceholderAttributes *)self webKitPushBundleMetadata];
      webKitPushBundleMetadata2 = [v5 webKitPushBundleMetadata];
      v47 = _CompareObjects(webKitPushBundleMetadata, webKitPushBundleMetadata2);

      if (!v47)
      {
        goto LABEL_3;
      }

      uiDeviceFamily = [(IXPlaceholderAttributes *)self uiDeviceFamily];
      uiDeviceFamily2 = [v5 uiDeviceFamily];
      v50 = _CompareObjects(uiDeviceFamily, uiDeviceFamily2);

      if (!v50)
      {
        goto LABEL_3;
      }

      accentColorName = [(IXPlaceholderAttributes *)self accentColorName];
      accentColorName2 = [v5 accentColorName];
      v53 = _CompareObjects(accentColorName, accentColorName2);

      if (!v53)
      {
        goto LABEL_3;
      }

      uiLaunchScreen = [(IXPlaceholderAttributes *)self uiLaunchScreen];
      uiLaunchScreen2 = [v5 uiLaunchScreen];
      v56 = _CompareObjects(uiLaunchScreen, uiLaunchScreen2);

      if (!v56)
      {
        goto LABEL_3;
      }

      lsRequiresIPhoneOS = [(IXPlaceholderAttributes *)self lsRequiresIPhoneOS];
      if (lsRequiresIPhoneOS != [v5 lsRequiresIPhoneOS])
      {
        goto LABEL_3;
      }

      cfBundleSupportedPlatforms = [(IXPlaceholderAttributes *)self cfBundleSupportedPlatforms];
      cfBundleSupportedPlatforms2 = [v5 cfBundleSupportedPlatforms];
      v60 = _CompareObjects(cfBundleSupportedPlatforms, cfBundleSupportedPlatforms2);

      if (!v60)
      {
        goto LABEL_3;
      }

      dtPlatformName = [(IXPlaceholderAttributes *)self dtPlatformName];
      dtPlatformName2 = [v5 dtPlatformName];
      v7 = _CompareObjects(dtPlatformName, dtPlatformName2);
    }

    goto LABEL_20;
  }

  v7 = 0;
LABEL_21:

  return v7;
}

- (unint64_t)hash
{
  launchProhibited = [(IXPlaceholderAttributes *)self launchProhibited];
  bundleVersion = [(IXPlaceholderAttributes *)self bundleVersion];
  v5 = [bundleVersion hash];

  bundleShortVersionString = [(IXPlaceholderAttributes *)self bundleShortVersionString];
  v7 = v5 | [bundleShortVersionString hash] | launchProhibited;

  extensionDictionary = [(IXPlaceholderAttributes *)self extensionDictionary];
  v9 = [extensionDictionary hash];

  exAppExtensionAttributes = [(IXPlaceholderAttributes *)self exAppExtensionAttributes];
  v11 = v9 | [exAppExtensionAttributes hash];

  minimumOSVersion = [(IXPlaceholderAttributes *)self minimumOSVersion];
  v13 = v7 | v11 | [minimumOSVersion hash];

  requiredDeviceCapabilities = [(IXPlaceholderAttributes *)self requiredDeviceCapabilities];
  v15 = [requiredDeviceCapabilities hash];

  sbAppTags = [(IXPlaceholderAttributes *)self sbAppTags];
  v17 = v15 | [sbAppTags hash];

  lsCounterpartIdentifiers = [(IXPlaceholderAttributes *)self lsCounterpartIdentifiers];
  v19 = v17 | [lsCounterpartIdentifiers hash];

  v20 = v13 | v19 | [(IXPlaceholderAttributes *)self lsRequiresPostProcessing];
  sbIconMasqueradeIdentifier = [(IXPlaceholderAttributes *)self sbIconMasqueradeIdentifier];
  v22 = [sbIconMasqueradeIdentifier hash];

  companionBundleIdentifierForWatchApp = [(IXPlaceholderAttributes *)self companionBundleIdentifierForWatchApp];
  v24 = v22 | [companionBundleIdentifierForWatchApp hash];

  v25 = v24 | [(IXPlaceholderAttributes *)self watchOnlyApp];
  v26 = v25 | [(IXPlaceholderAttributes *)self runsIndependentlyOfCompanionApp];
  v27 = v20 | v26 | [(IXPlaceholderAttributes *)self arcadeApp];
  webKitPushBundleMetadata = [(IXPlaceholderAttributes *)self webKitPushBundleMetadata];
  v29 = [webKitPushBundleMetadata hash];

  uiDeviceFamily = [(IXPlaceholderAttributes *)self uiDeviceFamily];
  v31 = v29 | [uiDeviceFamily hash];

  accentColorName = [(IXPlaceholderAttributes *)self accentColorName];
  v33 = v31 | [accentColorName hash];

  uiLaunchScreen = [(IXPlaceholderAttributes *)self uiLaunchScreen];
  v35 = v33 | [uiLaunchScreen hash];

  v36 = v35 | [(IXPlaceholderAttributes *)self lsRequiresIPhoneOS];
  cfBundleSupportedPlatforms = [(IXPlaceholderAttributes *)self cfBundleSupportedPlatforms];
  v38 = v27 | v36 | [cfBundleSupportedPlatforms hash];

  dtPlatformName = [(IXPlaceholderAttributes *)self dtPlatformName];
  v40 = [dtPlatformName hash];

  return v38 | v40;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setLaunchProhibited:{-[IXPlaceholderAttributes launchProhibited](self, "launchProhibited")}];
  bundleVersion = [(IXPlaceholderAttributes *)self bundleVersion];
  [v4 setBundleVersion:bundleVersion];

  bundleShortVersionString = [(IXPlaceholderAttributes *)self bundleShortVersionString];
  [v4 setBundleShortVersionString:bundleShortVersionString];

  extensionDictionary = [(IXPlaceholderAttributes *)self extensionDictionary];
  [v4 setExtensionDictionary:extensionDictionary];

  exAppExtensionAttributes = [(IXPlaceholderAttributes *)self exAppExtensionAttributes];
  [v4 setExAppExtensionAttributes:exAppExtensionAttributes];

  minimumOSVersion = [(IXPlaceholderAttributes *)self minimumOSVersion];
  [v4 setMinimumOSVersion:minimumOSVersion];

  requiredDeviceCapabilities = [(IXPlaceholderAttributes *)self requiredDeviceCapabilities];
  [v4 setRequiredDeviceCapabilities:requiredDeviceCapabilities];

  sbAppTags = [(IXPlaceholderAttributes *)self sbAppTags];
  [v4 setSbAppTags:sbAppTags];

  lsCounterpartIdentifiers = [(IXPlaceholderAttributes *)self lsCounterpartIdentifiers];
  [v4 setLsCounterpartIdentifiers:lsCounterpartIdentifiers];

  [v4 setLsRequiresPostProcessing:{-[IXPlaceholderAttributes lsRequiresPostProcessing](self, "lsRequiresPostProcessing")}];
  sbIconMasqueradeIdentifier = [(IXPlaceholderAttributes *)self sbIconMasqueradeIdentifier];
  [v4 setSbIconMasqueradeIdentifier:sbIconMasqueradeIdentifier];

  companionBundleIdentifierForWatchApp = [(IXPlaceholderAttributes *)self companionBundleIdentifierForWatchApp];
  [v4 setCompanionBundleIdentifierForWatchApp:companionBundleIdentifierForWatchApp];

  [v4 setWatchOnlyApp:{-[IXPlaceholderAttributes watchOnlyApp](self, "watchOnlyApp")}];
  [v4 setRunsIndependentlyOfCompanionApp:{-[IXPlaceholderAttributes runsIndependentlyOfCompanionApp](self, "runsIndependentlyOfCompanionApp")}];
  [v4 setArcadeApp:{-[IXPlaceholderAttributes arcadeApp](self, "arcadeApp")}];
  webKitPushBundleMetadata = [(IXPlaceholderAttributes *)self webKitPushBundleMetadata];
  [v4 setWebKitPushBundleMetadata:webKitPushBundleMetadata];

  uiDeviceFamily = [(IXPlaceholderAttributes *)self uiDeviceFamily];
  [v4 setUiDeviceFamily:uiDeviceFamily];

  accentColorName = [(IXPlaceholderAttributes *)self accentColorName];
  [v4 setAccentColorName:accentColorName];

  uiLaunchScreen = [(IXPlaceholderAttributes *)self uiLaunchScreen];
  [v4 setUiLaunchScreen:uiLaunchScreen];

  [v4 setLsRequiresIPhoneOS:{-[IXPlaceholderAttributes lsRequiresIPhoneOS](self, "lsRequiresIPhoneOS")}];
  cfBundleSupportedPlatforms = [(IXPlaceholderAttributes *)self cfBundleSupportedPlatforms];
  [v4 setCfBundleSupportedPlatforms:cfBundleSupportedPlatforms];

  dtPlatformName = [(IXPlaceholderAttributes *)self dtPlatformName];
  [v4 setDtPlatformName:dtPlatformName];

  return v4;
}

- (IXPlaceholderAttributes)initWithInfoPlistFromBundleURL:(id)l error:(id *)error
{
  lCopy = l;
  _plistKeys = [(IXPlaceholderAttributes *)self _plistKeys];
  v8 = LoadInfoPlistFromBundleAtURL(lCopy, _plistKeys, error);

  if (v8)
  {
    self = [(IXPlaceholderAttributes *)self initWithInfoPlistDictionary:v8];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (IXPlaceholderAttributes)initWithInfoPlistFromBundle:(__CFBundle *)bundle error:(id *)error
{
  selfCopy = self;
  _plistKeys = [(IXPlaceholderAttributes *)self _plistKeys];
  v8 = LoadInfoPlistFromBundle(bundle, _plistKeys, error);

  if (v8)
  {
    selfCopy = [(IXPlaceholderAttributes *)selfCopy initWithInfoPlistDictionary:v8];
    v9 = selfCopy;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (IXPlaceholderAttributes)initWithInfoPlistDictionary:(id)dictionary
{
  v93 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v5 = [(IXPlaceholderAttributes *)self init];
  if (!v5)
  {
    goto LABEL_77;
  }

  v6 = [dictionaryCopy objectForKeyedSubscript:@"LSApplicationLaunchProhibited"];
  [(IXPlaceholderAttributes *)v5 setLaunchProhibited:IXBooleanValue(v6, 0)];

  v7 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E695E500]];
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
  v10 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E695E148]];
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
  v13 = [dictionaryCopy objectForKeyedSubscript:@"NSExtension"];
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
  v16 = [dictionaryCopy objectForKeyedSubscript:@"EXAppExtensionAttributes"];
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
  v19 = [dictionaryCopy objectForKeyedSubscript:@"MinimumOSVersion"];
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
  v22 = [dictionaryCopy objectForKeyedSubscript:@"SBAppTags"];
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

  v26 = [dictionaryCopy objectForKeyedSubscript:@"LSCounterpartIdentifiers"];
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

  v30 = [dictionaryCopy objectForKeyedSubscript:@"LSRequiresPostProcessing"];
  [(IXPlaceholderAttributes *)v5 setLsRequiresPostProcessing:IXBooleanValue(v30, 0)];

  v31 = [dictionaryCopy objectForKeyedSubscript:@"SBIconMasqueradeIdentifier"];
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
  v34 = [dictionaryCopy objectForKeyedSubscript:@"WKCompanionAppBundleIdentifier"];
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
  v37 = [dictionaryCopy objectForKeyedSubscript:@"UIRequiredDeviceCapabilities"];
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

  v46 = [dictionaryCopy objectForKeyedSubscript:@"WKWatchOnly"];
  [(IXPlaceholderAttributes *)v5 setWatchOnlyApp:IXBooleanValue(v46, 0)];

  v47 = [dictionaryCopy objectForKeyedSubscript:@"WKRunsIndependentlyOfCompanionApp"];
  [(IXPlaceholderAttributes *)v5 setRunsIndependentlyOfCompanionApp:IXBooleanValue(v47, 0)];

  v48 = [dictionaryCopy objectForKeyedSubscript:@"NSApplicationRequiresArcade"];
  [(IXPlaceholderAttributes *)v5 setArcadeApp:IXBooleanValue(v48, 0)];

  v49 = [dictionaryCopy objectForKeyedSubscript:@"WKPushBundleMetadata"];
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
  v52 = [dictionaryCopy objectForKeyedSubscript:@"NSAccentColorName"];
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
  v55 = [dictionaryCopy objectForKeyedSubscript:@"UILaunchScreen"];
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
  v58 = [dictionaryCopy objectForKeyedSubscript:@"UIDeviceFamily"];
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
    v86 = dictionaryCopy;
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
            intValue = [v67 intValue];
            v69 = [MEMORY[0x1E696AD98] numberWithInt:intValue];
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
    dictionaryCopy = v86;
  }

  v71 = [dictionaryCopy objectForKeyedSubscript:@"LSRequiresIPhoneOS"];
  [(IXPlaceholderAttributes *)v5 setLsRequiresIPhoneOS:IXBooleanValue(v71, 0)];

  v72 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E695E158]];
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
  v80 = [dictionaryCopy objectForKeyedSubscript:@"DTPlatformName"];
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

- (void)setRequiredDeviceCapabilitiesWithArray:(id)array
{
  v22 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  v5 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = arrayCopy;
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

  bundleVersion = [(IXPlaceholderAttributes *)self bundleVersion];
  [v3 setObject:bundleVersion forKeyedSubscript:*MEMORY[0x1E695E500]];

  bundleShortVersionString = [(IXPlaceholderAttributes *)self bundleShortVersionString];
  [v3 setObject:bundleShortVersionString forKeyedSubscript:*MEMORY[0x1E695E148]];

  extensionDictionary = [(IXPlaceholderAttributes *)self extensionDictionary];
  [v3 setObject:extensionDictionary forKeyedSubscript:@"NSExtension"];

  exAppExtensionAttributes = [(IXPlaceholderAttributes *)self exAppExtensionAttributes];
  [v3 setObject:exAppExtensionAttributes forKeyedSubscript:@"EXAppExtensionAttributes"];

  minimumOSVersion = [(IXPlaceholderAttributes *)self minimumOSVersion];
  [v3 setObject:minimumOSVersion forKeyedSubscript:@"MinimumOSVersion"];

  requiredDeviceCapabilities = [(IXPlaceholderAttributes *)self requiredDeviceCapabilities];
  [v3 setObject:requiredDeviceCapabilities forKeyedSubscript:@"UIRequiredDeviceCapabilities"];

  sbAppTags = [(IXPlaceholderAttributes *)self sbAppTags];
  [v3 setObject:sbAppTags forKeyedSubscript:@"SBAppTags"];

  lsCounterpartIdentifiers = [(IXPlaceholderAttributes *)self lsCounterpartIdentifiers];
  [v3 setObject:lsCounterpartIdentifiers forKeyedSubscript:@"LSCounterpartIdentifiers"];

  sbIconMasqueradeIdentifier = [(IXPlaceholderAttributes *)self sbIconMasqueradeIdentifier];
  [v3 setObject:sbIconMasqueradeIdentifier forKeyedSubscript:@"SBIconMasqueradeIdentifier"];

  companionBundleIdentifierForWatchApp = [(IXPlaceholderAttributes *)self companionBundleIdentifierForWatchApp];
  [v3 setObject:companionBundleIdentifierForWatchApp forKeyedSubscript:@"WKCompanionAppBundleIdentifier"];

  webKitPushBundleMetadata = [(IXPlaceholderAttributes *)self webKitPushBundleMetadata];
  [v3 setObject:webKitPushBundleMetadata forKeyedSubscript:@"WKPushBundleMetadata"];

  uiDeviceFamily = [(IXPlaceholderAttributes *)self uiDeviceFamily];
  [v3 setObject:uiDeviceFamily forKeyedSubscript:@"UIDeviceFamily"];

  accentColorName = [(IXPlaceholderAttributes *)self accentColorName];
  [v3 setObject:accentColorName forKeyedSubscript:@"NSAccentColorName"];

  uiLaunchScreen = [(IXPlaceholderAttributes *)self uiLaunchScreen];
  [v3 setObject:uiLaunchScreen forKeyedSubscript:@"UILaunchScreen"];

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

  cfBundleSupportedPlatforms = [(IXPlaceholderAttributes *)self cfBundleSupportedPlatforms];
  [v3 setObject:cfBundleSupportedPlatforms forKeyedSubscript:*MEMORY[0x1E695E158]];

  dtPlatformName = [(IXPlaceholderAttributes *)self dtPlatformName];
  [v3 setObject:dtPlatformName forKeyedSubscript:@"DTPlatformName"];

  v20 = [v3 copy];

  return v20;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  infoPlistContent = [(IXPlaceholderAttributes *)self infoPlistContent];
  v7 = [v3 stringWithFormat:@"<%@<%p> : %@>", v5, self, infoPlistContent];

  return v7;
}

@end