@interface CPSClipMetadata
+ (id)fullAppOnlyClipBundleIDs;
- (BOOL)_preferAMPDefaultNameAndCaptionForCurrentLocale;
- (BOOL)canUpdateOnPhysicalInvocation;
- (BOOL)hasFullAppInstalledOnSystem;
- (BOOL)hasUpToDateVersionInstalledOnSystemIsPlaceholder:(BOOL *)a3;
- (BOOL)hasValidAssociatedDomainsToLaunchAppClip;
- (BOOL)isExpired;
- (BOOL)isPhysicalInvocationAllowed;
- (CPSClipMetadata)initWithBusinessItem:(id)a3;
- (CPSClipMetadata)initWithCoder:(id)a3;
- (CPSClipMetadata)initWithDemoBundleURL:(id)a3;
- (CPSClipMetadata)initWithDeveloperOverride:(id)a3 invocationURL:(id)a4;
- (CPSClipMetadata)initWithDictionary:(id)a3 bundleURL:(id)a4;
- (CPSClipMetadata)initWithUncheckedDictionary:(id)a3;
- (NSString)bundleDisplayName;
- (NSString)clipCaption;
- (NSString)clipName;
- (NSString)clipOpenButtonTitle;
- (NSString)localizedSubtitleForClipSuggestion;
- (NSString)localizedTitleForClipSuggestion;
- (NSURL)clipHeroImageURL;
- (NSURL)clipLaunchURL;
- (id)_itemIDFromAppURLString:(id)a3;
- (id)_thinnedSizeWithVariantsInfo:(id)a3;
- (id)_thinnedSizeWithVariantsInfo:(id)a3 productVariants:(id)a4 productVersion:(id)a5;
- (id)description;
- (void)_updateInvocationPolicy:(id)a3;
- (void)_updateWithAMSMetadata:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)hasValidAssociatedDomainsToLaunchAppClip;
- (void)updateWithStoreClipMetadata:(id)a3;
- (void)updateWithStoreParentAppMetadata:(id)a3;
@end

@implementation CPSClipMetadata

- (NSString)localizedTitleForClipSuggestion
{
  v3 = [(CPSClipMetadata *)self clipName];
  if ([v3 length])
  {
    v4 = v3;
  }

  else
  {
    v4 = [(CPSClipMetadata *)self fullAppName];
  }

  v5 = v4;

  return v5;
}

- (NSString)localizedSubtitleForClipSuggestion
{
  if ([(CPSClipMetadata *)self isPoweredByThirdParty])
  {
    v3 = [(CPSClipMetadata *)self fullAppName];
    v4 = [CPSUtilities poweredByCaptionForAppName:v3];
LABEL_5:
    v5 = v4;
    goto LABEL_6;
  }

  v3 = [(CPSClipMetadata *)self clipCaption];
  if ([v3 length])
  {
    v4 = v3;
    v3 = v4;
    goto LABEL_5;
  }

  v7 = [(CPSClipMetadata *)self fullAppCaption];
  v8 = v7;
  v9 = &stru_28567C2A8;
  if (v7)
  {
    v9 = v7;
  }

  v5 = v9;

LABEL_6:

  return v5;
}

- (CPSClipMetadata)initWithDemoBundleURL:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = CPSClipMetadata;
  v5 = [(CPSClipMetadata *)&v13 init];
  if (v5)
  {
    v6 = v5;
    v7 = [v4 URLByAppendingPathComponent:@"Info.json"];
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
        v6 = [(CPSClipMetadata *)v6 initWithDictionary:v9 bundleURL:v4];
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

- (CPSClipMetadata)initWithDictionary:(id)a3 bundleURL:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 mutableCopy];
  v9 = [v7 safari_stringForKey:@"abrClipHeroImage"];
  v10 = [v6 URLByAppendingPathComponent:v9];
  [v8 setObject:v10 forKeyedSubscript:@"abrClipHeroImage"];

  v11 = [v7 safari_stringForKey:@"storeClipHeroImage"];
  v12 = [v6 URLByAppendingPathComponent:v11];
  [v8 setObject:v12 forKeyedSubscript:@"storeClipHeroImage"];

  v13 = [v7 safari_stringForKey:@"fullAppIconURL"];

  v14 = [v6 URLByAppendingPathComponent:v13];

  [v8 setObject:v14 forKeyedSubscript:@"fullAppIconURL"];
  v15 = [(CPSClipMetadata *)self initWithUncheckedDictionary:v8];

  return v15;
}

