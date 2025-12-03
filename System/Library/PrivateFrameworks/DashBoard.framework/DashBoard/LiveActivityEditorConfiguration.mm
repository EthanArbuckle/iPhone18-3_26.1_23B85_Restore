@interface LiveActivityEditorConfiguration
- (NSString)liveActivityName;
- (_TtC9DashBoard31LiveActivityEditorConfiguration)init;
- (_TtC9DashBoard31LiveActivityEditorConfiguration)initWithLiveActivityName:(id)name clearLiveActivityAction:(id)action turnOffInCarPlayAction:(id)playAction;
@end

@implementation LiveActivityEditorConfiguration

- (NSString)liveActivityName
{

  v2 = sub_248383930();

  return v2;
}

- (_TtC9DashBoard31LiveActivityEditorConfiguration)initWithLiveActivityName:(id)name clearLiveActivityAction:(id)action turnOffInCarPlayAction:(id)playAction
{
  v7 = _Block_copy(action);
  v8 = _Block_copy(playAction);
  v9 = sub_248383960();
  v11 = v10;
  v12 = swift_allocObject();
  *(v12 + 16) = v7;
  v13 = swift_allocObject();
  *(v13 + 16) = v8;
  v14 = (self + OBJC_IVAR____TtC9DashBoard31LiveActivityEditorConfiguration_liveActivityName);
  *v14 = v9;
  v14[1] = v11;
  v15 = (self + OBJC_IVAR____TtC9DashBoard31LiveActivityEditorConfiguration_clearLiveActivityAction);
  *v15 = sub_248260D2C;
  v15[1] = v12;
  v16 = (self + OBJC_IVAR____TtC9DashBoard31LiveActivityEditorConfiguration_turnOffInCarPlayAction);
  *v16 = sub_248261494;
  v16[1] = v13;
  v18.receiver = self;
  v18.super_class = type metadata accessor for LiveActivityEditorConfiguration();
  return [(LiveActivityEditorConfiguration *)&v18 init];
}

- (_TtC9DashBoard31LiveActivityEditorConfiguration)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end