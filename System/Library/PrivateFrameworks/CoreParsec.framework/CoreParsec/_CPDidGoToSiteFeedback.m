@interface _CPDidGoToSiteFeedback
- (BOOL)isEqual:(id)a3;
- (_CPDidGoToSiteFeedback)init;
- (_CPDidGoToSiteFeedback)initWithFacade:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _CPDidGoToSiteFeedback

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    timestamp = self->_timestamp;
    if (timestamp == [v4 timestamp])
    {
      v6 = [(_CPDidGoToSiteFeedback *)self input];
      v7 = [v4 input];
      v8 = v7;
      if ((v6 != 0) != (v7 == 0))
      {
        v9 = [(_CPDidGoToSiteFeedback *)self input];
        if (!v9)
        {

LABEL_11:
          triggerEvent = self->_triggerEvent;
          v14 = triggerEvent == [v4 triggerEvent];
          goto LABEL_9;
        }

        v10 = v9;
        v11 = [(_CPDidGoToSiteFeedback *)self input];
        v12 = [v4 input];
        v13 = [v11 isEqual:v12];

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

- (void)writeTo:(id)a3
{
  a3;
  if ([(_CPDidGoToSiteFeedback *)self timestamp])
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  v5 = [(_CPDidGoToSiteFeedback *)self input];

  if (v5)
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

- (_CPDidGoToSiteFeedback)initWithFacade:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = _CPDidGoToSiteFeedback;
  v5 = [(_CPDidGoToSiteFeedback *)&v10 init];
  if (v5)
  {
    -[_CPDidGoToSiteFeedback setTimestamp:](v5, "setTimestamp:", [v4 timestamp]);
    v6 = [v4 input];

    if (v6)
    {
      v7 = [v4 input];
      [(_CPDidGoToSiteFeedback *)v5 setInput:v7];
    }

    -[_CPDidGoToSiteFeedback setTriggerEvent:](v5, "setTriggerEvent:", [v4 triggerEvent]);
    v8 = v5;
  }

  return v5;
}

@end