- (CPSClipMetadata)initWithUncheckedDictionary:(id)a3
{
  v4 = a3;
  v65.receiver = self;
  v65.super_class = CPSClipMetadata;
  v5 = [(CPSClipMetadata *)&v65 init];
  if (v5)
  {
    v6 = [v4 safari_stringForKey:@"abrClipName"];
    abrClipName = v5->_abrClipName;
    v5->_abrClipName = v6;

    v8 = [v4 safari_stringForKey:@"abrClipCaption"];
    abrClipCaption = v5->_abrClipCaption;
    v5->_abrClipCaption = v8;

    v10 = [v4 safari_URLForKey:@"abrClipHeroImage"];
    abrClipHeroImageURL = v5->_abrClipHeroImageURL;
    v5->_abrClipHeroImageURL = v10;

    v12 = [v4 safari_numberForKey:@"abrClipAction"];
    v5->_clipAction = [v12 integerValue];

    v13 = [v4 safari_stringForKey:@"storeClipName"];
    storeClipName = v5->_storeClipName;
    v5->_storeClipName = v13;

    v15 = [v4 safari_stringForKey:@"storeClipCaption"];
    storeClipCaption = v5->_storeClipCaption;
    v5->_storeClipCaption = v15;

    v17 = [v4 safari_URLForKey:@"storeClipHeroImage"];
    storeClipHeroImageURL = v5->_storeClipHeroImageURL;
    v5->_storeClipHeroImageURL = v17;

    v19 = [v4 safari_stringForKey:@"clipBundleID"];
    clipBundleID = v5->_clipBundleID;
    v5->_clipBundleID = v19;

    v5->_clipIncompatibleWithCurrentDevice = [v4 safari_BOOLForKey:@"clipIncompatibleWithCurrentDevice"];
    v21 = [v4 safari_URLForKey:@"clipBusinessIconURL"];
    clipBusinessIconURL = v5->_clipBusinessIconURL;
    v5->_clipBusinessIconURL = v21;

    v23 = [v4 safari_dictionaryForKey:@"clipBusinessIconStyleAttributes"];
    clipBusinessIconStyleAttributes = v5->_clipBusinessIconStyleAttributes;
    v5->_clipBusinessIconStyleAttributes = v23;

    v25 = [v4 safari_numberForKey:@"clipMapItemMUID"];
    clipMapItemMUID = v5->_clipMapItemMUID;
    v5->_clipMapItemMUID = v25;

    v27 = MEMORY[0x277CBEBC0];
    v28 = [v4 safari_stringForKey:@"clipIpaURL"];
    v29 = [v27 URLWithString:v28];
    clipIpaURL = v5->_clipIpaURL;
    v5->_clipIpaURL = v29;

    v5->_clipRequestsNotificationPermission = [v4 safari_BOOLForKey:@"clipRequestsNotificationPermission"];
    v5->_clipRequestsLocationConfirmationPermission = [v4 safari_BOOLForKey:@"clipRequestsLocationConfirmationPermission"];
    v31 = [v4 safari_URLForKey:@"clipURL"];
    clipURL = v5->_clipURL;
    v5->_clipURL = v31;

    v33 = [v4 safari_URLForKey:@"clipRequestURL"];
    clipRequestURL = v5->_clipRequestURL;
    v5->_clipRequestURL = v33;

    v35 = [v4 safari_URLForKey:@"clipTargetURL"];
    clipTargetURL = v5->_clipTargetURL;
    v5->_clipTargetURL = v35;

    v5->_hasBusinessItemMetadata = [v4 safari_BOOLForKey:@"hasBusinessItemMetadata"];
    v5->_hasAppMetadata = 1;
    v5->_poweredByThirdParty = [v4 safari_BOOLForKey:@"poweredByThirdParty"];
    v5->_supportsArcade = [v4 safari_BOOLForKey:@"supportsArcade"];
    v37 = [v4 safari_stringForKey:@"fullAppName"];
    fullAppName = v5->_fullAppName;
    v5->_fullAppName = v37;

    v39 = [v4 safari_stringForKey:@"fullAppShortName"];
    fullAppShortName = v5->_fullAppShortName;
    v5->_fullAppShortName = v39;

    v41 = [v4 safari_stringForKey:@"fullAppCaption"];
    fullAppCaption = v5->_fullAppCaption;
    v5->_fullAppCaption = v41;

    v43 = [v4 safari_stringForKey:@"fullAppContentRating"];
    fullAppContentRating = v5->_fullAppContentRating;
    v5->_fullAppContentRating = v43;

    v45 = [v4 safari_stringForKey:@"fullAppBundleID"];
    fullAppBundleID = v5->_fullAppBundleID;
    v5->_fullAppBundleID = v45;

    v47 = MEMORY[0x277CBEBC0];
    v48 = [v4 safari_stringForKey:@"fullAppStoreURL"];
    v49 = [v47 URLWithString:v48];
    fullAppStoreURL = v5->_fullAppStoreURL;
    v5->_fullAppStoreURL = v49;

    v51 = [v4 safari_URLForKey:@"fullAppIconURL"];
    fullAppIconURL = v5->_fullAppIconURL;
    v5->_fullAppIconURL = v51;

    v53 = [v4 safari_numberForKey:@"itemID"];
    itemID = v5->_itemID;
    v5->_itemID = v53;

    v55 = [v4 safari_stringForKey:@"webClipID"];
    webClipID = v5->_webClipID;
    v5->_webClipID = v55;

    v57 = [v4 safari_stringForKey:@"provider"];
    provider = v5->_provider;
    v5->_provider = v57;

    v59 = [v4 safari_arrayForKey:@"clipVerifiedAssociatedDomains"];
    clipVerifiedAssociatedDomains = v5->_clipVerifiedAssociatedDomains;
    v5->_clipVerifiedAssociatedDomains = v59;

    v5->_deviceCapabilitiesDontMatch = [v4 safari_BOOLForKey:@"deviceCapabilitiesDontMatch"];
    v5->_isDeveloperOverride = [v4 safari_BOOLForKey:@"isDeveloperOverride"];
    v61 = [v4 safari_numberForKey:@"thinnedSize"];
    clipSize = v5->_clipSize;
    v5->_clipSize = v61;

    v63 = v5;
  }

  return v5;
}

