@interface MapsSuggestionsNotificationSender
- (MapsSuggestionsNotificationSender)initWithDarwinNotification:(const char *)a3;
@end

@implementation MapsSuggestionsNotificationSender

- (MapsSuggestionsNotificationSender)initWithDarwinNotification:(const char *)a3
{
  v4.receiver = self;
  v4.super_class = MapsSuggestionsNotificationSender;
  if ([(MapsSuggestionsNotificationSender *)&v4 init])
  {
    operator new();
  }

  return 0;
}

@end