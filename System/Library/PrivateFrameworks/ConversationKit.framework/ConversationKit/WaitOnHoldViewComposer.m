@interface WaitOnHoldViewComposer
- (id)composeWithCall:(id)a3 waitOnHoldService:(id)a4;
@end

@implementation WaitOnHoldViewComposer

- (id)composeWithCall:(id)a3 waitOnHoldService:(id)a4
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = self;
  v8 = WaitOnHoldViewComposer.compose(with:waitOnHoldServiceProvider:)(v6, a4);

  swift_unknownObjectRelease();

  return v8;
}

@end