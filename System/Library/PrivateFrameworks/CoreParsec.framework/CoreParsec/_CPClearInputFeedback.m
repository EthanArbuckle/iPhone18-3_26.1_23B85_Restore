@interface _CPClearInputFeedback
- (BOOL)isEqual:(id)a3;
- (_CPClearInputFeedback)init;
- (_CPClearInputFeedback)initWithFacade:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _CPClearInputFeedback

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && (timestamp = self->_timestamp, timestamp == objc_msgSend(v4, "timestamp")))
  {
    triggerEvent = self->_triggerEvent;
    v7 = triggerEvent == [v4 triggerEvent];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)writeTo:(id)a3
{
  v6 = a3;
  if ([(_CPClearInputFeedback *)self timestamp])
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  if ([(_CPClearInputFeedback *)self triggerEvent])
  {
    triggerEvent = self->_triggerEvent;
    PBDataWriterWriteInt32Field();
  }
}

- (_CPClearInputFeedback)init
{
  v5.receiver = self;
  v5.super_class = _CPClearInputFeedback;
  v2 = [(_CPClearInputFeedback *)&v5 init];
  if (v2)
  {
    [(_CPClearInputFeedback *)v2 setTimestamp:mach_absolute_time()];
    v3 = v2;
  }

  return v2;
}

- (_CPClearInputFeedback)initWithFacade:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _CPClearInputFeedback;
  v5 = [(_CPClearInputFeedback *)&v8 init];
  if (v5)
  {
    -[_CPClearInputFeedback setTimestamp:](v5, "setTimestamp:", [v4 timestamp]);
    -[_CPClearInputFeedback setTriggerEvent:](v5, "setTriggerEvent:", [v4 triggerEvent]);
    v6 = v5;
  }

  return v5;
}

@end