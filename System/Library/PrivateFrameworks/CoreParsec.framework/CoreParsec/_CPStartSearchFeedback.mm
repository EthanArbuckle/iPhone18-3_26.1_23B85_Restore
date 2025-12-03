@interface _CPStartSearchFeedback
- (BOOL)isEqual:(id)equal;
- (_CPStartSearchFeedback)init;
- (_CPStartSearchFeedback)initWithFacade:(id)facade;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation _CPStartSearchFeedback

- (unint64_t)hash
{
  v3 = 2654435761u * self->_timestamp;
  v4 = [(NSString *)self->_input hash];
  return v4 ^ [(NSString *)self->_uuid hash]^ v3 ^ (2654435761 * self->_triggerEvent) ^ (2654435761u * self->_queryId) ^ (2654435761 * self->_searchType);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  timestamp = self->_timestamp;
  if (timestamp != [equalCopy timestamp])
  {
    goto LABEL_13;
  }

  input = [(_CPStartSearchFeedback *)self input];
  input2 = [equalCopy input];
  if ((input != 0) == (input2 == 0))
  {
    goto LABEL_12;
  }

  input3 = [(_CPStartSearchFeedback *)self input];
  if (input3)
  {
    v9 = input3;
    input4 = [(_CPStartSearchFeedback *)self input];
    input5 = [equalCopy input];
    v12 = [input4 isEqual:input5];

    if (!v12)
    {
      goto LABEL_13;
    }
  }

  else
  {
  }

  input = [(_CPStartSearchFeedback *)self uuid];
  input2 = [equalCopy uuid];
  if ((input != 0) == (input2 == 0))
  {
LABEL_12:

    goto LABEL_13;
  }

  uuid = [(_CPStartSearchFeedback *)self uuid];
  if (uuid)
  {
    v14 = uuid;
    uuid2 = [(_CPStartSearchFeedback *)self uuid];
    uuid3 = [equalCopy uuid];
    v17 = [uuid2 isEqual:uuid3];

    if (!v17)
    {
      goto LABEL_13;
    }
  }

  else
  {
  }

  triggerEvent = self->_triggerEvent;
  if (triggerEvent == [equalCopy triggerEvent])
  {
    queryId = self->_queryId;
    if (queryId == [equalCopy queryId])
    {
      searchType = self->_searchType;
      v18 = searchType == [equalCopy searchType];
      goto LABEL_14;
    }
  }

LABEL_13:
  v18 = 0;
LABEL_14:

  return v18;
}

- (void)writeTo:(id)to
{
  to;
  if ([(_CPStartSearchFeedback *)self timestamp])
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  input = [(_CPStartSearchFeedback *)self input];

  if (input)
  {
    input = self->_input;
    PBDataWriterWriteStringField();
  }

  uuid = [(_CPStartSearchFeedback *)self uuid];

  if (uuid)
  {
    uuid = self->_uuid;
    PBDataWriterWriteStringField();
  }

  if ([(_CPStartSearchFeedback *)self triggerEvent])
  {
    triggerEvent = self->_triggerEvent;
    PBDataWriterWriteInt32Field();
  }

  if ([(_CPStartSearchFeedback *)self queryId])
  {
    queryId = self->_queryId;
    PBDataWriterWriteUint64Field();
  }

  if ([(_CPStartSearchFeedback *)self searchType])
  {
    searchType = self->_searchType;
    PBDataWriterWriteInt32Field();
  }

  MEMORY[0x1EEE66BE0]();
}

- (_CPStartSearchFeedback)init
{
  v5.receiver = self;
  v5.super_class = _CPStartSearchFeedback;
  v2 = [(_CPStartSearchFeedback *)&v5 init];
  if (v2)
  {
    [(_CPStartSearchFeedback *)v2 setTimestamp:mach_absolute_time()];
    v3 = v2;
  }

  return v2;
}

- (_CPStartSearchFeedback)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v12.receiver = self;
  v12.super_class = _CPStartSearchFeedback;
  v5 = [(_CPStartSearchFeedback *)&v12 init];
  if (v5)
  {
    -[_CPStartSearchFeedback setTimestamp:](v5, "setTimestamp:", [facadeCopy timestamp]);
    input = [facadeCopy input];

    if (input)
    {
      input2 = [facadeCopy input];
      [(_CPStartSearchFeedback *)v5 setInput:input2];
    }

    uuid = [facadeCopy uuid];

    if (uuid)
    {
      uuid2 = [facadeCopy uuid];
      [(_CPStartSearchFeedback *)v5 setUuid:uuid2];
    }

    -[_CPStartSearchFeedback setTriggerEvent:](v5, "setTriggerEvent:", [facadeCopy triggerEvent]);
    -[_CPStartSearchFeedback setQueryId:](v5, "setQueryId:", [facadeCopy queryId]);
    -[_CPStartSearchFeedback setSearchType:](v5, "setSearchType:", [facadeCopy searchType]);
    v10 = v5;
  }

  return v5;
}

@end