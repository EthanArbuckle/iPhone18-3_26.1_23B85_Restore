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
  v47.receiver = self;
  v47.super_class = IXPlaceholderAttributes;
  v5 = [(IXPlaceholderAttributes *)&v47 init];
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

    v18 = objc_opt_class();
    v19 = [NSSet setWithObjects:v18, objc_opt_class(), 0];
    v20 = [coderCopy decodeObjectOfClasses:v19 forKey:@"sbAppTags"];
    sbAppTags = v5->_sbAppTags;
    v5->_sbAppTags = v20;

    v22 = objc_opt_class();
    v23 = [NSSet setWithObjects:v22, objc_opt_class(), 0];
    v24 = [coderCopy decodeObjectOfClasses:v23 forKey:@"lsCounterpartIdentifiers"];
    lsCounterpartIdentifiers = v5->_lsCounterpartIdentifiers;
    v5->_lsCounterpartIdentifiers = v24;

    v5->_lsRequiresPostProcessing = [coderCopy decodeBoolForKey:@"lsRequiresPostProcessing"];
    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sbIconMasqueradeIdentifier"];
    sbIconMasqueradeIdentifier = v5->_sbIconMasqueradeIdentifier;
    v5->_sbIconMasqueradeIdentifier = v26;

    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"companionBundleIdentifierForWatchApp"];
    companionBundleIdentifierForWatchApp = v5->_companionBundleIdentifierForWatchApp;
    v5->_companionBundleIdentifierForWatchApp = v28;

    v5->_watchOnlyApp = [coderCopy decodeBoolForKey:@"watchOnlyApp"];
    v5->_runsIndependentlyOfCompanionApp = [coderCopy decodeBoolForKey:@"runsIndependentlyOfCompanionApp"];
    v5->_arcadeApp = [coderCopy decodeBoolForKey:@"arcadeApp"];
    v30 = [coderCopy decodePropertyListForKey:@"webKitPushBundleMetadata"];
    webKitPushBundleMetadata = v5->_webKitPushBundleMetadata;
    v5->_webKitPushBundleMetadata = v30;

    v32 = objc_opt_class();
    v33 = [NSSet setWithObjects:v32, objc_opt_class(), 0];
    v34 = [coderCopy decodeObjectOfClasses:v33 forKey:@"uiDeviceFamily"];
    uiDeviceFamily = v5->_uiDeviceFamily;
    v5->_uiDeviceFamily = v34;

    v36 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accentColorName"];
    accentColorName = v5->_accentColorName;
    v5->_accentColorName = v36;

    v38 = [coderCopy decodePropertyListForKey:@"uiLaunchScreen"];
    uiLaunchScreen = v5->_uiLaunchScreen;
    v5->_uiLaunchScreen = v38;

    v5->_lsRequiresIPhoneOS = [coderCopy decodeBoolForKey:@"lsRequiresIPhoneOS"];
    v40 = objc_opt_class();
    v41 = [NSSet setWithObjects:v40, objc_opt_class(), 0];
    v42 = [coderCopy decodeObjectOfClasses:v41 forKey:@"cfBundleSupportedPlatforms"];
    cfBundleSupportedPlatforms = v5->_cfBundleSupportedPlatforms;
    v5->_cfBundleSupportedPlatforms = v42;

    v44 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dtPlatformName"];
    dtPlatformName = v5->_dtPlatformName;
    v5->_dtPlatformName = v44;
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
      v25 = sub_100007900(minimumOSVersion, minimumOSVersion2);

      if (!v25)
      {
        goto LABEL_3;
      }

      requiredDeviceCapabilities = [(IXPlaceholderAttributes *)self requiredDeviceCapabilities];
      requiredDeviceCapabilities2 = [v5 requiredDeviceCapabilities];
      v28 = sub_100007900(requiredDeviceCapabilities, requiredDeviceCapabilities2);

      if (!v28)
      {
        goto LABEL_3;
      }

      sbAppTags = [(IXPlaceholderAttributes *)self sbAppTags];
      sbAppTags2 = [v5 sbAppTags];
      v31 = sub_100007900(sbAppTags, sbAppTags2);

      if (!v31)
      {
        goto LABEL_3;
      }

      lsCounterpartIdentifiers = [(IXPlaceholderAttributes *)self lsCounterpartIdentifiers];
      lsCounterpartIdentifiers2 = [v5 lsCounterpartIdentifiers];
      v34 = sub_100007900(lsCounterpartIdentifiers, lsCounterpartIdentifiers2);

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
      v38 = sub_100007900(sbIconMasqueradeIdentifier, sbIconMasqueradeIdentifier2);

      if (!v38)
      {
        goto LABEL_3;
      }

      companionBundleIdentifierForWatchApp = [(IXPlaceholderAttributes *)self companionBundleIdentifierForWatchApp];
      companionBundleIdentifierForWatchApp2 = [v5 companionBundleIdentifierForWatchApp];
      v41 = sub_100007900(companionBundleIdentifierForWatchApp, companionBundleIdentifierForWatchApp2);

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
      v47 = sub_100007900(webKitPushBundleMetadata, webKitPushBundleMetadata2);

      if (!v47)
      {
        goto LABEL_3;
      }

      uiDeviceFamily = [(IXPlaceholderAttributes *)self uiDeviceFamily];
      uiDeviceFamily2 = [v5 uiDeviceFamily];
      v50 = sub_100007900(uiDeviceFamily, uiDeviceFamily2);

      if (!v50)
      {
        goto LABEL_3;
      }

      accentColorName = [(IXPlaceholderAttributes *)self accentColorName];
      accentColorName2 = [v5 accentColorName];
      v53 = sub_100007900(accentColorName, accentColorName2);

      if (!v53)
      {
        goto LABEL_3;
      }

      uiLaunchScreen = [(IXPlaceholderAttributes *)self uiLaunchScreen];
      uiLaunchScreen2 = [v5 uiLaunchScreen];
      v56 = sub_100007900(uiLaunchScreen, uiLaunchScreen2);

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
      v60 = sub_100007900(cfBundleSupportedPlatforms, cfBundleSupportedPlatforms2);

      if (!v60)
      {
        goto LABEL_3;
      }

      dtPlatformName = [(IXPlaceholderAttributes *)self dtPlatformName];
      dtPlatformName2 = [v5 dtPlatformName];
      v7 = sub_100007900(dtPlatformName, dtPlatformName2);
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
  v8 = sub_100094D20(lCopy, _plistKeys, error);

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
  v8 = sub_100094E80(bundle, _plistKeys, error);

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
  dictionaryCopy = dictionary;
  v5 = [(IXPlaceholderAttributes *)self init];
  if (!v5)
  {
    goto LABEL_77;
  }

  v6 = [dictionaryCopy objectForKeyedSubscript:@"LSApplicationLaunchProhibited"];
  [(IXPlaceholderAttributes *)v5 setLaunchProhibited:sub_10008F068(v6, 0)];

  v7 = [dictionaryCopy objectForKeyedSubscript:kCFBundleVersionKey];
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
  v10 = [dictionaryCopy objectForKeyedSubscript:_kCFBundleShortVersionStringKey];
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
  v25 = sub_10008F1F8(v24);
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
  v29 = sub_10008F1F8(v28);
  [(IXPlaceholderAttributes *)v5 setLsCounterpartIdentifiers:v29];

  v30 = [dictionaryCopy objectForKeyedSubscript:@"LSRequiresPostProcessing"];
  [(IXPlaceholderAttributes *)v5 setLsRequiresPostProcessing:sub_10008F068(v30, 0)];

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

  v46 = [dictionaryCopy objectForKeyedSubscript:@"WKWatchOnly"];
  [(IXPlaceholderAttributes *)v5 setWatchOnlyApp:sub_10008F068(v46, 0)];

  v47 = [dictionaryCopy objectForKeyedSubscript:@"WKRunsIndependentlyOfCompanionApp"];
  [(IXPlaceholderAttributes *)v5 setRunsIndependentlyOfCompanionApp:sub_10008F068(v47, 0)];

  v48 = [dictionaryCopy objectForKeyedSubscript:@"NSApplicationRequiresArcade"];
  [(IXPlaceholderAttributes *)v5 setArcadeApp:sub_10008F068(v48, 0)];

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
    v82 = v38;
    v83 = dictionaryCopy;
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
    dictionaryCopy = v83;
  }

  v70 = [dictionaryCopy objectForKeyedSubscript:@"LSRequiresIPhoneOS"];
  [(IXPlaceholderAttributes *)v5 setLsRequiresIPhoneOS:sub_10008F068(v70, 0)];

  v71 = [dictionaryCopy objectForKeyedSubscript:_kCFBundleSupportedPlatformsKey];
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
  v78 = [dictionaryCopy objectForKeyedSubscript:@"DTPlatformName"];
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

- (void)setRequiredDeviceCapabilitiesWithArray:(id)array
{
  arrayCopy = array;
  v5 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = arrayCopy;
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

  bundleVersion = [(IXPlaceholderAttributes *)self bundleVersion];
  [v3 setObject:bundleVersion forKeyedSubscript:kCFBundleVersionKey];

  bundleShortVersionString = [(IXPlaceholderAttributes *)self bundleShortVersionString];
  [v3 setObject:bundleShortVersionString forKeyedSubscript:_kCFBundleShortVersionStringKey];

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

  cfBundleSupportedPlatforms = [(IXPlaceholderAttributes *)self cfBundleSupportedPlatforms];
  [v3 setObject:cfBundleSupportedPlatforms forKeyedSubscript:_kCFBundleSupportedPlatformsKey];

  dtPlatformName = [(IXPlaceholderAttributes *)self dtPlatformName];
  [v3 setObject:dtPlatformName forKeyedSubscript:@"DTPlatformName"];

  v20 = [v3 copy];

  return v20;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  infoPlistContent = [(IXPlaceholderAttributes *)self infoPlistContent];
  v6 = [NSString stringWithFormat:@"<%@<%p> : %@>", v4, self, infoPlistContent];

  return v6;
}

@end