@interface _CPDidGoToSearchFeedback
- (BOOL)isEqual:(id)equal;
- (_CPDidGoToSearchFeedback)init;
- (_CPDidGoToSearchFeedback)initWithFacade:(id)facade;
- (void)writeTo:(id)to;
@end

@implementation _CPDidGoToSearchFeedback

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  timestamp = self->_timestamp;
  if (timestamp != [equalCopy timestamp])
  {
    goto LABEL_11;
  }

  input = [(_CPDidGoToSearchFeedback *)self input];
  input2 = [equalCopy input];
  v8 = input2;
  if ((input != 0) == (input2 == 0))
  {

    goto LABEL_11;
  }

  input3 = [(_CPDidGoToSearchFeedback *)self input];
  if (input3)
  {
    v10 = input3;
    input4 = [(_CPDidGoToSearchFeedback *)self input];
    input5 = [equalCopy input];
    v13 = [input4 isEqual:input5];

    if (!v13)
    {
      goto LABEL_11;
    }
  }

  else
  {
  }

  endpoint = self->_endpoint;
  if (endpoint != [equalCopy endpoint])
  {
LABEL_11:
    v16 = 0;
    goto LABEL_12;
  }

  triggerEvent = self->_triggerEvent;
  v16 = triggerEvent == [equalCopy triggerEvent];
LABEL_12:

  return v16;
}

- (void)writeTo:(id)to
{
  to;
  if ([(_CPDidGoToSearchFeedback *)self timestamp])
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  input = [(_CPDidGoToSearchFeedback *)self input];

  if (input)
  {
    input = self->_input;
    PBDataWriterWriteStringField();
  }

  if ([(_CPDidGoToSearchFeedback *)self endpoint])
  {
    endpoint = self->_endpoint;
    PBDataWriterWriteInt32Field();
  }

  if ([(_CPDidGoToSearchFeedback *)self triggerEvent])
  {
    triggerEvent = self->_triggerEvent;
    PBDataWriterWriteInt32Field();
  }

  MEMORY[0x1EEE66BE0]();
}

- (_CPDidGoToSearchFeedback)init
{
  v5.receiver = self;
  v5.super_class = _CPDidGoToSearchFeedback;
  v2 = [(_CPDidGoToSearchFeedback *)&v5 init];
  if (v2)
  {
    [(_CPDidGoToSearchFeedback *)v2 setTimestamp:mach_absolute_time()];
    v3 = v2;
  }

  return v2;
}

- (_CPDidGoToSearchFeedback)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v10.receiver = self;
  v10.super_class = _CPDidGoToSearchFeedback;
  v5 = [(_CPDidGoToSearchFeedback *)&v10 init];
  if (v5)
  {
    -[_CPDidGoToSearchFeedback setTimestamp:](v5, "setTimestamp:", [facadeCopy timestamp]);
    input = [facadeCopy input];

    if (input)
    {
      input2 = [facadeCopy input];
      [(_CPDidGoToSearchFeedback *)v5 setInput:input2];
    }

    -[_CPDidGoToSearchFeedback setEndpoint:](v5, "setEndpoint:", [facadeCopy endpoint]);
    -[_CPDidGoToSearchFeedback setTriggerEvent:](v5, "setTriggerEvent:", [facadeCopy triggerEvent]);
    v8 = v5;
  }

  return v5;
}

@end