@interface CPSClipMetadata
+ (id)fullAppOnlyClipBundleIDs;
- (BOOL)_preferAMPDefaultNameAndCaptionForCurrentLocale;
- (BOOL)canUpdateOnPhysicalInvocation;
- (BOOL)hasFullAppInstalledOnSystem;
- (BOOL)hasUpToDateVersionInstalledOnSystemIsPlaceholder:(BOOL *)placeholder;
- (BOOL)hasValidAssociatedDomainsToLaunchAppClip;
- (BOOL)isExpired;
- (BOOL)isPhysicalInvocationAllowed;
- (CPSClipMetadata)initWithBusinessItem:(id)item;
- (CPSClipMetadata)initWithCoder:(id)coder;
- (CPSClipMetadata)initWithDemoBundleURL:(id)l;
- (CPSClipMetadata)initWithDeveloperOverride:(id)override invocationURL:(id)l;
- (CPSClipMetadata)initWithDictionary:(id)dictionary bundleURL:(id)l;
- (CPSClipMetadata)initWithUncheckedDictionary:(id)dictionary;
- (NSString)bundleDisplayName;
- (NSString)clipCaption;
- (NSString)clipName;
- (NSString)clipOpenButtonTitle;
- (NSString)localizedSubtitleForClipSuggestion;
- (NSString)localizedTitleForClipSuggestion;
- (NSURL)clipHeroImageURL;
- (NSURL)clipLaunchURL;
- (id)_itemIDFromAppURLString:(id)string;
- (id)_thinnedSizeWithVariantsInfo:(id)info;
- (id)_thinnedSizeWithVariantsInfo:(id)info productVariants:(id)variants productVersion:(id)version;
- (id)description;
- (void)_updateInvocationPolicy:(id)policy;
- (void)_updateWithAMSMetadata:(id)metadata;
- (void)encodeWithCoder:(id)coder;
- (void)hasValidAssociatedDomainsToLaunchAppClip;
- (void)updateWithStoreClipMetadata:(id)metadata;
- (void)updateWithStoreParentAppMetadata:(id)metadata;
@end

@implementation CPSClipMetadata

- (NSString)localizedTitleForClipSuggestion
{
  clipName = [(CPSClipMetadata *)self clipName];
  if ([clipName length])
  {
    fullAppName = clipName;
  }

  else
  {
    fullAppName = [(CPSClipMetadata *)self fullAppName];
  }

  v5 = fullAppName;

  return v5;
}

- (NSString)localizedSubtitleForClipSuggestion
{
  if ([(CPSClipMetadata *)self isPoweredByThirdParty])
  {
    fullAppName = [(CPSClipMetadata *)self fullAppName];
    v4 = [CPSUtilities poweredByCaptionForAppName:fullAppName];
LABEL_5:
    v5 = v4;
    goto LABEL_6;
  }

  fullAppName = [(CPSClipMetadata *)self clipCaption];
  if ([fullAppName length])
  {
    v4 = fullAppName;
    fullAppName = v4;
    goto LABEL_5;
  }

  fullAppCaption = [(CPSClipMetadata *)self fullAppCaption];
  v8 = fullAppCaption;
  v9 = &stru_28567C2A8;
  if (fullAppCaption)
  {
    v9 = fullAppCaption;
  }

  v5 = v9;

LABEL_6:

  return v5;
}