- (CPSClipMetadata)initWithBusinessItem:(id)a3
{
  v4 = a3;
  v35.receiver = self;
  v35.super_class = CPSClipMetadata;
  v5 = [(CPSClipMetadata *)&v35 init];
  v6 = v5;
  if (v5)
  {
    v5->_hasBusinessItemMetadata = 1;
    v7 = [v4 title];
    abrClipName = v6->_abrClipName;
    v6->_abrClipName = v7;

    v9 = [v4 subtitle];
    abrClipCaption = v6->_abrClipCaption;
    v6->_abrClipCaption = v9;

    v34[0] = _CPSHeroImagePreferredSize();
    v34[1] = v11;
    v34[2] = "bb";
    v34[3] = "heic";
    v12 = [v4 heroImageURLForSpecifier:v34];
    abrClipHeroImageURL = v6->_abrClipHeroImageURL;
    v6->_abrClipHeroImageURL = v12;

    if (!v6->_abrClipHeroImageURL)
    {
      v14 = [v4 heroImageURL];
      v15 = v6->_abrClipHeroImageURL;
      v6->_abrClipHeroImageURL = v14;
    }

    v16 = [v4 action];
    if ((v16 - 4) >= 0xFFFFFFFFFFFFFFFDLL)
    {
      v17 = v16 - 1;
    }

    else
    {
      v17 = 0;
    }

    v6->_clipAction = v17;
    v18 = [v4 bundleID];
    clipBundleID = v6->_clipBundleID;
    v6->_clipBundleID = v18;

    v20 = [v4 linkURL];
    clipURL = v6->_clipURL;
    v6->_clipURL = v20;

    v22 = [v4 iconImageURL];
    clipBusinessIconURL = v6->_clipBusinessIconURL;
    v6->_clipBusinessIconURL = v22;

    v24 = [v4 redirectURL];
    clipTargetURL = v6->_clipTargetURL;
    v6->_clipTargetURL = v24;

    v26 = [v4 fullHash];
    clipURLHash = v6->_clipURLHash;
    v6->_clipURLHash = v26;

    v6->_poweredByThirdParty = [v4 isPoweredBy];
    v28 = [v4 mapIconStyleAttributes];
    clipBusinessIconStyleAttributes = v6->_clipBusinessIconStyleAttributes;
    v6->_clipBusinessIconStyleAttributes = v28;

    v30 = [v4 mapItemMUID];
    clipMapItemMUID = v6->_clipMapItemMUID;
    v6->_clipMapItemMUID = v30;

    v32 = v6;
  }

  return v6;
}

- (CPSClipMetadata)initWithDeveloperOverride:(id)a3 invocationURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  v32.receiver = self;
  v32.super_class = CPSClipMetadata;
  v8 = [(CPSClipMetadata *)&v32 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_clipURL, a4);
    objc_storeStrong(&v9->_clipRequestURL, a4);
    v10 = [v6 clipBundleID];
    clipBundleID = v9->_clipBundleID;
    v9->_clipBundleID = v10;

    v12 = [v6 title];
    abrClipName = v9->_abrClipName;
    v9->_abrClipName = v12;

    v14 = [v6 subtitle];
    abrClipCaption = v9->_abrClipCaption;
    v9->_abrClipCaption = v14;

    v9->_clipAction = [v6 action];
    v9->_isDeveloperOverride = 1;
    v16 = [v6 heroImageURL];
    abrClipHeroImageURL = v9->_abrClipHeroImageURL;
    v9->_abrClipHeroImageURL = v16;

    v18 = MEMORY[0x277CBEBC0];
    v19 = [v6 invocationURL];
    v20 = [v19 stringByAppendingPathComponent:@"/AppIcon.png"];
    v21 = [v18 URLWithString:v20];
    fullAppIconURL = v9->_fullAppIconURL;
    v9->_fullAppIconURL = v21;

    v23 = objc_alloc(MEMORY[0x277CC1E70]);
    v24 = [v6 clipBundleID];
    v25 = [v23 initWithBundleIdentifier:v24 allowPlaceholder:0 error:0];

    v26 = [v25 localizedName];
    fullAppName = v9->_fullAppName;
    v9->_fullAppName = v26;

    v28 = [v25 appClipMetadata];
    v9->_clipRequestsNotificationPermission = [v28 wantsEphemeralNotifications];

    v29 = [v25 appClipMetadata];
    v9->_clipRequestsLocationConfirmationPermission = [v29 wantsLocationConfirmation];

    v9->_hasAppMetadata = 1;
    v30 = v9;
  }

  return v9;
}

