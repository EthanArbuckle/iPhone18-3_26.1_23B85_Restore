@interface BMMessagesSharedWithYouFeedbackRankableSocialHighlight
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMMessagesSharedWithYouFeedbackRankableSocialHighlight)initWithHighlightIdentifier:(id)identifier highlightType:(int)type syndicationSecondsSinceReferenceDate:(id)date sourceBundleID:(id)d applicationIdentifiers:(id)identifiers resourceURL:(id)l sender:(id)sender domainIdentifier:(id)self0 batchIdentifier:(id)self1 calculatedFeatures:(id)self2 clientIdentifier:(id)self3 contentCreationSecondsSinceReferenceDate:(id)self4 groupPhotoPathDigest:(id)self5 displayName:(id)self6 isPrimary:(id)self7 attributionIdentifier:(id)self8 rank:(id)self9 score:(id)score isConversationAutoDonating:(id)donating originatingDeviceId:(id)id rankingSecondsSinceReferenceDate:(id)sinceReferenceDate resolvedUrl:(id)url clientVariant:(id)variant;
- (BMMessagesSharedWithYouFeedbackRankableSocialHighlight)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)_applicationIdentifiersJSONArray;
- (id)_calculatedFeaturesJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMMessagesSharedWithYouFeedbackRankableSocialHighlight

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    highlightIdentifier = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self highlightIdentifier];
    highlightIdentifier2 = [v5 highlightIdentifier];
    v8 = highlightIdentifier2;
    if (highlightIdentifier == highlightIdentifier2)
    {
    }

    else
    {
      highlightIdentifier3 = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self highlightIdentifier];
      highlightIdentifier4 = [v5 highlightIdentifier];
      v11 = [highlightIdentifier3 isEqual:highlightIdentifier4];

      if (!v11)
      {
        goto LABEL_93;
      }
    }

    highlightType = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self highlightType];
    if (highlightType != [v5 highlightType])
    {
      goto LABEL_93;
    }

    if (-[BMMessagesSharedWithYouFeedbackRankableSocialHighlight hasSyndicationSecondsSinceReferenceDate](self, "hasSyndicationSecondsSinceReferenceDate") || [v5 hasSyndicationSecondsSinceReferenceDate])
    {
      if (![(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self hasSyndicationSecondsSinceReferenceDate])
      {
        goto LABEL_93;
      }

      if (![v5 hasSyndicationSecondsSinceReferenceDate])
      {
        goto LABEL_93;
      }

      [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self syndicationSecondsSinceReferenceDate];
      v15 = v14;
      [v5 syndicationSecondsSinceReferenceDate];
      if (v15 != v16)
      {
        goto LABEL_93;
      }
    }

    sourceBundleID = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self sourceBundleID];
    sourceBundleID2 = [v5 sourceBundleID];
    v19 = sourceBundleID2;
    if (sourceBundleID == sourceBundleID2)
    {
    }

    else
    {
      sourceBundleID3 = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self sourceBundleID];
      sourceBundleID4 = [v5 sourceBundleID];
      v22 = [sourceBundleID3 isEqual:sourceBundleID4];

      if (!v22)
      {
        goto LABEL_93;
      }
    }

    applicationIdentifiers = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self applicationIdentifiers];
    applicationIdentifiers2 = [v5 applicationIdentifiers];
    v25 = applicationIdentifiers2;
    if (applicationIdentifiers == applicationIdentifiers2)
    {
    }

    else
    {
      applicationIdentifiers3 = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self applicationIdentifiers];
      applicationIdentifiers4 = [v5 applicationIdentifiers];
      v28 = [applicationIdentifiers3 isEqual:applicationIdentifiers4];

      if (!v28)
      {
        goto LABEL_93;
      }
    }

    resourceURL = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self resourceURL];
    resourceURL2 = [v5 resourceURL];
    v31 = resourceURL2;
    if (resourceURL == resourceURL2)
    {
    }

    else
    {
      resourceURL3 = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self resourceURL];
      resourceURL4 = [v5 resourceURL];
      v34 = [resourceURL3 isEqual:resourceURL4];

      if (!v34)
      {
        goto LABEL_93;
      }
    }

    sender = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self sender];
    sender2 = [v5 sender];
    v37 = sender2;
    if (sender == sender2)
    {
    }

    else
    {
      sender3 = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self sender];
      sender4 = [v5 sender];
      v40 = [sender3 isEqual:sender4];

      if (!v40)
      {
        goto LABEL_93;
      }
    }

    domainIdentifier = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self domainIdentifier];
    domainIdentifier2 = [v5 domainIdentifier];
    v43 = domainIdentifier2;
    if (domainIdentifier == domainIdentifier2)
    {
    }

    else
    {
      domainIdentifier3 = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self domainIdentifier];
      domainIdentifier4 = [v5 domainIdentifier];
      v46 = [domainIdentifier3 isEqual:domainIdentifier4];

      if (!v46)
      {
        goto LABEL_93;
      }
    }

    batchIdentifier = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self batchIdentifier];
    batchIdentifier2 = [v5 batchIdentifier];
    v49 = batchIdentifier2;
    if (batchIdentifier == batchIdentifier2)
    {
    }

    else
    {
      batchIdentifier3 = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self batchIdentifier];
      batchIdentifier4 = [v5 batchIdentifier];
      v52 = [batchIdentifier3 isEqual:batchIdentifier4];

      if (!v52)
      {
        goto LABEL_93;
      }
    }

    calculatedFeatures = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self calculatedFeatures];
    calculatedFeatures2 = [v5 calculatedFeatures];
    v55 = calculatedFeatures2;
    if (calculatedFeatures == calculatedFeatures2)
    {
    }

    else
    {
      calculatedFeatures3 = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self calculatedFeatures];
      calculatedFeatures4 = [v5 calculatedFeatures];
      v58 = [calculatedFeatures3 isEqual:calculatedFeatures4];

      if (!v58)
      {
        goto LABEL_93;
      }
    }

    clientIdentifier = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self clientIdentifier];
    clientIdentifier2 = [v5 clientIdentifier];
    v61 = clientIdentifier2;
    if (clientIdentifier == clientIdentifier2)
    {
    }

    else
    {
      clientIdentifier3 = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self clientIdentifier];
      clientIdentifier4 = [v5 clientIdentifier];
      v64 = [clientIdentifier3 isEqual:clientIdentifier4];

      if (!v64)
      {
        goto LABEL_93;
      }
    }

    if (-[BMMessagesSharedWithYouFeedbackRankableSocialHighlight hasContentCreationSecondsSinceReferenceDate](self, "hasContentCreationSecondsSinceReferenceDate") || [v5 hasContentCreationSecondsSinceReferenceDate])
    {
      if (![(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self hasContentCreationSecondsSinceReferenceDate])
      {
        goto LABEL_93;
      }

      if (![v5 hasContentCreationSecondsSinceReferenceDate])
      {
        goto LABEL_93;
      }

      [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self contentCreationSecondsSinceReferenceDate];
      v66 = v65;
      [v5 contentCreationSecondsSinceReferenceDate];
      if (v66 != v67)
      {
        goto LABEL_93;
      }
    }

    groupPhotoPathDigest = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self groupPhotoPathDigest];
    groupPhotoPathDigest2 = [v5 groupPhotoPathDigest];
    v70 = groupPhotoPathDigest2;
    if (groupPhotoPathDigest == groupPhotoPathDigest2)
    {
    }

    else
    {
      groupPhotoPathDigest3 = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self groupPhotoPathDigest];
      groupPhotoPathDigest4 = [v5 groupPhotoPathDigest];
      v73 = [groupPhotoPathDigest3 isEqual:groupPhotoPathDigest4];

      if (!v73)
      {
        goto LABEL_93;
      }
    }

    displayName = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self displayName];
    displayName2 = [v5 displayName];
    v76 = displayName2;
    if (displayName == displayName2)
    {
    }

    else
    {
      displayName3 = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self displayName];
      displayName4 = [v5 displayName];
      v79 = [displayName3 isEqual:displayName4];

      if (!v79)
      {
        goto LABEL_93;
      }
    }

    if (-[BMMessagesSharedWithYouFeedbackRankableSocialHighlight hasIsPrimary](self, "hasIsPrimary") || [v5 hasIsPrimary])
    {
      if (![(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self hasIsPrimary])
      {
        goto LABEL_93;
      }

      if (![v5 hasIsPrimary])
      {
        goto LABEL_93;
      }

      isPrimary = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self isPrimary];
      if (isPrimary != [v5 isPrimary])
      {
        goto LABEL_93;
      }
    }

    attributionIdentifier = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self attributionIdentifier];
    attributionIdentifier2 = [v5 attributionIdentifier];
    v83 = attributionIdentifier2;
    if (attributionIdentifier == attributionIdentifier2)
    {
    }

    else
    {
      attributionIdentifier3 = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self attributionIdentifier];
      attributionIdentifier4 = [v5 attributionIdentifier];
      v86 = [attributionIdentifier3 isEqual:attributionIdentifier4];

      if (!v86)
      {
        goto LABEL_93;
      }
    }

    if (-[BMMessagesSharedWithYouFeedbackRankableSocialHighlight hasRank](self, "hasRank") || [v5 hasRank])
    {
      if (![(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self hasRank])
      {
        goto LABEL_93;
      }

      if (![v5 hasRank])
      {
        goto LABEL_93;
      }

      rank = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self rank];
      if (rank != [v5 rank])
      {
        goto LABEL_93;
      }
    }

    if (-[BMMessagesSharedWithYouFeedbackRankableSocialHighlight hasScore](self, "hasScore") || [v5 hasScore])
    {
      if (![(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self hasScore])
      {
        goto LABEL_93;
      }

      if (![v5 hasScore])
      {
        goto LABEL_93;
      }

      [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self score];
      v89 = v88;
      [v5 score];
      if (v89 != v90)
      {
        goto LABEL_93;
      }
    }

    if (-[BMMessagesSharedWithYouFeedbackRankableSocialHighlight hasIsConversationAutoDonating](self, "hasIsConversationAutoDonating") || [v5 hasIsConversationAutoDonating])
    {
      if (![(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self hasIsConversationAutoDonating])
      {
        goto LABEL_93;
      }

      if (![v5 hasIsConversationAutoDonating])
      {
        goto LABEL_93;
      }

      isConversationAutoDonating = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self isConversationAutoDonating];
      if (isConversationAutoDonating != [v5 isConversationAutoDonating])
      {
        goto LABEL_93;
      }
    }

    originatingDeviceId = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self originatingDeviceId];
    originatingDeviceId2 = [v5 originatingDeviceId];
    v94 = originatingDeviceId2;
    if (originatingDeviceId == originatingDeviceId2)
    {
    }

    else
    {
      originatingDeviceId3 = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self originatingDeviceId];
      originatingDeviceId4 = [v5 originatingDeviceId];
      v97 = [originatingDeviceId3 isEqual:originatingDeviceId4];

      if (!v97)
      {
        goto LABEL_93;
      }
    }

    if (-[BMMessagesSharedWithYouFeedbackRankableSocialHighlight hasRankingSecondsSinceReferenceDate](self, "hasRankingSecondsSinceReferenceDate") || [v5 hasRankingSecondsSinceReferenceDate])
    {
      if (![(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self hasRankingSecondsSinceReferenceDate])
      {
        goto LABEL_93;
      }

      if (![v5 hasRankingSecondsSinceReferenceDate])
      {
        goto LABEL_93;
      }

      [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self rankingSecondsSinceReferenceDate];
      v99 = v98;
      [v5 rankingSecondsSinceReferenceDate];
      if (v99 != v100)
      {
        goto LABEL_93;
      }
    }

    resolvedUrl = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self resolvedUrl];
    resolvedUrl2 = [v5 resolvedUrl];
    v103 = resolvedUrl2;
    if (resolvedUrl == resolvedUrl2)
    {
    }

    else
    {
      resolvedUrl3 = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self resolvedUrl];
      resolvedUrl4 = [v5 resolvedUrl];
      v106 = [resolvedUrl3 isEqual:resolvedUrl4];

      if (!v106)
      {
LABEL_93:
        v12 = 0;
LABEL_94:

        goto LABEL_95;
      }
    }

    clientVariant = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self clientVariant];
    clientVariant2 = [v5 clientVariant];
    if (clientVariant == clientVariant2)
    {
      v12 = 1;
    }

    else
    {
      clientVariant3 = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self clientVariant];
      clientVariant4 = [v5 clientVariant];
      v12 = [clientVariant3 isEqual:clientVariant4];
    }

    goto LABEL_94;
  }

  v12 = 0;
