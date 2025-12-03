@interface GKMultiplayerStepperController
- (_TtC12GameCenterUI30GKMultiplayerStepperController)initWithMinimumValue:(int64_t)value maximumValue:(int64_t)maximumValue initialValue:(int64_t)initialValue valueChangedHandler:(id)handler;
@end

@implementation GKMultiplayerStepperController

- (_TtC12GameCenterUI30GKMultiplayerStepperController)initWithMinimumValue:(int64_t)value maximumValue:(int64_t)maximumValue initialValue:(int64_t)initialValue valueChangedHandler:(id)handler
{
  v9 = _Block_copy(handler);
  if (v9)
  {
    *(swift_allocObject() + 16) = v9;
    v10 = sub_24E019BD4;
  }

  else
  {
    v10 = 0;
  }

  return sub_24E01990C(value, maximumValue, initialValue, v10);
}

@end