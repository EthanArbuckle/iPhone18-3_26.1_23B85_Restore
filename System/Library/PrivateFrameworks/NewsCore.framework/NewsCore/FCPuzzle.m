@interface FCPuzzle
- (FCContentArchive)contentArchive;
- (FCContentManifest)contentManifest;
- (FCPuzzle)initWithIdentifier:(id)a3 title:(id)a4 subtitle:(id)a5 puzzleDescription:(id)a6 puzzleType:(id)a7 dataResourceID:(id)a8 authors:(id)a9 publishDate:(id)a10 isPaid:(BOOL)a11 difficulty:(int64_t)a12 difficultyDescription:(id)a13 relatedPuzzleIDs:(id)a14 thumbnailSmallImageAssetHandle:(id)a15 thumbnailLargeImageAssetHandle:(id)a16 loadDate:(id)a17 teaserClue:(id)a18 teaserAnswer:(id)a19 teaserInfo:(id)a20 teaserDirection:(id)a21 teaserNumber:(id)a22 language:(id)a23 blockedStorefrontIDs:(id)a24 allowedStorefrontIDs:(id)a25 minimumNewsVersion:(int64_t)a26 showInfoModalOnFirstPlay:(BOOL)a27 ignoreFromStatsAndStreaks:(BOOL)a28 isDeprecated:(BOOL)a29 isDraft:(BOOL)a30 lastModifiedDate:(id)a31;
- (FCPuzzle)initWithPuzzle:(id)a3 overrides:(id)a4;
- (FCPuzzle)initWithPuzzleRecord:(id)a3 puzzleType:(id)a4 assetManager:(id)a5 interestToken:(id)a6 difficultyDescriptions:(id)a7;
- (NSString)publishDateString;
@end

@implementation FCPuzzle

- (FCPuzzle)initWithIdentifier:(id)a3 title:(id)a4 subtitle:(id)a5 puzzleDescription:(id)a6 puzzleType:(id)a7 dataResourceID:(id)a8 authors:(id)a9 publishDate:(id)a10 isPaid:(BOOL)a11 difficulty:(int64_t)a12 difficultyDescription:(id)a13 relatedPuzzleIDs:(id)a14 thumbnailSmallImageAssetHandle:(id)a15 thumbnailLargeImageAssetHandle:(id)a16 loadDate:(id)a17 teaserClue:(id)a18 teaserAnswer:(id)a19 teaserInfo:(id)a20 teaserDirection:(id)a21 teaserNumber:(id)a22 language:(id)a23 blockedStorefrontIDs:(id)a24 allowedStorefrontIDs:(id)a25 minimumNewsVersion:(int64_t)a26 showInfoModalOnFirstPlay:(BOOL)a27 ignoreFromStatsAndStreaks:(BOOL)a28 isDeprecated:(BOOL)a29 isDraft:(BOOL)a30 lastModifiedDate:(id)a31
{
  v70 = a3;
  v50 = a4;
  v69 = a4;
  v51 = a5;
  v68 = a5;
  v52 = a6;
  v67 = a6;
  v53 = a7;
  v36 = a7;
  v65 = a8;
  v64 = a9;
  v63 = a10;
  v62 = a13;
  v61 = a14;
  v60 = a15;
  v59 = a16;
  v58 = a17;
  v57 = a18;
  v37 = a19;
  v38 = a20;
  v39 = a21;
  v40 = a22;
  v41 = a23;
  v55 = a24;
  v54 = a25;
  v42 = a31;
  v43 = [v70 length];
  v44 = 0;
  v66 = v36;
  if (v36 && v43)
  {
    v71.receiver = self;
    v71.super_class = FCPuzzle;
    v45 = [(FCPuzzle *)&v71 init];
    v46 = v45;
    if (v45)
    {
      objc_storeStrong(&v45->_identifier, a3);
      objc_storeStrong(&v46->_title, v50);
      objc_storeStrong(&v46->_subtitle, v51);
      objc_storeStrong(&v46->_puzzleDescription, v52);
      objc_storeStrong(&v46->_puzzleType, v53);
      objc_storeStrong(&v46->_dataResourceID, a8);
      objc_storeStrong(&v46->_authors, a9);
      objc_storeStrong(&v46->_publishDate, a10);
      v46->_paid = a11;
      v46->_difficulty = a12;
      objc_storeStrong(&v46->_difficultyDescription, a13);
      objc_storeStrong(&v46->_relatedPuzzleIDs, a14);
      objc_storeStrong(&v46->_thumbnailSmallImageAssetHandle, a15);
      objc_storeStrong(&v46->_thumbnailLargeImageAssetHandle, a16);
      objc_storeStrong(&v46->_loadDate, a17);
      objc_storeStrong(&v46->_teaserClue, a18);
      objc_storeStrong(&v46->_teaserAnswer, a19);
      objc_storeStrong(&v46->_teaserInfo, a20);
      objc_storeStrong(&v46->_teaserDirection, a21);
      objc_storeStrong(&v46->_teaserNumber, a22);
      objc_storeStrong(&v46->_language, a23);
      objc_storeStrong(&v46->_blockedStorefrontIDs, a24);
      objc_storeStrong(&v46->_allowedStorefrontIDs, a25);
      v46->_minimumNewsVersion = a26;
      v46->_showInfoModalOnFirstPlay = a27;
      v46->_ignoreFromStatsAndStreaks = a28;
      v46->_deprecated = a29;
      v46->_draft = a30;
      objc_storeStrong(&v46->_lastModifiedDate, a31);
    }

    v47 = v46;
    v44 = v47;
  }

  else
  {
    v47 = self;
  }

  return v44;
}

