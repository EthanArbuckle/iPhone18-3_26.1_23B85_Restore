@interface SwitchCell
- (_TtC28MomentsOnboardingAndSettings10SwitchCell)initWithCoder:(id)coder;
- (_TtC28MomentsOnboardingAndSettings10SwitchCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation SwitchCell

- (_TtC28MomentsOnboardingAndSettings10SwitchCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC28MomentsOnboardingAndSettings10SwitchCell_onSwitchChange);
    *v7 = 0;
    v7[1] = 0;
    v8 = MEMORY[0x25F84F220](v6);
  }

  else
  {
    v8 = 0;
    v9 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC28MomentsOnboardingAndSettings10SwitchCell_onSwitchChange);
    *v9 = 0;
    v9[1] = 0;
  }

  v12.receiver = self;
  v12.super_class = type metadata accessor for SwitchCell();
  v10 = [(SwitchCell *)&v12 initWithStyle:style reuseIdentifier:v8];

  return v10;
}

- (_TtC28MomentsOnboardingAndSettings10SwitchCell)initWithCoder:(id)coder
{
  v4 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC28MomentsOnboardingAndSettings10SwitchCell_onSwitchChange);
  *v4 = 0;
  v4[1] = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for SwitchCell();
  coderCopy = coder;
  v6 = [(SwitchCell *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

@end