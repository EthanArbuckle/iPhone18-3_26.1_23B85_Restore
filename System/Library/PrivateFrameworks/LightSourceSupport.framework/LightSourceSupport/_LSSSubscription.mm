@interface _LSSSubscription
- (_LSSSubscription)init;
- (id)lightSourceForTargetTime:(double)time;
- (void)dealloc;
- (void)invalidate;
@end

@implementation _LSSSubscription

- (_LSSSubscription)init
{
  v3.receiver = self;
  v3.super_class = _LSSSubscription;
  return [(_LSSSubscription *)&v3 init];
}

- (id)lightSourceForTargetTime:(double)time
{
  subscriber = self->_subscriber;
  if (subscriber)
  {
    client = [subscriber client];
    if (!client)
    {
      [_LSSSubscription lightSourceForTargetTime:];
    }

    subscriber = [(LSSSubscriber *)self->_subscriber lightSourceForTime:time];
  }

  return subscriber;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = _LSSSubscription;
  [(_LSSSubscription *)&v2 dealloc];
}

- (void)invalidate
{
  [(LSSSubscriber *)self->_subscriber unsubscribe:self];
  subscriber = self->_subscriber;
  self->_subscriber = 0;
}

@end