- (FCPuzzle)initWithPuzzleRecord:(id)a3 puzzleType:(id)a4 assetManager:(id)a5 interestToken:(id)a6 difficultyDescriptions:(id)a7
{
  v91 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v81 = a6;
  v16 = a7;
  v17 = [v13 base];
  v18 = [v17 identifier];

  if (!v18 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v79 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "identifier != 0"];
    *buf = 136315906;
    v84 = "[FCPuzzle initWithPuzzleRecord:puzzleType:assetManager:interestToken:difficultyDescriptions:]";
    v85 = 2080;
    v86 = "FCPuzzle.m";
    v87 = 1024;
    v88 = 140;
    v89 = 2114;
    v90 = v79;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v82.receiver = self;
  v82.super_class = FCPuzzle;
  v19 = [(FCPuzzle *)&v82 init];
  if (v19)
  {
    if ([v18 length])
    {
      context = objc_autoreleasePoolPush();
      objc_storeStrong(&v19->_puzzleRecord, a3);
      objc_storeStrong(&v19->_interestToken, a6);
      v20 = [MEMORY[0x1E695DF00] date];
      loadDate = v19->_loadDate;
      v19->_loadDate = v20;

      v22 = [v18 copy];
      identifier = v19->_identifier;
      v19->_identifier = v22;

      v24 = [v13 title];
      title = v19->_title;
      v19->_title = v24;

      v26 = [v13 subtitle];
      v27 = [v26 length];
      if (v27)
      {
        v27 = [v13 subtitle];
      }

      subtitle = v19->_subtitle;
      v19->_subtitle = v27;

      v29 = [v13 puzzleDescription];
      puzzleDescription = v19->_puzzleDescription;
      v19->_puzzleDescription = v29;

      objc_storeStrong(&v19->_puzzleType, a4);
      v31 = [v13 dataResourceID];
      dataResourceID = v19->_dataResourceID;
      v19->_dataResourceID = v31;

      v19->_paid = [v13 isPaid];
      v33 = [v13 authors];
      authors = v19->_authors;
      v19->_authors = v33;

      v35 = MEMORY[0x1E695DF00];
      v36 = [v13 publishedDate];
      v37 = [v35 dateWithPBDate:v36];
      publishDate = v19->_publishDate;
      v19->_publishDate = v37;

      v19->_difficulty = [v13 difficultyLevel];
      v39 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v13, "difficultyLevel")}];
      v40 = [v16 fc_safeObjectForKey:v39];
      v41 = v40;
      if (v40)
      {
        v42 = v40;
      }

      else
      {
        v42 = &stru_1F2DC7DC0;
      }

      objc_storeStrong(&v19->_difficultyDescription, v42);

      v43 = [v13 relatedPuzzleIDs];
      relatedPuzzleIDs = v19->_relatedPuzzleIDs;
      v19->_relatedPuzzleIDs = v43;

      v45 = [v14 thumbnailDirectory];
      v46 = v19->_publishDate;
      v47 = resolvedPuzzleTypeDifficultyWithPuzzleType(v14, v19->_difficulty);
      v48 = [v45 smallThumbnailForDate:v46 difficulty:v47];
      thumbnailSmallImageAssetHandle = v19->_thumbnailSmallImageAssetHandle;
      v19->_thumbnailSmallImageAssetHandle = v48;

      v50 = [v13 generateThumbnailLargeImageAssetHandleWithAssetManager:v15];
      thumbnailLargeImageAssetHandle = v19->_thumbnailLargeImageAssetHandle;
      v19->_thumbnailLargeImageAssetHandle = v50;

      v52 = [v13 teaserConfiguration];
      v53 = [v52 dataUsingEncoding:4];

      if (v53)
      {
        v54 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v53 options:0 error:0];
        v55 = [v54 objectForKeyedSubscript:@"interactiveClue"];

        v56 = [v55 objectForKeyedSubscript:@"clue"];
        teaserClue = v19->_teaserClue;
        v19->_teaserClue = v56;

        v58 = [v55 objectForKeyedSubscript:@"answer"];
        teaserAnswer = v19->_teaserAnswer;
        v19->_teaserAnswer = v58;

        v60 = [v55 objectForKeyedSubscript:@"hint"];
        teaserInfo = v19->_teaserInfo;
        v19->_teaserInfo = v60;

        v62 = [v55 objectForKeyedSubscript:@"direction"];
        teaserDirection = v19->_teaserDirection;
        v19->_teaserDirection = v62;

        v64 = [v55 objectForKeyedSubscript:@"number"];
        teaserNumber = v19->_teaserNumber;
        v19->_teaserNumber = v64;
      }

      v66 = [v13 language];
      language = v19->_language;
      v19->_language = v66;

      v68 = [v13 blockedStorefrontIDs];
      blockedStorefrontIDs = v19->_blockedStorefrontIDs;
      v19->_blockedStorefrontIDs = v68;

      v70 = [v13 allowedStorefrontIDs];
      allowedStorefrontIDs = v19->_allowedStorefrontIDs;
      v19->_allowedStorefrontIDs = v70;

      v19->_minimumNewsVersion = [v13 minimumNewsVersion];
      v19->_showInfoModalOnFirstPlay = [v13 behaviorFlags] & 1;
      v19->_ignoreFromStatsAndStreaks = ([v13 behaviorFlags] & 2) != 0;
      v19->_behaviorFlags = [v13 behaviorFlags];
      v19->_deprecated = [v13 isDeprecated];
      v19->_draft = [v13 isDraft];
      v72 = MEMORY[0x1E695DF00];
      v73 = [v13 base];
      v74 = [v73 modificationDate];
      v75 = [v72 dateWithPBDate:v74];
      lastModifiedDate = v19->_lastModifiedDate;
      v19->_lastModifiedDate = v75;

      objc_autoreleasePoolPop(context);
    }

    else
    {

      v19 = 0;
    }
  }

  v77 = *MEMORY[0x1E69E9840];
  return v19;
}

