@interface WaitOnHoldViewComposer
- (id)composeWithCall:(id)call waitOnHoldService:(id)service;
@end

@implementation WaitOnHoldViewComposer

- (id)composeWithCall:(id)call waitOnHoldService:(id)service
{
  callCopy = call;
  swift_unknownObjectRetain();
  selfCopy = self;
  v8 = WaitOnHoldViewComposer.compose(with:waitOnHoldServiceProvider:)(callCopy, service);

  swift_unknownObjectRelease();

  return v8;
}

@end