- (CPSClipMetadata)initWithDemoBundleURL:(id)l
{
  lCopy = l;
  v13.receiver = self;
  v13.super_class = CPSClipMetadata;
  v5 = [(CPSClipMetadata *)&v13 init];
  if (v5)
  {
    v6 = v5;
    v7 = [lCopy URLByAppendingPathComponent:@"Info.json"];
    v8 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v7];
    if ([v8 length])
    {
      v12 = 0;
      v9 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v8 options:0 error:&v12];
      if (v12)
      {
        v10 = 0;
      }

      else
      {
        v6 = [(CPSClipMetadata *)v6 initWithDictionary:v9 bundleURL:lCopy];
        v10 = v6;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (CPSClipMetadata)initWithDictionary:(id)dictionary bundleURL:(id)l
{
  lCopy = l;
  dictionaryCopy = dictionary;
  v8 = [dictionaryCopy mutableCopy];
  v9 = [dictionaryCopy safari_stringForKey:@"abrClipHeroImage"];
  v10 = [lCopy URLByAppendingPathComponent:v9];
  [v8 setObject:v10 forKeyedSubscript:@"abrClipHeroImage"];

  v11 = [dictionaryCopy safari_stringForKey:@"storeClipHeroImage"];
  v12 = [lCopy URLByAppendingPathComponent:v11];
  [v8 setObject:v12 forKeyedSubscript:@"storeClipHeroImage"];

  v13 = [dictionaryCopy safari_stringForKey:@"fullAppIconURL"];

  v14 = [lCopy URLByAppendingPathComponent:v13];

  [v8 setObject:v14 forKeyedSubscript:@"fullAppIconURL"];
  v15 = [(CPSClipMetadata *)self initWithUncheckedDictionary:v8];

  return v15;
}

- (CPSClipMetadata)initWithUncheckedDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v65.receiver = self;
  v65.super_class = CPSClipMetadata;
  v5 = [(CPSClipMetadata *)&v65 init];
  if (v5)
  {
    v6 = [dictionaryCopy safari_stringForKey:@"abrClipName"];
    abrClipName = v5->_abrClipName;
    v5->_abrClipName = v6;

    v8 = [dictionaryCopy safari_stringForKey:@"abrClipCaption"];
    abrClipCaption = v5->_abrClipCaption;
    v5->_abrClipCaption = v8;

    v10 = [dictionaryCopy safari_URLForKey:@"abrClipHeroImage"];
    abrClipHeroImageURL = v5->_abrClipHeroImageURL;
    v5->_abrClipHeroImageURL = v10;

    v12 = [dictionaryCopy safari_numberForKey:@"abrClipAction"];
    v5->_clipAction = [v12 integerValue];

    v13 = [dictionaryCopy safari_stringForKey:@"storeClipName"];
    storeClipName = v5->_storeClipName;
    v5->_storeClipName = v13;

    v15 = [dictionaryCopy safari_stringForKey:@"storeClipCaption"];
    storeClipCaption = v5->_storeClipCaption;
    v5->_storeClipCaption = v15;

    v17 = [dictionaryCopy safari_URLForKey:@"storeClipHeroImage"];
    storeClipHeroImageURL = v5->_storeClipHeroImageURL;
    v5->_storeClipHeroImageURL = v17;

    v19 = [dictionaryCopy safari_stringForKey:@"clipBundleID"];
    clipBundleID = v5->_clipBundleID;
    v5->_clipBundleID = v19;

    v5->_clipIncompatibleWithCurrentDevice = [dictionaryCopy safari_BOOLForKey:@"clipIncompatibleWithCurrentDevice"];
    v21 = [dictionaryCopy safari_URLForKey:@"clipBusinessIconURL"];
    clipBusinessIconURL = v5->_clipBusinessIconURL;
    v5->_clipBusinessIconURL = v21;

    v23 = [dictionaryCopy safari_dictionaryForKey:@"clipBusinessIconStyleAttributes"];
    clipBusinessIconStyleAttributes = v5->_clipBusinessIconStyleAttributes;
    v5->_clipBusinessIconStyleAttributes = v23;

    v25 = [dictionaryCopy safari_numberForKey:@"clipMapItemMUID"];
    clipMapItemMUID = v5->_clipMapItemMUID;
    v5->_clipMapItemMUID = v25;

    v27 = MEMORY[0x277CBEBC0];
    v28 = [dictionaryCopy safari_stringForKey:@"clipIpaURL"];
    v29 = [v27 URLWithString:v28];
    clipIpaURL = v5->_clipIpaURL;
    v5->_clipIpaURL = v29;

    v5->_clipRequestsNotificationPermission = [dictionaryCopy safari_BOOLForKey:@"clipRequestsNotificationPermission"];
    v5->_clipRequestsLocationConfirmationPermission = [dictionaryCopy safari_BOOLForKey:@"clipRequestsLocationConfirmationPermission"];
    v31 = [dictionaryCopy safari_URLForKey:@"clipURL"];
    clipURL = v5->_clipURL;
    v5->_clipURL = v31;

    v33 = [dictionaryCopy safari_URLForKey:@"clipRequestURL"];
    clipRequestURL = v5->_clipRequestURL;
    v5->_clipRequestURL = v33;

    v35 = [dictionaryCopy safari_URLForKey:@"clipTargetURL"];
    clipTargetURL = v5->_clipTargetURL;
    v5->_clipTargetURL = v35;

    v5->_hasBusinessItemMetadata = [dictionaryCopy safari_BOOLForKey:@"hasBusinessItemMetadata"];
    v5->_hasAppMetadata = 1;
    v5->_poweredByThirdParty = [dictionaryCopy safari_BOOLForKey:@"poweredByThirdParty"];
    v5->_supportsArcade = [dictionaryCopy safari_BOOLForKey:@"supportsArcade"];
    v37 = [dictionaryCopy safari_stringForKey:@"fullAppName"];
    fullAppName = v5->_fullAppName;
    v5->_fullAppName = v37;

    v39 = [dictionaryCopy safari_stringForKey:@"fullAppShortName"];
    fullAppShortName = v5->_fullAppShortName;
    v5->_fullAppShortName = v39;

    v41 = [dictionaryCopy safari_stringForKey:@"fullAppCaption"];
    fullAppCaption = v5->_fullAppCaption;
    v5->_fullAppCaption = v41;

    v43 = [dictionaryCopy safari_stringForKey:@"fullAppContentRating"];
    fullAppContentRating = v5->_fullAppContentRating;
    v5->_fullAppContentRating = v43;

    v45 = [dictionaryCopy safari_stringForKey:@"fullAppBundleID"];
    fullAppBundleID = v5->_fullAppBundleID;
    v5->_fullAppBundleID = v45;

    v47 = MEMORY[0x277CBEBC0];
    v48 = [dictionaryCopy safari_stringForKey:@"fullAppStoreURL"];
    v49 = [v47 URLWithString:v48];
    fullAppStoreURL = v5->_fullAppStoreURL;
    v5->_fullAppStoreURL = v49;

    v51 = [dictionaryCopy safari_URLForKey:@"fullAppIconURL"];
    fullAppIconURL = v5->_fullAppIconURL;
    v5->_fullAppIconURL = v51;

    v53 = [dictionaryCopy safari_numberForKey:@"itemID"];
    itemID = v5->_itemID;
    v5->_itemID = v53;

    v55 = [dictionaryCopy safari_stringForKey:@"webClipID"];
    webClipID = v5->_webClipID;
    v5->_webClipID = v55;

    v57 = [dictionaryCopy safari_stringForKey:@"provider"];
    provider = v5->_provider;
    v5->_provider = v57;

    v59 = [dictionaryCopy safari_arrayForKey:@"clipVerifiedAssociatedDomains"];
    clipVerifiedAssociatedDomains = v5->_clipVerifiedAssociatedDomains;
    v5->_clipVerifiedAssociatedDomains = v59;

    v5->_deviceCapabilitiesDontMatch = [dictionaryCopy safari_BOOLForKey:@"deviceCapabilitiesDontMatch"];
    v5->_isDeveloperOverride = [dictionaryCopy safari_BOOLForKey:@"isDeveloperOverride"];
    v61 = [dictionaryCopy safari_numberForKey:@"thinnedSize"];
    clipSize = v5->_clipSize;
    v5->_clipSize = v61;

    v63 = v5;
  }

  return v5;
}

- (CPSClipMetadata)initWithBusinessItem:(id)item
{
  itemCopy = item;
  v35.receiver = self;
  v35.super_class = CPSClipMetadata;
  v5 = [(CPSClipMetadata *)&v35 init];
  v6 = v5;
  if (v5)
  {
    v5->_hasBusinessItemMetadata = 1;
    title = [itemCopy title];
    abrClipName = v6->_abrClipName;
    v6->_abrClipName = title;

    subtitle = [itemCopy subtitle];
    abrClipCaption = v6->_abrClipCaption;
    v6->_abrClipCaption = subtitle;

    v34[0] = _CPSHeroImagePreferredSize();
    v34[1] = v11;
    v34[2] = "bb";
    v34[3] = "heic";
    v12 = [itemCopy heroImageURLForSpecifier:v34];
    abrClipHeroImageURL = v6->_abrClipHeroImageURL;
    v6->_abrClipHeroImageURL = v12;

    if (!v6->_abrClipHeroImageURL)
    {
      heroImageURL = [itemCopy heroImageURL];
      v15 = v6->_abrClipHeroImageURL;
      v6->_abrClipHeroImageURL = heroImageURL;
    }

    action = [itemCopy action];
    if ((action - 4) >= 0xFFFFFFFFFFFFFFFDLL)
    {
      v17 = action - 1;
    }

    else
    {
      v17 = 0;
    }

    v6->_clipAction = v17;
    bundleID = [itemCopy bundleID];
    clipBundleID = v6->_clipBundleID;
    v6->_clipBundleID = bundleID;

    linkURL = [itemCopy linkURL];
    clipURL = v6->_clipURL;
    v6->_clipURL = linkURL;

    iconImageURL = [itemCopy iconImageURL];
    clipBusinessIconURL = v6->_clipBusinessIconURL;
    v6->_clipBusinessIconURL = iconImageURL;

    redirectURL = [itemCopy redirectURL];
    clipTargetURL = v6->_clipTargetURL;
    v6->_clipTargetURL = redirectURL;

    fullHash = [itemCopy fullHash];
    clipURLHash = v6->_clipURLHash;
    v6->_clipURLHash = fullHash;

    v6->_poweredByThirdParty = [itemCopy isPoweredBy];
    mapIconStyleAttributes = [itemCopy mapIconStyleAttributes];
    clipBusinessIconStyleAttributes = v6->_clipBusinessIconStyleAttributes;
    v6->_clipBusinessIconStyleAttributes = mapIconStyleAttributes;

    mapItemMUID = [itemCopy mapItemMUID];
    clipMapItemMUID = v6->_clipMapItemMUID;
    v6->_clipMapItemMUID = mapItemMUID;

    v32 = v6;
  }

  return v6;
}

- (CPSClipMetadata)initWithDeveloperOverride:(id)override invocationURL:(id)l
{
  overrideCopy = override;
  lCopy = l;
  v32.receiver = self;
  v32.super_class = CPSClipMetadata;
  v8 = [(CPSClipMetadata *)&v32 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_clipURL, l);
    objc_storeStrong(&v9->_clipRequestURL, l);
    clipBundleID = [overrideCopy clipBundleID];
    clipBundleID = v9->_clipBundleID;
    v9->_clipBundleID = clipBundleID;

    title = [overrideCopy title];
    abrClipName = v9->_abrClipName;
    v9->_abrClipName = title;

    subtitle = [overrideCopy subtitle];
    abrClipCaption = v9->_abrClipCaption;
    v9->_abrClipCaption = subtitle;

    v9->_clipAction = [overrideCopy action];
    v9->_isDeveloperOverride = 1;
    heroImageURL = [overrideCopy heroImageURL];
    abrClipHeroImageURL = v9->_abrClipHeroImageURL;
    v9->_abrClipHeroImageURL = heroImageURL;

    v18 = MEMORY[0x277CBEBC0];
    invocationURL = [overrideCopy invocationURL];
    v20 = [invocationURL stringByAppendingPathComponent:@"/AppIcon.png"];
    v21 = [v18 URLWithString:v20];
    fullAppIconURL = v9->_fullAppIconURL;
    v9->_fullAppIconURL = v21;

    v23 = objc_alloc(MEMORY[0x277CC1E70]);
    clipBundleID2 = [overrideCopy clipBundleID];
    v25 = [v23 initWithBundleIdentifier:clipBundleID2 allowPlaceholder:0 error:0];

    localizedName = [v25 localizedName];
    fullAppName = v9->_fullAppName;
    v9->_fullAppName = localizedName;

    appClipMetadata = [v25 appClipMetadata];
    v9->_clipRequestsNotificationPermission = [appClipMetadata wantsEphemeralNotifications];

    appClipMetadata2 = [v25 appClipMetadata];
    v9->_clipRequestsLocationConfirmationPermission = [appClipMetadata2 wantsLocationConfirmation];

    v9->_hasAppMetadata = 1;
    v30 = v9;
  }

  return v9;
}