- (FCPuzzle)initWithPuzzle:(id)a3 overrides:(id)a4
{
  v64[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v5 identifier];
  v8 = [v6 title];
  v9 = v8;
  if (!v8)
  {
    v9 = [v5 title];
  }

  v10 = [v6 subtitle];
  v43 = v10;
  if (!v10)
  {
    v10 = [v5 subtitle];
  }

  v11 = [v6 puzzleDescription];
  v12 = v11;
  if (!v11)
  {
    v12 = [v5 puzzleDescription];
  }

  v63 = [v5 puzzleType];
  v62 = [v5 dataResourceID];
  v13 = [v6 author];
  if (v13)
  {
    v38 = [v6 author];
    v64[0] = v38;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v64 count:1];
  }

  else
  {
    v14 = [v5 authors];
    v38 = v14;
  }

  v51 = v14;
  v61 = [v5 publishDate];
  v35 = [v5 isPaid];
  v34 = [v5 difficulty];
  v60 = [v5 difficultyDescription];
  v59 = [v5 relatedPuzzleIDs];
  v58 = [v5 thumbnailSmallImageAssetHandle];
  v57 = [v5 thumbnailLargeImageAssetHandle];
  v56 = [v5 loadDate];
  v55 = [v6 teaserClue];
  v49 = v55;
  if (!v55)
  {
    v55 = [v5 teaserClue];
  }

  v54 = [v6 teaserAnswer];
  v48 = v54;
  if (!v54)
  {
    v54 = [v5 teaserAnswer];
  }

  v53 = [v6 teaserInfo];
  v47 = v53;
  if (!v53)
  {
    v53 = [v5 teaserInfo];
  }

  v41 = v11;
  v52 = [v6 teaserDirection];
  v33 = v52;
  if (!v52)
  {
    v52 = [v5 teaserDirection];
  }

  v39 = v13;
  v40 = v12;
  v42 = v10;
  v50 = v9;
  v44 = v8;
  v45 = v7;
  v46 = v6;
  v15 = [v6 teaserNumber];
  v16 = v15;
  if (!v15)
  {
    v16 = [v5 teaserNumber];
  }

  v32 = [v5 language];
  v31 = [v5 blockedStorefrontIDs];
  v17 = [v5 allowedStorefrontIDs];
  v18 = [v5 minimumNewsVersion];
  v19 = [v5 showInfoModalOnFirstPlay];
  v20 = [v5 ignoreFromStatsAndStreaks];
  v21 = [v5 isDeprecated];
  v22 = [v5 isDraft];
  v23 = [v5 lastModifiedDate];
  BYTE3(v30) = v22;
  BYTE2(v30) = v21;
  BYTE1(v30) = v20;
  LOBYTE(v30) = v19;
  LOBYTE(v29) = v35;
  v37 = [FCPuzzle initWithIdentifier:"initWithIdentifier:title:subtitle:puzzleDescription:puzzleType:dataResourceID:authors:publishDate:isPaid:difficulty:difficultyDescription:relatedPuzzleIDs:thumbnailSmallImageAssetHandle:thumbnailLargeImageAssetHandle:loadDate:teaserClue:teaserAnswer:teaserInfo:teaserDirection:teaserNumber:language:blockedStorefrontIDs:allowedStorefrontIDs:minimumNewsVersion:showInfoModalOnFirstPlay:ignoreFromStatsAndStreaks:isDeprecated:isDraft:lastModifiedDate:" title:v45 subtitle:v50 puzzleDescription:v42 puzzleType:v40 dataResourceID:v63 authors:v62 publishDate:v51 isPaid:v61 difficulty:v29 difficultyDescription:v34 relatedPuzzleIDs:v60 thumbnailSmallImageAssetHandle:v59 thumbnailLargeImageAssetHandle:v58 loadDate:v57 teaserClue:v56 teaserAnswer:v55 teaserInfo:v54 teaserDirection:v53 teaserNumber:v52 language:v16 blockedStorefrontIDs:v32 allowedStorefrontIDs:v31 minimumNewsVersion:v17 showInfoModalOnFirstPlay:v18 ignoreFromStatsAndStreaks:v30 isDeprecated:v23 isDraft:? lastModifiedDate:?];

  if (!v15)
  {
  }

  if (!v33)
  {
  }

  v24 = v47;
  if (!v47)
  {

    v24 = 0;
  }

  v25 = v48;
  if (!v48)
  {

    v25 = 0;
  }

  v26 = v49;
  if (!v49)
  {

    v26 = 0;
  }

  if (v39)
  {
  }

  if (!v41)
  {
  }

  if (!v43)
  {
  }

  if (!v44)
  {
  }

  v27 = *MEMORY[0x1E69E9840];
  return v37;
}

