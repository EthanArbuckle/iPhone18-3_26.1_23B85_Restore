@interface _CPClientTimingFeedback
- (BOOL)isEqual:(id)a3;
- (_CPClientTimingFeedback)init;
- (_CPClientTimingFeedback)initWithFacade:(id)a3;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation _CPClientTimingFeedback

- (unint64_t)hash
{
  v3 = 2654435761u * self->_timestamp;
  v4 = [(NSString *)self->_input hash];
  return v4 ^ [(NSString *)self->_eventName hash]^ v3 ^ (2654435761u * self->_queryId) ^ (2654435761u * self->_nanosecondInterval);
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

  v6 = [(_CPClientTimingFeedback *)self input];
  v7 = [v4 input];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_12;
  }

  v8 = [(_CPClientTimingFeedback *)self input];
  if (v8)
  {
    v9 = v8;
    v10 = [(_CPClientTimingFeedback *)self input];
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

  v6 = [(_CPClientTimingFeedback *)self eventName];
  v7 = [v4 eventName];
  if ((v6 != 0) == (v7 == 0))
  {
LABEL_12:

    goto LABEL_13;
  }

  v13 = [(_CPClientTimingFeedback *)self eventName];
  if (v13)
  {
    v14 = v13;
    v15 = [(_CPClientTimingFeedback *)self eventName];
    v16 = [v4 eventName];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_13;
    }
  }

  else
  {
  }

  queryId = self->_queryId;
  if (queryId == [v4 queryId])
  {
    nanosecondInterval = self->_nanosecondInterval;
    v18 = nanosecondInterval == [v4 nanosecondInterval];
    goto LABEL_14;
  }

LABEL_13:
  v18 = 0;
LABEL_14:

  return v18;
}

- (void)writeTo:(id)a3
{
  a3;
  if ([(_CPClientTimingFeedback *)self timestamp])
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  v5 = [(_CPClientTimingFeedback *)self input];

  if (v5)
  {
    input = self->_input;
    PBDataWriterWriteStringField();
  }

  v7 = [(_CPClientTimingFeedback *)self eventName];

  if (v7)
  {
    eventName = self->_eventName;
    PBDataWriterWriteStringField();
  }

  if ([(_CPClientTimingFeedback *)self queryId])
  {
    queryId = self->_queryId;
    PBDataWriterWriteUint64Field();
  }

  if ([(_CPClientTimingFeedback *)self nanosecondInterval])
  {
    nanosecondInterval = self->_nanosecondInterval;
    PBDataWriterWriteUint64Field();
  }

  MEMORY[0x1EEE66BE0]();
}

- (_CPClientTimingFeedback)init
{
  v5.receiver = self;
  v5.super_class = _CPClientTimingFeedback;
  v2 = [(_CPClientTimingFeedback *)&v5 init];
  if (v2)
  {
    [(_CPClientTimingFeedback *)v2 setTimestamp:mach_absolute_time()];
    v3 = v2;
  }

  return v2;
}

- (_CPClientTimingFeedback)initWithFacade:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = _CPClientTimingFeedback;
  v5 = [(_CPClientTimingFeedback *)&v12 init];
  if (v5)
  {
    -[_CPClientTimingFeedback setTimestamp:](v5, "setTimestamp:", [v4 timestamp]);
    v6 = [v4 input];

    if (v6)
    {
      v7 = [v4 input];
      [(_CPClientTimingFeedback *)v5 setInput:v7];
    }

    v8 = [v4 eventName];

    if (v8)
    {
      v9 = [v4 eventName];
      [(_CPClientTimingFeedback *)v5 setEventName:v9];
    }

    -[_CPClientTimingFeedback setQueryId:](v5, "setQueryId:", [v4 queryId]);
    -[_CPClientTimingFeedback setNanosecondInterval:](v5, "setNanosecondInterval:", [v4 nanosecondInterval]);
    v10 = v5;
  }

  return v5;
}

@end