- (CPSClipMetadata)initWithCoder:(id)a3
{
  v82[4] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v80.receiver = self;
  v80.super_class = CPSClipMetadata;
  v5 = [(CPSClipMetadata *)&v80 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"abrClipName"];
    abrClipName = v5->_abrClipName;
    v5->_abrClipName = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"abrClipCaption"];
    abrClipCaption = v5->_abrClipCaption;
    v5->_abrClipCaption = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"abrClipHeroImage"];
    abrClipHeroImageURL = v5->_abrClipHeroImageURL;
    v5->_abrClipHeroImageURL = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"abrClipAction"];
    v5->_clipAction = [v12 integerValue];

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"storeClipName"];
    storeClipName = v5->_storeClipName;
    v5->_storeClipName = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"storeClipCaption"];
    storeClipCaption = v5->_storeClipCaption;
    v5->_storeClipCaption = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"storeClipHeroImage"];
    storeClipHeroImageURL = v5->_storeClipHeroImageURL;
    v5->_storeClipHeroImageURL = v17;

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fullAppIconURL"];
    fullAppIconURL = v5->_fullAppIconURL;
    v5->_fullAppIconURL = v19;

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fullAppIconFilePath"];
    fullAppCachedIconFilePath = v5->_fullAppCachedIconFilePath;
    v5->_fullAppCachedIconFilePath = v21;

    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fullAppStoreURL"];
    fullAppStoreURL = v5->_fullAppStoreURL;
    v5->_fullAppStoreURL = v23;

    v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clipBundleID"];
    clipBundleID = v5->_clipBundleID;
    v5->_clipBundleID = v25;

    v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clipMinimumOSVersion"];
    clipMinimumOSVersion = v5->_clipMinimumOSVersion;
    v5->_clipMinimumOSVersion = v27;

    v5->_clipIncompatibleWithCurrentDevice = [v4 decodeBoolForKey:@"clipIncompatibleWithCurrentDevice"];
    v29 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clipIpaURL"];
    clipIpaURL = v5->_clipIpaURL;
    v5->_clipIpaURL = v29;

    v31 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fullAppBundleID"];
    fullAppBundleID = v5->_fullAppBundleID;
    v5->_fullAppBundleID = v31;

    v33 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fullAppName"];
    fullAppName = v5->_fullAppName;
    v5->_fullAppName = v33;

    v35 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fullAppShortName"];
    fullAppShortName = v5->_fullAppShortName;
    v5->_fullAppShortName = v35;

    v37 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fullAppCaption"];
    fullAppCaption = v5->_fullAppCaption;
    v5->_fullAppCaption = v37;

    v39 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fullAppContentRating"];
    fullAppContentRating = v5->_fullAppContentRating;
    v5->_fullAppContentRating = v39;

    v41 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"itemID"];
    itemID = v5->_itemID;
    v5->_itemID = v41;

    v43 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"webClipID"];
    webClipID = v5->_webClipID;
    v5->_webClipID = v43;

    v45 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clipBuyParams"];
    buyParams = v5->_buyParams;
    v5->_buyParams = v45;

    v47 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"provider"];
    provider = v5->_provider;
    v5->_provider = v47;

    v49 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clipURL"];
    clipURL = v5->_clipURL;
    v5->_clipURL = v49;

    v51 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clipRequestURL"];
    clipRequestURL = v5->_clipRequestURL;
    v5->_clipRequestURL = v51;

    v53 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clipTargetURL"];
    clipTargetURL = v5->_clipTargetURL;
    v5->_clipTargetURL = v53;

    v5->_clipRequestsNotificationPermission = [v4 decodeBoolForKey:@"clipRequestsNotificationPermission"];
    v5->_clipRequestsLocationConfirmationPermission = [v4 decodeBoolForKey:@"clipRequestsLocationConfirmationPermission"];
    v55 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clipURLHash"];
    clipURLHash = v5->_clipURLHash;
    v5->_clipURLHash = v55;

    v57 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clipBusinessIconURL"];
    clipBusinessIconURL = v5->_clipBusinessIconURL;
    v5->_clipBusinessIconURL = v57;

    v59 = MEMORY[0x277CBEB98];
    v82[0] = objc_opt_class();
    v82[1] = objc_opt_class();
    v82[2] = objc_opt_class();
    v82[3] = objc_opt_class();
    v60 = [MEMORY[0x277CBEA60] arrayWithObjects:v82 count:4];
    v61 = [v59 setWithArray:v60];
    v62 = [v4 decodeObjectOfClasses:v61 forKey:@"clipBusinessIconStyleAttributes"];
    clipBusinessIconStyleAttributes = v5->_clipBusinessIconStyleAttributes;
    v5->_clipBusinessIconStyleAttributes = v62;

    v64 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clipMapItemMUID"];
    clipMapItemMUID = v5->_clipMapItemMUID;
    v5->_clipMapItemMUID = v64;

    v66 = MEMORY[0x277CBEB98];
    v81[0] = objc_opt_class();
    v81[1] = objc_opt_class();
    v67 = [MEMORY[0x277CBEA60] arrayWithObjects:v81 count:2];
    v68 = [v66 setWithArray:v67];
    v69 = [v4 decodeObjectOfClasses:v68 forKey:@"clipVerifiedAssociatedDomains"];
    clipVerifiedAssociatedDomains = v5->_clipVerifiedAssociatedDomains;
    v5->_clipVerifiedAssociatedDomains = v69;

    v5->_hasBusinessItemMetadata = [v4 decodeBoolForKey:@"hasBusinessItemMetadata"];
    v5->_hasAppMetadata = [v4 decodeBoolForKey:@"hasAppMetadata"];
    v5->_poweredByThirdParty = [v4 decodeBoolForKey:@"poweredByThirdParty"];
    v5->_supportsArcade = [v4 decodeBoolForKey:@"supportsArcade"];
    v71 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"invocationPolicy"];
    invocationPolicy = v5->_invocationPolicy;
    v5->_invocationPolicy = v71;

    v73 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"expirationDate"];
    expirationDate = v5->_expirationDate;
    v5->_expirationDate = v73;

    v5->_deviceCapabilitiesDontMatch = [v4 decodeBoolForKey:@"deviceCapabilitiesDontMatch"];
    v5->_isDeveloperOverride = [v4 decodeBoolForKey:@"isDeveloperOverride"];
    v5->_fullAppOnly = [v4 decodeBoolForKey:@"fullAppOnly"];
    v75 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"thinnedSize"];
    clipSize = v5->_clipSize;
    v5->_clipSize = v75;

    v77 = v5;
  }

  v78 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  abrClipName = self->_abrClipName;
  v6 = a3;
  [v6 encodeObject:abrClipName forKey:@"abrClipName"];
  [v6 encodeObject:self->_abrClipCaption forKey:@"abrClipCaption"];
  [v6 encodeObject:self->_abrClipHeroImageURL forKey:@"abrClipHeroImage"];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:self->_clipAction];
  [v6 encodeObject:v5 forKey:@"abrClipAction"];

  [v6 encodeObject:self->_storeClipName forKey:@"storeClipName"];
  [v6 encodeObject:self->_storeClipCaption forKey:@"storeClipCaption"];
  [v6 encodeObject:self->_storeClipHeroImageURL forKey:@"storeClipHeroImage"];
  [v6 encodeObject:self->_fullAppIconURL forKey:@"fullAppIconURL"];
  [v6 encodeObject:self->_fullAppCachedIconFilePath forKey:@"fullAppIconFilePath"];
  [v6 encodeObject:self->_fullAppStoreURL forKey:@"fullAppStoreURL"];
  [v6 encodeObject:self->_clipBundleID forKey:@"clipBundleID"];
  [v6 encodeObject:self->_clipMinimumOSVersion forKey:@"clipMinimumOSVersion"];
  [v6 encodeBool:self->_clipIncompatibleWithCurrentDevice forKey:@"clipIncompatibleWithCurrentDevice"];
  [v6 encodeObject:self->_clipIpaURL forKey:@"clipIpaURL"];
  [v6 encodeObject:self->_fullAppBundleID forKey:@"fullAppBundleID"];
  [v6 encodeObject:self->_fullAppName forKey:@"fullAppName"];
  [v6 encodeObject:self->_fullAppShortName forKey:@"fullAppShortName"];
  [v6 encodeObject:self->_fullAppCaption forKey:@"fullAppCaption"];
  [v6 encodeObject:self->_fullAppContentRating forKey:@"fullAppContentRating"];
  [v6 encodeObject:self->_itemID forKey:@"itemID"];
  [v6 encodeObject:self->_webClipID forKey:@"webClipID"];
  [v6 encodeObject:self->_buyParams forKey:@"clipBuyParams"];
  [v6 encodeObject:self->_provider forKey:@"provider"];
  [v6 encodeObject:self->_clipURL forKey:@"clipURL"];
  [v6 encodeObject:self->_clipRequestURL forKey:@"clipRequestURL"];
  [v6 encodeObject:self->_clipTargetURL forKey:@"clipTargetURL"];
  [v6 encodeBool:self->_clipRequestsNotificationPermission forKey:@"clipRequestsNotificationPermission"];
  [v6 encodeBool:self->_clipRequestsLocationConfirmationPermission forKey:@"clipRequestsLocationConfirmationPermission"];
  [v6 encodeObject:self->_clipURLHash forKey:@"clipURLHash"];
  [v6 encodeObject:self->_clipBusinessIconURL forKey:@"clipBusinessIconURL"];
  [v6 encodeObject:self->_clipBusinessIconStyleAttributes forKey:@"clipBusinessIconStyleAttributes"];
  [v6 encodeObject:self->_clipMapItemMUID forKey:@"clipMapItemMUID"];
  [v6 encodeObject:self->_clipVerifiedAssociatedDomains forKey:@"clipVerifiedAssociatedDomains"];
  [v6 encodeBool:self->_hasBusinessItemMetadata forKey:@"hasBusinessItemMetadata"];
  [v6 encodeBool:self->_hasAppMetadata forKey:@"hasAppMetadata"];
  [v6 encodeBool:self->_poweredByThirdParty forKey:@"poweredByThirdParty"];
  [v6 encodeBool:self->_supportsArcade forKey:@"supportsArcade"];
  [v6 encodeObject:self->_invocationPolicy forKey:@"invocationPolicy"];
  [v6 encodeObject:self->_expirationDate forKey:@"expirationDate"];
  [v6 encodeBool:self->_deviceCapabilitiesDontMatch forKey:@"deviceCapabilitiesDontMatch"];
  [v6 encodeBool:self->_isDeveloperOverride forKey:@"isDeveloperOverride"];
  [v6 encodeBool:self->_fullAppOnly forKey:@"fullAppOnly"];
  [v6 encodeObject:self->_clipSize forKey:@"thinnedSize"];
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

