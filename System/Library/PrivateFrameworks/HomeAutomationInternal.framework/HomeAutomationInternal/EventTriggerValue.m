@interface EventTriggerValue
- (_TtC22HomeAutomationInternal17EventTriggerValue)initWithCoder:(id)a3;
- (_TtC22HomeAutomationInternal17EventTriggerValue)initWithIdentifier:(id)a3 displayString:(id)a4 pronunciationHint:(id)a5;
@end

@implementation EventTriggerValue

- (_TtC22HomeAutomationInternal17EventTriggerValue)initWithCoder:(id)a3
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

- (_TtC22HomeAutomationInternal17EventTriggerValue)initWithIdentifier:(id)a3 displayString:(id)a4 pronunciationHint:(id)a5
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end