- (CPSClipMetadata)initWithCoder:(id)coder
{
  v82[4] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v80.receiver = self;
  v80.super_class = CPSClipMetadata;
  v5 = [(CPSClipMetadata *)&v80 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"abrClipName"];
    abrClipName = v5->_abrClipName;
    v5->_abrClipName = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"abrClipCaption"];
    abrClipCaption = v5->_abrClipCaption;
    v5->_abrClipCaption = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"abrClipHeroImage"];
    abrClipHeroImageURL = v5->_abrClipHeroImageURL;
    v5->_abrClipHeroImageURL = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"abrClipAction"];
    v5->_clipAction = [v12 integerValue];

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"storeClipName"];
    storeClipName = v5->_storeClipName;
    v5->_storeClipName = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"storeClipCaption"];
    storeClipCaption = v5->_storeClipCaption;
    v5->_storeClipCaption = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"storeClipHeroImage"];
    storeClipHeroImageURL = v5->_storeClipHeroImageURL;
    v5->_storeClipHeroImageURL = v17;

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fullAppIconURL"];
    fullAppIconURL = v5->_fullAppIconURL;
    v5->_fullAppIconURL = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fullAppIconFilePath"];
    fullAppCachedIconFilePath = v5->_fullAppCachedIconFilePath;
    v5->_fullAppCachedIconFilePath = v21;

    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fullAppStoreURL"];
    fullAppStoreURL = v5->_fullAppStoreURL;
    v5->_fullAppStoreURL = v23;

    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clipBundleID"];
    clipBundleID = v5->_clipBundleID;
    v5->_clipBundleID = v25;

    v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clipMinimumOSVersion"];
    clipMinimumOSVersion = v5->_clipMinimumOSVersion;
    v5->_clipMinimumOSVersion = v27;

    v5->_clipIncompatibleWithCurrentDevice = [coderCopy decodeBoolForKey:@"clipIncompatibleWithCurrentDevice"];
    v29 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clipIpaURL"];
    clipIpaURL = v5->_clipIpaURL;
    v5->_clipIpaURL = v29;

    v31 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fullAppBundleID"];
    fullAppBundleID = v5->_fullAppBundleID;
    v5->_fullAppBundleID = v31;

    v33 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fullAppName"];
    fullAppName = v5->_fullAppName;
    v5->_fullAppName = v33;

    v35 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fullAppShortName"];
    fullAppShortName = v5->_fullAppShortName;
    v5->_fullAppShortName = v35;

    v37 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fullAppCaption"];
    fullAppCaption = v5->_fullAppCaption;
    v5->_fullAppCaption = v37;

    v39 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fullAppContentRating"];
    fullAppContentRating = v5->_fullAppContentRating;
    v5->_fullAppContentRating = v39;

    v41 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"itemID"];
    itemID = v5->_itemID;
    v5->_itemID = v41;

    v43 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"webClipID"];
    webClipID = v5->_webClipID;
    v5->_webClipID = v43;

    v45 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clipBuyParams"];
    buyParams = v5->_buyParams;
    v5->_buyParams = v45;

    v47 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"provider"];
    provider = v5->_provider;
    v5->_provider = v47;

    v49 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clipURL"];
    clipURL = v5->_clipURL;
    v5->_clipURL = v49;

    v51 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clipRequestURL"];
    clipRequestURL = v5->_clipRequestURL;
    v5->_clipRequestURL = v51;

    v53 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clipTargetURL"];
    clipTargetURL = v5->_clipTargetURL;
    v5->_clipTargetURL = v53;

    v5->_clipRequestsNotificationPermission = [coderCopy decodeBoolForKey:@"clipRequestsNotificationPermission"];
    v5->_clipRequestsLocationConfirmationPermission = [coderCopy decodeBoolForKey:@"clipRequestsLocationConfirmationPermission"];
    v55 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clipURLHash"];
    clipURLHash = v5->_clipURLHash;
    v5->_clipURLHash = v55;

    v57 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clipBusinessIconURL"];
    clipBusinessIconURL = v5->_clipBusinessIconURL;
    v5->_clipBusinessIconURL = v57;

    v59 = MEMORY[0x277CBEB98];
    v82[0] = objc_opt_class();
    v82[1] = objc_opt_class();
    v82[2] = objc_opt_class();
    v82[3] = objc_opt_class();
    v60 = [MEMORY[0x277CBEA60] arrayWithObjects:v82 count:4];
    v61 = [v59 setWithArray:v60];
    v62 = [coderCopy decodeObjectOfClasses:v61 forKey:@"clipBusinessIconStyleAttributes"];
    clipBusinessIconStyleAttributes = v5->_clipBusinessIconStyleAttributes;
    v5->_clipBusinessIconStyleAttributes = v62;

    v64 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clipMapItemMUID"];
    clipMapItemMUID = v5->_clipMapItemMUID;
    v5->_clipMapItemMUID = v64;

    v66 = MEMORY[0x277CBEB98];
    v81[0] = objc_opt_class();
    v81[1] = objc_opt_class();
    v67 = [MEMORY[0x277CBEA60] arrayWithObjects:v81 count:2];
    v68 = [v66 setWithArray:v67];
    v69 = [coderCopy decodeObjectOfClasses:v68 forKey:@"clipVerifiedAssociatedDomains"];
    clipVerifiedAssociatedDomains = v5->_clipVerifiedAssociatedDomains;
    v5->_clipVerifiedAssociatedDomains = v69;

    v5->_hasBusinessItemMetadata = [coderCopy decodeBoolForKey:@"hasBusinessItemMetadata"];
    v5->_hasAppMetadata = [coderCopy decodeBoolForKey:@"hasAppMetadata"];
    v5->_poweredByThirdParty = [coderCopy decodeBoolForKey:@"poweredByThirdParty"];
    v5->_supportsArcade = [coderCopy decodeBoolForKey:@"supportsArcade"];
    v71 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"invocationPolicy"];
    invocationPolicy = v5->_invocationPolicy;
    v5->_invocationPolicy = v71;

    v73 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"expirationDate"];
    expirationDate = v5->_expirationDate;
    v5->_expirationDate = v73;

    v5->_deviceCapabilitiesDontMatch = [coderCopy decodeBoolForKey:@"deviceCapabilitiesDontMatch"];
    v5->_isDeveloperOverride = [coderCopy decodeBoolForKey:@"isDeveloperOverride"];
    v5->_fullAppOnly = [coderCopy decodeBoolForKey:@"fullAppOnly"];
    v75 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"thinnedSize"];
    clipSize = v5->_clipSize;
    v5->_clipSize = v75;

    v77 = v5;
  }

  v78 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  abrClipName = self->_abrClipName;
  coderCopy = coder;
  [coderCopy encodeObject:abrClipName forKey:@"abrClipName"];
  [coderCopy encodeObject:self->_abrClipCaption forKey:@"abrClipCaption"];
  [coderCopy encodeObject:self->_abrClipHeroImageURL forKey:@"abrClipHeroImage"];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:self->_clipAction];
  [coderCopy encodeObject:v5 forKey:@"abrClipAction"];

  [coderCopy encodeObject:self->_storeClipName forKey:@"storeClipName"];
  [coderCopy encodeObject:self->_storeClipCaption forKey:@"storeClipCaption"];
  [coderCopy encodeObject:self->_storeClipHeroImageURL forKey:@"storeClipHeroImage"];
  [coderCopy encodeObject:self->_fullAppIconURL forKey:@"fullAppIconURL"];
  [coderCopy encodeObject:self->_fullAppCachedIconFilePath forKey:@"fullAppIconFilePath"];
  [coderCopy encodeObject:self->_fullAppStoreURL forKey:@"fullAppStoreURL"];
  [coderCopy encodeObject:self->_clipBundleID forKey:@"clipBundleID"];
  [coderCopy encodeObject:self->_clipMinimumOSVersion forKey:@"clipMinimumOSVersion"];
  [coderCopy encodeBool:self->_clipIncompatibleWithCurrentDevice forKey:@"clipIncompatibleWithCurrentDevice"];
  [coderCopy encodeObject:self->_clipIpaURL forKey:@"clipIpaURL"];
  [coderCopy encodeObject:self->_fullAppBundleID forKey:@"fullAppBundleID"];
  [coderCopy encodeObject:self->_fullAppName forKey:@"fullAppName"];
  [coderCopy encodeObject:self->_fullAppShortName forKey:@"fullAppShortName"];
  [coderCopy encodeObject:self->_fullAppCaption forKey:@"fullAppCaption"];
  [coderCopy encodeObject:self->_fullAppContentRating forKey:@"fullAppContentRating"];
  [coderCopy encodeObject:self->_itemID forKey:@"itemID"];
  [coderCopy encodeObject:self->_webClipID forKey:@"webClipID"];
  [coderCopy encodeObject:self->_buyParams forKey:@"clipBuyParams"];
  [coderCopy encodeObject:self->_provider forKey:@"provider"];
  [coderCopy encodeObject:self->_clipURL forKey:@"clipURL"];
  [coderCopy encodeObject:self->_clipRequestURL forKey:@"clipRequestURL"];
  [coderCopy encodeObject:self->_clipTargetURL forKey:@"clipTargetURL"];
  [coderCopy encodeBool:self->_clipRequestsNotificationPermission forKey:@"clipRequestsNotificationPermission"];
  [coderCopy encodeBool:self->_clipRequestsLocationConfirmationPermission forKey:@"clipRequestsLocationConfirmationPermission"];
  [coderCopy encodeObject:self->_clipURLHash forKey:@"clipURLHash"];
  [coderCopy encodeObject:self->_clipBusinessIconURL forKey:@"clipBusinessIconURL"];
  [coderCopy encodeObject:self->_clipBusinessIconStyleAttributes forKey:@"clipBusinessIconStyleAttributes"];
  [coderCopy encodeObject:self->_clipMapItemMUID forKey:@"clipMapItemMUID"];
  [coderCopy encodeObject:self->_clipVerifiedAssociatedDomains forKey:@"clipVerifiedAssociatedDomains"];
  [coderCopy encodeBool:self->_hasBusinessItemMetadata forKey:@"hasBusinessItemMetadata"];
  [coderCopy encodeBool:self->_hasAppMetadata forKey:@"hasAppMetadata"];
  [coderCopy encodeBool:self->_poweredByThirdParty forKey:@"poweredByThirdParty"];
  [coderCopy encodeBool:self->_supportsArcade forKey:@"supportsArcade"];
  [coderCopy encodeObject:self->_invocationPolicy forKey:@"invocationPolicy"];
  [coderCopy encodeObject:self->_expirationDate forKey:@"expirationDate"];
  [coderCopy encodeBool:self->_deviceCapabilitiesDontMatch forKey:@"deviceCapabilitiesDontMatch"];
  [coderCopy encodeBool:self->_isDeveloperOverride forKey:@"isDeveloperOverride"];
  [coderCopy encodeBool:self->_fullAppOnly forKey:@"fullAppOnly"];
  [coderCopy encodeObject:self->_clipSize forKey:@"thinnedSize"];
}

