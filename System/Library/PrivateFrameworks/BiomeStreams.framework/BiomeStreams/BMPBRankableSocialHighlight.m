@interface BMPBRankableSocialHighlight
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsHighlightType:(id)a3;
- (int)highlightType;
- (unint64_t)hash;
- (void)addApplicationIdentifiers:(id)a3;
- (void)addCalculatedFeatures:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasHighlightType:(BOOL)a3;
- (void)setHasIsConversationAutoDonating:(BOOL)a3;
- (void)setHasIsPrimary:(BOOL)a3;
- (void)setHasRank:(BOOL)a3;
- (void)setHasRankingSecondsSinceReferenceDate:(BOOL)a3;
- (void)setHasScore:(BOOL)a3;
- (void)setHasSyndicationSecondsSinceReferenceDate:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation BMPBRankableSocialHighlight

- (int)highlightType
{
  if ((*&self->_has & 0x10) != 0)
  {
    return self->_highlightType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasHighlightType:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (int)StringAsHighlightType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"Automatic"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Starred"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasSyndicationSecondsSinceReferenceDate:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)addApplicationIdentifiers:(id)a3
{
  v4 = a3;
  applicationIdentifiers = self->_applicationIdentifiers;
  v8 = v4;
  if (!applicationIdentifiers)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_applicationIdentifiers;
    self->_applicationIdentifiers = v6;

    v4 = v8;
    applicationIdentifiers = self->_applicationIdentifiers;
  }

  [(NSMutableArray *)applicationIdentifiers addObject:v4];
}

- (void)addCalculatedFeatures:(id)a3
{
  v4 = a3;
  calculatedFeatures = self->_calculatedFeatures;
  v8 = v4;
  if (!calculatedFeatures)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_calculatedFeatures;
    self->_calculatedFeatures = v6;

    v4 = v8;
    calculatedFeatures = self->_calculatedFeatures;
  }

  [(NSMutableArray *)calculatedFeatures addObject:v4];
}

- (void)setHasIsPrimary:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = v3 & 0x80 | *&self->_has & 0x7F;
}

