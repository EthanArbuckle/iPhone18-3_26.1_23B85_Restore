@interface FCPuzzle
- (FCContentArchive)contentArchive;
- (FCContentManifest)contentManifest;
- (FCPuzzle)initWithIdentifier:(id)identifier title:(id)title subtitle:(id)subtitle puzzleDescription:(id)description puzzleType:(id)type dataResourceID:(id)d authors:(id)authors publishDate:(id)self0 isPaid:(BOOL)self1 difficulty:(int64_t)self2 difficultyDescription:(id)self3 relatedPuzzleIDs:(id)self4 thumbnailSmallImageAssetHandle:(id)self5 thumbnailLargeImageAssetHandle:(id)self6 loadDate:(id)self7 teaserClue:(id)self8 teaserAnswer:(id)self9 teaserInfo:(id)info teaserDirection:(id)direction teaserNumber:(id)number language:(id)language blockedStorefrontIDs:(id)iDs allowedStorefrontIDs:(id)storefrontIDs minimumNewsVersion:(int64_t)version showInfoModalOnFirstPlay:(BOOL)play ignoreFromStatsAndStreaks:(BOOL)streaks isDeprecated:(BOOL)deprecated isDraft:(BOOL)identifier0 lastModifiedDate:(id)identifier1;
- (FCPuzzle)initWithPuzzle:(id)puzzle overrides:(id)overrides;
- (FCPuzzle)initWithPuzzleRecord:(id)record puzzleType:(id)type assetManager:(id)manager interestToken:(id)token difficultyDescriptions:(id)descriptions;
- (NSString)publishDateString;
@end

@implementation FCPuzzle

- (FCPuzzle)initWithIdentifier:(id)identifier title:(id)title subtitle:(id)subtitle puzzleDescription:(id)description puzzleType:(id)type dataResourceID:(id)d authors:(id)authors publishDate:(id)self0 isPaid:(BOOL)self1 difficulty:(int64_t)self2 difficultyDescription:(id)self3 relatedPuzzleIDs:(id)self4 thumbnailSmallImageAssetHandle:(id)self5 thumbnailLargeImageAssetHandle:(id)self6 loadDate:(id)self7 teaserClue:(id)self8 teaserAnswer:(id)self9 teaserInfo:(id)info teaserDirection:(id)direction teaserNumber:(id)number language:(id)language blockedStorefrontIDs:(id)iDs allowedStorefrontIDs:(id)storefrontIDs minimumNewsVersion:(int64_t)version showInfoModalOnFirstPlay:(BOOL)play ignoreFromStatsAndStreaks:(BOOL)streaks isDeprecated:(BOOL)deprecated isDraft:(BOOL)identifier0 lastModifiedDate:(id)identifier1
{
  identifierCopy = identifier;
  titleCopy = title;
  titleCopy2 = title;
  subtitleCopy = subtitle;
  subtitleCopy2 = subtitle;
  descriptionCopy = description;
  descriptionCopy2 = description;
  typeCopy = type;
  typeCopy2 = type;
  dCopy = d;
  authorsCopy = authors;
  dateCopy = date;
  difficultyDescriptionCopy = difficultyDescription;
  dsCopy = ds;
  handleCopy = handle;
  assetHandleCopy = assetHandle;
  loadDateCopy = loadDate;
  clueCopy = clue;
  answerCopy = answer;
  infoCopy = info;
  directionCopy = direction;
  numberCopy = number;
  languageCopy = language;
  iDsCopy = iDs;
  storefrontIDsCopy = storefrontIDs;
  modifiedDateCopy = modifiedDate;
  v43 = [identifierCopy length];
  v44 = 0;
  v66 = typeCopy2;
  if (typeCopy2 && v43)
  {
    v71.receiver = self;
    v71.super_class = FCPuzzle;
    v45 = [(FCPuzzle *)&v71 init];
    v46 = v45;
    if (v45)
    {
      objc_storeStrong(&v45->_identifier, identifier);
      objc_storeStrong(&v46->_title, titleCopy);
      objc_storeStrong(&v46->_subtitle, subtitleCopy);
      objc_storeStrong(&v46->_puzzleDescription, descriptionCopy);
      objc_storeStrong(&v46->_puzzleType, typeCopy);
      objc_storeStrong(&v46->_dataResourceID, d);
      objc_storeStrong(&v46->_authors, authors);
      objc_storeStrong(&v46->_publishDate, date);
      v46->_paid = paid;
      v46->_difficulty = difficulty;
      objc_storeStrong(&v46->_difficultyDescription, difficultyDescription);
      objc_storeStrong(&v46->_relatedPuzzleIDs, ds);
      objc_storeStrong(&v46->_thumbnailSmallImageAssetHandle, handle);
      objc_storeStrong(&v46->_thumbnailLargeImageAssetHandle, assetHandle);
      objc_storeStrong(&v46->_loadDate, loadDate);
      objc_storeStrong(&v46->_teaserClue, clue);
      objc_storeStrong(&v46->_teaserAnswer, answer);
      objc_storeStrong(&v46->_teaserInfo, info);
      objc_storeStrong(&v46->_teaserDirection, direction);
      objc_storeStrong(&v46->_teaserNumber, number);
      objc_storeStrong(&v46->_language, language);
      objc_storeStrong(&v46->_blockedStorefrontIDs, iDs);
      objc_storeStrong(&v46->_allowedStorefrontIDs, storefrontIDs);
      v46->_minimumNewsVersion = version;
      v46->_showInfoModalOnFirstPlay = play;
      v46->_ignoreFromStatsAndStreaks = streaks;
      v46->_deprecated = deprecated;
      v46->_draft = draft;
      objc_storeStrong(&v46->_lastModifiedDate, modifiedDate);
    }

    selfCopy = v46;
    v44 = selfCopy;
  }

  else
  {
    selfCopy = self;
  }

  return v44;
}