+ (id)fullAppOnlyClipBundleIDs
{
  if (fullAppOnlyClipBundleIDs_onceToken != -1)
  {
    +[CPSClipMetadata fullAppOnlyClipBundleIDs];
  }

  v3 = fullAppOnlyClipBundleIDs_fullAppOnlyClipBundleIDs;

  return v3;
}

void __43__CPSClipMetadata_fullAppOnlyClipBundleIDs__block_invoke()
{
  v0 = fullAppOnlyClipBundleIDs_fullAppOnlyClipBundleIDs;
  fullAppOnlyClipBundleIDs_fullAppOnlyClipBundleIDs = &unk_285684100;
}

- (void)updateWithStoreParentAppMetadata:(id)metadata
{
  metadataCopy = metadata;
  v4 = [metadataCopy safari_stringForKey:@"bundleId"];
  [(CPSClipMetadata *)self setFullAppBundleID:v4];

  v5 = MEMORY[0x277CCABB0];
  v6 = [metadataCopy safari_stringForKey:@"id"];
  v7 = [v5 numberWithLongLong:{objc_msgSend(v6, "longLongValue")}];
  [(CPSClipMetadata *)self setItemID:v7];

  v8 = [metadataCopy safari_stringForKey:@"name"];
  if ([v8 length])
  {
    [(CPSClipMetadata *)self setFullAppName:v8];
  }

  v9 = [metadataCopy safari_stringForKey:@"artistName"];
  [(CPSClipMetadata *)self setProvider:v9];

  v10 = [metadataCopy safari_dictionaryForKey:@"artwork"];
  v11 = v10;
  if (v10)
  {
    v12 = MEMORY[0x277CBEBC0];
    v13 = [v10 safari_stringForKey:@"url"];
    v14 = [v12 cps_resolvedURLWithStoreIconURLString:v13 iconSize:180];
    [(CPSClipMetadata *)self setFullAppIconURL:v14];
  }

  if (!self->_clipBundleID)
  {
    [(CPSClipMetadata *)self setClipBundleID:self->_fullAppBundleID];
  }

  v15 = [metadataCopy safari_arrayForKey:@"offers"];
  firstObject = [v15 firstObject];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = [firstObject safari_dictionaryForKey:@"version"];
    v18 = [v17 safari_numberForKey:@"externalId"];
    v19 = v18;
    if (v18)
    {
      -[CPSClipMetadata setClipVersionIdentifier:](self, "setClipVersionIdentifier:", [v18 unsignedLongLongValue]);
    }
  }
}

