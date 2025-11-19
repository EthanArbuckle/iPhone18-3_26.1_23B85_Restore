@interface FCTag
- (BOOL)_isValidScheme:(_BOOL8)a1;
- (BOOL)isAuthenticationSetup;
- (BOOL)isBlockedExplicitContent;
- (BOOL)isDark;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToTag:(id)a3;
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
- (FCTag)initWithData:(id)a3 context:(id)a4;
- (FCTag)initWithTagMetadata:(id)a3 assetManager:(id)a4 isSports:(BOOL)a5;
- (FCTag)initWithTagRecord:(id)a3 assetManager:(id)a4 interestToken:(id)a5 specialTagFeedType:(unint64_t)a6;
- (FCTag)initWithTagType:(unint64_t)a3 identifier:(id)a4 name:(id)a5;
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
- (id)_FCColorFromHexTriplet:(void *)a1;
- (id)_feedConfigurationForSection:(id *)a1;
- (id)authorizationURL;
- (id)freeFeedIDForBin:(int64_t)a3;
- (id)freeFeedIDForSection:(id)a3 bin:(int64_t)a4;
- (id)initChannelForTestingWithIdentifier:(id)a3 name:(id)a4 defaultSection:(id)a5 publisherAuthorizationURL:(id)a6 publisherVerificationURL:(id)a7;
- (id)initChannelForTestingWithIdentifier:(id)a3 name:(id)a4 publisherPaidBundlePurchaseIDs:(id)a5;
- (id)initChannelFromNotificationWithIdentifier:(id)a3 name:(id)a4 nameImageAssetHandle:(id)a5 nameImageMaskAssetHandle:(id)a6;
- (id)initForTestingWithTagType:(unint64_t)a3 identifier:(id)a4 name:(id)a5 umcCanonicalID:(id)a6;
- (id)mainCompactDisplayName;
- (id)paidFeedIDForBin:(int64_t)a3;
- (id)paidFeedIDForSection:(id)a3 bin:(int64_t)a4;
- (id)prefetchPurchaseOffer;
- (id)purchaseOfferableConfigurationsFromProtobufList:(void *)a1;
- (id)setTitleDisplayPrefixOverride:(id)a3;
- (id)setTitleDisplaySuffixOverride:(id)a3;
- (int64_t)feedType;
- (unint64_t)channelType;
- (unint64_t)hash;
- (unint64_t)userFacingTagType;
@end

@implementation FCTag

- (NSData)sportsRecommendationMappingsJSON
{
  v2 = [(FCTag *)self tagRecord];
  v3 = [v2 sportsRecommendationMappingsJson];
  v4 = [v3 fc_gzipInflate];

  return v4;
}

- (BOOL)isPurchaseSetup
{
  v2 = [(FCTag *)self publisherPaidOfferableConfigurations];
  v3 = [v2 count] != 0;

  return v3;
}