- (void)updateWithStoreParentAppMetadata:(id)a3
{
  v20 = a3;
  v4 = [v20 safari_stringForKey:@"bundleId"];
  [(CPSClipMetadata *)self setFullAppBundleID:v4];

  v5 = MEMORY[0x277CCABB0];
  v6 = [v20 safari_stringForKey:@"id"];
  v7 = [v5 numberWithLongLong:{objc_msgSend(v6, "longLongValue")}];
  [(CPSClipMetadata *)self setItemID:v7];

  v8 = [v20 safari_stringForKey:@"name"];
  if ([v8 length])
  {
    [(CPSClipMetadata *)self setFullAppName:v8];
  }

  v9 = [v20 safari_stringForKey:@"artistName"];
  [(CPSClipMetadata *)self setProvider:v9];

  v10 = [v20 safari_dictionaryForKey:@"artwork"];
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

  v15 = [v20 safari_arrayForKey:@"offers"];
  v16 = [v15 firstObject];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = [v16 safari_dictionaryForKey:@"version"];
    v18 = [v17 safari_numberForKey:@"externalId"];
    v19 = v18;
    if (v18)
    {
      -[CPSClipMetadata setClipVersionIdentifier:](self, "setClipVersionIdentifier:", [v18 unsignedLongLongValue]);
    }
  }
}

