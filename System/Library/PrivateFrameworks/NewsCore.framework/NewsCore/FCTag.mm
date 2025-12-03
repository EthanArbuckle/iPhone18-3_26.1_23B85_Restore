@interface FCTag
- (BOOL)_isValidScheme:(_BOOL8)scheme;
- (BOOL)isAuthenticationSetup;
- (BOOL)isBlockedExplicitContent;
- (BOOL)isDark;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToTag:(id)tag;
- (BOOL)isNoLongerAvailable;
- (BOOL)isPurchaseSetup;
- (BOOL)isSubscribable;
- (BOOL)isWhite;
- (BOOL)isWhitelisted;
- (CGSize)nameImageForDarkBackgroundSize;
- (CGSize)nameImageMaskSize;
- (CGSize)nameImageSize;
- (FCChannelProviding)asChannel;
- (FCColor)adBackgroundColor;
- (FCColor)backgroundColor;
- (FCColor)darkStyleAdBackgroundColor;
- (FCColor)darkStyleBackgroundColor;
- (FCColor)darkStyleFeedBackgroundColor;
- (FCColor)darkStyleFeedControlColor;
- (FCColor)darkStyleForegroundColor;
- (FCColor)darkStyleNavigationChromeBackgroundColor;
- (FCColor)darkStyleNavigationChromeSeparatorColor;
- (FCColor)feedBackgroundColor;
- (FCColor)feedControlColor;
- (FCColor)foregroundColor;
- (FCColor)groupDarkStyleTitleColor;
- (FCColor)groupTitleColor;
- (FCColor)navigationChromeBackgroundColor;
- (FCColor)navigationChromeSeparatorColor;
- (FCContentArchive)contentArchive;
- (FCContentColorMap)contentColorMap;
- (FCContentManifest)contentManifest;
- (FCEdgeInsets)nameImageForDarkBackgroundInsets;
- (FCEdgeInsets)nameImageInsets;
- (FCEdgeInsets)nameImageMaskInsets;
- (FCPuzzleTypeProviding)asPuzzleType;
- (FCSectionProviding)asSection;
- (FCSportsEventProviding)asSportsEvent;
- (FCSportsProviding)asSports;
- (FCTag)initWithData:(id)data context:(id)context;
- (FCTag)initWithTagMetadata:(id)metadata assetManager:(id)manager isSports:(BOOL)sports;
- (FCTag)initWithTagRecord:(id)record assetManager:(id)manager interestToken:(id)token specialTagFeedType:(unint64_t)type;
- (FCTag)initWithTagType:(unint64_t)type identifier:(id)identifier name:(id)name;
- (FCTagBanner)bannerImageForMask;
- (FCTagBanner)bannerImageForThemeBackground;
- (FCTagBanner)bannerImageForWhiteBackground;
- (FCTagBanner)compactBannerImage;
- (FCTagBanner)defaultBannerImage;
- (FCTopicProviding)asTopic;
- (NSArray)loadableFonts;
- (NSArray)sportsParentTagIdentifiers;
- (NSData)backingTagRecordData;
- (NSData)data;
- (NSData)sportsRecommendationMappingsJSON;
- (NSString)articleRecirculationConfigJSON;
- (NSString)compactDisplayName;
- (NSString)description;
- (NSString)displayName;
- (NSString)groupName;
- (NSString)highlightsArticleListID;
- (NSString)personalizedPaywallName;
- (NSString)stocksFeedConfigJSON;
- (id)_FCColorFromHexTriplet:(void *)triplet;
- (id)_feedConfigurationForSection:(id *)section;
- (id)authorizationURL;
- (id)freeFeedIDForBin:(int64_t)bin;
- (id)freeFeedIDForSection:(id)section bin:(int64_t)bin;
- (id)initChannelForTestingWithIdentifier:(id)identifier name:(id)name defaultSection:(id)section publisherAuthorizationURL:(id)l publisherVerificationURL:(id)rL;
- (id)initChannelForTestingWithIdentifier:(id)identifier name:(id)name publisherPaidBundlePurchaseIDs:(id)ds;
- (id)initChannelFromNotificationWithIdentifier:(id)identifier name:(id)name nameImageAssetHandle:(id)handle nameImageMaskAssetHandle:(id)assetHandle;
- (id)initForTestingWithTagType:(unint64_t)type identifier:(id)identifier name:(id)name umcCanonicalID:(id)d;
- (id)mainCompactDisplayName;
- (id)paidFeedIDForBin:(int64_t)bin;
- (id)paidFeedIDForSection:(id)section bin:(int64_t)bin;
- (id)prefetchPurchaseOffer;
- (id)purchaseOfferableConfigurationsFromProtobufList:(void *)list;
- (id)setTitleDisplayPrefixOverride:(id)override;
- (id)setTitleDisplaySuffixOverride:(id)override;
- (int64_t)feedType;
- (unint64_t)channelType;
- (unint64_t)hash;
- (unint64_t)userFacingTagType;
@end

@implementation FCTag

- (NSData)sportsRecommendationMappingsJSON
{
  tagRecord = [(FCTag *)self tagRecord];
  sportsRecommendationMappingsJson = [tagRecord sportsRecommendationMappingsJson];
  fc_gzipInflate = [sportsRecommendationMappingsJson fc_gzipInflate];

  return fc_gzipInflate;
}

- (BOOL)isPurchaseSetup
{
  publisherPaidOfferableConfigurations = [(FCTag *)self publisherPaidOfferableConfigurations];
  v3 = [publisherPaidOfferableConfigurations count] != 0;

  return v3;
}

- (FCTag)initWithTagType:(unint64_t)type identifier:(id)identifier name:(id)name
{
  v27 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  nameCopy = name;
  if (!identifierCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "identifier != 0"];
    *buf = 136315906;
    v20 = "[FCTag initWithTagType:identifier:name:]";
    v21 = 2080;
    v22 = "FCTag.m";
    v23 = 1024;
    v24 = 339;
    v25 = 2114;
    v26 = v17;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v18.receiver = self;
  v18.super_class = FCTag;
  v10 = [(FCTag *)&v18 init];
  if (v10)
  {
    if ([identifierCopy length])
    {
      v10->_tagType = type;
      v11 = [identifierCopy copy];
      identifier = v10->_identifier;
      v10->_identifier = v11;

      v13 = [nameCopy copy];
      name = v10->_name;
      v10->_name = v13;
    }

    else
    {
      name = v10;
      v10 = 0;
    }
  }

  v15 = *MEMORY[0x1E69E9840];
  return v10;
}

- (FCTag)initWithTagMetadata:(id)metadata assetManager:(id)manager isSports:(BOOL)sports
{
  metadataCopy = metadata;
  managerCopy = manager;
  v78.receiver = self;
  v78.super_class = FCTag;
  v10 = [(FCTag *)&v78 init];
  if (v10)
  {
    name = [metadataCopy name];
    name = v10->_name;
    v10->_name = name;

    identifier = [metadataCopy identifier];
    identifier = v10->_identifier;
    v10->_identifier = identifier;

    v10->_tagType = [metadataCopy tagType];
    v10->_isSports = sports;
    sportsPrimaryName = [metadataCopy sportsPrimaryName];
    sportsPrimaryName = v10->_sportsPrimaryName;
    v10->_sportsPrimaryName = sportsPrimaryName;

    sportsSecondaryName = [metadataCopy sportsSecondaryName];
    sportsSecondaryName = v10->_sportsSecondaryName;
    v10->_sportsSecondaryName = sportsSecondaryName;

    sportsSecondaryShortName = [metadataCopy sportsSecondaryShortName];
    sportsSecondaryShortName = v10->_sportsSecondaryShortName;
    v10->_sportsSecondaryShortName = sportsSecondaryShortName;

    sportsFullName = [metadataCopy sportsFullName];
    sportsFullName = v10->_sportsFullName;
    v10->_sportsFullName = sportsFullName;

    v10->_sportsLeagueType = [metadataCopy sportsLeagueType];
    sportsPrimaryColor = [metadataCopy sportsPrimaryColor];
    v24 = [FCColor nullableColorWithHexString:sportsPrimaryColor];
    sportsPrimaryColor = v10->_sportsPrimaryColor;
    v10->_sportsPrimaryColor = v24;

    isAthlete = [metadataCopy isAthlete];
    v27 = 4;
    if (!isAthlete)
    {
      v27 = 0;
    }

    v10->_sportsType = v27;
    v10->_isLocal = [metadataCopy isLocalNews];
    groupTitleColor = [metadataCopy groupTitleColor];
    groupTitleColorHexString = v10->_groupTitleColorHexString;
    v10->_groupTitleColorHexString = groupTitleColor;

    v10->_isPublic = [metadataCopy isPublic];
    nameImageMetadata = [metadataCopy nameImageMetadata];
    v31 = nameImageMetadata;
    if (nameImageMetadata)
    {
      v32 = [nameImageMetadata dataUsingEncoding:4];
      v33 = v32;
      if (v32)
      {
        bytes = [v32 bytes];
        LOWORD(v35) = *bytes;
        v36 = v35;
        LOWORD(v37) = bytes[1];
        v38 = v37;
        v10->_nameImageSize.width = v36;
        v10->_nameImageSize.height = v38;
        LOWORD(v36) = bytes[2];
        v39 = *&v36;
        LOWORD(v38) = bytes[5];
        v40 = *&v38;
        LOWORD(v41) = bytes[4];
        v42 = v41;
        LOWORD(v43) = bytes[3];
        v44 = v43;
        v10->_nameImageInsets.top = v39;
        v10->_nameImageInsets.left = v40;
        v10->_nameImageInsets.bottom = v42;
        v10->_nameImageInsets.right = v44;
        LOWORD(v39) = bytes[6];
        LOWORD(v40) = bytes[7];
        LOWORD(v42) = bytes[8];
        LOWORD(v44) = bytes[11];
        LOWORD(v45) = bytes[10];
        LOWORD(v46) = bytes[9];
        v10->_nameImageForDarkBackgroundSize.width = *&v39;
        v10->_nameImageForDarkBackgroundSize.height = *&v40;
        v47 = *&v42;
        v48 = *&v44;
        *&v49 = v45;
        *&v50 = v46;
        v10->_nameImageForDarkBackgroundInsets.top = v47;
        v10->_nameImageForDarkBackgroundInsets.left = v48;
        v10->_nameImageForDarkBackgroundInsets.bottom = v45;
        v10->_nameImageForDarkBackgroundInsets.right = v46;
        LOWORD(v47) = bytes[12];
        v51 = *&v47;
        LOWORD(v48) = bytes[13];
        v52 = *&v48;
        v10->_nameImageMaskSize.width = v51;
        v10->_nameImageMaskSize.height = v52;
        LOWORD(v51) = bytes[14];
        LOWORD(v52) = bytes[17];
        LOWORD(v49) = bytes[16];
        LOWORD(v50) = bytes[15];
        v10->_nameImageMaskInsets.top = *&v51;
        v10->_nameImageMaskInsets.left = *&v52;
        v10->_nameImageMaskInsets.bottom = v49;
        v10->_nameImageMaskInsets.right = v50;
      }
    }

    nameImage = [metadataCopy nameImage];
    if (nameImage)
    {
      v54 = [managerCopy assetHandleForCKAssetURLString:nameImage lifetimeHint:0];
      nameImageAssetHandle = v10->_nameImageAssetHandle;
      v10->_nameImageAssetHandle = v54;

      v56 = [[FCTagBanner alloc] initWithAssetHandle:v10->_nameImageAssetHandle size:v10->_nameImageSize.width insets:v10->_nameImageSize.height, v10->_nameImageInsets.top, v10->_nameImageInsets.left, v10->_nameImageInsets.bottom, v10->_nameImageInsets.right];
      bannerImageForWhiteBackground = v10->_bannerImageForWhiteBackground;
      v10->_bannerImageForWhiteBackground = v56;
    }

    coverImage = [metadataCopy coverImage];
    if (coverImage)
    {
      v59 = [managerCopy assetHandleForCKAssetURLString:coverImage lifetimeHint:0];
      coverImageAssetHandle = v10->_coverImageAssetHandle;
      v10->_coverImageAssetHandle = v59;
    }

    feedNavImage = [metadataCopy feedNavImage];
    if (feedNavImage)
    {
      v62 = [managerCopy assetHandleForCKAssetURLString:feedNavImage lifetimeHint:0];
      feedNavImageAssetHandle = v10->_feedNavImageAssetHandle;
      v10->_feedNavImageAssetHandle = v62;
    }

    nameImageForDarkBackground = [metadataCopy nameImageForDarkBackground];
    if (nameImageForDarkBackground)
    {
      v65 = [managerCopy assetHandleForCKAssetURLString:nameImageForDarkBackground lifetimeHint:0];
      nameImageForDarkBackgroundAssetHandle = v10->_nameImageForDarkBackgroundAssetHandle;
      v10->_nameImageForDarkBackgroundAssetHandle = v65;

      v67 = [[FCTagBanner alloc] initWithAssetHandle:v10->_nameImageForDarkBackgroundAssetHandle size:v10->_nameImageForDarkBackgroundSize.width insets:v10->_nameImageForDarkBackgroundSize.height, v10->_nameImageForDarkBackgroundInsets.top, v10->_nameImageForDarkBackgroundInsets.left, v10->_nameImageForDarkBackgroundInsets.bottom, v10->_nameImageForDarkBackgroundInsets.right];
      bannerImageForThemeBackground = v10->_bannerImageForThemeBackground;
      v10->_bannerImageForThemeBackground = v67;
    }

    nameImageMask = [metadataCopy nameImageMask];
    if (nameImageMask)
    {
      v70 = [managerCopy assetHandleForCKAssetURLString:nameImageMask lifetimeHint:0];
      nameImageMaskAssetHandle = v10->_nameImageMaskAssetHandle;
      v10->_nameImageMaskAssetHandle = v70;

      v72 = [[FCTagBanner alloc] initWithAssetHandle:v10->_nameImageMaskAssetHandle size:v10->_nameImageMaskSize.width insets:v10->_nameImageMaskSize.height, v10->_nameImageMaskInsets.top, v10->_nameImageMaskInsets.left, v10->_nameImageMaskInsets.bottom, v10->_nameImageMaskInsets.right];
      bannerImageForMask = v10->_bannerImageForMask;
      v10->_bannerImageForMask = v72;
    }

    sportsLogoImageCompact = [metadataCopy sportsLogoImageCompact];
    if (sportsLogoImageCompact)
    {
      v75 = [managerCopy assetHandleForCKAssetURLString:sportsLogoImageCompact lifetimeHint:0];
      sportsLogoImageCompactAssetHandle = v10->_sportsLogoImageCompactAssetHandle;
      v10->_sportsLogoImageCompactAssetHandle = v75;
    }
  }

  return v10;
}

