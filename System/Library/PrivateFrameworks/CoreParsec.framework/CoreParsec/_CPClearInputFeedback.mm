@interface _CPClearInputFeedback
- (BOOL)isEqual:(id)equal;
- (_CPClearInputFeedback)init;
- (_CPClearInputFeedback)initWithFacade:(id)facade;
- (void)writeTo:(id)to;
@end

@implementation _CPClearInputFeedback

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && (timestamp = self->_timestamp, timestamp == objc_msgSend(equalCopy, "timestamp")))
  {
    triggerEvent = self->_triggerEvent;
    v7 = triggerEvent == [equalCopy triggerEvent];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)writeTo:(id)to
{
  toCopy = to;
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

- (_CPClearInputFeedback)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v8.receiver = self;
  v8.super_class = _CPClearInputFeedback;
  v5 = [(_CPClearInputFeedback *)&v8 init];
  if (v5)
  {
    -[_CPClearInputFeedback setTimestamp:](v5, "setTimestamp:", [facadeCopy timestamp]);
    -[_CPClearInputFeedback setTriggerEvent:](v5, "setTriggerEvent:", [facadeCopy triggerEvent]);
    v6 = v5;
  }

  return v5;
}

@end