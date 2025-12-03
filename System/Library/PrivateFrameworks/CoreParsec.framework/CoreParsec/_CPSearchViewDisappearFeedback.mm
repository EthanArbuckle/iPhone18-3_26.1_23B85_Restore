@interface _CPSearchViewDisappearFeedback
- (BOOL)isEqual:(id)equal;
- (_CPSearchViewDisappearFeedback)init;
- (_CPSearchViewDisappearFeedback)initWithFacade:(id)facade;
- (void)writeTo:(id)to;
@end

@implementation _CPSearchViewDisappearFeedback

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && (timestamp = self->_timestamp, timestamp == objc_msgSend(equalCopy, "timestamp")))
  {
    viewDisappearEvent = self->_viewDisappearEvent;
    v7 = viewDisappearEvent == [equalCopy viewDisappearEvent];
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
  if ([(_CPSearchViewDisappearFeedback *)self timestamp])
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  if ([(_CPSearchViewDisappearFeedback *)self viewDisappearEvent])
  {
    viewDisappearEvent = self->_viewDisappearEvent;
    PBDataWriterWriteInt32Field();
  }
}

- (_CPSearchViewDisappearFeedback)init
{
  v5.receiver = self;
  v5.super_class = _CPSearchViewDisappearFeedback;
  v2 = [(_CPSearchViewDisappearFeedback *)&v5 init];
  if (v2)
  {
    [(_CPSearchViewDisappearFeedback *)v2 setTimestamp:mach_absolute_time()];
    v3 = v2;
  }

  return v2;
}

- (_CPSearchViewDisappearFeedback)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v8.receiver = self;
  v8.super_class = _CPSearchViewDisappearFeedback;
  v5 = [(_CPSearchViewDisappearFeedback *)&v8 init];
  if (v5)
  {
    -[_CPSearchViewDisappearFeedback setTimestamp:](v5, "setTimestamp:", [facadeCopy timestamp]);
    -[_CPSearchViewDisappearFeedback setViewDisappearEvent:](v5, "setViewDisappearEvent:", [facadeCopy viewDisappearEvent]);
    v6 = v5;
  }

  return v5;
}

@end