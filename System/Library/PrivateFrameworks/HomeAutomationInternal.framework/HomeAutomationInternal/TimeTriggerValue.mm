@interface TimeTriggerValue
- (_TtC22HomeAutomationInternal16TimeTriggerValue)initWithCoder:(id)a3;
- (_TtC22HomeAutomationInternal16TimeTriggerValue)initWithIdentifier:(id)a3 displayString:(id)a4 pronunciationHint:(id)a5;
@end

@implementation TimeTriggerValue

- (_TtC22HomeAutomationInternal16TimeTriggerValue)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC22HomeAutomationInternal16TimeTriggerValue_recurringDate;
  v5 = sub_252E32E04();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  result = sub_252E37B04();
  __break(1u);
  return result;
}

- (_TtC22HomeAutomationInternal16TimeTriggerValue)initWithIdentifier:(id)a3 displayString:(id)a4 pronunciationHint:(id)a5
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end