- (void)setHasRank:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasScore:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasIsConversationAutoDonating:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (void)setHasRankingSecondsSinceReferenceDate:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = BMPBRankableSocialHighlight;
  v4 = [(BMPBRankableSocialHighlight *)&v8 description];
  v5 = [(BMPBRankableSocialHighlight *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v45 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  highlightIdentifier = self->_highlightIdentifier;
  if (highlightIdentifier)
  {
    [v3 setObject:highlightIdentifier forKey:@"highlightIdentifier"];
  }

  has = self->_has;
  if ((has & 0x10) != 0)
  {
    highlightType = self->_highlightType;
    if (highlightType >= 3)
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_highlightType];
    }

    else
    {
      v8 = off_1E6E52A30[highlightType];
    }

    [v4 setObject:v8 forKey:@"highlightType"];

    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithDouble:self->_syndicationSecondsSinceReferenceDate];
    [v4 setObject:v9 forKey:@"syndicationSecondsSinceReferenceDate"];
  }

  sourceBundleId = self->_sourceBundleId;
  if (sourceBundleId)
  {
    [v4 setObject:sourceBundleId forKey:@"sourceBundleId"];
  }

  applicationIdentifiers = self->_applicationIdentifiers;
  if (applicationIdentifiers)
  {
    [v4 setObject:applicationIdentifiers forKey:@"applicationIdentifiers"];
  }

  resourceUrl = self->_resourceUrl;
  if (resourceUrl)
  {
    [v4 setObject:resourceUrl forKey:@"resourceUrl"];
  }

  sender = self->_sender;
  if (sender)
  {
    v14 = [(BMPBSocialHighlightContact *)sender dictionaryRepresentation];
    [v4 setObject:v14 forKey:@"sender"];
  }

  domainIdentifier = self->_domainIdentifier;
  if (domainIdentifier)
  {
    [v4 setObject:domainIdentifier forKey:@"domainIdentifier"];
  }

  batchIdentifier = self->_batchIdentifier;
  if (batchIdentifier)
  {
    [v4 setObject:batchIdentifier forKey:@"batchIdentifier"];
  }

  if ([(NSMutableArray *)self->_calculatedFeatures count])
  {
    v17 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_calculatedFeatures, "count")}];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v18 = self->_calculatedFeatures;
    v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v40 objects:v44 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v41;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v41 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = [*(*(&v40 + 1) + 8 * i) dictionaryRepresentation];
          [v17 addObject:v23];
        }

        v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v40 objects:v44 count:16];
      }

      while (v20);
    }

    [v4 setObject:v17 forKey:@"calculatedFeatures"];
  }

  clientIdentifier = self->_clientIdentifier;
  if (clientIdentifier)
  {
    [v4 setObject:clientIdentifier forKey:@"clientIdentifier"];
  }

  if (*&self->_has)
  {
    v25 = [MEMORY[0x1E696AD98] numberWithDouble:self->_contentCreationSecondsSinceReferenceDate];
    [v4 setObject:v25 forKey:@"contentCreationSecondsSinceReferenceDate"];
  }

  groupPhotoPathDigest = self->_groupPhotoPathDigest;
  if (groupPhotoPathDigest)
  {
    [v4 setObject:groupPhotoPathDigest forKey:@"groupPhotoPathDigest"];
  }

  displayName = self->_displayName;
  if (displayName)
  {
    [v4 setObject:displayName forKey:@"displayName"];
  }

  if ((*&self->_has & 0x80000000) != 0)
  {
    v28 = [MEMORY[0x1E696AD98] numberWithBool:self->_isPrimary];
    [v4 setObject:v28 forKey:@"isPrimary"];
  }

  attributionIdentifier = self->_attributionIdentifier;
  if (attributionIdentifier)
  {
    [v4 setObject:attributionIdentifier forKey:@"attributionIdentifier"];
  }

  v30 = self->_has;
  if ((v30 & 0x20) != 0)
  {
    v38 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_rank];
    [v4 setObject:v38 forKey:@"rank"];

    v30 = self->_has;
    if ((v30 & 4) == 0)
    {
LABEL_45:
      if ((v30 & 0x40) == 0)
      {
        goto LABEL_47;
      }

      goto LABEL_46;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_45;
  }

  v39 = [MEMORY[0x1E696AD98] numberWithDouble:self->_score];
  [v4 setObject:v39 forKey:@"score"];

  if ((*&self->_has & 0x40) != 0)
  {
LABEL_46:
    v31 = [MEMORY[0x1E696AD98] numberWithBool:self->_isConversationAutoDonating];
    [v4 setObject:v31 forKey:@"isConversationAutoDonating"];
  }

LABEL_47:
  originatingDeviceId = self->_originatingDeviceId;
  if (originatingDeviceId)
  {
    [v4 setObject:originatingDeviceId forKey:@"originatingDeviceId"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v33 = [MEMORY[0x1E696AD98] numberWithDouble:self->_rankingSecondsSinceReferenceDate];
    [v4 setObject:v33 forKey:@"rankingSecondsSinceReferenceDate"];
  }

  resolvedUrl = self->_resolvedUrl;
  if (resolvedUrl)
  {
    [v4 setObject:resolvedUrl forKey:@"resolvedUrl"];
  }

  clientVariant = self->_clientVariant;
  if (clientVariant)
  {
    [v4 setObject:clientVariant forKey:@"clientVariant"];
  }

  v36 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)writeTo:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_highlightIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 0x10) != 0)
  {
    highlightType = self->_highlightType;
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    syndicationSecondsSinceReferenceDate = self->_syndicationSecondsSinceReferenceDate;
    PBDataWriterWriteDoubleField();
  }

  if (self->_sourceBundleId)
  {
    PBDataWriterWriteStringField();
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v8 = self->_applicationIdentifiers;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v33;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v33 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v32 + 1) + 8 * i);
        PBDataWriterWriteStringField();
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v10);
  }

  if (self->_resourceUrl)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_sender)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_domainIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_batchIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v14 = self->_calculatedFeatures;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v29;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v29 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v28 + 1) + 8 * j);
        PBDataWriterWriteSubmessage();
      }

      v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v16);
  }

  if (self->_clientIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
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

  if ((*&self->_has & 0x80000000) != 0)
  {
    isPrimary = self->_isPrimary;
    PBDataWriterWriteBOOLField();
  }

  if (self->_attributionIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  v22 = self->_has;
  if ((v22 & 0x20) != 0)
  {
    rank = self->_rank;
    PBDataWriterWriteUint32Field();
    v22 = self->_has;
    if ((v22 & 4) == 0)
    {
LABEL_45:
      if ((v22 & 0x40) == 0)
      {
        goto LABEL_47;
      }

      goto LABEL_46;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_45;
  }

  score = self->_score;
  PBDataWriterWriteDoubleField();
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_46:
    isConversationAutoDonating = self->_isConversationAutoDonating;
    PBDataWriterWriteBOOLField();
  }

LABEL_47:
  if (self->_originatingDeviceId)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 2) != 0)
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

