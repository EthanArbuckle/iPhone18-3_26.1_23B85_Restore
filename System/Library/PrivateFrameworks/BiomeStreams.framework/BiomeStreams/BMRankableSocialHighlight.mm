@interface BMRankableSocialHighlight
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
- (BMRankableSocialHighlight)initWithHighlightIdentifier:(id)identifier highlightType:(unint64_t)type syndicationDate:(id)date sourceBundleId:(id)id applicationIdentifiers:(id)identifiers resourceUrl:(id)url sender:(id)sender domainIdentifier:(id)self0 batchIdentifier:(id)self1 calculatedFeatures:(id)self2 clientIdentifier:(id)self3 contentCreationDate:(id)self4 groupPhotoPath:(id)self5 displayName:(id)self6 isPrimary:(id)self7 attributionIdentifier:(id)self8 rank:(id)self9 score:(id)score isConversationAutoDonating:(id)donating originatingDeviceId:(id)deviceId rankingDate:(id)rankingDate resolvedUrl:(id)resolvedUrl;
- (BMRankableSocialHighlight)initWithHighlightIdentifier:(id)identifier highlightType:(unint64_t)type syndicationDate:(id)date sourceBundleId:(id)id applicationIdentifiers:(id)identifiers resourceUrl:(id)url sender:(id)sender domainIdentifier:(id)self0 batchIdentifier:(id)self1 calculatedFeatures:(id)self2 clientIdentifier:(id)self3 contentCreationDate:(id)self4 groupPhotoPathDigest:(id)self5 displayName:(id)self6 isPrimary:(id)self7 attributionIdentifier:(id)self8 rank:(id)self9 score:(id)score isConversationAutoDonating:(id)donating originatingDeviceId:(id)deviceId rankingDate:(id)rankingDate resolvedUrl:(id)resolvedUrl clientVariant:(id)variant;
- (BMRankableSocialHighlight)initWithProto:(id)proto;
- (BMRankableSocialHighlight)initWithProtoData:(id)data;
- (id)encodeAsProto;
- (id)proto;
- (int)_protoType;
@end

@implementation BMRankableSocialHighlight

- (int)_protoType
{
  highlightType = [(BMRankableSocialHighlight *)self highlightType];
  if (highlightType >= 3)
  {
    v4 = __biome_log_for_category();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(BMRankableSocialHighlight *)self _protoType];
    }

    LODWORD(highlightType) = 0;
  }

  return highlightType;
}

