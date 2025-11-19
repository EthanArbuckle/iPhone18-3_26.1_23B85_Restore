@interface IFQDAnalytics
+ (void)sendEventForProductionLazyWithEventName:(id)a3 eventPayloadBuilder:(id)a4;
+ (void)sendEventForProductionWithEventName:(id)a3 prefix:(id)a4 eventPayload:(id)a5;
@end

@implementation IFQDAnalytics

+ (void)sendEventForProductionWithEventName:(id)a3 prefix:(id)a4 eventPayload:(id)a5
{
  v7 = sub_22C90A11C();
  v9 = v8;
  if (a4)
  {
    v10 = sub_22C90A11C();
    a4 = v11;
    if (!a5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v10 = 0;
  if (a5)
  {
LABEL_3:
    sub_22C389D24();
    a5 = sub_22C909ECC();
  }

LABEL_4:
  static QueryDecorationAnalytics.sendEventForProduction(eventName:prefix:eventPayload:)(v7, v9, v10, a4, a5);
}

+ (void)sendEventForProductionLazyWithEventName:(id)a3 eventPayloadBuilder:(id)a4
{
  v4 = _Block_copy(a4);
  v5 = sub_22C90A11C();
  v7 = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = v4;
  static QueryDecorationAnalytics.sendEventForProductionLazy(eventName:eventPayloadBuilder:)(v5, v7, sub_22C82A3C8, v8);
}

@end