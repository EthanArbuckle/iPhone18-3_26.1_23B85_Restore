@interface GKMultiplayerStepperController
- (_TtC12GameCenterUI30GKMultiplayerStepperController)initWithMinimumValue:(int64_t)a3 maximumValue:(int64_t)a4 initialValue:(int64_t)a5 valueChangedHandler:(id)a6;
@end

@implementation GKMultiplayerStepperController

- (_TtC12GameCenterUI30GKMultiplayerStepperController)initWithMinimumValue:(int64_t)a3 maximumValue:(int64_t)a4 initialValue:(int64_t)a5 valueChangedHandler:(id)a6
{
  v9 = _Block_copy(a6);
  if (v9)
  {
    *(swift_allocObject() + 16) = v9;
    v10 = sub_24E019BD4;
  }

  else
  {
    v10 = 0;
  }

  return sub_24E01990C(a3, a4, a5, v10);
}

@end