- (BMRankableSocialHighlight)initWithHighlightIdentifier:(id)identifier highlightType:(unint64_t)type syndicationDate:(id)date sourceBundleId:(id)id applicationIdentifiers:(id)identifiers resourceUrl:(id)url sender:(id)sender domainIdentifier:(id)self0 batchIdentifier:(id)self1 calculatedFeatures:(id)self2 clientIdentifier:(id)self3 contentCreationDate:(id)self4 groupPhotoPathDigest:(id)self5 displayName:(id)self6 isPrimary:(id)self7 attributionIdentifier:(id)self8 rank:(id)self9 score:(id)score isConversationAutoDonating:(id)donating originatingDeviceId:(id)deviceId rankingDate:(id)rankingDate resolvedUrl:(id)resolvedUrl clientVariant:(id)variant
{
  identifierCopy = identifier;
  dateCopy = date;
  dateCopy2 = date;
  idCopy = id;
  idCopy2 = id;
  identifiersCopy = identifiers;
  identifiersCopy2 = identifiers;
  urlCopy = url;
  senderCopy = sender;
  domainIdentifierCopy = domainIdentifier;
  batchIdentifierCopy = batchIdentifier;
  featuresCopy = features;
  clientIdentifierCopy = clientIdentifier;
  creationDateCopy = creationDate;
  digestCopy = digest;
  nameCopy = name;
  primaryCopy = primary;
  attributionIdentifierCopy = attributionIdentifier;
  rankCopy = rank;
  scoreCopy = score;
  donatingCopy = donating;
  deviceIdCopy = deviceId;
  rankingDateCopy = rankingDate;
  resolvedUrlCopy = resolvedUrl;
  variantCopy = variant;
  v60.receiver = self;
  v60.super_class = BMRankableSocialHighlight;
  v36 = [(BMEventBase *)&v60 init];
  v37 = v36;
  if (v36)
  {
    objc_storeStrong(&v36->_highlightIdentifier, identifier);
    v37->_highlightType = type;
    objc_storeStrong(&v37->_syndicationDate, dateCopy);
    objc_storeStrong(&v37->_sourceBundleId, idCopy);
    objc_storeStrong(&v37->_applicationIdentifiers, identifiersCopy);
    objc_storeStrong(&v37->_resourceUrl, url);
    objc_storeStrong(&v37->_sender, sender);
    objc_storeStrong(&v37->_domainIdentifier, domainIdentifier);
    objc_storeStrong(&v37->_batchIdentifier, batchIdentifier);
    objc_storeStrong(&v37->_calculatedFeatures, features);
    objc_storeStrong(&v37->_clientIdentifier, clientIdentifier);
    objc_storeStrong(&v37->_contentCreationDate, creationDate);
    objc_storeStrong(&v37->_groupPhotoPathDigest, digest);
    objc_storeStrong(&v37->_displayName, name);
    objc_storeStrong(&v37->_isPrimary, primary);
    objc_storeStrong(&v37->_attributionIdentifier, attributionIdentifier);
    objc_storeStrong(&v37->_rank, rank);
    objc_storeStrong(&v37->_score, score);
    objc_storeStrong(&v37->_isConversationAutoDonating, donating);
    objc_storeStrong(&v37->_originatingDeviceId, deviceId);
    objc_storeStrong(&v37->_rankingDate, rankingDate);
    objc_storeStrong(&v37->_resolvedUrl, resolvedUrl);
    objc_storeStrong(&v37->_clientVariant, variant);
  }

  return v37;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  if (version == 3)
  {
    dataCopy = data;
    v5 = [[BMRankableSocialHighlight alloc] initWithProtoData:dataCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)encodeAsProto
{
  proto = [(BMRankableSocialHighlight *)self proto];
  data = [proto data];

  return data;
}

- (BMRankableSocialHighlight)initWithProto:(id)proto
{
  v64 = *MEMORY[0x1E69E9840];
  protoCopy = proto;
  if (protoCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = protoCopy;
    highlightIdentifier = [v5 highlightIdentifier];
    if ([v5 hasSyndicationSecondsSinceReferenceDate])
    {
      v6 = objc_alloc(MEMORY[0x1E695DF00]);
      [v5 syndicationSecondsSinceReferenceDate];
      v55 = [v6 initWithTimeIntervalSinceReferenceDate:?];
    }

    else
    {
      v55 = 0;
    }

    if ([v5 hasContentCreationSecondsSinceReferenceDate])
    {
      v8 = objc_alloc(MEMORY[0x1E695DF00]);
      [v5 contentCreationSecondsSinceReferenceDate];
      v54 = [v8 initWithTimeIntervalSinceReferenceDate:?];
    }

    else
    {
      v54 = 0;
    }

    v46 = protoCopy;
    selfCopy = self;
    if ([v5 hasRankingSecondsSinceReferenceDate])
    {
      v9 = objc_alloc(MEMORY[0x1E695DF00]);
      [v5 rankingSecondsSinceReferenceDate];
      v53 = [v9 initWithTimeIntervalSinceReferenceDate:?];
    }

    else
    {
      v53 = 0;
    }

    v10 = objc_opt_new();
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    calculatedFeatures = [v5 calculatedFeatures];
    v12 = [calculatedFeatures countByEnumeratingWithState:&v59 objects:v63 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v60;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v60 != v14)
          {
            objc_enumerationMutation(calculatedFeatures);
          }

          v16 = *(*(&v59 + 1) + 8 * i);
          v17 = objc_autoreleasePoolPush();
          if ([v16 hasName] && objc_msgSend(v16, "hasValue"))
          {
            v18 = MEMORY[0x1E696AD98];
            [v16 value];
            v19 = [v18 numberWithDouble:?];
            name = [v16 name];
            [v10 setObject:v19 forKeyedSubscript:name];
          }

          objc_autoreleasePoolPop(v17);
        }

        v13 = [calculatedFeatures countByEnumeratingWithState:&v59 objects:v63 count:16];
      }

      while (v13);
    }

    groupPhotoPathDigest = [v5 groupPhotoPathDigest];
    v22 = [groupPhotoPathDigest hasPrefix:@"file://"];

    groupPhotoPathDigest2 = [v5 groupPhotoPathDigest];
    v24 = groupPhotoPathDigest2;
    if (v22)
    {
      v25 = bm_sha256(groupPhotoPathDigest2);

      v24 = v25;
    }

    if ([v5 hasHighlightType])
    {
      v44 = -[BMRankableSocialHighlight _socialHighlightTypeForProtoType:](selfCopy, "_socialHighlightTypeForProtoType:", [v5 highlightType]);
    }

    else
    {
      v44 = 0;
    }

    sourceBundleId = [v5 sourceBundleId];
    applicationIdentifiers = [v5 applicationIdentifiers];
    v52 = v24;
    hasResourceUrl = [v5 hasResourceUrl];
    if (hasResourceUrl)
    {
      v26 = objc_alloc(MEMORY[0x1E695DFF8]);
      resourceUrl = [v5 resourceUrl];
      v47 = [v26 initWithString:?];
    }

    else
    {
      v47 = 0;
    }

    v27 = [BMSocialHighlightContact alloc];
    sender = [v5 sender];
    v42 = [(BMSocialHighlightContact *)v27 initWithProto:sender];
    domainIdentifier = [v5 domainIdentifier];
    batchIdentifier = [v5 batchIdentifier];
    clientIdentifier = [v5 clientIdentifier];
    displayName = [v5 displayName];
    v39 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v5, "isPrimary")}];
    attributionIdentifier = [v5 attributionIdentifier];
    v28 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v5, "rank")}];
    v29 = MEMORY[0x1E696AD98];
    [v5 score];
    v37 = [v29 numberWithDouble:?];
    v30 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v5, "isConversationAutoDonating")}];
    originatingDeviceId = [v5 originatingDeviceId];
    resolvedUrl = [v5 resolvedUrl];
    clientVariant = [v5 clientVariant];
    v58 = [(BMRankableSocialHighlight *)selfCopy initWithHighlightIdentifier:highlightIdentifier highlightType:v44 syndicationDate:v55 sourceBundleId:sourceBundleId applicationIdentifiers:applicationIdentifiers resourceUrl:v47 sender:v42 domainIdentifier:domainIdentifier batchIdentifier:batchIdentifier calculatedFeatures:v10 clientIdentifier:clientIdentifier contentCreationDate:v54 groupPhotoPathDigest:v52 displayName:displayName isPrimary:v39 attributionIdentifier:attributionIdentifier rank:v28 score:v37 isConversationAutoDonating:v30 originatingDeviceId:originatingDeviceId rankingDate:v53 resolvedUrl:resolvedUrl clientVariant:clientVariant];

    if (hasResourceUrl)
    {
    }

    self = v58;
    v7 = v58;
    protoCopy = v46;
  }

  else
  {
    v7 = 0;
  }

  v34 = *MEMORY[0x1E69E9840];
  return v7;
}

