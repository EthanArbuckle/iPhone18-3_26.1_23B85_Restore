@interface EKSuggestionsServiceLogger
+ (void)logEventConfirmedDetailsWithUniqueKey:(id)key;
+ (void)logEventConfirmedInboxWithUniqueKey:(id)key;
+ (void)logEventConfirmedNotificationWithUniqueKey:(id)key;
+ (void)logEventDismissedNotificationWithUniqueKey:(id)key;
+ (void)logEventEngagedNotificationWithUniqueKey:(id)key;
+ (void)logEventRejectedDetailsWithUniqueKey:(id)key;
+ (void)logEventRejectedInboxWithUniqueKey:(id)key;
+ (void)logEventRejectedNotificationWithUniqueKey:(id)key;
+ (void)logEventShowedDetailsWithUniqueKey:(id)key;
+ (void)logEventShowedNotificationWithUniqueKey:(id)key;
+ (void)logEventShowedTimeToLeaveNotificationWithUniqueKey:(id)key;
@end

@implementation EKSuggestionsServiceLogger

+ (void)logEventShowedNotificationWithUniqueKey:(id)key
{
  if (key)
  {
    keyCopy = key;
    v4 = [objc_msgSend(objc_opt_class() "_SGSuggestionsServiceClass")];
    [v4 logEventInteractionForEventWithUniqueKey:keyCopy interface:8 actionType:4];
  }
}

+ (void)logEventEngagedNotificationWithUniqueKey:(id)key
{
  if (key)
  {
    keyCopy = key;
    v4 = [objc_msgSend(objc_opt_class() "_SGSuggestionsServiceClass")];
    [v4 logEventInteractionForEventWithUniqueKey:keyCopy interface:8 actionType:5];
  }
}

+ (void)logEventDismissedNotificationWithUniqueKey:(id)key
{
  if (key)
  {
    keyCopy = key;
    v4 = [objc_msgSend(objc_opt_class() "_SGSuggestionsServiceClass")];
    [v4 logEventInteractionForEventWithUniqueKey:keyCopy interface:8 actionType:8];
  }
}

+ (void)logEventRejectedNotificationWithUniqueKey:(id)key
{
  if (key)
  {
    keyCopy = key;
    v4 = [objc_msgSend(objc_opt_class() "_SGSuggestionsServiceClass")];
    [v4 logEventInteractionForEventWithUniqueKey:keyCopy interface:8 actionType:7];
  }
}

+ (void)logEventConfirmedNotificationWithUniqueKey:(id)key
{
  if (key)
  {
    keyCopy = key;
    v4 = [objc_msgSend(objc_opt_class() "_SGSuggestionsServiceClass")];
    [v4 logEventInteractionForEventWithUniqueKey:keyCopy interface:8 actionType:6];
  }
}

+ (void)logEventConfirmedInboxWithUniqueKey:(id)key
{
  if (key)
  {
    keyCopy = key;
    v4 = [objc_msgSend(objc_opt_class() "_SGSuggestionsServiceClass")];
    [v4 logEventInteractionForEventWithUniqueKey:keyCopy interface:9 actionType:6];
  }
}

+ (void)logEventRejectedInboxWithUniqueKey:(id)key
{
  if (key)
  {
    keyCopy = key;
    v4 = [objc_msgSend(objc_opt_class() "_SGSuggestionsServiceClass")];
    [v4 logEventInteractionForEventWithUniqueKey:keyCopy interface:9 actionType:7];
  }
}

+ (void)logEventShowedDetailsWithUniqueKey:(id)key
{
  keyCopy = key;
  v3 = +[CalEntitlementsVerifier currentProcessIsFirstPartyCalendarApp];
  if (keyCopy && v3)
  {
    v4 = [objc_msgSend(objc_opt_class() "_SGSuggestionsServiceClass")];
    [v4 logEventInteractionForEventWithUniqueKey:keyCopy interface:10 actionType:4];
  }
}

+ (void)logEventConfirmedDetailsWithUniqueKey:(id)key
{
  keyCopy = key;
  v3 = +[CalEntitlementsVerifier currentProcessIsFirstPartyCalendarApp];
  if (keyCopy && v3)
  {
    v4 = [objc_msgSend(objc_opt_class() "_SGSuggestionsServiceClass")];
    [v4 logEventInteractionForEventWithUniqueKey:keyCopy interface:10 actionType:6];
  }
}

+ (void)logEventRejectedDetailsWithUniqueKey:(id)key
{
  keyCopy = key;
  v3 = +[CalEntitlementsVerifier currentProcessIsFirstPartyCalendarApp];
  if (keyCopy && v3)
  {
    v4 = [objc_msgSend(objc_opt_class() "_SGSuggestionsServiceClass")];
    [v4 logEventInteractionForEventWithUniqueKey:keyCopy interface:10 actionType:7];
  }
}

+ (void)logEventShowedTimeToLeaveNotificationWithUniqueKey:(id)key
{
  if (key)
  {
    keyCopy = key;
    v4 = [objc_msgSend(objc_opt_class() "_SGSuggestionsServiceClass")];
    [v4 logEventInteractionForEventWithUniqueKey:keyCopy interface:18 actionType:4];
  }
}

@end