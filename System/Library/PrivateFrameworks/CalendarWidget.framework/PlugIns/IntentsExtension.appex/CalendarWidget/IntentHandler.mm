@interface IntentHandler
- (IntentHandler)init;
- (id)handlerForIntent:(id)intent;
@end

@implementation IntentHandler

- (id)handlerForIntent:(id)intent
{
  type metadata accessor for EKUICalendarsIntent();
  if (swift_dynamicCastClass() || (type metadata accessor for NextEventComplicationConfigurationIntent(), swift_dynamicCastClass()))
  {
    v5 = type metadata accessor for WidgetIntentHandler();
    v6 = objc_allocWithZone(v5);
    intentCopy = intent;
    selfCopy = self;
    v9 = [v6 init];
    v14 = v5;

    v13[0] = v9;
  }

  else
  {
    v5 = type metadata accessor for IntentHandler();
    v14 = v5;
    v13[0] = self;
    selfCopy2 = self;
  }

  sub_100005448(v13, v5);
  v10 = sub_100008828();
  sub_10000548C(v13);

  return v10;
}

- (IntentHandler)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for IntentHandler();
  return [(IntentHandler *)&v3 init];
}

@end