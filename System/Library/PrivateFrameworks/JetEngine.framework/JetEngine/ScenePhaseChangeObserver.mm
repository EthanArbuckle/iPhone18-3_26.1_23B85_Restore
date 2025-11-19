@interface ScenePhaseChangeObserver
- (_TtC9JetEngine24ScenePhaseChangeObserver)init;
@end

@implementation ScenePhaseChangeObserver

- (_TtC9JetEngine24ScenePhaseChangeObserver)init
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC9JetEngine24ScenePhaseChangeObserver_multicastDelegate;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438BC8);
  v5 = swift_allocObject();
  v6 = [objc_opt_self() weakObjectsHashTable];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB436D10);
  v7 = swift_allocObject();
  *(v7 + 24) = 0;
  *(v7 + 16) = v6;
  *(v5 + 2) = v7;
  *(&self->super.isa + v4) = v5;
  v10.receiver = self;
  v10.super_class = ObjectType;
  v8 = [(ScenePhaseChangeObserver *)&v10 init];
  sub_1AB073598();

  return v8;
}

@end