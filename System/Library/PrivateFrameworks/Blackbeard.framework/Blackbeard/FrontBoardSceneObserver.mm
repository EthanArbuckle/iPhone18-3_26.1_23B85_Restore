@interface FrontBoardSceneObserver
- (_TtC26FitnessWindowSceneObserver23FrontBoardSceneObserver)init;
- (void)dealloc;
- (void)scene:(id)scene didUpdateSettings:(id)settings;
@end

@implementation FrontBoardSceneObserver

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = *(&self->super.isa + OBJC_IVAR____TtC26FitnessWindowSceneObserver23FrontBoardSceneObserver_scene);
  selfCopy = self;
  [v4 removeObserver_];
  v6.receiver = selfCopy;
  v6.super_class = ObjectType;
  [(FrontBoardSceneObserver *)&v6 dealloc];
}

- (_TtC26FitnessWindowSceneObserver23FrontBoardSceneObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)scene:(id)scene didUpdateSettings:(id)settings
{
  sceneCopy = scene;
  settingsCopy = settings;
  selfCopy = self;
  sub_1E65A99A4(settingsCopy);
}

@end