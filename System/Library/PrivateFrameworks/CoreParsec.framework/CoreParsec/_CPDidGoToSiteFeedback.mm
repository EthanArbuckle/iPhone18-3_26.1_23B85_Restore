@interface _CPDidGoToSiteFeedback
- (BOOL)isEqual:(id)equal;
- (_CPDidGoToSiteFeedback)init;
- (_CPDidGoToSiteFeedback)initWithFacade:(id)facade;
- (void)writeTo:(id)to;
@end

@implementation _CPDidGoToSiteFeedback

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    timestamp = self->_timestamp;
    if (timestamp == [equalCopy timestamp])
    {
      input = [(_CPDidGoToSiteFeedback *)self input];
      input2 = [equalCopy input];
      v8 = input2;
      if ((input != 0) != (input2 == 0))
      {
        input3 = [(_CPDidGoToSiteFeedback *)self input];
        if (!input3)
        {

LABEL_11:
          triggerEvent = self->_triggerEvent;
          v14 = triggerEvent == [equalCopy triggerEvent];
          goto LABEL_9;
        }

        v10 = input3;
        input4 = [(_CPDidGoToSiteFeedback *)self input];
        input5 = [equalCopy input];
        v13 = [input4 isEqual:input5];

        if (v13)
        {
          goto LABEL_11;
        }
      }

      else
      {
      }
    }
  }

  v14 = 0;
LABEL_9:

  return v14;
}

- (void)writeTo:(id)to
{
  to;
  if ([(_CPDidGoToSiteFeedback *)self timestamp])
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  input = [(_CPDidGoToSiteFeedback *)self input];

  if (input)
  {
    input = self->_input;
    PBDataWriterWriteStringField();
  }

  if ([(_CPDidGoToSiteFeedback *)self triggerEvent])
  {
    triggerEvent = self->_triggerEvent;
    PBDataWriterWriteInt32Field();
  }

  MEMORY[0x1EEE66BE0]();
}

- (_CPDidGoToSiteFeedback)init
{
  v5.receiver = self;
  v5.super_class = _CPDidGoToSiteFeedback;
  v2 = [(_CPDidGoToSiteFeedback *)&v5 init];
  if (v2)
  {
    [(_CPDidGoToSiteFeedback *)v2 setTimestamp:mach_absolute_time()];
    v3 = v2;
  }

  return v2;
}

- (_CPDidGoToSiteFeedback)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v10.receiver = self;
  v10.super_class = _CPDidGoToSiteFeedback;
  v5 = [(_CPDidGoToSiteFeedback *)&v10 init];
  if (v5)
  {
    -[_CPDidGoToSiteFeedback setTimestamp:](v5, "setTimestamp:", [facadeCopy timestamp]);
    input = [facadeCopy input];

    if (input)
    {
      input2 = [facadeCopy input];
      [(_CPDidGoToSiteFeedback *)v5 setInput:input2];
    }

    -[_CPDidGoToSiteFeedback setTriggerEvent:](v5, "setTriggerEvent:", [facadeCopy triggerEvent]);
    v8 = v5;
  }

  return v5;
}

@end