@interface FCIssue
+ (BOOL)_fakeIssuesTimestamp;
- (BOOL)isBlockedExplicitContent;
- (BOOL)isEqual:(id)equal;
- (COMAPPLEFELDSPARPROTOCOLLIVERPOOLCohortList)globalCohorts;
- (COMAPPLEFELDSPARPROTOCOLLIVERPOOLCohortList)publisherCohorts;
- (COMAPPLEFELDSPARPROTOCOLLIVERPOOLConversionStats)globalConversionStats;
- (COMAPPLEFELDSPARPROTOCOLLIVERPOOLConversionStats)publisherConversionStats;
- (FCContentArchive)contentArchive;
- (FCContentManifest)contentManifest;
- (FCIssue)init;
- (FCIssue)initWithData:(id)data sourceChannel:(id)channel assetManager:(id)manager;
- (FCIssue)initWithIdentifier:(id)identifier type:(int64_t)type title:(id)title publicationDate:(id)date coverDate:(id)coverDate lastModifiedDate:(id)modifiedDate metadataJSONAssetHandle:(id)handle coverImageAssetHandle:(id)self0 coverImageAspectRatio:(double)self1 coverImagePrimaryColor:(id)self2 coverImageBackgroundColor:(id)self3 coverImageTextColor:(id)self4 coverImageAccentColor:(id)self5 layeredCoverJSON:(id)self6 layeredCoverAspectRatio:(double)self7 layeredCoverPrimaryColor:(id)self8 isCurrent:(BOOL)self9 isDraft:(BOOL)draft isPaid:(BOOL)paid minimumNewsVersion:(int64_t)version allArticleIDs:(id)ds coverArticleID:(id)d allowedStorefrontIDs:(id)iDs blockedStorefrontIDs:(id)storefrontIDs topicTagIDs:(id)tagIDs sourceChannel:(id)channel notificationDescription:(id)description issueDescription:(id)identifier0 sortDate:(id)identifier1;
- (FCIssue)initWithIssue:(id)issue overrides:(id)overrides;
- (FCIssue)initWithIssueRecord:(id)record assetManager:(id)manager interestToken:(id)token sourceChannel:(id)channel;
- (NSString)description;
- (NSString)publisherID;
- (NSString)sourceChannelID;
- (NSString)sourceFeedID;
- (unint64_t)halfLife;
- (unint64_t)hash;
- (void)enumerateTopicCohortsWithBlock:(id)block;
- (void)enumerateTopicConversionStatsWithBlock:(id)block;
@end

@implementation FCIssue

- (NSString)sourceFeedID
{
  sourceChannel = [(FCIssue *)self sourceChannel];
  identifier = [sourceChannel identifier];

  return identifier;
}

- (unint64_t)halfLife
{
  issueRecord = [(FCIssue *)self issueRecord];
  halfLifeMilliseconds = [issueRecord halfLifeMilliseconds];

  return halfLifeMilliseconds;
}

- (NSString)publisherID
{
  sourceChannel = [(FCIssue *)self sourceChannel];
  identifier = [sourceChannel identifier];

  return identifier;
}

- (COMAPPLEFELDSPARPROTOCOLLIVERPOOLCohortList)globalCohorts
{
  issueRecord = [(FCIssue *)self issueRecord];
  scores = [issueRecord scores];
  globalCohorts = [scores globalCohorts];
  v5 = globalCohorts;
  if (globalCohorts)
  {
    v6 = globalCohorts;
  }

  else
  {
    v6 = objc_opt_new();
  }

  v7 = v6;

  return v7;
}

- (COMAPPLEFELDSPARPROTOCOLLIVERPOOLCohortList)publisherCohorts
{
  issueRecord = [(FCIssue *)self issueRecord];
  scores = [issueRecord scores];
  sourceChannelCohorts = [scores sourceChannelCohorts];
  v5 = sourceChannelCohorts;
  if (sourceChannelCohorts)
  {
    v6 = sourceChannelCohorts;
  }

  else
  {
    v6 = objc_opt_new();
  }

  v7 = v6;

  return v7;
}

