@interface _CPStartLocalSearchFeedback
- (BOOL)isEqual:(id)a3;
- (_CPStartLocalSearchFeedback)init;
- (_CPStartLocalSearchFeedback)initWithFacade:(id)a3;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation _CPStartLocalSearchFeedback

- (unint64_t)hash
{
  v3 = 2654435761u * self->_timestamp;
  v4 = [(NSString *)self->_input hash];
  v5 = v4 ^ [(NSString *)self->_uuid hash]^ v3 ^ (2654435761 * self->_triggerEvent) ^ (2654435761u * self->_queryId);
  v6 = (2654435761 * self->_indexType) ^ (2654435761 * self->_searchType);
  v7 = v5 ^ v6 ^ [(NSString *)self->_originatingApp hash];
  v8 = [(_CPPerformEntityQueryCommandForFeedback *)self->_entityQueryCommand hash];
  return v7 ^ v8 ^ [(_CPIndexStateForFeedback *)self->_indexState hash]^ (2654435761 * self->_coreSpotlightIndexUsed) ^ (2654435761 * self->_isPhotosScopedSearch) ^ (2654435761 * self->_isSemanticSearchEligible) ^ (2654435761 * self->_spotlightInitialPageType) ^ (2654435761 * self->_spotlightBrowsingSearchScope);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_32;
  }

  timestamp = self->_timestamp;
  if (timestamp != [v4 timestamp])
  {
    goto LABEL_32;
  }

  v6 = [(_CPStartLocalSearchFeedback *)self input];
  v7 = [v4 input];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_31;
  }

  v8 = [(_CPStartLocalSearchFeedback *)self input];
  if (v8)
  {
    v9 = v8;
    v10 = [(_CPStartLocalSearchFeedback *)self input];
    v11 = [v4 input];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  v6 = [(_CPStartLocalSearchFeedback *)self uuid];
  v7 = [v4 uuid];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_31;
  }

  v13 = [(_CPStartLocalSearchFeedback *)self uuid];
  if (v13)
  {
    v14 = v13;
    v15 = [(_CPStartLocalSearchFeedback *)self uuid];
    v16 = [v4 uuid];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  triggerEvent = self->_triggerEvent;
  if (triggerEvent != [v4 triggerEvent])
  {
    goto LABEL_32;
  }

  queryId = self->_queryId;
  if (queryId != [v4 queryId])
  {
    goto LABEL_32;
  }

  indexType = self->_indexType;
  if (indexType != [v4 indexType])
  {
    goto LABEL_32;
  }

  searchType = self->_searchType;
  if (searchType != [v4 searchType])
  {
    goto LABEL_32;
  }

  v6 = [(_CPStartLocalSearchFeedback *)self originatingApp];
  v7 = [v4 originatingApp];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_31;
  }

  v22 = [(_CPStartLocalSearchFeedback *)self originatingApp];
  if (v22)
  {
    v23 = v22;
    v24 = [(_CPStartLocalSearchFeedback *)self originatingApp];
    v25 = [v4 originatingApp];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  v6 = [(_CPStartLocalSearchFeedback *)self entityQueryCommand];
  v7 = [v4 entityQueryCommand];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_31;
  }

  v27 = [(_CPStartLocalSearchFeedback *)self entityQueryCommand];
  if (v27)
  {
    v28 = v27;
    v29 = [(_CPStartLocalSearchFeedback *)self entityQueryCommand];
    v30 = [v4 entityQueryCommand];
    v31 = [v29 isEqual:v30];

    if (!v31)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  v6 = [(_CPStartLocalSearchFeedback *)self indexState];
  v7 = [v4 indexState];
  if ((v6 != 0) == (v7 == 0))
  {
LABEL_31:

    goto LABEL_32;
  }

  v32 = [(_CPStartLocalSearchFeedback *)self indexState];
  if (v32)
  {
    v33 = v32;
    v34 = [(_CPStartLocalSearchFeedback *)self indexState];
    v35 = [v4 indexState];
    v36 = [v34 isEqual:v35];

    if (!v36)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  coreSpotlightIndexUsed = self->_coreSpotlightIndexUsed;
  if (coreSpotlightIndexUsed == [v4 coreSpotlightIndexUsed])
  {
    isPhotosScopedSearch = self->_isPhotosScopedSearch;
    if (isPhotosScopedSearch == [v4 isPhotosScopedSearch])
    {
      isSemanticSearchEligible = self->_isSemanticSearchEligible;
      if (isSemanticSearchEligible == [v4 isSemanticSearchEligible])
      {
        spotlightInitialPageType = self->_spotlightInitialPageType;
        if (spotlightInitialPageType == [v4 spotlightInitialPageType])
        {
          spotlightBrowsingSearchScope = self->_spotlightBrowsingSearchScope;
          v37 = spotlightBrowsingSearchScope == [v4 spotlightBrowsingSearchScope];
          goto LABEL_33;
        }
      }
    }
  }

LABEL_32:
  v37 = 0;
LABEL_33:

  return v37;
}

- (void)writeTo:(id)a3
{
  a3;
  if ([(_CPStartLocalSearchFeedback *)self timestamp])
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  v5 = [(_CPStartLocalSearchFeedback *)self input];

  if (v5)
  {
    input = self->_input;
    PBDataWriterWriteStringField();
  }

  v7 = [(_CPStartLocalSearchFeedback *)self uuid];

  if (v7)
  {
    uuid = self->_uuid;
    PBDataWriterWriteStringField();
  }

  if ([(_CPStartLocalSearchFeedback *)self triggerEvent])
  {
    triggerEvent = self->_triggerEvent;
    PBDataWriterWriteInt32Field();
  }

  if ([(_CPStartLocalSearchFeedback *)self queryId])
  {
    queryId = self->_queryId;
    PBDataWriterWriteUint64Field();
  }

  if ([(_CPStartLocalSearchFeedback *)self indexType])
  {
    indexType = self->_indexType;
    PBDataWriterWriteInt32Field();
  }

  if ([(_CPStartLocalSearchFeedback *)self searchType])
  {
    searchType = self->_searchType;
    PBDataWriterWriteInt32Field();
  }

  v13 = [(_CPStartLocalSearchFeedback *)self originatingApp];

  if (v13)
  {
    originatingApp = self->_originatingApp;
    PBDataWriterWriteStringField();
  }

  v15 = [(_CPStartLocalSearchFeedback *)self entityQueryCommand];

  if (v15)
  {
    v16 = [(_CPStartLocalSearchFeedback *)self entityQueryCommand];
    PBDataWriterWriteSubmessage();
  }

  v17 = [(_CPStartLocalSearchFeedback *)self indexState];

  if (v17)
  {
    v18 = [(_CPStartLocalSearchFeedback *)self indexState];
    PBDataWriterWriteSubmessage();
  }

  if ([(_CPStartLocalSearchFeedback *)self coreSpotlightIndexUsed])
  {
    coreSpotlightIndexUsed = self->_coreSpotlightIndexUsed;
    PBDataWriterWriteInt32Field();
  }

  if ([(_CPStartLocalSearchFeedback *)self isPhotosScopedSearch])
  {
    isPhotosScopedSearch = self->_isPhotosScopedSearch;
    PBDataWriterWriteBOOLField();
  }

  if ([(_CPStartLocalSearchFeedback *)self isSemanticSearchEligible])
  {
    isSemanticSearchEligible = self->_isSemanticSearchEligible;
    PBDataWriterWriteBOOLField();
  }

  if ([(_CPStartLocalSearchFeedback *)self spotlightInitialPageType])
  {
    spotlightInitialPageType = self->_spotlightInitialPageType;
    PBDataWriterWriteInt32Field();
  }

  if ([(_CPStartLocalSearchFeedback *)self spotlightBrowsingSearchScope])
  {
    spotlightBrowsingSearchScope = self->_spotlightBrowsingSearchScope;
    PBDataWriterWriteInt32Field();
  }

  MEMORY[0x1EEE66BE0]();
}

- (_CPStartLocalSearchFeedback)init
{
  v5.receiver = self;
  v5.super_class = _CPStartLocalSearchFeedback;
  v2 = [(_CPStartLocalSearchFeedback *)&v5 init];
  if (v2)
  {
    [(_CPStartLocalSearchFeedback *)v2 setTimestamp:mach_absolute_time()];
    v3 = v2;
  }

  return v2;
}

- (_CPStartLocalSearchFeedback)initWithFacade:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = _CPStartLocalSearchFeedback;
  v5 = [(_CPStartLocalSearchFeedback *)&v22 init];
  if (v5)
  {
    -[_CPStartLocalSearchFeedback setTimestamp:](v5, "setTimestamp:", [v4 timestamp]);
    v6 = [v4 input];

    if (v6)
    {
      v7 = [v4 input];
      [(_CPStartLocalSearchFeedback *)v5 setInput:v7];
    }

    v8 = [v4 uuid];

    if (v8)
    {
      v9 = [v4 uuid];
      [(_CPStartLocalSearchFeedback *)v5 setUuid:v9];
    }

    -[_CPStartLocalSearchFeedback setTriggerEvent:](v5, "setTriggerEvent:", [v4 triggerEvent]);
    -[_CPStartLocalSearchFeedback setQueryId:](v5, "setQueryId:", [v4 queryId]);
    -[_CPStartLocalSearchFeedback setIndexType:](v5, "setIndexType:", [v4 indexType]);
    -[_CPStartLocalSearchFeedback setSearchType:](v5, "setSearchType:", [v4 searchType]);
    v10 = [v4 originatingApp];

    if (v10)
    {
      v11 = [v4 originatingApp];
      [(_CPStartLocalSearchFeedback *)v5 setOriginatingApp:v11];
    }

    v12 = [v4 entityQueryCommand];

    if (v12)
    {
      v13 = [_CPPerformEntityQueryCommandForFeedback alloc];
      v14 = [v4 entityQueryCommand];
      v15 = [(_CPPerformEntityQueryCommandForFeedback *)v13 initWithFacade:v14];
      [(_CPStartLocalSearchFeedback *)v5 setEntityQueryCommand:v15];
    }

    v16 = [v4 indexState];

    if (v16)
    {
      v17 = [_CPIndexStateForFeedback alloc];
      v18 = [v4 indexState];
      v19 = [(_CPIndexStateForFeedback *)v17 initWithFacade:v18];
      [(_CPStartLocalSearchFeedback *)v5 setIndexState:v19];
    }

    -[_CPStartLocalSearchFeedback setCoreSpotlightIndexUsed:](v5, "setCoreSpotlightIndexUsed:", [v4 coreSpotlightIndexUsed]);
    -[_CPStartLocalSearchFeedback setIsPhotosScopedSearch:](v5, "setIsPhotosScopedSearch:", [v4 isPhotosScopedSearch]);
    -[_CPStartLocalSearchFeedback setIsSemanticSearchEligible:](v5, "setIsSemanticSearchEligible:", [v4 isSemanticSearchEligible]);
    -[_CPStartLocalSearchFeedback setSpotlightInitialPageType:](v5, "setSpotlightInitialPageType:", [v4 spotlightInitialPageType]);
    -[_CPStartLocalSearchFeedback setSpotlightBrowsingSearchScope:](v5, "setSpotlightBrowsingSearchScope:", [v4 spotlightBrowsingSearchScope]);
    v20 = v5;
  }

  return v5;
}

@end