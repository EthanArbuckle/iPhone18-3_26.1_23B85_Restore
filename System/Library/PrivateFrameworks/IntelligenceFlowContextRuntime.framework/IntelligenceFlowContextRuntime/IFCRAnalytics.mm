@interface IFCRAnalytics
+ (void)sendEventForProductionWithEventName:(id)name prefix:(id)prefix eventPayload:(id)payload;
@end

@implementation IFCRAnalytics

+ (void)sendEventForProductionWithEventName:(id)name prefix:(id)prefix eventPayload:(id)payload
{
  v7 = sub_254F29450();
  v9 = v8;
  if (prefix)
  {
    v10 = sub_254F29450();
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
    sub_254EC1838();
    payload = sub_254F293C0();
  }

LABEL_4:
  static Analytics.sendEventForProduction(eventName:prefix:eventPayload:)(v7, v9, v10, prefix, payload);
}

@end