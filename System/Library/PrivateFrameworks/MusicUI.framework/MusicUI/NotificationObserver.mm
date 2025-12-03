@interface NotificationObserver
- (void)handleNotification:(id)notification;
@end

@implementation NotificationObserver

- (void)handleNotification:(id)notification
{
  v3 = sub_217005974();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217005934();

  sub_216846E28(v6);

  (*(v4 + 8))(v6, v3);
}

@end