- (BMRankableSocialHighlight)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[BMPBRankableSocialHighlight alloc] initWithData:dataCopy];

    self = [(BMRankableSocialHighlight *)self initWithProto:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)proto
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v4 = self->_calculatedFeatures;
  v5 = [(NSDictionary *)v4 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v29;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v29 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v28 + 1) + 8 * i);
        v10 = [(NSDictionary *)self->_calculatedFeatures objectForKeyedSubscript:v9, v28];
        [v10 doubleValue];
        v12 = v11;

        v13 = objc_opt_new();
        [v13 setName:v9];
        [v13 setValue:v12];
        [v3 addObject:v13];
      }

      v6 = [(NSDictionary *)v4 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v6);
  }

  v14 = objc_opt_new();
  [v14 setHighlightIdentifier:self->_highlightIdentifier];
  [v14 setHighlightType:{-[BMRankableSocialHighlight _protoType](self, "_protoType")}];
  syndicationDate = self->_syndicationDate;
  if (syndicationDate)
  {
    [(NSDate *)syndicationDate timeIntervalSinceReferenceDate];
    [v14 setSyndicationSecondsSinceReferenceDate:?];
  }

  [v14 setSourceBundleId:{self->_sourceBundleId, v28}];
  if (self->_applicationIdentifiers)
  {
    applicationIdentifiers = self->_applicationIdentifiers;
  }

  else
  {
    applicationIdentifiers = MEMORY[0x1E695E0F0];
  }

  v17 = [(NSArray *)applicationIdentifiers mutableCopy];
  [v14 setApplicationIdentifiers:v17];

  absoluteString = [(NSURL *)self->_resourceUrl absoluteString];
  [v14 setResourceUrl:absoluteString];

  proto = [(BMSocialHighlightContact *)self->_sender proto];
  [v14 setSender:proto];

  [v14 setDomainIdentifier:self->_domainIdentifier];
  [v14 setBatchIdentifier:self->_batchIdentifier];
  [v14 setCalculatedFeatures:v3];
  [v14 setClientIdentifier:self->_clientIdentifier];
  contentCreationDate = self->_contentCreationDate;
  if (contentCreationDate)
  {
    [(NSDate *)contentCreationDate timeIntervalSinceReferenceDate];
    [v14 setContentCreationSecondsSinceReferenceDate:?];
  }

  [v14 setGroupPhotoPathDigest:self->_groupPhotoPathDigest];
  [v14 setDisplayName:self->_displayName];
  isPrimary = self->_isPrimary;
  if (isPrimary)
  {
    [v14 setIsPrimary:{-[NSNumber BOOLValue](isPrimary, "BOOLValue")}];
  }

  [v14 setAttributionIdentifier:self->_attributionIdentifier];
  rank = self->_rank;
  if (rank)
  {
    [v14 setRank:{-[NSNumber unsignedIntegerValue](rank, "unsignedIntegerValue")}];
  }

  score = self->_score;
  if (score)
  {
    [(NSNumber *)score doubleValue];
    [v14 setScore:?];
  }

  isConversationAutoDonating = self->_isConversationAutoDonating;
  if (isConversationAutoDonating)
  {
    [v14 setIsConversationAutoDonating:{-[NSNumber BOOLValue](isConversationAutoDonating, "BOOLValue")}];
  }

  rankingDate = self->_rankingDate;
  if (rankingDate)
  {
    [(NSDate *)rankingDate timeIntervalSinceReferenceDate];
    [v14 setRankingSecondsSinceReferenceDate:?];
  }

  [v14 setResolvedUrl:self->_resolvedUrl];
  [v14 setClientVariant:self->_clientVariant];

  v26 = *MEMORY[0x1E69E9840];

  return v14;
}

