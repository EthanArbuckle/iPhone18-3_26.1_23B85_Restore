@interface MUPlaceActionDispatcher
- (MUPlaceActionManager)actionManager;
- (_TtC6MapsUI23MUPlaceActionDispatcher)init;
- (_TtC6MapsUI23MUPlaceActionDispatcher)initWithActionManager:(id)a3;
- (_TtP6MapsUI31MUPlaceActionDispatcherDelegate_)delegate;
- (void)performActionFor:(id)a3 environment:(id)a4 completion:(id)a5;
- (void)setActionManager:(id)a3;
@end

@implementation MUPlaceActionDispatcher

- (MUPlaceActionManager)actionManager
{
  v3 = OBJC_IVAR____TtC6MapsUI23MUPlaceActionDispatcher_actionManager;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setActionManager:(id)a3
{
  v5 = OBJC_IVAR____TtC6MapsUI23MUPlaceActionDispatcher_actionManager;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = a3;
  v7 = a3;
}

- (_TtP6MapsUI31MUPlaceActionDispatcherDelegate_)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_TtC6MapsUI23MUPlaceActionDispatcher)initWithActionManager:(id)a3
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  *(self + OBJC_IVAR____TtC6MapsUI23MUPlaceActionDispatcher_actionManager) = a3;
  v8.receiver = self;
  v8.super_class = ObjectType;
  v6 = a3;
  return [(MUPlaceActionDispatcher *)&v8 init];
}

- (_TtC6MapsUI23MUPlaceActionDispatcher)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)performActionFor:(id)a3 environment:(id)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
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

  v10 = a3;
  v12 = a4;
  v11 = self;
  sub_1C5643490(v10, v12, v8, v9);

  sub_1C5632FA8(v8);
}

@end