- (void)enumerateTopicCohortsWithBlock:(id)block
{
  blockCopy = block;
  issueRecord = [(FCIssue *)self issueRecord];
  scores = [issueRecord scores];
  topicCohorts = [scores topicCohorts];

  if (topicCohorts)
  {
    issueRecord2 = [(FCIssue *)self issueRecord];
    scores2 = [issueRecord2 scores];
    topicCohortScores = [scores2 topicCohortScores];

    issueRecord3 = [(FCIssue *)self issueRecord];
    scores3 = [issueRecord3 scores];
    issueRecord4 = scores3;
    if (topicCohortScores)
    {
      topicCohortScores2 = [scores3 topicCohortScores];
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __59__FCIssue_Personalization__enumerateTopicCohortsWithBlock___block_invoke_2;
      v20[3] = &unk_1E7C388D8;
      v15 = &v21;
      v21 = blockCopy;
      [topicCohortScores2 enumerateObjectsUsingBlock:v20];
LABEL_6:

      goto LABEL_7;
    }

    topicCohorts2 = [scores3 topicCohorts];

    if (topicCohorts2)
    {
      issueRecord3 = [(FCIssue *)self topicTagIDs];
      issueRecord4 = [(FCIssue *)self issueRecord];
      topicCohortScores2 = [issueRecord4 scores];
      topicCohorts3 = [topicCohortScores2 topicCohorts];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __59__FCIssue_Personalization__enumerateTopicCohortsWithBlock___block_invoke_3;
      v18[3] = &unk_1E7C38900;
      v15 = &v19;
      v19 = blockCopy;
      [issueRecord3 fc_enumerateSideBySideWithArray:topicCohorts3 reverse:0 block:v18];

      goto LABEL_6;
    }
  }

LABEL_7:
}

void __59__FCIssue_Personalization__enumerateTopicCohortsWithBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v3 tagId];
  v4 = [v3 cohorts];

  (*(v2 + 16))(v2, v5, v4);
}

- (COMAPPLEFELDSPARPROTOCOLLIVERPOOLConversionStats)globalConversionStats
{
  issueRecord = [(FCIssue *)self issueRecord];
  conversionStats = [issueRecord conversionStats];
  globalConversionStats = [conversionStats globalConversionStats];

  return globalConversionStats;
}

- (COMAPPLEFELDSPARPROTOCOLLIVERPOOLConversionStats)publisherConversionStats
{
  issueRecord = [(FCIssue *)self issueRecord];
  conversionStats = [issueRecord conversionStats];
  channelConversionStats = [conversionStats channelConversionStats];

  return channelConversionStats;
}

- (void)enumerateTopicConversionStatsWithBlock:(id)block
{
  blockCopy = block;
  issueRecord = [(FCIssue *)self issueRecord];
  conversionStats = [issueRecord conversionStats];
  topicConversionStats = [conversionStats topicConversionStats];

  if (topicConversionStats)
  {
    issueRecord2 = [(FCIssue *)self issueRecord];
    conversionStats2 = [issueRecord2 conversionStats];
    topicConversionStats2 = [conversionStats2 topicConversionStats];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __67__FCIssue_Personalization__enumerateTopicConversionStatsWithBlock___block_invoke_2;
    v11[3] = &unk_1E7C38928;
    v12 = blockCopy;
    [topicConversionStats2 enumerateObjectsUsingBlock:v11];
  }
}

void __67__FCIssue_Personalization__enumerateTopicConversionStatsWithBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v3 tagId];
  v4 = [v3 conversionStats];

  (*(v2 + 16))(v2, v5, v4);
}

- (FCIssue)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCIssue init]";
    v10 = 2080;
    v11 = "FCIssue.m";
    v12 = 1024;
    v13 = 48;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCIssue init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCIssue)initWithData:(id)data sourceChannel:(id)channel assetManager:(id)manager
{
  v8 = MEMORY[0x1E69B6E60];
  managerCopy = manager;
  channelCopy = channel;
  dataCopy = data;
  v12 = [[v8 alloc] initWithData:dataCopy];

  v13 = [(FCIssue *)self initWithIssueRecord:v12 assetManager:managerCopy interestToken:0 sourceChannel:channelCopy];
  return v13;
}