LABEL_95:

  return v12;
}

- (id)jsonDictionary
{
  v86[23] = *MEMORY[0x1E69E9840];
  highlightIdentifier = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self highlightIdentifier];
  v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMessagesSharedWithYouFeedbackRankableSocialHighlight highlightType](self, "highlightType")}];
  if (![(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self hasSyndicationSecondsSinceReferenceDate]|| ([(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self syndicationSecondsSinceReferenceDate], fabs(v5) == INFINITY))
  {
    v7 = 0;
  }

  else
  {
    [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self syndicationSecondsSinceReferenceDate];
    v6 = MEMORY[0x1E696AD98];
    [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self syndicationSecondsSinceReferenceDate];
    v7 = [v6 numberWithDouble:?];
  }

  sourceBundleID = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self sourceBundleID];
  _applicationIdentifiersJSONArray = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self _applicationIdentifiersJSONArray];
  resourceURL = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self resourceURL];
  sender = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self sender];
  jsonDictionary = [sender jsonDictionary];

  domainIdentifier = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self domainIdentifier];
  batchIdentifier = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self batchIdentifier];
  _calculatedFeaturesJSONArray = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self _calculatedFeaturesJSONArray];
  clientIdentifier = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self clientIdentifier];
  if (![(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self hasContentCreationSecondsSinceReferenceDate]|| ([(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self contentCreationSecondsSinceReferenceDate], fabs(v13) == INFINITY))
  {
    v80 = 0;
  }

  else
  {
    [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self contentCreationSecondsSinceReferenceDate];
    v14 = MEMORY[0x1E696AD98];
    [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self contentCreationSecondsSinceReferenceDate];
    v80 = [v14 numberWithDouble:?];
  }

  groupPhotoPathDigest = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self groupPhotoPathDigest];
  displayName = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self displayName];
  if ([(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self hasIsPrimary])
  {
    v77 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMessagesSharedWithYouFeedbackRankableSocialHighlight isPrimary](self, "isPrimary")}];
  }

  else
  {
    v77 = 0;
  }

  attributionIdentifier = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self attributionIdentifier];
  if ([(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self hasRank])
  {
    v75 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMMessagesSharedWithYouFeedbackRankableSocialHighlight rank](self, "rank")}];
  }

  else
  {
    v75 = 0;
  }

  if (![(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self hasScore]|| ([(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self score], fabs(v15) == INFINITY))
  {
    v74 = 0;
  }

  else
  {
    [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self score];
    v16 = MEMORY[0x1E696AD98];
    [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self score];
    v74 = [v16 numberWithDouble:?];
  }

  if ([(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self hasIsConversationAutoDonating])
  {
    v73 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMessagesSharedWithYouFeedbackRankableSocialHighlight isConversationAutoDonating](self, "isConversationAutoDonating")}];
  }

  else
  {
    v73 = 0;
  }

  originatingDeviceId = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self originatingDeviceId];
  if (![(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self hasRankingSecondsSinceReferenceDate]|| ([(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self rankingSecondsSinceReferenceDate], fabs(v17) == INFINITY))
  {
    v71 = 0;
  }

  else
  {
    [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self rankingSecondsSinceReferenceDate];
    v18 = MEMORY[0x1E696AD98];
    [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self rankingSecondsSinceReferenceDate];
    v71 = [v18 numberWithDouble:?];
  }

  resolvedUrl = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self resolvedUrl];
  clientVariant = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self clientVariant];
  v85[0] = @"highlightIdentifier";
  null = highlightIdentifier;
  if (!highlightIdentifier)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v58 = null;
  v86[0] = null;
  v85[1] = @"highlightType";
  null2 = v4;
  if (!v4)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v57 = null2;
  v86[1] = null2;
  v85[2] = @"syndicationSecondsSinceReferenceDate";
  null3 = v7;
  if (!v7)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v56 = null3;
  v86[2] = null3;
  v85[3] = @"sourceBundleID";
  null4 = sourceBundleID;
  if (!sourceBundleID)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v55 = null4;
  v86[3] = null4;
  v85[4] = @"applicationIdentifiers";
  null5 = _applicationIdentifiersJSONArray;
  if (!_applicationIdentifiersJSONArray)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v54 = null5;
  v86[4] = null5;
  v85[5] = @"resourceURL";
  null6 = resourceURL;
  if (!resourceURL)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v53 = null6;
  v86[5] = null6;
  v85[6] = @"sender";
  null7 = jsonDictionary;
  if (!jsonDictionary)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v52 = null7;
  v86[6] = null7;
  v85[7] = @"domainIdentifier";
  null8 = domainIdentifier;
  if (!domainIdentifier)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v86[7] = null8;
  v85[8] = @"batchIdentifier";
  null9 = batchIdentifier;
  if (!batchIdentifier)
  {
    null9 = [MEMORY[0x1E695DFB0] null];
  }

  v86[8] = null9;
  v85[9] = @"calculatedFeatures";
  null10 = _calculatedFeaturesJSONArray;
  if (!_calculatedFeaturesJSONArray)
  {
    null10 = [MEMORY[0x1E695DFB0] null];
  }

  v63 = null10;
  v86[9] = null10;
  v85[10] = @"clientIdentifier";
  null11 = clientIdentifier;
  if (!clientIdentifier)
  {
    null11 = [MEMORY[0x1E695DFB0] null];
  }

  v62 = null11;
  v86[10] = null11;
  v85[11] = @"contentCreationSecondsSinceReferenceDate";
  null12 = v80;
  if (!v80)
  {
    null12 = [MEMORY[0x1E695DFB0] null];
  }

  v61 = null12;
  v86[11] = null12;
  v85[12] = @"groupPhotoPathDigest";
  null13 = groupPhotoPathDigest;
  if (!groupPhotoPathDigest)
  {
    null13 = [MEMORY[0x1E695DFB0] null];
  }

  v67 = sourceBundleID;
  v86[12] = null13;
  v85[13] = @"displayName";
  null14 = displayName;
  v34 = null13;
  if (!displayName)
  {
    null14 = [MEMORY[0x1E695DFB0] null];
  }

  v64 = jsonDictionary;
  v60 = null14;
  v86[13] = null14;
  v85[14] = @"isPrimary";
  null15 = v77;
  if (!v77)
  {
    null15 = [MEMORY[0x1E695DFB0] null];
  }

  v65 = resourceURL;
  v47 = null15;
  v86[14] = null15;
  v85[15] = @"attributionIdentifier";
  null16 = attributionIdentifier;
  if (!attributionIdentifier)
  {
    null16 = [MEMORY[0x1E695DFB0] null];
  }

  v68 = v7;
  v86[15] = null16;
  v85[16] = @"rank";
  null17 = v75;
  if (!v75)
  {
    null17 = [MEMORY[0x1E695DFB0] null];
  }

  v66 = _applicationIdentifiersJSONArray;
  v69 = highlightIdentifier;
  v86[16] = null17;
  v85[17] = @"score";
  null18 = v74;
  if (!v74)
  {
    null18 = [MEMORY[0x1E695DFB0] null];
  }

  v39 = v4;
  v86[17] = null18;
  v85[18] = @"isConversationAutoDonating";
  null19 = v73;
  if (!v73)
  {
    null19 = [MEMORY[0x1E695DFB0] null];
  }

  v51 = null8;
  v86[18] = null19;
  v85[19] = @"originatingDeviceId";
  null20 = originatingDeviceId;
  if (!originatingDeviceId)
  {
    null20 = [MEMORY[0x1E695DFB0] null];
  }

  v50 = null9;
  v86[19] = null20;
  v85[20] = @"rankingSecondsSinceReferenceDate";
  null21 = v71;
  if (!v71)
  {
    null21 = [MEMORY[0x1E695DFB0] null];
  }

  v49 = v34;
  v86[20] = null21;
  v85[21] = @"resolvedUrl";
  null22 = resolvedUrl;
  if (!resolvedUrl)
  {
    null22 = [MEMORY[0x1E695DFB0] null];
  }

  v86[21] = null22;
  v85[22] = @"clientVariant";
  null23 = clientVariant;
  if (!clientVariant)
  {
    null23 = [MEMORY[0x1E695DFB0] null];
  }

  v86[22] = null23;
  v59 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v86 forKeys:v85 count:{23, v47}];
  if (!clientVariant)
  {
  }

  if (!resolvedUrl)
  {
  }

  if (!v71)
  {
  }

  if (!originatingDeviceId)
  {
  }

  if (!v73)
  {
  }

  if (!v74)
  {
  }

  if (!v75)
  {
  }

  if (!attributionIdentifier)
  {
  }

  if (!v77)
  {
  }

  if (!displayName)
  {
  }

  if (!groupPhotoPathDigest)
  {
  }

  if (!v80)
  {
  }

  if (!clientIdentifier)
  {
  }

  if (!_calculatedFeaturesJSONArray)
  {
  }

  if (!batchIdentifier)
  {
  }

  if (domainIdentifier)
  {
    if (v64)
    {
      goto LABEL_104;
    }
  }

  else
  {

    if (v64)
    {
LABEL_104:
      if (v65)
      {
        goto LABEL_105;
      }

      goto LABEL_115;
    }
  }

  if (v65)
  {
LABEL_105:
    if (v66)
    {
      goto LABEL_106;
    }

    goto LABEL_116;
  }

