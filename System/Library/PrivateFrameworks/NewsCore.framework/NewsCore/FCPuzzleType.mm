@interface FCPuzzleType
- (BOOL)isEqualToTag:(id)tag;
- (CGSize)nameImageForDarkBackgroundSize;
- (CGSize)nameImageMaskSize;
- (CGSize)nameImageSize;
- (FCAssetHandle)logoImageAssetHandle;
- (FCContentArchive)contentArchive;
- (FCContentManifest)contentManifest;
- (FCEdgeInsets)nameImageForDarkBackgroundInsets;
- (FCEdgeInsets)nameImageInsets;
- (FCEdgeInsets)nameImageMaskInsets;
- (FCPuzzleType)initWithIdentifier:(id)identifier name:(id)name nameCompact:(id)compact kind:(id)kind behaviorFlags:(unint64_t)flags engineResourceID:(id)d superfeedConfigResourceID:(id)iD latestPuzzleIDs:(id)self0 promotedPuzzleIDs:(id)self1 nameImageAssetHandle:(id)self2 nameImageCompactAssetHandle:(id)self3 nameImageMaskAssetHandle:(id)self4 nameImageForDarkBackgroundAssetHandle:(id)self5 feedNavImageAssetHandle:(id)self6 coverImageAssetHandle:(id)self7 navigationChromeBackgroundImageHandle:(id)self8 navigationChromeBackgroundImageCompactHandle:(id)self9 navigationChromeBackgroundImageLargeHandle:(id)largeHandle navigationChromeBackgroundDarkModeImageHandle:(id)modeImageHandle navigationChromeBackgroundDarkModeImageCompactHandle:(id)imageCompactHandle navigationChromeBackgroundDarkModeImageLargeHandle:(id)imageLargeHandle language:(id)language allowedStorefrontIDs:(id)storefrontIDs blockedStorefrontIDs:(id)blockedStorefrontIDs minimumNewsVersion:(int64_t)version loadDate:(id)date fetchDate:(id)fetchDate lastModifiedDate:(id)identifier0 exploreTileImageAssetHandle:(id)identifier1 versionKey:(id)identifier2 titleDisplayPrefix:(id)identifier3 titleDisplaySuffix:(id)identifier4 themeColor:(id)identifier5 puzzlePrimaryColor:(id)identifier6 darkStyleThemeColor:(id)identifier7 darkStylePuzzlePrimaryColor:(id)identifier8 groupTitleColor:(id)identifier9 groupDarkStyleTitleColor:(id)name0 thumbnailDirectory:(id)name1 isPublic:(BOOL)name2;
- (FCPuzzleType)initWithPuzzleType:(id)type overrides:(id)overrides;
- (FCPuzzleType)initWithPuzzleTypeRecord:(id)record assetManager:(id)manager context:(id)context interestToken:(id)token;
- (FCTagBanner)defaultBannerImage;
- (NSString)nameForSharing;
@end

@implementation FCPuzzleType

