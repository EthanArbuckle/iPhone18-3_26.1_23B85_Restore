@interface SwitchCell
- (_TtC28MomentsOnboardingAndSettings10SwitchCell)initWithCoder:(id)a3;
- (_TtC28MomentsOnboardingAndSettings10SwitchCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
@end

@implementation SwitchCell

- (_TtC28MomentsOnboardingAndSettings10SwitchCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
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
  v10 = [(SwitchCell *)&v12 initWithStyle:a3 reuseIdentifier:v8];

  return v10;
}

- (_TtC28MomentsOnboardingAndSettings10SwitchCell)initWithCoder:(id)a3
{
  v4 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC28MomentsOnboardingAndSettings10SwitchCell_onSwitchChange);
  *v4 = 0;
  v4[1] = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for SwitchCell();
  v5 = a3;
  v6 = [(SwitchCell *)&v8 initWithCoder:v5];

  if (v6)
  {
  }

  return v6;
}

@end