- (void)updateWithStoreClipMetadata:(id)metadata
{
  metadataCopy = metadata;
  v4 = [metadataCopy copy];
  amsDictionary = self->_amsDictionary;
  self->_amsDictionary = v4;

  self->_hasAppMetadata = self->_amsDictionary != 0;
  v6 = [metadataCopy safari_dictionaryForKey:@"attributes"];
  v7 = [v6 safari_stringForKey:@"appName"];
  [(CPSClipMetadata *)self setFullAppName:v7];

  v8 = [v6 safari_stringForKey:@"name"];
  fullAppName = v8;
  if (!v8)
  {
    fullAppName = self->_fullAppName;
  }

  objc_storeStrong(&self->_storeClipName, fullAppName);

  v10 = [v6 safari_stringForKey:@"appShortName"];
  [(CPSClipMetadata *)self setFullAppShortName:v10];

  v11 = [v6 safari_stringForKey:@"artistName"];
  [(CPSClipMetadata *)self setProvider:v11];

  v12 = [v6 safari_stringForKey:@"targetURL"];
  if (v12)
  {
    v13 = [MEMORY[0x277CBEBC0] URLWithString:v12];
    clipTargetURL = self->_clipTargetURL;
    self->_clipTargetURL = v13;
  }

  v15 = [v6 safari_arrayForKey:@"deviceFamilies"];
  v16 = +[CPSUtilities lowercasedDeviceFamilyName];
  v17 = 0;
  v103 = v16;
  if (v16 && v15)
  {
    if (+[CPSUtilities deviceIsPad])
    {
      v17 = 0;
    }

    else
    {
      v17 = [v15 containsObject:v103] ^ 1;
    }
  }

  [(CPSClipMetadata *)self setClipIncompatibleWithCurrentDevice:v17];
  v104 = [v6 safari_dictionaryForKey:@"appContentRatingsBySystem"];
  v18 = [v104 safari_dictionaryForKey:@"appsBrazil"];
  v19 = v18;
  if (v18)
  {
    v20 = MEMORY[0x277CCACA8];
    v21 = [v18 safari_numberForKey:@"rank"];
    [v20 stringWithFormat:@"rank%@-Brazil", v21];
  }

  else
  {
    v21 = [v104 safari_dictionaryForKey:@"appsApple"];
    [v21 safari_stringForKey:@"name"];
  }
  v22 = ;
  [(CPSClipMetadata *)self setFullAppContentRating:v22];

  v102 = [v6 safari_dictionaryForKey:@"platformAttributes"];
  v23 = [v102 safari_dictionaryForKey:@"ios"];
  v24 = [v23 safari_stringForKey:@"appSubtitle"];
  if (v24)
  {
    [(CPSClipMetadata *)self setFullAppCaption:v24];
  }

  else
  {
    v105 = v15;
    v107 = v12;
    v25 = [metadataCopy safari_dictionaryForKey:@"relationships"];
    v26 = [v25 safari_dictionaryForKey:@"app-genres"];
    v27 = [v26 safari_arrayForKey:@"data"];

    objectEnumerator = [v27 objectEnumerator];
    nextObject = [objectEnumerator nextObject];
    if (nextObject)
    {
      v30 = nextObject;
      v92 = v19;
      v31 = [nextObject safari_stringForKey:@"id"];
      v32 = [v30 safari_dictionaryForKey:@"attributes"];
      v33 = [v32 safari_stringForKey:@"name"];

      v34 = v31;
      if (v31)
      {
        v35 = [v31 isEqualToString:@"6014"];
        v19 = v92;
        if (v35)
        {
          v100 = v34;
          nextObject2 = [objectEnumerator nextObject];

          if (nextObject2)
          {
            v98 = v27;
            v30 = nextObject2;
            while (1)
            {
              v37 = [v30 safari_dictionaryForKey:@"attributes"];
              v38 = [v37 safari_stringForKey:@"parentId"];

              if (v38)
              {
                if ([v38 isEqualToString:@"6014"])
                {
                  break;
                }
              }

              nextObject3 = [objectEnumerator nextObject];

              v30 = nextObject3;
              if (!nextObject3)
              {
                goto LABEL_28;
              }
            }

            v40 = [v30 safari_dictionaryForKey:@"attributes"];
            v41 = [v40 safari_stringForKey:@"name"];

            v33 = v41;
LABEL_28:
            v19 = v92;
            v27 = v98;
          }

          else
          {
            v30 = 0;
          }

          v34 = v100;
        }
      }

      else
      {
        v19 = v92;
      }
    }

    else
    {
      v33 = 0;
    }

    [(CPSClipMetadata *)self setFullAppCaption:v33];
    v15 = v105;
    v12 = v107;
  }

  v42 = [v23 safari_stringForKey:@"subtitle"];
  fullAppCaption = v42;
  if (!v42)
  {
    fullAppCaption = self->_fullAppCaption;
  }

  objc_storeStrong(&self->_storeClipCaption, fullAppCaption);

  if (!self->_hasBusinessItemMetadata)
  {
    v44 = [v23 safari_stringForKey:@"action"];
    if ([v44 isEqualToString:@"OPEN"])
    {
      v45 = 0;
    }

    else if ([v44 isEqualToString:@"VIEW"])
    {
      v45 = 1;
    }

    else if ([v44 isEqualToString:@"PLAY"])
    {
      v45 = 2;
    }

    else
    {
      v45 = 0;
    }

    self->_clipAction = v45;
  }

  v46 = [v23 safari_stringForKey:@"minimumOSVersion"];
  clipMinimumOSVersion = self->_clipMinimumOSVersion;
  self->_clipMinimumOSVersion = v46;

  v48 = [v23 safari_dictionaryForKey:@"heroArtwork"];
  v49 = v48;
  if (v48)
  {
    v50 = [v48 safari_stringForKey:@"url"];
    if ([v50 length])
    {
      v51 = [MEMORY[0x277CBEBC0] cps_resolvedURLWithStoreIconURLString:v50 iconSize:1024];
      storeClipHeroImageURL = self->_storeClipHeroImageURL;
      self->_storeClipHeroImageURL = v51;
    }
  }

  v101 = v49;
  v108 = v23;
  v53 = [v23 safari_dictionaryForKey:@"appArtwork"];
  v54 = v53;
  if (v53)
  {
    v55 = MEMORY[0x277CBEBC0];
    v56 = [v53 safari_stringForKey:@"url"];
    v57 = [v55 cps_resolvedURLWithStoreIconURLString:v56 iconSize:180];
    [(CPSClipMetadata *)self setFullAppIconURL:v57];
  }

  v99 = v54;
  v58 = [v108 safari_stringForKey:@"bundleId"];
  [(CPSClipMetadata *)self setClipBundleID:v58];

  v59 = [v108 safari_stringForKey:@"appBundleId"];
  [(CPSClipMetadata *)self setFullAppBundleID:v59];

  v60 = [v108 safari_arrayForKey:@"verifiedAssociatedDomains"];
  v61 = v60;
  if (v60)
  {
    v62 = v60;
  }

  else
  {
    v62 = MEMORY[0x277CBEBF8];
  }

  objc_storeStrong(&self->_clipVerifiedAssociatedDomains, v62);

  v63 = [v108 safari_numberForKey:@"externalVersionId"];
  v64 = v63;
  if (v63)
  {
    -[CPSClipMetadata setClipVersionIdentifier:](self, "setClipVersionIdentifier:", [v63 unsignedLongLongValue]);
  }

  v97 = v64;
  v96 = [v108 safari_arrayForKey:@"variantsInfo"];
  v65 = [(CPSClipMetadata *)self _thinnedSizeWithVariantsInfo:?];
  v95 = v65;
  if (v65)
  {
    v66 = v65;
  }

  else
  {
    v66 = &unk_285684130;
  }

  [(CPSClipMetadata *)self setClipSize:v66];
  v94 = [metadataCopy safari_dictionaryForKey:@"relationships"];
  v67 = [v94 safari_dictionaryForKey:@"app"];
  v68 = [v67 safari_arrayForKey:@"data"];
  firstObject = [v68 firstObject];

  objc_opt_class();
  v106 = firstObject;
  v70 = 0x278DCD000;
  if (objc_opt_isKindOfClass())
  {
    v71 = MEMORY[0x277CCABB0];
    v72 = [v106 safari_stringForKey:@"id"];
    v73 = [v71 numberWithLongLong:{objc_msgSend(v72, "longLongValue")}];
    [(CPSClipMetadata *)self setItemID:v73];

    v74 = [v106 safari_dictionaryForKey:@"attributes"];
    if ([v74 safari_BOOLForKey:@"supportsArcade"])
    {
      v75 = 1;
    }

    else
    {
      v75 = CPSSimulateArcadeAppClipForTesting();
    }

    [(CPSClipMetadata *)self setSupportsArcade:v75];

    v70 = 0x278DCD000uLL;
  }

  v76 = [v6 safari_stringForKey:@"appUrl"];
  v77 = [MEMORY[0x277CBEBC0] URLWithString:v76];
  [(CPSClipMetadata *)self setFullAppStoreURL:v77];

  if (!self->_itemID)
  {
    v78 = [(CPSClipMetadata *)self _itemIDFromAppURLString:v76];
    [(CPSClipMetadata *)self setItemID:v78];
  }

  if (+[CPSClipURL usesDemoMetadata])
  {
    v79 = MEMORY[0x277CBEBC0];
    v80 = [metadataCopy safari_stringForKey:@"clipIpaURL"];
    v81 = [v79 URLWithString:v80];
    clipIpaURL = self->_clipIpaURL;
    self->_clipIpaURL = v81;
  }

  v83 = v108;
  v84 = [v108 safari_arrayForKey:@"permissions"];
  self->_clipRequestsLocationConfirmationPermission = [v84 containsObject:@"locationConfirmation"];
  self->_clipRequestsNotificationPermission = [v84 containsObject:@"ephemeralUserNotifications"];
  v85 = [v108 safari_arrayForKey:@"requiredCapabilities"];
  self->_deviceCapabilitiesDontMatch = [*(v70 + 1728) deviceHasCapabilities:v85] ^ 1;
  if ([v6 safari_BOOLForKey:@"fullAppOnly"])
  {
    self->_fullAppOnly = 1;
    v86 = v103;
  }

  else
  {
    [objc_opt_class() fullAppOnlyClipBundleIDs];
    v93 = v19;
    v88 = v87 = v15;
    [(CPSClipMetadata *)self clipBundleID];
    v89 = v6;
    v91 = v90 = v12;
    self->_fullAppOnly = [v88 containsObject:v91];

    v12 = v90;
    v6 = v89;

    v15 = v87;
    v86 = v103;
    v83 = v108;
    v19 = v93;
  }
}

