@interface ScreeningSoundAndHapticsManager
- (void)announcementFinishedNotification:(id)a3;
@end

@implementation ScreeningSoundAndHapticsManager

- (void)announcementFinishedNotification:(id)a3
{
  v3 = a3;

  ScreeningSoundAndHapticsManager.announcementFinishedNotification(_:)(v3);
}

@end