LABEL_115:

  if (v66)
  {
LABEL_106:
    if (v67)
    {
      goto LABEL_107;
    }

    goto LABEL_117;
  }

LABEL_116:

  if (v67)
  {
LABEL_107:
    if (v68)
    {
      goto LABEL_108;
    }

    goto LABEL_118;
  }

LABEL_117:

  if (v68)
  {
LABEL_108:
    if (v39)
    {
      goto LABEL_109;
    }

LABEL_119:

    if (v69)
    {
      goto LABEL_110;
    }

    goto LABEL_120;
  }

LABEL_118:

  if (!v39)
  {
    goto LABEL_119;
  }

LABEL_109:
  if (v69)
  {
    goto LABEL_110;
  }

LABEL_120:

LABEL_110:
  v45 = *MEMORY[0x1E69E9840];

  return v59;
}

- (id)_calculatedFeaturesJSONArray
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  calculatedFeatures = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self calculatedFeatures];
  v5 = [calculatedFeatures countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(calculatedFeatures);
        }

        jsonDictionary = [*(*(&v12 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:jsonDictionary];
      }

      v6 = [calculatedFeatures countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)_applicationIdentifiersJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  applicationIdentifiers = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self applicationIdentifiers];
  v5 = [applicationIdentifiers countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(applicationIdentifiers);
        }

        [v3 addObject:*(*(&v11 + 1) + 8 * i)];
      }

      v6 = [applicationIdentifiers countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BMMessagesSharedWithYouFeedbackRankableSocialHighlight)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v316[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"highlightIdentifier"];
  selfCopy = self;
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v10 = objc_alloc(MEMORY[0x1E696ABC0]);
        v11 = *MEMORY[0x1E698F240];
        v315 = *MEMORY[0x1E696A578];
        v12 = dictionaryCopy;
        v13 = objc_alloc(MEMORY[0x1E696AEC0]);
        v181 = objc_opt_class();
        v14 = v13;
        dictionaryCopy = v12;
        v15 = [v14 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v181, @"highlightIdentifier"];
        v316[0] = v15;
        v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v316 forKeys:&v315 count:1];
        v17 = v11;
        v9 = v16;
        v8 = 0;
        v18 = 0;
        *error = [v10 initWithDomain:v17 code:2 userInfo:v16];
        goto LABEL_227;
      }

      v8 = 0;
      v18 = 0;
      goto LABEL_228;
    }

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = [dictionaryCopy objectForKeyedSubscript:@"highlightType"];
  if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v243 = v9;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (error)
        {
          v66 = objc_alloc(MEMORY[0x1E696ABC0]);
          v67 = v9;
          v68 = *MEMORY[0x1E698F240];
          v313 = *MEMORY[0x1E696A578];
          v245 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"highlightType"];
          v314 = v245;
          v69 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v314 forKeys:&v313 count:1];
          v70 = v68;
          v9 = v67;
          v71 = [v66 initWithDomain:v70 code:2 userInfo:v69];
          v15 = 0;
          v18 = 0;
          *error = v71;
          v20 = v69;
          goto LABEL_226;
        }

        v15 = 0;
        v18 = 0;
        goto LABEL_227;
      }

      v19 = v9;
      v243 = [MEMORY[0x1E696AD98] numberWithInt:BMMessagesSharedWithYouFeedbackRankableSocialHighlightTypeFromString(v19)];
    }
  }

  else
  {
    v243 = 0;
  }

  v20 = [dictionaryCopy objectForKeyedSubscript:@"syndicationSecondsSinceReferenceDate"];
  errorCopy = error;
  if (v20 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v51 = objc_alloc(MEMORY[0x1E696ABC0]);
        v52 = v9;
        v53 = *MEMORY[0x1E698F240];
        v311 = *MEMORY[0x1E696A578];
        v54 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"syndicationSecondsSinceReferenceDate"];
        v312 = v54;
        v55 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v312 forKeys:&v311 count:1];
        v56 = v51;
        v30 = v54;
        v57 = v53;
        v9 = v52;
        v246 = v55;
        v245 = 0;
        v18 = 0;
        v15 = v243;
        *error = [v56 initWithDomain:v57 code:2 userInfo:?];
        goto LABEL_225;
      }

      v245 = 0;
      v18 = 0;
      v15 = v243;
      goto LABEL_226;
    }

    v245 = v20;
  }

  else
  {
    v245 = 0;
  }

  v21 = [dictionaryCopy objectForKeyedSubscript:@"sourceBundleID"];
  v241 = v9;
  v246 = v21;
  if (!v21)
  {
    v23 = v8;
    goto LABEL_24;
  }

  v22 = v21;
  v23 = v8;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
LABEL_24:
    v24 = dictionaryCopy;
    v25 = v20;
    v26 = 0;
    goto LABEL_25;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (errorCopy)
    {
      v249 = objc_alloc(MEMORY[0x1E696ABC0]);
      v58 = *MEMORY[0x1E698F240];
      v309 = *MEMORY[0x1E696A578];
      v27 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"sourceBundleID"];
      v310 = v27;
      v59 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v310 forKeys:&v309 count:1];
      v60 = v249;
      v61 = v58;
      v9 = v241;
      v250 = v59;
      v30 = 0;
      v18 = 0;
      *errorCopy = [v60 initWithDomain:v61 code:2 userInfo:?];
      v15 = v243;

      goto LABEL_224;
    }

    v18 = 0;
    v15 = v243;
    v30 = 0;
    goto LABEL_225;
  }

  v24 = dictionaryCopy;
  v25 = v20;
  v26 = v22;
