@interface AudioTemplateSceneDelegate
- (_TtC7NewsUI226AudioTemplateSceneDelegate)init;
- (void)templateApplicationScene:(id)scene didConnectInterfaceController:(id)controller;
- (void)templateApplicationScene:(id)scene didDisconnectInterfaceController:(id)controller;
@end

@implementation AudioTemplateSceneDelegate

- (_TtC7NewsUI226AudioTemplateSceneDelegate)init
{
  ObjectType = swift_getObjectType();
  v4 = self + OBJC_IVAR____TtC7NewsUI226AudioTemplateSceneDelegate____lazy_storage___resolver;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC7NewsUI226AudioTemplateSceneDelegate____lazy_storage___container) = 0;
  v5 = (&self->super.isa + OBJC_IVAR____TtC7NewsUI226AudioTemplateSceneDelegate____lazy_storage___commandCenter);
  *v5 = 0;
  v5[1] = 0;
  *(&self->super.isa + OBJC_IVAR____TtC7NewsUI226AudioTemplateSceneDelegate_interfaceController) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC7NewsUI226AudioTemplateSceneDelegate_audioTemplateController) = 0;
  v7.receiver = self;
  v7.super_class = ObjectType;
  return [(AudioTemplateSceneDelegate *)&v7 init];
}

- (void)templateApplicationScene:(id)scene didConnectInterfaceController:(id)controller
{
  sceneCopy = scene;
  controllerCopy = controller;
  selfCopy = self;
  sub_219117800(controllerCopy);
}

- (void)templateApplicationScene:(id)scene didDisconnectInterfaceController:(id)controller
{
  sceneCopy = scene;
  controllerCopy = controller;
  selfCopy = self;
  sub_219117D54();
}

@end