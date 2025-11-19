@interface MUPlaceActionBarController
- (_TtC6MapsUI23MUPlaceActionDispatcher)actionDispatcher;
- (_TtC6MapsUI26MUPlaceActionBarController)init;
- (_TtC6MapsUI26MUPlaceActionBarController)initWithActionDispatcher:(id)a3 delegate:(id)a4;
- (_TtP6MapsUI34MUPlaceActionBarControllerDelegate_)delegate;
- (void)setActionDispatcher:(id)a3;
- (void)updateWithLeadingItem:(id)a3 trailingItems:(id)a4 menuItems:(id)a5;
@end

@implementation MUPlaceActionBarController

- (_TtC6MapsUI23MUPlaceActionDispatcher)actionDispatcher
{
  v3 = OBJC_IVAR____TtC6MapsUI26MUPlaceActionBarController_actionDispatcher;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setActionDispatcher:(id)a3
{
  v5 = OBJC_IVAR____TtC6MapsUI26MUPlaceActionBarController_actionDispatcher;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = a3;
  v7 = a3;
}

- (_TtP6MapsUI34MUPlaceActionBarControllerDelegate_)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_TtC6MapsUI26MUPlaceActionBarController)initWithActionDispatcher:(id)a3 delegate:(id)a4
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  *(self + OBJC_IVAR____TtC6MapsUI26MUPlaceActionBarController_actionDispatcher) = a3;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v9.receiver = self;
  v9.super_class = ObjectType;
  v7 = a3;
  return [(MUPlaceActionBarController *)&v9 init];
}

- (void)updateWithLeadingItem:(id)a3 trailingItems:(id)a4 menuItems:(id)a5
{
  v6 = a4;
  if (a4)
  {
    type metadata accessor for MUPlaceActionBarItem();
    v6 = sub_1C584F770();
  }

  if (a5)
  {
    type metadata accessor for MUPlaceActionBarItem();
    a5 = sub_1C584F770();
  }

  v9 = a3;
  v10 = self;
  MUPlaceActionBarController.update(leadingItem:trailingItems:menuItems:)(a3, v6, a5);
}

- (_TtC6MapsUI26MUPlaceActionBarController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end