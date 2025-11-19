@interface _CPSearchViewDisappearFeedback
- (BOOL)isEqual:(id)a3;
- (_CPSearchViewDisappearFeedback)init;
- (_CPSearchViewDisappearFeedback)initWithFacade:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _CPSearchViewDisappearFeedback

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && (timestamp = self->_timestamp, timestamp == objc_msgSend(v4, "timestamp")))
  {
    viewDisappearEvent = self->_viewDisappearEvent;
    v7 = viewDisappearEvent == [v4 viewDisappearEvent];
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

- (_CPSearchViewDisappearFeedback)initWithFacade:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _CPSearchViewDisappearFeedback;
  v5 = [(_CPSearchViewDisappearFeedback *)&v8 init];
  if (v5)
  {
    -[_CPSearchViewDisappearFeedback setTimestamp:](v5, "setTimestamp:", [v4 timestamp]);
    -[_CPSearchViewDisappearFeedback setViewDisappearEvent:](v5, "setViewDisappearEvent:", [v4 viewDisappearEvent]);
    v6 = v5;
  }

  return v5;
}

@end