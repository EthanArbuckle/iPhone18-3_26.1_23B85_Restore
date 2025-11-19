@interface MNCommuteRouteManagerCancellableRequest
- (MNCommuteRouteManagerCancellableRequest)init;
- (void)cancel;
@end

@implementation MNCommuteRouteManagerCancellableRequest

- (void)cancel
{
  v2 = self;
  MNCommuteRouteManagerCancellableRequest.cancel()();
}

- (MNCommuteRouteManagerCancellableRequest)init
{
  *(&self->super.isa + OBJC_IVAR___MNCommuteRouteManagerCancellableRequest__task) = 0;
  v3.receiver = self;
  v3.super_class = MNCommuteRouteManagerCancellableRequest;
  return [(MNCommuteRouteManagerCancellableRequest *)&v3 init];
}

@end