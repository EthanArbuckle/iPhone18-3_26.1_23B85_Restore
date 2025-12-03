@interface _CPClientTimingFeedback
- (BOOL)isEqual:(id)equal;
- (_CPClientTimingFeedback)init;
- (_CPClientTimingFeedback)initWithFacade:(id)facade;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation _CPClientTimingFeedback

- (unint64_t)hash
{
  v3 = 2654435761u * self->_timestamp;
  v4 = [(NSString *)self->_input hash];
  return v4 ^ [(NSString *)self->_eventName hash]^ v3 ^ (2654435761u * self->_queryId) ^ (2654435761u * self->_nanosecondInterval);
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

  input = [(_CPClientTimingFeedback *)self input];
  input2 = [equalCopy input];
  if ((input != 0) == (input2 == 0))
  {
    goto LABEL_12;
  }

  input3 = [(_CPClientTimingFeedback *)self input];
  if (input3)
  {
    v9 = input3;
    input4 = [(_CPClientTimingFeedback *)self input];
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

  input = [(_CPClientTimingFeedback *)self eventName];
  input2 = [equalCopy eventName];
  if ((input != 0) == (input2 == 0))
  {
LABEL_12:

    goto LABEL_13;
  }

  eventName = [(_CPClientTimingFeedback *)self eventName];
  if (eventName)
  {
    v14 = eventName;
    eventName2 = [(_CPClientTimingFeedback *)self eventName];
    eventName3 = [equalCopy eventName];
    v17 = [eventName2 isEqual:eventName3];

    if (!v17)
    {
      goto LABEL_13;
    }
  }

  else
  {
  }

  queryId = self->_queryId;
  if (queryId == [equalCopy queryId])
  {
    nanosecondInterval = self->_nanosecondInterval;
    v18 = nanosecondInterval == [equalCopy nanosecondInterval];
    goto LABEL_14;
  }

LABEL_13:
  v18 = 0;
LABEL_14:

  return v18;
}

- (void)writeTo:(id)to
{
  to;
  if ([(_CPClientTimingFeedback *)self timestamp])
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  input = [(_CPClientTimingFeedback *)self input];

  if (input)
  {
    input = self->_input;
    PBDataWriterWriteStringField();
  }

  eventName = [(_CPClientTimingFeedback *)self eventName];

  if (eventName)
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

- (_CPClientTimingFeedback)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v12.receiver = self;
  v12.super_class = _CPClientTimingFeedback;
  v5 = [(_CPClientTimingFeedback *)&v12 init];
  if (v5)
  {
    -[_CPClientTimingFeedback setTimestamp:](v5, "setTimestamp:", [facadeCopy timestamp]);
    input = [facadeCopy input];

    if (input)
    {
      input2 = [facadeCopy input];
      [(_CPClientTimingFeedback *)v5 setInput:input2];
    }

    eventName = [facadeCopy eventName];

    if (eventName)
    {
      eventName2 = [facadeCopy eventName];
      [(_CPClientTimingFeedback *)v5 setEventName:eventName2];
    }

    -[_CPClientTimingFeedback setQueryId:](v5, "setQueryId:", [facadeCopy queryId]);
    -[_CPClientTimingFeedback setNanosecondInterval:](v5, "setNanosecondInterval:", [facadeCopy nanosecondInterval]);
    v10 = v5;
  }

  return v5;
}

@end