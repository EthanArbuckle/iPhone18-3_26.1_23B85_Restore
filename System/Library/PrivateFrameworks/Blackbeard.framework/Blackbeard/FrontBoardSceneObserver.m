@interface FrontBoardSceneObserver
- (_TtC26FitnessWindowSceneObserver23FrontBoardSceneObserver)init;
- (void)dealloc;
- (void)scene:(id)a3 didUpdateSettings:(id)a4;
@end

@implementation FrontBoardSceneObserver

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = *(&self->super.isa + OBJC_IVAR____TtC26FitnessWindowSceneObserver23FrontBoardSceneObserver_scene);
  v5 = self;
  [v4 removeObserver_];
  v6.receiver = v5;
  v6.super_class = ObjectType;
  [(FrontBoardSceneObserver *)&v6 dealloc];
}

- (_TtC26FitnessWindowSceneObserver23FrontBoardSceneObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)scene:(id)a3 didUpdateSettings:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1E65A99A4(v7);
}

@end