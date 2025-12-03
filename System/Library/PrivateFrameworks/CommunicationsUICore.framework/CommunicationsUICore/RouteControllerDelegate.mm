@interface RouteControllerDelegate
- (_TtC20CommunicationsUICoreP33_958756A54F68EF1F0D6D0FD8C6158AC223RouteControllerDelegate)init;
- (void)routesChangedForRouteController:(id)controller;
@end

@implementation RouteControllerDelegate

- (void)routesChangedForRouteController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  sub_1C2F22180(controllerCopy);
}

- (_TtC20CommunicationsUICoreP33_958756A54F68EF1F0D6D0FD8C6158AC223RouteControllerDelegate)init
{
  ObjectType = swift_getObjectType();
  sub_1C2F761EC();
  v4 = (&self->super.isa + OBJC_IVAR____TtC20CommunicationsUICoreP33_958756A54F68EF1F0D6D0FD8C6158AC223RouteControllerDelegate_handler);
  *v4 = 0;
  v4[1] = 0;
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(RouteControllerDelegate *)&v6 init];
}

@end