- (FCTag)initWithData:(id)data context:(id)context
{
  v6 = MEMORY[0x1E69B7000];
  contextCopy = context;
  dataCopy = data;
  v9 = [[v6 alloc] initWithData:dataCopy];

  v10 = [FCTag alloc];
  assetManager = [contextCopy assetManager];

  v12 = [(FCTag *)v10 initWithTagRecord:v9 assetManager:assetManager interestToken:0 specialTagFeedType:0];
  return v12;
}

- (FCTag)initWithTagRecord:(id)record assetManager:(id)manager interestToken:(id)token specialTagFeedType:(unint64_t)type
{
  v433 = *MEMORY[0x1E69E9840];
  recordCopy = record;
  managerCopy = manager;
  managerCopy2 = manager;
  tokenCopy = token;
  name = [recordCopy name];
  v13 = [recordCopy type] - 1;
  if (v13 < 5)
  {
    v14 = v13 + 1;
  }

  else
  {
    v14 = 0;
  }

  base = [recordCopy base];
  identifier = [base identifier];
  v423 = name;
  v17 = [(FCTag *)self initWithTagType:v14 identifier:identifier name:name];

  if (!v17)
  {
    goto LABEL_85;
  }

  tokenCopy2 = token;
  context = objc_autoreleasePoolPush();
  if (([recordCopy propertyFlags] & 4) != 0)
  {
    v17->_userFacingTagTypeOverride = 1;
  }

  nameCompact = [recordCopy nameCompact];
  nameCompact = v17->_nameCompact;
  v17->_nameCompact = nameCompact;

  feedConfiguration = [recordCopy feedConfiguration];
  feedConfiguration = v17->_feedConfiguration;
  v17->_feedConfiguration = feedConfiguration;

  purchaseOfferableConfigurations = [recordCopy purchaseOfferableConfigurations];
  v22 = [FCTag purchaseOfferableConfigurationsFromProtobufList:purchaseOfferableConfigurations];
  publisherPaidOfferableConfigurations = v17->_publisherPaidOfferableConfigurations;
  v17->_publisherPaidOfferableConfigurations = v22;

  v24 = MEMORY[0x1E695DF00];
  base2 = [recordCopy base];
  fetchDate = [base2 fetchDate];
  v27 = [v24 dateWithPBDate:fetchDate];
  fetchDate = v17->_fetchDate;
  v17->_fetchDate = v27;

  date = [MEMORY[0x1E695DF00] date];
  loadDate = v17->_loadDate;
  v17->_loadDate = date;

  v31 = MEMORY[0x1E695DF00];
  base3 = [recordCopy base];
  modificationDate = [base3 modificationDate];
  v34 = [v31 dateWithPBDate:modificationDate];
  lastModifiedDate = v17->_lastModifiedDate;
  v17->_lastModifiedDate = v34;

  base4 = [recordCopy base];
  changeTag = [base4 changeTag];
  versionKey = v17->_versionKey;
  v17->_versionKey = changeTag;

  v17->_isDeprecated = [recordCopy isDeprecated];
  replacementID = [recordCopy replacementID];
  replacementID = v17->_replacementID;
  v17->_replacementID = replacementID;

  highlightsArticleListID = [recordCopy highlightsArticleListID];
  highlightsArticleListID = v17->_highlightsArticleListID;
  v17->_highlightsArticleListID = highlightsArticleListID;

  v17->_isExplicitContent = [recordCopy isExplicitContent];
  primaryAudience = [recordCopy primaryAudience];
  primaryAudience = v17->_primaryAudience;
  v17->_primaryAudience = primaryAudience;

  iAdCategories = [recordCopy iAdCategories];
  iAdCategories = v17->_iAdCategories;
  v17->_iAdCategories = iAdCategories;

  iAdKeywords = [recordCopy iAdKeywords];
  iAdKeywords = v17->_iAdKeywords;
  v17->_iAdKeywords = iAdKeywords;

  language = [recordCopy language];
  language = v17->_language;
  v17->_language = language;

  magazineGenre = [recordCopy magazineGenre];
  magazineGenre = v17->_magazineGenre;
  v17->_magazineGenre = magazineGenre;

  superfeedConfigResourceID = [recordCopy superfeedConfigResourceID];
  superfeedConfigResourceID = v17->_superfeedConfigResourceID;
  v17->_superfeedConfigResourceID = superfeedConfigResourceID;

  [recordCopy subscriptionRate];
  v17->_subscriptionRate = v55;
  adTargetingKeywords = [recordCopy adTargetingKeywords];
  adTargetingKeywords = v17->_adTargetingKeywords;
  v17->_adTargetingKeywords = adTargetingKeywords;

  blockedStorefrontIDs = [recordCopy blockedStorefrontIDs];
  blockedStorefrontIDs = v17->_blockedStorefrontIDs;
  v17->_blockedStorefrontIDs = blockedStorefrontIDs;

  allowedStorefrontIDs = [recordCopy allowedStorefrontIDs];
  allowedStorefrontIDs = v17->_allowedStorefrontIDs;
  v17->_allowedStorefrontIDs = allowedStorefrontIDs;

  v17->_score = [recordCopy score];
  v17->_contentProvider = [recordCopy contentProvider];
  v17->_isPublic = [recordCopy isPublic];
  v17->_minimumNewsVersion = [recordCopy minimumNewsVersion];
  v17->_isNotificationEnabled = [recordCopy isNotificationEnabled];
  subtitle = [recordCopy subtitle];
  subtitle = v17->_subtitle;
  v17->_subtitle = subtitle;

  latestIssueIDs = [recordCopy latestIssueIDs];
  currentIssueIDs = v17->_currentIssueIDs;
  v17->_currentIssueIDs = latestIssueIDs;

  recentIssueIDs = [recordCopy recentIssueIDs];
  recentIssueIDs = v17->_recentIssueIDs;
  v17->_recentIssueIDs = recentIssueIDs;

  archiveIssueListID = [recordCopy archiveIssueListID];
  backIssuesListID = v17->_backIssuesListID;
  v17->_backIssuesListID = archiveIssueListID;

  [recordCopy nameImageScaleFactor];
  v17->_bannerImageScale = v70;
  v17->_bannerImageBaselineOffsetPercentage = [recordCopy nameImageBaselineShift];
  v71 = [recordCopy generateLogoImageAssetHandleWithAssetManager:managerCopy2];
  logoImageAssetHandle = v17->_logoImageAssetHandle;
  v17->_logoImageAssetHandle = v71;

  v73 = [recordCopy generateNameImageAssetHandleWithAssetManager:managerCopy2];
  nameImageAssetHandle = v17->_nameImageAssetHandle;
  v17->_nameImageAssetHandle = v73;

  v75 = [recordCopy generateNameImageCompactAssetHandleWithAssetManager:managerCopy2];
  nameImageCompactAssetHandle = v17->_nameImageCompactAssetHandle;
  v17->_nameImageCompactAssetHandle = v75;

  v77 = [recordCopy generateNameImageForDarkBackgroundAssetHandleWithAssetManager:managerCopy2];
  nameImageForDarkBackgroundAssetHandle = v17->_nameImageForDarkBackgroundAssetHandle;
  v17->_nameImageForDarkBackgroundAssetHandle = v77;

  nameImageMaskURL = [recordCopy nameImageMaskURL];
  v80 = [recordCopy generateNameImageMaskAssetHandleForURL:nameImageMaskURL withAssetManager:managerCopy2];
  nameImageMaskAssetHandle = v17->_nameImageMaskAssetHandle;
  v17->_nameImageMaskAssetHandle = v80;

  v82 = [recordCopy generateCoverImageAssetHandleWithAssetManager:managerCopy2];
  coverImageAssetHandle = v17->_coverImageAssetHandle;
  v17->_coverImageAssetHandle = v82;

  v84 = [recordCopy generateFeedNavImageAssetHandleWithAssetManager:managerCopy2];
  feedNavImageAssetHandle = v17->_feedNavImageAssetHandle;
  v17->_feedNavImageAssetHandle = v84;

  v86 = [recordCopy generateFeedNavImageHQAssetHandleWithAssetManager:managerCopy2];
  feedNavImageHQAssetHandle = v17->_feedNavImageHQAssetHandle;
  v17->_feedNavImageHQAssetHandle = v86;

  parentID = [recordCopy parentID];
  parentID = v17->_parentID;
  v17->_parentID = parentID;

  channelSectionIDs = [recordCopy channelSectionIDs];
  sectionIDs = v17->_sectionIDs;
  v17->_sectionIDs = channelSectionIDs;

  channelDefaultSectionID = [recordCopy channelDefaultSectionID];
  defaultSectionID = v17->_defaultSectionID;
  v17->_defaultSectionID = channelDefaultSectionID;

  channelSectionFeedConfigurations = [recordCopy channelSectionFeedConfigurations];
  sectionFeedConfigurations = v17->_sectionFeedConfigurations;
  v17->_sectionFeedConfigurations = channelSectionFeedConfigurations;

  supergroupConfigJson = [recordCopy supergroupConfigJson];
  supergroupConfigJson = v17->_supergroupConfigJson;
  v17->_supergroupConfigJson = supergroupConfigJson;

  v98 = [(NSString *)v17->_supergroupConfigJson dataUsingEncoding:4];
  v417 = managerCopy2;
  if (v98)
  {
    v99 = objc_opt_class();
    *buf = 0;
    v100 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v98 options:0 error:buf];
    v101 = *buf;
    v102 = FCCheckedDynamicCast(v99, v100);

    if (v102)
    {
      v103 = objc_opt_class();
      v104 = [v102 objectForKeyedSubscript:@"contextualNames"];
      v105 = FCCheckedDynamicCast(v103, v104);

      managerCopy2 = v417;
      v106 = [v105 fc_arrayByTransformingWithBlock:&__block_literal_global_507_0];
    }

    else
    {
      v106 = 0;
    }
  }

  else
  {
    v106 = 0;
  }

  contextualNames = v17->_contextualNames;
  v17->_contextualNames = v106;

  supergroupKnobsJson = [recordCopy supergroupKnobsJson];
  supergroupKnobsJson = v17->_supergroupKnobsJson;
  v17->_supergroupKnobsJson = supergroupKnobsJson;

  v110 = [FCSectionSupergroupKnobs alloc];
  supergroupKnobsJson2 = [recordCopy supergroupKnobsJson];
  v112 = [(FCSectionSupergroupKnobs *)v110 initWithJSONString:supergroupKnobsJson2];
  supergroupKnobs = v17->_supergroupKnobs;
  v17->_supergroupKnobs = v112;

  v17->_hideAccessoryText = [recordCopy hideAccessoryText];
  templateJson = [recordCopy templateJson];
  v115 = [templateJson dataUsingEncoding:4];

  v422 = v115;
  if (v115)
  {
    v426 = 0;
    v116 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v115 options:0 error:&v426];
    v117 = v426;
    if (v116)
    {
      if (managerCopy2)
      {
        v118 = managerCopy2[15];
      }

      else
      {
        v118 = 0;
      }

      v119 = v118;
      v120 = v116;
      v121 = v119;
      v122 = [v120 objectForKeyedSubscript:@"2"];
      v413 = v122;
      if (v122)
      {
        v123 = v122;
        v409 = v120;
        integerValue = [@"2" integerValue];
        v125 = v123;
        if (integerValue == 2)
        {
          v411 = v121;
          v408 = v121;
          v126 = [v125 objectForKeyedSubscript:@"foregroundColor"];
          foregroundColorHexString = v17->_foregroundColorHexString;
          v17->_foregroundColorHexString = v126;

          v128 = [v125 objectForKeyedSubscript:@"darkStyleForegroundColor"];
          darkStyleForegroundColorHexString = v17->_darkStyleForegroundColorHexString;
          v17->_darkStyleForegroundColorHexString = v128;

          v130 = [v125 objectForKeyedSubscript:@"backgroundColor"];
          backgroundColorHexString = v17->_backgroundColorHexString;
          v17->_backgroundColorHexString = v130;

          v132 = [v125 objectForKeyedSubscript:@"darkStyleBackgroundColor"];
          darkStyleBackgroundColorHexString = v17->_darkStyleBackgroundColorHexString;
          v17->_darkStyleBackgroundColorHexString = v132;

          v134 = [v125 objectForKeyedSubscript:@"groupTitleColor"];
          groupTitleColorHexString = v17->_groupTitleColorHexString;
          v17->_groupTitleColorHexString = v134;

          v136 = [v125 objectForKeyedSubscript:@"navigationChromeBackgroundColor"];
          navigationChromeBackgroundColorHexString = v17->_navigationChromeBackgroundColorHexString;
          v17->_navigationChromeBackgroundColorHexString = v136;

          v138 = [v125 objectForKeyedSubscript:@"navigationChromeBackgroundDarkModeColor"];
          darkStyleNavigationChromeBackgroundColorHexString = v17->_darkStyleNavigationChromeBackgroundColorHexString;
          v17->_darkStyleNavigationChromeBackgroundColorHexString = v138;

          v140 = [v125 objectForKeyedSubscript:@"navigationChromeSeparatorColor"];
          navigationChromeSeparatorColorHexString = v17->_navigationChromeSeparatorColorHexString;
          v17->_navigationChromeSeparatorColorHexString = v140;

          v142 = [v125 objectForKeyedSubscript:@"navigationChromeSeparatorDarkModeColor"];
          darkStyleNavigationChromeSeparatorColorHexString = v17->_darkStyleNavigationChromeSeparatorColorHexString;
          v17->_darkStyleNavigationChromeSeparatorColorHexString = v142;

          v144 = [v125 objectForKeyedSubscript:@"navigationChromeBackgroundGradient"];
          v407 = v144;
          if (v144)
          {
            v144 = [FCColorGradient colorGradientWithConfigDict:v144];
          }

          navigationChromeBackgroundGradient = v17->_navigationChromeBackgroundGradient;
          v17->_navigationChromeBackgroundGradient = v144;

          v146 = [v125 objectForKeyedSubscript:@"navigationChromeBackgroundDarkModeGradient"];
          v406 = v146;
          if (v146)
          {
            v146 = [FCColorGradient colorGradientWithConfigDict:v146];
          }

          darkStyleNavigationChromeBackgroundGradient = v17->_darkStyleNavigationChromeBackgroundGradient;
          v17->_darkStyleNavigationChromeBackgroundGradient = v146;

          v148 = [v125 objectForKeyedSubscript:@"feedBackgroundColor"];
          feedBackgroundColorHexString = v17->_feedBackgroundColorHexString;
          v17->_feedBackgroundColorHexString = v148;

          v150 = [v125 objectForKeyedSubscript:@"darkStyleFeedBackgroundColor"];
          darkStyleFeedBackgroundColorHexString = v17->_darkStyleFeedBackgroundColorHexString;
          v17->_darkStyleFeedBackgroundColorHexString = v150;

          v152 = [v125 objectForKeyedSubscript:@"feedBackgroundGradient"];
          v405 = v152;
          if (v152)
          {
            v152 = [FCColorGradient colorGradientWithConfigDict:v152];
          }

          feedBackgroundGradient = v17->_feedBackgroundGradient;
          v17->_feedBackgroundGradient = v152;

          v154 = [v125 objectForKeyedSubscript:@"darkStyleFeedBackgroundGradient"];
          v404 = v154;
          if (v154)
          {
            v154 = [FCColorGradient colorGradientWithConfigDict:v154];
          }

          darkStyleFeedBackgroundGradient = v17->_darkStyleFeedBackgroundGradient;
          v17->_darkStyleFeedBackgroundGradient = v154;

          v156 = [v125 objectForKeyedSubscript:@"feedControlColor"];
          feedControlColorHexString = v17->_feedControlColorHexString;
          v17->_feedControlColorHexString = v156;

          v158 = [v125 objectForKeyedSubscript:@"darkStyleFeedControlColor"];
          darkStyleFeedControlColorHexString = v17->_darkStyleFeedControlColorHexString;
          v17->_darkStyleFeedControlColorHexString = v158;

          v160 = [v125 objectForKeyedSubscript:@"adBackgroundColor"];
          adBackgroundColorHexString = v17->_adBackgroundColorHexString;
          v17->_adBackgroundColorHexString = v160;

          v162 = [v125 objectForKeyedSubscript:@"darkStyleAdBackgroundColor"];
          darkStyleAdBackgroundColorHexString = v17->_darkStyleAdBackgroundColorHexString;
          v17->_darkStyleAdBackgroundColorHexString = v162;

          v407 = [v125 objectForKeyedSubscript:@"adBackgroundGradient"];
          v403 = v407;
          if (v407)
          {
            v407 = [FCColorGradient colorGradientWithConfigDict:v407, v407, v404, v405, v406, v407];
          }

          adBackgroundGradient = v17->_adBackgroundGradient;
          v17->_adBackgroundGradient = v407;

          v166 = [v125 objectForKeyedSubscript:@"darkStyleAdBackgroundGradient"];
          v167 = v166;
          if (v166)
          {
            v166 = [FCColorGradient colorGradientWithConfigDict:v166];
          }

          darkStyleAdBackgroundGradient = v17->_darkStyleAdBackgroundGradient;
          v17->_darkStyleAdBackgroundGradient = v166;

          v187 = [v125 objectForKeyedSubscript:@"feedMastheadType"];
          feedMastheadType = v17->_feedMastheadType;
          v17->_feedMastheadType = v187;

          v189 = [v125 objectForKeyedSubscript:@"titleFontAttributes"];
          v190 = [FCTextInfo textInfoFromJSONValues:v189 URLGenerator:v408];
          headlineTitleTextInfo = v17->_headlineTitleTextInfo;
          v17->_headlineTitleTextInfo = v190;

          v192 = [v125 objectForKeyedSubscript:@"excerptFontAttributes"];
          v193 = [FCTextInfo textInfoFromJSONValues:v192 URLGenerator:v408];
          headlineExcerptTextInfo = v17->_headlineExcerptTextInfo;
          v17->_headlineExcerptTextInfo = v193;

          v195 = [v125 objectForKeyedSubscript:@"bylineFontAttributes"];
          v196 = [FCTextInfo textInfoFromJSONValues:v195 URLGenerator:v408];

          headlineBylineTextInfo = v17->_headlineBylineTextInfo;
          v17->_headlineBylineTextInfo = v196;

          v198 = [v125 objectForKeyedSubscript:@"navigationChromeBackgroundImageContentMode"];
          v17->_navigationChromeBackgroundImageContentMode = FCContentModeFromString(v198);

          v199 = [v125 objectForKeyedSubscript:@"navigationChromeBackgroundImageContentModeCompact"];
          v17->_navigationChromeBackgroundImageContentModeCompact = FCContentModeFromString(v199);

          v200 = [v125 objectForKeyedSubscript:@"navigationChromeBackgroundImageContentModeLarge"];
          v17->_navigationChromeBackgroundImageContentModeLarge = FCContentModeFromString(v200);

          v201 = [v125 objectForKeyedSubscript:@"contentColorMap"];
          v202 = objc_alloc(MEMORY[0x1E69B68D8]);
          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 3221225472;
          *&buf[16] = __61__FCTag__inflateFromJSONDictionary_withVersion_URLGenerator___block_invoke;
          *&v432 = &unk_1E7C36F98;
          *(&v432 + 1) = v201;
          v203 = v201;
          v204 = [v202 initWithConstructor:buf];
          lazyContentColorMap = v17->_lazyContentColorMap;
          v17->_lazyContentColorMap = v204;

          managerCopy2 = v417;
          v121 = v411;
        }

        v120 = v409;
      }

      else
      {
        v412 = v121;
        v169 = v121;
        v170 = v120;
        v171 = [v170 objectForKeyedSubscript:@"foregroundColor"];
        v172 = v17->_foregroundColorHexString;
        v17->_foregroundColorHexString = v171;

        v173 = [v170 objectForKeyedSubscript:@"backgroundColor"];
        v174 = v17->_backgroundColorHexString;
        v17->_backgroundColorHexString = v173;

        v175 = [v170 objectForKeyedSubscript:@"groupTitleColor"];
        v176 = v17->_groupTitleColorHexString;
        v17->_groupTitleColorHexString = v175;

        __60__FCTag__inflateFromVersionlessJSONDictionary_URLGenerator___block_invoke(v170, @"headlineTitleFontName", @"headlineTitleFontResourceID");
        v177 = v410 = v116;
        v178 = __60__FCTag__inflateFromVersionlessJSONDictionary_URLGenerator___block_invoke(v170, @"headlineExcerptFontName", @"headlineExcerptFontResourceID");
        v179 = __60__FCTag__inflateFromVersionlessJSONDictionary_URLGenerator___block_invoke(v170, @"headlineBylineFontName", @"headlineBylineFontResourceID");

        v180 = [FCTextInfo textInfoFromJSONValues:v177 URLGenerator:v169];
        v181 = v17->_headlineTitleTextInfo;
        v17->_headlineTitleTextInfo = v180;

        v182 = [FCTextInfo textInfoFromJSONValues:v178 URLGenerator:v169];
        v183 = v17->_headlineExcerptTextInfo;
        v17->_headlineExcerptTextInfo = v182;

        v184 = [FCTextInfo textInfoFromJSONValues:v179 URLGenerator:v169];

        v185 = v17->_headlineBylineTextInfo;
        v17->_headlineBylineTextInfo = v184;
        managerCopy2 = v417;

        v121 = v412;
        v116 = v410;
      }
    }

    else
    {
      v168 = FCDefaultLog;
      if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        *&buf[4] = v117;
        _os_log_error_impl(&dword_1B63EF000, v168, OS_LOG_TYPE_ERROR, "failed to parse Tag template JSON with error: %{public}@", buf, 0xCu);
      }
    }
  }

  v206 = objc_alloc_init(FCHeadlineTemplate);
  [(FCHeadlineTemplate *)v206 setHeadlineTitleTextInfo:v17->_headlineTitleTextInfo];
  [(FCHeadlineTemplate *)v206 setHeadlineExcerptTextInfo:v17->_headlineExcerptTextInfo];
  [(FCHeadlineTemplate *)v206 setHeadlineBylineTextInfo:v17->_headlineBylineTextInfo];
  v207 = +[FCColor whiteColor];
  [(FCHeadlineTemplate *)v206 setBackgroundColor:v207];

  objc_storeStrong(&v17->_defaultHeadlineTemplate, v206);
  nameImageMetadata = [recordCopy nameImageMetadata];

  if (nameImageMetadata)
  {
    nameImageMetadata2 = [recordCopy nameImageMetadata];
    v210 = [nameImageMetadata2 length];

    if (v210 <= 0x23 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v402 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"name image metadata has unexpected size"];
      *buf = 136315906;
      *&buf[4] = "[FCTag initWithTagRecord:assetManager:interestToken:specialTagFeedType:]";
      *&buf[12] = 2080;
      *&buf[14] = "FCTag.m";
      *&buf[22] = 1024;
      LODWORD(v432) = 579;
      WORD2(v432) = 2114;
      *(&v432 + 6) = v402;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }

    nameImageMetadata3 = [recordCopy nameImageMetadata];
    v212 = [nameImageMetadata3 length];

    if (v212 >= 0x24)
    {
      nameImageMetadata4 = [recordCopy nameImageMetadata];
      bytes = [nameImageMetadata4 bytes];

      LOWORD(v215) = *bytes;
      v216 = v215;
      LOWORD(v217) = bytes[1];
      v218 = v217;
      v17->_nameImageSize.width = v216;
      v17->_nameImageSize.height = v218;
      LOWORD(v216) = bytes[2];
      v219 = *&v216;
      LOWORD(v218) = bytes[5];
      v220 = *&v218;
      LOWORD(v221) = bytes[4];
      v222 = v221;
      LOWORD(v223) = bytes[3];
      v224 = v223;
      v17->_nameImageInsets.top = v219;
      v17->_nameImageInsets.left = v220;
      v17->_nameImageInsets.bottom = v222;
      v17->_nameImageInsets.right = v224;
      LOWORD(v219) = bytes[6];
      LOWORD(v220) = bytes[7];
      LOWORD(v222) = bytes[8];
      LOWORD(v224) = bytes[11];
      LOWORD(v225) = bytes[10];
      LOWORD(v226) = bytes[9];
      v17->_nameImageForDarkBackgroundSize.width = *&v219;
      v17->_nameImageForDarkBackgroundSize.height = *&v220;
      v227 = *&v222;
      v228 = *&v224;
      *&v229 = v225;
      *&v230 = v226;
      v17->_nameImageForDarkBackgroundInsets.top = v227;
      v17->_nameImageForDarkBackgroundInsets.left = v228;
      v17->_nameImageForDarkBackgroundInsets.bottom = v225;
      v17->_nameImageForDarkBackgroundInsets.right = v226;
      LOWORD(v227) = bytes[12];
      v231 = *&v227;
      LOWORD(v228) = bytes[13];
      v232 = *&v228;
      v17->_nameImageMaskSize.width = v231;
      v17->_nameImageMaskSize.height = v232;
      LOWORD(v231) = bytes[14];
      LOWORD(v232) = bytes[17];
      LOWORD(v229) = bytes[16];
      LOWORD(v230) = bytes[15];
      v17->_nameImageMaskInsets.top = *&v231;
      v17->_nameImageMaskInsets.left = *&v232;
      v17->_nameImageMaskInsets.bottom = v229;
      v17->_nameImageMaskInsets.right = v230;
    }
  }

  publisherPaidAuthorizationURL = [recordCopy publisherPaidAuthorizationURL];
  publisherPaidAuthorizationURL = v17->_publisherPaidAuthorizationURL;
  v17->_publisherPaidAuthorizationURL = publisherPaidAuthorizationURL;

  publisherPaidVerificationURL = [recordCopy publisherPaidVerificationURL];
  publisherPaidVerificationURL = v17->_publisherPaidVerificationURL;
  v17->_publisherPaidVerificationURL = publisherPaidVerificationURL;

  publisherPaidWebaccessURL = [recordCopy publisherPaidWebaccessURL];
  publisherPaidWebAccessURL = v17->_publisherPaidWebAccessURL;
  v17->_publisherPaidWebAccessURL = publisherPaidWebaccessURL;

  publisherPaidFeldsparablePurchaseIDs = [recordCopy publisherPaidFeldsparablePurchaseIDs];
  publisherPaidFeldsparablePurchaseIDs = v17->_publisherPaidFeldsparablePurchaseIDs;
  v17->_publisherPaidFeldsparablePurchaseIDs = publisherPaidFeldsparablePurchaseIDs;

  publisherPaidBundlePurchaseIDs = [recordCopy publisherPaidBundlePurchaseIDs];
  publisherPaidBundlePurchaseIDs = v17->_publisherPaidBundlePurchaseIDs;
  v17->_publisherPaidBundlePurchaseIDs = publisherPaidBundlePurchaseIDs;

  purchaseOfferableConfigurations2 = [recordCopy purchaseOfferableConfigurations];
  v244 = [FCTag purchaseOfferableConfigurationsFromProtobufList:purchaseOfferableConfigurations2];
  v245 = v17->_publisherPaidOfferableConfigurations;
  v17->_publisherPaidOfferableConfigurations = v244;

  v17->_publisherPaidLeakyPaywallOptOut = [recordCopy publisherPaidLeakyPaywallOptOut];
  v17->_publisherPaidWebAccessOptIn = [recordCopy publisherPaidWebOptIn];
  publisherPaidDescriptionStrings = [recordCopy publisherPaidDescriptionStrings];
  publisherPaidDescriptionStrings = v17->_publisherPaidDescriptionStrings;
  v17->_publisherPaidDescriptionStrings = publisherPaidDescriptionStrings;

  v248 = [recordCopy groupingAvailability] - 1;
  if (v248 < 3)
  {
    v249 = v248 + 1;
  }

  else
  {
    v249 = 0;
  }

  v17->_groupingEligibility = v249;
  v17->_isHidden = [recordCopy isHidden];
  nameImageMaskWidgetLQURL = [recordCopy nameImageMaskWidgetLQURL];
  v251 = [recordCopy generateNameImageMaskAssetHandleForURL:nameImageMaskWidgetLQURL withAssetManager:managerCopy2];
  nameImageMaskWidgetLQAssetHandle = v17->_nameImageMaskWidgetLQAssetHandle;
  v17->_nameImageMaskWidgetLQAssetHandle = v251;

  nameImageMaskWidgetHQURL = [recordCopy nameImageMaskWidgetHQURL];
  v254 = [recordCopy generateNameImageMaskAssetHandleForURL:nameImageMaskWidgetHQURL withAssetManager:managerCopy2];
  nameImageMaskWidgetHQAssetHandle = v17->_nameImageMaskWidgetHQAssetHandle;
  v17->_nameImageMaskWidgetHQAssetHandle = v254;

  nameImageLargeURL = [recordCopy nameImageLargeURL];
  v257 = [recordCopy generateNameImageLargeAssetHandleForURLString:nameImageLargeURL withAssetManager:managerCopy2];
  nameImageLargeAssetHandle = v17->_nameImageLargeAssetHandle;
  v17->_nameImageLargeAssetHandle = v257;

  nameImageLargeMaskURL = [recordCopy nameImageLargeMaskURL];
  v260 = [recordCopy generateNameImageLargeMaskAssetHandleForURLString:nameImageLargeMaskURL withAssetManager:managerCopy2];
  nameImageLargeMaskAssetHandle = v17->_nameImageLargeMaskAssetHandle;
  v17->_nameImageLargeMaskAssetHandle = v260;

  navigationChromeBackgroundImageURL = [recordCopy navigationChromeBackgroundImageURL];
  v263 = [recordCopy generateNavigationChromeBackgroundImageAssetHandleForURLString:navigationChromeBackgroundImageURL withAssetManager:managerCopy2];
  navigationChromeBackgroundImage = v17->_navigationChromeBackgroundImage;
  v17->_navigationChromeBackgroundImage = v263;

  darkStyleNavigationChromeBackgroundImageURL = [recordCopy darkStyleNavigationChromeBackgroundImageURL];
  v266 = [recordCopy generateNavigationChromeBackgroundImageAssetHandleForURLString:darkStyleNavigationChromeBackgroundImageURL withAssetManager:managerCopy2];
  darkStyleNavigationChromeBackgroundImage = v17->_darkStyleNavigationChromeBackgroundImage;
  v17->_darkStyleNavigationChromeBackgroundImage = v266;

  navigationChromeBackgroundImageCompactURL = [recordCopy navigationChromeBackgroundImageCompactURL];
  v269 = [recordCopy generateNavigationChromeBackgroundImageCompactAssetHandleForURLString:navigationChromeBackgroundImageCompactURL withAssetManager:managerCopy2];
  navigationChromeBackgroundImageCompact = v17->_navigationChromeBackgroundImageCompact;
  v17->_navigationChromeBackgroundImageCompact = v269;

  darkStyleNavigationChromeBackgroundImageCompactURL = [recordCopy darkStyleNavigationChromeBackgroundImageCompactURL];
  v272 = [recordCopy generateNavigationChromeBackgroundImageCompactAssetHandleForURLString:darkStyleNavigationChromeBackgroundImageCompactURL withAssetManager:managerCopy2];
  darkStyleNavigationChromeBackgroundImageCompact = v17->_darkStyleNavigationChromeBackgroundImageCompact;
  v17->_darkStyleNavigationChromeBackgroundImageCompact = v272;

  navigationChromeBackgroundImageLargeURL = [recordCopy navigationChromeBackgroundImageLargeURL];
  v275 = [recordCopy generateNavigationChromeBackgroundImageLargeAssetHandleForURLString:navigationChromeBackgroundImageLargeURL withAssetManager:managerCopy2];
  navigationChromeBackgroundImageLarge = v17->_navigationChromeBackgroundImageLarge;
  v17->_navigationChromeBackgroundImageLarge = v275;

  darkStyleNavigationChromeBackgroundImageLargeURL = [recordCopy darkStyleNavigationChromeBackgroundImageLargeURL];
  v278 = [recordCopy generateNavigationChromeBackgroundImageLargeAssetHandleForURLString:darkStyleNavigationChromeBackgroundImageLargeURL withAssetManager:managerCopy2];
  darkStyleNavigationChromeBackgroundImageLarge = v17->_darkStyleNavigationChromeBackgroundImageLarge;
  v17->_darkStyleNavigationChromeBackgroundImageLarge = v278;

  nameImageCompactURL = [recordCopy nameImageCompactURL];

  if (nameImageCompactURL)
  {
    nameImageCompactURL2 = [recordCopy nameImageCompactURL];
    v282 = [recordCopy generateNameImageMaskAssetHandleForURL:nameImageCompactURL2 withAssetManager:managerCopy2];
    v283 = v17->_nameImageCompactAssetHandle;
    v17->_nameImageCompactAssetHandle = v282;
  }

  objc_storeStrong(&v17->_tagRecord, record);
  objc_storeStrong(&v17->_assetManager, managerCopy);
  objc_storeStrong(&v17->_tagInterestToken, tokenCopy2);
  v284 = [[FCTagBanner alloc] initWithAssetHandle:v17->_nameImageAssetHandle size:v17->_nameImageSize.width insets:v17->_nameImageSize.height, v17->_nameImageInsets.top, v17->_nameImageInsets.left, v17->_nameImageInsets.bottom, v17->_nameImageInsets.right];
  bannerImageForWhiteBackground = v17->_bannerImageForWhiteBackground;
  v17->_bannerImageForWhiteBackground = v284;

  v286 = [[FCTagBanner alloc] initWithAssetHandle:v17->_nameImageForDarkBackgroundAssetHandle size:v17->_nameImageForDarkBackgroundSize.width insets:v17->_nameImageForDarkBackgroundSize.height, v17->_nameImageForDarkBackgroundInsets.top, v17->_nameImageForDarkBackgroundInsets.left, v17->_nameImageForDarkBackgroundInsets.bottom, v17->_nameImageForDarkBackgroundInsets.right];
  bannerImageForThemeBackground = v17->_bannerImageForThemeBackground;
  v17->_bannerImageForThemeBackground = v286;

  v288 = [[FCTagBanner alloc] initWithAssetHandle:v17->_nameImageMaskAssetHandle size:v17->_nameImageMaskSize.width insets:v17->_nameImageMaskSize.height, v17->_nameImageMaskInsets.top, v17->_nameImageMaskInsets.left, v17->_nameImageMaskInsets.bottom, v17->_nameImageMaskInsets.right];
  bannerImageForMask = v17->_bannerImageForMask;
  v17->_bannerImageForMask = v288;

  v290 = [FCTagBanner alloc];
  v291 = [(FCTagBanner *)v290 initWithAssetHandle:v17->_nameImageCompactAssetHandle size:*MEMORY[0x1E695F060] insets:*(MEMORY[0x1E695F060] + 8), 0.0, 0.0, 0.0, 0.0];
  compactBannerImage = v17->_compactBannerImage;
  v17->_compactBannerImage = v291;

  v17->_isRealTimeTrackingEnabled = [recordCopy behaviorFlags] & 1;
  v17->_isArticleReadCountReportingEnabled = ([recordCopy behaviorFlags] & 8) != 0;
  v17->_isAutoDarkModeEnabled = ([recordCopy behaviorFlags] & 0x10) == 0;
  v17->_disableFollow = ([recordCopy behaviorFlags] & 2) != 0;
  v17->_disableBlock = ([recordCopy behaviorFlags] & 4) != 0;
  v17->_useCompactNameForPersonalizedPaywall = ([recordCopy behaviorFlags] & 0x20) != 0;
  v17->_sponsoredFeedEligible = ([recordCopy behaviorFlags] & 0x40) != 0;
  v17->_allowsRecipes = ([recordCopy behaviorFlags] & 0x80) != 0;
  v17->_isInternal = [recordCopy propertyFlags] & 1;
  v17->_isSandbox = ([recordCopy propertyFlags] & 2) != 0;
  v17->_isLocal = ([recordCopy propertyFlags] & 4) != 0;
  v17->_isSensitiveTopic = ([recordCopy propertyFlags] & 8) != 0;
  v17->_isNewspaper = ([recordCopy propertyFlags] & 0x10) != 0;
  v17->_isMagazine = ([recordCopy propertyFlags] & 0x20) != 0;
  v17->_isSports = ([recordCopy propertyFlags] & 0x40) != 0;
  v17->_isMySports = ([recordCopy propertyFlags] & 0x80) != 0;
  v17->_isPuzzleHub = ([recordCopy propertyFlags] >> 8) & 1;
  v17->_isFoodTopic = ([recordCopy propertyFlags] & 0x200) != 0;
  v17->_isFoodSection = ([recordCopy propertyFlags] & 0x400) != 0;
  v17->_hasEvergreenArticleList = [recordCopy propertyFlagsLocalized] & 1;
  v17->_hasRecipeList = ([recordCopy propertyFlagsLocalized] & 2) != 0;
  identifier2 = [(FCTag *)v17 identifier];
  v17->_isPuzzleType = [FCPuzzleType isPuzzleTypeIdentifier:identifier2];

  v17->_specialTagFeedType = type;
  v17->_isFoodHub = type == 1;
  v17->_isRecipeCatalog = type == 2;
  v294 = v17->_isFoodTopic || v17->_allowsRecipes;
  v17->_hasRecipes = v294 & 1;
  v17->_isSportsRecommendable = [recordCopy isSportsRecommendable];
  v295 = [recordCopy generateSportsLogoImageAssetHandleWithAssetManager:managerCopy2];
  sportsLogoImageAssetHandle = v17->_sportsLogoImageAssetHandle;
  v17->_sportsLogoImageAssetHandle = v295;

  v297 = [recordCopy generateSportsLogoImageCompactAssetHandleWithAssetManager:managerCopy2];
  sportsLogoImageCompactAssetHandle = v17->_sportsLogoImageCompactAssetHandle;
  v17->_sportsLogoImageCompactAssetHandle = v297;

  v299 = [recordCopy generateSportsLogoImageLargeAssetHandleWithAssetManager:managerCopy2];
  sportsLogoImageLargeAssetHandle = v17->_sportsLogoImageLargeAssetHandle;
  v17->_sportsLogoImageLargeAssetHandle = v299;

  v301 = [recordCopy generateSportsLogoAltImageAssetHandleWithAssetManager:managerCopy2];
  sportsLogoAltImageAssetHandle = v17->_sportsLogoAltImageAssetHandle;
  v17->_sportsLogoAltImageAssetHandle = v301;

  v303 = [recordCopy generateSportsLogoAltImageCompactAssetHandleWithAssetManager:managerCopy2];
  sportsLogoAltImageCompactAssetHandle = v17->_sportsLogoAltImageCompactAssetHandle;
  v17->_sportsLogoAltImageCompactAssetHandle = v303;

  v305 = [recordCopy generateSportsLogoAltImageLargeAssetHandleWithAssetManager:managerCopy2];
  sportsLogoAltImageLargeAssetHandle = v17->_sportsLogoAltImageLargeAssetHandle;
  v17->_sportsLogoAltImageLargeAssetHandle = v305;

  sportsData = [recordCopy sportsData];
  v308 = [sportsData length];

  if (v308)
  {
    sportsData2 = [recordCopy sportsData];
    sportsData = v17->_sportsData;
    v17->_sportsData = sportsData2;

    v311 = MEMORY[0x1E695DF20];
    sportsData3 = [recordCopy sportsData];
    v313 = [v311 fc_dictionaryFromJSON:sportsData3];

    v314 = v313;
    v315 = [[FCSportsData alloc] initWithDictionary:v314];

    uMCCanonicalID = [(FCSportsData *)v315 UMCCanonicalID];
    UMCCanonicalID = v17->_UMCCanonicalID;
    v17->_UMCCanonicalID = uMCCanonicalID;

    sportsPrimaryName = [(FCSportsData *)v315 sportsPrimaryName];
    sportsPrimaryName = v17->_sportsPrimaryName;
    v17->_sportsPrimaryName = sportsPrimaryName;

    sportsNameAbbreviation = [(FCSportsData *)v315 sportsNameAbbreviation];
    sportsNameAbbreviation = v17->_sportsNameAbbreviation;
    v17->_sportsNameAbbreviation = sportsNameAbbreviation;

    sportsSecondaryName = [(FCSportsData *)v315 sportsSecondaryName];
    sportsSecondaryName = v17->_sportsSecondaryName;
    v17->_sportsSecondaryName = sportsSecondaryName;

    sportsSecondaryShortName = [(FCSportsData *)v315 sportsSecondaryShortName];
    sportsSecondaryShortName = v17->_sportsSecondaryShortName;
    v17->_sportsSecondaryShortName = sportsSecondaryShortName;

    sportsFullName = [(FCSportsData *)v315 sportsFullName];
    sportsFullName = v17->_sportsFullName;
    v17->_sportsFullName = sportsFullName;

    topLevelSportTagIdentifier = [(FCSportsData *)v315 topLevelSportTagIdentifier];
    topLevelSportTagIdentifier = v17->_topLevelSportTagIdentifier;
    v17->_topLevelSportTagIdentifier = topLevelSportTagIdentifier;

    topLevelGroupsTagIdentifiers = [(FCSportsData *)v315 topLevelGroupsTagIdentifiers];
    topLevelGroupsTagIdentifiers = v17->_topLevelGroupsTagIdentifiers;
    v17->_topLevelGroupsTagIdentifiers = topLevelGroupsTagIdentifiers;

    sportsNickname = [(FCSportsData *)v315 sportsNickname];
    sportsNickname = v17->_sportsNickname;
    v17->_sportsNickname = sportsNickname;

    sportsLocation = [(FCSportsData *)v315 sportsLocation];
    sportsLocation = v17->_sportsLocation;
    v17->_sportsLocation = sportsLocation;

    v17->_hideLocationInMasthead = [(FCSportsData *)v315 hideLocationInMasthead];
    v17->_sportsType = [(FCSportsData *)v315 sportsType];
    sportsTypeDisplayName = [(FCSportsData *)v315 sportsTypeDisplayName];
    sportsTypeDisplayName = v17->_sportsTypeDisplayName;
    v17->_sportsTypeDisplayName = sportsTypeDisplayName;

    sportsTypePluralizedDisplayName = [(FCSportsData *)v315 sportsTypePluralizedDisplayName];
    sportsTypePluralizedDisplayName = v17->_sportsTypePluralizedDisplayName;
    v17->_sportsTypePluralizedDisplayName = sportsTypePluralizedDisplayName;

    v17->_sportsLeagueType = [(FCSportsData *)v315 sportsLeagueType];
  }

  sportsTheme = [recordCopy sportsTheme];
  v341 = [sportsTheme length];

  if (v341)
  {
    v342 = MEMORY[0x1E695DF20];
    sportsTheme2 = [recordCopy sportsTheme];
    v344 = [v342 fc_dictionaryFromJSON:sportsTheme2];

    v345 = v344;
    v346 = [v345 objectForKeyedSubscript:@"primaryColor"];
    v347 = [FCColor nullableColorWithHexString:v346];
    sportsPrimaryColor = v17->_sportsPrimaryColor;
    v17->_sportsPrimaryColor = v347;

    v349 = [v345 objectForKeyedSubscript:@"secondaryColor"];
    v350 = [FCColor nullableColorWithHexString:v349];
    sportsSecondaryColor = v17->_sportsSecondaryColor;
    v17->_sportsSecondaryColor = v350;

    v352 = [v345 objectForKeyedSubscript:@"sportsEventNavigationForegroundColor"];
    v353 = [FCColor nullableColorWithHexString:v352];
    sportsEventNavigationForegroundColor = v17->_sportsEventNavigationForegroundColor;
    v17->_sportsEventNavigationForegroundColor = v353;

    v355 = [v345 objectForKeyedSubscript:@"sportsLogoMastheadHorizontalPaddingOffset"];
    v17->_sportsLogoMastheadHorizontalPaddingOffset = [v355 integerValue];
    v356 = [v345 objectForKeyedSubscript:@"sportsLogoMastheadLeadingOffset"];
    v17->_sportsLogoMastheadLeadingOffset = [v356 integerValue];
    v357 = [v345 objectForKeyedSubscript:@"sportsLogoMastheadVisibility"];

    v17->_sportsLogoMastheadVisibility = FCMastheadLogoVisibilityFromString(v357);
  }

  publisherSpecifiedArticleIDs = [recordCopy publisherSpecifiedArticleIDs];
  publisherSpecifiedArticleIDs = v17->_publisherSpecifiedArticleIDs;
  v17->_publisherSpecifiedArticleIDs = publisherSpecifiedArticleIDs;

  v360 = MEMORY[0x1E695DF00];
  publisherSpecifiedArticleIDsModifiedDate = [recordCopy publisherSpecifiedArticleIDsModifiedDate];
  v362 = [v360 dateWithPBDate:publisherSpecifiedArticleIDsModifiedDate];
  publisherSpecifiedArticleIDsModifiedDate = v17->_publisherSpecifiedArticleIDsModifiedDate;
  v17->_publisherSpecifiedArticleIDsModifiedDate = v362;

  if ([recordCopy hasPublisherSpecifiedArticlesJson])
  {
    v364 = MEMORY[0x1E695DF20];
    v421 = recordCopy;
    publisherSpecifiedArticlesJson = [recordCopy publisherSpecifiedArticlesJson];
    v366 = [v364 fc_dictionaryFromJSON:publisherSpecifiedArticlesJson];

    obja = v366;
    v367 = [v366 objectForKeyedSubscript:@"articles"];
    v368 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v427 = 0u;
    v428 = 0u;
    v429 = 0u;
    v430 = 0u;
    v369 = v367;
    v370 = [v369 countByEnumeratingWithState:&v427 objects:buf count:16];
    if (v370)
    {
      v371 = v370;
      v372 = *v428;
      do
      {
        for (i = 0; i != v371; ++i)
        {
          if (*v428 != v372)
          {
            objc_enumerationMutation(v369);
          }

          v374 = [[FCPublisherSpecifiedArticle alloc] initWithDictionary:*(*(&v427 + 1) + 8 * i)];
          articleID = [(FCPublisherSpecifiedArticle *)v374 articleID];
          v376 = [articleID length];

          if (v376)
          {
            articleID2 = [(FCPublisherSpecifiedArticle *)v374 articleID];
            [v368 setObject:v374 forKeyedSubscript:articleID2];
          }
        }

        v371 = [v369 countByEnumeratingWithState:&v427 objects:buf count:16];
      }

      while (v371);
    }

    if ([v368 count])
    {
      v378 = v368;
    }

    else
    {
      v378 = 0;
    }

    objc_storeStrong(&v17->_publisherSpecifiedArticles, v378);

    recordCopy = v421;
    managerCopy2 = v417;
  }

  paidBundlePaywallConfigurationJson = [recordCopy paidBundlePaywallConfigurationJson];
  v380 = [paidBundlePaywallConfigurationJson length];

  if (v380)
  {
    v381 = MEMORY[0x1E695DF20];
    paidBundlePaywallConfigurationJson2 = [recordCopy paidBundlePaywallConfigurationJson];
    v383 = [v381 fc_dictionaryFromJSON:paidBundlePaywallConfigurationJson2];

    paidBundlePaywallConfiguration = [v383 allKeys];
    if ([paidBundlePaywallConfiguration count])
    {
      allKeys = [v383 allKeys];
      v386 = [allKeys containsObject:@"subscriptionButton"];

      if (!v386)
      {
LABEL_75:

        goto LABEL_76;
      }

      v387 = [[FCPaywallConfiguration alloc] initWithConfigDictionary:v383];
      paidBundlePaywallConfiguration = v17->_paidBundlePaywallConfiguration;
      v17->_paidBundlePaywallConfiguration = v387;
    }

    goto LABEL_75;
  }