- (void)updateWithStoreClipMetadata:(id)a3
{
  v109 = a3;
  v4 = [v109 copy];
  amsDictionary = self->_amsDictionary;
  self->_amsDictionary = v4;

  self->_hasAppMetadata = self->_amsDictionary != 0;
  v6 = [v109 safari_dictionaryForKey:@"attributes"];
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
    v25 = [v109 safari_dictionaryForKey:@"relationships"];
    v26 = [v25 safari_dictionaryForKey:@"app-genres"];
    v27 = [v26 safari_arrayForKey:@"data"];

    v28 = [v27 objectEnumerator];
    v29 = [v28 nextObject];
    if (v29)
    {
      v30 = v29;
      v92 = v19;
      v31 = [v29 safari_stringForKey:@"id"];
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
          v36 = [v28 nextObject];

          if (v36)
          {
            v98 = v27;
            v30 = v36;
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

              v39 = [v28 nextObject];

              v30 = v39;
              if (!v39)
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
  v94 = [v109 safari_dictionaryForKey:@"relationships"];
  v67 = [v94 safari_dictionaryForKey:@"app"];
  v68 = [v67 safari_arrayForKey:@"data"];
  v69 = [v68 firstObject];

  objc_opt_class();
  v106 = v69;
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
    v80 = [v109 safari_stringForKey:@"clipIpaURL"];
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

- (id)_thinnedSizeWithVariantsInfo:(id)a3
{
  v4 = a3;
  v5 = [(CPSClipMetadata *)self test_mocProductVariants];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = +[CPSUtilities productVariants];
  }

  v8 = v7;

  v9 = [(CPSClipMetadata *)self test_mocProductVersion];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = +[CPSUtilities osVersion];
  }

  v12 = v11;

  v13 = [(CPSClipMetadata *)self _thinnedSizeWithVariantsInfo:v4 productVariants:v8 productVersion:v12];

  return v13;
}

- (id)_thinnedSizeWithVariantsInfo:(id)a3 productVariants:(id)a4 productVersion:(id)a5
{
  v58 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v36 = a5;
  v37 = [MEMORY[0x277CBEB18] array];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = v7;
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
        v47 = v36;
        v48 = v8;
        v49 = v15;
        v50 = v37;
        v16 = v15;
        [v14 enumerateObjectsUsingBlock:v46];
      }

      v10 = [obj countByEnumeratingWithState:&v51 objects:v57 count:16];
    }

    while (v10);
  }

  v17 = [v37 sortedArrayUsingComparator:&__block_literal_global_289];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v18 = v8;
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
        v22 = [v37 reverseObjectEnumerator];
        v23 = [v22 countByEnumeratingWithState:&v38 objects:v55 count:16];
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
                objc_enumerationMutation(v22);
              }

              v27 = *(*(&v38 + 1) + 8 * k);
              v28 = [v27 device];
              v29 = [v28 isEqualToString:v21];

              if (v29)
              {
                v30 = [v27 size];

                goto LABEL_26;
              }
            }

            v24 = [v22 countByEnumeratingWithState:&v38 objects:v55 count:16];
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

