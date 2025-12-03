@interface CALNNotificationFilterUtils
+ (id)filterIdentifierForNotificationContent:(id)content;
+ (id)filterIdentifierForNotificationRecord:(id)record;
+ (void)setFilterIdentifierForEKCalendarNotification:(id)notification onNotificationContent:(id)content;
@end

@implementation CALNNotificationFilterUtils

+ (id)filterIdentifierForNotificationRecord:(id)record
{
  recordCopy = record;
  content = [recordCopy content];
  sourceClientIdentifier = [self filterIdentifierForNotificationContent:content];

  if (!sourceClientIdentifier)
  {
    sourceClientIdentifier = [recordCopy sourceClientIdentifier];
  }

  return sourceClientIdentifier;
}

+ (id)filterIdentifierForNotificationContent:(id)content
{
  userInfo = [content userInfo];
  v4 = [userInfo objectForKeyedSubscript:@"DatabaseChangedFilterIdentifier"];

  return v4;
}

+ (void)setFilterIdentifierForEKCalendarNotification:(id)notification onNotificationContent:(id)content
{
  contentCopy = content;
  objectID = [notification objectID];
  stringRepresentation = [objectID stringRepresentation];

  if (stringRepresentation)
  {
    [self setFilterIdentifier:stringRepresentation onNotificationContent:contentCopy];
  }
}

@end