LABEL_76:
  sportsRecommendationMappingsJSON = [(FCTag *)v17 sportsRecommendationMappingsJSON];
  v389 = [sportsRecommendationMappingsJSON length];

  if (v389)
  {
    sportsRecommendationMappingsJSON2 = [(FCTag *)v17 sportsRecommendationMappingsJSON];
    if (sportsRecommendationMappingsJSON2)
    {
      v425 = 0;
      v391 = [MEMORY[0x1E696ACB0] JSONObjectWithData:sportsRecommendationMappingsJSON2 options:0 error:&v425];
      v392 = v425;
      if (v392)
      {
        v393 = FCDefaultLog;
        if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          *&buf[4] = v392;
          _os_log_error_impl(&dword_1B63EF000, v393, OS_LOG_TYPE_ERROR, "failed to parse sports recommendation JSON with error: %{public}@", buf, 0xCu);
        }
      }

      else
      {
        v394 = [[FCSportsRecommendationMappings alloc] initWithDictionary:v391];
        sportsRecommendationMappings = v17->_sportsRecommendationMappings;
        v17->_sportsRecommendationMappings = v394;
      }
    }
  }

  v396 = FCTagAdjustName(v17->_name, v17->_isMySports);
  name = v17->_name;
  v17->_name = v396;

  v398 = FCTagAdjustName(v17->_nameCompact, v17->_isMySports);
  v399 = v17->_nameCompact;
  v17->_nameCompact = v398;

  v17->_foodGroupingAvailability = [recordCopy foodGroupingAvailability];
  objc_autoreleasePoolPop(context);