- (FCTag)initWithTagType:(unint64_t)a3 identifier:(id)a4 name:(id)a5
{
  v27 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  if (!v8 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
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
    if ([v8 length])
    {
      v10->_tagType = a3;
      v11 = [v8 copy];
      identifier = v10->_identifier;
      v10->_identifier = v11;

      v13 = [v9 copy];
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

- (FCTag)initWithTagMetadata:(id)a3 assetManager:(id)a4 isSports:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v78.receiver = self;
  v78.super_class = FCTag;
  v10 = [(FCTag *)&v78 init];
  if (v10)
  {
    v11 = [v8 name];
    name = v10->_name;
    v10->_name = v11;

    v13 = [v8 identifier];
    identifier = v10->_identifier;
    v10->_identifier = v13;

    v10->_tagType = [v8 tagType];
    v10->_isSports = a5;
    v15 = [v8 sportsPrimaryName];
    sportsPrimaryName = v10->_sportsPrimaryName;
    v10->_sportsPrimaryName = v15;

    v17 = [v8 sportsSecondaryName];
    sportsSecondaryName = v10->_sportsSecondaryName;
    v10->_sportsSecondaryName = v17;

    v19 = [v8 sportsSecondaryShortName];
    sportsSecondaryShortName = v10->_sportsSecondaryShortName;
    v10->_sportsSecondaryShortName = v19;

    v21 = [v8 sportsFullName];
    sportsFullName = v10->_sportsFullName;
    v10->_sportsFullName = v21;

    v10->_sportsLeagueType = [v8 sportsLeagueType];
    v23 = [v8 sportsPrimaryColor];
    v24 = [FCColor nullableColorWithHexString:v23];
    sportsPrimaryColor = v10->_sportsPrimaryColor;
    v10->_sportsPrimaryColor = v24;

    v26 = [v8 isAthlete];
    v27 = 4;
    if (!v26)
    {
      v27 = 0;
    }

    v10->_sportsType = v27;
    v10->_isLocal = [v8 isLocalNews];
    v28 = [v8 groupTitleColor];
    groupTitleColorHexString = v10->_groupTitleColorHexString;
    v10->_groupTitleColorHexString = v28;

    v10->_isPublic = [v8 isPublic];
    v30 = [v8 nameImageMetadata];
    v31 = v30;
    if (v30)
    {
      v32 = [v30 dataUsingEncoding:4];
      v33 = v32;
      if (v32)
      {
        v34 = [v32 bytes];
        LOWORD(v35) = *v34;
        v36 = v35;
        LOWORD(v37) = v34[1];
        v38 = v37;
        v10->_nameImageSize.width = v36;
        v10->_nameImageSize.height = v38;
        LOWORD(v36) = v34[2];
        v39 = *&v36;
        LOWORD(v38) = v34[5];
        v40 = *&v38;
        LOWORD(v41) = v34[4];
        v42 = v41;
        LOWORD(v43) = v34[3];
        v44 = v43;
        v10->_nameImageInsets.top = v39;
        v10->_nameImageInsets.left = v40;
        v10->_nameImageInsets.bottom = v42;
        v10->_nameImageInsets.right = v44;
        LOWORD(v39) = v34[6];
        LOWORD(v40) = v34[7];
        LOWORD(v42) = v34[8];
        LOWORD(v44) = v34[11];
        LOWORD(v45) = v34[10];
        LOWORD(v46) = v34[9];
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
        LOWORD(v47) = v34[12];
        v51 = *&v47;
        LOWORD(v48) = v34[13];
        v52 = *&v48;
        v10->_nameImageMaskSize.width = v51;
        v10->_nameImageMaskSize.height = v52;
        LOWORD(v51) = v34[14];
        LOWORD(v52) = v34[17];
        LOWORD(v49) = v34[16];
        LOWORD(v50) = v34[15];
        v10->_nameImageMaskInsets.top = *&v51;
        v10->_nameImageMaskInsets.left = *&v52;
        v10->_nameImageMaskInsets.bottom = v49;
        v10->_nameImageMaskInsets.right = v50;
      }
    }

    v53 = [v8 nameImage];
    if (v53)
    {
      v54 = [v9 assetHandleForCKAssetURLString:v53 lifetimeHint:0];
      nameImageAssetHandle = v10->_nameImageAssetHandle;
      v10->_nameImageAssetHandle = v54;

      v56 = [[FCTagBanner alloc] initWithAssetHandle:v10->_nameImageAssetHandle size:v10->_nameImageSize.width insets:v10->_nameImageSize.height, v10->_nameImageInsets.top, v10->_nameImageInsets.left, v10->_nameImageInsets.bottom, v10->_nameImageInsets.right];
      bannerImageForWhiteBackground = v10->_bannerImageForWhiteBackground;
      v10->_bannerImageForWhiteBackground = v56;
    }

    v58 = [v8 coverImage];
    if (v58)
    {
      v59 = [v9 assetHandleForCKAssetURLString:v58 lifetimeHint:0];
      coverImageAssetHandle = v10->_coverImageAssetHandle;
      v10->_coverImageAssetHandle = v59;
    }

    v61 = [v8 feedNavImage];
    if (v61)
    {
      v62 = [v9 assetHandleForCKAssetURLString:v61 lifetimeHint:0];
      feedNavImageAssetHandle = v10->_feedNavImageAssetHandle;
      v10->_feedNavImageAssetHandle = v62;
    }

    v64 = [v8 nameImageForDarkBackground];
    if (v64)
    {
      v65 = [v9 assetHandleForCKAssetURLString:v64 lifetimeHint:0];
      nameImageForDarkBackgroundAssetHandle = v10->_nameImageForDarkBackgroundAssetHandle;
      v10->_nameImageForDarkBackgroundAssetHandle = v65;

      v67 = [[FCTagBanner alloc] initWithAssetHandle:v10->_nameImageForDarkBackgroundAssetHandle size:v10->_nameImageForDarkBackgroundSize.width insets:v10->_nameImageForDarkBackgroundSize.height, v10->_nameImageForDarkBackgroundInsets.top, v10->_nameImageForDarkBackgroundInsets.left, v10->_nameImageForDarkBackgroundInsets.bottom, v10->_nameImageForDarkBackgroundInsets.right];
      bannerImageForThemeBackground = v10->_bannerImageForThemeBackground;
      v10->_bannerImageForThemeBackground = v67;
    }

    v69 = [v8 nameImageMask];
    if (v69)
    {
      v70 = [v9 assetHandleForCKAssetURLString:v69 lifetimeHint:0];
      nameImageMaskAssetHandle = v10->_nameImageMaskAssetHandle;
      v10->_nameImageMaskAssetHandle = v70;

      v72 = [[FCTagBanner alloc] initWithAssetHandle:v10->_nameImageMaskAssetHandle size:v10->_nameImageMaskSize.width insets:v10->_nameImageMaskSize.height, v10->_nameImageMaskInsets.top, v10->_nameImageMaskInsets.left, v10->_nameImageMaskInsets.bottom, v10->_nameImageMaskInsets.right];
      bannerImageForMask = v10->_bannerImageForMask;
      v10->_bannerImageForMask = v72;
    }

    v74 = [v8 sportsLogoImageCompact];
    if (v74)
    {
      v75 = [v9 assetHandleForCKAssetURLString:v74 lifetimeHint:0];
      sportsLogoImageCompactAssetHandle = v10->_sportsLogoImageCompactAssetHandle;
      v10->_sportsLogoImageCompactAssetHandle = v75;
    }
  }

  return v10;
}

- (FCTag)initWithData:(id)a3 context:(id)a4
{
  v6 = MEMORY[0x1E69B7000];
  v7 = a4;
  v8 = a3;
  v9 = [[v6 alloc] initWithData:v8];

  v10 = [FCTag alloc];
  v11 = [v7 assetManager];

  v12 = [(FCTag *)v10 initWithTagRecord:v9 assetManager:v11 interestToken:0 specialTagFeedType:0];
  return v12;
}

- (FCTag)initWithTagRecord:(id)a3 assetManager:(id)a4 interestToken:(id)a5 specialTagFeedType:(unint64_t)a6
{
  v433 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v420 = a4;
  v11 = a4;
  v424 = a5;
  v12 = [v10 name];
  v13 = [v10 type] - 1;
  if (v13 < 5)
  {
    v14 = v13 + 1;
  }

  else
  {
    v14 = 0;
  }

  v15 = [v10 base];
  v16 = [v15 identifier];
  v423 = v12;
  v17 = [(FCTag *)self initWithTagType:v14 identifier:v16 name:v12];

  if (!v17)
  {
    goto LABEL_85;
  }

  v414 = a5;
  context = objc_autoreleasePoolPush();
  if (([v10 propertyFlags] & 4) != 0)
  {
    v17->_userFacingTagTypeOverride = 1;
  }

  v18 = [v10 nameCompact];
  nameCompact = v17->_nameCompact;
  v17->_nameCompact = v18;

  v20 = [v10 feedConfiguration];
  feedConfiguration = v17->_feedConfiguration;
  v17->_feedConfiguration = v20;

  v415 = [v10 purchaseOfferableConfigurations];
  v22 = [FCTag purchaseOfferableConfigurationsFromProtobufList:v415];
  publisherPaidOfferableConfigurations = v17->_publisherPaidOfferableConfigurations;
  v17->_publisherPaidOfferableConfigurations = v22;

  v24 = MEMORY[0x1E695DF00];
  v25 = [v10 base];
  v26 = [v25 fetchDate];
  v27 = [v24 dateWithPBDate:v26];
  fetchDate = v17->_fetchDate;
  v17->_fetchDate = v27;

  v29 = [MEMORY[0x1E695DF00] date];
  loadDate = v17->_loadDate;
  v17->_loadDate = v29;

  v31 = MEMORY[0x1E695DF00];
  v32 = [v10 base];
  v33 = [v32 modificationDate];
  v34 = [v31 dateWithPBDate:v33];
  lastModifiedDate = v17->_lastModifiedDate;
  v17->_lastModifiedDate = v34;

  v36 = [v10 base];
  v37 = [v36 changeTag];
  versionKey = v17->_versionKey;
  v17->_versionKey = v37;

  v17->_isDeprecated = [v10 isDeprecated];
  v39 = [v10 replacementID];
  replacementID = v17->_replacementID;
  v17->_replacementID = v39;

  v41 = [v10 highlightsArticleListID];
  highlightsArticleListID = v17->_highlightsArticleListID;
  v17->_highlightsArticleListID = v41;

  v17->_isExplicitContent = [v10 isExplicitContent];
  v43 = [v10 primaryAudience];
  primaryAudience = v17->_primaryAudience;
  v17->_primaryAudience = v43;

  v45 = [v10 iAdCategories];
  iAdCategories = v17->_iAdCategories;
  v17->_iAdCategories = v45;

  v47 = [v10 iAdKeywords];
  iAdKeywords = v17->_iAdKeywords;
  v17->_iAdKeywords = v47;

  v49 = [v10 language];
  language = v17->_language;
  v17->_language = v49;

  v51 = [v10 magazineGenre];
  magazineGenre = v17->_magazineGenre;
  v17->_magazineGenre = v51;

  v53 = [v10 superfeedConfigResourceID];
  superfeedConfigResourceID = v17->_superfeedConfigResourceID;
  v17->_superfeedConfigResourceID = v53;

  [v10 subscriptionRate];
  v17->_subscriptionRate = v55;
  v56 = [v10 adTargetingKeywords];
  adTargetingKeywords = v17->_adTargetingKeywords;
  v17->_adTargetingKeywords = v56;

  v58 = [v10 blockedStorefrontIDs];
  blockedStorefrontIDs = v17->_blockedStorefrontIDs;
  v17->_blockedStorefrontIDs = v58;

  v60 = [v10 allowedStorefrontIDs];
  allowedStorefrontIDs = v17->_allowedStorefrontIDs;
  v17->_allowedStorefrontIDs = v60;

  v17->_score = [v10 score];
  v17->_contentProvider = [v10 contentProvider];
  v17->_isPublic = [v10 isPublic];
  v17->_minimumNewsVersion = [v10 minimumNewsVersion];
  v17->_isNotificationEnabled = [v10 isNotificationEnabled];
  v62 = [v10 subtitle];
  subtitle = v17->_subtitle;
  v17->_subtitle = v62;

  v64 = [v10 latestIssueIDs];
  currentIssueIDs = v17->_currentIssueIDs;
  v17->_currentIssueIDs = v64;

  v66 = [v10 recentIssueIDs];
  recentIssueIDs = v17->_recentIssueIDs;
  v17->_recentIssueIDs = v66;

  v68 = [v10 archiveIssueListID];
  backIssuesListID = v17->_backIssuesListID;
  v17->_backIssuesListID = v68;

  [v10 nameImageScaleFactor];
  v17->_bannerImageScale = v70;
  v17->_bannerImageBaselineOffsetPercentage = [v10 nameImageBaselineShift];
  v71 = [v10 generateLogoImageAssetHandleWithAssetManager:v11];
  logoImageAssetHandle = v17->_logoImageAssetHandle;
  v17->_logoImageAssetHandle = v71;

  v73 = [v10 generateNameImageAssetHandleWithAssetManager:v11];
  nameImageAssetHandle = v17->_nameImageAssetHandle;
  v17->_nameImageAssetHandle = v73;

  v75 = [v10 generateNameImageCompactAssetHandleWithAssetManager:v11];
  nameImageCompactAssetHandle = v17->_nameImageCompactAssetHandle;
  v17->_nameImageCompactAssetHandle = v75;

  v77 = [v10 generateNameImageForDarkBackgroundAssetHandleWithAssetManager:v11];
  nameImageForDarkBackgroundAssetHandle = v17->_nameImageForDarkBackgroundAssetHandle;
  v17->_nameImageForDarkBackgroundAssetHandle = v77;

  v79 = [v10 nameImageMaskURL];
  v80 = [v10 generateNameImageMaskAssetHandleForURL:v79 withAssetManager:v11];
  nameImageMaskAssetHandle = v17->_nameImageMaskAssetHandle;
  v17->_nameImageMaskAssetHandle = v80;

  v82 = [v10 generateCoverImageAssetHandleWithAssetManager:v11];
  coverImageAssetHandle = v17->_coverImageAssetHandle;
  v17->_coverImageAssetHandle = v82;

  v84 = [v10 generateFeedNavImageAssetHandleWithAssetManager:v11];
  feedNavImageAssetHandle = v17->_feedNavImageAssetHandle;
  v17->_feedNavImageAssetHandle = v84;

  v86 = [v10 generateFeedNavImageHQAssetHandleWithAssetManager:v11];
  feedNavImageHQAssetHandle = v17->_feedNavImageHQAssetHandle;
  v17->_feedNavImageHQAssetHandle = v86;

  v88 = [v10 parentID];
  parentID = v17->_parentID;
  v17->_parentID = v88;

  v90 = [v10 channelSectionIDs];
  sectionIDs = v17->_sectionIDs;
  v17->_sectionIDs = v90;

  v92 = [v10 channelDefaultSectionID];
  defaultSectionID = v17->_defaultSectionID;
  v17->_defaultSectionID = v92;

  v94 = [v10 channelSectionFeedConfigurations];
  sectionFeedConfigurations = v17->_sectionFeedConfigurations;
  v17->_sectionFeedConfigurations = v94;

  v96 = [v10 supergroupConfigJson];
  supergroupConfigJson = v17->_supergroupConfigJson;
  v17->_supergroupConfigJson = v96;

  v98 = [(NSString *)v17->_supergroupConfigJson dataUsingEncoding:4];
  v417 = v11;
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

      v11 = v417;
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

  v108 = [v10 supergroupKnobsJson];
  supergroupKnobsJson = v17->_supergroupKnobsJson;
  v17->_supergroupKnobsJson = v108;

  v110 = [FCSectionSupergroupKnobs alloc];
  v111 = [v10 supergroupKnobsJson];
  v112 = [(FCSectionSupergroupKnobs *)v110 initWithJSONString:v111];
  supergroupKnobs = v17->_supergroupKnobs;
  v17->_supergroupKnobs = v112;

  v17->_hideAccessoryText = [v10 hideAccessoryText];
  v114 = [v10 templateJson];
  v115 = [v114 dataUsingEncoding:4];

  v422 = v115;
  if (v115)
  {
    v426 = 0;
    v116 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v115 options:0 error:&v426];
    v117 = v426;
    if (v116)
    {
      if (v11)
      {
        v118 = v11[15];
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
        v124 = [@"2" integerValue];
        v125 = v123;
        if (v124 == 2)
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

          v164 = [v125 objectForKeyedSubscript:@"adBackgroundGradient"];
          v403 = v164;
          if (v164)
          {
            v164 = [FCColorGradient colorGradientWithConfigDict:v164, v164, v404, v405, v406, v407];
          }

          adBackgroundGradient = v17->_adBackgroundGradient;
          v17->_adBackgroundGradient = v164;

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

          v11 = v417;
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
        v11 = v417;

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
  v208 = [v10 nameImageMetadata];

  if (v208)
  {
    v209 = [v10 nameImageMetadata];
    v210 = [v209 length];

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

    v211 = [v10 nameImageMetadata];
    v212 = [v211 length];

    if (v212 >= 0x24)
    {
      v213 = [v10 nameImageMetadata];
      v214 = [v213 bytes];

      LOWORD(v215) = *v214;
      v216 = v215;
      LOWORD(v217) = v214[1];
      v218 = v217;
      v17->_nameImageSize.width = v216;
      v17->_nameImageSize.height = v218;
      LOWORD(v216) = v214[2];
      v219 = *&v216;
      LOWORD(v218) = v214[5];
      v220 = *&v218;
      LOWORD(v221) = v214[4];
      v222 = v221;
      LOWORD(v223) = v214[3];
      v224 = v223;
      v17->_nameImageInsets.top = v219;
      v17->_nameImageInsets.left = v220;
      v17->_nameImageInsets.bottom = v222;
      v17->_nameImageInsets.right = v224;
      LOWORD(v219) = v214[6];
      LOWORD(v220) = v214[7];
      LOWORD(v222) = v214[8];
      LOWORD(v224) = v214[11];
      LOWORD(v225) = v214[10];
      LOWORD(v226) = v214[9];
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
      LOWORD(v227) = v214[12];
      v231 = *&v227;
      LOWORD(v228) = v214[13];
      v232 = *&v228;
      v17->_nameImageMaskSize.width = v231;
      v17->_nameImageMaskSize.height = v232;
      LOWORD(v231) = v214[14];
      LOWORD(v232) = v214[17];
      LOWORD(v229) = v214[16];
      LOWORD(v230) = v214[15];
      v17->_nameImageMaskInsets.top = *&v231;
      v17->_nameImageMaskInsets.left = *&v232;
      v17->_nameImageMaskInsets.bottom = v229;
      v17->_nameImageMaskInsets.right = v230;
    }
  }

  v233 = [v10 publisherPaidAuthorizationURL];
  publisherPaidAuthorizationURL = v17->_publisherPaidAuthorizationURL;
  v17->_publisherPaidAuthorizationURL = v233;

  v235 = [v10 publisherPaidVerificationURL];
  publisherPaidVerificationURL = v17->_publisherPaidVerificationURL;
  v17->_publisherPaidVerificationURL = v235;

  v237 = [v10 publisherPaidWebaccessURL];
  publisherPaidWebAccessURL = v17->_publisherPaidWebAccessURL;
  v17->_publisherPaidWebAccessURL = v237;

  v239 = [v10 publisherPaidFeldsparablePurchaseIDs];
  publisherPaidFeldsparablePurchaseIDs = v17->_publisherPaidFeldsparablePurchaseIDs;
  v17->_publisherPaidFeldsparablePurchaseIDs = v239;

  v241 = [v10 publisherPaidBundlePurchaseIDs];
  publisherPaidBundlePurchaseIDs = v17->_publisherPaidBundlePurchaseIDs;
  v17->_publisherPaidBundlePurchaseIDs = v241;

  v243 = [v10 purchaseOfferableConfigurations];
  v244 = [FCTag purchaseOfferableConfigurationsFromProtobufList:v243];
  v245 = v17->_publisherPaidOfferableConfigurations;
  v17->_publisherPaidOfferableConfigurations = v244;

  v17->_publisherPaidLeakyPaywallOptOut = [v10 publisherPaidLeakyPaywallOptOut];
  v17->_publisherPaidWebAccessOptIn = [v10 publisherPaidWebOptIn];
  v246 = [v10 publisherPaidDescriptionStrings];
  publisherPaidDescriptionStrings = v17->_publisherPaidDescriptionStrings;
  v17->_publisherPaidDescriptionStrings = v246;

  v248 = [v10 groupingAvailability] - 1;
  if (v248 < 3)
  {
    v249 = v248 + 1;
  }

  else
  {
    v249 = 0;
  }

  v17->_groupingEligibility = v249;
  v17->_isHidden = [v10 isHidden];
  v250 = [v10 nameImageMaskWidgetLQURL];
  v251 = [v10 generateNameImageMaskAssetHandleForURL:v250 withAssetManager:v11];
  nameImageMaskWidgetLQAssetHandle = v17->_nameImageMaskWidgetLQAssetHandle;
  v17->_nameImageMaskWidgetLQAssetHandle = v251;

  v253 = [v10 nameImageMaskWidgetHQURL];
  v254 = [v10 generateNameImageMaskAssetHandleForURL:v253 withAssetManager:v11];
  nameImageMaskWidgetHQAssetHandle = v17->_nameImageMaskWidgetHQAssetHandle;
  v17->_nameImageMaskWidgetHQAssetHandle = v254;

  v256 = [v10 nameImageLargeURL];
  v257 = [v10 generateNameImageLargeAssetHandleForURLString:v256 withAssetManager:v11];
  nameImageLargeAssetHandle = v17->_nameImageLargeAssetHandle;
  v17->_nameImageLargeAssetHandle = v257;

  v259 = [v10 nameImageLargeMaskURL];
  v260 = [v10 generateNameImageLargeMaskAssetHandleForURLString:v259 withAssetManager:v11];
  nameImageLargeMaskAssetHandle = v17->_nameImageLargeMaskAssetHandle;
  v17->_nameImageLargeMaskAssetHandle = v260;

  v262 = [v10 navigationChromeBackgroundImageURL];
  v263 = [v10 generateNavigationChromeBackgroundImageAssetHandleForURLString:v262 withAssetManager:v11];
  navigationChromeBackgroundImage = v17->_navigationChromeBackgroundImage;
  v17->_navigationChromeBackgroundImage = v263;

  v265 = [v10 darkStyleNavigationChromeBackgroundImageURL];
  v266 = [v10 generateNavigationChromeBackgroundImageAssetHandleForURLString:v265 withAssetManager:v11];
  darkStyleNavigationChromeBackgroundImage = v17->_darkStyleNavigationChromeBackgroundImage;
  v17->_darkStyleNavigationChromeBackgroundImage = v266;

  v268 = [v10 navigationChromeBackgroundImageCompactURL];
  v269 = [v10 generateNavigationChromeBackgroundImageCompactAssetHandleForURLString:v268 withAssetManager:v11];
  navigationChromeBackgroundImageCompact = v17->_navigationChromeBackgroundImageCompact;
  v17->_navigationChromeBackgroundImageCompact = v269;

  v271 = [v10 darkStyleNavigationChromeBackgroundImageCompactURL];
  v272 = [v10 generateNavigationChromeBackgroundImageCompactAssetHandleForURLString:v271 withAssetManager:v11];
  darkStyleNavigationChromeBackgroundImageCompact = v17->_darkStyleNavigationChromeBackgroundImageCompact;
  v17->_darkStyleNavigationChromeBackgroundImageCompact = v272;

  v274 = [v10 navigationChromeBackgroundImageLargeURL];
  v275 = [v10 generateNavigationChromeBackgroundImageLargeAssetHandleForURLString:v274 withAssetManager:v11];
  navigationChromeBackgroundImageLarge = v17->_navigationChromeBackgroundImageLarge;
  v17->_navigationChromeBackgroundImageLarge = v275;

  v277 = [v10 darkStyleNavigationChromeBackgroundImageLargeURL];
  v278 = [v10 generateNavigationChromeBackgroundImageLargeAssetHandleForURLString:v277 withAssetManager:v11];
  darkStyleNavigationChromeBackgroundImageLarge = v17->_darkStyleNavigationChromeBackgroundImageLarge;
  v17->_darkStyleNavigationChromeBackgroundImageLarge = v278;

  v280 = [v10 nameImageCompactURL];

  if (v280)
  {
    v281 = [v10 nameImageCompactURL];
    v282 = [v10 generateNameImageMaskAssetHandleForURL:v281 withAssetManager:v11];
    v283 = v17->_nameImageCompactAssetHandle;
    v17->_nameImageCompactAssetHandle = v282;
  }

  objc_storeStrong(&v17->_tagRecord, a3);
  objc_storeStrong(&v17->_assetManager, v420);
  objc_storeStrong(&v17->_tagInterestToken, v414);
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

  v17->_isRealTimeTrackingEnabled = [v10 behaviorFlags] & 1;
  v17->_isArticleReadCountReportingEnabled = ([v10 behaviorFlags] & 8) != 0;
  v17->_isAutoDarkModeEnabled = ([v10 behaviorFlags] & 0x10) == 0;
  v17->_disableFollow = ([v10 behaviorFlags] & 2) != 0;
  v17->_disableBlock = ([v10 behaviorFlags] & 4) != 0;
  v17->_useCompactNameForPersonalizedPaywall = ([v10 behaviorFlags] & 0x20) != 0;
  v17->_sponsoredFeedEligible = ([v10 behaviorFlags] & 0x40) != 0;
  v17->_allowsRecipes = ([v10 behaviorFlags] & 0x80) != 0;
  v17->_isInternal = [v10 propertyFlags] & 1;
  v17->_isSandbox = ([v10 propertyFlags] & 2) != 0;
  v17->_isLocal = ([v10 propertyFlags] & 4) != 0;
  v17->_isSensitiveTopic = ([v10 propertyFlags] & 8) != 0;
  v17->_isNewspaper = ([v10 propertyFlags] & 0x10) != 0;
  v17->_isMagazine = ([v10 propertyFlags] & 0x20) != 0;
  v17->_isSports = ([v10 propertyFlags] & 0x40) != 0;
  v17->_isMySports = ([v10 propertyFlags] & 0x80) != 0;
  v17->_isPuzzleHub = ([v10 propertyFlags] >> 8) & 1;
  v17->_isFoodTopic = ([v10 propertyFlags] & 0x200) != 0;
  v17->_isFoodSection = ([v10 propertyFlags] & 0x400) != 0;
  v17->_hasEvergreenArticleList = [v10 propertyFlagsLocalized] & 1;
  v17->_hasRecipeList = ([v10 propertyFlagsLocalized] & 2) != 0;
  v293 = [(FCTag *)v17 identifier];
  v17->_isPuzzleType = [FCPuzzleType isPuzzleTypeIdentifier:v293];

  v17->_specialTagFeedType = a6;
  v17->_isFoodHub = a6 == 1;
  v17->_isRecipeCatalog = a6 == 2;
  v294 = v17->_isFoodTopic || v17->_allowsRecipes;
  v17->_hasRecipes = v294 & 1;
  v17->_isSportsRecommendable = [v10 isSportsRecommendable];
  v295 = [v10 generateSportsLogoImageAssetHandleWithAssetManager:v11];
  sportsLogoImageAssetHandle = v17->_sportsLogoImageAssetHandle;
  v17->_sportsLogoImageAssetHandle = v295;

  v297 = [v10 generateSportsLogoImageCompactAssetHandleWithAssetManager:v11];
  sportsLogoImageCompactAssetHandle = v17->_sportsLogoImageCompactAssetHandle;
  v17->_sportsLogoImageCompactAssetHandle = v297;

  v299 = [v10 generateSportsLogoImageLargeAssetHandleWithAssetManager:v11];
  sportsLogoImageLargeAssetHandle = v17->_sportsLogoImageLargeAssetHandle;
  v17->_sportsLogoImageLargeAssetHandle = v299;

  v301 = [v10 generateSportsLogoAltImageAssetHandleWithAssetManager:v11];
  sportsLogoAltImageAssetHandle = v17->_sportsLogoAltImageAssetHandle;
  v17->_sportsLogoAltImageAssetHandle = v301;

  v303 = [v10 generateSportsLogoAltImageCompactAssetHandleWithAssetManager:v11];
  sportsLogoAltImageCompactAssetHandle = v17->_sportsLogoAltImageCompactAssetHandle;
  v17->_sportsLogoAltImageCompactAssetHandle = v303;

  v305 = [v10 generateSportsLogoAltImageLargeAssetHandleWithAssetManager:v11];
  sportsLogoAltImageLargeAssetHandle = v17->_sportsLogoAltImageLargeAssetHandle;
  v17->_sportsLogoAltImageLargeAssetHandle = v305;

  v307 = [v10 sportsData];
  v308 = [v307 length];

  if (v308)
  {
    v309 = [v10 sportsData];
    sportsData = v17->_sportsData;
    v17->_sportsData = v309;

    v311 = MEMORY[0x1E695DF20];
    v312 = [v10 sportsData];
    v313 = [v311 fc_dictionaryFromJSON:v312];

    v314 = v313;
    v315 = [[FCSportsData alloc] initWithDictionary:v314];

    v316 = [(FCSportsData *)v315 UMCCanonicalID];
    UMCCanonicalID = v17->_UMCCanonicalID;
    v17->_UMCCanonicalID = v316;

    v318 = [(FCSportsData *)v315 sportsPrimaryName];
    sportsPrimaryName = v17->_sportsPrimaryName;
    v17->_sportsPrimaryName = v318;

    v320 = [(FCSportsData *)v315 sportsNameAbbreviation];
    sportsNameAbbreviation = v17->_sportsNameAbbreviation;
    v17->_sportsNameAbbreviation = v320;

    v322 = [(FCSportsData *)v315 sportsSecondaryName];
    sportsSecondaryName = v17->_sportsSecondaryName;
    v17->_sportsSecondaryName = v322;

    v324 = [(FCSportsData *)v315 sportsSecondaryShortName];
    sportsSecondaryShortName = v17->_sportsSecondaryShortName;
    v17->_sportsSecondaryShortName = v324;

    v326 = [(FCSportsData *)v315 sportsFullName];
    sportsFullName = v17->_sportsFullName;
    v17->_sportsFullName = v326;

    v328 = [(FCSportsData *)v315 topLevelSportTagIdentifier];
    topLevelSportTagIdentifier = v17->_topLevelSportTagIdentifier;
    v17->_topLevelSportTagIdentifier = v328;

    v330 = [(FCSportsData *)v315 topLevelGroupsTagIdentifiers];
    topLevelGroupsTagIdentifiers = v17->_topLevelGroupsTagIdentifiers;
    v17->_topLevelGroupsTagIdentifiers = v330;

    v332 = [(FCSportsData *)v315 sportsNickname];
    sportsNickname = v17->_sportsNickname;
    v17->_sportsNickname = v332;

    v334 = [(FCSportsData *)v315 sportsLocation];
    sportsLocation = v17->_sportsLocation;
    v17->_sportsLocation = v334;

    v17->_hideLocationInMasthead = [(FCSportsData *)v315 hideLocationInMasthead];
    v17->_sportsType = [(FCSportsData *)v315 sportsType];
    v336 = [(FCSportsData *)v315 sportsTypeDisplayName];
    sportsTypeDisplayName = v17->_sportsTypeDisplayName;
    v17->_sportsTypeDisplayName = v336;

    v338 = [(FCSportsData *)v315 sportsTypePluralizedDisplayName];
    sportsTypePluralizedDisplayName = v17->_sportsTypePluralizedDisplayName;
    v17->_sportsTypePluralizedDisplayName = v338;

    v17->_sportsLeagueType = [(FCSportsData *)v315 sportsLeagueType];
  }

  v340 = [v10 sportsTheme];
  v341 = [v340 length];

  if (v341)
  {
    v342 = MEMORY[0x1E695DF20];
    v343 = [v10 sportsTheme];
    v344 = [v342 fc_dictionaryFromJSON:v343];

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

  v358 = [v10 publisherSpecifiedArticleIDs];
  publisherSpecifiedArticleIDs = v17->_publisherSpecifiedArticleIDs;
  v17->_publisherSpecifiedArticleIDs = v358;

  v360 = MEMORY[0x1E695DF00];
  v361 = [v10 publisherSpecifiedArticleIDsModifiedDate];
  v362 = [v360 dateWithPBDate:v361];
  publisherSpecifiedArticleIDsModifiedDate = v17->_publisherSpecifiedArticleIDsModifiedDate;
  v17->_publisherSpecifiedArticleIDsModifiedDate = v362;

  if ([v10 hasPublisherSpecifiedArticlesJson])
  {
    v364 = MEMORY[0x1E695DF20];
    v421 = v10;
    v365 = [v10 publisherSpecifiedArticlesJson];
    v366 = [v364 fc_dictionaryFromJSON:v365];

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
          v375 = [(FCPublisherSpecifiedArticle *)v374 articleID];
          v376 = [v375 length];

          if (v376)
          {
            v377 = [(FCPublisherSpecifiedArticle *)v374 articleID];
            [v368 setObject:v374 forKeyedSubscript:v377];
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

    v10 = v421;
    v11 = v417;
  }

  v379 = [v10 paidBundlePaywallConfigurationJson];
  v380 = [v379 length];

  if (v380)
  {
    v381 = MEMORY[0x1E695DF20];
    v382 = [v10 paidBundlePaywallConfigurationJson];
    v383 = [v381 fc_dictionaryFromJSON:v382];

    paidBundlePaywallConfiguration = [v383 allKeys];
    if ([paidBundlePaywallConfiguration count])
    {
      v385 = [v383 allKeys];
      v386 = [v385 containsObject:@"subscriptionButton"];

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
  v388 = [(FCTag *)v17 sportsRecommendationMappingsJSON];
  v389 = [v388 length];

  if (v389)
  {
    v390 = [(FCTag *)v17 sportsRecommendationMappingsJSON];
    if (v390)
    {
      v425 = 0;
      v391 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v390 options:0 error:&v425];
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

  v17->_foodGroupingAvailability = [v10 foodGroupingAvailability];
  objc_autoreleasePoolPop(context);
LABEL_85:

  v400 = *MEMORY[0x1E69E9840];
  return v17;
}

- (id)purchaseOfferableConfigurationsFromProtobufList:(void *)a1
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [MEMORY[0x1E695DF70] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = v1;
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
        v9 = [v7 purchaseId];
        v10 = -[FCPurchaseOfferableConfiguration initWithPurchaseID:allowsPublisherPhoneApp:allowsPublisherPadApp:allowsPublisherWebsite:preferredOffer:](v8, "initWithPurchaseID:allowsPublisherPhoneApp:allowsPublisherPadApp:allowsPublisherWebsite:preferredOffer:", v9, [v7 allowsPublisherPhoneApp], objc_msgSend(v7, "allowsPublisherPadApp"), objc_msgSend(v7, "allowsPublisherWebSite"), objc_msgSend(v7, "preferredOffer"));

        [v2 addObject:v10];
      }

      v4 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v4);
  }

  v11 = [v2 copy];
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
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [(FCTag *)self headlineTitleTextInfo];
  v5 = [v4 font];

  if (v5)
  {
    [v3 addObject:v5];
  }

  v6 = [(FCTag *)self headlineExcerptTextInfo];
  v7 = [v6 font];

  if (v7)
  {
    [v3 addObject:v7];
  }

  v8 = [(FCTag *)self headlineBylineTextInfo];
  v9 = [v8 font];

  if (v9)
  {
    [v3 addObject:v9];
  }

  return v3;
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
    v5 = [(FCTag *)self primaryAudience];
    v4 = [v5 isEqualToString:@"MATURE"];
  }

  return v4;
}

- (NSString)description
{
  v3 = [FCDescription descriptionWithObject:self];
  v4 = [(FCTag *)self name];
  [v3 addField:@"name" value:v4];

  v5 = [(FCTag *)self identifier];
  [v3 addField:@"ID" value:v5];

  v6 = [v3 descriptionString];

  return v6;
}

- (NSData)data
{
  v2 = [(FCTag *)self tagRecord];
  v3 = [v2 data];

  return v3;
}

- (NSString)groupName
{
  v3 = objc_opt_new();
  v4 = [(FCTag *)self titleDisplayPrefix];

  if (v4)
  {
    v5 = [(FCTag *)self titleDisplayPrefix];
    [v3 appendString:v5];
  }

  if (self->_name)
  {
    [v3 appendString:?];
  }

  v6 = [(FCTag *)self titleDisplaySuffix];

  if (v6)
  {
    v7 = [(FCTag *)self titleDisplaySuffix];
    [v3 appendString:v7];
  }

  v8 = [v3 copy];

  return v8;
}

- (NSString)displayName
{
  v3 = [(FCTag *)self asSports];
  v4 = v3;
  if (v3 && (v5 = [v3 sportsType], v5 <= 0xB))
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
      v8 = v6;
    }

    else
    {
      v8 = [(FCTag *)self name];
    }

    v9 = v8;
  }

  else
  {
    v9 = [(FCTag *)self name];
  }

  return v9;
}

- (NSString)compactDisplayName
{
  v3 = [(FCTag *)self asSports];
  v4 = v3;
  if (v3 && ([v3 sportsSecondaryShortName], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = objc_alloc(MEMORY[0x1E696AEC0]);
    v7 = FCBundle();
    v8 = [v7 localizedStringForKey:@"%@ (%@)" value:&stru_1F2DC7DC0 table:0];
    v9 = [(FCTag *)self mainCompactDisplayName];
    v10 = [v4 sportsSecondaryShortName];
    v11 = [v6 initWithFormat:v8, v9, v10];
  }

  else
  {
    v11 = [(FCTag *)self mainCompactDisplayName];
  }

  return v11;
}

- (id)mainCompactDisplayName
{
  v1 = a1;
  if (a1)
  {
    v2 = [a1 nameCompact];
    if (v2 && (v3 = v2, [v1 nameCompact], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "isEqualToString:", &stru_1F2DC7DC0), v4, v3, (v5 & 1) == 0))
    {
      v1 = [v1 nameCompact];
    }

    else
    {
      v6 = [v1 asSports];
      v7 = v6;
      if (v6)
      {
        v8 = [v6 sportsPrimaryName];
        v9 = v8;
        if (v8)
        {
          v10 = v8;
        }

        else
        {
          v10 = [v1 displayName];
        }

        v1 = v10;
      }

      else
      {
        v1 = [v1 displayName];
      }
    }
  }

  return v1;
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

- (id)initForTestingWithTagType:(unint64_t)a3 identifier:(id)a4 name:(id)a5 umcCanonicalID:(id)a6
{
  v27 = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (self)
  {
    if (!v10 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
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
      if ([v10 length])
      {
        self->_tagType = a3;
        v13 = [v10 copy];
        identifier = self->_identifier;
        self->_identifier = v13;

        v15 = [v11 copy];
        name = self->_name;
        self->_name = v15;

        v17 = [v12 copy];
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

- (id)initChannelForTestingWithIdentifier:(id)a3 name:(id)a4 defaultSection:(id)a5 publisherAuthorizationURL:(id)a6 publisherVerificationURL:(id)a7
{
  v40 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (![v12 length] && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
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
    if ([v12 length])
    {
      v17->_tagType = 2;
      v18 = [v12 copy];
      identifier = v17->_identifier;
      v17->_identifier = v18;

      v20 = [v13 copy];
      name = v17->_name;
      v17->_name = v20;

      v22 = [v14 copy];
      defaultSectionID = v17->_defaultSectionID;
      v17->_defaultSectionID = v22;

      v24 = [v15 copy];
      publisherPaidAuthorizationURL = v17->_publisherPaidAuthorizationURL;
      v17->_publisherPaidAuthorizationURL = v24;

      v26 = [v16 copy];
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

- (id)initChannelForTestingWithIdentifier:(id)a3 name:(id)a4 publisherPaidBundlePurchaseIDs:(id)a5
{
  v30 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (![v8 length] && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
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
    if ([v8 length])
    {
      v11->_tagType = 2;
      v12 = [v8 copy];
      identifier = v11->_identifier;
      v11->_identifier = v12;

      v14 = [v9 copy];
      name = v11->_name;
      v11->_name = v14;

      v16 = [v10 copy];
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

- (id)initChannelFromNotificationWithIdentifier:(id)a3 name:(id)a4 nameImageAssetHandle:(id)a5 nameImageMaskAssetHandle:(id)a6
{
  v38 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (![v10 length] && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
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
    if ([v10 length])
    {
      v14->_tagType = 2;
      v15 = [v10 copy];
      identifier = v14->_identifier;
      v14->_identifier = v15;

      v17 = [v11 copy];
      name = v14->_name;
      v14->_name = v17;

      objc_storeStrong(&v14->_nameImageAssetHandle, a5);
      v19 = [FCTagBanner alloc];
      v20 = *MEMORY[0x1E695F060];
      v21 = *(MEMORY[0x1E695F060] + 8);
      v22 = [(FCTagBanner *)v19 initWithAssetHandle:v12 size:*MEMORY[0x1E695F060] insets:v21, 0.0, 0.0, 0.0, 0.0];
      bannerImageForWhiteBackground = v14->_bannerImageForWhiteBackground;
      v14->_bannerImageForWhiteBackground = v22;

      v24 = [[FCTagBanner alloc] initWithAssetHandle:v13 size:v20 insets:v21, 0.0, 0.0, 0.0, 0.0];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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
    v7 = [(FCTag *)self identifier];
    v8 = [v6 identifier];
    v9 = [v7 isEqualToString:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  v2 = [(FCTag *)self identifier];
  v3 = [v2 hash];

  return v3;
}

- (FCContentArchive)contentArchive
{
  v2 = [(FCTag *)self tagRecord];
  v3 = [FCContentArchive archiveWithRecord:v2];

  return v3;
}

- (FCContentManifest)contentManifest
{
  v2 = [(FCTag *)self tagRecord];
  v3 = [v2 base];
  v4 = [v3 contentManifest];

  return v4;
}

- (FCChannelProviding)asChannel
{
  if ([(FCTag *)self tagType]== 2)
  {
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (FCSectionProviding)asSection
{
  v2 = self;
  if ([(FCTag *)self tagType]!= 3 && [(FCTag *)v2 tagType]!= 5 && [(FCTag *)v2 tagType]!= 4)
  {
    v2 = 0;
  }

  return v2;
}

- (FCTopicProviding)asTopic
{
  if ([(FCTag *)self tagType]== 1)
  {
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (FCSportsProviding)asSports
{
  if ([(FCTag *)self isSports])
  {
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (FCSportsEventProviding)asSportsEvent
{
  if ([(FCTag *)self isSportsEvent])
  {
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (FCPuzzleTypeProviding)asPuzzleType
{
  if ([(FCTag *)self isPuzzleType])
  {
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
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
      v4 = [(FCTag *)self defaultSectionID];
      v3 = v4 != 0;

      return v3;
    }
  }

  return 0;
}

- (NSString)personalizedPaywallName
{
  if ([(FCTag *)self useCompactNameForPersonalizedPaywall])
  {
    v3 = [(FCTag *)self nameCompact];
    v4 = v3;
    if (v3)
    {
      v5 = v3;
    }

    else
    {
      v5 = [(FCTag *)self name];
    }

    v6 = v5;
  }

  else
  {
    v6 = [(FCTag *)self name];
  }

  return v6;
}

- (BOOL)isEqualToTag:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = FCCheckedDynamicCast(v5, v4);

  v7 = [(FCTag *)self versionKey];
  v8 = [v6 versionKey];
  v9 = [v7 isEqualToString:v8];

  return v9;
}

- (id)freeFeedIDForBin:(int64_t)a3
{
  v5 = [(FCTag *)self pptFeedIDOverride];

  if (v5)
  {
    v6 = [(FCTag *)self pptFeedIDOverride];
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

    v8 = [(NTPBFeedConfiguration *)feedConfiguration feedIDForBin:a3 paid:0];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = [(FCTag *)self identifier];
    }

    v6 = v10;
  }

  return v6;
}

- (id)paidFeedIDForBin:(int64_t)a3
{
  v5 = [(FCTag *)self pptFeedIDOverride];

  if (v5)
  {
    v6 = [(FCTag *)self pptFeedIDOverride];
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

    v8 = [(NTPBFeedConfiguration *)feedConfiguration feedIDForBin:a3 paid:1];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = [(FCTag *)self freeFeedIDForBin:a3];
    }

    v6 = v10;
  }

  return v6;
}

- (id)_feedConfigurationForSection:(id *)a1
{
  v3 = a2;
  if (a1)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__49;
    v18 = __Block_byref_object_dispose__49;
    v19 = 0;
    v4 = [a1 sectionIDs];
    v5 = [v4 count];
    v6 = a1[135];
    v7 = [v6 count];

    if (v5 == v7)
    {
      v8 = [a1 sectionIDs];
      v9 = a1[135];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __38__FCTag__feedConfigurationForSection___block_invoke;
      v11[3] = &unk_1E7C41F80;
      v12 = v3;
      v13 = &v14;
      [v8 fc_enumerateSideBySideWithArray:v9 reverse:0 block:v11];
    }

    a1 = v15[5];
    _Block_object_dispose(&v14, 8);
  }

  return a1;
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

- (id)setTitleDisplayPrefixOverride:(id)a3
{
  v4 = a3;
  v5 = [FCTag alloc];
  v6 = [(FCTag *)self tagRecord];
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

  v10 = [(FCTag *)v5 initWithTagRecord:v6 assetManager:v7 interestToken:v8 specialTagFeedType:specialTagFeedType];

  [(FCTag *)v10 setTitleDisplayPrefix:v4];

  return v10;
}

- (id)setTitleDisplaySuffixOverride:(id)a3
{
  v4 = a3;
  v5 = [FCTag alloc];
  v6 = [(FCTag *)self tagRecord];
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

  v10 = [(FCTag *)v5 initWithTagRecord:v6 assetManager:v7 interestToken:v8 specialTagFeedType:specialTagFeedType];

  [(FCTag *)v10 setTitleDisplaySuffix:v4];

  return v10;
}

- (id)freeFeedIDForSection:(id)a3 bin:(int64_t)a4
{
  v6 = a3;
  v7 = [(FCTag *)&self->super.isa _feedConfigurationForSection:v6];
  v8 = [v7 feedIDForBin:a4 paid:0];

  if (!v8)
  {
    v9 = [(FCTag *)self defaultSectionID];
    v10 = [v6 isEqualToString:v9];

    if (v10)
    {
      v8 = [(FCTag *)self freeFeedIDForBin:a4];
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
    v11 = v6;
  }

  v12 = v11;

  return v11;
}

- (id)paidFeedIDForSection:(id)a3 bin:(int64_t)a4
{
  v6 = a3;
  v7 = [(FCTag *)&self->super.isa _feedConfigurationForSection:v6];
  v8 = [v7 feedIDForBin:a4 paid:1];

  if (!v8)
  {
    v9 = [(FCTag *)self defaultSectionID];
    v10 = [v6 isEqualToString:v9];

    if (!v10 || ([(FCTag *)self paidFeedIDForBin:a4], (v11 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v11 = [(FCTag *)self freeFeedIDForSection:v6 bin:a4];
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

  v3 = [(FCTag *)self replacementID];
  v4 = [v3 length] == 0;

  return v4;
}

- (BOOL)isAuthenticationSetup
{
  v3 = [(FCTag *)self publisherPaidAuthorizationURL];
  v4 = [v3 fc_stringByTrimmingWhiteSpace];

  v5 = [(FCTag *)self publisherPaidVerificationURL];
  v6 = [v5 fc_stringByTrimmingWhiteSpace];

  if ([v4 length] && objc_msgSend(v6, "length"))
  {
    v7 = objc_alloc(MEMORY[0x1E696AF20]);
    v8 = [MEMORY[0x1E695DFF8] URLWithString:v4];
    v9 = [v7 initWithURL:v8 resolvingAgainstBaseURL:1];

    v10 = objc_alloc(MEMORY[0x1E696AF20]);
    v11 = [MEMORY[0x1E695DFF8] URLWithString:v6];
    v12 = [v10 initWithURL:v11 resolvingAgainstBaseURL:1];

    v13 = [v9 scheme];
    if ([(FCTag *)self _isValidScheme:v13])
    {
      v14 = [v12 scheme];
      v15 = [(FCTag *)self _isValidScheme:v14];
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

- (BOOL)_isValidScheme:(_BOOL8)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = [v3 length];
    a1 = v5 == [@"https" length] && objc_msgSend(v4, "rangeOfString:options:", @"https", 1) != 0x7FFFFFFFFFFFFFFFLL;
  }

  return a1;
}

- (id)authorizationURL
{
  v3 = [MEMORY[0x1E696AAE8] mainBundle];
  v4 = [v3 bundleIdentifier];
  v5 = [v4 isEqualToString:@"com.apple.stocks"];

  v6 = MEMORY[0x1E696AEC0];
  v7 = [(FCTag *)self identifier];
  v8 = v7;
  v9 = @"applenews://authentication_callback";
  if (v5)
  {
    v9 = @"stocks://authentication_callback";
  }

  v10 = [v6 stringWithFormat:@"%@/%@", v9, v7];

  v11 = [(FCTag *)self publisherPaidAuthorizationURL];
  v12 = [v11 fc_stringByTrimmingWhiteSpace];

  if ([v12 length])
  {
    v13 = objc_alloc(MEMORY[0x1E696AF20]);
    v14 = [MEMORY[0x1E695DFF8] URLWithString:v12];
    v15 = [v13 initWithURL:v14 resolvingAgainstBaseURL:1];

    v16 = [v15 scheme];
    v17 = [(FCTag *)self _isValidScheme:v16];

    if (v17)
    {
      v18 = [MEMORY[0x1E695DF58] currentLocale];
      v19 = [v18 objectForKey:*MEMORY[0x1E695D9B0]];

      v20 = [MEMORY[0x1E695DF58] currentLocale];
      v21 = [v20 objectForKey:*MEMORY[0x1E695D978]];

      v22 = [v12 rangeOfString:@"redirect_uri"];
      v23 = MEMORY[0x1E695DFF8];
      if (v22 == 0x7FFFFFFFFFFFFFFFLL)
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"%@?%@=%@&%@=%@&%@=%@", v12, @"redirect_uri", v10, @"country", v21, @"language", v19];
      }

      else
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@&%@=%@&%@=%@", v12, v10, @"country", v21, @"language", v19, v27];
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
    v3 = [(FCTag *)self publisherPaidOfferableConfigurations];
    if ([v3 count] == 1)
    {
      v4 = [v3 firstObject];
    }

    else
    {
      v8 = 0;
      v9 = &v8;
      v10 = 0x3032000000;
      v11 = __Block_byref_object_copy__49;
      v12 = __Block_byref_object_dispose__49;
      v13 = 0;
      v5 = [(FCTag *)self publisherPaidOfferableConfigurations];
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __30__FCTag_prefetchPurchaseOffer__block_invoke;
      v7[3] = &unk_1E7C41FA8;
      v7[4] = &v8;
      [v5 enumerateObjectsUsingBlock:v7];
      v4 = v9[5];

      _Block_object_dispose(&v8, 8);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
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
  v4 = [(FCTag *)self tagRecord];
  v5 = [v4 articleRecirculationConfiguration];
  v6 = [v5 fc_gzipInflate];
  v7 = [v3 initWithData:v6 encoding:4];

  return v7;
}

- (NSString)highlightsArticleListID
{
  v2 = [(FCTag *)self tagRecord];
  v3 = [v2 highlightsArticleListID];

  return v3;
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
  v2 = [(FCTag *)self tagRecord];
  v3 = [v2 stocksFeedConfigurationJson];

  return v3;
}

- (int64_t)feedType
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [(FCTag *)self tagType];
  if (v2 >= 6)
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
    result = qword_1B681A950[v2];
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

- (FCTagBanner)bannerImageForMask
{
  v3 = [(FCTag *)self nameImageMaskAssetHandle];

  if (v3)
  {
    v4 = self->_bannerImageForMask;
  }

  else
  {
    v5 = [(FCTag *)self nameImageForDarkBackgroundAssetHandle];

    if (v5)
    {
      v4 = [(FCTag *)self bannerImageForThemeBackground];
    }

    else
    {
      v6 = [(FCTag *)self nameImageAssetHandle];

      if (v6)
      {
        v4 = [(FCTag *)self bannerImageForWhiteBackground];
      }

      else
      {
        v7 = [(FCTag *)self nameImageCompactAssetHandle];

        if (v7)
        {
          v4 = [(FCTag *)self compactBannerImage];
        }

        else
        {
          v4 = 0;
        }
      }
    }
  }

  return v4;
}

- (BOOL)isWhite
{
  v3 = [(FCTag *)self backgroundColor];
  if (v3)
  {
    v4 = [(FCTag *)self backgroundColor];
    v5 = +[FCColor whiteColor];
    v6 = [v4 isSimilarToColor:v5 withinPercentage:0.12];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (BOOL)isDark
{
  v3 = [(FCTag *)self backgroundColor];
  [v3 red];
  v5 = v4;
  v6 = [(FCTag *)self backgroundColor];
  [v6 green];
  v8 = v7 * 0.7152 + v5 * 0.2126;
  v9 = [(FCTag *)self backgroundColor];
  [v9 blue];
  v11 = v8 + v10 * 0.0722;

  v12 = [(FCTag *)self backgroundColor];
  v14 = v11 < 0.7 || v12 == 0;

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
  v3 = [(FCTag *)self nameImageAssetHandle];

  if (v3)
  {
    v4 = self->_bannerImageForWhiteBackground;
  }

  else
  {
    v5 = [(FCTag *)self nameImageForDarkBackgroundAssetHandle];

    if (v5)
    {
      v4 = [(FCTag *)self bannerImageForThemeBackground];
    }

    else
    {
      v6 = [(FCTag *)self nameImageMaskAssetHandle];

      if (v6)
      {
        v4 = [(FCTag *)self bannerImageForMask];
      }

      else
      {
        v7 = [(FCTag *)self nameImageCompactAssetHandle];

        if (v7)
        {
          v4 = [(FCTag *)self compactBannerImage];
        }

        else
        {
          v4 = 0;
        }
      }
    }
  }

  return v4;
}

- (FCTagBanner)bannerImageForThemeBackground
{
  v3 = [(FCTag *)self nameImageForDarkBackgroundAssetHandle];

  if (v3)
  {
    v4 = self->_bannerImageForThemeBackground;
  }

  else
  {
    v5 = [(FCTag *)self nameImageAssetHandle];

    if (v5)
    {
      v4 = [(FCTag *)self bannerImageForWhiteBackground];
    }

    else
    {
      v6 = [(FCTag *)self nameImageMaskAssetHandle];

      if (v6)
      {
        v4 = [(FCTag *)self bannerImageForMask];
      }

      else
      {
        v7 = [(FCTag *)self nameImageCompactAssetHandle];

        if (v7)
        {
          v4 = [(FCTag *)self compactBannerImage];
        }

        else
        {
          v4 = 0;
        }
      }
    }
  }

  return v4;
}

- (FCTagBanner)compactBannerImage
{
  v3 = [(FCTag *)self nameImageCompactAssetHandle];

  if (v3)
  {
    v4 = self->_compactBannerImage;
  }

  else
  {
    v5 = [(FCTag *)self nameImageMaskAssetHandle];

    if (v5)
    {
      v4 = [(FCTag *)self bannerImageForMask];
    }

    else
    {
      v6 = [(FCTag *)self nameImageAssetHandle];

      if (v6)
      {
        v4 = [(FCTag *)self bannerImageForWhiteBackground];
      }

      else
      {
        v7 = [(FCTag *)self nameImageForDarkBackgroundAssetHandle];

        if (v7)
        {
          v4 = [(FCTag *)self bannerImageForThemeBackground];
        }

        else
        {
          v4 = 0;
        }
      }
    }
  }

  return v4;
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

- (id)_FCColorFromHexTriplet:(void *)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if ([v3 length])
    {
      a1 = [FCColor nullableColorWithHexString:v4];
    }

    else
    {
      a1 = 0;
    }
  }

  return a1;
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
    v6 = [(FCTag *)self theme];
    v7 = [v6 backgroundColor];

    v8 = [(FCTag *)self theme];
    v9 = [v8 foregroundColor];

    if (v7)
    {
      v10 = +[FCColor whiteColor];
      v11 = [v7 isSimilarToColor:v10 withinPercentage:0.2];

      v12 = v7;
      if (!v11)
      {
        goto LABEL_12;
      }
    }

    if (v9 && (+[FCColor whiteColor](FCColor, "whiteColor"), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v9 isSimilarToColor:v13 withinPercentage:0.2], v13, v12 = v9, (v14 & 1) == 0))
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
    v6 = [(FCTag *)self theme];
    v7 = [v6 darkStyleBackgroundColor];

    v8 = [(FCTag *)self theme];
    v9 = [v8 darkStyleForegroundColor];

    if (v7)
    {
      v10 = +[FCColor blackColor];
      v11 = [v7 isSimilarToColor:v10 withinPercentage:0.2];

      v12 = v7;
      if (!v11)
      {
        goto LABEL_12;
      }
    }

    if (v9 && (+[FCColor blackColor](FCColor, "blackColor"), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v9 isSimilarToColor:v13 withinPercentage:0.2], v13, v12 = v9, (v14 & 1) == 0))
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
  v2 = [(FCTag *)self tagRecord];
  v3 = [v2 data];

  return v3;
}

- (BOOL)isWhitelisted
{
  v3 = [(FCTag *)self iAdCategories];
  v4 = [(FCTag *)self identifier];
  v5 = [v3 containsObject:v4];

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

  v4 = [(FCTag *)self currentIssueIDs];
  v5 = [v4 count];
  v6 = [(FCTag *)self recentIssueIDs];
  v7 = [v6 count];

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
  v3 = [(FCTag *)self topLevelGroupsTagIdentifiers];

  if (v3)
  {
    v4 = [(FCTag *)self topLevelGroupsTagIdentifiers];
  }

  else
  {
    v5 = [(FCTag *)self topLevelSportTagIdentifier];

    if (v5)
    {
      v6 = [(FCTag *)self topLevelSportTagIdentifier];
      v9[0] = v6;
      v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
    }

    else
    {
      v4 = MEMORY[0x1E695E0F0];
    }
  }

  v7 = *MEMORY[0x1E69E9840];

  return v4;
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