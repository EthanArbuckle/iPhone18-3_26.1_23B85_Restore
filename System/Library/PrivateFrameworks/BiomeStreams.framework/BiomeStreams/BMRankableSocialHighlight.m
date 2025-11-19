@interface BMRankableSocialHighlight
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
- (BMRankableSocialHighlight)initWithHighlightIdentifier:(id)a3 highlightType:(unint64_t)a4 syndicationDate:(id)a5 sourceBundleId:(id)a6 applicationIdentifiers:(id)a7 resourceUrl:(id)a8 sender:(id)a9 domainIdentifier:(id)a10 batchIdentifier:(id)a11 calculatedFeatures:(id)a12 clientIdentifier:(id)a13 contentCreationDate:(id)a14 groupPhotoPath:(id)a15 displayName:(id)a16 isPrimary:(id)a17 attributionIdentifier:(id)a18 rank:(id)a19 score:(id)a20 isConversationAutoDonating:(id)a21 originatingDeviceId:(id)a22 rankingDate:(id)a23 resolvedUrl:(id)a24;
- (BMRankableSocialHighlight)initWithHighlightIdentifier:(id)a3 highlightType:(unint64_t)a4 syndicationDate:(id)a5 sourceBundleId:(id)a6 applicationIdentifiers:(id)a7 resourceUrl:(id)a8 sender:(id)a9 domainIdentifier:(id)a10 batchIdentifier:(id)a11 calculatedFeatures:(id)a12 clientIdentifier:(id)a13 contentCreationDate:(id)a14 groupPhotoPathDigest:(id)a15 displayName:(id)a16 isPrimary:(id)a17 attributionIdentifier:(id)a18 rank:(id)a19 score:(id)a20 isConversationAutoDonating:(id)a21 originatingDeviceId:(id)a22 rankingDate:(id)a23 resolvedUrl:(id)a24 clientVariant:(id)a25;
- (BMRankableSocialHighlight)initWithProto:(id)a3;
- (BMRankableSocialHighlight)initWithProtoData:(id)a3;
- (id)encodeAsProto;
- (id)proto;
- (int)_protoType;
@end

@implementation BMRankableSocialHighlight

- (int)_protoType
{
  v3 = [(BMRankableSocialHighlight *)self highlightType];
  if (v3 >= 3)
  {
    v4 = __biome_log_for_category();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(BMRankableSocialHighlight *)self _protoType];
    }

    LODWORD(v3) = 0;
  }

  return v3;
}