LABEL_85:

  v400 = *MEMORY[0x1E69E9840];
  return v17;
}

- (id)purchaseOfferableConfigurationsFromProtobufList:(void *)list
{
  v20 = *MEMORY[0x1E69E9840];
  listCopy = list;
  array = [MEMORY[0x1E695DF70] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = listCopy;
  v3 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v16;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v15 + 1) + 8 * i);
        v8 = [FCPurchaseOfferableConfiguration alloc];
        purchaseId = [v7 purchaseId];
        v10 = -[FCPurchaseOfferableConfiguration initWithPurchaseID:allowsPublisherPhoneApp:allowsPublisherPadApp:allowsPublisherWebsite:preferredOffer:](v8, "initWithPurchaseID:allowsPublisherPhoneApp:allowsPublisherPadApp:allowsPublisherWebsite:preferredOffer:", purchaseId, [v7 allowsPublisherPhoneApp], objc_msgSend(v7, "allowsPublisherPadApp"), objc_msgSend(v7, "allowsPublisherWebSite"), objc_msgSend(v7, "preferredOffer"));

        [array addObject:v10];
      }

      v4 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v4);
  }

  v11 = [array copy];
  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (unint64_t)userFacingTagType
{
  result = self->_userFacingTagTypeOverride;
  if (!result)
  {
    result = [(FCTag *)self tagType:v2];
    if (result != 2)
    {
      return result == 1;
    }
  }

  return result;
}

