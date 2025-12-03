@interface TimeTriggerValue
- (_TtC22HomeAutomationInternal16TimeTriggerValue)initWithCoder:(id)coder;
- (_TtC22HomeAutomationInternal16TimeTriggerValue)initWithIdentifier:(id)identifier displayString:(id)string pronunciationHint:(id)hint;
@end

@implementation TimeTriggerValue

- (_TtC22HomeAutomationInternal16TimeTriggerValue)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC22HomeAutomationInternal16TimeTriggerValue_recurringDate;
  v5 = sub_252E32E04();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  result = sub_252E37B04();
  __break(1u);
  return result;
}

- (_TtC22HomeAutomationInternal16TimeTriggerValue)initWithIdentifier:(id)identifier displayString:(id)string pronunciationHint:(id)hint
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end