- (BMRankableSocialHighlight)initWithHighlightIdentifier:(id)a3 highlightType:(unint64_t)a4 syndicationDate:(id)a5 sourceBundleId:(id)a6 applicationIdentifiers:(id)a7 resourceUrl:(id)a8 sender:(id)a9 domainIdentifier:(id)a10 batchIdentifier:(id)a11 calculatedFeatures:(id)a12 clientIdentifier:(id)a13 contentCreationDate:(id)a14 groupPhotoPathDigest:(id)a15 displayName:(id)a16 isPrimary:(id)a17 attributionIdentifier:(id)a18 rank:(id)a19 score:(id)a20 isConversationAutoDonating:(id)a21 originatingDeviceId:(id)a22 rankingDate:(id)a23 resolvedUrl:(id)a24 clientVariant:(id)a25
{
  v59 = a3;
  v41 = a5;
  v58 = a5;
  v42 = a6;
  v57 = a6;
  v43 = a7;
  v56 = a7;
  v55 = a8;
  v54 = a9;
  v53 = a10;
  v52 = a11;
  v51 = a12;
  v50 = a13;
  v49 = a14;
  v48 = a15;
  v47 = a16;
  v46 = a17;
  v29 = a18;
  v30 = a19;
  v31 = a20;
  v32 = a21;
  v33 = a22;
  v34 = a23;
  v35 = a24;
  v45 = a25;
  v60.receiver = self;
  v60.super_class = BMRankableSocialHighlight;
  v36 = [(BMEventBase *)&v60 init];
  v37 = v36;
  if (v36)
  {
    objc_storeStrong(&v36->_highlightIdentifier, a3);
    v37->_highlightType = a4;
    objc_storeStrong(&v37->_syndicationDate, v41);
    objc_storeStrong(&v37->_sourceBundleId, v42);
    objc_storeStrong(&v37->_applicationIdentifiers, v43);
    objc_storeStrong(&v37->_resourceUrl, a8);
    objc_storeStrong(&v37->_sender, a9);
    objc_storeStrong(&v37->_domainIdentifier, a10);
    objc_storeStrong(&v37->_batchIdentifier, a11);
    objc_storeStrong(&v37->_calculatedFeatures, a12);
    objc_storeStrong(&v37->_clientIdentifier, a13);
    objc_storeStrong(&v37->_contentCreationDate, a14);
    objc_storeStrong(&v37->_groupPhotoPathDigest, a15);
    objc_storeStrong(&v37->_displayName, a16);
    objc_storeStrong(&v37->_isPrimary, a17);
    objc_storeStrong(&v37->_attributionIdentifier, a18);
    objc_storeStrong(&v37->_rank, a19);
    objc_storeStrong(&v37->_score, a20);
    objc_storeStrong(&v37->_isConversationAutoDonating, a21);
    objc_storeStrong(&v37->_originatingDeviceId, a22);
    objc_storeStrong(&v37->_rankingDate, a23);
    objc_storeStrong(&v37->_resolvedUrl, a24);
    objc_storeStrong(&v37->_clientVariant, a25);
  }

  return v37;
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  if (a4 == 3)
  {
    v4 = a3;
    v5 = [[BMRankableSocialHighlight alloc] initWithProtoData:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)encodeAsProto
{
  v2 = [(BMRankableSocialHighlight *)self proto];
  v3 = [v2 data];

  return v3;
}

- (BMRankableSocialHighlight)initWithProto:(id)a3
{
  v64 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = v4;
    v56 = [v5 highlightIdentifier];
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

    v46 = v4;
    v57 = self;
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
    v11 = [v5 calculatedFeatures];
    v12 = [v11 countByEnumeratingWithState:&v59 objects:v63 count:16];
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
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v59 + 1) + 8 * i);
          v17 = objc_autoreleasePoolPush();
          if ([v16 hasName] && objc_msgSend(v16, "hasValue"))
          {
            v18 = MEMORY[0x1E696AD98];
            [v16 value];
            v19 = [v18 numberWithDouble:?];
            v20 = [v16 name];
            [v10 setObject:v19 forKeyedSubscript:v20];
          }

          objc_autoreleasePoolPop(v17);
        }

        v13 = [v11 countByEnumeratingWithState:&v59 objects:v63 count:16];
      }

      while (v13);
    }

    v21 = [v5 groupPhotoPathDigest];
    v22 = [v21 hasPrefix:@"file://"];

    v23 = [v5 groupPhotoPathDigest];
    v24 = v23;
    if (v22)
    {
      v25 = bm_sha256(v23);

      v24 = v25;
    }

    if ([v5 hasHighlightType])
    {
      v44 = -[BMRankableSocialHighlight _socialHighlightTypeForProtoType:](v57, "_socialHighlightTypeForProtoType:", [v5 highlightType]);
    }

    else
    {
      v44 = 0;
    }

    v51 = [v5 sourceBundleId];
    v50 = [v5 applicationIdentifiers];
    v52 = v24;
    v45 = [v5 hasResourceUrl];
    if (v45)
    {
      v26 = objc_alloc(MEMORY[0x1E695DFF8]);
      v36 = [v5 resourceUrl];
      v47 = [v26 initWithString:?];
    }

    else
    {
      v47 = 0;
    }

    v27 = [BMSocialHighlightContact alloc];
    v43 = [v5 sender];
    v42 = [(BMSocialHighlightContact *)v27 initWithProto:v43];
    v49 = [v5 domainIdentifier];
    v41 = [v5 batchIdentifier];
    v40 = [v5 clientIdentifier];
    v48 = [v5 displayName];
    v39 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v5, "isPrimary")}];
    v38 = [v5 attributionIdentifier];
    v28 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v5, "rank")}];
    v29 = MEMORY[0x1E696AD98];
    [v5 score];
    v37 = [v29 numberWithDouble:?];
    v30 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v5, "isConversationAutoDonating")}];
    v31 = [v5 originatingDeviceId];
    v32 = [v5 resolvedUrl];
    v33 = [v5 clientVariant];
    v58 = [(BMRankableSocialHighlight *)v57 initWithHighlightIdentifier:v56 highlightType:v44 syndicationDate:v55 sourceBundleId:v51 applicationIdentifiers:v50 resourceUrl:v47 sender:v42 domainIdentifier:v49 batchIdentifier:v41 calculatedFeatures:v10 clientIdentifier:v40 contentCreationDate:v54 groupPhotoPathDigest:v52 displayName:v48 isPrimary:v39 attributionIdentifier:v38 rank:v28 score:v37 isConversationAutoDonating:v30 originatingDeviceId:v31 rankingDate:v53 resolvedUrl:v32 clientVariant:v33];

    if (v45)
    {
    }

    self = v58;
    v7 = v58;
    v4 = v46;
  }

  else
  {
    v7 = 0;
  }

  v34 = *MEMORY[0x1E69E9840];
  return v7;
}

