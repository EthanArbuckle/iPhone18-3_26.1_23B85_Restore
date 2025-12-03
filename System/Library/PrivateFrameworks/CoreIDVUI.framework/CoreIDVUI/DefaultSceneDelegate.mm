@interface DefaultSceneDelegate
- (_TtC9CoreIDVUI20DefaultSceneDelegate)init;
- (void)scene:(id)scene openURLContexts:(id)contexts;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
@end

@implementation DefaultSceneDelegate

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  sub_2458D2774(optionsCopy);
}

- (void)scene:(id)scene openURLContexts:(id)contexts
{
  sub_2458D25D8();
  sub_2458D2624();
  v5 = sub_245910E74();
  selfCopy = self;
  sub_2458D18DC(v5);
}

- (_TtC9CoreIDVUI20DefaultSceneDelegate)init
{
  v3 = OBJC_IVAR____TtC9CoreIDVUI20DefaultSceneDelegate_controller;
  sub_24590E5F4();
  *(&self->super.isa + v3) = sub_24590E5E4();
  v5.receiver = self;
  v5.super_class = type metadata accessor for DefaultSceneDelegate();
  return [(DefaultSceneDelegate *)&v5 init];
}

@end