- (FCPuzzleType)initWithIdentifier:(id)identifier name:(id)name nameCompact:(id)compact kind:(id)kind behaviorFlags:(unint64_t)flags engineResourceID:(id)d superfeedConfigResourceID:(id)iD latestPuzzleIDs:(id)self0 promotedPuzzleIDs:(id)self1 nameImageAssetHandle:(id)self2 nameImageCompactAssetHandle:(id)self3 nameImageMaskAssetHandle:(id)self4 nameImageForDarkBackgroundAssetHandle:(id)self5 feedNavImageAssetHandle:(id)self6 coverImageAssetHandle:(id)self7 navigationChromeBackgroundImageHandle:(id)self8 navigationChromeBackgroundImageCompactHandle:(id)self9 navigationChromeBackgroundImageLargeHandle:(id)largeHandle navigationChromeBackgroundDarkModeImageHandle:(id)modeImageHandle navigationChromeBackgroundDarkModeImageCompactHandle:(id)imageCompactHandle navigationChromeBackgroundDarkModeImageLargeHandle:(id)imageLargeHandle language:(id)language allowedStorefrontIDs:(id)storefrontIDs blockedStorefrontIDs:(id)blockedStorefrontIDs minimumNewsVersion:(int64_t)version loadDate:(id)date fetchDate:(id)fetchDate lastModifiedDate:(id)identifier0 exploreTileImageAssetHandle:(id)identifier1 versionKey:(id)identifier2 titleDisplayPrefix:(id)identifier3 titleDisplaySuffix:(id)identifier4 themeColor:(id)identifier5 puzzlePrimaryColor:(id)identifier6 darkStyleThemeColor:(id)identifier7 darkStylePuzzlePrimaryColor:(id)identifier8 groupTitleColor:(id)identifier9 groupDarkStyleTitleColor:(id)name0 thumbnailDirectory:(id)name1 isPublic:(BOOL)name2
{
  identifierCopy = identifier;
  nameCopy = name;
  compactCopy = compact;
  kindCopy = kind;
  dCopy = d;
  dCopy2 = d;
  iDCopy = iD;
  dsCopy = ds;
  iDsCopy = iDs;
  handleCopy = handle;
  assetHandleCopy = assetHandle;
  maskAssetHandleCopy = maskAssetHandle;
  backgroundAssetHandleCopy = backgroundAssetHandle;
  imageAssetHandleCopy = imageAssetHandle;
  coverImageAssetHandleCopy = coverImageAssetHandle;
  imageHandleCopy = imageHandle;
  compactHandleCopy = compactHandle;
  largeHandleCopy = largeHandle;
  modeImageHandleCopy = modeImageHandle;
  imageCompactHandleCopy = imageCompactHandle;
  imageLargeHandleCopy = imageLargeHandle;
  languageCopy = language;
  storefrontIDsCopy = storefrontIDs;
  blockedStorefrontIDsCopy = blockedStorefrontIDs;
  dateCopy = date;
  fetchDateCopy = fetchDate;
  modifiedDateCopy = modifiedDate;
  tileImageAssetHandleCopy = tileImageAssetHandle;
  keyCopy = key;
  prefixCopy = prefix;
  suffixCopy = suffix;
  colorCopy = color;
  primaryColorCopy = primaryColor;
  themeColorCopy = themeColor;
  puzzlePrimaryColorCopy = puzzlePrimaryColor;
  titleColorCopy = titleColor;
  styleTitleColorCopy = styleTitleColor;
  directoryCopy = directory;
  v90.receiver = self;
  v90.super_class = FCPuzzleType;
  v49 = [(FCPuzzleType *)&v90 init];
  v50 = v49;
  if (v49)
  {
    objc_storeStrong(&v49->_identifier, identifier);
    objc_storeStrong(&v50->_name, name);
    objc_storeStrong(&v50->_nameCompact, compact);
    objc_storeStrong(&v50->_kind, kind);
    v50->_behaviorFlags = flags;
    objc_storeStrong(&v50->_engineResourceID, dCopy);
    objc_storeStrong(&v50->_superfeedConfigResourceID, iD);
    objc_storeStrong(&v50->_latestPuzzleIDs, ds);
    objc_storeStrong(&v50->_promotedPuzzleIDs, iDs);
    objc_storeStrong(&v50->_nameImageAssetHandle, handle);
    objc_storeStrong(&v50->_nameImageCompactAssetHandle, assetHandle);
    objc_storeStrong(&v50->_nameImageMaskAssetHandle, maskAssetHandle);
    objc_storeStrong(&v50->_nameImageForDarkBackgroundAssetHandle, backgroundAssetHandle);
    objc_storeStrong(&v50->_feedNavImageAssetHandle, imageAssetHandle);
    objc_storeStrong(&v50->_coverImageAssetHandle, coverImageAssetHandle);
    objc_storeStrong(&v50->_navigationChromeBackgroundImage, imageHandle);
    objc_storeStrong(&v50->_navigationChromeBackgroundImageCompact, compactHandle);
    objc_storeStrong(&v50->_navigationChromeBackgroundImageLarge, largeHandle);
    objc_storeStrong(&v50->_darkStyleNavigationChromeBackgroundImage, modeImageHandle);
    objc_storeStrong(&v50->_darkStyleNavigationChromeBackgroundImageCompact, imageCompactHandle);
    objc_storeStrong(&v50->_darkStyleNavigationChromeBackgroundImageLarge, imageLargeHandle);
    objc_storeStrong(&v50->_language, language);
    objc_storeStrong(&v50->_allowedStorefrontIDs, storefrontIDs);
    objc_storeStrong(&v50->_blockedStorefrontIDs, blockedStorefrontIDs);
    v50->_minimumNewsVersion = version;
    objc_storeStrong(&v50->_loadDate, date);
    objc_storeStrong(&v50->_fetchDate, fetchDate);
    objc_storeStrong(&v50->_lastModifiedDate, modifiedDate);
    objc_storeStrong(&v50->_exploreTileImageAssetHandle, tileImageAssetHandle);
    objc_storeStrong(&v50->_themeColor, color);
    objc_storeStrong(&v50->_puzzlePrimaryColor, primaryColor);
    objc_storeStrong(&v50->_darkStyleThemeColor, themeColor);
    objc_storeStrong(&v50->_darkStylePuzzlePrimaryColor, puzzlePrimaryColor);
    objc_storeStrong(&v50->_groupTitleColor, titleColor);
    objc_storeStrong(&v50->_groupDarkStyleTitleColor, styleTitleColor);
    objc_storeStrong(&v50->_versionKey, key);
    objc_storeStrong(&v50->_titleDisplayPrefix, prefix);
    objc_storeStrong(&v50->_titleDisplaySuffix, suffix);
    objc_storeStrong(&v50->_thumbnailDirectory, directory);
    v50->_isPublic = public;
  }

  return v50;
}