- (NSArray)loadableFonts
{
  array = [MEMORY[0x1E695DF70] array];
  headlineTitleTextInfo = [(FCTag *)self headlineTitleTextInfo];
  font = [headlineTitleTextInfo font];

  if (font)
  {
    [array addObject:font];
  }

  headlineExcerptTextInfo = [(FCTag *)self headlineExcerptTextInfo];
  font2 = [headlineExcerptTextInfo font];

  if (font2)
  {
    [array addObject:font2];
  }

  headlineBylineTextInfo = [(FCTag *)self headlineBylineTextInfo];
  font3 = [headlineBylineTextInfo font];

  if (font3)
  {
    [array addObject:font3];
  }

  return array;
}

- (BOOL)isBlockedExplicitContent
{
  v3 = +[FCRestrictions sharedInstance];
  if ([v3 isExplicitContentAllowed])
  {
    v4 = 0;
  }

  else
  {
    primaryAudience = [(FCTag *)self primaryAudience];
    v4 = [primaryAudience isEqualToString:@"MATURE"];
  }

  return v4;
}

- (NSString)description
{
  v3 = [FCDescription descriptionWithObject:self];
  name = [(FCTag *)self name];
  [v3 addField:@"name" value:name];

  identifier = [(FCTag *)self identifier];
  [v3 addField:@"ID" value:identifier];

  descriptionString = [v3 descriptionString];

  return descriptionString;
}

- (NSData)data
{
  tagRecord = [(FCTag *)self tagRecord];
  data = [tagRecord data];

  return data;
}

- (NSString)groupName
{
  v3 = objc_opt_new();
  titleDisplayPrefix = [(FCTag *)self titleDisplayPrefix];

  if (titleDisplayPrefix)
  {
    titleDisplayPrefix2 = [(FCTag *)self titleDisplayPrefix];
    [v3 appendString:titleDisplayPrefix2];
  }

  if (self->_name)
  {
    [v3 appendString:?];
  }

  titleDisplaySuffix = [(FCTag *)self titleDisplaySuffix];

  if (titleDisplaySuffix)
  {
    titleDisplaySuffix2 = [(FCTag *)self titleDisplaySuffix];
    [v3 appendString:titleDisplaySuffix2];
  }

  v8 = [v3 copy];

  return v8;
}

- (NSString)displayName
{
  asSports = [(FCTag *)self asSports];
  v4 = asSports;
  if (asSports && (v5 = [asSports sportsType], v5 <= 0xB))
  {
    if (((1 << v5) & 0xFDB) != 0)
    {
      [v4 sportsFullName];
    }

    else
    {
      [v4 sportsPrimaryName];
    }
    v6 = ;
    v7 = v6;
    if (v6)
    {
      name = v6;
    }

    else
    {
      name = [(FCTag *)self name];
    }

    name2 = name;
  }

  else
  {
    name2 = [(FCTag *)self name];
  }

  return name2;
}