- (FCIssue)initWithIdentifier:(id)identifier type:(int64_t)type title:(id)title publicationDate:(id)date coverDate:(id)coverDate lastModifiedDate:(id)modifiedDate metadataJSONAssetHandle:(id)handle coverImageAssetHandle:(id)self0 coverImageAspectRatio:(double)self1 coverImagePrimaryColor:(id)self2 coverImageBackgroundColor:(id)self3 coverImageTextColor:(id)self4 coverImageAccentColor:(id)self5 layeredCoverJSON:(id)self6 layeredCoverAspectRatio:(double)self7 layeredCoverPrimaryColor:(id)self8 isCurrent:(BOOL)self9 isDraft:(BOOL)draft isPaid:(BOOL)paid minimumNewsVersion:(int64_t)version allArticleIDs:(id)ds coverArticleID:(id)d allowedStorefrontIDs:(id)iDs blockedStorefrontIDs:(id)storefrontIDs topicTagIDs:(id)tagIDs sourceChannel:(id)channel notificationDescription:(id)description issueDescription:(id)identifier0 sortDate:(id)identifier1
{
  identifierCopy = identifier;
  titleCopy = title;
  dateCopy = date;
  coverDateCopy = coverDate;
  modifiedDateCopy = modifiedDate;
  handleCopy = handle;
  assetHandleCopy = assetHandle;
  colorCopy = color;
  backgroundColorCopy = backgroundColor;
  textColorCopy = textColor;
  accentColorCopy = accentColor;
  nCopy = n;
  primaryColorCopy = primaryColor;
  dsCopy = ds;
  dCopy = d;
  iDsCopy = iDs;
  storefrontIDsCopy = storefrontIDs;
  tagIDsCopy = tagIDs;
  channelCopy = channel;
  descriptionCopy = description;
  issueDescriptionCopy = issueDescription;
  sortDateCopy = sortDate;
  v103.receiver = self;
  v103.super_class = FCIssue;
  v46 = [(FCIssue *)&v103 init];
  if (v46)
  {
    v47 = [identifierCopy copy];
    identifier = v46->_identifier;
    v46->_identifier = v47;

    v46->_type = type;
    v49 = [titleCopy copy];
    title = v46->_title;
    v46->_title = v49;

    v51 = [dateCopy copy];
    publicationDate = v46->_publicationDate;
    v46->_publicationDate = v51;

    v53 = [coverDateCopy copy];
    coverDate = v46->_coverDate;
    v46->_coverDate = v53;

    v55 = [modifiedDateCopy copy];
    lastModifiedDate = v46->_lastModifiedDate;
    v46->_lastModifiedDate = v55;

    objc_storeStrong(&v46->_metadataJSONAssetHandle, handle);
    objc_storeStrong(&v46->_coverImageAssetHandle, assetHandle);
    v46->_coverImageAspectRatio = ratio;
    v57 = [colorCopy copy];
    coverImagePrimaryColor = v46->_coverImagePrimaryColor;
    v46->_coverImagePrimaryColor = v57;

    v59 = [backgroundColorCopy copy];
    coverImageBackgroundColor = v46->_coverImageBackgroundColor;
    v46->_coverImageBackgroundColor = v59;

    v61 = [textColorCopy copy];
    coverImageTextColor = v46->_coverImageTextColor;
    v46->_coverImageTextColor = v61;

    v63 = [accentColorCopy copy];
    coverImageAccentColor = v46->_coverImageAccentColor;
    v46->_coverImageAccentColor = v63;

    v65 = [nCopy copy];
    layeredCoverJSON = v46->_layeredCoverJSON;
    v46->_layeredCoverJSON = v65;

    v46->_layeredCoverAspectRatio = aspectRatio;
    v67 = [primaryColorCopy copy];
    layeredCoverPrimaryColor = v46->_layeredCoverPrimaryColor;
    v46->_layeredCoverPrimaryColor = v67;

    v46->_isCurrent = current;
    v46->_isDraft = draft;
    v46->_paid = paid;
    v46->_minimumNewsVersion = version;
    v69 = [dsCopy copy];
    allArticleIDs = v46->_allArticleIDs;
    v46->_allArticleIDs = v69;

    v71 = [dCopy copy];
    coverArticleID = v46->_coverArticleID;
    v46->_coverArticleID = v71;

    v73 = [iDsCopy copy];
    allowedStorefrontIDs = v46->_allowedStorefrontIDs;
    v46->_allowedStorefrontIDs = v73;

    v75 = [storefrontIDsCopy copy];
    blockedStorefrontIDs = v46->_blockedStorefrontIDs;
    v46->_blockedStorefrontIDs = v75;

    v77 = [tagIDsCopy copy];
    topicTagIDs = v46->_topicTagIDs;
    v46->_topicTagIDs = v77;

    v79 = [channelCopy copy];
    sourceChannel = v46->_sourceChannel;
    v46->_sourceChannel = v79;

    v81 = [descriptionCopy copy];
    notificationDescription = v46->_notificationDescription;
    v46->_notificationDescription = v81;

    v83 = [issueDescriptionCopy copy];
    issueDescription = v46->_issueDescription;
    v46->_issueDescription = v83;

    v85 = [sortDateCopy copy];
    sortDate = v46->_sortDate;
    v46->_sortDate = v85;
  }

  return v46;
}