- (id)_thinnedSizeWithVariantsInfo:(id)info
{
  infoCopy = info;
  test_mocProductVariants = [(CPSClipMetadata *)self test_mocProductVariants];
  v6 = test_mocProductVariants;
  if (test_mocProductVariants)
  {
    v7 = test_mocProductVariants;
  }

  else
  {
    v7 = +[CPSUtilities productVariants];
  }

  v8 = v7;

  test_mocProductVersion = [(CPSClipMetadata *)self test_mocProductVersion];
  v10 = test_mocProductVersion;
  if (test_mocProductVersion)
  {
    v11 = test_mocProductVersion;
  }

  else
  {
    v11 = +[CPSUtilities osVersion];
  }

  v12 = v11;

  v13 = [(CPSClipMetadata *)self _thinnedSizeWithVariantsInfo:infoCopy productVariants:v8 productVersion:v12];

  return v13;
}

- (id)_thinnedSizeWithVariantsInfo:(id)info productVariants:(id)variants productVersion:(id)version
{
  v58 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  variantsCopy = variants;
  versionCopy = version;
  array = [MEMORY[0x277CBEB18] array];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = infoCopy;
  v9 = [obj countByEnumeratingWithState:&v51 objects:v57 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v52;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v52 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v51 + 1) + 8 * i);
        v14 = [v13 safari_arrayForKey:@"targets"];
        v15 = [v13 safari_numberForKey:@"size"];
        v46[0] = MEMORY[0x277D85DD0];
        v46[1] = 3221225472;
        v46[2] = __79__CPSClipMetadata__thinnedSizeWithVariantsInfo_productVariants_productVersion___block_invoke;
        v46[3] = &unk_278DCEDD8;
        v47 = versionCopy;
        v48 = variantsCopy;
        v49 = v15;
        v50 = array;
        v16 = v15;
        [v14 enumerateObjectsUsingBlock:v46];
      }

      v10 = [obj countByEnumeratingWithState:&v51 objects:v57 count:16];
    }

    while (v10);
  }

  v17 = [array sortedArrayUsingComparator:&__block_literal_global_289];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v18 = variantsCopy;
  v34 = [v18 countByEnumeratingWithState:&v42 objects:v56 count:16];
  if (v34)
  {
    v19 = *v43;
    v33 = *v43;
    do
    {
      for (j = 0; j != v34; ++j)
      {
        if (*v43 != v19)
        {
          objc_enumerationMutation(v18);
        }

        v21 = *(*(&v42 + 1) + 8 * j);
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        reverseObjectEnumerator = [array reverseObjectEnumerator];
        v23 = [reverseObjectEnumerator countByEnumeratingWithState:&v38 objects:v55 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = *v39;
          while (2)
          {
            for (k = 0; k != v24; ++k)
            {
              if (*v39 != v25)
              {
                objc_enumerationMutation(reverseObjectEnumerator);
              }

              v27 = *(*(&v38 + 1) + 8 * k);
              device = [v27 device];
              v29 = [device isEqualToString:v21];

              if (v29)
              {
                v30 = [v27 size];

                goto LABEL_26;
              }
            }

            v24 = [reverseObjectEnumerator countByEnumeratingWithState:&v38 objects:v55 count:16];
            if (v24)
            {
              continue;
            }

            break;
          }
        }

        v19 = v33;
      }

      v30 = &unk_285684130;
      v34 = [v18 countByEnumeratingWithState:&v42 objects:v56 count:16];
    }

    while (v34);
  }

  else
  {
    v30 = &unk_285684130;
  }

LABEL_26:

  v31 = *MEMORY[0x277D85DE8];

  return v30;
}

void __79__CPSClipMetadata__thinnedSizeWithVariantsInfo_productVariants_productVersion___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 safari_stringForKey:@"osVersion"];
  if ([v4 compare:*(a1 + 32)] != 1)
  {
    v5 = [v3 safari_arrayForKey:@"devices"];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v13 + 1) + 8 * i);
          if ([*(a1 + 40) containsObject:v10])
          {
            v11 = objc_alloc_init(CPSDeviceVariant);
            [(CPSDeviceVariant *)v11 setOsVersion:v4];
            [(CPSDeviceVariant *)v11 setSize:*(a1 + 48)];
            [(CPSDeviceVariant *)v11 setDevice:v10];
            [*(a1 + 56) addObject:v11];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __79__CPSClipMetadata__thinnedSizeWithVariantsInfo_productVariants_productVersion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 osVersion];
  v6 = [v4 osVersion];

  v7 = [v5 compare:v6];
  return v7;
}

- (BOOL)hasUpToDateVersionInstalledOnSystemIsPlaceholder:(BOOL *)placeholder
{
  clipBundleID = [(CPSClipMetadata *)self clipBundleID];
  v6 = [CPSUtilities versionIdentifierForAppWithBundleIdentifier:clipBundleID isPlaceholder:placeholder];

  if (v6)
  {
    v7 = self->_isDeveloperOverride || [v6 unsignedLongLongValue] >= self->_clipVersionIdentifier;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isPhysicalInvocationAllowed
{
  if ([(CPSClipMetadata *)self canUpdateOnPhysicalInvocation])
  {
    return 1;
  }

  v7 = 0;
  clipBundleID = [(CPSClipMetadata *)self clipBundleID];
  v5 = [CPSUtilities versionIdentifierForAppWithBundleIdentifier:clipBundleID isPlaceholder:&v7];

  v3 = v5 && v7 != 1 || [(CPSClipMetadata *)self hasFullAppInstalledOnSystem];
  return v3;
}

- (BOOL)canUpdateOnPhysicalInvocation
{
  if (CPSSimulateLargeSizeAppClipForTesting())
  {
    return 0;
  }

  if ([(NSNumber *)self->_clipSize unsignedLongLongValue]<= 0xF00000)
  {
    return 1;
  }

  clipLaunchURL = [(CPSClipMetadata *)self clipLaunchURL];
  cps_isDemoLink = [clipLaunchURL cps_isDemoLink];

  if (!cps_isDemoLink)
  {
    return 0;
  }

  v6 = CPS_LOG_CHANNEL_PREFIXClipServices();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&dword_2436ED000, v6, OS_LOG_TYPE_INFO, "Updating a demo app clip on physical invocation.", v7, 2u);
  }

  return [(NSNumber *)self->_clipSize unsignedLongLongValue]< 0x6400001;
}

- (BOOL)hasFullAppInstalledOnSystem
{
  fullAppBundleID = [(CPSClipMetadata *)self fullAppBundleID];

  if (!fullAppBundleID)
  {
    return 0;
  }

  v8 = 0;
  fullAppBundleID2 = [(CPSClipMetadata *)self fullAppBundleID];
  v5 = [CPSUtilities versionIdentifierForAppWithBundleIdentifier:fullAppBundleID2 isPlaceholder:&v8];
  v6 = (v5 != 0) & (v8 ^ 1);

  return v6;
}

- (id)_itemIDFromAppURLString:(id)string
{
  lastPathComponent = [string lastPathComponent];
  if ([lastPathComponent hasPrefix:@"id"])
  {
    v4 = [lastPathComponent substringFromIndex:2];
    decimalDigitCharacterSet = [MEMORY[0x277CCA900] decimalDigitCharacterSet];
    invertedSet = [decimalDigitCharacterSet invertedSet];

    if ([v4 rangeOfCharacterFromSet:invertedSet] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v4, "longLongValue")}];
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

  return v7;
}

