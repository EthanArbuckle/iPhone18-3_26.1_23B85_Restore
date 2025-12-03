@interface GKMetrics
- (void)handleNotification:(id)notification;
@end

@implementation GKMetrics

- (void)handleNotification:(id)notification
{
  v3 = sub_24E342F28();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E342EF8();

  sub_24E3307EC();

  (*(v4 + 8))(v6, v3);
}

@end