LABEL_25:
  v27 = [v24 objectForKeyedSubscript:@"applicationIdentifiers"];
  null = [MEMORY[0x1E695DFB0] null];
  v29 = [v27 isEqual:null];

  v242 = v23;
  v239 = v24;
  v240 = v25;
  v237 = v7;
  v238 = v26;
  if (v29)
  {

    v27 = 0;
  }

  else if (v27)
  {
    v30 = v26;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (errorCopy)
      {
        v62 = objc_alloc(MEMORY[0x1E696ABC0]);
        v63 = *MEMORY[0x1E698F240];
        v307 = *MEMORY[0x1E696A578];
        v248 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"applicationIdentifiers"];
        v308 = v248;
        v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v308 forKeys:&v307 count:1];
        v64 = v62;
        v30 = v26;
        v65 = [v64 initWithDomain:v63 code:2 userInfo:v50];
        v18 = 0;
        *errorCopy = v65;
        v15 = v243;
        v20 = v25;
        dictionaryCopy = v24;
        v8 = v23;
        goto LABEL_222;
      }

      v18 = 0;
      v15 = v243;
      v20 = v25;
      dictionaryCopy = v24;
      v8 = v23;
      v9 = v241;
      goto LABEL_224;
    }
  }

  v248 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v27, "count")}];
  v257 = 0u;
  v258 = 0u;
  v259 = 0u;
  v260 = 0u;
  v27 = v27;
  v31 = [v27 countByEnumeratingWithState:&v257 objects:v306 count:16];
  v32 = v246;
  if (v31)
  {
    v33 = v31;
    v34 = *v258;
    do
    {
      v35 = v32;
      for (i = 0; i != v33; ++i)
      {
        if (*v258 != v34)
        {
          objc_enumerationMutation(v27);
        }

        v37 = *(*(&v257 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v41 = errorCopy;
          if (errorCopy)
          {
            v42 = objc_alloc(MEMORY[0x1E696ABC0]);
            v43 = *MEMORY[0x1E698F240];
            v304 = *MEMORY[0x1E696A578];
            v236 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"applicationIdentifiers"];
            v305 = v236;
            v44 = MEMORY[0x1E695DF20];
            v45 = &v305;
            v46 = &v304;
LABEL_47:
            v47 = [v44 dictionaryWithObjects:v45 forKeys:v46 count:1];
            v48 = v42;
            v49 = v47;
            v8 = v242;
            v15 = v243;
            v18 = 0;
            *v41 = [v48 initWithDomain:v43 code:2 userInfo:?];
            v50 = v27;
            dictionaryCopy = v239;
            v20 = v240;
            goto LABEL_219;
          }

LABEL_50:
          v18 = 0;
          v50 = v27;
          dictionaryCopy = v24;
          v20 = v240;
          v7 = v237;
          v30 = v238;
          v8 = v242;
          v15 = v243;
          goto LABEL_222;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v41 = errorCopy;
          if (errorCopy)
          {
            v42 = objc_alloc(MEMORY[0x1E696ABC0]);
            v43 = *MEMORY[0x1E698F240];
            v302 = *MEMORY[0x1E696A578];
            v236 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"applicationIdentifiers"];
            v303 = v236;
            v44 = MEMORY[0x1E695DF20];
            v45 = &v303;
            v46 = &v302;
            goto LABEL_47;
          }

          goto LABEL_50;
        }

        v38 = v37;
        [v248 addObject:v38];
      }

      v33 = [v27 countByEnumeratingWithState:&v257 objects:v306 count:16];
      v32 = v35;
    }

    while (v33);
  }

  dictionaryCopy = v24;
  v39 = [v24 objectForKeyedSubscript:@"resourceURL"];
  v232 = v27;
  v236 = v39;
  if (v39)
  {
    v40 = v39;
    objc_opt_class();
    v20 = v240;
    if (objc_opt_isKindOfClass())
    {
      v231 = 0;
    }

    else
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v73 = v40;
      v7 = v237;
      if ((isKindOfClass & 1) == 0)
      {
        if (errorCopy)
        {
          v91 = objc_alloc(MEMORY[0x1E696ABC0]);
          v92 = *MEMORY[0x1E698F240];
          v300 = *MEMORY[0x1E696A578];
          v83 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"resourceURL"];
          v301 = v83;
          v74 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v301 forKeys:&v300 count:1];
          v20 = v240;
          v93 = [v91 initWithDomain:v92 code:2 userInfo:v74];
          v50 = 0;
          v18 = 0;
          *errorCopy = v93;
          v8 = v242;
          v15 = v243;
          goto LABEL_218;
        }

        v50 = 0;
        v18 = 0;
        v15 = v243;
        v30 = v238;
        v20 = v240;
        v8 = v242;
        goto LABEL_221;
      }

      v231 = v73;
      v20 = v240;
    }
  }

  else
  {
    v231 = 0;
    v20 = v240;
  }

  v74 = [v24 objectForKeyedSubscript:@"sender"];
  v75 = v242;
  if (v74)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v229 = v74;
      v74 = 0;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (errorCopy)
        {
          v233 = objc_alloc(MEMORY[0x1E696ABC0]);
          v94 = *MEMORY[0x1E698F240];
          v298 = *MEMORY[0x1E696A578];
          v95 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"sender"];
          v299 = v95;
          v96 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v299 forKeys:&v298 count:1];
          v20 = v240;
          *errorCopy = [v233 initWithDomain:v94 code:2 userInfo:v96];

          v18 = 0;
          v83 = v74;
          v74 = v95;
          v8 = v242;
          v15 = v243;
          v50 = v231;
          goto LABEL_218;
        }

        v18 = 0;
        v15 = v243;
        v50 = v231;
        v7 = v237;
        v49 = v74;
        v8 = v242;
        goto LABEL_220;
      }

      v83 = v74;
      v84 = [BMMessagesSharedWithYouFeedbackRankableSocialHighlightContact alloc];
      v256 = 0;
      v85 = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlightContact *)v84 initWithJSONDictionary:v83 error:&v256];
      v86 = v256;
      if (v86)
      {
        v15 = v243;
        if (errorCopy)
        {
          v86 = v86;
          *errorCopy = v86;
        }

        v18 = 0;
        v8 = v242;
        v50 = v231;
        v74 = v85;
        goto LABEL_218;
      }

      v229 = v74;

      v75 = v242;
      v74 = v85;
    }
  }

  else
  {
    v229 = 0;
  }

  v76 = [v24 objectForKeyedSubscript:@"domainIdentifier"];
  v230 = v76;
  if (v76 && (v77 = v76, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v88 = v20;
    v8 = v75;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (errorCopy)
      {
        v97 = objc_alloc(MEMORY[0x1E696ABC0]);
        v98 = *MEMORY[0x1E698F240];
        v296 = *MEMORY[0x1E696A578];
        v99 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"domainIdentifier"];
        v297 = v99;
        v100 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v297 forKeys:&v296 count:1];
        v89 = v240;
        v101 = [v97 initWithDomain:v98 code:2 userInfo:v100];
        v102 = 0;
        v18 = 0;
        *errorCopy = v101;
        v15 = v243;
        v103 = v100;
        v104 = v99;
        v78 = v103;
        v50 = v231;
        dictionaryCopy = v239;
        goto LABEL_216;
      }

      v102 = 0;
      v18 = 0;
      v15 = v243;
      v50 = v231;
      v89 = v88;
      dictionaryCopy = v239;
      goto LABEL_217;
    }

    v227 = v77;
    dictionaryCopy = v239;
  }

  else
  {
    v227 = 0;
  }

  v78 = [dictionaryCopy objectForKeyedSubscript:@"batchIdentifier"];
  if (v78 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v89 = v20;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (errorCopy)
      {
        v119 = objc_alloc(MEMORY[0x1E696ABC0]);
        v120 = *MEMORY[0x1E698F240];
        v294 = *MEMORY[0x1E696A578];
        v228 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"batchIdentifier"];
        v295 = v228;
        [MEMORY[0x1E695DF20] dictionaryWithObjects:&v295 forKeys:&v294 count:1];
        v235 = v89 = v240;
        v121 = [v119 initWithDomain:v120 code:2 userInfo:?];
        v104 = 0;
        v18 = 0;
        v15 = v243;
        *errorCopy = v121;
        v50 = v231;
        v102 = v227;

        goto LABEL_215;
      }

      v104 = 0;
      v18 = 0;
      v15 = v243;
      v50 = v231;
      v102 = v227;
      goto LABEL_216;
    }

    v90 = v78;
    v79 = v74;
    v216 = v90;
    v225 = v90;
  }

  else
  {
    v216 = v78;
    v225 = 0;
    v79 = v74;
  }

  v80 = [dictionaryCopy objectForKeyedSubscript:@"calculatedFeatures"];
  null2 = [MEMORY[0x1E695DFB0] null];
  v82 = [v80 isEqual:null2];

  if (v82)
  {
    v226 = v79;
  }

  else
  {
    if (v80)
    {
      objc_opt_class();
      v228 = v80;
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v74 = v79;
        if (!errorCopy)
        {
          v89 = v20;
          v18 = 0;
          v15 = v243;
          v50 = v231;
          v102 = v227;
          v78 = v216;
          v104 = v225;
          goto LABEL_215;
        }

        v89 = v20;
        v129 = objc_alloc(MEMORY[0x1E696ABC0]);
        v130 = *MEMORY[0x1E698F240];
        v292 = *MEMORY[0x1E696A578];
        v234 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"calculatedFeatures"];
        v293 = v234;
        v131 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v293 forKeys:&v292 count:1];
        v18 = 0;
        *errorCopy = [v129 initWithDomain:v130 code:2 userInfo:v131];
        v15 = v243;
        v107 = v131;
        v50 = v231;
LABEL_127:
        v78 = v216;
        goto LABEL_213;
      }

      v226 = v79;
      v87 = v80;
      goto LABEL_97;
    }

    v226 = v79;
  }

  v87 = 0;
LABEL_97:
  v234 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v87, "count")}];
  v252 = 0u;
  v253 = 0u;
  v254 = 0u;
  v255 = 0u;
  v105 = v87;
  v106 = [v105 countByEnumeratingWithState:&v252 objects:v291 count:16];
  v107 = v105;
  v108 = v238;
  v228 = v105;
  if (!v106)
  {
    goto LABEL_107;
  }

  v109 = v106;
  v110 = *v253;
  while (2)
  {
    for (j = 0; j != v109; ++j)
    {
      if (*v253 != v110)
      {
        objc_enumerationMutation(v105);
      }

      v112 = *(*(&v252 + 1) + 8 * j);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v122 = errorCopy;
        if (errorCopy)
        {
          v123 = objc_alloc(MEMORY[0x1E696ABC0]);
          v124 = *MEMORY[0x1E698F240];
          v289 = *MEMORY[0x1E696A578];
          v113 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"calculatedFeatures"];
          v290 = v113;
          v125 = MEMORY[0x1E695DF20];
          v126 = &v290;
          v127 = &v289;
LABEL_119:
          v215 = [v125 dictionaryWithObjects:v126 forKeys:v127 count:1];
          v18 = 0;
          *v122 = [v123 initWithDomain:v124 code:2 userInfo:?];
LABEL_123:
          dictionaryCopy = v239;
          v128 = v240;
          v15 = v243;
          v50 = v231;
          v74 = v226;
          v78 = v216;
          goto LABEL_211;
        }

        goto LABEL_126;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v122 = errorCopy;
        if (errorCopy)
        {
          v123 = objc_alloc(MEMORY[0x1E696ABC0]);
          v124 = *MEMORY[0x1E698F240];
          v287 = *MEMORY[0x1E696A578];
          v113 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"calculatedFeatures"];
          v288 = v113;
          v125 = MEMORY[0x1E695DF20];
          v126 = &v288;
          v127 = &v287;
          goto LABEL_119;
        }

LABEL_126:
        v18 = 0;
        dictionaryCopy = v239;
        v89 = v240;
        v15 = v243;
        v50 = v231;
        v74 = v226;
        goto LABEL_127;
      }

      v113 = v112;
      v114 = [BMMessagesSharedWithYouFeedbackRankableSocialHighlightFeature alloc];
      v251 = 0;
      v115 = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlightFeature *)v114 initWithJSONDictionary:v113 error:&v251];
      v116 = v251;
      if (v116)
      {
        if (errorCopy)
        {
          v116 = v116;
          *errorCopy = v116;
        }

        v215 = v116;

        v18 = 0;
        goto LABEL_123;
      }

      [v234 addObject:v115];
    }

    v109 = [v105 countByEnumeratingWithState:&v252 objects:v291 count:16];
    v108 = v238;
    if (v109)
    {
      continue;
    }

    break;
  }

LABEL_107:

  dictionaryCopy = v239;
  v113 = [v239 objectForKeyedSubscript:@"clientIdentifier"];
  if (!v113 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v107 = 0;
    goto LABEL_110;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v107 = errorCopy;
    if (errorCopy)
    {
      v148 = objc_alloc(MEMORY[0x1E696ABC0]);
      v149 = *MEMORY[0x1E698F240];
      v285 = *MEMORY[0x1E696A578];
      v215 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"clientIdentifier"];
      v286 = v215;
      v214 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v286 forKeys:&v285 count:1];
      v18 = 0;
      *errorCopy = [v148 initWithDomain:v149 code:2 userInfo:?];
      v107 = 0;
      goto LABEL_237;
    }

    v18 = 0;
    v15 = v243;
    v128 = v240;
    v50 = v231;
    v74 = v226;
    v78 = v216;
    goto LABEL_212;
  }

  v107 = v113;
  v108 = v238;