- (void)_updateWithAMSMetadata:(id)metadata
{
  metadataCopy = metadata;
  if (metadataCopy)
  {
    v38 = metadataCopy;
    amsDictionary = [metadataCopy amsDictionary];
    amsDictionary = self->_amsDictionary;
    self->_amsDictionary = amsDictionary;

    self->_hasAppMetadata = self->_amsDictionary != 0;
    fullAppBundleID = [v38 fullAppBundleID];
    [(CPSClipMetadata *)self setFullAppBundleID:fullAppBundleID];

    fullAppName = [v38 fullAppName];
    [(CPSClipMetadata *)self setFullAppName:fullAppName];

    fullAppShortName = [v38 fullAppShortName];
    [(CPSClipMetadata *)self setFullAppShortName:fullAppShortName];

    fullAppIconURL = [v38 fullAppIconURL];
    [(CPSClipMetadata *)self setFullAppIconURL:fullAppIconURL];

    fullAppStoreURL = [v38 fullAppStoreURL];
    [(CPSClipMetadata *)self setFullAppStoreURL:fullAppStoreURL];

    fullAppCaption = [v38 fullAppCaption];
    [(CPSClipMetadata *)self setFullAppCaption:fullAppCaption];

    fullAppCachedIconFilePath = [v38 fullAppCachedIconFilePath];
    [(CPSClipMetadata *)self setFullAppCachedIconFilePath:fullAppCachedIconFilePath];

    clipVerifiedAssociatedDomains = [v38 clipVerifiedAssociatedDomains];
    v15 = [clipVerifiedAssociatedDomains copy];
    clipVerifiedAssociatedDomains = self->_clipVerifiedAssociatedDomains;
    self->_clipVerifiedAssociatedDomains = v15;

    v17 = [v38[1] copy];
    storeClipName = self->_storeClipName;
    self->_storeClipName = v17;

    v19 = [v38[2] copy];
    storeClipCaption = self->_storeClipCaption;
    self->_storeClipCaption = v19;

    if (!self->_hasBusinessItemMetadata)
    {
      self->_clipAction = [v38 clipAction];
    }

    objc_storeStrong(&self->_storeClipHeroImageURL, v38[3]);
    self->_clipVersionIdentifier = [v38 clipVersionIdentifier];
    itemID = [v38 itemID];
    if (itemID)
    {
      [(CPSClipMetadata *)self setItemID:itemID];
    }

    fullAppContentRating = [v38 fullAppContentRating];
    if (fullAppContentRating)
    {
      [(CPSClipMetadata *)self setFullAppContentRating:fullAppContentRating];
    }

    provider = [v38 provider];
    [(CPSClipMetadata *)self setProvider:provider];

    buyParams = [v38 buyParams];
    [(CPSClipMetadata *)self setBuyParams:buyParams];

    -[CPSClipMetadata setClipIncompatibleWithCurrentDevice:](self, "setClipIncompatibleWithCurrentDevice:", [v38 clipIncompatibleWithCurrentDevice]);
    if (+[CPSClipURL usesDemoMetadata])
    {
      clipIpaURL = [v38 clipIpaURL];
      [(CPSClipMetadata *)self setClipIpaURL:clipIpaURL];

      clipBundleID = [v38 clipBundleID];

      if (clipBundleID)
      {
        clipBundleID2 = [v38 clipBundleID];
        [(CPSClipMetadata *)self setClipBundleID:clipBundleID2];
      }
    }

    if ([v38 supportsArcade])
    {
      v28 = 1;
    }

    else
    {
      v28 = CPSSimulateArcadeAppClipForTesting();
    }

    self->_supportsArcade = v28;
    self->_clipRequestsNotificationPermission = [v38 clipRequestsNotificationPermission];
    self->_clipRequestsLocationConfirmationPermission = [v38 clipRequestsLocationConfirmationPermission];
    self->_deviceCapabilitiesDontMatch = [v38 deviceCapabilitiesDontMatch];
    clipMinimumOSVersion = [v38 clipMinimumOSVersion];
    clipMinimumOSVersion = self->_clipMinimumOSVersion;
    self->_clipMinimumOSVersion = clipMinimumOSVersion;

    expirationDate = [v38 expirationDate];
    expirationDate = self->_expirationDate;
    self->_expirationDate = expirationDate;

    self->_fullAppOnly = [v38 fullAppOnly];
    clipSize = [v38 clipSize];
    clipSize = self->_clipSize;
    self->_clipSize = clipSize;

    if (!self->_clipTargetURL)
    {
      clipTargetURL = [v38 clipTargetURL];
      clipTargetURL = self->_clipTargetURL;
      self->_clipTargetURL = clipTargetURL;
    }

    invocationPolicy = [v38 invocationPolicy];
    [(CPSClipMetadata *)self _updateInvocationPolicy:invocationPolicy];

    metadataCopy = v38;
  }
}

- (void)_updateInvocationPolicy:(id)policy
{
  policyCopy = policy;
  invocationPolicy = [(CPSClipMetadata *)self invocationPolicy];
  if ([invocationPolicy isEligible])
  {
  }

  else
  {
    invocationPolicy2 = [(CPSClipMetadata *)self invocationPolicy];
    isRecoverable = [invocationPolicy2 isRecoverable];
    if (!policyCopy || !isRecoverable || [policyCopy isEligible])
    {

      goto LABEL_8;
    }

    isRecoverable2 = [policyCopy isRecoverable];

    if (isRecoverable2)
    {
      goto LABEL_8;
    }
  }

  [(CPSClipMetadata *)self setInvocationPolicy:policyCopy];
LABEL_8:
  invocationPolicy3 = [(CPSClipMetadata *)self invocationPolicy];
  if (![invocationPolicy3 isEligible] || !CPSShouldValidateAssociatedDomains())
  {
LABEL_14:

    goto LABEL_15;
  }

  hasValidAssociatedDomainsToLaunchAppClip = [(CPSClipMetadata *)self hasValidAssociatedDomainsToLaunchAppClip];

  if (!hasValidAssociatedDomainsToLaunchAppClip)
  {
    v10 = CPS_LOG_CHANNEL_PREFIXClipServices();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(CPSClipMetadata *)v10 _updateInvocationPolicy:?];
    }

    invocationPolicy3 = [CPSClipInvocationPolicy ineligiblePolicyWithReason:13];
    [(CPSClipMetadata *)self setInvocationPolicy:invocationPolicy3];
    goto LABEL_14;
  }

LABEL_15:
}

