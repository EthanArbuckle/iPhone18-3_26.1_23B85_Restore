@interface _CPStartSearchFeedback
- (BOOL)isEqual:(id)a3;
- (_CPStartSearchFeedback)init;
- (_CPStartSearchFeedback)initWithFacade:(id)a3;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation _CPStartSearchFeedback

- (unint64_t)hash
{
  v3 = 2654435761u * self->_timestamp;
  v4 = [(NSString *)self->_input hash];
  return v4 ^ [(NSString *)self->_uuid hash]^ v3 ^ (2654435761 * self->_triggerEvent) ^ (2654435761u * self->_queryId) ^ (2654435761 * self->_searchType);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  timestamp = self->_timestamp;
  if (timestamp != [v4 timestamp])
  {
    goto LABEL_13;
  }

  v6 = [(_CPStartSearchFeedback *)self input];
  v7 = [v4 input];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_12;
  }

  v8 = [(_CPStartSearchFeedback *)self input];
  if (v8)
  {
    v9 = v8;
    v10 = [(_CPStartSearchFeedback *)self input];
    v11 = [v4 input];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_13;
    }
  }

  else
  {
  }

  v6 = [(_CPStartSearchFeedback *)self uuid];
  v7 = [v4 uuid];
  if ((v6 != 0) == (v7 == 0))
  {
LABEL_12:

    goto LABEL_13;
  }

  v13 = [(_CPStartSearchFeedback *)self uuid];
  if (v13)
  {
    v14 = v13;
    v15 = [(_CPStartSearchFeedback *)self uuid];
    v16 = [v4 uuid];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_13;
    }
  }

  else
  {
  }

  triggerEvent = self->_triggerEvent;
  if (triggerEvent == [v4 triggerEvent])
  {
    queryId = self->_queryId;
    if (queryId == [v4 queryId])
    {
      searchType = self->_searchType;
      v18 = searchType == [v4 searchType];
      goto LABEL_14;
    }
  }

LABEL_13:
  v18 = 0;
LABEL_14:

  return v18;
}

- (void)writeTo:(id)a3
{
  a3;
  if ([(_CPStartSearchFeedback *)self timestamp])
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  v5 = [(_CPStartSearchFeedback *)self input];

  if (v5)
  {
    input = self->_input;
    PBDataWriterWriteStringField();
  }

  v7 = [(_CPStartSearchFeedback *)self uuid];

  if (v7)
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

- (_CPStartSearchFeedback)initWithFacade:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = _CPStartSearchFeedback;
  v5 = [(_CPStartSearchFeedback *)&v12 init];
  if (v5)
  {
    -[_CPStartSearchFeedback setTimestamp:](v5, "setTimestamp:", [v4 timestamp]);
    v6 = [v4 input];

    if (v6)
    {
      v7 = [v4 input];
      [(_CPStartSearchFeedback *)v5 setInput:v7];
    }

    v8 = [v4 uuid];

    if (v8)
    {
      v9 = [v4 uuid];
      [(_CPStartSearchFeedback *)v5 setUuid:v9];
    }

    -[_CPStartSearchFeedback setTriggerEvent:](v5, "setTriggerEvent:", [v4 triggerEvent]);
    -[_CPStartSearchFeedback setQueryId:](v5, "setQueryId:", [v4 queryId]);
    -[_CPStartSearchFeedback setSearchType:](v5, "setSearchType:", [v4 searchType]);
    v10 = v5;
  }

  return v5;
}

@end