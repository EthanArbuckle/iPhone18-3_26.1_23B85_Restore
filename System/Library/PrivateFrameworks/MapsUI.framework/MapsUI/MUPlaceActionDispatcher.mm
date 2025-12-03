@interface MUPlaceActionDispatcher
- (MUPlaceActionManager)actionManager;
- (_TtC6MapsUI23MUPlaceActionDispatcher)init;
- (_TtC6MapsUI23MUPlaceActionDispatcher)initWithActionManager:(id)manager;
- (_TtP6MapsUI31MUPlaceActionDispatcherDelegate_)delegate;
- (void)performActionFor:(id)for environment:(id)environment completion:(id)completion;
- (void)setActionManager:(id)manager;
@end

@implementation MUPlaceActionDispatcher

- (MUPlaceActionManager)actionManager
{
  v3 = OBJC_IVAR____TtC6MapsUI23MUPlaceActionDispatcher_actionManager;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setActionManager:(id)manager
{
  v5 = OBJC_IVAR____TtC6MapsUI23MUPlaceActionDispatcher_actionManager;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = manager;
  managerCopy = manager;
}

- (_TtP6MapsUI31MUPlaceActionDispatcherDelegate_)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_TtC6MapsUI23MUPlaceActionDispatcher)initWithActionManager:(id)manager
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  *(self + OBJC_IVAR____TtC6MapsUI23MUPlaceActionDispatcher_actionManager) = manager;
  v8.receiver = self;
  v8.super_class = ObjectType;
  managerCopy = manager;
  return [(MUPlaceActionDispatcher *)&v8 init];
}

- (_TtC6MapsUI23MUPlaceActionDispatcher)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)performActionFor:(id)for environment:(id)environment completion:(id)completion
{
  v8 = _Block_copy(completion);
  if (v8)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    v8 = sub_1C56441C4;
  }

  else
  {
    v9 = 0;
  }

  forCopy = for;
  environmentCopy = environment;
  selfCopy = self;
  sub_1C5643490(forCopy, environmentCopy, v8, v9);

  sub_1C5632FA8(v8);
}

@end