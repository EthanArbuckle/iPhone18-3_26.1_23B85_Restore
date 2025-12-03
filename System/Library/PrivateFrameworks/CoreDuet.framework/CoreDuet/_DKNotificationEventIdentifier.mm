@interface _DKNotificationEventIdentifier
+ (id)withNotificationEvent:(id)event;
@end

@implementation _DKNotificationEventIdentifier

+ (id)withNotificationEvent:(id)event
{
  eventCopy = event;
  type = [self type];
  v6 = [_DKIdentifier identifierWithString:eventCopy type:type];

  return v6;
}

@end