- (FCIssue)initWithIssueRecord:(id)record assetManager:(id)manager interestToken:(id)token sourceChannel:(id)channel
{
  recordCopy = record;
  tokenCopy = token;
  tokenCopy2 = token;
  channelCopy = channel;
  managerCopy = manager;
  v54 = [recordCopy type] == 2;
  v57 = [recordCopy generateMetadataJSONAssetHandleWithAssetManager:managerCopy];
  v73 = [recordCopy generateCoverImageAssetHandleWithAssetManager:managerCopy];

  v13 = MEMORY[0x1E695DF00];
  publishDate = [recordCopy publishDate];
  v15 = [v13 dateWithPBDate:publishDate];

  selfCopy = self;
  if ([objc_opt_class() _fakeIssuesTimestamp])
  {
    fc_adjustToRecentDate = [v15 fc_adjustToRecentDate];

    v15 = fc_adjustToRecentDate;
  }

  v17 = MEMORY[0x1E695DF00];
  base = [recordCopy base];
  modificationDate = [base modificationDate];
  v20 = [v17 dateWithPBDate:modificationDate];
  v21 = v20;
  if (v20 || (v21 = v15) != 0)
  {
    distantPast = v21;
  }

  else
  {
    distantPast = [MEMORY[0x1E695DF00] distantPast];
  }

  v72 = distantPast;

  [recordCopy coverAspectRatio];
  v23 = 0.75;
  if (v24 > 0.0)
  {
    [recordCopy coverAspectRatio];
    v23 = v25;
  }

  base2 = [recordCopy base];
  identifier = [base2 identifier];
  title = [recordCopy title];
  date = v15;
  v56 = v15;
  if (!v15)
  {
    date = [MEMORY[0x1E695DF00] date];
  }

  edition = [recordCopy edition];
  coverPrimaryColor = [recordCopy coverPrimaryColor];
  v68 = [FCColor colorWithHexString:?];
  coverBackgroundColor = [recordCopy coverBackgroundColor];
  v67 = [FCColor nullableColorWithHexString:?];
  coverTextColor = [recordCopy coverTextColor];
  v66 = [FCColor nullableColorWithHexString:?];
  coverAccentColor = [recordCopy coverAccentColor];
  v65 = [FCColor nullableColorWithHexString:?];
  layeredCover = [recordCopy layeredCover];
  [recordCopy layeredCoverAspectRatio];
  v27 = v26;
  layeredCoverPrimaryColor = [recordCopy layeredCoverPrimaryColor];
  v63 = [FCColor colorWithHexString:?];
  currentIssueIDs = [channelCopy currentIssueIDs];
  base3 = [recordCopy base];
  [base3 identifier];
  v45 = v47 = currentIssueIDs;
  v44 = [currentIssueIDs containsObject:?];
  isDraft = [recordCopy isDraft];
  minimumNewsVersion = [recordCopy minimumNewsVersion];
  allArticleIDs = [recordCopy allArticleIDs];
  coverArticleID = [recordCopy coverArticleID];
  allowedStorefrontIDs = [recordCopy allowedStorefrontIDs];
  blockedStorefrontIDs = [recordCopy blockedStorefrontIDs];
  topicTagIDs = [recordCopy topicTagIDs];
  notificationDescription = [recordCopy notificationDescription];
  issueDescription = notificationDescription;
  if (!notificationDescription)
  {
    issueDescription = [recordCopy issueDescription];
  }

  issueDescription2 = [recordCopy issueDescription];
  v35 = MEMORY[0x1E695DF00];
  sortDate = [recordCopy sortDate];
  v37 = [v35 dateWithPBDate:sortDate];
  BYTE2(v40) = 1;
  BYTE1(v40) = isDraft;
  LOBYTE(v40) = v44;
  v38 = [FCIssue initWithIdentifier:selfCopy type:"initWithIdentifier:type:title:publicationDate:coverDate:lastModifiedDate:metadataJSONAssetHandle:coverImageAssetHandle:coverImageAspectRatio:coverImagePrimaryColor:coverImageBackgroundColor:coverImageTextColor:coverImageAccentColor:layeredCoverJSON:layeredCoverAspectRatio:layeredCoverPrimaryColor:isCurrent:isDraft:isPaid:minimumNewsVersion:allArticleIDs:coverArticleID:allowedStorefrontIDs:blockedStorefrontIDs:topicTagIDs:sourceChannel:notificationDescription:issueDescription:sortDate:" title:identifier publicationDate:v54 coverDate:title lastModifiedDate:date metadataJSONAssetHandle:edition coverImageAssetHandle:v72 coverImageAspectRatio:v23 coverImagePrimaryColor:v27 coverImageBackgroundColor:v57 coverImageTextColor:v73 coverImageAccentColor:v68 layeredCoverJSON:v67 layeredCoverAspectRatio:v66 layeredCoverPrimaryColor:v65 isCurrent:layeredCover isDraft:v63 isPaid:v40 minimumNewsVersion:minimumNewsVersion allArticleIDs:allArticleIDs coverArticleID:coverArticleID allowedStorefrontIDs:allowedStorefrontIDs blockedStorefrontIDs:blockedStorefrontIDs topicTagIDs:topicTagIDs sourceChannel:channelCopy notificationDescription:issueDescription issueDescription:issueDescription2 sortDate:v37];

  if (!notificationDescription)
  {
  }

  if (!v56)
  {
  }

  if (v38)
  {
    objc_storeStrong(&v38->_issueRecord, record);
    objc_storeStrong(&v38->_interestToken, tokenCopy);
  }

  return v38;
}

