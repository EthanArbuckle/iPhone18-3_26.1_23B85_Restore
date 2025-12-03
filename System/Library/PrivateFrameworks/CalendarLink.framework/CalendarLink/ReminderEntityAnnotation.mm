@interface ReminderEntityAnnotation
+ (id)reminderEntityAnnotationForIntegrationEvent:(id)event;
+ (id)reminderEntityIdentifierForIntegrationEvent:(id)event;
@end

@implementation ReminderEntityAnnotation

+ (id)reminderEntityAnnotationForIntegrationEvent:(id)event
{
  eventCopy = event;
  if (CalendarUIKitInternalLibraryCore())
  {
    cUIK_reminderEntityAnnotation = [eventCopy CUIK_reminderEntityAnnotation];
  }

  else
  {
    cUIK_reminderEntityAnnotation = 0;
  }

  return cUIK_reminderEntityAnnotation;
}

+ (id)reminderEntityIdentifierForIntegrationEvent:(id)event
{
  eventCopy = event;
  if (CalendarUIKitInternalLibraryCore())
  {
    cUIK_reminderEntityIdentifier = [eventCopy CUIK_reminderEntityIdentifier];
  }

  else
  {
    cUIK_reminderEntityIdentifier = 0;
  }

  return cUIK_reminderEntityIdentifier;
}

@end