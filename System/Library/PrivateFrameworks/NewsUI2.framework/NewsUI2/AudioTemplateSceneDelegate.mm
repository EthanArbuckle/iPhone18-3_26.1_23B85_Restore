@interface AudioTemplateSceneDelegate
- (_TtC7NewsUI226AudioTemplateSceneDelegate)init;
- (void)templateApplicationScene:(id)a3 didConnectInterfaceController:(id)a4;
- (void)templateApplicationScene:(id)a3 didDisconnectInterfaceController:(id)a4;
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

- (void)templateApplicationScene:(id)a3 didConnectInterfaceController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_219117800(v7);
}

- (void)templateApplicationScene:(id)a3 didDisconnectInterfaceController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_219117D54();
}

@end