LABEL_110:
  v117 = [v239 objectForKeyedSubscript:@"contentCreationSecondsSinceReferenceDate"];
  v214 = v117;
  if (!v117)
  {
LABEL_135:
    v215 = v117;
    v132 = [v239 objectForKeyedSubscript:@"groupPhotoPathDigest"];
    v207 = v107;
    v211 = v132;
    if (v132)
    {
      v133 = v132;
      objc_opt_class();
      v128 = v240;
      v78 = v216;
      if (objc_opt_isKindOfClass())
      {
        v212 = 0;
      }

      else
      {
        v134 = v240;
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!errorCopy)
          {
            v212 = 0;
            v18 = 0;
            v15 = v243;
            v50 = v231;
            v128 = v240;
            v74 = v226;
            v107 = v207;
            goto LABEL_209;
          }

          v213 = objc_alloc(MEMORY[0x1E696ABC0]);
          v209 = *MEMORY[0x1E698F240];
          v281 = *MEMORY[0x1E696A578];
          v210 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"groupPhotoPathDigest"];
          v282 = v210;
          v153 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v282 forKeys:&v281 count:1];
          v154 = v209;
          v208 = v153;
          v155 = [v213 initWithDomain:v154 code:2 userInfo:?];
          v212 = 0;
          v18 = 0;
          *errorCopy = v155;
          goto LABEL_248;
        }

        v212 = v133;
        v128 = v240;
        v107 = v207;
      }
    }

    else
    {
      v212 = 0;
      v128 = v240;
      v78 = v216;
    }

    v135 = [v239 objectForKeyedSubscript:@"displayName"];
    v208 = v135;
    if (!v135 || (v136 = v135, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v210 = 0;
LABEL_145:
      v137 = [v239 objectForKeyedSubscript:@"isPrimary"];
      v204 = v137;
      if (v137 && (v138 = v137, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!errorCopy)
          {
            v205 = 0;
            v18 = 0;
            v15 = v243;
            v50 = v231;
            v74 = v226;
            goto LABEL_207;
          }

          v218 = objc_alloc(MEMORY[0x1E696ABC0]);
          v206 = *MEMORY[0x1E698F240];
          v277 = *MEMORY[0x1E696A578];
          dictionaryCopy = v239;
          v74 = v226;
          v203 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isPrimary"];
          v278 = v203;
          v202 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v278 forKeys:&v277 count:1];
          v157 = [v218 initWithDomain:v206 code:2 userInfo:?];
          v205 = 0;
          v18 = 0;
          *errorCopy = v157;
          v15 = v243;
          v50 = v231;
          goto LABEL_206;
        }

        v205 = v138;
      }

      else
      {
        v205 = 0;
      }

      v139 = [v239 objectForKeyedSubscript:@"attributionIdentifier"];
      v202 = v139;
      if (v139 && (v140 = v139, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!errorCopy)
          {
            v203 = 0;
            v18 = 0;
            v15 = v243;
            v50 = v231;
            v74 = v226;
            v107 = v207;
            goto LABEL_206;
          }

          v219 = objc_alloc(MEMORY[0x1E696ABC0]);
          v167 = *MEMORY[0x1E698F240];
          v275 = *MEMORY[0x1E696A578];
          v200 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"attributionIdentifier"];
          v276 = v200;
          v199 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v276 forKeys:&v275 count:1];
          v203 = 0;
          v18 = 0;
          *errorCopy = [v219 initWithDomain:v167 code:2 userInfo:?];
          v15 = v243;
          v50 = v231;
          v74 = v226;
          v107 = v207;
LABEL_205:

LABEL_206:
          goto LABEL_207;
        }

        v203 = v140;
        v107 = v207;
      }

      else
      {
        v203 = 0;
      }

      v141 = [v239 objectForKeyedSubscript:@"rank"];
      v199 = v141;
      if (v141 && (v142 = v141, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!errorCopy)
          {
            v200 = 0;
            v18 = 0;
            v15 = v243;
            v50 = v231;
            v74 = v226;
            goto LABEL_205;
          }

          v220 = objc_alloc(MEMORY[0x1E696ABC0]);
          v201 = *MEMORY[0x1E698F240];
          v273 = *MEMORY[0x1E696A578];
          dictionaryCopy = v239;
          v74 = v226;
          v197 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"rank"];
          v274 = v197;
          v196 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v274 forKeys:&v273 count:1];
          v168 = [v220 initWithDomain:v201 code:2 userInfo:?];
          v200 = 0;
          v18 = 0;
          *errorCopy = v168;
          v15 = v243;
          v50 = v231;
          goto LABEL_204;
        }

        v200 = v142;
      }

      else
      {
        v200 = 0;
      }

      v143 = [v239 objectForKeyedSubscript:@"score"];
      v196 = v143;
      if (v143 && (v144 = v143, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!errorCopy)
          {
            v197 = 0;
            v18 = 0;
            v15 = v243;
            v50 = v231;
            v74 = v226;
            goto LABEL_204;
          }

          v221 = objc_alloc(MEMORY[0x1E696ABC0]);
          v198 = *MEMORY[0x1E698F240];
          v271 = *MEMORY[0x1E696A578];
          dictionaryCopy = v239;
          v74 = v226;
          v194 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"score"];
          v272 = v194;
          v193 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v272 forKeys:&v271 count:1];
          v169 = [v221 initWithDomain:v198 code:2 userInfo:?];
          v197 = 0;
          v18 = 0;
          *errorCopy = v169;
          v15 = v243;
          v50 = v231;
LABEL_203:

LABEL_204:
          goto LABEL_205;
        }

        v197 = v144;
      }

      else
      {
        v197 = 0;
      }

      v145 = [v239 objectForKeyedSubscript:@"isConversationAutoDonating"];
      v193 = v145;
      if (v145 && (v146 = v145, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!errorCopy)
          {
            v194 = 0;
            v18 = 0;
            v15 = v243;
            v50 = v231;
            v74 = v226;
            goto LABEL_203;
          }

          v222 = objc_alloc(MEMORY[0x1E696ABC0]);
          v195 = *MEMORY[0x1E698F240];
          v269 = *MEMORY[0x1E696A578];
          dictionaryCopy = v239;
          v74 = v226;
          v190 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isConversationAutoDonating"];
          v270 = v190;
          v191 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v270 forKeys:&v269 count:1];
          v170 = [v222 initWithDomain:v195 code:2 userInfo:?];
          v194 = 0;
          v18 = 0;
          *errorCopy = v170;
          v15 = v243;
          v50 = v231;
          goto LABEL_202;
        }

        v194 = v146;
      }

      else
      {
        v194 = 0;
      }

      v147 = [v239 objectForKeyedSubscript:@"originatingDeviceId"];
      v191 = v147;
      if (v147)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v147 = 0;
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (!errorCopy)
            {
              v190 = 0;
              v18 = 0;
              v15 = v243;
              v50 = v231;
              v74 = v226;
              v107 = v207;
              goto LABEL_202;
            }

            v223 = objc_alloc(MEMORY[0x1E696ABC0]);
            v171 = *MEMORY[0x1E698F240];
            v267 = *MEMORY[0x1E696A578];
            v192 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"originatingDeviceId"];
            v268 = v192;
            v188 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v268 forKeys:&v267 count:1];
            v190 = 0;
            v18 = 0;
            *errorCopy = [v223 initWithDomain:v171 code:2 userInfo:?];
            v15 = v243;
            v50 = v231;
            v74 = v226;
            v107 = v207;
LABEL_201:

LABEL_202:
            goto LABEL_203;
          }

          v147 = v147;
          v107 = v207;
        }
      }

      v158 = [v239 objectForKeyedSubscript:@"rankingSecondsSinceReferenceDate"];
      v190 = v147;
      v188 = v158;
      if (v158 && (v159 = v158, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!errorCopy)
          {
            v192 = 0;
            v18 = 0;
            v15 = v243;
            v50 = v231;
            v74 = v226;
            goto LABEL_201;
          }

          v172 = objc_alloc(MEMORY[0x1E696ABC0]);
          v224 = *MEMORY[0x1E698F240];
          v265 = *MEMORY[0x1E696A578];
          dictionaryCopy = v239;
          v74 = v226;
          v189 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"rankingSecondsSinceReferenceDate"];
          v266 = v189;
          v187 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v266 forKeys:&v265 count:1];
          v173 = [v172 initWithDomain:v224 code:2 userInfo:?];
          v192 = 0;
          v18 = 0;
          *errorCopy = v173;
          v15 = v243;
          v50 = v231;
          goto LABEL_200;
        }

        v192 = v159;
      }

      else
      {
        v192 = 0;
      }

      v160 = [v239 objectForKeyedSubscript:@"resolvedUrl"];
      v187 = v160;
      if (v160 && (v161 = v160, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!errorCopy)
          {
            v189 = 0;
            v18 = 0;
            v15 = v243;
            v50 = v231;
            v74 = v226;
            v107 = v207;
            goto LABEL_200;
          }

          v174 = objc_alloc(MEMORY[0x1E696ABC0]);
          v175 = *MEMORY[0x1E698F240];
          v263 = *MEMORY[0x1E696A578];
          v184 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"resolvedUrl"];
          v264 = v184;
          v186 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v264 forKeys:&v263 count:1];
          v176 = [v174 initWithDomain:v175 code:2 userInfo:?];
          v189 = 0;
          v18 = 0;
          *errorCopy = v176;
          v15 = v243;
          v50 = v231;
          v74 = v226;
          v107 = v207;
          goto LABEL_199;
        }

        v189 = v161;
        v107 = v207;
      }

      else
      {
        v189 = 0;
      }

      v162 = [v239 objectForKeyedSubscript:@"clientVariant"];
      v186 = v162;
      if (v162 && (v163 = v162, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        v15 = v243;
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (errorCopy)
          {
            v185 = objc_alloc(MEMORY[0x1E696ABC0]);
            v177 = *MEMORY[0x1E698F240];
            v261 = *MEMORY[0x1E696A578];
            v178 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"clientVariant"];
            v262 = v178;
            v179 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v262 forKeys:&v261 count:1];
            v180 = v177;
            v15 = v243;
            *errorCopy = [v185 initWithDomain:v180 code:2 userInfo:v179];
          }

          v184 = 0;
          v18 = 0;
          v50 = v231;
          v74 = v226;
          goto LABEL_199;
        }

        v164 = v163;
      }

      else
      {
        v164 = 0;
        v15 = v243;
      }

      v183 = v164;
      v184 = v164;
      v182 = v147;
      v74 = v226;
      v50 = v231;
      v18 = -[BMMessagesSharedWithYouFeedbackRankableSocialHighlight initWithHighlightIdentifier:highlightType:syndicationSecondsSinceReferenceDate:sourceBundleID:applicationIdentifiers:resourceURL:sender:domainIdentifier:batchIdentifier:calculatedFeatures:clientIdentifier:contentCreationSecondsSinceReferenceDate:groupPhotoPathDigest:displayName:isPrimary:attributionIdentifier:rank:score:isConversationAutoDonating:originatingDeviceId:rankingSecondsSinceReferenceDate:resolvedUrl:clientVariant:](selfCopy, "initWithHighlightIdentifier:highlightType:syndicationSecondsSinceReferenceDate:sourceBundleID:applicationIdentifiers:resourceURL:sender:domainIdentifier:batchIdentifier:calculatedFeatures:clientIdentifier:contentCreationSecondsSinceReferenceDate:groupPhotoPathDigest:displayName:isPrimary:attributionIdentifier:rank:score:isConversationAutoDonating:originatingDeviceId:rankingSecondsSinceReferenceDate:resolvedUrl:clientVariant:", v242, [v15 intValue], v245, v108, v248, v231, v226, v227, v225, v234, v107, v215, v212, v210, v205, v203, v200, v197, v194, v182, v192, v189, v183);
      selfCopy = v18;