- (void)copyTo:(id)a3
{
  v4 = a3;
  v16 = v4;
  if (self->_highlightIdentifier)
  {
    [v4 setHighlightIdentifier:?];
    v4 = v16;
  }

  has = self->_has;
  if ((has & 0x10) != 0)
  {
    *(v4 + 30) = self->_highlightType;
    *(v4 + 180) |= 0x10u;
    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    *(v4 + 4) = *&self->_syndicationSecondsSinceReferenceDate;
    *(v4 + 180) |= 8u;
  }

  if (self->_sourceBundleId)
  {
    [v16 setSourceBundleId:?];
  }

  if ([(BMPBRankableSocialHighlight *)self applicationIdentifiersCount])
  {
    [v16 clearApplicationIdentifiers];
    v6 = [(BMPBRankableSocialHighlight *)self applicationIdentifiersCount];
    if (v6)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(BMPBRankableSocialHighlight *)self applicationIdentifiersAtIndex:i];
        [v16 addApplicationIdentifiers:v9];
      }
    }
  }

  if (self->_resourceUrl)
  {
    [v16 setResourceUrl:?];
  }

  if (self->_sender)
  {
    [v16 setSender:?];
  }

  if (self->_domainIdentifier)
  {
    [v16 setDomainIdentifier:?];
  }

  if (self->_batchIdentifier)
  {
    [v16 setBatchIdentifier:?];
  }

  if ([(BMPBRankableSocialHighlight *)self calculatedFeaturesCount])
  {
    [v16 clearCalculatedFeatures];
    v10 = [(BMPBRankableSocialHighlight *)self calculatedFeaturesCount];
    if (v10)
    {
      v11 = v10;
      for (j = 0; j != v11; ++j)
      {
        v13 = [(BMPBRankableSocialHighlight *)self calculatedFeaturesAtIndex:j];
        [v16 addCalculatedFeatures:v13];
      }
    }
  }

  if (self->_clientIdentifier)
  {
    [v16 setClientIdentifier:?];
  }

  v14 = v16;
  if (*&self->_has)
  {
    *(v16 + 1) = *&self->_contentCreationSecondsSinceReferenceDate;
    *(v16 + 180) |= 1u;
  }

  if (self->_groupPhotoPathDigest)
  {
    [v16 setGroupPhotoPathDigest:?];
    v14 = v16;
  }

  if (self->_displayName)
  {
    [v16 setDisplayName:?];
    v14 = v16;
  }

  if ((*&self->_has & 0x80000000) != 0)
  {
    v14[177] = self->_isPrimary;
    v14[180] |= 0x80u;
  }

  if (self->_attributionIdentifier)
  {
    [v16 setAttributionIdentifier:?];
    v14 = v16;
  }

  v15 = self->_has;
  if ((v15 & 0x20) != 0)
  {
    *(v14 + 34) = self->_rank;
    v14[180] |= 0x20u;
    v15 = self->_has;
    if ((v15 & 4) == 0)
    {
LABEL_39:
      if ((v15 & 0x40) == 0)
      {
        goto LABEL_41;
      }

      goto LABEL_40;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_39;
  }

  *(v14 + 3) = *&self->_score;
  v14[180] |= 4u;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_40:
    v14[176] = self->_isConversationAutoDonating;
    v14[180] |= 0x40u;
  }

