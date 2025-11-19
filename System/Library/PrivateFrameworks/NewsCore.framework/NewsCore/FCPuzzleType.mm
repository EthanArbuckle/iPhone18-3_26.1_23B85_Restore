@interface FCPuzzleType
- (BOOL)isEqualToTag:(id)a3;
- (CGSize)nameImageForDarkBackgroundSize;
- (CGSize)nameImageMaskSize;
- (CGSize)nameImageSize;
- (FCAssetHandle)logoImageAssetHandle;
- (FCContentArchive)contentArchive;
- (FCContentManifest)contentManifest;
- (FCEdgeInsets)nameImageForDarkBackgroundInsets;
- (FCEdgeInsets)nameImageInsets;
- (FCEdgeInsets)nameImageMaskInsets;
- (FCPuzzleType)initWithIdentifier:(id)a3 name:(id)a4 nameCompact:(id)a5 kind:(id)a6 behaviorFlags:(unint64_t)a7 engineResourceID:(id)a8 superfeedConfigResourceID:(id)a9 latestPuzzleIDs:(id)a10 promotedPuzzleIDs:(id)a11 nameImageAssetHandle:(id)a12 nameImageCompactAssetHandle:(id)a13 nameImageMaskAssetHandle:(id)a14 nameImageForDarkBackgroundAssetHandle:(id)a15 feedNavImageAssetHandle:(id)a16 coverImageAssetHandle:(id)a17 navigationChromeBackgroundImageHandle:(id)a18 navigationChromeBackgroundImageCompactHandle:(id)a19 navigationChromeBackgroundImageLargeHandle:(id)a20 navigationChromeBackgroundDarkModeImageHandle:(id)a21 navigationChromeBackgroundDarkModeImageCompactHandle:(id)a22 navigationChromeBackgroundDarkModeImageLargeHandle:(id)a23 language:(id)a24 allowedStorefrontIDs:(id)a25 blockedStorefrontIDs:(id)a26 minimumNewsVersion:(int64_t)a27 loadDate:(id)a28 fetchDate:(id)a29 lastModifiedDate:(id)a30 exploreTileImageAssetHandle:(id)a31 versionKey:(id)a32 titleDisplayPrefix:(id)a33 titleDisplaySuffix:(id)a34 themeColor:(id)a35 puzzlePrimaryColor:(id)a36 darkStyleThemeColor:(id)a37 darkStylePuzzlePrimaryColor:(id)a38 groupTitleColor:(id)a39 groupDarkStyleTitleColor:(id)a40 thumbnailDirectory:(id)a41 isPublic:(BOOL)a42;
- (FCPuzzleType)initWithPuzzleType:(id)a3 overrides:(id)a4;
- (FCPuzzleType)initWithPuzzleTypeRecord:(id)a3 assetManager:(id)a4 context:(id)a5 interestToken:(id)a6;
- (FCTagBanner)defaultBannerImage;
- (NSString)nameForSharing;
@end

@implementation FCPuzzleType

