@interface EventTriggerValue
- (_TtC22HomeAutomationInternal17EventTriggerValue)initWithCoder:(id)coder;
- (_TtC22HomeAutomationInternal17EventTriggerValue)initWithIdentifier:(id)identifier displayString:(id)string pronunciationHint:(id)hint;
@end

@implementation EventTriggerValue

- (_TtC22HomeAutomationInternal17EventTriggerValue)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC22HomeAutomationInternal17EventTriggerValue_offset;
  v5 = sub_252E32BA4();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtC22HomeAutomationInternal17EventTriggerValue_recurringDate;
  v7 = sub_252E32E04();
  (*(*(v7 - 8) + 56))(self + v6, 1, 1, v7);
  result = sub_252E37B04();
  __break(1u);
  return result;
}

- (_TtC22HomeAutomationInternal17EventTriggerValue)initWithIdentifier:(id)identifier displayString:(id)string pronunciationHint:(id)hint
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end