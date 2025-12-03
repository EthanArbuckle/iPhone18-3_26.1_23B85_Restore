@interface ReadingGoalsDataStore
- (void)handleCloudChangeNotification:(id)notification;
@end

@implementation ReadingGoalsDataStore

- (void)handleCloudChangeNotification:(id)notification
{
  v3 = sub_1E47099BC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v9 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E470999C();

  sub_1E46E2A40();

  (*(v4 + 8))(v8, v3);
}

@end