- (FCPuzzleType)initWithPuzzleTypeRecord:(id)record assetManager:(id)manager context:(id)context interestToken:(id)token
{
  v136 = *MEMORY[0x1E69E9840];
  recordCopy = record;
  managerCopy = manager;
  contextCopy = context;
  tokenCopy = token;
  base = [recordCopy base];
  identifier = [base identifier];

  if (!identifier && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v114 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "identifier != 0"];
    *buf = 136315906;
    v129 = "[FCPuzzleType initWithPuzzleTypeRecord:assetManager:context:interestToken:]";
    v130 = 2080;
    v131 = "FCPuzzleType.m";
    v132 = 1024;
    v133 = 177;
    v134 = 2114;
    v135 = v114;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v127.receiver = self;
  v127.super_class = FCPuzzleType;
  v17 = [(FCPuzzleType *)&v127 init];
  if (v17)
  {
    if ([identifier length])
    {
      context = objc_autoreleasePoolPush();
      objc_storeStrong(&v17->_puzzleTypeRecord, record);
      objc_storeStrong(&v17->_interestToken, token);
      date = [MEMORY[0x1E695DF00] date];
      loadDate = v17->_loadDate;
      v17->_loadDate = date;

      v20 = MEMORY[0x1E695DF00];
      base2 = [recordCopy base];
      fetchDate = [base2 fetchDate];
      v23 = [v20 dateWithPBDate:fetchDate];
      fetchDate = v17->_fetchDate;
      v17->_fetchDate = v23;

      v25 = MEMORY[0x1E695DF00];
      base3 = [recordCopy base];
      modificationDate = [base3 modificationDate];
      v28 = [v25 dateWithPBDate:modificationDate];
      lastModifiedDate = v17->_lastModifiedDate;
      v17->_lastModifiedDate = v28;

      v30 = [identifier copy];
      identifier = v17->_identifier;
      v17->_identifier = v30;

      name = [recordCopy name];
      name = v17->_name;
      v17->_name = name;

      nameCompact = [recordCopy nameCompact];
      nameCompact = v17->_nameCompact;
      v17->_nameCompact = nameCompact;

      kind = [recordCopy kind];
      kind = v17->_kind;
      v17->_kind = kind;

      v17->_behaviorFlags = [recordCopy behaviorFlags];
      engineResourceID = [recordCopy engineResourceID];
      engineResourceID = v17->_engineResourceID;
      v17->_engineResourceID = engineResourceID;

      superfeedConfigResourceID = [recordCopy superfeedConfigResourceID];
      superfeedConfigResourceID = v17->_superfeedConfigResourceID;
      v17->_superfeedConfigResourceID = superfeedConfigResourceID;

      latestPuzzleIDs = [recordCopy latestPuzzleIDs];
      latestPuzzleIDs = v17->_latestPuzzleIDs;
      v17->_latestPuzzleIDs = latestPuzzleIDs;

      promotedPuzzleIDs = [recordCopy promotedPuzzleIDs];
      promotedPuzzleIDs = v17->_promotedPuzzleIDs;
      v17->_promotedPuzzleIDs = promotedPuzzleIDs;

      v46 = [recordCopy generateNameImageAssetHandleWithAssetManager:managerCopy];
      nameImageAssetHandle = v17->_nameImageAssetHandle;
      v17->_nameImageAssetHandle = v46;

      v48 = [recordCopy generateNameImageCompactAssetHandleWithAssetManager:managerCopy];
      nameImageCompactAssetHandle = v17->_nameImageCompactAssetHandle;
      v17->_nameImageCompactAssetHandle = v48;

      v50 = [recordCopy generateNameImageForDarkBackgroundAssetHandleWithAssetManager:managerCopy];
      nameImageForDarkBackgroundAssetHandle = v17->_nameImageForDarkBackgroundAssetHandle;
      v17->_nameImageForDarkBackgroundAssetHandle = v50;

      v52 = [recordCopy generateNameImageMaskAssetHandleWithAssetManager:managerCopy];
      nameImageMaskAssetHandle = v17->_nameImageMaskAssetHandle;
      v17->_nameImageMaskAssetHandle = v52;

      v54 = [recordCopy generateCoverImageAssetHandleWithAssetManager:managerCopy];
      coverImageAssetHandle = v17->_coverImageAssetHandle;
      v17->_coverImageAssetHandle = v54;

      v56 = [recordCopy generateFeedNavImageAssetHandleWithAssetManager:managerCopy];
      feedNavImageAssetHandle = v17->_feedNavImageAssetHandle;
      v17->_feedNavImageAssetHandle = v56;

      v58 = [recordCopy generateFeedNavImageAssetHandleWithAssetManager:managerCopy];
      feedNavImageHQAssetHandle = v17->_feedNavImageHQAssetHandle;
      v17->_feedNavImageHQAssetHandle = v58;

      v60 = [recordCopy generateNavigationChromeBackgroundImageHandleWithAssetManager:managerCopy];
      navigationChromeBackgroundImage = v17->_navigationChromeBackgroundImage;
      v17->_navigationChromeBackgroundImage = v60;

      v62 = [recordCopy generateNavigationChromeBackgroundImageCompactHandleWithAssetManager:managerCopy];
      navigationChromeBackgroundImageCompact = v17->_navigationChromeBackgroundImageCompact;
      v17->_navigationChromeBackgroundImageCompact = v62;

      v64 = [recordCopy generateNavigationChromeBackgroundImageLargeHandleWithAssetManager:managerCopy];
      navigationChromeBackgroundImageLarge = v17->_navigationChromeBackgroundImageLarge;
      v17->_navigationChromeBackgroundImageLarge = v64;

      v66 = [recordCopy generateNavigationChromeBackgroundDarkModeImageHandleWithAssetManager:managerCopy];
      darkStyleNavigationChromeBackgroundImage = v17->_darkStyleNavigationChromeBackgroundImage;
      v17->_darkStyleNavigationChromeBackgroundImage = v66;

      v68 = [recordCopy generateNavigationChromeBackgroundDarkModeImageCompactHandleWithAssetManager:managerCopy];
      darkStyleNavigationChromeBackgroundImageCompact = v17->_darkStyleNavigationChromeBackgroundImageCompact;
      v17->_darkStyleNavigationChromeBackgroundImageCompact = v68;

      v70 = [recordCopy generateNavigationChromeBackgroundDarkModeImageLargeHandleWithAssetManager:managerCopy];
      darkStyleNavigationChromeBackgroundImageLarge = v17->_darkStyleNavigationChromeBackgroundImageLarge;
      v17->_darkStyleNavigationChromeBackgroundImageLarge = v70;

      v72 = [recordCopy generateExploreTileImageAssetHandleWithAssetManager:managerCopy];
      exploreTileImageAssetHandle = v17->_exploreTileImageAssetHandle;
      v17->_exploreTileImageAssetHandle = v72;

      themeConfiguration = [recordCopy themeConfiguration];
      v75 = [themeConfiguration dataUsingEncoding:4];

      if (v75)
      {
        [MEMORY[0x1E696ACB0] JSONObjectWithData:v75 options:0 error:0];
        v76 = v122 = contextCopy;
        v121 = [v76 objectForKeyedSubscript:@"exploreTileBackgroundColor"];
        v77 = [FCColor colorWithHexString:v121];
        themeColor = v17->_themeColor;
        v17->_themeColor = v77;

        v120 = [v76 objectForKeyedSubscript:@"darkStyleExploreTileBackgroundColor"];
        v79 = [FCColor colorWithHexString:v120];
        darkStyleThemeColor = v17->_darkStyleThemeColor;
        v17->_darkStyleThemeColor = v79;

        v119 = [v76 objectForKeyedSubscript:@"puzzlePrimaryColor"];
        v81 = [FCColor colorWithHexString:v119];
        puzzlePrimaryColor = v17->_puzzlePrimaryColor;
        v17->_puzzlePrimaryColor = v81;

        v118 = [v76 objectForKeyedSubscript:@"darkStylePuzzlePrimaryColor"];
        v83 = [FCColor colorWithHexString:v118];
        darkStylePuzzlePrimaryColor = v17->_darkStylePuzzlePrimaryColor;
        v17->_darkStylePuzzlePrimaryColor = v83;

        v117 = [v76 objectForKeyedSubscript:@"groupTitleColor"];
        v85 = [FCColor colorWithHexString:v117];
        groupTitleColor = v17->_groupTitleColor;
        v17->_groupTitleColor = v85;

        v116 = [v76 objectForKeyedSubscript:@"darkStyleGroupTitleColor"];
        v87 = [FCColor colorWithHexString:v116];
        groupDarkStyleTitleColor = v17->_groupDarkStyleTitleColor;
        v17->_groupDarkStyleTitleColor = v87;

        dictionary = [MEMORY[0x1E695DF90] dictionary];
        v115 = [v76 objectForKeyedSubscript:@"navigationBarTheme"];
        array = [MEMORY[0x1E695DF70] array];
        v124[0] = MEMORY[0x1E69E9820];
        v124[1] = 3221225472;
        v124[2] = __76__FCPuzzleType_initWithPuzzleTypeRecord_assetManager_context_interestToken___block_invoke;
        v124[3] = &unk_1E7C38AA8;
        v91 = dictionary;
        v125 = v91;
        v92 = array;
        v126 = v92;
        [v115 enumerateObjectsUsingBlock:v124];
        v93 = v75;
        v94 = identifier;
        v95 = tokenCopy;
        navigationBarThemeByRankID = v17->_navigationBarThemeByRankID;
        v17->_navigationBarThemeByRankID = v91;
        v97 = v91;

        orderedNavigationBarThemes = v17->_orderedNavigationBarThemes;
        v17->_orderedNavigationBarThemes = v92;
        v99 = v92;

        tokenCopy = v95;
        identifier = v94;
        v75 = v93;

        contextCopy = v122;
      }

      imagesResourceID = [recordCopy imagesResourceID];
      imageResourceID = v17->_imageResourceID;
      v17->_imageResourceID = imagesResourceID;

      v102 = [FCPuzzleTypeThumbnailDirectory alloc];
      imagesResourceID2 = [recordCopy imagesResourceID];
      v104 = [(FCPuzzleTypeThumbnailDirectory *)v102 initWithResourceMapId:imagesResourceID2 assetManager:managerCopy context:contextCopy];
      thumbnailDirectory = v17->_thumbnailDirectory;
      v17->_thumbnailDirectory = v104;

      language = [recordCopy language];
      language = v17->_language;
      v17->_language = language;

      blockedStorefrontIDs = [recordCopy blockedStorefrontIDs];
      blockedStorefrontIDs = v17->_blockedStorefrontIDs;
      v17->_blockedStorefrontIDs = blockedStorefrontIDs;

      allowedStorefrontIDs = [recordCopy allowedStorefrontIDs];
      allowedStorefrontIDs = v17->_allowedStorefrontIDs;
      v17->_allowedStorefrontIDs = allowedStorefrontIDs;

      v17->_minimumNewsVersion = [recordCopy minimumNewsVersion];
      v17->_isPublic = [recordCopy isPublic];

      objc_autoreleasePoolPop(context);
    }

    else
    {

      v17 = 0;
    }
  }

  v112 = *MEMORY[0x1E69E9840];
  return v17;
}