- (FCIssue)initWithIssue:(id)issue overrides:(id)overrides
{
  issueCopy = issue;
  overridesCopy = overrides;
  title = [overridesCopy title];
  if (title)
  {
  }

  else
  {
    issueDescription = [overridesCopy issueDescription];

    if (!issueDescription)
    {
      selfCopy2 = issueCopy;

      goto LABEL_13;
    }
  }

  selfCopy = self;
  identifier = [issueCopy identifier];
  type = [issueCopy type];
  title2 = [overridesCopy title];
  v32 = title2;
  if (!title2)
  {
    title2 = [issueCopy title];
  }

  publicationDate = [issueCopy publicationDate];
  coverDate = [issueCopy coverDate];
  lastModifiedDate = [issueCopy lastModifiedDate];
  metadataJSONAssetHandle = [issueCopy metadataJSONAssetHandle];
  coverImageAssetHandle = [issueCopy coverImageAssetHandle];
  [issueCopy coverImageAspectRatio];
  v11 = v10;
  coverImagePrimaryColor = [issueCopy coverImagePrimaryColor];
  coverImageBackgroundColor = [issueCopy coverImageBackgroundColor];
  coverImageTextColor = [issueCopy coverImageTextColor];
  coverImageAccentColor = [issueCopy coverImageAccentColor];
  layeredCoverJSON = [issueCopy layeredCoverJSON];
  [issueCopy layeredCoverAspectRatio];
  v13 = v12;
  layeredCoverPrimaryColor = [issueCopy layeredCoverPrimaryColor];
  isCurrent = [issueCopy isCurrent];
  isDraft = [issueCopy isDraft];
  isPaid = [issueCopy isPaid];
  minimumNewsVersion = [issueCopy minimumNewsVersion];
  allArticleIDs = [issueCopy allArticleIDs];
  coverArticleID = [issueCopy coverArticleID];
  allowedStorefrontIDs = [issueCopy allowedStorefrontIDs];
  blockedStorefrontIDs = [issueCopy blockedStorefrontIDs];
  topicTagIDs = [issueCopy topicTagIDs];
  sourceChannel = [issueCopy sourceChannel];
  notificationDescription = [issueCopy notificationDescription];
  v33 = overridesCopy;
  issueDescription2 = [overridesCopy issueDescription];
  issueDescription3 = issueDescription2;
  if (!issueDescription2)
  {
    issueDescription3 = [issueCopy issueDescription];
  }

  sortDate = [issueCopy sortDate];
  BYTE2(v26) = isPaid;
  BYTE1(v26) = isDraft;
  LOBYTE(v26) = isCurrent;
  v23 = [FCIssue initWithIdentifier:selfCopy type:"initWithIdentifier:type:title:publicationDate:coverDate:lastModifiedDate:metadataJSONAssetHandle:coverImageAssetHandle:coverImageAspectRatio:coverImagePrimaryColor:coverImageBackgroundColor:coverImageTextColor:coverImageAccentColor:layeredCoverJSON:layeredCoverAspectRatio:layeredCoverPrimaryColor:isCurrent:isDraft:isPaid:minimumNewsVersion:allArticleIDs:coverArticleID:allowedStorefrontIDs:blockedStorefrontIDs:topicTagIDs:sourceChannel:notificationDescription:issueDescription:sortDate:" title:identifier publicationDate:type coverDate:title2 lastModifiedDate:publicationDate metadataJSONAssetHandle:coverDate coverImageAssetHandle:lastModifiedDate coverImageAspectRatio:v11 coverImagePrimaryColor:v13 coverImageBackgroundColor:metadataJSONAssetHandle coverImageTextColor:coverImageAssetHandle coverImageAccentColor:coverImagePrimaryColor layeredCoverJSON:coverImageBackgroundColor layeredCoverAspectRatio:coverImageTextColor layeredCoverPrimaryColor:coverImageAccentColor isCurrent:layeredCoverJSON isDraft:layeredCoverPrimaryColor isPaid:v26 minimumNewsVersion:minimumNewsVersion allArticleIDs:allArticleIDs coverArticleID:coverArticleID allowedStorefrontIDs:allowedStorefrontIDs blockedStorefrontIDs:blockedStorefrontIDs topicTagIDs:topicTagIDs sourceChannel:sourceChannel notificationDescription:notificationDescription issueDescription:issueDescription3 sortDate:sortDate];

  if (!issueDescription2)
  {
  }

  if (!v32)
  {
  }

  self = v23;
  selfCopy2 = self;
  overridesCopy = v33;
LABEL_13:

  return selfCopy2;
}

