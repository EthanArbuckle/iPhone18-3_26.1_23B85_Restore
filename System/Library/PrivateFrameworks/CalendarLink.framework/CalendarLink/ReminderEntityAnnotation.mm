@interface ReminderEntityAnnotation
+ (id)reminderEntityAnnotationForIntegrationEvent:(id)a3;
+ (id)reminderEntityIdentifierForIntegrationEvent:(id)a3;
@end

@implementation ReminderEntityAnnotation

+ (id)reminderEntityAnnotationForIntegrationEvent:(id)a3
{
  v3 = a3;
  if (CalendarUIKitInternalLibraryCore())
  {
    v4 = [v3 CUIK_reminderEntityAnnotation];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)reminderEntityIdentifierForIntegrationEvent:(id)a3
{
  v3 = a3;
  if (CalendarUIKitInternalLibraryCore())
  {
    v4 = [v3 CUIK_reminderEntityIdentifier];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end