- (BOOL)_preferAMPDefaultNameAndCaptionForCurrentLocale
{
  v15[3] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB98];
  v4 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"zh_TW"];
  v15[0] = v4;
  v5 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"zh_HK"];
  v15[1] = v5;
  v6 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"zh_MO"];
  v15[2] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:3];
  v8 = [v3 setWithArray:v7];

  autoupdatingCurrentLocale = [MEMORY[0x277CBEAF8] autoupdatingCurrentLocale];
  if ([v8 containsObject:autoupdatingCurrentLocale])
  {
    v10 = [MEMORY[0x277CBEB98] setWithObjects:{@"com.apple.Bridge.AppClip", @"com.apple.supportapp.Clip", @"com.shazam.Shazam.Clip", 0}];
    clipBundleID = [(CPSClipMetadata *)self clipBundleID];
    v12 = [v10 containsObject:clipBundleID];
  }

  else
  {
    v12 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

- (NSString)clipName
{
  if ([(CPSClipMetadata *)self _preferAMPDefaultNameAndCaptionForCurrentLocale])
  {
    p_storeClipName = &self->_storeClipName;
  }

  else
  {
    abrClipName = self->_abrClipName;
    p_abrClipName = &self->_abrClipName;
    v6 = [(NSString *)abrClipName length];
    p_storeClipName = p_abrClipName - 3;
    if (v6)
    {
      p_storeClipName = p_abrClipName;
    }
  }

  v7 = *p_storeClipName;

  return v7;
}

- (NSString)clipCaption
{
  if ([(CPSClipMetadata *)self _preferAMPDefaultNameAndCaptionForCurrentLocale])
  {
    p_storeClipCaption = &self->_storeClipCaption;
  }

  else
  {
    abrClipCaption = self->_abrClipCaption;
    p_abrClipCaption = &self->_abrClipCaption;
    v6 = [(NSString *)abrClipCaption length];
    p_storeClipCaption = p_abrClipCaption - 3;
    if (v6)
    {
      p_storeClipCaption = p_abrClipCaption;
    }
  }

  v7 = *p_storeClipCaption;

  return v7;
}

- (NSString)clipOpenButtonTitle
{
  clipAction = self->_clipAction;
  if (clipAction <= 2)
  {
    self = _CPSLocalizedString(off_278DCEE18[clipAction], &_CPSLocalizableStringsBundleOnceToken, &_CPSLocalizableStringsBundle);
  }

  return self;
}

- (NSURL)clipHeroImageURL
{
  abrClipHeroImageURL = self->_abrClipHeroImageURL;
  if (!abrClipHeroImageURL)
  {
    abrClipHeroImageURL = self->_storeClipHeroImageURL;
  }

  return abrClipHeroImageURL;
}

- (NSURL)clipLaunchURL
{
  clipTargetURL = self->_clipTargetURL;
  if (!clipTargetURL)
  {
    clipTargetURL = self->_clipRequestURL;
    if (!clipTargetURL)
    {
      clipTargetURL = self->_clipURL;
    }
  }

  v3 = clipTargetURL;

  return v3;
}

- (BOOL)hasValidAssociatedDomainsToLaunchAppClip
{
  v31 = *MEMORY[0x277D85DE8];
  clipLaunchURL = [(CPSClipMetadata *)self clipLaunchURL];
  if (clipLaunchURL)
  {
    v4 = [MEMORY[0x277CCACE0] componentsWithURL:clipLaunchURL resolvingAgainstBaseURL:1];
    host = [v4 host];
    if (host)
    {
      cps_fallbackBundleIdentifier = [clipLaunchURL cps_fallbackBundleIdentifier];
      clipBundleID = [(CPSClipMetadata *)self clipBundleID];
      v8 = [cps_fallbackBundleIdentifier isEqualToString:clipBundleID];

      if (v8)
      {
        LOBYTE(v9) = 1;
      }

      else
      {
        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        obj = self->_clipVerifiedAssociatedDomains;
        v9 = [(NSArray *)obj countByEnumeratingWithState:&v23 objects:v30 count:16];
        if (v9)
        {
          v20 = cps_fallbackBundleIdentifier;
          v10 = *v24;
          do
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v24 != v10)
              {
                objc_enumerationMutation(obj);
              }

              v12 = MEMORY[0x277D547B0];
              v29 = *(*(&v23 + 1) + 8 * i);
              v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];
              v22 = 0;
              v14 = [v12 serviceSpecifiersWithEntitlementValue:v13 error:&v22];
              v15 = v22;
              firstObject = [v14 firstObject];

              if (firstObject)
              {
                if ([firstObject domainEncompassesDomain:host])
                {

                  LOBYTE(v9) = 1;
                  goto LABEL_19;
                }
              }

              else
              {
                v17 = CPS_LOG_CHANNEL_PREFIXClipServices();
                if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
                {
                  [(CPSClipMetadata *)v27 hasValidAssociatedDomainsToLaunchAppClip:v17];
                }
              }
            }

            v9 = [(NSArray *)obj countByEnumeratingWithState:&v23 objects:v30 count:16];
          }

          while (v9);
LABEL_19:
          cps_fallbackBundleIdentifier = v20;
        }
      }
    }

    else
    {
      LOBYTE(v9) = 0;
    }
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)isExpired
{
  if (!self->_expirationDate)
  {
    return 0;
  }

  v3 = [MEMORY[0x277CBEAA8] now];
  v4 = [v3 compare:self->_expirationDate] != -1;

  return v4;
}

- (NSString)bundleDisplayName
{
  if ([(NSString *)self->_fullAppShortName length])
  {
    localizedName = self->_fullAppShortName;
  }

  else
  {
    v4 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:self->_clipBundleID allowPlaceholder:0 error:0];
    localizedName = [v4 localizedName];
  }

  return localizedName;
}

- (id)description
{
  v27 = MEMORY[0x277CCACA8];
  clipName = [(CPSClipMetadata *)self clipName];
  storeClipCaption = self->_storeClipCaption;
  v25 = storeClipCaption;
  abrClipCaption = self->_abrClipCaption;
  clipCaption = [(CPSClipMetadata *)self clipCaption];
  clipBundleID = [(CPSClipMetadata *)self clipBundleID];
  clipHeroImageURL = [(CPSClipMetadata *)self clipHeroImageURL];
  clipOpenButtonTitle = [(CPSClipMetadata *)self clipOpenButtonTitle];
  clipURL = [(CPSClipMetadata *)self clipURL];
  clipIpaURL = [(CPSClipMetadata *)self clipIpaURL];
  clipRequestURL = [(CPSClipMetadata *)self clipRequestURL];
  clipMinimumOSVersion = [(CPSClipMetadata *)self clipMinimumOSVersion];
  fullAppName = [(CPSClipMetadata *)self fullAppName];
  fullAppShortName = [(CPSClipMetadata *)self fullAppShortName];
  fullAppCaption = [(CPSClipMetadata *)self fullAppCaption];
  fullAppContentRating = [(CPSClipMetadata *)self fullAppContentRating];
  fullAppBundleID = [(CPSClipMetadata *)self fullAppBundleID];
  fullAppStoreURL = [(CPSClipMetadata *)self fullAppStoreURL];
  fullAppIconURL = [(CPSClipMetadata *)self fullAppIconURL];
  if ([(CPSClipMetadata *)self isPoweredByThirdParty])
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  v17 = v4;
  if ([(CPSClipMetadata *)self supportsArcade])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  v16 = v5;
  provider = [(CPSClipMetadata *)self provider];
  webClipID = [(CPSClipMetadata *)self webClipID];
  clipURLHash = [(CPSClipMetadata *)self clipURLHash];
  clipVersionIdentifier = [(CPSClipMetadata *)self clipVersionIdentifier];
  if ([(CPSClipMetadata *)self clipRequestsLocationConfirmationPermission])
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  if ([(CPSClipMetadata *)self clipRequestsNotificationPermission])
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  expirationDate = [(CPSClipMetadata *)self expirationDate];
  bundleDisplayName = [(CPSClipMetadata *)self bundleDisplayName];
  clipSize = [(CPSClipMetadata *)self clipSize];
  v28 = [v27 stringWithFormat:@"\n  clipName = %@, \n  abrClipCaption = %@, \n  storeClipCaption = %@, \n  clipCaption = %@, \n  clipBundleID = %@, \n  clipHeroImageURL = %@, \n  clipOpenButtonTitle = %@, \n  clipURL = %@, \n  clipIpaURL = %@, \n  clipRequestURL = %@, \n  clipMinimumOSVersion = %@, \n  fullAppName = %@, \n  fullAppShortName = %@, \n  fullAppCaption = %@, \n  fullAppContentRating = %@, \n  fullAppBundleID = %@, \n  fullAppStoreURL = %@, \n  fullAppIconURL = %@, \n  isPoweredBy = %@, \n  supportsArcade = %@, \n  provider = %@, \n  webClipID = %@, \n  clipURLHash = %@, \n  clipVersionIdentifier = %llu \n  clipRequestsLocationConfirmationPermission = %@ \n  clipRequestsNotificationPermission = %@ \n  expirationDate = %@ \n  bundleDisplayName = %@ \n  thinnedSize = %@ \n", clipName, abrClipCaption, v25, clipCaption, clipBundleID, clipHeroImageURL, clipOpenButtonTitle, clipURL, clipIpaURL, clipRequestURL, clipMinimumOSVersion, fullAppName, fullAppShortName, fullAppCaption, fullAppContentRating, fullAppBundleID, fullAppStoreURL, fullAppIconURL, v17, v16, provider, webClipID, clipURLHash, clipVersionIdentifier, v10, v11, expirationDate, bundleDisplayName, clipSize];

  return v28;
}

- (void)_updateInvocationPolicy:(void *)a1 .cold.1(void *a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 clipRequestURL];
  v5 = [a2 clipBundleID];
  v7 = 138740227;
  v8 = v4;
  v9 = 2117;
  v10 = v5;
  _os_log_error_impl(&dword_2436ED000, v3, OS_LOG_TYPE_ERROR, "Clip failed associated domain check. url = %{sensitive}@ bundleID = %{sensitive}@", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)hasValidAssociatedDomainsToLaunchAppClip
{
  v7 = a2;
  cps_privacyPreservingDescription = [a3 cps_privacyPreservingDescription];
  *self = 138543362;
  *a4 = cps_privacyPreservingDescription;
  _os_log_error_impl(&dword_2436ED000, v7, OS_LOG_TYPE_ERROR, "Cannot parse associatd domain. Error: %{public}@", self, 0xCu);
}

@end