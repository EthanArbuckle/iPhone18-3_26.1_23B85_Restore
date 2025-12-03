@interface ScreeningSoundAndHapticsManager
- (void)announcementFinishedNotification:(id)notification;
@end

@implementation ScreeningSoundAndHapticsManager

- (void)announcementFinishedNotification:(id)notification
{
  notificationCopy = notification;

  ScreeningSoundAndHapticsManager.announcementFinishedNotification(_:)(notificationCopy);
}

@end