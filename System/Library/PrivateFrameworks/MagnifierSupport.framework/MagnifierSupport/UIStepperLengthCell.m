@interface UIStepperLengthCell
- (_TtC16MagnifierSupport19UIStepperLengthCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)accessibilityDecrement;
- (void)accessibilityIncrement;
- (void)distanceStepperValueChanged:(id)a3;
@end

@implementation UIStepperLengthCell

- (void)accessibilityIncrement
{
  v2 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC16MagnifierSupport19UIStepperLengthCell__distanceStepper);
  v7 = self;
  v3 = v2;
  [v3 stepValue];
  v5 = v4;
  [v3 value];
  [v3 setValue_];

  sub_257D3E22C();
}

- (void)accessibilityDecrement
{
  v2 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC16MagnifierSupport19UIStepperLengthCell__distanceStepper);
  v7 = self;
  v3 = v2;
  [v3 stepValue];
  v5 = v4;
  [v3 value];
  [v3 setValue_];

  sub_257D3E22C();
}

- (void)distanceStepperValueChanged:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_257D3EAC8();
}

- (_TtC16MagnifierSupport19UIStepperLengthCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
  {
    a4 = sub_257ECF500();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_257D3E56C(a3, a4, v6);
}

@end