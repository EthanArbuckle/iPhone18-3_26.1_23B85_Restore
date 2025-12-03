@interface ReadingGoalsDataStore
- (void)handleCloudChangeNotification:(id)notification;
@end

@implementation ReadingGoalsDataStore

- (void)handleCloudChangeNotification:(id)notification
{
  v3 = sub_1001C4868();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001C4848();

  sub_1001546FC();

  (*(v4 + 8))(v7, v3);
}

@end