- (NSString)compactDisplayName
{
  asSports = [(FCTag *)self asSports];
  v4 = asSports;
  if (asSports && ([asSports sportsSecondaryShortName], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = objc_alloc(MEMORY[0x1E696AEC0]);
    v7 = FCBundle();
    v8 = [v7 localizedStringForKey:@"%@ (%@)" value:&stru_1F2DC7DC0 table:0];
    mainCompactDisplayName = [(FCTag *)self mainCompactDisplayName];
    sportsSecondaryShortName = [v4 sportsSecondaryShortName];
    mainCompactDisplayName2 = [v6 initWithFormat:v8, mainCompactDisplayName, sportsSecondaryShortName];
  }

  else
  {
    mainCompactDisplayName2 = [(FCTag *)self mainCompactDisplayName];
  }

  return mainCompactDisplayName2;
}

- (id)mainCompactDisplayName
{
  selfCopy = self;
  if (self)
  {
    nameCompact = [self nameCompact];
    if (nameCompact && (v3 = nameCompact, [selfCopy nameCompact], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "isEqualToString:", &stru_1F2DC7DC0), v4, v3, (v5 & 1) == 0))
    {
      selfCopy = [selfCopy nameCompact];
    }

    else
    {
      asSports = [selfCopy asSports];
      v7 = asSports;
      if (asSports)
      {
        sportsPrimaryName = [asSports sportsPrimaryName];
        v9 = sportsPrimaryName;
        if (sportsPrimaryName)
        {
          displayName = sportsPrimaryName;
        }

        else
        {
          displayName = [selfCopy displayName];
        }

        selfCopy = displayName;
      }

      else
      {
        selfCopy = [selfCopy displayName];
      }
    }
  }

  return selfCopy;
}

id __60__FCTag__inflateFromVersionlessJSONDictionary_URLGenerator___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = objc_opt_new();
  v9 = [v5 objectForKeyedSubscript:v6];

  if (v9)
  {
    v10 = [v5 objectForKeyedSubscript:v6];
    [v8 setObject:v10 forKeyedSubscript:@"fontName"];
  }

  v11 = [v5 objectForKeyedSubscript:v7];

  if (v11)
  {
    v12 = [v5 objectForKeyedSubscript:v7];
    [v8 setObject:v12 forKeyedSubscript:@"fontResourceID"];
  }

  v13 = [v8 copy];

  return v13;
}

FCContentColorMap *__61__FCTag__inflateFromJSONDictionary_withVersion_URLGenerator___block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [*(a1 + 32) count])
  {
    v26 = [MEMORY[0x1E695DF70] array];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    obj = *(a1 + 32);
    v3 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v30;
      v6 = @"light";
      v7 = @"dark";
      v8 = off_1E7C34000;
      do
      {
        v9 = 0;
        v27 = v4;
        do
        {
          if (*v30 != v5)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v29 + 1) + 8 * v9);
          v11 = [v10 objectForKeyedSubscript:v6];
          v12 = [v10 objectForKeyedSubscript:v7];
          v13 = [(__objc2_class *)v8[86] nullableColorWithHexString:v11];
          v14 = [(__objc2_class *)v8[86] nullableColorWithHexString:v12];
          v15 = v14;
          if (v13)
          {
            v16 = v14 == 0;
          }

          else
          {
            v16 = 1;
          }

          if (!v16)
          {
            v17 = v8;
            v18 = v7;
            v19 = v6;
            v20 = v5;
            v21 = [[FCContentColorPair alloc] initWithLightColor:v13 darkColor:v14];
            [v26 addObject:v21];

            v5 = v20;
            v6 = v19;
            v7 = v18;
            v8 = v17;
            v4 = v27;
          }

          ++v9;
        }

        while (v4 != v9);
        v4 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v4);
    }

    v22 = [[FCContentColorMap alloc] initWithColors:v26];
  }

  else
  {
    v23 = [FCContentColorMap alloc];
    v22 = [(FCContentColorMap *)v23 initWithColors:MEMORY[0x1E695E0F0]];
  }

  v24 = *MEMORY[0x1E69E9840];

  return v22;
}

- (id)initForTestingWithTagType:(unint64_t)type identifier:(id)identifier name:(id)name umcCanonicalID:(id)d
{
  v27 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  nameCopy = name;
  dCopy = d;
  if (self)
  {
    if (!identifierCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "identifier != 0"];
      *v22 = 136315906;
      *&v22[4] = "[FCTag initWithTagType:identifier:name:umcCanonicalID:]";
      *&v22[12] = 2080;
      *&v22[14] = "FCTag.m";
      v23 = 1024;
      v24 = 360;
      v25 = 2114;
      v26 = v21;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v22, 0x26u);
    }

    *v22 = self;
    *&v22[8] = FCTag;
    self = objc_msgSendSuper2(v22, sel_init);
    if (self)
    {
      if ([identifierCopy length])
      {
        self->_tagType = type;
        v13 = [identifierCopy copy];
        identifier = self->_identifier;
        self->_identifier = v13;

        v15 = [nameCopy copy];
        name = self->_name;
        self->_name = v15;

        v17 = [dCopy copy];
        UMCCanonicalID = self->_UMCCanonicalID;
        self->_UMCCanonicalID = v17;

        self->_isSports = 1;
      }

      else
      {

        self = 0;
      }
    }
  }

  v19 = *MEMORY[0x1E69E9840];
  return self;
}

- (id)initChannelForTestingWithIdentifier:(id)identifier name:(id)name defaultSection:(id)section publisherAuthorizationURL:(id)l publisherVerificationURL:(id)rL
{
  v40 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  nameCopy = name;
  sectionCopy = section;
  lCopy = l;
  rLCopy = rL;
  if (![identifierCopy length] && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v30 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "identifier.length != 0"];
    *buf = 136315906;
    v33 = "[FCTag initChannelForTestingWithIdentifier:name:defaultSection:publisherAuthorizationURL:publisherVerificationURL:]";
    v34 = 2080;
    v35 = "FCTag.m";
    v36 = 1024;
    v37 = 1093;
    v38 = 2114;
    v39 = v30;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v31.receiver = self;
  v31.super_class = FCTag;
  v17 = [(FCTag *)&v31 init];
  if (v17)
  {
    if ([identifierCopy length])
    {
      v17->_tagType = 2;
      v18 = [identifierCopy copy];
      identifier = v17->_identifier;
      v17->_identifier = v18;

      v20 = [nameCopy copy];
      name = v17->_name;
      v17->_name = v20;

      v22 = [sectionCopy copy];
      defaultSectionID = v17->_defaultSectionID;
      v17->_defaultSectionID = v22;

      v24 = [lCopy copy];
      publisherPaidAuthorizationURL = v17->_publisherPaidAuthorizationURL;
      v17->_publisherPaidAuthorizationURL = v24;

      v26 = [rLCopy copy];
      publisherPaidVerificationURL = v17->_publisherPaidVerificationURL;
      v17->_publisherPaidVerificationURL = v26;
    }

    else
    {
      publisherPaidVerificationURL = v17;
      v17 = 0;
    }
  }

  v28 = *MEMORY[0x1E69E9840];
  return v17;
}

- (id)initChannelForTestingWithIdentifier:(id)identifier name:(id)name publisherPaidBundlePurchaseIDs:(id)ds
{
  v30 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  nameCopy = name;
  dsCopy = ds;
  if (![identifierCopy length] && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "identifier.length != 0"];
    *buf = 136315906;
    v23 = "[FCTag initChannelForTestingWithIdentifier:name:publisherPaidBundlePurchaseIDs:]";
    v24 = 2080;
    v25 = "FCTag.m";
    v26 = 1024;
    v27 = 1119;
    v28 = 2114;
    v29 = v20;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v21.receiver = self;
  v21.super_class = FCTag;
  v11 = [(FCTag *)&v21 init];
  if (v11)
  {
    if ([identifierCopy length])
    {
      v11->_tagType = 2;
      v12 = [identifierCopy copy];
      identifier = v11->_identifier;
      v11->_identifier = v12;

      v14 = [nameCopy copy];
      name = v11->_name;
      v11->_name = v14;

      v16 = [dsCopy copy];
      publisherPaidBundlePurchaseIDs = v11->_publisherPaidBundlePurchaseIDs;
      v11->_publisherPaidBundlePurchaseIDs = v16;
    }

    else
    {
      publisherPaidBundlePurchaseIDs = v11;
      v11 = 0;
    }
  }

  v18 = *MEMORY[0x1E69E9840];
  return v11;
}

- (id)initChannelFromNotificationWithIdentifier:(id)identifier name:(id)name nameImageAssetHandle:(id)handle nameImageMaskAssetHandle:(id)assetHandle
{
  v38 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  nameCopy = name;
  handleCopy = handle;
  assetHandleCopy = assetHandle;
  if (![identifierCopy length] && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v28 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "identifier.length != 0"];
    *buf = 136315906;
    v31 = "[FCTag initChannelFromNotificationWithIdentifier:name:nameImageAssetHandle:nameImageMaskAssetHandle:]";
    v32 = 2080;
    v33 = "FCTag.m";
    v34 = 1024;
    v35 = 1144;
    v36 = 2114;
    v37 = v28;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v29.receiver = self;
  v29.super_class = FCTag;
  v14 = [(FCTag *)&v29 init];
  if (v14)
  {
    if ([identifierCopy length])
    {
      v14->_tagType = 2;
      v15 = [identifierCopy copy];
      identifier = v14->_identifier;
      v14->_identifier = v15;

      v17 = [nameCopy copy];
      name = v14->_name;
      v14->_name = v17;

      objc_storeStrong(&v14->_nameImageAssetHandle, handle);
      v19 = [FCTagBanner alloc];
      v20 = *MEMORY[0x1E695F060];
      v21 = *(MEMORY[0x1E695F060] + 8);
      v22 = [(FCTagBanner *)v19 initWithAssetHandle:handleCopy size:*MEMORY[0x1E695F060] insets:v21, 0.0, 0.0, 0.0, 0.0];
      bannerImageForWhiteBackground = v14->_bannerImageForWhiteBackground;
      v14->_bannerImageForWhiteBackground = v22;

      v24 = [[FCTagBanner alloc] initWithAssetHandle:assetHandleCopy size:v20 insets:v21, 0.0, 0.0, 0.0, 0.0];
      bannerImageForMask = v14->_bannerImageForMask;
      v14->_bannerImageForMask = v24;
    }

    else
    {
      bannerImageForMask = v14;
      v14 = 0;
    }
  }

  v26 = *MEMORY[0x1E69E9840];
  return v14;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (equalCopy)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    identifier = [(FCTag *)self identifier];
    identifier2 = [v6 identifier];
    v9 = [identifier isEqualToString:identifier2];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  identifier = [(FCTag *)self identifier];
  v3 = [identifier hash];

  return v3;
}

- (FCContentArchive)contentArchive
{
  tagRecord = [(FCTag *)self tagRecord];
  v3 = [FCContentArchive archiveWithRecord:tagRecord];

  return v3;
}

- (FCContentManifest)contentManifest
{
  tagRecord = [(FCTag *)self tagRecord];
  base = [tagRecord base];
  contentManifest = [base contentManifest];

  return contentManifest;
}