- (NSString)description
{
  v3 = [[FCDescription alloc] initWithObject:self];
  identifier = [(FCIssue *)self identifier];
  [(FCDescription *)v3 addField:@"identifier" value:identifier];

  descriptionString = [(FCDescription *)v3 descriptionString];

  return descriptionString;
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
    identifier = [(FCIssue *)self identifier];
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
  identifier = [(FCIssue *)self identifier];
  v3 = [identifier hash];

  return v3;
}

- (BOOL)isBlockedExplicitContent
{
  sourceChannel = [(FCIssue *)self sourceChannel];
  isBlockedExplicitContent = [sourceChannel isBlockedExplicitContent];

  return isBlockedExplicitContent;
}

- (NSString)sourceChannelID
{
  sourceChannel = [(FCIssue *)self sourceChannel];
  identifier = [sourceChannel identifier];

  return identifier;
}

- (FCContentArchive)contentArchive
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __25__FCIssue_contentArchive__block_invoke;
  v5[3] = &unk_1E7C36D40;
  v5[4] = self;
  v2 = [MEMORY[0x1E695DEC8] fc_array:v5];
  v3 = [FCContentArchive archiveWithChildArchives:v2];

  return v3;
}

void __25__FCIssue_contentArchive__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 issueRecord];
  v6 = [FCContentArchive archiveWithRecord:v5];
  [v4 fc_safelyAddObject:v6];

  v7 = [*(a1 + 32) sourceChannel];
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
  v7[2] = __26__FCIssue_contentManifest__block_invoke;
  v7[3] = &unk_1E7C36D40;
  v7[4] = self;
  v4 = [MEMORY[0x1E695DEC8] fc_array:v7];
  v5 = [(FCContentManifest *)v3 initWithManifests:v4];

  return v5;
}

void __26__FCIssue_contentManifest__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 issueRecord];
  v6 = [v5 base];
  v7 = [v6 contentManifest];
  [v4 fc_safelyAddObject:v7];

  v8 = [*(a1 + 32) sourceChannel];
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

+ (BOOL)_fakeIssuesTimestamp
{
  if (qword_1EDB27A38 != -1)
  {
    dispatch_once(&qword_1EDB27A38, &__block_literal_global_187);
  }

  return _MergedGlobals_214;
}

void __31__FCIssue__fakeIssuesTimestamp__block_invoke()
{
  v0 = NewsCoreUserDefaults();
  _MergedGlobals_214 = [v0 BOOLForKey:@"newsfeed.content.show_fake_timestamps"];
}

@end