- (BMRankableSocialHighlight)initWithHighlightIdentifier:(id)identifier highlightType:(unint64_t)type syndicationDate:(id)date sourceBundleId:(id)id applicationIdentifiers:(id)identifiers resourceUrl:(id)url sender:(id)sender domainIdentifier:(id)self0 batchIdentifier:(id)self1 calculatedFeatures:(id)self2 clientIdentifier:(id)self3 contentCreationDate:(id)self4 groupPhotoPath:(id)self5 displayName:(id)self6 isPrimary:(id)self7 attributionIdentifier:(id)self8 rank:(id)self9 score:(id)score isConversationAutoDonating:(id)donating originatingDeviceId:(id)deviceId rankingDate:(id)rankingDate resolvedUrl:(id)resolvedUrl
{
  identifierCopy = identifier;
  dateCopy = date;
  idCopy = id;
  identifiersCopy = identifiers;
  urlCopy = url;
  senderCopy = sender;
  domainIdentifierCopy = domainIdentifier;
  batchIdentifierCopy = batchIdentifier;
  featuresCopy = features;
  clientIdentifierCopy = clientIdentifier;
  creationDateCopy = creationDate;
  pathCopy = path;
  nameCopy = name;
  primaryCopy = primary;
  attributionIdentifierCopy = attributionIdentifier;
  rankCopy = rank;
  scoreCopy = score;
  donatingCopy = donating;
  deviceIdCopy = deviceId;
  rankingDateCopy = rankingDate;
  resolvedUrlCopy = resolvedUrl;
  if ([pathCopy hasPrefix:@"file://"])
  {
    v37 = bm_sha256(pathCopy);
  }

  else
  {
    v37 = pathCopy;
  }

  v38 = v37;
  v44 = [(BMRankableSocialHighlight *)self initWithHighlightIdentifier:identifierCopy highlightType:type syndicationDate:dateCopy sourceBundleId:idCopy applicationIdentifiers:identifiersCopy resourceUrl:urlCopy sender:senderCopy domainIdentifier:domainIdentifierCopy batchIdentifier:batchIdentifierCopy calculatedFeatures:featuresCopy clientIdentifier:clientIdentifierCopy contentCreationDate:creationDateCopy groupPhotoPathDigest:v37 displayName:nameCopy isPrimary:primaryCopy attributionIdentifier:attributionIdentifierCopy rank:rankCopy score:scoreCopy isConversationAutoDonating:donatingCopy originatingDeviceId:deviceIdCopy rankingDate:rankingDateCopy resolvedUrl:resolvedUrlCopy clientVariant:0];

  return v44;
}

@end