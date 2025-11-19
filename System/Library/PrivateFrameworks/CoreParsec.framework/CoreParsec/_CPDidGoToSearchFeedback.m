@interface _CPDidGoToSearchFeedback
- (BOOL)isEqual:(id)a3;
- (_CPDidGoToSearchFeedback)init;
- (_CPDidGoToSearchFeedback)initWithFacade:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _CPDidGoToSearchFeedback

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  timestamp = self->_timestamp;
  if (timestamp != [v4 timestamp])
  {
    goto LABEL_11;
  }

  v6 = [(_CPDidGoToSearchFeedback *)self input];
  v7 = [v4 input];
  v8 = v7;
  if ((v6 != 0) == (v7 == 0))
  {

    goto LABEL_11;
  }

  v9 = [(_CPDidGoToSearchFeedback *)self input];
  if (v9)
  {
    v10 = v9;
    v11 = [(_CPDidGoToSearchFeedback *)self input];
    v12 = [v4 input];
    v13 = [v11 isEqual:v12];

    if (!v13)
    {
      goto LABEL_11;
    }
  }

  else
  {
  }

  endpoint = self->_endpoint;
  if (endpoint != [v4 endpoint])
  {
LABEL_11:
    v16 = 0;
    goto LABEL_12;
  }

  triggerEvent = self->_triggerEvent;
  v16 = triggerEvent == [v4 triggerEvent];
LABEL_12:

  return v16;
}

- (void)writeTo:(id)a3
{
  a3;
  if ([(_CPDidGoToSearchFeedback *)self timestamp])
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  v5 = [(_CPDidGoToSearchFeedback *)self input];

  if (v5)
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

- (_CPDidGoToSearchFeedback)initWithFacade:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = _CPDidGoToSearchFeedback;
  v5 = [(_CPDidGoToSearchFeedback *)&v10 init];
  if (v5)
  {
    -[_CPDidGoToSearchFeedback setTimestamp:](v5, "setTimestamp:", [v4 timestamp]);
    v6 = [v4 input];

    if (v6)
    {
      v7 = [v4 input];
      [(_CPDidGoToSearchFeedback *)v5 setInput:v7];
    }

    -[_CPDidGoToSearchFeedback setEndpoint:](v5, "setEndpoint:", [v4 endpoint]);
    -[_CPDidGoToSearchFeedback setTriggerEvent:](v5, "setTriggerEvent:", [v4 triggerEvent]);
    v8 = v5;
  }

  return v5;
}

@end