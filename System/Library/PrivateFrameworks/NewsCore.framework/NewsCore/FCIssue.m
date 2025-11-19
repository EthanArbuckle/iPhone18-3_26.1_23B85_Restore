@interface FCIssue
+ (BOOL)_fakeIssuesTimestamp;
- (BOOL)isBlockedExplicitContent;
- (BOOL)isEqual:(id)a3;
- (COMAPPLEFELDSPARPROTOCOLLIVERPOOLCohortList)globalCohorts;
- (COMAPPLEFELDSPARPROTOCOLLIVERPOOLCohortList)publisherCohorts;
- (COMAPPLEFELDSPARPROTOCOLLIVERPOOLConversionStats)globalConversionStats;
- (COMAPPLEFELDSPARPROTOCOLLIVERPOOLConversionStats)publisherConversionStats;
- (FCContentArchive)contentArchive;
- (FCContentManifest)contentManifest;
- (FCIssue)init;
- (FCIssue)initWithData:(id)a3 sourceChannel:(id)a4 assetManager:(id)a5;
- (FCIssue)initWithIdentifier:(id)a3 type:(int64_t)a4 title:(id)a5 publicationDate:(id)a6 coverDate:(id)a7 lastModifiedDate:(id)a8 metadataJSONAssetHandle:(id)a9 coverImageAssetHandle:(id)a10 coverImageAspectRatio:(double)a11 coverImagePrimaryColor:(id)a12 coverImageBackgroundColor:(id)a13 coverImageTextColor:(id)a14 coverImageAccentColor:(id)a15 layeredCoverJSON:(id)a16 layeredCoverAspectRatio:(double)a17 layeredCoverPrimaryColor:(id)a18 isCurrent:(BOOL)a19 isDraft:(BOOL)a20 isPaid:(BOOL)a21 minimumNewsVersion:(int64_t)a22 allArticleIDs:(id)a23 coverArticleID:(id)a24 allowedStorefrontIDs:(id)a25 blockedStorefrontIDs:(id)a26 topicTagIDs:(id)a27 sourceChannel:(id)a28 notificationDescription:(id)a29 issueDescription:(id)a30 sortDate:(id)a31;
- (FCIssue)initWithIssue:(id)a3 overrides:(id)a4;
- (FCIssue)initWithIssueRecord:(id)a3 assetManager:(id)a4 interestToken:(id)a5 sourceChannel:(id)a6;
- (NSString)description;
- (NSString)publisherID;
- (NSString)sourceChannelID;
- (NSString)sourceFeedID;
- (unint64_t)halfLife;
- (unint64_t)hash;
- (void)enumerateTopicCohortsWithBlock:(id)a3;
- (void)enumerateTopicConversionStatsWithBlock:(id)a3;
@end

@implementation FCIssue

- (NSString)sourceFeedID
{
  v2 = [(FCIssue *)self sourceChannel];
  v3 = [v2 identifier];

  return v3;
}

- (unint64_t)halfLife
{
  v2 = [(FCIssue *)self issueRecord];
  v3 = [v2 halfLifeMilliseconds];

  return v3;
}

- (NSString)publisherID
{
  v2 = [(FCIssue *)self sourceChannel];
  v3 = [v2 identifier];

  return v3;
}

- (COMAPPLEFELDSPARPROTOCOLLIVERPOOLCohortList)globalCohorts
{
  v2 = [(FCIssue *)self issueRecord];
  v3 = [v2 scores];
  v4 = [v3 globalCohorts];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
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
  v2 = [(FCIssue *)self issueRecord];
  v3 = [v2 scores];
  v4 = [v3 sourceChannelCohorts];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = objc_opt_new();
  }

  v7 = v6;

  return v7;
}

