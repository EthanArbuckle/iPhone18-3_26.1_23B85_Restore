@interface UIStepperLengthCell
- (_TtC16MagnifierSupport19UIStepperLengthCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)accessibilityDecrement;
- (void)accessibilityIncrement;
- (void)distanceStepperValueChanged:(id)changed;
@end

@implementation UIStepperLengthCell

- (void)accessibilityIncrement
{
  v2 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC16MagnifierSupport19UIStepperLengthCell__distanceStepper);
  selfCopy = self;
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
  selfCopy = self;
  v3 = v2;
  [v3 stepValue];
  v5 = v4;
  [v3 value];
  [v3 setValue_];

  sub_257D3E22C();
}

- (void)distanceStepperValueChanged:(id)changed
{
  changedCopy = changed;
  selfCopy = self;
  sub_257D3EAC8();
}

- (_TtC16MagnifierSupport19UIStepperLengthCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
  {
    identifier = sub_257ECF500();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_257D3E56C(style, identifier, v6);
}

@end