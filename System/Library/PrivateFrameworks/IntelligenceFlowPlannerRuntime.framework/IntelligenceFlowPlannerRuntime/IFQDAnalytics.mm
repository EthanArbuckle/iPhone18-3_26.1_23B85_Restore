@interface IFQDAnalytics
+ (void)sendEventForProductionLazyWithEventName:(id)name eventPayloadBuilder:(id)builder;
+ (void)sendEventForProductionWithEventName:(id)name prefix:(id)prefix eventPayload:(id)payload;
@end

@implementation IFQDAnalytics

+ (void)sendEventForProductionWithEventName:(id)name prefix:(id)prefix eventPayload:(id)payload
{
  v7 = sub_22C90A11C();
  v9 = v8;
  if (prefix)
  {
    v10 = sub_22C90A11C();
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
    sub_22C389D24();
    payload = sub_22C909ECC();
  }

LABEL_4:
  static QueryDecorationAnalytics.sendEventForProduction(eventName:prefix:eventPayload:)(v7, v9, v10, prefix, payload);
}

+ (void)sendEventForProductionLazyWithEventName:(id)name eventPayloadBuilder:(id)builder
{
  v4 = _Block_copy(builder);
  v5 = sub_22C90A11C();
  v7 = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = v4;
  static QueryDecorationAnalytics.sendEventForProductionLazy(eventName:eventPayloadBuilder:)(v5, v7, sub_22C82A3C8, v8);
}

@end