void __76__FCPuzzleType_initWithPuzzleTypeRecord_assetManager_context_interestToken___block_invoke(uint64_t a1, void *a2)
{
  v46 = a2;
  v39 = [v46 objectForKeyedSubscript:@"backgroundColor"];
  if (v39)
  {
    v44 = [FCColor colorWithHexString:v39];
  }

  else
  {
    v44 = 0;
  }

  v38 = [v46 objectForKeyedSubscript:@"backgroundDarkModeColor"];
  if (v38)
  {
    v43 = [FCColor colorWithHexString:v38];
  }

  else
  {
    v43 = 0;
  }

  v37 = [v46 objectForKeyedSubscript:@"barButtonItemTintColor"];
  if (v37)
  {
    v42 = [FCColor colorWithHexString:v37];
  }

  else
  {
    v42 = 0;
  }

  v41 = [v46 objectForKeyedSubscript:@"barButtonItemTintDarkModeColor"];
  if (v41)
  {
    v40 = [FCColor colorWithHexString:v41];
  }

  else
  {
    v40 = 0;
  }

  v2 = [v46 objectForKeyedSubscript:@"barButtonItemBackgroundColor"];
  v35 = v2;
  if (v2)
  {
    v45 = [FCColor colorWithHexString:v2];
  }

  else
  {
    v45 = 0;
  }

  v3 = [v46 objectForKeyedSubscript:@"barButtonItemBackgroundDarkModeColor"];
  v34 = v3;
  if (v3)
  {
    v4 = [FCColor colorWithHexString:v3];
  }

  else
  {
    v4 = 0;
  }

  v5 = [v46 objectForKeyedSubscript:@"shareTextForegroundColor"];
  v33 = v5;
  if (v5)
  {
    v6 = [FCColor colorWithHexString:v5];
  }

  else
  {
    v6 = 0;
  }

  v7 = [v46 objectForKeyedSubscript:@"shareText2ForegroundColor"];
  v32 = v7;
  if (v7)
  {
    v8 = [FCColor colorWithHexString:v7];
  }

  else
  {
    v8 = 0;
  }

  v9 = [v46 objectForKeyedSubscript:@"shareText2BackgroundColor"];
  v31 = v9;
  if (v9)
  {
    v26 = [FCColor colorWithHexString:v9];
  }

  else
  {
    v26 = 0;
  }

  v30 = [v46 objectForKeyedSubscript:@"shareText2UseLargeFontNoCapsule"];
  v24 = [v30 BOOLValue];
  v10 = [v46 objectForKeyedSubscript:@"shareText3ForegroundColor"];
  v29 = v10;
  if (v10)
  {
    v11 = [FCColor colorWithHexString:v10];
  }

  else
  {
    v11 = 0;
  }

  v12 = [v46 objectForKeyedSubscript:@"shareText3BackgroundColor"];
  v28 = v12;
  if (v12)
  {
    v13 = [FCColor colorWithHexString:v12];
  }

  else
  {
    v13 = 0;
  }

  v14 = [v46 objectForKeyedSubscript:@"rankForegroundColor"];
  v27 = v14;
  v15 = v6;
  if (v14)
  {
    v16 = [FCColor colorWithHexString:v14];
  }

  else
  {
    v16 = 0;
  }

  v17 = [v46 objectForKeyedSubscript:@"rankForegroundDarkModeColor"];
  if (v17)
  {
    v18 = [FCColor colorWithHexString:v17];
  }

  else
  {
    v18 = 0;
  }

  v19 = v40;
  v20 = [v46 objectForKeyedSubscript:@"rankIdentifier"];
  v36 = v15;
  v21 = v13;
  if (v20)
  {
    LOBYTE(v23) = v24;
    v22 = [[FCPuzzleNavigationBarTheme alloc] initWithNavigationBarBackgroundColor:v44 navigationBarBackgroundDarkModeColor:v43 rankForegroundColor:v16 rankForegroundDarkModeColor:v18 barButtonItemTintColor:v42 barButtonItemTintDarkModeColor:v40 barButtonItemBackgroundColor:v45 barButtonItemBackgroundDarkModeColor:v4 shareTextForegroundColor:v36 shareText2ForegroundColor:v8 shareText2BackgroundColor:v26 shareText2UseLargeFontNoCapsule:v23 shareText3ForegroundColor:v11 shareText3BackgroundColor:v13];
    [*(a1 + 32) setObject:v22 forKey:v20];
    v19 = v40;
    [*(a1 + 40) addObject:v22];
  }
}