- (BMRankableSocialHighlight)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[BMPBRankableSocialHighlight alloc] initWithData:v4];

    self = [(BMRankableSocialHighlight *)self initWithProto:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
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

  v18 = [(NSURL *)self->_resourceUrl absoluteString];
  [v14 setResourceUrl:v18];

  v19 = [(BMSocialHighlightContact *)self->_sender proto];
  [v14 setSender:v19];

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

- (BMRankableSocialHighlight)initWithHighlightIdentifier:(id)a3 highlightType:(unint64_t)a4 syndicationDate:(id)a5 sourceBundleId:(id)a6 applicationIdentifiers:(id)a7 resourceUrl:(id)a8 sender:(id)a9 domainIdentifier:(id)a10 batchIdentifier:(id)a11 calculatedFeatures:(id)a12 clientIdentifier:(id)a13 contentCreationDate:(id)a14 groupPhotoPath:(id)a15 displayName:(id)a16 isPrimary:(id)a17 attributionIdentifier:(id)a18 rank:(id)a19 score:(id)a20 isConversationAutoDonating:(id)a21 originatingDeviceId:(id)a22 rankingDate:(id)a23 resolvedUrl:(id)a24
{
  v54 = a3;
  v53 = a5;
  v52 = a6;
  v51 = a7;
  v46 = a8;
  v50 = a9;
  v49 = a10;
  v45 = a11;
  v48 = a12;
  v47 = a13;
  v28 = a14;
  v29 = a15;
  v41 = a16;
  v30 = a17;
  v40 = a18;
  v31 = a19;
  v32 = a20;
  v33 = a21;
  v34 = a22;
  v35 = a23;
  v36 = a24;
  if ([v29 hasPrefix:@"file://"])
  {
    v37 = bm_sha256(v29);
  }

  else
  {
    v37 = v29;
  }

  v38 = v37;
  v44 = [(BMRankableSocialHighlight *)self initWithHighlightIdentifier:v54 highlightType:a4 syndicationDate:v53 sourceBundleId:v52 applicationIdentifiers:v51 resourceUrl:v46 sender:v50 domainIdentifier:v49 batchIdentifier:v45 calculatedFeatures:v48 clientIdentifier:v47 contentCreationDate:v28 groupPhotoPathDigest:v37 displayName:v41 isPrimary:v30 attributionIdentifier:v40 rank:v31 score:v32 isConversationAutoDonating:v33 originatingDeviceId:v34 rankingDate:v35 resolvedUrl:v36 clientVariant:0];

  return v44;
}

@end