LABEL_199:

LABEL_200:
      goto LABEL_201;
    }

    v134 = v128;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v210 = v136;
      v107 = v207;
      goto LABEL_145;
    }

    if (errorCopy)
    {
      v217 = objc_alloc(MEMORY[0x1E696ABC0]);
      v156 = *MEMORY[0x1E698F240];
      v279 = *MEMORY[0x1E696A578];
      v205 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"displayName"];
      v280 = v205;
      v204 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v280 forKeys:&v279 count:1];
      v210 = 0;
      v18 = 0;
      *errorCopy = [v217 initWithDomain:v156 code:2 userInfo:?];
      v15 = v243;
      v50 = v231;
      v74 = v226;
      v107 = v207;
LABEL_207:

LABEL_208:
LABEL_209:

      goto LABEL_210;
    }

    v210 = 0;
    v18 = 0;
LABEL_248:
    v15 = v243;
    v50 = v231;
    v128 = v134;
    v74 = v226;
    v107 = v207;
    goto LABEL_208;
  }

  v118 = v117;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v117 = 0;
    goto LABEL_135;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v117 = v118;
    goto LABEL_135;
  }

  if (errorCopy)
  {
    v150 = objc_alloc(MEMORY[0x1E696ABC0]);
    v151 = *MEMORY[0x1E698F240];
    v283 = *MEMORY[0x1E696A578];
    v212 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"contentCreationSecondsSinceReferenceDate"];
    v284 = v212;
    v211 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v284 forKeys:&v283 count:1];
    v152 = [v150 initWithDomain:v151 code:2 userInfo:?];
    v215 = 0;
    v18 = 0;
    v15 = v243;
    *errorCopy = v152;
    v128 = v240;
    v50 = v231;
    v74 = v226;
    v78 = v216;
    goto LABEL_209;
  }

  v215 = 0;
  v18 = 0;
LABEL_237:
  v15 = v243;
  v128 = v240;
  v50 = v231;
  v74 = v226;
  v78 = v216;
LABEL_210:

LABEL_211:
LABEL_212:
  v89 = v128;

LABEL_213:
  v102 = v227;
  v104 = v225;

LABEL_215:
LABEL_216:

  v8 = v242;
LABEL_217:

  v83 = v229;
  v20 = v89;
LABEL_218:

  v49 = v83;
  v27 = v232;
LABEL_219:
  v7 = v237;
LABEL_220:

  v30 = v238;
LABEL_221:

LABEL_222:
  v9 = v241;

LABEL_224:
LABEL_225:

LABEL_226:
LABEL_227:

LABEL_228:
  v165 = *MEMORY[0x1E69E9840];
  return v18;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v37 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_highlightIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  highlightType = self->_highlightType;
  PBDataWriterWriteUint32Field();
  if (self->_hasSyndicationSecondsSinceReferenceDate)
  {
    syndicationSecondsSinceReferenceDate = self->_syndicationSecondsSinceReferenceDate;
    PBDataWriterWriteDoubleField();
  }

  if (self->_sourceBundleID)
  {
    PBDataWriterWriteStringField();
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v7 = self->_applicationIdentifiers;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v32;
    do
    {
      v11 = 0;
      do
      {
        if (*v32 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v31 + 1) + 8 * v11);
        PBDataWriterWriteStringField();
        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v9);
  }

  if (self->_resourceURL)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_sender)
  {
    v30 = 0;
    PBDataWriterPlaceMark();
    [(BMMessagesSharedWithYouFeedbackRankableSocialHighlightContact *)self->_sender writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_domainIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_batchIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v13 = self->_calculatedFeatures;
  v14 = [(NSArray *)v13 countByEnumeratingWithState:&v26 objects:v35 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v27;
    do
    {
      v17 = 0;
      do
      {
        if (*v27 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v26 + 1) + 8 * v17);
        v30 = 0;
        PBDataWriterPlaceMark();
        [v18 writeTo:{toCopy, v26}];
        PBDataWriterRecallMark();
        ++v17;
      }

      while (v15 != v17);
      v15 = [(NSArray *)v13 countByEnumeratingWithState:&v26 objects:v35 count:16];
    }

    while (v15);
  }

  if (self->_clientIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasContentCreationSecondsSinceReferenceDate)
  {
    contentCreationSecondsSinceReferenceDate = self->_contentCreationSecondsSinceReferenceDate;
    PBDataWriterWriteDoubleField();
  }

  if (self->_groupPhotoPathDigest)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_displayName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasIsPrimary)
  {
    isPrimary = self->_isPrimary;
    PBDataWriterWriteBOOLField();
  }

  if (self->_attributionIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasRank)
  {
    rank = self->_rank;
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasScore)
  {
    score = self->_score;
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasIsConversationAutoDonating)
  {
    isConversationAutoDonating = self->_isConversationAutoDonating;
    PBDataWriterWriteBOOLField();
  }

  if (self->_originatingDeviceId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasRankingSecondsSinceReferenceDate)
  {
    rankingSecondsSinceReferenceDate = self->_rankingSecondsSinceReferenceDate;
    PBDataWriterWriteDoubleField();
  }

  if (self->_resolvedUrl)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_clientVariant)
  {
    PBDataWriterWriteStringField();
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v75.receiver = self;
  v75.super_class = BMMessagesSharedWithYouFeedbackRankableSocialHighlight;
  v5 = [(BMEventBase *)&v75 init];
  if (!v5)
  {
    goto LABEL_116;
  }

  v6 = objc_opt_new();
  v7 = objc_opt_new();
  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    do
    {
      if ([fromCopy hasError])
      {
        break;
      }

      v9 = 0;
      v10 = 0;
      v11 = 0;
      while (1)
      {
        LOBYTE(v76) = 0;
        v12 = [fromCopy position] + 1;
        if (v12 >= [fromCopy position] && (v13 = objc_msgSend(fromCopy, "position") + 1, v13 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v76 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v11 |= (v76 & 0x7F) << v9;
        if ((v76 & 0x80) == 0)
        {
          break;
        }

        v9 += 7;
        v15 = v10++ >= 9;
        if (v15)
        {
          v16 = 0;
          goto LABEL_16;
        }
      }

      v16 = [fromCopy hasError] ? 0 : v11;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v16 & 7) == 4)
      {
        break;
      }

      switch((v16 >> 3))
      {
        case 1u:
          v17 = PBReaderReadString();
          v18 = 40;
          goto LABEL_88;
        case 2u:
          v40 = 0;
          v41 = 0;
          v42 = 0;
          while (1)
          {
            LOBYTE(v76) = 0;
            v43 = [fromCopy position] + 1;
            if (v43 >= [fromCopy position] && (v44 = objc_msgSend(fromCopy, "position") + 1, v44 <= objc_msgSend(fromCopy, "length")))
            {
              data2 = [fromCopy data];
              [data2 getBytes:&v76 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v42 |= (v76 & 0x7F) << v40;
            if ((v76 & 0x80) == 0)
            {
              break;
            }

            v40 += 7;
            if (v41++ > 8)
            {
              goto LABEL_99;
            }
          }

          if (([fromCopy hasError] & 1) != 0 || v42 > 2)
          {
LABEL_99:
            LODWORD(v42) = 0;
          }

          v5->_highlightType = v42;
          goto LABEL_113;
        case 3u:
          v5->_hasSyndicationSecondsSinceReferenceDate = 1;
          v76 = 0;
          v38 = [fromCopy position] + 8;
          if (v38 >= [fromCopy position] && (v39 = objc_msgSend(fromCopy, "position") + 8, v39 <= objc_msgSend(fromCopy, "length")))
          {
            data3 = [fromCopy data];
            [data3 getBytes:&v76 range:{objc_msgSend(fromCopy, "position"), 8}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
          }

          else
          {
            [fromCopy _setError];
          }

          v62 = v76;
          v63 = 48;
          goto LABEL_112;
        case 4u:
          v17 = PBReaderReadString();
          v18 = 56;
          goto LABEL_88;
        case 5u:
          v35 = PBReaderReadString();
          if (!v35)
          {
            goto LABEL_118;
          }

          v36 = v35;
          [v6 addObject:v35];
          goto LABEL_47;
        case 6u:
          v17 = PBReaderReadString();
          v18 = 72;
          goto LABEL_88;
        case 7u:
          v76 = 0;
          v77 = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_118;
          }

          v51 = [[BMMessagesSharedWithYouFeedbackRankableSocialHighlightContact alloc] initByReadFrom:fromCopy];
          if (!v51)
          {
            goto LABEL_118;
          }

          sender = v5->_sender;
          v5->_sender = v51;

          PBReaderRecallMark();
          goto LABEL_113;
        case 8u:
          v17 = PBReaderReadString();
          v18 = 88;
          goto LABEL_88;
        case 9u:
          v17 = PBReaderReadString();
          v18 = 96;
          goto LABEL_88;
        case 0xAu:
          v76 = 0;
          v77 = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_118;
          }

          v37 = [[BMMessagesSharedWithYouFeedbackRankableSocialHighlightFeature alloc] initByReadFrom:fromCopy];
          if (!v37)
          {
            goto LABEL_118;
          }

          v36 = v37;
          [v7 addObject:v37];
          PBReaderRecallMark();
LABEL_47:

          goto LABEL_113;
        case 0xBu:
          v17 = PBReaderReadString();
          v18 = 112;
          goto LABEL_88;
        case 0xCu:
          v5->_hasContentCreationSecondsSinceReferenceDate = 1;
          v76 = 0;
          v33 = [fromCopy position] + 8;
          if (v33 >= [fromCopy position] && (v34 = objc_msgSend(fromCopy, "position") + 8, v34 <= objc_msgSend(fromCopy, "length")))
          {
            data4 = [fromCopy data];
            [data4 getBytes:&v76 range:{objc_msgSend(fromCopy, "position"), 8}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
          }

          else
          {
            [fromCopy _setError];
          }

          v62 = v76;
          v63 = 120;
          goto LABEL_112;
        case 0xDu:
          v17 = PBReaderReadString();
          v18 = 128;
          goto LABEL_88;
        case 0xEu:
          v17 = PBReaderReadString();
          v18 = 136;
          goto LABEL_88;
        case 0xFu:
          v26 = 0;
          v27 = 0;
          v28 = 0;
          v5->_hasIsPrimary = 1;
          while (1)
          {
            LOBYTE(v76) = 0;
            v29 = [fromCopy position] + 1;
            if (v29 >= [fromCopy position] && (v30 = objc_msgSend(fromCopy, "position") + 1, v30 <= objc_msgSend(fromCopy, "length")))
            {
              data5 = [fromCopy data];
              [data5 getBytes:&v76 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v28 |= (v76 & 0x7F) << v26;
            if ((v76 & 0x80) == 0)
            {
              break;
            }

            v26 += 7;
            v15 = v27++ >= 9;
            if (v15)
            {
              LOBYTE(v32) = 0;
              goto LABEL_96;
            }
          }

          v32 = (v28 != 0) & ~[fromCopy hasError];
LABEL_96:
          v60 = 18;
          goto LABEL_103;
        case 0x10u:
          v17 = PBReaderReadString();
          v18 = 144;
          goto LABEL_88;
        case 0x11u:
          v19 = 0;
          v20 = 0;
          v21 = 0;
          v5->_hasRank = 1;
          while (1)
          {
            LOBYTE(v76) = 0;
            v22 = [fromCopy position] + 1;
            if (v22 >= [fromCopy position] && (v23 = objc_msgSend(fromCopy, "position") + 1, v23 <= objc_msgSend(fromCopy, "length")))
            {
              data6 = [fromCopy data];
              [data6 getBytes:&v76 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v21 |= (v76 & 0x7F) << v19;
            if ((v76 & 0x80) == 0)
            {
              break;
            }

            v19 += 7;
            v15 = v20++ >= 9;
            if (v15)
            {
              v25 = 0;
              goto LABEL_94;
            }
          }

          if ([fromCopy hasError])
          {
            v25 = 0;
          }

          else
          {
            v25 = v21;
          }

LABEL_94:
          v5->_rank = v25;
          goto LABEL_113;
        case 0x12u:
          v5->_hasScore = 1;
          v76 = 0;
          v47 = [fromCopy position] + 8;
          if (v47 >= [fromCopy position] && (v48 = objc_msgSend(fromCopy, "position") + 8, v48 <= objc_msgSend(fromCopy, "length")))
          {
            data7 = [fromCopy data];
            [data7 getBytes:&v76 range:{objc_msgSend(fromCopy, "position"), 8}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
          }

          else
          {
            [fromCopy _setError];
          }

          v62 = v76;
          v63 = 152;
          goto LABEL_112;
        case 0x13u:
          v53 = 0;
          v54 = 0;
          v55 = 0;
          v5->_hasIsConversationAutoDonating = 1;
          break;
        case 0x14u:
          v17 = PBReaderReadString();
          v18 = 160;
          goto LABEL_88;
        case 0x15u:
          v5->_hasRankingSecondsSinceReferenceDate = 1;
          v76 = 0;
          v49 = [fromCopy position] + 8;
          if (v49 >= [fromCopy position] && (v50 = objc_msgSend(fromCopy, "position") + 8, v50 <= objc_msgSend(fromCopy, "length")))
          {
            data8 = [fromCopy data];
            [data8 getBytes:&v76 range:{objc_msgSend(fromCopy, "position"), 8}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
          }

          else
          {
            [fromCopy _setError];
          }

          v62 = v76;
          v63 = 168;
LABEL_112:
          *(&v5->super.super.isa + v63) = v62;
          goto LABEL_113;
        case 0x16u:
          v17 = PBReaderReadString();
          v18 = 176;
          goto LABEL_88;
        case 0x17u:
          v17 = PBReaderReadString();
          v18 = 184;
LABEL_88:
          v59 = *(&v5->super.super.isa + v18);
          *(&v5->super.super.isa + v18) = v17;

          goto LABEL_113;
        default:
          if (PBReaderSkipValueWithTag())
          {
            goto LABEL_113;
          }

LABEL_118:

          goto LABEL_115;
      }

      while (1)
      {
        LOBYTE(v76) = 0;
        v56 = [fromCopy position] + 1;
        if (v56 >= [fromCopy position] && (v57 = objc_msgSend(fromCopy, "position") + 1, v57 <= objc_msgSend(fromCopy, "length")))
        {
          data9 = [fromCopy data];
          [data9 getBytes:&v76 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v55 |= (v76 & 0x7F) << v53;
        if ((v76 & 0x80) == 0)
        {
          break;
        }

        v53 += 7;
        v15 = v54++ >= 9;
        if (v15)
        {
          LOBYTE(v32) = 0;
          goto LABEL_102;
        }
      }

      v32 = (v55 != 0) & ~[fromCopy hasError];
LABEL_102:
      v60 = 22;
LABEL_103:
      *(&v5->super.super.isa + v60) = v32;
LABEL_113:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  v68 = [v6 copy];
  applicationIdentifiers = v5->_applicationIdentifiers;
  v5->_applicationIdentifiers = v68;

  v70 = [v7 copy];
  calculatedFeatures = v5->_calculatedFeatures;
  v5->_calculatedFeatures = v70;

  hasError = [fromCopy hasError];
  if (hasError)
  {
LABEL_115:
    v73 = 0;
  }

  else
  {
LABEL_116:
    v73 = v5;
  }

  return v73;
}

- (NSString)description
{
  v21 = objc_alloc(MEMORY[0x1E696AEC0]);
  highlightIdentifier = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self highlightIdentifier];
  v32 = BMMessagesSharedWithYouFeedbackRankableSocialHighlightTypeAsString([(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self highlightType]);
  v3 = MEMORY[0x1E696AD98];
  [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self syndicationSecondsSinceReferenceDate];
  v29 = [v3 numberWithDouble:?];
  sourceBundleID = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self sourceBundleID];
  applicationIdentifiers = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self applicationIdentifiers];
  resourceURL = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self resourceURL];
  sender = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self sender];
  domainIdentifier = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self domainIdentifier];
  batchIdentifier = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self batchIdentifier];
  calculatedFeatures = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self calculatedFeatures];
  clientIdentifier = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self clientIdentifier];
  v4 = MEMORY[0x1E696AD98];
  [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self contentCreationSecondsSinceReferenceDate];
  v17 = [v4 numberWithDouble:?];
  groupPhotoPathDigest = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self groupPhotoPathDigest];
  displayName = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self displayName];
  v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMessagesSharedWithYouFeedbackRankableSocialHighlight isPrimary](self, "isPrimary")}];
  attributionIdentifier = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self attributionIdentifier];
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMMessagesSharedWithYouFeedbackRankableSocialHighlight rank](self, "rank")}];
  v5 = MEMORY[0x1E696AD98];
  [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self score];
  v6 = [v5 numberWithDouble:?];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMessagesSharedWithYouFeedbackRankableSocialHighlight isConversationAutoDonating](self, "isConversationAutoDonating")}];
  originatingDeviceId = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self originatingDeviceId];
  v9 = MEMORY[0x1E696AD98];
  [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self rankingSecondsSinceReferenceDate];
  v10 = [v9 numberWithDouble:?];
  resolvedUrl = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self resolvedUrl];
  clientVariant = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self clientVariant];
  v22 = [v21 initWithFormat:@"BMMessagesSharedWithYouFeedbackRankableSocialHighlight with highlightIdentifier: %@, highlightType: %@, syndicationSecondsSinceReferenceDate: %@, sourceBundleID: %@, applicationIdentifiers: %@, resourceURL: %@, sender: %@, domainIdentifier: %@, batchIdentifier: %@, calculatedFeatures: %@, clientIdentifier: %@, contentCreationSecondsSinceReferenceDate: %@, groupPhotoPathDigest: %@, displayName: %@, isPrimary: %@, attributionIdentifier: %@, rank: %@, score: %@, isConversationAutoDonating: %@, originatingDeviceId: %@, rankingSecondsSinceReferenceDate: %@, resolvedUrl: %@, clientVariant: %@", highlightIdentifier, v32, v29, sourceBundleID, applicationIdentifiers, resourceURL, sender, domainIdentifier, batchIdentifier, calculatedFeatures, clientIdentifier, v17, groupPhotoPathDigest, displayName, v16, attributionIdentifier, v14, v6, v7, originatingDeviceId, v10, resolvedUrl, clientVariant];

  return v22;
}