LABEL_41:
  if (self->_originatingDeviceId)
  {
    [v16 setOriginatingDeviceId:?];
    v14 = v16;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v14 + 2) = *&self->_rankingSecondsSinceReferenceDate;
    v14[180] |= 2u;
  }

  if (self->_resolvedUrl)
  {
    [v16 setResolvedUrl:?];
    v14 = v16;
  }

  if (self->_clientVariant)
  {
    [v16 setClientVariant:?];
    v14 = v16;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v58 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_highlightIdentifier copyWithZone:a3];
  v7 = *(v5 + 112);
  *(v5 + 112) = v6;

  has = self->_has;
  if ((has & 0x10) != 0)
  {
    *(v5 + 120) = self->_highlightType;
    *(v5 + 180) |= 0x10u;
    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    *(v5 + 32) = self->_syndicationSecondsSinceReferenceDate;
    *(v5 + 180) |= 8u;
  }

  v9 = [(NSString *)self->_sourceBundleId copyWithZone:a3];
  v10 = *(v5 + 168);
  *(v5 + 168) = v9;

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v11 = self->_applicationIdentifiers;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v52 objects:v57 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v53;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v53 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [*(*(&v52 + 1) + 8 * i) copyWithZone:a3];
        [v5 addApplicationIdentifiers:v16];
      }

      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v52 objects:v57 count:16];
    }

    while (v13);
  }

  v17 = [(NSString *)self->_resourceUrl copyWithZone:a3];
  v18 = *(v5 + 152);
  *(v5 + 152) = v17;

  v19 = [(BMPBSocialHighlightContact *)self->_sender copyWithZone:a3];
  v20 = *(v5 + 160);
  *(v5 + 160) = v19;

  v21 = [(NSString *)self->_domainIdentifier copyWithZone:a3];
  v22 = *(v5 + 96);
  *(v5 + 96) = v21;

  v23 = [(NSString *)self->_batchIdentifier copyWithZone:a3];
  v24 = *(v5 + 56);
  *(v5 + 56) = v23;

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v25 = self->_calculatedFeatures;
  v26 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v48 objects:v56 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v49;
    do
    {
      for (j = 0; j != v27; ++j)
      {
        if (*v49 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = [*(*(&v48 + 1) + 8 * j) copyWithZone:{a3, v48}];
        [v5 addCalculatedFeatures:v30];
      }

      v27 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v48 objects:v56 count:16];
    }

    while (v27);
  }

  v31 = [(NSString *)self->_clientIdentifier copyWithZone:a3];
  v32 = *(v5 + 72);
  *(v5 + 72) = v31;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_contentCreationSecondsSinceReferenceDate;
    *(v5 + 180) |= 1u;
  }

  v33 = [(NSString *)self->_groupPhotoPathDigest copyWithZone:a3, v48];
  v34 = *(v5 + 104);
  *(v5 + 104) = v33;

  v35 = [(NSString *)self->_displayName copyWithZone:a3];
  v36 = *(v5 + 88);
  *(v5 + 88) = v35;

  if ((*&self->_has & 0x80000000) != 0)
  {
    *(v5 + 177) = self->_isPrimary;
    *(v5 + 180) |= 0x80u;
  }

  v37 = [(NSString *)self->_attributionIdentifier copyWithZone:a3];
  v38 = *(v5 + 48);
  *(v5 + 48) = v37;

  v39 = self->_has;
  if ((v39 & 0x20) != 0)
  {
    *(v5 + 136) = self->_rank;
    *(v5 + 180) |= 0x20u;
    v39 = self->_has;
    if ((v39 & 4) == 0)
    {
LABEL_25:
      if ((v39 & 0x40) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_25;
  }

  *(v5 + 24) = self->_score;
  *(v5 + 180) |= 4u;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_26:
    *(v5 + 176) = self->_isConversationAutoDonating;
    *(v5 + 180) |= 0x40u;
  }

LABEL_27:
  v40 = [(NSString *)self->_originatingDeviceId copyWithZone:a3];
  v41 = *(v5 + 128);
  *(v5 + 128) = v40;

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 16) = self->_rankingSecondsSinceReferenceDate;
    *(v5 + 180) |= 2u;
  }

  v42 = [(NSString *)self->_resolvedUrl copyWithZone:a3];
  v43 = *(v5 + 144);
  *(v5 + 144) = v42;

  v44 = [(NSString *)self->_clientVariant copyWithZone:a3];
  v45 = *(v5 + 80);
  *(v5 + 80) = v44;

  v46 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_80;
  }

  highlightIdentifier = self->_highlightIdentifier;
  if (highlightIdentifier | *(v4 + 14))
  {
    if (![(NSString *)highlightIdentifier isEqual:?])
    {
      goto LABEL_80;
    }
  }

  v6 = v4[180];
  if ((*&self->_has & 0x10) != 0)
  {
    if ((v4[180] & 0x10) == 0 || self->_highlightType != *(v4 + 30))
    {
      goto LABEL_80;
    }
  }

  else if ((v4[180] & 0x10) != 0)
  {
    goto LABEL_80;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((v4[180] & 8) == 0 || self->_syndicationSecondsSinceReferenceDate != *(v4 + 4))
    {
      goto LABEL_80;
    }
  }

  else if ((v4[180] & 8) != 0)
  {
    goto LABEL_80;
  }

  sourceBundleId = self->_sourceBundleId;
  if (sourceBundleId | *(v4 + 21) && ![(NSString *)sourceBundleId isEqual:?])
  {
    goto LABEL_80;
  }

  applicationIdentifiers = self->_applicationIdentifiers;
  if (applicationIdentifiers | *(v4 + 5))
  {
    if (![(NSMutableArray *)applicationIdentifiers isEqual:?])
    {
      goto LABEL_80;
    }
  }

  resourceUrl = self->_resourceUrl;
  if (resourceUrl | *(v4 + 19))
  {
    if (![(NSString *)resourceUrl isEqual:?])
    {
      goto LABEL_80;
    }
  }

  sender = self->_sender;
  if (sender | *(v4 + 20))
  {
    if (![(BMPBSocialHighlightContact *)sender isEqual:?])
    {
      goto LABEL_80;
    }
  }

  domainIdentifier = self->_domainIdentifier;
  if (domainIdentifier | *(v4 + 12))
  {
    if (![(NSString *)domainIdentifier isEqual:?])
    {
      goto LABEL_80;
    }
  }

  batchIdentifier = self->_batchIdentifier;
  if (batchIdentifier | *(v4 + 7))
  {
    if (![(NSString *)batchIdentifier isEqual:?])
    {
      goto LABEL_80;
    }
  }

  calculatedFeatures = self->_calculatedFeatures;
  if (calculatedFeatures | *(v4 + 8))
  {
    if (![(NSMutableArray *)calculatedFeatures isEqual:?])
    {
      goto LABEL_80;
    }
  }

  clientIdentifier = self->_clientIdentifier;
  if (clientIdentifier | *(v4 + 9))
  {
    if (![(NSString *)clientIdentifier isEqual:?])
    {
      goto LABEL_80;
    }
  }

  v15 = v4[180];
  if (*&self->_has)
  {
    if ((v4[180] & 1) == 0 || self->_contentCreationSecondsSinceReferenceDate != *(v4 + 1))
    {
      goto LABEL_80;
    }
  }

  else if (v4[180])
  {
    goto LABEL_80;
  }

  groupPhotoPathDigest = self->_groupPhotoPathDigest;
  if (groupPhotoPathDigest | *(v4 + 13) && ![(NSString *)groupPhotoPathDigest isEqual:?])
  {
    goto LABEL_80;
  }

  displayName = self->_displayName;
  if (displayName | *(v4 + 11))
  {
    if (![(NSString *)displayName isEqual:?])
    {
      goto LABEL_80;
    }
  }

  has = self->_has;
  v19 = v4[180];
  if ((*&has & 0x80000000) != 0)
  {
    if ((v19 & 0x80000000) == 0)
    {
      goto LABEL_80;
    }

    v21 = v4[177];
    if (self->_isPrimary)
    {
      if ((v4[177] & 1) == 0)
      {
        goto LABEL_80;
      }
    }

    else if (v4[177])
    {
      goto LABEL_80;
    }
  }

  else if (v19 < 0)
  {
    goto LABEL_80;
  }

  attributionIdentifier = self->_attributionIdentifier;
  if (attributionIdentifier | *(v4 + 6))
  {
    if (![(NSString *)attributionIdentifier isEqual:?])
    {
      goto LABEL_80;
    }

    *&has = self->_has;
  }

  v22 = v4[180];
  if ((*&has & 0x20) != 0)
  {
    if ((v4[180] & 0x20) == 0 || self->_rank != *(v4 + 34))
    {
      goto LABEL_80;
    }
  }

  else if ((v4[180] & 0x20) != 0)
  {
    goto LABEL_80;
  }

  if ((*&has & 4) != 0)
  {
    if ((v4[180] & 4) == 0 || self->_score != *(v4 + 3))
    {
      goto LABEL_80;
    }
  }

  else if ((v4[180] & 4) != 0)
  {
    goto LABEL_80;
  }

  if ((*&has & 0x40) != 0)
  {
    if ((v4[180] & 0x40) == 0)
    {
      goto LABEL_80;
    }

    v25 = v4[176];
    if (self->_isConversationAutoDonating)
    {
      if ((v4[176] & 1) == 0)
      {
        goto LABEL_80;
      }
    }

    else if (v4[176])
    {
      goto LABEL_80;
    }
  }

  else if ((v4[180] & 0x40) != 0)
  {
    goto LABEL_80;
  }

  originatingDeviceId = self->_originatingDeviceId;
  if (!(originatingDeviceId | *(v4 + 16)))
  {
    goto LABEL_66;
  }

  if (![(NSString *)originatingDeviceId isEqual:?])
  {
LABEL_80:
    v28 = 0;
    goto LABEL_81;
  }

  *&has = self->_has;