- (FCPuzzle)initWithPuzzleRecord:(id)record puzzleType:(id)type assetManager:(id)manager interestToken:(id)token difficultyDescriptions:(id)descriptions
{
  v91 = *MEMORY[0x1E69E9840];
  recordCopy = record;
  typeCopy = type;
  managerCopy = manager;
  tokenCopy = token;
  descriptionsCopy = descriptions;
  base = [recordCopy base];
  identifier = [base identifier];

  if (!identifier && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
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
    if ([identifier length])
    {
      context = objc_autoreleasePoolPush();
      objc_storeStrong(&v19->_puzzleRecord, record);
      objc_storeStrong(&v19->_interestToken, token);
      date = [MEMORY[0x1E695DF00] date];
      loadDate = v19->_loadDate;
      v19->_loadDate = date;

      v22 = [identifier copy];
      identifier = v19->_identifier;
      v19->_identifier = v22;

      title = [recordCopy title];
      title = v19->_title;
      v19->_title = title;

      subtitle = [recordCopy subtitle];
      subtitle2 = [subtitle length];
      if (subtitle2)
      {
        subtitle2 = [recordCopy subtitle];
      }

      subtitle = v19->_subtitle;
      v19->_subtitle = subtitle2;

      puzzleDescription = [recordCopy puzzleDescription];
      puzzleDescription = v19->_puzzleDescription;
      v19->_puzzleDescription = puzzleDescription;

      objc_storeStrong(&v19->_puzzleType, type);
      dataResourceID = [recordCopy dataResourceID];
      dataResourceID = v19->_dataResourceID;
      v19->_dataResourceID = dataResourceID;

      v19->_paid = [recordCopy isPaid];
      authors = [recordCopy authors];
      authors = v19->_authors;
      v19->_authors = authors;

      v35 = MEMORY[0x1E695DF00];
      publishedDate = [recordCopy publishedDate];
      v37 = [v35 dateWithPBDate:publishedDate];
      publishDate = v19->_publishDate;
      v19->_publishDate = v37;

      v19->_difficulty = [recordCopy difficultyLevel];
      v39 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(recordCopy, "difficultyLevel")}];
      v40 = [descriptionsCopy fc_safeObjectForKey:v39];
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

      relatedPuzzleIDs = [recordCopy relatedPuzzleIDs];
      relatedPuzzleIDs = v19->_relatedPuzzleIDs;
      v19->_relatedPuzzleIDs = relatedPuzzleIDs;

      thumbnailDirectory = [typeCopy thumbnailDirectory];
      v46 = v19->_publishDate;
      v47 = resolvedPuzzleTypeDifficultyWithPuzzleType(typeCopy, v19->_difficulty);
      v48 = [thumbnailDirectory smallThumbnailForDate:v46 difficulty:v47];
      thumbnailSmallImageAssetHandle = v19->_thumbnailSmallImageAssetHandle;
      v19->_thumbnailSmallImageAssetHandle = v48;

      v50 = [recordCopy generateThumbnailLargeImageAssetHandleWithAssetManager:managerCopy];
      thumbnailLargeImageAssetHandle = v19->_thumbnailLargeImageAssetHandle;
      v19->_thumbnailLargeImageAssetHandle = v50;

      teaserConfiguration = [recordCopy teaserConfiguration];
      v53 = [teaserConfiguration dataUsingEncoding:4];

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

      language = [recordCopy language];
      language = v19->_language;
      v19->_language = language;

      blockedStorefrontIDs = [recordCopy blockedStorefrontIDs];
      blockedStorefrontIDs = v19->_blockedStorefrontIDs;
      v19->_blockedStorefrontIDs = blockedStorefrontIDs;

      allowedStorefrontIDs = [recordCopy allowedStorefrontIDs];
      allowedStorefrontIDs = v19->_allowedStorefrontIDs;
      v19->_allowedStorefrontIDs = allowedStorefrontIDs;

      v19->_minimumNewsVersion = [recordCopy minimumNewsVersion];
      v19->_showInfoModalOnFirstPlay = [recordCopy behaviorFlags] & 1;
      v19->_ignoreFromStatsAndStreaks = ([recordCopy behaviorFlags] & 2) != 0;
      v19->_behaviorFlags = [recordCopy behaviorFlags];
      v19->_deprecated = [recordCopy isDeprecated];
      v19->_draft = [recordCopy isDraft];
      v72 = MEMORY[0x1E695DF00];
      base2 = [recordCopy base];
      modificationDate = [base2 modificationDate];
      v75 = [v72 dateWithPBDate:modificationDate];
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

- (FCPuzzle)initWithPuzzle:(id)puzzle overrides:(id)overrides
{
  v64[1] = *MEMORY[0x1E69E9840];
  puzzleCopy = puzzle;
  overridesCopy = overrides;
  identifier = [puzzleCopy identifier];
  title = [overridesCopy title];
  title2 = title;
  if (!title)
  {
    title2 = [puzzleCopy title];
  }

  subtitle = [overridesCopy subtitle];
  v43 = subtitle;
  if (!subtitle)
  {
    subtitle = [puzzleCopy subtitle];
  }

  puzzleDescription = [overridesCopy puzzleDescription];
  puzzleDescription2 = puzzleDescription;
  if (!puzzleDescription)
  {
    puzzleDescription2 = [puzzleCopy puzzleDescription];
  }

  puzzleType = [puzzleCopy puzzleType];
  dataResourceID = [puzzleCopy dataResourceID];
  author = [overridesCopy author];
  if (author)
  {
    author2 = [overridesCopy author];
    v64[0] = author2;
    authors = [MEMORY[0x1E695DEC8] arrayWithObjects:v64 count:1];
  }

  else
  {
    authors = [puzzleCopy authors];
    author2 = authors;
  }

  v51 = authors;
  publishDate = [puzzleCopy publishDate];
  isPaid = [puzzleCopy isPaid];
  difficulty = [puzzleCopy difficulty];
  difficultyDescription = [puzzleCopy difficultyDescription];
  relatedPuzzleIDs = [puzzleCopy relatedPuzzleIDs];
  thumbnailSmallImageAssetHandle = [puzzleCopy thumbnailSmallImageAssetHandle];
  thumbnailLargeImageAssetHandle = [puzzleCopy thumbnailLargeImageAssetHandle];
  loadDate = [puzzleCopy loadDate];
  teaserClue = [overridesCopy teaserClue];
  v49 = teaserClue;
  if (!teaserClue)
  {
    teaserClue = [puzzleCopy teaserClue];
  }

  teaserAnswer = [overridesCopy teaserAnswer];
  v48 = teaserAnswer;
  if (!teaserAnswer)
  {
    teaserAnswer = [puzzleCopy teaserAnswer];
  }

  teaserInfo = [overridesCopy teaserInfo];
  v47 = teaserInfo;
  if (!teaserInfo)
  {
    teaserInfo = [puzzleCopy teaserInfo];
  }

  v41 = puzzleDescription;
  teaserDirection = [overridesCopy teaserDirection];
  v33 = teaserDirection;
  if (!teaserDirection)
  {
    teaserDirection = [puzzleCopy teaserDirection];
  }

  v39 = author;
  v40 = puzzleDescription2;
  v42 = subtitle;
  v50 = title2;
  v44 = title;
  v45 = identifier;
  v46 = overridesCopy;
  teaserNumber = [overridesCopy teaserNumber];
  teaserNumber2 = teaserNumber;
  if (!teaserNumber)
  {
    teaserNumber2 = [puzzleCopy teaserNumber];
  }

  language = [puzzleCopy language];
  blockedStorefrontIDs = [puzzleCopy blockedStorefrontIDs];
  allowedStorefrontIDs = [puzzleCopy allowedStorefrontIDs];
  minimumNewsVersion = [puzzleCopy minimumNewsVersion];
  showInfoModalOnFirstPlay = [puzzleCopy showInfoModalOnFirstPlay];
  ignoreFromStatsAndStreaks = [puzzleCopy ignoreFromStatsAndStreaks];
  isDeprecated = [puzzleCopy isDeprecated];
  isDraft = [puzzleCopy isDraft];
  lastModifiedDate = [puzzleCopy lastModifiedDate];
  BYTE3(v30) = isDraft;
  BYTE2(v30) = isDeprecated;
  BYTE1(v30) = ignoreFromStatsAndStreaks;
  LOBYTE(v30) = showInfoModalOnFirstPlay;
  LOBYTE(v29) = isPaid;
  v37 = [FCPuzzle initWithIdentifier:"initWithIdentifier:title:subtitle:puzzleDescription:puzzleType:dataResourceID:authors:publishDate:isPaid:difficulty:difficultyDescription:relatedPuzzleIDs:thumbnailSmallImageAssetHandle:thumbnailLargeImageAssetHandle:loadDate:teaserClue:teaserAnswer:teaserInfo:teaserDirection:teaserNumber:language:blockedStorefrontIDs:allowedStorefrontIDs:minimumNewsVersion:showInfoModalOnFirstPlay:ignoreFromStatsAndStreaks:isDeprecated:isDraft:lastModifiedDate:" title:v45 subtitle:v50 puzzleDescription:v42 puzzleType:v40 dataResourceID:puzzleType authors:dataResourceID publishDate:v51 isPaid:publishDate difficulty:v29 difficultyDescription:difficulty relatedPuzzleIDs:difficultyDescription thumbnailSmallImageAssetHandle:relatedPuzzleIDs thumbnailLargeImageAssetHandle:thumbnailSmallImageAssetHandle loadDate:thumbnailLargeImageAssetHandle teaserClue:loadDate teaserAnswer:teaserClue teaserInfo:teaserAnswer teaserDirection:teaserInfo teaserNumber:teaserDirection language:teaserNumber2 blockedStorefrontIDs:language allowedStorefrontIDs:blockedStorefrontIDs minimumNewsVersion:allowedStorefrontIDs showInfoModalOnFirstPlay:minimumNewsVersion ignoreFromStatsAndStreaks:v30 isDeprecated:lastModifiedDate isDraft:? lastModifiedDate:?];

  if (!teaserNumber)
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

  publishDate = [(FCPuzzle *)self publishDate];
  v8 = [v3 stringFromDate:publishDate];

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