- (FCChannelProviding)asChannel
{
  if ([(FCTag *)self tagType]== 2)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (FCSectionProviding)asSection
{
  selfCopy = self;
  if ([(FCTag *)self tagType]!= 3 && [(FCTag *)selfCopy tagType]!= 5 && [(FCTag *)selfCopy tagType]!= 4)
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (FCTopicProviding)asTopic
{
  if ([(FCTag *)self tagType]== 1)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (FCSportsProviding)asSports
{
  if ([(FCTag *)self isSports])
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (FCSportsEventProviding)asSportsEvent
{
  if ([(FCTag *)self isSportsEvent])
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (FCPuzzleTypeProviding)asPuzzleType
{
  if ([(FCTag *)self isPuzzleType])
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)isSubscribable
{
  if (![(FCTag *)self isDeprecated])
  {
    if ([(FCTag *)self tagType]== 1)
    {
      return 1;
    }

    if ([(FCTag *)self tagType]== 2)
    {
      defaultSectionID = [(FCTag *)self defaultSectionID];
      v3 = defaultSectionID != 0;

      return v3;
    }
  }

  return 0;
}

- (NSString)personalizedPaywallName
{
  if ([(FCTag *)self useCompactNameForPersonalizedPaywall])
  {
    nameCompact = [(FCTag *)self nameCompact];
    v4 = nameCompact;
    if (nameCompact)
    {
      name = nameCompact;
    }

    else
    {
      name = [(FCTag *)self name];
    }

    name2 = name;
  }

  else
  {
    name2 = [(FCTag *)self name];
  }

  return name2;
}

- (BOOL)isEqualToTag:(id)tag
{
  tagCopy = tag;
  v5 = objc_opt_class();
  v6 = FCCheckedDynamicCast(v5, tagCopy);

  versionKey = [(FCTag *)self versionKey];
  versionKey2 = [v6 versionKey];
  v9 = [versionKey isEqualToString:versionKey2];

  return v9;
}

- (id)freeFeedIDForBin:(int64_t)bin
{
  pptFeedIDOverride = [(FCTag *)self pptFeedIDOverride];

  if (pptFeedIDOverride)
  {
    pptFeedIDOverride2 = [(FCTag *)self pptFeedIDOverride];
  }

  else
  {
    if (self)
    {
      feedConfiguration = self->_feedConfiguration;
    }

    else
    {
      feedConfiguration = 0;
    }

    v8 = [(NTPBFeedConfiguration *)feedConfiguration feedIDForBin:bin paid:0];
    v9 = v8;
    if (v8)
    {
      identifier = v8;
    }

    else
    {
      identifier = [(FCTag *)self identifier];
    }

    pptFeedIDOverride2 = identifier;
  }

  return pptFeedIDOverride2;
}

- (id)paidFeedIDForBin:(int64_t)bin
{
  pptFeedIDOverride = [(FCTag *)self pptFeedIDOverride];

  if (pptFeedIDOverride)
  {
    pptFeedIDOverride2 = [(FCTag *)self pptFeedIDOverride];
  }

  else
  {
    if (self)
    {
      feedConfiguration = self->_feedConfiguration;
    }

    else
    {
      feedConfiguration = 0;
    }

    v8 = [(NTPBFeedConfiguration *)feedConfiguration feedIDForBin:bin paid:1];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = [(FCTag *)self freeFeedIDForBin:bin];
    }

    pptFeedIDOverride2 = v10;
  }

  return pptFeedIDOverride2;
}

- (id)_feedConfigurationForSection:(id *)section
{
  v3 = a2;
  if (section)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__49;
    v18 = __Block_byref_object_dispose__49;
    v19 = 0;
    sectionIDs = [section sectionIDs];
    v5 = [sectionIDs count];
    v6 = section[135];
    v7 = [v6 count];

    if (v5 == v7)
    {
      sectionIDs2 = [section sectionIDs];
      v9 = section[135];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __38__FCTag__feedConfigurationForSection___block_invoke;
      v11[3] = &unk_1E7C41F80;
      v12 = v3;
      v13 = &v14;
      [sectionIDs2 fc_enumerateSideBySideWithArray:v9 reverse:0 block:v11];
    }

    section = v15[5];
    _Block_object_dispose(&v14, 8);
  }

  return section;
}

void __38__FCTag__feedConfigurationForSection___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v8 = a3;
  if ([a2 isEqualToString:*(a1 + 32)])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    *a4 = 1;
  }
}

- (id)setTitleDisplayPrefixOverride:(id)override
{
  overrideCopy = override;
  v5 = [FCTag alloc];
  tagRecord = [(FCTag *)self tagRecord];
  if (self)
  {
    v7 = self->_assetManager;
    v8 = self->_tagInterestToken;
    specialTagFeedType = self->_specialTagFeedType;
  }

  else
  {
    v8 = 0;
    v7 = 0;
    specialTagFeedType = 0;
  }

  v10 = [(FCTag *)v5 initWithTagRecord:tagRecord assetManager:v7 interestToken:v8 specialTagFeedType:specialTagFeedType];

  [(FCTag *)v10 setTitleDisplayPrefix:overrideCopy];

  return v10;
}

- (id)setTitleDisplaySuffixOverride:(id)override
{
  overrideCopy = override;
  v5 = [FCTag alloc];
  tagRecord = [(FCTag *)self tagRecord];
  if (self)
  {
    v7 = self->_assetManager;
    v8 = self->_tagInterestToken;
    specialTagFeedType = self->_specialTagFeedType;
  }

  else
  {
    v8 = 0;
    v7 = 0;
    specialTagFeedType = 0;
  }

  v10 = [(FCTag *)v5 initWithTagRecord:tagRecord assetManager:v7 interestToken:v8 specialTagFeedType:specialTagFeedType];

  [(FCTag *)v10 setTitleDisplaySuffix:overrideCopy];

  return v10;
}

- (id)freeFeedIDForSection:(id)section bin:(int64_t)bin
{
  sectionCopy = section;
  v7 = [(FCTag *)&self->super.isa _feedConfigurationForSection:sectionCopy];
  v8 = [v7 feedIDForBin:bin paid:0];

  if (!v8)
  {
    defaultSectionID = [(FCTag *)self defaultSectionID];
    v10 = [sectionCopy isEqualToString:defaultSectionID];

    if (v10)
    {
      v8 = [(FCTag *)self freeFeedIDForBin:bin];
    }

    else
    {
      v8 = 0;
    }
  }

  if (v8)
  {
    v11 = v8;
  }

  else
  {
    v11 = sectionCopy;
  }

  v12 = v11;

  return v11;
}

- (id)paidFeedIDForSection:(id)section bin:(int64_t)bin
{
  sectionCopy = section;
  v7 = [(FCTag *)&self->super.isa _feedConfigurationForSection:sectionCopy];
  v8 = [v7 feedIDForBin:bin paid:1];

  if (!v8)
  {
    defaultSectionID = [(FCTag *)self defaultSectionID];
    v10 = [sectionCopy isEqualToString:defaultSectionID];

    if (!v10 || ([(FCTag *)self paidFeedIDForBin:bin], (v11 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v11 = [(FCTag *)self freeFeedIDForSection:sectionCopy bin:bin];
    }

    v8 = v11;
  }

  return v8;
}

- (BOOL)isNoLongerAvailable
{
  if (![(FCTag *)self isDeprecated])
  {
    return 0;
  }

  replacementID = [(FCTag *)self replacementID];
  v4 = [replacementID length] == 0;

  return v4;
}

- (BOOL)isAuthenticationSetup
{
  publisherPaidAuthorizationURL = [(FCTag *)self publisherPaidAuthorizationURL];
  fc_stringByTrimmingWhiteSpace = [publisherPaidAuthorizationURL fc_stringByTrimmingWhiteSpace];

  publisherPaidVerificationURL = [(FCTag *)self publisherPaidVerificationURL];
  fc_stringByTrimmingWhiteSpace2 = [publisherPaidVerificationURL fc_stringByTrimmingWhiteSpace];

  if ([fc_stringByTrimmingWhiteSpace length] && objc_msgSend(fc_stringByTrimmingWhiteSpace2, "length"))
  {
    v7 = objc_alloc(MEMORY[0x1E696AF20]);
    v8 = [MEMORY[0x1E695DFF8] URLWithString:fc_stringByTrimmingWhiteSpace];
    v9 = [v7 initWithURL:v8 resolvingAgainstBaseURL:1];

    v10 = objc_alloc(MEMORY[0x1E696AF20]);
    v11 = [MEMORY[0x1E695DFF8] URLWithString:fc_stringByTrimmingWhiteSpace2];
    v12 = [v10 initWithURL:v11 resolvingAgainstBaseURL:1];

    scheme = [v9 scheme];
    if ([(FCTag *)self _isValidScheme:scheme])
    {
      scheme2 = [v12 scheme];
      v15 = [(FCTag *)self _isValidScheme:scheme2];
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (BOOL)_isValidScheme:(_BOOL8)scheme
{
  v3 = a2;
  v4 = v3;
  if (scheme)
  {
    v5 = [v3 length];
    scheme = v5 == [@"https" length] && objc_msgSend(v4, "rangeOfString:options:", @"https", 1) != 0x7FFFFFFFFFFFFFFFLL;
  }

  return scheme;
}

- (id)authorizationURL
{
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v5 = [bundleIdentifier isEqualToString:@"com.apple.stocks"];

  v6 = MEMORY[0x1E696AEC0];
  identifier = [(FCTag *)self identifier];
  v8 = identifier;
  v9 = @"applenews://authentication_callback";
  if (v5)
  {
    v9 = @"stocks://authentication_callback";
  }

  v10 = [v6 stringWithFormat:@"%@/%@", v9, identifier];

  publisherPaidAuthorizationURL = [(FCTag *)self publisherPaidAuthorizationURL];
  fc_stringByTrimmingWhiteSpace = [publisherPaidAuthorizationURL fc_stringByTrimmingWhiteSpace];

  if ([fc_stringByTrimmingWhiteSpace length])
  {
    v13 = objc_alloc(MEMORY[0x1E696AF20]);
    v14 = [MEMORY[0x1E695DFF8] URLWithString:fc_stringByTrimmingWhiteSpace];
    v15 = [v13 initWithURL:v14 resolvingAgainstBaseURL:1];

    scheme = [v15 scheme];
    v17 = [(FCTag *)self _isValidScheme:scheme];

    if (v17)
    {
      currentLocale = [MEMORY[0x1E695DF58] currentLocale];
      v19 = [currentLocale objectForKey:*MEMORY[0x1E695D9B0]];

      currentLocale2 = [MEMORY[0x1E695DF58] currentLocale];
      v21 = [currentLocale2 objectForKey:*MEMORY[0x1E695D978]];

      v22 = [fc_stringByTrimmingWhiteSpace rangeOfString:@"redirect_uri"];
      v23 = MEMORY[0x1E695DFF8];
      if (v22 == 0x7FFFFFFFFFFFFFFFLL)
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"%@?%@=%@&%@=%@&%@=%@", fc_stringByTrimmingWhiteSpace, @"redirect_uri", v10, @"country", v21, @"language", v19];
      }

      else
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@&%@=%@&%@=%@", fc_stringByTrimmingWhiteSpace, v10, @"country", v21, @"language", v19, v27];
      }
      v25 = ;
      v24 = [v23 URLWithString:v25];
    }

    else
    {
      v24 = 0;
    }
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (id)prefetchPurchaseOffer
{
  if ([(FCTag *)self isPurchaseSetup])
  {
    publisherPaidOfferableConfigurations = [(FCTag *)self publisherPaidOfferableConfigurations];
    if ([publisherPaidOfferableConfigurations count] == 1)
    {
      firstObject = [publisherPaidOfferableConfigurations firstObject];
    }

    else
    {
      v8 = 0;
      v9 = &v8;
      v10 = 0x3032000000;
      v11 = __Block_byref_object_copy__49;
      v12 = __Block_byref_object_dispose__49;
      v13 = 0;
      publisherPaidOfferableConfigurations2 = [(FCTag *)self publisherPaidOfferableConfigurations];
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __30__FCTag_prefetchPurchaseOffer__block_invoke;
      v7[3] = &unk_1E7C41FA8;
      v7[4] = &v8;
      [publisherPaidOfferableConfigurations2 enumerateObjectsUsingBlock:v7];
      firstObject = v9[5];

      _Block_object_dispose(&v8, 8);
    }
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

void __30__FCTag_prefetchPurchaseOffer__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ([v7 preferredOffer])
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (NSString)articleRecirculationConfigJSON
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  tagRecord = [(FCTag *)self tagRecord];
  articleRecirculationConfiguration = [tagRecord articleRecirculationConfiguration];
  fc_gzipInflate = [articleRecirculationConfiguration fc_gzipInflate];
  v7 = [v3 initWithData:fc_gzipInflate encoding:4];

  return v7;
}

- (NSString)highlightsArticleListID
{
  tagRecord = [(FCTag *)self tagRecord];
  highlightsArticleListID = [tagRecord highlightsArticleListID];

  return highlightsArticleListID;
}

FCSelectorValue *__50__FCTag__contextualNamesFromSupergroupConfigJson___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 objectForKeyedSubscript:@"selector"];
  v4 = [v2 objectForKeyedSubscript:@"value"];

  v5 = 0;
  if (v3 && v4)
  {
    v5 = [[FCSelectorValue alloc] initWithSelector:v3 value:v4];
  }

  return v5;
}

- (NSString)stocksFeedConfigJSON
{
  tagRecord = [(FCTag *)self tagRecord];
  stocksFeedConfigurationJson = [tagRecord stocksFeedConfigurationJson];

  return stocksFeedConfigurationJson;
}

- (int64_t)feedType
{
  v14 = *MEMORY[0x1E69E9840];
  tagType = [(FCTag *)self tagType];
  if (tagType >= 6)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Case not implemented"];
      v6 = 136315906;
      v7 = "[FCTag feedType]";
      v8 = 2080;
      v9 = "FCTag.m";
      v10 = 1024;
      v11 = 1542;
      v12 = 2114;
      v13 = v5;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v6, 0x26u);
    }

    result = 0;
  }

  else
  {
    result = qword_1B681A950[tagType];
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

- (FCTagBanner)bannerImageForMask
{
  nameImageMaskAssetHandle = [(FCTag *)self nameImageMaskAssetHandle];

  if (nameImageMaskAssetHandle)
  {
    bannerImageForThemeBackground = self->_bannerImageForMask;
  }

  else
  {
    nameImageForDarkBackgroundAssetHandle = [(FCTag *)self nameImageForDarkBackgroundAssetHandle];

    if (nameImageForDarkBackgroundAssetHandle)
    {
      bannerImageForThemeBackground = [(FCTag *)self bannerImageForThemeBackground];
    }

    else
    {
      nameImageAssetHandle = [(FCTag *)self nameImageAssetHandle];

      if (nameImageAssetHandle)
      {
        bannerImageForThemeBackground = [(FCTag *)self bannerImageForWhiteBackground];
      }

      else
      {
        nameImageCompactAssetHandle = [(FCTag *)self nameImageCompactAssetHandle];

        if (nameImageCompactAssetHandle)
        {
          bannerImageForThemeBackground = [(FCTag *)self compactBannerImage];
        }

        else
        {
          bannerImageForThemeBackground = 0;
        }
      }
    }
  }

  return bannerImageForThemeBackground;
}

- (BOOL)isWhite
{
  backgroundColor = [(FCTag *)self backgroundColor];
  if (backgroundColor)
  {
    backgroundColor2 = [(FCTag *)self backgroundColor];
    v5 = +[FCColor whiteColor];
    v6 = [backgroundColor2 isSimilarToColor:v5 withinPercentage:0.12];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (BOOL)isDark
{
  backgroundColor = [(FCTag *)self backgroundColor];
  [backgroundColor red];
  v5 = v4;
  backgroundColor2 = [(FCTag *)self backgroundColor];
  [backgroundColor2 green];
  v8 = v7 * 0.7152 + v5 * 0.2126;
  backgroundColor3 = [(FCTag *)self backgroundColor];
  [backgroundColor3 blue];
  v11 = v8 + v10 * 0.0722;

  backgroundColor4 = [(FCTag *)self backgroundColor];
  v14 = v11 < 0.7 || backgroundColor4 == 0;

  return v14;
}

- (FCTagBanner)defaultBannerImage
{
  if ([(FCTag *)self isWhite])
  {
    [(FCTag *)self bannerImageForWhiteBackground];
  }

  else
  {
    [(FCTag *)self bannerImageForThemeBackground];
  }
  v3 = ;

  return v3;
}

- (FCTagBanner)bannerImageForWhiteBackground
{
  nameImageAssetHandle = [(FCTag *)self nameImageAssetHandle];

  if (nameImageAssetHandle)
  {
    bannerImageForThemeBackground = self->_bannerImageForWhiteBackground;
  }

  else
  {
    nameImageForDarkBackgroundAssetHandle = [(FCTag *)self nameImageForDarkBackgroundAssetHandle];

    if (nameImageForDarkBackgroundAssetHandle)
    {
      bannerImageForThemeBackground = [(FCTag *)self bannerImageForThemeBackground];
    }

    else
    {
      nameImageMaskAssetHandle = [(FCTag *)self nameImageMaskAssetHandle];

      if (nameImageMaskAssetHandle)
      {
        bannerImageForThemeBackground = [(FCTag *)self bannerImageForMask];
      }

      else
      {
        nameImageCompactAssetHandle = [(FCTag *)self nameImageCompactAssetHandle];

        if (nameImageCompactAssetHandle)
        {
          bannerImageForThemeBackground = [(FCTag *)self compactBannerImage];
        }

        else
        {
          bannerImageForThemeBackground = 0;
        }
      }
    }
  }

  return bannerImageForThemeBackground;
}

- (FCTagBanner)bannerImageForThemeBackground
{
  nameImageForDarkBackgroundAssetHandle = [(FCTag *)self nameImageForDarkBackgroundAssetHandle];

  if (nameImageForDarkBackgroundAssetHandle)
  {
    bannerImageForWhiteBackground = self->_bannerImageForThemeBackground;
  }

  else
  {
    nameImageAssetHandle = [(FCTag *)self nameImageAssetHandle];

    if (nameImageAssetHandle)
    {
      bannerImageForWhiteBackground = [(FCTag *)self bannerImageForWhiteBackground];
    }

    else
    {
      nameImageMaskAssetHandle = [(FCTag *)self nameImageMaskAssetHandle];

      if (nameImageMaskAssetHandle)
      {
        bannerImageForWhiteBackground = [(FCTag *)self bannerImageForMask];
      }

      else
      {
        nameImageCompactAssetHandle = [(FCTag *)self nameImageCompactAssetHandle];

        if (nameImageCompactAssetHandle)
        {
          bannerImageForWhiteBackground = [(FCTag *)self compactBannerImage];
        }

        else
        {
          bannerImageForWhiteBackground = 0;
        }
      }
    }
  }

  return bannerImageForWhiteBackground;
}

- (FCTagBanner)compactBannerImage
{
  nameImageCompactAssetHandle = [(FCTag *)self nameImageCompactAssetHandle];

  if (nameImageCompactAssetHandle)
  {
    bannerImageForMask = self->_compactBannerImage;
  }

  else
  {
    nameImageMaskAssetHandle = [(FCTag *)self nameImageMaskAssetHandle];

    if (nameImageMaskAssetHandle)
    {
      bannerImageForMask = [(FCTag *)self bannerImageForMask];
    }

    else
    {
      nameImageAssetHandle = [(FCTag *)self nameImageAssetHandle];

      if (nameImageAssetHandle)
      {
        bannerImageForMask = [(FCTag *)self bannerImageForWhiteBackground];
      }

      else
      {
        nameImageForDarkBackgroundAssetHandle = [(FCTag *)self nameImageForDarkBackgroundAssetHandle];

        if (nameImageForDarkBackgroundAssetHandle)
        {
          bannerImageForMask = [(FCTag *)self bannerImageForThemeBackground];
        }

        else
        {
          bannerImageForMask = 0;
        }
      }
    }
  }

  return bannerImageForMask;
}

- (FCColor)backgroundColor
{
  if (self)
  {
    backgroundColorHexString = self->_backgroundColorHexString;
  }

  else
  {
    backgroundColorHexString = 0;
  }

  v3 = backgroundColorHexString;
  if ([(NSString *)v3 length])
  {
    v4 = [FCColor nullableColorWithHexString:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (FCColor)darkStyleBackgroundColor
{
  if (self)
  {
    darkStyleBackgroundColorHexString = self->_darkStyleBackgroundColorHexString;
  }

  else
  {
    darkStyleBackgroundColorHexString = 0;
  }

  v3 = darkStyleBackgroundColorHexString;
  if ([(NSString *)v3 length])
  {
    v4 = [FCColor nullableColorWithHexString:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (FCColor)foregroundColor
{
  if (self)
  {
    foregroundColorHexString = self->_foregroundColorHexString;
  }

  else
  {
    foregroundColorHexString = 0;
  }

  v3 = foregroundColorHexString;
  if ([(NSString *)v3 length])
  {
    v4 = [FCColor nullableColorWithHexString:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (FCColor)darkStyleForegroundColor
{
  if (self)
  {
    darkStyleForegroundColorHexString = self->_darkStyleForegroundColorHexString;
  }

  else
  {
    darkStyleForegroundColorHexString = 0;
  }

  v3 = darkStyleForegroundColorHexString;
  if ([(NSString *)v3 length])
  {
    v4 = [FCColor nullableColorWithHexString:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (FCColor)navigationChromeBackgroundColor
{
  if (self)
  {
    navigationChromeBackgroundColorHexString = self->_navigationChromeBackgroundColorHexString;
  }

  else
  {
    navigationChromeBackgroundColorHexString = 0;
  }

  return [(FCTag *)self _FCColorFromHexTriplet:?];
}

- (id)_FCColorFromHexTriplet:(void *)triplet
{
  v3 = a2;
  v4 = v3;
  if (triplet)
  {
    if ([v3 length])
    {
      triplet = [FCColor nullableColorWithHexString:v4];
    }

    else
    {
      triplet = 0;
    }
  }

  return triplet;
}

- (FCColor)darkStyleNavigationChromeBackgroundColor
{
  if (self)
  {
    darkStyleNavigationChromeBackgroundColorHexString = self->_darkStyleNavigationChromeBackgroundColorHexString;
  }

  else
  {
    darkStyleNavigationChromeBackgroundColorHexString = 0;
  }

  return [(FCTag *)self _FCColorFromHexTriplet:?];
}

- (FCColor)navigationChromeSeparatorColor
{
  if (self)
  {
    navigationChromeSeparatorColorHexString = self->_navigationChromeSeparatorColorHexString;
  }

  else
  {
    navigationChromeSeparatorColorHexString = 0;
  }

  return [(FCTag *)self _FCColorFromHexTriplet:?];
}

- (FCColor)darkStyleNavigationChromeSeparatorColor
{
  if (self)
  {
    darkStyleNavigationChromeSeparatorColorHexString = self->_darkStyleNavigationChromeSeparatorColorHexString;
  }

  else
  {
    darkStyleNavigationChromeSeparatorColorHexString = 0;
  }

  return [(FCTag *)self _FCColorFromHexTriplet:?];
}

- (FCColor)feedBackgroundColor
{
  if (self)
  {
    feedBackgroundColorHexString = self->_feedBackgroundColorHexString;
  }

  else
  {
    feedBackgroundColorHexString = 0;
  }

  return [(FCTag *)self _FCColorFromHexTriplet:?];
}

- (FCColor)darkStyleFeedBackgroundColor
{
  if (self)
  {
    darkStyleFeedBackgroundColorHexString = self->_darkStyleFeedBackgroundColorHexString;
  }

  else
  {
    darkStyleFeedBackgroundColorHexString = 0;
  }

  return [(FCTag *)self _FCColorFromHexTriplet:?];
}

- (FCColor)feedControlColor
{
  if (self)
  {
    feedControlColorHexString = self->_feedControlColorHexString;
  }

  else
  {
    feedControlColorHexString = 0;
  }

  return [(FCTag *)self _FCColorFromHexTriplet:?];
}

- (FCColor)darkStyleFeedControlColor
{
  if (self)
  {
    darkStyleFeedControlColorHexString = self->_darkStyleFeedControlColorHexString;
  }

  else
  {
    darkStyleFeedControlColorHexString = 0;
  }

  return [(FCTag *)self _FCColorFromHexTriplet:?];
}

- (FCColor)adBackgroundColor
{
  if (self)
  {
    adBackgroundColorHexString = self->_adBackgroundColorHexString;
  }

  else
  {
    adBackgroundColorHexString = 0;
  }

  return [(FCTag *)self _FCColorFromHexTriplet:?];
}

- (FCColor)darkStyleAdBackgroundColor
{
  if (self)
  {
    darkStyleAdBackgroundColorHexString = self->_darkStyleAdBackgroundColorHexString;
  }

  else
  {
    darkStyleAdBackgroundColorHexString = 0;
  }

  return [(FCTag *)self _FCColorFromHexTriplet:?];
}

- (FCColor)groupTitleColor
{
  if (self)
  {
    groupTitleColorHexString = self->_groupTitleColorHexString;
  }

  else
  {
    groupTitleColorHexString = 0;
  }

  v4 = groupTitleColorHexString;
  if ([(NSString *)v4 length])
  {
    v5 = [FCColor colorWithHexString:v4];
  }

  else if ([(FCTag *)self tagType]== 2)
  {
    theme = [(FCTag *)self theme];
    backgroundColor = [theme backgroundColor];

    theme2 = [(FCTag *)self theme];
    foregroundColor = [theme2 foregroundColor];

    if (backgroundColor)
    {
      v10 = +[FCColor whiteColor];
      v11 = [backgroundColor isSimilarToColor:v10 withinPercentage:0.2];

      v12 = backgroundColor;
      if (!v11)
      {
        goto LABEL_12;
      }
    }

    if (foregroundColor && (+[FCColor whiteColor](FCColor, "whiteColor"), v13 = objc_claimAutoreleasedReturnValue(), v14 = [foregroundColor isSimilarToColor:v13 withinPercentage:0.2], v13, v12 = foregroundColor, (v14 & 1) == 0))
    {
LABEL_12:
      v5 = v12;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (FCColor)groupDarkStyleTitleColor
{
  if (self)
  {
    groupDarkStyleTitleColorHexString = self->_groupDarkStyleTitleColorHexString;
  }

  else
  {
    groupDarkStyleTitleColorHexString = 0;
  }

  v4 = groupDarkStyleTitleColorHexString;
  if ([(NSString *)v4 length])
  {
    v5 = [FCColor colorWithHexString:v4];
  }

  else if ([(FCTag *)self tagType]== 2)
  {
    theme = [(FCTag *)self theme];
    darkStyleBackgroundColor = [theme darkStyleBackgroundColor];

    theme2 = [(FCTag *)self theme];
    darkStyleForegroundColor = [theme2 darkStyleForegroundColor];

    if (darkStyleBackgroundColor)
    {
      v10 = +[FCColor blackColor];
      v11 = [darkStyleBackgroundColor isSimilarToColor:v10 withinPercentage:0.2];

      v12 = darkStyleBackgroundColor;
      if (!v11)
      {
        goto LABEL_12;
      }
    }

    if (darkStyleForegroundColor && (+[FCColor blackColor](FCColor, "blackColor"), v13 = objc_claimAutoreleasedReturnValue(), v14 = [darkStyleForegroundColor isSimilarToColor:v13 withinPercentage:0.2], v13, v12 = darkStyleForegroundColor, (v14 & 1) == 0))
    {
LABEL_12:
      v5 = v12;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (FCContentColorMap)contentColorMap
{
  if (self)
  {
    self = self->_lazyContentColorMap;
  }

  return [(FCTag *)self value];
}

- (NSData)backingTagRecordData
{
  tagRecord = [(FCTag *)self tagRecord];
  data = [tagRecord data];

  return data;
}

- (BOOL)isWhitelisted
{
  iAdCategories = [(FCTag *)self iAdCategories];
  identifier = [(FCTag *)self identifier];
  v5 = [iAdCategories containsObject:identifier];

  return v5;
}

- (unint64_t)channelType
{
  if ([(FCTag *)self isLocal])
  {
    return 1;
  }

  if ([(FCTag *)self isMagazine])
  {
    return 2;
  }

  currentIssueIDs = [(FCTag *)self currentIssueIDs];
  v5 = [currentIssueIDs count];
  recentIssueIDs = [(FCTag *)self recentIssueIDs];
  v7 = [recentIssueIDs count];

  if (v5 + v7)
  {
    return 2;
  }

  if ([(FCTag *)self isNewspaper])
  {
    return 3;
  }

  if ([(FCTag *)self isMySports])
  {
    return 4;
  }

  if ([(FCTag *)self isPuzzleHub])
  {
    return 5;
  }

  return 0;
}

- (NSArray)sportsParentTagIdentifiers
{
  v9[1] = *MEMORY[0x1E69E9840];
  topLevelGroupsTagIdentifiers = [(FCTag *)self topLevelGroupsTagIdentifiers];

  if (topLevelGroupsTagIdentifiers)
  {
    topLevelGroupsTagIdentifiers2 = [(FCTag *)self topLevelGroupsTagIdentifiers];
  }

  else
  {
    topLevelSportTagIdentifier = [(FCTag *)self topLevelSportTagIdentifier];

    if (topLevelSportTagIdentifier)
    {
      topLevelSportTagIdentifier2 = [(FCTag *)self topLevelSportTagIdentifier];
      v9[0] = topLevelSportTagIdentifier2;
      topLevelGroupsTagIdentifiers2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
    }

    else
    {
      topLevelGroupsTagIdentifiers2 = MEMORY[0x1E695E0F0];
    }
  }

  v7 = *MEMORY[0x1E69E9840];

  return topLevelGroupsTagIdentifiers2;
}

- (CGSize)nameImageSize
{
  width = self->_nameImageSize.width;
  height = self->_nameImageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (FCEdgeInsets)nameImageInsets
{
  top = self->_nameImageInsets.top;
  left = self->_nameImageInsets.left;
  bottom = self->_nameImageInsets.bottom;
  right = self->_nameImageInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGSize)nameImageForDarkBackgroundSize
{
  width = self->_nameImageForDarkBackgroundSize.width;
  height = self->_nameImageForDarkBackgroundSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (FCEdgeInsets)nameImageForDarkBackgroundInsets
{
  top = self->_nameImageForDarkBackgroundInsets.top;
  left = self->_nameImageForDarkBackgroundInsets.left;
  bottom = self->_nameImageForDarkBackgroundInsets.bottom;
  right = self->_nameImageForDarkBackgroundInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGSize)nameImageMaskSize
{
  width = self->_nameImageMaskSize.width;
  height = self->_nameImageMaskSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (FCEdgeInsets)nameImageMaskInsets
{
  top = self->_nameImageMaskInsets.top;
  left = self->_nameImageMaskInsets.left;
  bottom = self->_nameImageMaskInsets.bottom;
  right = self->_nameImageMaskInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end