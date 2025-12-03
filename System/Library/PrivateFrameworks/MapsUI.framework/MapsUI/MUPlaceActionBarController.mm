@interface MUPlaceActionBarController
- (_TtC6MapsUI23MUPlaceActionDispatcher)actionDispatcher;
- (_TtC6MapsUI26MUPlaceActionBarController)init;
- (_TtC6MapsUI26MUPlaceActionBarController)initWithActionDispatcher:(id)dispatcher delegate:(id)delegate;
- (_TtP6MapsUI34MUPlaceActionBarControllerDelegate_)delegate;
- (void)setActionDispatcher:(id)dispatcher;
- (void)updateWithLeadingItem:(id)item trailingItems:(id)items menuItems:(id)menuItems;
@end

@implementation MUPlaceActionBarController

- (_TtC6MapsUI23MUPlaceActionDispatcher)actionDispatcher
{
  v3 = OBJC_IVAR____TtC6MapsUI26MUPlaceActionBarController_actionDispatcher;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setActionDispatcher:(id)dispatcher
{
  v5 = OBJC_IVAR____TtC6MapsUI26MUPlaceActionBarController_actionDispatcher;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = dispatcher;
  dispatcherCopy = dispatcher;
}

- (_TtP6MapsUI34MUPlaceActionBarControllerDelegate_)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_TtC6MapsUI26MUPlaceActionBarController)initWithActionDispatcher:(id)dispatcher delegate:(id)delegate
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  *(self + OBJC_IVAR____TtC6MapsUI26MUPlaceActionBarController_actionDispatcher) = dispatcher;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v9.receiver = self;
  v9.super_class = ObjectType;
  dispatcherCopy = dispatcher;
  return [(MUPlaceActionBarController *)&v9 init];
}

- (void)updateWithLeadingItem:(id)item trailingItems:(id)items menuItems:(id)menuItems
{
  itemsCopy = items;
  if (items)
  {
    type metadata accessor for MUPlaceActionBarItem();
    itemsCopy = sub_1C584F770();
  }

  if (menuItems)
  {
    type metadata accessor for MUPlaceActionBarItem();
    menuItems = sub_1C584F770();
  }

  itemCopy = item;
  selfCopy = self;
  MUPlaceActionBarController.update(leadingItem:trailingItems:menuItems:)(item, itemsCopy, menuItems);
}

- (_TtC6MapsUI26MUPlaceActionBarController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end