LABEL_66:
  v24 = v4[180];
  if ((*&has & 2) != 0)
  {
    if ((v4[180] & 2) == 0 || self->_rankingSecondsSinceReferenceDate != *(v4 + 2))
    {
      goto LABEL_80;
    }
  }

  else if ((v4[180] & 2) != 0)
  {
    goto LABEL_80;
  }

  resolvedUrl = self->_resolvedUrl;
  if (resolvedUrl | *(v4 + 18) && ![(NSString *)resolvedUrl isEqual:?])
  {
    goto LABEL_80;
  }

  clientVariant = self->_clientVariant;
  if (clientVariant | *(v4 + 10))
  {
    v28 = [(NSString *)clientVariant isEqual:?];
  }

  else
  {
    v28 = 1;
  }

LABEL_81:

  return v28;
}

- (unint64_t)hash
{
  v49 = [(NSString *)self->_highlightIdentifier hash];
  if ((*&self->_has & 0x10) != 0)
  {
    v48 = 2654435761 * self->_highlightType;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_3;
    }

LABEL_11:
    v47 = 0;
    goto LABEL_12;
  }

  v48 = 0;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_11;
  }

LABEL_3:
  syndicationSecondsSinceReferenceDate = self->_syndicationSecondsSinceReferenceDate;
  if (syndicationSecondsSinceReferenceDate < 0.0)
  {
    syndicationSecondsSinceReferenceDate = -syndicationSecondsSinceReferenceDate;
  }

  *v3.i64 = floor(syndicationSecondsSinceReferenceDate + 0.5);
  v6 = (syndicationSecondsSinceReferenceDate - *v3.i64) * 1.84467441e19;
  *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
  v7.f64[0] = NAN;
  v7.f64[1] = NAN;
  v3.i64[0] = vbslq_s8(vnegq_f64(v7), v4, v3).i64[0];
  v8 = 2654435761u * *v3.i64;
  v9 = v8 + v6;
  if (v6 <= 0.0)
  {
    v9 = 2654435761u * *v3.i64;
  }

  v10 = v8 - fabs(v6);
  if (v6 >= 0.0)
  {
    v10 = v9;
  }

  v47 = v10;
