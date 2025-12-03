@interface _CPStartLocalSearchFeedback
- (BOOL)isEqual:(id)equal;
- (_CPStartLocalSearchFeedback)init;
- (_CPStartLocalSearchFeedback)initWithFacade:(id)facade;
- (unint64_t)hash;
- (void)writeTo:(id)to;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_32;
  }

  timestamp = self->_timestamp;
  if (timestamp != [equalCopy timestamp])
  {
    goto LABEL_32;
  }

  input = [(_CPStartLocalSearchFeedback *)self input];
  input2 = [equalCopy input];
  if ((input != 0) == (input2 == 0))
  {
    goto LABEL_31;
  }

  input3 = [(_CPStartLocalSearchFeedback *)self input];
  if (input3)
  {
    v9 = input3;
    input4 = [(_CPStartLocalSearchFeedback *)self input];
    input5 = [equalCopy input];
    v12 = [input4 isEqual:input5];

    if (!v12)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  input = [(_CPStartLocalSearchFeedback *)self uuid];
  input2 = [equalCopy uuid];
  if ((input != 0) == (input2 == 0))
  {
    goto LABEL_31;
  }

  uuid = [(_CPStartLocalSearchFeedback *)self uuid];
  if (uuid)
  {
    v14 = uuid;
    uuid2 = [(_CPStartLocalSearchFeedback *)self uuid];
    uuid3 = [equalCopy uuid];
    v17 = [uuid2 isEqual:uuid3];

    if (!v17)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  triggerEvent = self->_triggerEvent;
  if (triggerEvent != [equalCopy triggerEvent])
  {
    goto LABEL_32;
  }

  queryId = self->_queryId;
  if (queryId != [equalCopy queryId])
  {
    goto LABEL_32;
  }

  indexType = self->_indexType;
  if (indexType != [equalCopy indexType])
  {
    goto LABEL_32;
  }

  searchType = self->_searchType;
  if (searchType != [equalCopy searchType])
  {
    goto LABEL_32;
  }

  input = [(_CPStartLocalSearchFeedback *)self originatingApp];
  input2 = [equalCopy originatingApp];
  if ((input != 0) == (input2 == 0))
  {
    goto LABEL_31;
  }

  originatingApp = [(_CPStartLocalSearchFeedback *)self originatingApp];
  if (originatingApp)
  {
    v23 = originatingApp;
    originatingApp2 = [(_CPStartLocalSearchFeedback *)self originatingApp];
    originatingApp3 = [equalCopy originatingApp];
    v26 = [originatingApp2 isEqual:originatingApp3];

    if (!v26)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  input = [(_CPStartLocalSearchFeedback *)self entityQueryCommand];
  input2 = [equalCopy entityQueryCommand];
  if ((input != 0) == (input2 == 0))
  {
    goto LABEL_31;
  }

  entityQueryCommand = [(_CPStartLocalSearchFeedback *)self entityQueryCommand];
  if (entityQueryCommand)
  {
    v28 = entityQueryCommand;
    entityQueryCommand2 = [(_CPStartLocalSearchFeedback *)self entityQueryCommand];
    entityQueryCommand3 = [equalCopy entityQueryCommand];
    v31 = [entityQueryCommand2 isEqual:entityQueryCommand3];

    if (!v31)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  input = [(_CPStartLocalSearchFeedback *)self indexState];
  input2 = [equalCopy indexState];
  if ((input != 0) == (input2 == 0))
  {
LABEL_31:

    goto LABEL_32;
  }

  indexState = [(_CPStartLocalSearchFeedback *)self indexState];
  if (indexState)
  {
    v33 = indexState;
    indexState2 = [(_CPStartLocalSearchFeedback *)self indexState];
    indexState3 = [equalCopy indexState];
    v36 = [indexState2 isEqual:indexState3];

    if (!v36)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  coreSpotlightIndexUsed = self->_coreSpotlightIndexUsed;
  if (coreSpotlightIndexUsed == [equalCopy coreSpotlightIndexUsed])
  {
    isPhotosScopedSearch = self->_isPhotosScopedSearch;
    if (isPhotosScopedSearch == [equalCopy isPhotosScopedSearch])
    {
      isSemanticSearchEligible = self->_isSemanticSearchEligible;
      if (isSemanticSearchEligible == [equalCopy isSemanticSearchEligible])
      {
        spotlightInitialPageType = self->_spotlightInitialPageType;
        if (spotlightInitialPageType == [equalCopy spotlightInitialPageType])
        {
          spotlightBrowsingSearchScope = self->_spotlightBrowsingSearchScope;
          v37 = spotlightBrowsingSearchScope == [equalCopy spotlightBrowsingSearchScope];
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

- (void)writeTo:(id)to
{
  to;
  if ([(_CPStartLocalSearchFeedback *)self timestamp])
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  input = [(_CPStartLocalSearchFeedback *)self input];

  if (input)
  {
    input = self->_input;
    PBDataWriterWriteStringField();
  }

  uuid = [(_CPStartLocalSearchFeedback *)self uuid];

  if (uuid)
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

  originatingApp = [(_CPStartLocalSearchFeedback *)self originatingApp];

  if (originatingApp)
  {
    originatingApp = self->_originatingApp;
    PBDataWriterWriteStringField();
  }

  entityQueryCommand = [(_CPStartLocalSearchFeedback *)self entityQueryCommand];

  if (entityQueryCommand)
  {
    entityQueryCommand2 = [(_CPStartLocalSearchFeedback *)self entityQueryCommand];
    PBDataWriterWriteSubmessage();
  }

  indexState = [(_CPStartLocalSearchFeedback *)self indexState];

  if (indexState)
  {
    indexState2 = [(_CPStartLocalSearchFeedback *)self indexState];
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

- (_CPStartLocalSearchFeedback)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v22.receiver = self;
  v22.super_class = _CPStartLocalSearchFeedback;
  v5 = [(_CPStartLocalSearchFeedback *)&v22 init];
  if (v5)
  {
    -[_CPStartLocalSearchFeedback setTimestamp:](v5, "setTimestamp:", [facadeCopy timestamp]);
    input = [facadeCopy input];

    if (input)
    {
      input2 = [facadeCopy input];
      [(_CPStartLocalSearchFeedback *)v5 setInput:input2];
    }

    uuid = [facadeCopy uuid];

    if (uuid)
    {
      uuid2 = [facadeCopy uuid];
      [(_CPStartLocalSearchFeedback *)v5 setUuid:uuid2];
    }

    -[_CPStartLocalSearchFeedback setTriggerEvent:](v5, "setTriggerEvent:", [facadeCopy triggerEvent]);
    -[_CPStartLocalSearchFeedback setQueryId:](v5, "setQueryId:", [facadeCopy queryId]);
    -[_CPStartLocalSearchFeedback setIndexType:](v5, "setIndexType:", [facadeCopy indexType]);
    -[_CPStartLocalSearchFeedback setSearchType:](v5, "setSearchType:", [facadeCopy searchType]);
    originatingApp = [facadeCopy originatingApp];

    if (originatingApp)
    {
      originatingApp2 = [facadeCopy originatingApp];
      [(_CPStartLocalSearchFeedback *)v5 setOriginatingApp:originatingApp2];
    }

    entityQueryCommand = [facadeCopy entityQueryCommand];

    if (entityQueryCommand)
    {
      v13 = [_CPPerformEntityQueryCommandForFeedback alloc];
      entityQueryCommand2 = [facadeCopy entityQueryCommand];
      v15 = [(_CPPerformEntityQueryCommandForFeedback *)v13 initWithFacade:entityQueryCommand2];
      [(_CPStartLocalSearchFeedback *)v5 setEntityQueryCommand:v15];
    }

    indexState = [facadeCopy indexState];

    if (indexState)
    {
      v17 = [_CPIndexStateForFeedback alloc];
      indexState2 = [facadeCopy indexState];
      v19 = [(_CPIndexStateForFeedback *)v17 initWithFacade:indexState2];
      [(_CPStartLocalSearchFeedback *)v5 setIndexState:v19];
    }

    -[_CPStartLocalSearchFeedback setCoreSpotlightIndexUsed:](v5, "setCoreSpotlightIndexUsed:", [facadeCopy coreSpotlightIndexUsed]);
    -[_CPStartLocalSearchFeedback setIsPhotosScopedSearch:](v5, "setIsPhotosScopedSearch:", [facadeCopy isPhotosScopedSearch]);
    -[_CPStartLocalSearchFeedback setIsSemanticSearchEligible:](v5, "setIsSemanticSearchEligible:", [facadeCopy isSemanticSearchEligible]);
    -[_CPStartLocalSearchFeedback setSpotlightInitialPageType:](v5, "setSpotlightInitialPageType:", [facadeCopy spotlightInitialPageType]);
    -[_CPStartLocalSearchFeedback setSpotlightBrowsingSearchScope:](v5, "setSpotlightBrowsingSearchScope:", [facadeCopy spotlightBrowsingSearchScope]);
    v20 = v5;
  }

  return v5;
}

@end