- (FCPuzzleType)initWithPuzzleType:(id)type overrides:(id)overrides
{
  typeCopy = type;
  overridesCopy = overrides;
  identifier = [typeCopy identifier];
  name = [typeCopy name];
  nameCompact = [typeCopy nameCompact];
  kind = [typeCopy kind];
  behaviorFlags = [typeCopy behaviorFlags];
  engineResourceID = [typeCopy engineResourceID];
  superfeedConfigResourceID = [typeCopy superfeedConfigResourceID];
  latestPuzzleIDs = [typeCopy latestPuzzleIDs];
  promotedPuzzleIDs = [typeCopy promotedPuzzleIDs];
  nameImageAssetHandle = [typeCopy nameImageAssetHandle];
  nameImageCompactAssetHandle = [typeCopy nameImageCompactAssetHandle];
  nameImageMaskAssetHandle = [typeCopy nameImageMaskAssetHandle];
  nameImageForDarkBackgroundAssetHandle = [typeCopy nameImageForDarkBackgroundAssetHandle];
  feedNavImageAssetHandle = [typeCopy feedNavImageAssetHandle];
  coverImageAssetHandle = [typeCopy coverImageAssetHandle];
  navigationChromeBackgroundImage = [typeCopy navigationChromeBackgroundImage];
  navigationChromeBackgroundImageCompact = [typeCopy navigationChromeBackgroundImageCompact];
  navigationChromeBackgroundImageLarge = [typeCopy navigationChromeBackgroundImageLarge];
  darkStyleNavigationChromeBackgroundImage = [typeCopy darkStyleNavigationChromeBackgroundImage];
  darkStyleNavigationChromeBackgroundImageCompact = [typeCopy darkStyleNavigationChromeBackgroundImageCompact];
  darkStyleNavigationChromeBackgroundImageLarge = [typeCopy darkStyleNavigationChromeBackgroundImageLarge];
  language = [typeCopy language];
  allowedStorefrontIDs = [typeCopy allowedStorefrontIDs];
  blockedStorefrontIDs = [typeCopy blockedStorefrontIDs];
  minimumNewsVersion = [typeCopy minimumNewsVersion];
  loadDate = [typeCopy loadDate];
  fetchDate = [typeCopy fetchDate];
  lastModifiedDate = [typeCopy lastModifiedDate];
  exploreTileImageAssetHandle = [overridesCopy exploreTileImageAssetHandle];
  exploreTileImageAssetHandle2 = exploreTileImageAssetHandle;
  if (!exploreTileImageAssetHandle)
  {
    exploreTileImageAssetHandle2 = [typeCopy exploreTileImageAssetHandle];
  }

  versionKey = [typeCopy versionKey];
  titleDisplayPrefix = [typeCopy titleDisplayPrefix];
  titleDisplaySuffix = [typeCopy titleDisplaySuffix];
  themeColor = [overridesCopy themeColor];
  themeColor2 = themeColor;
  if (!themeColor)
  {
    themeColor2 = [typeCopy themeColor];
  }

  puzzlePrimaryColor = [typeCopy puzzlePrimaryColor];
  v22 = overridesCopy;
  darkStyleThemeColor = [overridesCopy darkStyleThemeColor];
  darkStyleThemeColor2 = darkStyleThemeColor;
  if (!darkStyleThemeColor)
  {
    darkStyleThemeColor2 = [typeCopy darkStyleThemeColor];
  }

  darkStylePuzzlePrimaryColor = [typeCopy darkStylePuzzlePrimaryColor];
  groupTitleColor = [typeCopy groupTitleColor];
  groupDarkStyleTitleColor = [typeCopy groupDarkStyleTitleColor];
  thumbnailDirectory = [typeCopy thumbnailDirectory];
  LOBYTE(v17) = [typeCopy isPublic];
  v21 = [(FCPuzzleType *)self initWithIdentifier:identifier name:name nameCompact:nameCompact kind:kind behaviorFlags:behaviorFlags engineResourceID:engineResourceID superfeedConfigResourceID:superfeedConfigResourceID latestPuzzleIDs:latestPuzzleIDs promotedPuzzleIDs:promotedPuzzleIDs nameImageAssetHandle:nameImageAssetHandle nameImageCompactAssetHandle:nameImageCompactAssetHandle nameImageMaskAssetHandle:nameImageMaskAssetHandle nameImageForDarkBackgroundAssetHandle:nameImageForDarkBackgroundAssetHandle feedNavImageAssetHandle:feedNavImageAssetHandle coverImageAssetHandle:coverImageAssetHandle navigationChromeBackgroundImageHandle:navigationChromeBackgroundImage navigationChromeBackgroundImageCompactHandle:navigationChromeBackgroundImageCompact navigationChromeBackgroundImageLargeHandle:navigationChromeBackgroundImageLarge navigationChromeBackgroundDarkModeImageHandle:darkStyleNavigationChromeBackgroundImage navigationChromeBackgroundDarkModeImageCompactHandle:darkStyleNavigationChromeBackgroundImageCompact navigationChromeBackgroundDarkModeImageLargeHandle:darkStyleNavigationChromeBackgroundImageLarge language:language allowedStorefrontIDs:allowedStorefrontIDs blockedStorefrontIDs:blockedStorefrontIDs minimumNewsVersion:minimumNewsVersion loadDate:loadDate fetchDate:fetchDate lastModifiedDate:lastModifiedDate exploreTileImageAssetHandle:exploreTileImageAssetHandle2 versionKey:versionKey titleDisplayPrefix:titleDisplayPrefix titleDisplaySuffix:titleDisplaySuffix themeColor:themeColor2 puzzlePrimaryColor:puzzlePrimaryColor darkStyleThemeColor:darkStyleThemeColor2 darkStylePuzzlePrimaryColor:darkStylePuzzlePrimaryColor groupTitleColor:groupTitleColor groupDarkStyleTitleColor:groupDarkStyleTitleColor thumbnailDirectory:thumbnailDirectory isPublic:v17];

  if (!darkStyleThemeColor)
  {
  }

  if (!themeColor)
  {
  }

  if (!exploreTileImageAssetHandle)
  {
  }

  return v21;
}