LABEL_12:
  v46 = [(NSString *)self->_sourceBundleId hash];
  v45 = [(NSMutableArray *)self->_applicationIdentifiers hash];
  v44 = [(NSString *)self->_resourceUrl hash];
  v43 = [(BMPBSocialHighlightContact *)self->_sender hash];
  v42 = [(NSString *)self->_domainIdentifier hash];
  v41 = [(NSString *)self->_batchIdentifier hash];
  v40 = [(NSMutableArray *)self->_calculatedFeatures hash];
  v39 = [(NSString *)self->_clientIdentifier hash];
  if (*&self->_has)
  {
    contentCreationSecondsSinceReferenceDate = self->_contentCreationSecondsSinceReferenceDate;
    if (contentCreationSecondsSinceReferenceDate < 0.0)
    {
      contentCreationSecondsSinceReferenceDate = -contentCreationSecondsSinceReferenceDate;
    }

    *v11.i64 = floor(contentCreationSecondsSinceReferenceDate + 0.5);
    v15 = (contentCreationSecondsSinceReferenceDate - *v11.i64) * 1.84467441e19;
    *v12.i64 = *v11.i64 - trunc(*v11.i64 * 5.42101086e-20) * 1.84467441e19;
    v16.f64[0] = NAN;
    v16.f64[1] = NAN;
    v13 = 2654435761u * *vbslq_s8(vnegq_f64(v16), v12, v11).i64;
    if (v15 >= 0.0)
    {
      if (v15 > 0.0)
      {
        v13 += v15;
      }
    }

    else
    {
      v13 -= fabs(v15);
    }
  }

  else
  {
    v13 = 0;
  }

  v38 = [(NSString *)self->_groupPhotoPathDigest hash];
  v17 = [(NSString *)self->_displayName hash];
  if ((*&self->_has & 0x80000000) != 0)
  {
    v18 = 2654435761 * self->_isPrimary;
  }

  else
  {
    v18 = 0;
  }

  v19 = [(NSString *)self->_attributionIdentifier hash];
  if ((*&self->_has & 0x20) != 0)
  {
    v22 = 2654435761 * self->_rank;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_25;
    }

