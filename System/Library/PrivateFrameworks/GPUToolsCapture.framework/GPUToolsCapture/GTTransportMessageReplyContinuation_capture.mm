@interface GTTransportMessageReplyContinuation_capture
- (void)dispatchError:(id)error;
@end

@implementation GTTransportMessageReplyContinuation_capture

- (void)dispatchError:(id)error
{
  queue = self->super.queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = __53__GTTransportMessageReplyContinuation_dispatchError___block_invoke;
  v4[3] = &unk_2F2550;
  v4[4] = self;
  v4[5] = error;
  dispatch_async(queue, v4);
}

@end