- (BMMessagesSharedWithYouFeedbackRankableSocialHighlight)initWithHighlightIdentifier:(id)identifier highlightType:(int)type syndicationSecondsSinceReferenceDate:(id)date sourceBundleID:(id)d applicationIdentifiers:(id)identifiers resourceURL:(id)l sender:(id)sender domainIdentifier:(id)self0 batchIdentifier:(id)self1 calculatedFeatures:(id)self2 clientIdentifier:(id)self3 contentCreationSecondsSinceReferenceDate:(id)self4 groupPhotoPathDigest:(id)self5 displayName:(id)self6 isPrimary:(id)self7 attributionIdentifier:(id)self8 rank:(id)self9 score:(id)score isConversationAutoDonating:(id)donating originatingDeviceId:(id)id rankingSecondsSinceReferenceDate:(id)sinceReferenceDate resolvedUrl:(id)url clientVariant:(id)variant
{
  identifierCopy = identifier;
  dateCopy = date;
  dCopy = d;
  dCopy2 = d;
  identifiersCopy = identifiers;
  identifiersCopy2 = identifiers;
  lCopy = l;
  lCopy2 = l;
  senderCopy = sender;
  domainIdentifierCopy = domainIdentifier;
  batchIdentifierCopy = batchIdentifier;
  featuresCopy = features;
  clientIdentifierCopy = clientIdentifier;
  referenceDateCopy = referenceDate;
  digestCopy = digest;
  nameCopy = name;
  primaryCopy = primary;
  attributionIdentifierCopy = attributionIdentifier;
  rankCopy = rank;
  scoreCopy = score;
  donatingCopy = donating;
  idCopy = id;
  sinceReferenceDateCopy = sinceReferenceDate;
  urlCopy = url;
  variantCopy = variant;
  v64.receiver = self;
  v64.super_class = BMMessagesSharedWithYouFeedbackRankableSocialHighlight;
  v36 = [(BMEventBase *)&v64 init];
  if (v36)
  {
    v36->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v36->_highlightIdentifier, identifier);
    v36->_highlightType = type;
    if (dateCopy)
    {
      v36->_hasSyndicationSecondsSinceReferenceDate = 1;
      [dateCopy doubleValue];
    }

    else
    {
      dateCopy = 0;
      v36->_hasSyndicationSecondsSinceReferenceDate = 0;
      v37 = -1.0;
    }

    v36->_syndicationSecondsSinceReferenceDate = v37;
    objc_storeStrong(&v36->_sourceBundleID, dCopy);
    objc_storeStrong(&v36->_applicationIdentifiers, identifiersCopy);
    objc_storeStrong(&v36->_resourceURL, lCopy);
    objc_storeStrong(&v36->_sender, sender);
    objc_storeStrong(&v36->_domainIdentifier, domainIdentifier);
    objc_storeStrong(&v36->_batchIdentifier, batchIdentifier);
    objc_storeStrong(&v36->_calculatedFeatures, features);
    objc_storeStrong(&v36->_clientIdentifier, clientIdentifier);
    if (referenceDateCopy)
    {
      v36->_hasContentCreationSecondsSinceReferenceDate = 1;
      [referenceDateCopy doubleValue];
    }

    else
    {
      v36->_hasContentCreationSecondsSinceReferenceDate = 0;
      v38 = -1.0;
    }

    v36->_contentCreationSecondsSinceReferenceDate = v38;
    objc_storeStrong(&v36->_groupPhotoPathDigest, digest);
    objc_storeStrong(&v36->_displayName, name);
    if (primaryCopy)
    {
      v36->_hasIsPrimary = 1;
      v36->_isPrimary = [primaryCopy BOOLValue];
    }

    else
    {
      v36->_hasIsPrimary = 0;
      v36->_isPrimary = 0;
    }

    objc_storeStrong(&v36->_attributionIdentifier, attributionIdentifier);
    if (rankCopy)
    {
      v36->_hasRank = 1;
      unsignedIntValue = [rankCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue = 0;
      v36->_hasRank = 0;
    }

    v36->_rank = unsignedIntValue;
    if (scoreCopy)
    {
      v36->_hasScore = 1;
      [scoreCopy doubleValue];
    }

    else
    {
      v36->_hasScore = 0;
      v40 = -1.0;
    }

    v36->_score = v40;
    if (donatingCopy)
    {
      v36->_hasIsConversationAutoDonating = 1;
      v36->_isConversationAutoDonating = [donatingCopy BOOLValue];
    }

    else
    {
      v36->_hasIsConversationAutoDonating = 0;
      v36->_isConversationAutoDonating = 0;
    }

    objc_storeStrong(&v36->_originatingDeviceId, id);
    if (sinceReferenceDateCopy)
    {
      v36->_hasRankingSecondsSinceReferenceDate = 1;
      [sinceReferenceDateCopy doubleValue];
    }

    else
    {
      v36->_hasRankingSecondsSinceReferenceDate = 0;
      v41 = -1.0;
    }

    v36->_rankingSecondsSinceReferenceDate = v41;
    objc_storeStrong(&v36->_resolvedUrl, url);
    objc_storeStrong(&v36->_clientVariant, variant);
  }

  return v36;
}

+ (id)protoFields
{
  v28[23] = *MEMORY[0x1E69E9840];
  v27 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"highlightIdentifier" number:1 type:13 subMessageClass:0];
  v28[0] = v27;
  v26 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"highlightType" number:2 type:4 subMessageClass:0];
  v28[1] = v26;
  v25 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"syndicationSecondsSinceReferenceDate" number:3 type:0 subMessageClass:0];
  v28[2] = v25;
  v24 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"sourceBundleID" number:4 type:13 subMessageClass:0];
  v28[3] = v24;
  v23 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"applicationIdentifiers" number:5 type:13 subMessageClass:0];
  v28[4] = v23;
  v22 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"resourceURL" number:6 type:13 subMessageClass:0];
  v28[5] = v22;
  v21 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"sender" number:7 type:14 subMessageClass:objc_opt_class()];
  v28[6] = v21;
  v20 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"domainIdentifier" number:8 type:13 subMessageClass:0];
  v28[7] = v20;
  v19 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"batchIdentifier" number:9 type:13 subMessageClass:0];
  v28[8] = v19;
  v18 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"calculatedFeatures" number:10 type:14 subMessageClass:objc_opt_class()];
  v28[9] = v18;
  v17 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"clientIdentifier" number:11 type:13 subMessageClass:0];
  v28[10] = v17;
  v16 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"contentCreationSecondsSinceReferenceDate" number:12 type:0 subMessageClass:0];
  v28[11] = v16;
  v15 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"groupPhotoPathDigest" number:13 type:13 subMessageClass:0];
  v28[12] = v15;
  v14 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"displayName" number:14 type:13 subMessageClass:0];
  v28[13] = v14;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isPrimary" number:15 type:12 subMessageClass:0];
  v28[14] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"attributionIdentifier" number:16 type:13 subMessageClass:0];
  v28[15] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"rank" number:17 type:4 subMessageClass:0];
  v28[16] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"score" number:18 type:0 subMessageClass:0];
  v28[17] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isConversationAutoDonating" number:19 type:12 subMessageClass:0];
  v28[18] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"originatingDeviceId" number:20 type:13 subMessageClass:0];
  v28[19] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"rankingSecondsSinceReferenceDate" number:21 type:0 subMessageClass:0];
  v28[20] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"resolvedUrl" number:22 type:13 subMessageClass:0];
  v28[21] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"clientVariant" number:23 type:13 subMessageClass:0];
  v28[22] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:23];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)columns
{
  v28[23] = *MEMORY[0x1E69E9840];
  v27 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"highlightIdentifier" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v26 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"highlightType" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:4 convertedType:0];
  v25 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"syndicationSecondsSinceReferenceDate" dataType:1 requestOnly:0 fieldNumber:3 protoDataType:0 convertedType:0];
  v24 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"sourceBundleID" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v23 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"applicationIdentifiers_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_309];
  v22 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"resourceURL" dataType:2 requestOnly:0 fieldNumber:6 protoDataType:13 convertedType:0];
  v21 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"sender_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_311];
  v20 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"domainIdentifier" dataType:2 requestOnly:0 fieldNumber:8 protoDataType:13 convertedType:0];
  v19 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"batchIdentifier" dataType:2 requestOnly:0 fieldNumber:9 protoDataType:13 convertedType:0];
  v18 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"calculatedFeatures_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_313_82917];
  v17 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"clientIdentifier" dataType:2 requestOnly:0 fieldNumber:11 protoDataType:13 convertedType:0];
  v16 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"contentCreationSecondsSinceReferenceDate" dataType:1 requestOnly:0 fieldNumber:12 protoDataType:0 convertedType:0];
  v15 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"groupPhotoPathDigest" dataType:2 requestOnly:0 fieldNumber:13 protoDataType:13 convertedType:0];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"displayName" dataType:2 requestOnly:0 fieldNumber:14 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isPrimary" dataType:0 requestOnly:0 fieldNumber:15 protoDataType:12 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"attributionIdentifier" dataType:2 requestOnly:0 fieldNumber:16 protoDataType:13 convertedType:0];
  v14 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"rank" dataType:0 requestOnly:0 fieldNumber:17 protoDataType:4 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"score" dataType:1 requestOnly:0 fieldNumber:18 protoDataType:0 convertedType:0];
  v13 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isConversationAutoDonating" dataType:0 requestOnly:0 fieldNumber:19 protoDataType:12 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"originatingDeviceId" dataType:2 requestOnly:0 fieldNumber:20 protoDataType:13 convertedType:0];
  v12 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"rankingSecondsSinceReferenceDate" dataType:1 requestOnly:0 fieldNumber:21 protoDataType:0 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"resolvedUrl" dataType:2 requestOnly:0 fieldNumber:22 protoDataType:13 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"clientVariant" dataType:2 requestOnly:0 fieldNumber:23 protoDataType:13 convertedType:0];
  v28[0] = v27;
  v28[1] = v26;
  v28[2] = v25;
  v28[3] = v24;
  v28[4] = v23;
  v28[5] = v22;
  v28[6] = v21;
  v28[7] = v20;
  v28[8] = v19;
  v28[9] = v18;
  v28[10] = v17;
  v28[11] = v16;
  v28[12] = v15;
  v28[13] = v2;
  v28[14] = v3;
  v28[15] = v4;
  v28[16] = v14;
  v28[17] = v5;
  v28[18] = v13;
  v28[19] = v6;
  v28[20] = v12;
  v28[21] = v7;
  v28[22] = v8;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:23];

  v9 = *MEMORY[0x1E69E9840];

  return v11;
}

id __65__BMMessagesSharedWithYouFeedbackRankableSocialHighlight_columns__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _calculatedFeaturesJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

id __65__BMMessagesSharedWithYouFeedbackRankableSocialHighlight_columns__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 sender];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __65__BMMessagesSharedWithYouFeedbackRankableSocialHighlight_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _applicationIdentifiersJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  if (version == 4)
  {
    v4 = MEMORY[0x1E69C65B8];
    dataCopy = data;
    v6 = [[v4 alloc] initWithData:dataCopy];

    v7 = [[BMMessagesSharedWithYouFeedbackRankableSocialHighlight alloc] initByReadFrom:v6];
    v8 = v7;
    if (v7)
    {
      v7[7] = 4;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end