LABEL_30:
    v26 = 0;
    goto LABEL_31;
  }

  v22 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_30;
  }

LABEL_25:
  score = self->_score;
  if (score < 0.0)
  {
    score = -score;
  }

  *v20.i64 = floor(score + 0.5);
  v24 = (score - *v20.i64) * 1.84467441e19;
  *v21.i64 = *v20.i64 - trunc(*v20.i64 * 5.42101086e-20) * 1.84467441e19;
  v25.f64[0] = NAN;
  v25.f64[1] = NAN;
  v26 = 2654435761u * *vbslq_s8(vnegq_f64(v25), v21, v20).i64;
  if (v24 >= 0.0)
  {
    if (v24 > 0.0)
    {
      v26 += v24;
    }
  }

  else
  {
    v26 -= fabs(v24);
  }

LABEL_31:
  if ((*&self->_has & 0x40) != 0)
  {
    v27 = 2654435761 * self->_isConversationAutoDonating;
  }

  else
  {
    v27 = 0;
  }

  v28 = [(NSString *)self->_originatingDeviceId hash];
  if ((*&self->_has & 2) != 0)
  {
    rankingSecondsSinceReferenceDate = self->_rankingSecondsSinceReferenceDate;
    if (rankingSecondsSinceReferenceDate < 0.0)
    {
      rankingSecondsSinceReferenceDate = -rankingSecondsSinceReferenceDate;
    }

    *v29.i64 = floor(rankingSecondsSinceReferenceDate + 0.5);
    v33 = (rankingSecondsSinceReferenceDate - *v29.i64) * 1.84467441e19;
    *v30.i64 = *v29.i64 - trunc(*v29.i64 * 5.42101086e-20) * 1.84467441e19;
    v34.f64[0] = NAN;
    v34.f64[1] = NAN;
    v31 = 2654435761u * *vbslq_s8(vnegq_f64(v34), v30, v29).i64;
    if (v33 >= 0.0)
    {
      if (v33 > 0.0)
      {
        v31 += v33;
      }
    }

    else
    {
      v31 -= fabs(v33);
    }
  }

  else
  {
    v31 = 0;
  }

  v35 = v48 ^ v49 ^ v47 ^ v46 ^ v45 ^ v44 ^ v43 ^ v42 ^ v41 ^ v40 ^ v39 ^ v13 ^ v38 ^ v17 ^ v18 ^ v19;
  v36 = v22 ^ v26 ^ v27 ^ v28 ^ v31 ^ [(NSString *)self->_resolvedUrl hash];
  return v35 ^ v36 ^ [(NSString *)self->_clientVariant hash];
}