- (FCPuzzleType)initWithIdentifier:(id)a3 name:(id)a4 nameCompact:(id)a5 kind:(id)a6 behaviorFlags:(unint64_t)a7 engineResourceID:(id)a8 superfeedConfigResourceID:(id)a9 latestPuzzleIDs:(id)a10 promotedPuzzleIDs:(id)a11 nameImageAssetHandle:(id)a12 nameImageCompactAssetHandle:(id)a13 nameImageMaskAssetHandle:(id)a14 nameImageForDarkBackgroundAssetHandle:(id)a15 feedNavImageAssetHandle:(id)a16 coverImageAssetHandle:(id)a17 navigationChromeBackgroundImageHandle:(id)a18 navigationChromeBackgroundImageCompactHandle:(id)a19 navigationChromeBackgroundImageLargeHandle:(id)a20 navigationChromeBackgroundDarkModeImageHandle:(id)a21 navigationChromeBackgroundDarkModeImageCompactHandle:(id)a22 navigationChromeBackgroundDarkModeImageLargeHandle:(id)a23 language:(id)a24 allowedStorefrontIDs:(id)a25 blockedStorefrontIDs:(id)a26 minimumNewsVersion:(int64_t)a27 loadDate:(id)a28 fetchDate:(id)a29 lastModifiedDate:(id)a30 exploreTileImageAssetHandle:(id)a31 versionKey:(id)a32 titleDisplayPrefix:(id)a33 titleDisplaySuffix:(id)a34 themeColor:(id)a35 puzzlePrimaryColor:(id)a36 darkStyleThemeColor:(id)a37 darkStylePuzzlePrimaryColor:(id)a38 groupTitleColor:(id)a39 groupDarkStyleTitleColor:(id)a40 thumbnailDirectory:(id)a41 isPublic:(BOOL)a42
{
  v89 = a3;
  v88 = a4;
  v87 = a5;
  v86 = a6;
  v54 = a8;
  v85 = a8;
  v84 = a9;
  v83 = a10;
  v82 = a11;
  v81 = a12;
  v80 = a13;
  v79 = a14;
  v78 = a15;
  v77 = a16;
  v76 = a17;
  v75 = a18;
  v74 = a19;
  v73 = a20;
  v72 = a21;
  v71 = a22;
  v70 = a23;
  v69 = a24;
  v68 = a25;
  v46 = a26;
  v47 = a28;
  v67 = a29;
  v48 = a30;
  v66 = a31;
  v65 = a32;
  v64 = a33;
  v63 = a34;
  v62 = a35;
  v61 = a36;
  v60 = a37;
  v59 = a38;
  v58 = a39;
  v56 = a40;
  v55 = a41;
  v90.receiver = self;
  v90.super_class = FCPuzzleType;
  v49 = [(FCPuzzleType *)&v90 init];
  v50 = v49;
  if (v49)
  {
    objc_storeStrong(&v49->_identifier, a3);
    objc_storeStrong(&v50->_name, a4);
    objc_storeStrong(&v50->_nameCompact, a5);
    objc_storeStrong(&v50->_kind, a6);
    v50->_behaviorFlags = a7;
    objc_storeStrong(&v50->_engineResourceID, v54);
    objc_storeStrong(&v50->_superfeedConfigResourceID, a9);
    objc_storeStrong(&v50->_latestPuzzleIDs, a10);
    objc_storeStrong(&v50->_promotedPuzzleIDs, a11);
    objc_storeStrong(&v50->_nameImageAssetHandle, a12);
    objc_storeStrong(&v50->_nameImageCompactAssetHandle, a13);
    objc_storeStrong(&v50->_nameImageMaskAssetHandle, a14);
    objc_storeStrong(&v50->_nameImageForDarkBackgroundAssetHandle, a15);
    objc_storeStrong(&v50->_feedNavImageAssetHandle, a16);
    objc_storeStrong(&v50->_coverImageAssetHandle, a17);
    objc_storeStrong(&v50->_navigationChromeBackgroundImage, a18);
    objc_storeStrong(&v50->_navigationChromeBackgroundImageCompact, a19);
    objc_storeStrong(&v50->_navigationChromeBackgroundImageLarge, a20);
    objc_storeStrong(&v50->_darkStyleNavigationChromeBackgroundImage, a21);
    objc_storeStrong(&v50->_darkStyleNavigationChromeBackgroundImageCompact, a22);
    objc_storeStrong(&v50->_darkStyleNavigationChromeBackgroundImageLarge, a23);
    objc_storeStrong(&v50->_language, a24);
    objc_storeStrong(&v50->_allowedStorefrontIDs, a25);
    objc_storeStrong(&v50->_blockedStorefrontIDs, a26);
    v50->_minimumNewsVersion = a27;
    objc_storeStrong(&v50->_loadDate, a28);
    objc_storeStrong(&v50->_fetchDate, a29);
    objc_storeStrong(&v50->_lastModifiedDate, a30);
    objc_storeStrong(&v50->_exploreTileImageAssetHandle, a31);
    objc_storeStrong(&v50->_themeColor, a35);
    objc_storeStrong(&v50->_puzzlePrimaryColor, a36);
    objc_storeStrong(&v50->_darkStyleThemeColor, a37);
    objc_storeStrong(&v50->_darkStylePuzzlePrimaryColor, a38);
    objc_storeStrong(&v50->_groupTitleColor, a39);
    objc_storeStrong(&v50->_groupDarkStyleTitleColor, a40);
    objc_storeStrong(&v50->_versionKey, a32);
    objc_storeStrong(&v50->_titleDisplayPrefix, a33);
    objc_storeStrong(&v50->_titleDisplaySuffix, a34);
    objc_storeStrong(&v50->_thumbnailDirectory, a41);
    v50->_isPublic = a42;
  }

  return v50;
}