- (void)enumerateTopicCohortsWithBlock:(id)a3
{
  v4 = a3;
  v5 = [(FCIssue *)self issueRecord];
  v6 = [v5 scores];
  v7 = [v6 topicCohorts];

  if (v7)
  {
    v8 = [(FCIssue *)self issueRecord];
    v9 = [v8 scores];
    v10 = [v9 topicCohortScores];

    v11 = [(FCIssue *)self issueRecord];
    v12 = [v11 scores];
    v13 = v12;
    if (v10)
    {
      v14 = [v12 topicCohortScores];
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __59__FCIssue_Personalization__enumerateTopicCohortsWithBlock___block_invoke_2;
      v20[3] = &unk_1E7C388D8;
      v15 = &v21;
      v21 = v4;
      [v14 enumerateObjectsUsingBlock:v20];
LABEL_6:

      goto LABEL_7;
    }

    v16 = [v12 topicCohorts];

    if (v16)
    {
      v11 = [(FCIssue *)self topicTagIDs];
      v13 = [(FCIssue *)self issueRecord];
      v14 = [v13 scores];
      v17 = [v14 topicCohorts];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __59__FCIssue_Personalization__enumerateTopicCohortsWithBlock___block_invoke_3;
      v18[3] = &unk_1E7C38900;
      v15 = &v19;
      v19 = v4;
      [v11 fc_enumerateSideBySideWithArray:v17 reverse:0 block:v18];

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
  v2 = [(FCIssue *)self issueRecord];
  v3 = [v2 conversionStats];
  v4 = [v3 globalConversionStats];

  return v4;
}

- (COMAPPLEFELDSPARPROTOCOLLIVERPOOLConversionStats)publisherConversionStats
{
  v2 = [(FCIssue *)self issueRecord];
  v3 = [v2 conversionStats];
  v4 = [v3 channelConversionStats];

  return v4;
}

- (void)enumerateTopicConversionStatsWithBlock:(id)a3
{
  v4 = a3;
  v5 = [(FCIssue *)self issueRecord];
  v6 = [v5 conversionStats];
  v7 = [v6 topicConversionStats];

  if (v7)
  {
    v8 = [(FCIssue *)self issueRecord];
    v9 = [v8 conversionStats];
    v10 = [v9 topicConversionStats];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __67__FCIssue_Personalization__enumerateTopicConversionStatsWithBlock___block_invoke_2;
    v11[3] = &unk_1E7C38928;
    v12 = v4;
    [v10 enumerateObjectsUsingBlock:v11];
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

- (FCIssue)initWithData:(id)a3 sourceChannel:(id)a4 assetManager:(id)a5
{
  v8 = MEMORY[0x1E69B6E60];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [[v8 alloc] initWithData:v11];

  v13 = [(FCIssue *)self initWithIssueRecord:v12 assetManager:v9 interestToken:0 sourceChannel:v10];
  return v13;
}

- (FCIssue)initWithIdentifier:(id)a3 type:(int64_t)a4 title:(id)a5 publicationDate:(id)a6 coverDate:(id)a7 lastModifiedDate:(id)a8 metadataJSONAssetHandle:(id)a9 coverImageAssetHandle:(id)a10 coverImageAspectRatio:(double)a11 coverImagePrimaryColor:(id)a12 coverImageBackgroundColor:(id)a13 coverImageTextColor:(id)a14 coverImageAccentColor:(id)a15 layeredCoverJSON:(id)a16 layeredCoverAspectRatio:(double)a17 layeredCoverPrimaryColor:(id)a18 isCurrent:(BOOL)a19 isDraft:(BOOL)a20 isPaid:(BOOL)a21 minimumNewsVersion:(int64_t)a22 allArticleIDs:(id)a23 coverArticleID:(id)a24 allowedStorefrontIDs:(id)a25 blockedStorefrontIDs:(id)a26 topicTagIDs:(id)a27 sourceChannel:(id)a28 notificationDescription:(id)a29 issueDescription:(id)a30 sortDate:(id)a31
{
  v96 = a3;
  v97 = a5;
  v98 = a6;
  v99 = a7;
  v102 = a8;
  v91 = a9;
  v90 = a10;
  v101 = a12;
  v100 = a13;
  v37 = a14;
  v38 = a15;
  v39 = a16;
  v40 = a18;
  v41 = a23;
  v95 = a24;
  v94 = a25;
  v93 = a26;
  v92 = a27;
  v42 = a28;
  v43 = a29;
  v44 = a30;
  v45 = a31;
  v103.receiver = self;
  v103.super_class = FCIssue;
  v46 = [(FCIssue *)&v103 init];
  if (v46)
  {
    v47 = [v96 copy];
    identifier = v46->_identifier;
    v46->_identifier = v47;

    v46->_type = a4;
    v49 = [v97 copy];
    title = v46->_title;
    v46->_title = v49;

    v51 = [v98 copy];
    publicationDate = v46->_publicationDate;
    v46->_publicationDate = v51;

    v53 = [v99 copy];
    coverDate = v46->_coverDate;
    v46->_coverDate = v53;

    v55 = [v102 copy];
    lastModifiedDate = v46->_lastModifiedDate;
    v46->_lastModifiedDate = v55;

    objc_storeStrong(&v46->_metadataJSONAssetHandle, a9);
    objc_storeStrong(&v46->_coverImageAssetHandle, a10);
    v46->_coverImageAspectRatio = a11;
    v57 = [v101 copy];
    coverImagePrimaryColor = v46->_coverImagePrimaryColor;
    v46->_coverImagePrimaryColor = v57;

    v59 = [v100 copy];
    coverImageBackgroundColor = v46->_coverImageBackgroundColor;
    v46->_coverImageBackgroundColor = v59;

    v61 = [v37 copy];
    coverImageTextColor = v46->_coverImageTextColor;
    v46->_coverImageTextColor = v61;

    v63 = [v38 copy];
    coverImageAccentColor = v46->_coverImageAccentColor;
    v46->_coverImageAccentColor = v63;

    v65 = [v39 copy];
    layeredCoverJSON = v46->_layeredCoverJSON;
    v46->_layeredCoverJSON = v65;

    v46->_layeredCoverAspectRatio = a17;
    v67 = [v40 copy];
    layeredCoverPrimaryColor = v46->_layeredCoverPrimaryColor;
    v46->_layeredCoverPrimaryColor = v67;

    v46->_isCurrent = a19;
    v46->_isDraft = a20;
    v46->_paid = a21;
    v46->_minimumNewsVersion = a22;
    v69 = [v41 copy];
    allArticleIDs = v46->_allArticleIDs;
    v46->_allArticleIDs = v69;

    v71 = [v95 copy];
    coverArticleID = v46->_coverArticleID;
    v46->_coverArticleID = v71;

    v73 = [v94 copy];
    allowedStorefrontIDs = v46->_allowedStorefrontIDs;
    v46->_allowedStorefrontIDs = v73;

    v75 = [v93 copy];
    blockedStorefrontIDs = v46->_blockedStorefrontIDs;
    v46->_blockedStorefrontIDs = v75;

    v77 = [v92 copy];
    topicTagIDs = v46->_topicTagIDs;
    v46->_topicTagIDs = v77;

    v79 = [v42 copy];
    sourceChannel = v46->_sourceChannel;
    v46->_sourceChannel = v79;

    v81 = [v43 copy];
    notificationDescription = v46->_notificationDescription;
    v46->_notificationDescription = v81;

    v83 = [v44 copy];
    issueDescription = v46->_issueDescription;
    v46->_issueDescription = v83;

    v85 = [v45 copy];
    sortDate = v46->_sortDate;
    v46->_sortDate = v85;
  }

  return v46;
}

- (FCIssue)initWithIssueRecord:(id)a3 assetManager:(id)a4 interestToken:(id)a5 sourceChannel:(id)a6
{
  v10 = a3;
  v42 = a5;
  v58 = a5;
  v11 = a6;
  v12 = a4;
  v54 = [v10 type] == 2;
  v57 = [v10 generateMetadataJSONAssetHandleWithAssetManager:v12];
  v73 = [v10 generateCoverImageAssetHandleWithAssetManager:v12];

  v13 = MEMORY[0x1E695DF00];
  v14 = [v10 publishDate];
  v15 = [v13 dateWithPBDate:v14];

  v55 = self;
  if ([objc_opt_class() _fakeIssuesTimestamp])
  {
    v16 = [v15 fc_adjustToRecentDate];

    v15 = v16;
  }

  v17 = MEMORY[0x1E695DF00];
  v18 = [v10 base];
  v19 = [v18 modificationDate];
  v20 = [v17 dateWithPBDate:v19];
  v21 = v20;
  if (v20 || (v21 = v15) != 0)
  {
    v22 = v21;
  }

  else
  {
    v22 = [MEMORY[0x1E695DF00] distantPast];
  }

  v72 = v22;

  [v10 coverAspectRatio];
  v23 = 0.75;
  if (v24 > 0.0)
  {
    [v10 coverAspectRatio];
    v23 = v25;
  }

  v53 = [v10 base];
  v71 = [v53 identifier];
  v70 = [v10 title];
  v59 = v15;
  v56 = v15;
  if (!v15)
  {
    v59 = [MEMORY[0x1E695DF00] date];
  }

  v69 = [v10 edition];
  v52 = [v10 coverPrimaryColor];
  v68 = [FCColor colorWithHexString:?];
  v51 = [v10 coverBackgroundColor];
  v67 = [FCColor nullableColorWithHexString:?];
  v50 = [v10 coverTextColor];
  v66 = [FCColor nullableColorWithHexString:?];
  v49 = [v10 coverAccentColor];
  v65 = [FCColor nullableColorWithHexString:?];
  v64 = [v10 layeredCover];
  [v10 layeredCoverAspectRatio];
  v27 = v26;
  v48 = [v10 layeredCoverPrimaryColor];
  v63 = [FCColor colorWithHexString:?];
  v28 = [v11 currentIssueIDs];
  v46 = [v10 base];
  [v46 identifier];
  v45 = v47 = v28;
  v44 = [v28 containsObject:?];
  v43 = [v10 isDraft];
  v29 = [v10 minimumNewsVersion];
  v62 = [v10 allArticleIDs];
  v61 = [v10 coverArticleID];
  v60 = [v10 allowedStorefrontIDs];
  v30 = [v10 blockedStorefrontIDs];
  v31 = [v10 topicTagIDs];
  v32 = [v10 notificationDescription];
  v33 = v32;
  if (!v32)
  {
    v33 = [v10 issueDescription];
  }

  v34 = [v10 issueDescription];
  v35 = MEMORY[0x1E695DF00];
  v36 = [v10 sortDate];
  v37 = [v35 dateWithPBDate:v36];
  BYTE2(v40) = 1;
  BYTE1(v40) = v43;
  LOBYTE(v40) = v44;
  v38 = [FCIssue initWithIdentifier:v55 type:"initWithIdentifier:type:title:publicationDate:coverDate:lastModifiedDate:metadataJSONAssetHandle:coverImageAssetHandle:coverImageAspectRatio:coverImagePrimaryColor:coverImageBackgroundColor:coverImageTextColor:coverImageAccentColor:layeredCoverJSON:layeredCoverAspectRatio:layeredCoverPrimaryColor:isCurrent:isDraft:isPaid:minimumNewsVersion:allArticleIDs:coverArticleID:allowedStorefrontIDs:blockedStorefrontIDs:topicTagIDs:sourceChannel:notificationDescription:issueDescription:sortDate:" title:v71 publicationDate:v54 coverDate:v70 lastModifiedDate:v59 metadataJSONAssetHandle:v69 coverImageAssetHandle:v72 coverImageAspectRatio:v23 coverImagePrimaryColor:v27 coverImageBackgroundColor:v57 coverImageTextColor:v73 coverImageAccentColor:v68 layeredCoverJSON:v67 layeredCoverAspectRatio:v66 layeredCoverPrimaryColor:v65 isCurrent:v64 isDraft:v63 isPaid:v40 minimumNewsVersion:v29 allArticleIDs:v62 coverArticleID:v61 allowedStorefrontIDs:v60 blockedStorefrontIDs:v30 topicTagIDs:v31 sourceChannel:v11 notificationDescription:v33 issueDescription:v34 sortDate:v37];

  if (!v32)
  {
  }

  if (!v56)
  {
  }

  if (v38)
  {
    objc_storeStrong(&v38->_issueRecord, a3);
    objc_storeStrong(&v38->_interestToken, v42);
  }

  return v38;
}

- (FCIssue)initWithIssue:(id)a3 overrides:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 title];
  if (v8)
  {
  }

  else
  {
    v9 = [v7 issueDescription];

    if (!v9)
    {
      v24 = v6;

      goto LABEL_13;
    }
  }

  v31 = self;
  v48 = [v6 identifier];
  v30 = [v6 type];
  v34 = [v7 title];
  v32 = v34;
  if (!v34)
  {
    v34 = [v6 title];
  }

  v47 = [v6 publicationDate];
  v46 = [v6 coverDate];
  v45 = [v6 lastModifiedDate];
  v44 = [v6 metadataJSONAssetHandle];
  v43 = [v6 coverImageAssetHandle];
  [v6 coverImageAspectRatio];
  v11 = v10;
  v42 = [v6 coverImagePrimaryColor];
  v41 = [v6 coverImageBackgroundColor];
  v40 = [v6 coverImageTextColor];
  v39 = [v6 coverImageAccentColor];
  v38 = [v6 layeredCoverJSON];
  [v6 layeredCoverAspectRatio];
  v13 = v12;
  v37 = [v6 layeredCoverPrimaryColor];
  v29 = [v6 isCurrent];
  v28 = [v6 isDraft];
  v27 = [v6 isPaid];
  v14 = [v6 minimumNewsVersion];
  v36 = [v6 allArticleIDs];
  v35 = [v6 coverArticleID];
  v15 = [v6 allowedStorefrontIDs];
  v16 = [v6 blockedStorefrontIDs];
  v17 = [v6 topicTagIDs];
  v18 = [v6 sourceChannel];
  v19 = [v6 notificationDescription];
  v33 = v7;
  v20 = [v7 issueDescription];
  v21 = v20;
  if (!v20)
  {
    v21 = [v6 issueDescription];
  }

  v22 = [v6 sortDate];
  BYTE2(v26) = v27;
  BYTE1(v26) = v28;
  LOBYTE(v26) = v29;
  v23 = [FCIssue initWithIdentifier:v31 type:"initWithIdentifier:type:title:publicationDate:coverDate:lastModifiedDate:metadataJSONAssetHandle:coverImageAssetHandle:coverImageAspectRatio:coverImagePrimaryColor:coverImageBackgroundColor:coverImageTextColor:coverImageAccentColor:layeredCoverJSON:layeredCoverAspectRatio:layeredCoverPrimaryColor:isCurrent:isDraft:isPaid:minimumNewsVersion:allArticleIDs:coverArticleID:allowedStorefrontIDs:blockedStorefrontIDs:topicTagIDs:sourceChannel:notificationDescription:issueDescription:sortDate:" title:v48 publicationDate:v30 coverDate:v34 lastModifiedDate:v47 metadataJSONAssetHandle:v46 coverImageAssetHandle:v45 coverImageAspectRatio:v11 coverImagePrimaryColor:v13 coverImageBackgroundColor:v44 coverImageTextColor:v43 coverImageAccentColor:v42 layeredCoverJSON:v41 layeredCoverAspectRatio:v40 layeredCoverPrimaryColor:v39 isCurrent:v38 isDraft:v37 isPaid:v26 minimumNewsVersion:v14 allArticleIDs:v36 coverArticleID:v35 allowedStorefrontIDs:v15 blockedStorefrontIDs:v16 topicTagIDs:v17 sourceChannel:v18 notificationDescription:v19 issueDescription:v21 sortDate:v22];

  if (!v20)
  {
  }

  if (!v32)
  {
  }

  self = v23;
  v24 = self;
  v7 = v33;
LABEL_13:

  return v24;
}

- (NSString)description
{
  v3 = [[FCDescription alloc] initWithObject:self];
  v4 = [(FCIssue *)self identifier];
  [(FCDescription *)v3 addField:@"identifier" value:v4];

  v5 = [(FCDescription *)v3 descriptionString];

  return v5;
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
    v7 = [(FCIssue *)self identifier];
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
  v2 = [(FCIssue *)self identifier];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isBlockedExplicitContent
{
  v2 = [(FCIssue *)self sourceChannel];
  v3 = [v2 isBlockedExplicitContent];

  return v3;
}

- (NSString)sourceChannelID
{
  v2 = [(FCIssue *)self sourceChannel];
  v3 = [v2 identifier];

  return v3;
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