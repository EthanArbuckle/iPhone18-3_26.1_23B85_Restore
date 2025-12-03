@interface HTRequirementStatusManager
- (void)handleRouteChangeWithNotification:(id)notification;
@end

@implementation HTRequirementStatusManager

- (void)handleRouteChangeWithNotification:(id)notification
{
  v3 = sub_25214171C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2521416FC();

  sub_25211EFA8();

  (*(v4 + 8))(v7, v3);
}

@end