- (FCContentArchive)contentArchive
{
  puzzleTypeRecord = [(FCPuzzleType *)self puzzleTypeRecord];
  v3 = [FCContentArchive archiveWithRecord:puzzleTypeRecord];

  return v3;
}

- (FCContentManifest)contentManifest
{
  puzzleTypeRecord = [(FCPuzzleType *)self puzzleTypeRecord];
  if (puzzleTypeRecord)
  {
    puzzleTypeRecord2 = [(FCPuzzleType *)self puzzleTypeRecord];
    base = [puzzleTypeRecord2 base];
    contentManifest = [base contentManifest];
  }

  else
  {
    contentManifest = +[FCContentManifest empty];
  }

  return contentManifest;
}

- (BOOL)isEqualToTag:(id)tag
{
  tagCopy = tag;
  v5 = objc_opt_class();
  v6 = FCCheckedDynamicCast(v5, tagCopy);

  identifier = self->_identifier;
  identifier = [v6 identifier];
  LOBYTE(identifier) = [(NSString *)identifier isEqualToString:identifier];

  return identifier;
}

- (NSString)nameForSharing
{
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  v4 = [mainBundle localizedStringForKey:@"Apple News+ %@" value:&stru_1F2DC7DC0 table:0];

  v5 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:v4, self->_name];

  return v5;
}

