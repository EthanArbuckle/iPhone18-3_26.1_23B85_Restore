@interface GDAnalytics
+ (void)sendEventForProductionLazyWithEventName:(id)name eventPayloadBuilder:(id)builder;
+ (void)sendEventForProductionWithEventName:(id)name prefix:(id)prefix eventPayload:(id)payload;
@end

@implementation GDAnalytics

+ (void)sendEventForProductionLazyWithEventName:(id)name eventPayloadBuilder:(id)builder
{
  v4 = _Block_copy(builder);
  v5 = sub_1ABF23C04();
  v7 = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = v4;
  static Analytics.sendEventForProductionLazy(eventName:eventPayloadBuilder:)(v5, v7, sub_1ABAAEBCC, v8);
}

+ (void)sendEventForProductionWithEventName:(id)name prefix:(id)prefix eventPayload:(id)payload
{
  v7 = sub_1ABF23C04();
  v9 = v8;
  if (prefix)
  {
    v10 = sub_1ABF23C04();
    prefix = v11;
    if (!payload)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v10 = 0;
  if (payload)
  {
LABEL_3:
    sub_1ABA84F5C();
    payload = sub_1ABF23974();
  }

LABEL_4:
  static Analytics.sendEventForProduction(eventName:prefix:eventPayload:)(v7, v9, v10, prefix, payload);
}

@end