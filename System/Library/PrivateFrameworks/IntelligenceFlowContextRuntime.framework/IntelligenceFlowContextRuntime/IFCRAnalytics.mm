@interface IFCRAnalytics
+ (void)sendEventForProductionWithEventName:(id)a3 prefix:(id)a4 eventPayload:(id)a5;
@end

@implementation IFCRAnalytics

+ (void)sendEventForProductionWithEventName:(id)a3 prefix:(id)a4 eventPayload:(id)a5
{
  v7 = sub_254F29450();
  v9 = v8;
  if (a4)
  {
    v10 = sub_254F29450();
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
    sub_254EC1838();
    a5 = sub_254F293C0();
  }

LABEL_4:
  static Analytics.sendEventForProduction(eventName:prefix:eventPayload:)(v7, v9, v10, a4, a5);
}

@end