- (FCTagBanner)defaultBannerImage
{
  v3 = [FCTagBanner alloc];
  v4 = [(FCTagBanner *)v3 initWithAssetHandle:self->_nameImageAssetHandle size:*MEMORY[0x1E695F060] insets:*(MEMORY[0x1E695F060] + 8), 0.0, 0.0, 0.0, 0.0];

  return v4;
}

- (CGSize)nameImageSize
{
  v2 = *MEMORY[0x1E695F060];
  v3 = *(MEMORY[0x1E695F060] + 8);
  result.height = v3;
  result.width = v2;
  return result;
}

- (FCEdgeInsets)nameImageInsets
{
  v2 = 0.0;
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (FCEdgeInsets)nameImageForDarkBackgroundInsets
{
  v2 = 0.0;
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (FCEdgeInsets)nameImageMaskInsets
{
  v2 = 0.0;
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (FCAssetHandle)logoImageAssetHandle
{
  defaultBannerImage = [(FCPuzzleType *)self defaultBannerImage];
  assetHandle = [defaultBannerImage assetHandle];

  return assetHandle;
}

- (CGSize)nameImageMaskSize
{
  v2 = *MEMORY[0x1E695F060];
  v3 = *(MEMORY[0x1E695F060] + 8);
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)nameImageForDarkBackgroundSize
{
  v2 = *MEMORY[0x1E695F060];
  v3 = *(MEMORY[0x1E695F060] + 8);
  result.height = v3;
  result.width = v2;
  return result;
}

@end