- (void)mergeFrom:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (*(v4 + 14))
  {
    [(BMPBRankableSocialHighlight *)self setHighlightIdentifier:?];
  }

  v5 = v4[180];
  if ((v5 & 0x10) != 0)
  {
    self->_highlightType = *(v4 + 30);
    *&self->_has |= 0x10u;
    v5 = v4[180];
  }

  if ((v5 & 8) != 0)
  {
    self->_syndicationSecondsSinceReferenceDate = *(v4 + 4);
    *&self->_has |= 8u;
  }

  if (*(v4 + 21))
  {
    [(BMPBRankableSocialHighlight *)self setSourceBundleId:?];
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = *(v4 + 5);
  v7 = [v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v25;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(BMPBRankableSocialHighlight *)self addApplicationIdentifiers:*(*(&v24 + 1) + 8 * i)];
      }

      v8 = [v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v8);
  }

  if (*(v4 + 19))
  {
    [(BMPBRankableSocialHighlight *)self setResourceUrl:?];
  }

  sender = self->_sender;
  v12 = *(v4 + 20);
  if (sender)
  {
    if (v12)
    {
      [(BMPBSocialHighlightContact *)sender mergeFrom:?];
    }
  }

  else if (v12)
  {
    [(BMPBRankableSocialHighlight *)self setSender:?];
  }

  if (*(v4 + 12))
  {
    [(BMPBRankableSocialHighlight *)self setDomainIdentifier:?];
  }

  if (*(v4 + 7))
  {
    [(BMPBRankableSocialHighlight *)self setBatchIdentifier:?];
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v13 = *(v4 + 8);
  v14 = [v13 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v21;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v21 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [(BMPBRankableSocialHighlight *)self addCalculatedFeatures:*(*(&v20 + 1) + 8 * j), v20];
      }

      v15 = [v13 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v15);
  }

  if (*(v4 + 9))
  {
    [(BMPBRankableSocialHighlight *)self setClientIdentifier:?];
  }

  if (v4[180])
  {
    self->_contentCreationSecondsSinceReferenceDate = *(v4 + 1);
    *&self->_has |= 1u;
  }

  if (*(v4 + 13))
  {
    [(BMPBRankableSocialHighlight *)self setGroupPhotoPathDigest:?];
  }

  if (*(v4 + 11))
  {
    [(BMPBRankableSocialHighlight *)self setDisplayName:?];
  }

  if (v4[180] < 0)
  {
    self->_isPrimary = v4[177];
    *&self->_has |= 0x80u;
  }

  if (*(v4 + 6))
  {
    [(BMPBRankableSocialHighlight *)self setAttributionIdentifier:?];
  }

  v18 = v4[180];
  if ((v18 & 0x20) != 0)
  {
    self->_rank = *(v4 + 34);
    *&self->_has |= 0x20u;
    v18 = v4[180];
    if ((v18 & 4) == 0)
    {
LABEL_48:
      if ((v18 & 0x40) == 0)
      {
        goto LABEL_50;
      }

      goto LABEL_49;
    }
  }

  else if ((v4[180] & 4) == 0)
  {
    goto LABEL_48;
  }

  self->_score = *(v4 + 3);
  *&self->_has |= 4u;
  if ((v4[180] & 0x40) != 0)
  {
LABEL_49:
    self->_isConversationAutoDonating = v4[176];
    *&self->_has |= 0x40u;
  }

LABEL_50:
  if (*(v4 + 16))
  {
    [(BMPBRankableSocialHighlight *)self setOriginatingDeviceId:?];
  }

  if ((v4[180] & 2) != 0)
  {
    self->_rankingSecondsSinceReferenceDate = *(v4 + 2);
    *&self->_has |= 2u;
  }

  if (*(v4 + 18))
  {
    [(BMPBRankableSocialHighlight *)self setResolvedUrl:?];
  }

  if (*(v4 + 10))
  {
    [(BMPBRankableSocialHighlight *)self setClientVariant:?];
  }

  v19 = *MEMORY[0x1E69E9840];
}

@end