- (FCPuzzleType)initWithPuzzleTypeRecord:(id)a3 assetManager:(id)a4 context:(id)a5 interestToken:(id)a6
{
  v136 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = [v11 base];
  v16 = [v15 identifier];

  if (!v16 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
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
    if ([v16 length])
    {
      context = objc_autoreleasePoolPush();
      objc_storeStrong(&v17->_puzzleTypeRecord, a3);
      objc_storeStrong(&v17->_interestToken, a6);
      v18 = [MEMORY[0x1E695DF00] date];
      loadDate = v17->_loadDate;
      v17->_loadDate = v18;

      v20 = MEMORY[0x1E695DF00];
      v21 = [v11 base];
      v22 = [v21 fetchDate];
      v23 = [v20 dateWithPBDate:v22];
      fetchDate = v17->_fetchDate;
      v17->_fetchDate = v23;

      v25 = MEMORY[0x1E695DF00];
      v26 = [v11 base];
      v27 = [v26 modificationDate];
      v28 = [v25 dateWithPBDate:v27];
      lastModifiedDate = v17->_lastModifiedDate;
      v17->_lastModifiedDate = v28;

      v30 = [v16 copy];
      identifier = v17->_identifier;
      v17->_identifier = v30;

      v32 = [v11 name];
      name = v17->_name;
      v17->_name = v32;

      v34 = [v11 nameCompact];
      nameCompact = v17->_nameCompact;
      v17->_nameCompact = v34;

      v36 = [v11 kind];
      kind = v17->_kind;
      v17->_kind = v36;

      v17->_behaviorFlags = [v11 behaviorFlags];
      v38 = [v11 engineResourceID];
      engineResourceID = v17->_engineResourceID;
      v17->_engineResourceID = v38;

      v40 = [v11 superfeedConfigResourceID];
      superfeedConfigResourceID = v17->_superfeedConfigResourceID;
      v17->_superfeedConfigResourceID = v40;

      v42 = [v11 latestPuzzleIDs];
      latestPuzzleIDs = v17->_latestPuzzleIDs;
      v17->_latestPuzzleIDs = v42;

      v44 = [v11 promotedPuzzleIDs];
      promotedPuzzleIDs = v17->_promotedPuzzleIDs;
      v17->_promotedPuzzleIDs = v44;

      v46 = [v11 generateNameImageAssetHandleWithAssetManager:v12];
      nameImageAssetHandle = v17->_nameImageAssetHandle;
      v17->_nameImageAssetHandle = v46;

      v48 = [v11 generateNameImageCompactAssetHandleWithAssetManager:v12];
      nameImageCompactAssetHandle = v17->_nameImageCompactAssetHandle;
      v17->_nameImageCompactAssetHandle = v48;

      v50 = [v11 generateNameImageForDarkBackgroundAssetHandleWithAssetManager:v12];
      nameImageForDarkBackgroundAssetHandle = v17->_nameImageForDarkBackgroundAssetHandle;
      v17->_nameImageForDarkBackgroundAssetHandle = v50;

      v52 = [v11 generateNameImageMaskAssetHandleWithAssetManager:v12];
      nameImageMaskAssetHandle = v17->_nameImageMaskAssetHandle;
      v17->_nameImageMaskAssetHandle = v52;

      v54 = [v11 generateCoverImageAssetHandleWithAssetManager:v12];
      coverImageAssetHandle = v17->_coverImageAssetHandle;
      v17->_coverImageAssetHandle = v54;

      v56 = [v11 generateFeedNavImageAssetHandleWithAssetManager:v12];
      feedNavImageAssetHandle = v17->_feedNavImageAssetHandle;
      v17->_feedNavImageAssetHandle = v56;

      v58 = [v11 generateFeedNavImageAssetHandleWithAssetManager:v12];
      feedNavImageHQAssetHandle = v17->_feedNavImageHQAssetHandle;
      v17->_feedNavImageHQAssetHandle = v58;

      v60 = [v11 generateNavigationChromeBackgroundImageHandleWithAssetManager:v12];
      navigationChromeBackgroundImage = v17->_navigationChromeBackgroundImage;
      v17->_navigationChromeBackgroundImage = v60;

      v62 = [v11 generateNavigationChromeBackgroundImageCompactHandleWithAssetManager:v12];
      navigationChromeBackgroundImageCompact = v17->_navigationChromeBackgroundImageCompact;
      v17->_navigationChromeBackgroundImageCompact = v62;

      v64 = [v11 generateNavigationChromeBackgroundImageLargeHandleWithAssetManager:v12];
      navigationChromeBackgroundImageLarge = v17->_navigationChromeBackgroundImageLarge;
      v17->_navigationChromeBackgroundImageLarge = v64;

      v66 = [v11 generateNavigationChromeBackgroundDarkModeImageHandleWithAssetManager:v12];
      darkStyleNavigationChromeBackgroundImage = v17->_darkStyleNavigationChromeBackgroundImage;
      v17->_darkStyleNavigationChromeBackgroundImage = v66;

      v68 = [v11 generateNavigationChromeBackgroundDarkModeImageCompactHandleWithAssetManager:v12];
      darkStyleNavigationChromeBackgroundImageCompact = v17->_darkStyleNavigationChromeBackgroundImageCompact;
      v17->_darkStyleNavigationChromeBackgroundImageCompact = v68;

      v70 = [v11 generateNavigationChromeBackgroundDarkModeImageLargeHandleWithAssetManager:v12];
      darkStyleNavigationChromeBackgroundImageLarge = v17->_darkStyleNavigationChromeBackgroundImageLarge;
      v17->_darkStyleNavigationChromeBackgroundImageLarge = v70;

      v72 = [v11 generateExploreTileImageAssetHandleWithAssetManager:v12];
      exploreTileImageAssetHandle = v17->_exploreTileImageAssetHandle;
      v17->_exploreTileImageAssetHandle = v72;

      v74 = [v11 themeConfiguration];
      v75 = [v74 dataUsingEncoding:4];

      if (v75)
      {
        [MEMORY[0x1E696ACB0] JSONObjectWithData:v75 options:0 error:0];
        v76 = v122 = v13;
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

        v89 = [MEMORY[0x1E695DF90] dictionary];
        v115 = [v76 objectForKeyedSubscript:@"navigationBarTheme"];
        v90 = [MEMORY[0x1E695DF70] array];
        v124[0] = MEMORY[0x1E69E9820];
        v124[1] = 3221225472;
        v124[2] = __76__FCPuzzleType_initWithPuzzleTypeRecord_assetManager_context_interestToken___block_invoke;
        v124[3] = &unk_1E7C38AA8;
        v91 = v89;
        v125 = v91;
        v92 = v90;
        v126 = v92;
        [v115 enumerateObjectsUsingBlock:v124];
        v93 = v75;
        v94 = v16;
        v95 = v14;
        navigationBarThemeByRankID = v17->_navigationBarThemeByRankID;
        v17->_navigationBarThemeByRankID = v91;
        v97 = v91;

        orderedNavigationBarThemes = v17->_orderedNavigationBarThemes;
        v17->_orderedNavigationBarThemes = v92;
        v99 = v92;

        v14 = v95;
        v16 = v94;
        v75 = v93;

        v13 = v122;
      }

      v100 = [v11 imagesResourceID];
      imageResourceID = v17->_imageResourceID;
      v17->_imageResourceID = v100;

      v102 = [FCPuzzleTypeThumbnailDirectory alloc];
      v103 = [v11 imagesResourceID];
      v104 = [(FCPuzzleTypeThumbnailDirectory *)v102 initWithResourceMapId:v103 assetManager:v12 context:v13];
      thumbnailDirectory = v17->_thumbnailDirectory;
      v17->_thumbnailDirectory = v104;

      v106 = [v11 language];
      language = v17->_language;
      v17->_language = v106;

      v108 = [v11 blockedStorefrontIDs];
      blockedStorefrontIDs = v17->_blockedStorefrontIDs;
      v17->_blockedStorefrontIDs = v108;

      v110 = [v11 allowedStorefrontIDs];
      allowedStorefrontIDs = v17->_allowedStorefrontIDs;
      v17->_allowedStorefrontIDs = v110;

      v17->_minimumNewsVersion = [v11 minimumNewsVersion];
      v17->_isPublic = [v11 isPublic];

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

- (FCPuzzleType)initWithPuzzleType:(id)a3 overrides:(id)a4
{
  v5 = a3;
  v6 = a4;
  v53 = [v5 identifier];
  v52 = [v5 name];
  v51 = [v5 nameCompact];
  v50 = [v5 kind];
  v19 = [v5 behaviorFlags];
  v49 = [v5 engineResourceID];
  v48 = [v5 superfeedConfigResourceID];
  v47 = [v5 latestPuzzleIDs];
  v46 = [v5 promotedPuzzleIDs];
  v45 = [v5 nameImageAssetHandle];
  v44 = [v5 nameImageCompactAssetHandle];
  v43 = [v5 nameImageMaskAssetHandle];
  v42 = [v5 nameImageForDarkBackgroundAssetHandle];
  v41 = [v5 feedNavImageAssetHandle];
  v40 = [v5 coverImageAssetHandle];
  v39 = [v5 navigationChromeBackgroundImage];
  v38 = [v5 navigationChromeBackgroundImageCompact];
  v37 = [v5 navigationChromeBackgroundImageLarge];
  v36 = [v5 darkStyleNavigationChromeBackgroundImage];
  v35 = [v5 darkStyleNavigationChromeBackgroundImageCompact];
  v34 = [v5 darkStyleNavigationChromeBackgroundImageLarge];
  v33 = [v5 language];
  v32 = [v5 allowedStorefrontIDs];
  v31 = [v5 blockedStorefrontIDs];
  v18 = [v5 minimumNewsVersion];
  v30 = [v5 loadDate];
  v29 = [v5 fetchDate];
  v28 = [v5 lastModifiedDate];
  v7 = [v6 exploreTileImageAssetHandle];
  v24 = v7;
  if (!v7)
  {
    v24 = [v5 exploreTileImageAssetHandle];
  }

  v27 = [v5 versionKey];
  v26 = [v5 titleDisplayPrefix];
  v25 = [v5 titleDisplaySuffix];
  v8 = [v6 themeColor];
  v23 = v8;
  if (!v8)
  {
    v23 = [v5 themeColor];
  }

  v9 = [v5 puzzlePrimaryColor];
  v22 = v6;
  v10 = [v6 darkStyleThemeColor];
  v11 = v10;
  if (!v10)
  {
    v11 = [v5 darkStyleThemeColor];
  }

  v12 = [v5 darkStylePuzzlePrimaryColor];
  v13 = [v5 groupTitleColor];
  v14 = [v5 groupDarkStyleTitleColor];
  v15 = [v5 thumbnailDirectory];
  LOBYTE(v17) = [v5 isPublic];
  v21 = [(FCPuzzleType *)self initWithIdentifier:v53 name:v52 nameCompact:v51 kind:v50 behaviorFlags:v19 engineResourceID:v49 superfeedConfigResourceID:v48 latestPuzzleIDs:v47 promotedPuzzleIDs:v46 nameImageAssetHandle:v45 nameImageCompactAssetHandle:v44 nameImageMaskAssetHandle:v43 nameImageForDarkBackgroundAssetHandle:v42 feedNavImageAssetHandle:v41 coverImageAssetHandle:v40 navigationChromeBackgroundImageHandle:v39 navigationChromeBackgroundImageCompactHandle:v38 navigationChromeBackgroundImageLargeHandle:v37 navigationChromeBackgroundDarkModeImageHandle:v36 navigationChromeBackgroundDarkModeImageCompactHandle:v35 navigationChromeBackgroundDarkModeImageLargeHandle:v34 language:v33 allowedStorefrontIDs:v32 blockedStorefrontIDs:v31 minimumNewsVersion:v18 loadDate:v30 fetchDate:v29 lastModifiedDate:v28 exploreTileImageAssetHandle:v24 versionKey:v27 titleDisplayPrefix:v26 titleDisplaySuffix:v25 themeColor:v23 puzzlePrimaryColor:v9 darkStyleThemeColor:v11 darkStylePuzzlePrimaryColor:v12 groupTitleColor:v13 groupDarkStyleTitleColor:v14 thumbnailDirectory:v15 isPublic:v17];

  if (!v10)
  {
  }

  if (!v8)
  {
  }

  if (!v7)
  {
  }

  return v21;
}

- (FCContentArchive)contentArchive
{
  v2 = [(FCPuzzleType *)self puzzleTypeRecord];
  v3 = [FCContentArchive archiveWithRecord:v2];

  return v3;
}

- (FCContentManifest)contentManifest
{
  v3 = [(FCPuzzleType *)self puzzleTypeRecord];
  if (v3)
  {
    v4 = [(FCPuzzleType *)self puzzleTypeRecord];
    v5 = [v4 base];
    v6 = [v5 contentManifest];
  }

  else
  {
    v6 = +[FCContentManifest empty];
  }

  return v6;
}

- (BOOL)isEqualToTag:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = FCCheckedDynamicCast(v5, v4);

  identifier = self->_identifier;
  v8 = [v6 identifier];
  LOBYTE(identifier) = [(NSString *)identifier isEqualToString:v8];

  return identifier;
}

- (NSString)nameForSharing
{
  v3 = [MEMORY[0x1E696AAE8] mainBundle];
  v4 = [v3 localizedStringForKey:@"Apple News+ %@" value:&stru_1F2DC7DC0 table:0];

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
  v2 = [(FCPuzzleType *)self defaultBannerImage];
  v3 = [v2 assetHandle];

  return v3;
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