- (NSString)publishDateString
{
  v3 = publishDateString_dateFormatter;
  if (!publishDateString_dateFormatter)
  {
    v4 = objc_alloc_init(MEMORY[0x1E696AB78]);
    v5 = publishDateString_dateFormatter;
    publishDateString_dateFormatter = v4;

    v6 = [MEMORY[0x1E695DFE8] timeZoneWithAbbreviation:@"EST"];
    [publishDateString_dateFormatter setTimeZone:v6];

    [publishDateString_dateFormatter setDateFormat:@"EEEE, MMM d, yyyy"];
    v3 = publishDateString_dateFormatter;
  }

  v7 = [(FCPuzzle *)self publishDate];
  v8 = [v3 stringFromDate:v7];

  return v8;
}

- (FCContentArchive)contentArchive
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __26__FCPuzzle_contentArchive__block_invoke;
  v5[3] = &unk_1E7C36D40;
  v5[4] = self;
  v2 = [MEMORY[0x1E695DEC8] fc_array:v5];
  v3 = [FCContentArchive archiveWithChildArchives:v2];

  return v3;
}

void __26__FCPuzzle_contentArchive__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 puzzleRecord];
  v6 = [FCContentArchive archiveWithRecord:v5];
  [v4 fc_safelyAddObject:v6];

  v7 = [*(a1 + 32) puzzleType];
  v8 = v7;
  if (v7)
  {
    if ([v7 conformsToProtocol:&unk_1F2E828A8])
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v11 = v9;

  v10 = [v11 contentArchive];
  [v4 fc_safelyAddObject:v10];
}

- (FCContentManifest)contentManifest
{
  v3 = [FCContentManifest alloc];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __27__FCPuzzle_contentManifest__block_invoke;
  v7[3] = &unk_1E7C36D40;
  v7[4] = self;
  v4 = [MEMORY[0x1E695DEC8] fc_array:v7];
  v5 = [(FCContentManifest *)v3 initWithManifests:v4];

  return v5;
}

void __27__FCPuzzle_contentManifest__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 puzzleRecord];
  v6 = [v5 base];
  v7 = [v6 contentManifest];
  [v4 fc_safelyAddObject:v7];

  v8 = [*(a1 + 32) puzzleType];
  v9 = v8;
  if (v8)
  {
    if ([v8 conformsToProtocol:&unk_1F2E828A8])
    {
      v10 = v9;
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

  v12 = v10;

  v11 = [v12 contentManifest];
  [v4 fc_safelyAddObject:v11];
}

@end