- (BOOL)hasUpToDateVersionInstalledOnSystemIsPlaceholder:(BOOL *)a3
{
  v5 = [(CPSClipMetadata *)self clipBundleID];
  v6 = [CPSUtilities versionIdentifierForAppWithBundleIdentifier:v5 isPlaceholder:a3];

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
  v4 = [(CPSClipMetadata *)self clipBundleID];
  v5 = [CPSUtilities versionIdentifierForAppWithBundleIdentifier:v4 isPlaceholder:&v7];

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

  v4 = [(CPSClipMetadata *)self clipLaunchURL];
  v5 = [v4 cps_isDemoLink];

  if (!v5)
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
  v3 = [(CPSClipMetadata *)self fullAppBundleID];

  if (!v3)
  {
    return 0;
  }

  v8 = 0;
  v4 = [(CPSClipMetadata *)self fullAppBundleID];
  v5 = [CPSUtilities versionIdentifierForAppWithBundleIdentifier:v4 isPlaceholder:&v8];
  v6 = (v5 != 0) & (v8 ^ 1);

  return v6;
}

- (id)_itemIDFromAppURLString:(id)a3
{
  v3 = [a3 lastPathComponent];
  if ([v3 hasPrefix:@"id"])
  {
    v4 = [v3 substringFromIndex:2];
    v5 = [MEMORY[0x277CCA900] decimalDigitCharacterSet];
    v6 = [v5 invertedSet];

    if ([v4 rangeOfCharacterFromSet:v6] == 0x7FFFFFFFFFFFFFFFLL)
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

- (void)_updateWithAMSMetadata:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v38 = v4;
    v5 = [v4 amsDictionary];
    amsDictionary = self->_amsDictionary;
    self->_amsDictionary = v5;

    self->_hasAppMetadata = self->_amsDictionary != 0;
    v7 = [v38 fullAppBundleID];
    [(CPSClipMetadata *)self setFullAppBundleID:v7];

    v8 = [v38 fullAppName];
    [(CPSClipMetadata *)self setFullAppName:v8];

    v9 = [v38 fullAppShortName];
    [(CPSClipMetadata *)self setFullAppShortName:v9];

    v10 = [v38 fullAppIconURL];
    [(CPSClipMetadata *)self setFullAppIconURL:v10];

    v11 = [v38 fullAppStoreURL];
    [(CPSClipMetadata *)self setFullAppStoreURL:v11];

    v12 = [v38 fullAppCaption];
    [(CPSClipMetadata *)self setFullAppCaption:v12];

    v13 = [v38 fullAppCachedIconFilePath];
    [(CPSClipMetadata *)self setFullAppCachedIconFilePath:v13];

    v14 = [v38 clipVerifiedAssociatedDomains];
    v15 = [v14 copy];
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
    v21 = [v38 itemID];
    if (v21)
    {
      [(CPSClipMetadata *)self setItemID:v21];
    }

    v22 = [v38 fullAppContentRating];
    if (v22)
    {
      [(CPSClipMetadata *)self setFullAppContentRating:v22];
    }

    v23 = [v38 provider];
    [(CPSClipMetadata *)self setProvider:v23];

    v24 = [v38 buyParams];
    [(CPSClipMetadata *)self setBuyParams:v24];

    -[CPSClipMetadata setClipIncompatibleWithCurrentDevice:](self, "setClipIncompatibleWithCurrentDevice:", [v38 clipIncompatibleWithCurrentDevice]);
    if (+[CPSClipURL usesDemoMetadata])
    {
      v25 = [v38 clipIpaURL];
      [(CPSClipMetadata *)self setClipIpaURL:v25];

      v26 = [v38 clipBundleID];

      if (v26)
      {
        v27 = [v38 clipBundleID];
        [(CPSClipMetadata *)self setClipBundleID:v27];
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
    v29 = [v38 clipMinimumOSVersion];
    clipMinimumOSVersion = self->_clipMinimumOSVersion;
    self->_clipMinimumOSVersion = v29;

    v31 = [v38 expirationDate];
    expirationDate = self->_expirationDate;
    self->_expirationDate = v31;

    self->_fullAppOnly = [v38 fullAppOnly];
    v33 = [v38 clipSize];
    clipSize = self->_clipSize;
    self->_clipSize = v33;

    if (!self->_clipTargetURL)
    {
      v35 = [v38 clipTargetURL];
      clipTargetURL = self->_clipTargetURL;
      self->_clipTargetURL = v35;
    }

    v37 = [v38 invocationPolicy];
    [(CPSClipMetadata *)self _updateInvocationPolicy:v37];

    v4 = v38;
  }
}

- (void)_updateInvocationPolicy:(id)a3
{
  v4 = a3;
  v5 = [(CPSClipMetadata *)self invocationPolicy];
  if ([v5 isEligible])
  {
  }

  else
  {
    v6 = [(CPSClipMetadata *)self invocationPolicy];
    v7 = [v6 isRecoverable];
    if (!v4 || !v7 || [v4 isEligible])
    {

      goto LABEL_8;
    }

    v11 = [v4 isRecoverable];

    if (v11)
    {
      goto LABEL_8;
    }
  }

  [(CPSClipMetadata *)self setInvocationPolicy:v4];
LABEL_8:
  v8 = [(CPSClipMetadata *)self invocationPolicy];
  if (![v8 isEligible] || !CPSShouldValidateAssociatedDomains())
  {
LABEL_14:

    goto LABEL_15;
  }

  v9 = [(CPSClipMetadata *)self hasValidAssociatedDomainsToLaunchAppClip];

  if (!v9)
  {
    v10 = CPS_LOG_CHANNEL_PREFIXClipServices();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(CPSClipMetadata *)v10 _updateInvocationPolicy:?];
    }

    v8 = [CPSClipInvocationPolicy ineligiblePolicyWithReason:13];
    [(CPSClipMetadata *)self setInvocationPolicy:v8];
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

  v9 = [MEMORY[0x277CBEAF8] autoupdatingCurrentLocale];
  if ([v8 containsObject:v9])
  {
    v10 = [MEMORY[0x277CBEB98] setWithObjects:{@"com.apple.Bridge.AppClip", @"com.apple.supportapp.Clip", @"com.shazam.Shazam.Clip", 0}];
    v11 = [(CPSClipMetadata *)self clipBundleID];
    v12 = [v10 containsObject:v11];
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
  v3 = [(CPSClipMetadata *)self clipLaunchURL];
  if (v3)
  {
    v4 = [MEMORY[0x277CCACE0] componentsWithURL:v3 resolvingAgainstBaseURL:1];
    v5 = [v4 host];
    if (v5)
    {
      v6 = [v3 cps_fallbackBundleIdentifier];
      v7 = [(CPSClipMetadata *)self clipBundleID];
      v8 = [v6 isEqualToString:v7];

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
          v20 = v6;
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
              v16 = [v14 firstObject];

              if (v16)
              {
                if ([v16 domainEncompassesDomain:v5])
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
          v6 = v20;
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
    v3 = self->_fullAppShortName;
  }

  else
  {
    v4 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:self->_clipBundleID allowPlaceholder:0 error:0];
    v3 = [v4 localizedName];
  }

  return v3;
}

- (id)description
{
  v27 = MEMORY[0x277CCACA8];
  v36 = [(CPSClipMetadata *)self clipName];
  storeClipCaption = self->_storeClipCaption;
  v25 = storeClipCaption;
  abrClipCaption = self->_abrClipCaption;
  v37 = [(CPSClipMetadata *)self clipCaption];
  v35 = [(CPSClipMetadata *)self clipBundleID];
  v34 = [(CPSClipMetadata *)self clipHeroImageURL];
  v33 = [(CPSClipMetadata *)self clipOpenButtonTitle];
  v31 = [(CPSClipMetadata *)self clipURL];
  v32 = [(CPSClipMetadata *)self clipIpaURL];
  v24 = [(CPSClipMetadata *)self clipRequestURL];
  v23 = [(CPSClipMetadata *)self clipMinimumOSVersion];
  v22 = [(CPSClipMetadata *)self fullAppName];
  v21 = [(CPSClipMetadata *)self fullAppShortName];
  v20 = [(CPSClipMetadata *)self fullAppCaption];
  v30 = [(CPSClipMetadata *)self fullAppContentRating];
  v19 = [(CPSClipMetadata *)self fullAppBundleID];
  v29 = [(CPSClipMetadata *)self fullAppStoreURL];
  v18 = [(CPSClipMetadata *)self fullAppIconURL];
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
  v6 = [(CPSClipMetadata *)self provider];
  v7 = [(CPSClipMetadata *)self webClipID];
  v8 = [(CPSClipMetadata *)self clipURLHash];
  v9 = [(CPSClipMetadata *)self clipVersionIdentifier];
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

  v12 = [(CPSClipMetadata *)self expirationDate];
  v13 = [(CPSClipMetadata *)self bundleDisplayName];
  v14 = [(CPSClipMetadata *)self clipSize];
  v28 = [v27 stringWithFormat:@"\n  clipName = %@, \n  abrClipCaption = %@, \n  storeClipCaption = %@, \n  clipCaption = %@, \n  clipBundleID = %@, \n  clipHeroImageURL = %@, \n  clipOpenButtonTitle = %@, \n  clipURL = %@, \n  clipIpaURL = %@, \n  clipRequestURL = %@, \n  clipMinimumOSVersion = %@, \n  fullAppName = %@, \n  fullAppShortName = %@, \n  fullAppCaption = %@, \n  fullAppContentRating = %@, \n  fullAppBundleID = %@, \n  fullAppStoreURL = %@, \n  fullAppIconURL = %@, \n  isPoweredBy = %@, \n  supportsArcade = %@, \n  provider = %@, \n  webClipID = %@, \n  clipURLHash = %@, \n  clipVersionIdentifier = %llu \n  clipRequestsLocationConfirmationPermission = %@ \n  clipRequestsNotificationPermission = %@ \n  expirationDate = %@ \n  bundleDisplayName = %@ \n  thinnedSize = %@ \n", v36, abrClipCaption, v25, v37, v35, v34, v33, v31, v32, v24, v23, v22, v21, v20, v30, v19, v29, v18, v17, v16, v6, v7, v8, v9, v10, v11, v12, v13, v14];

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
  v8 = [a3 cps_privacyPreservingDescription];
  *a1 = 138543362;
  *a4 = v8;
  _os_log_error_impl(&dword_2436ED000, v7, OS_LOG_TYPE_ERROR, "Cannot parse associatd domain. Error: %{public}@", a1, 0xCu);
}

@end