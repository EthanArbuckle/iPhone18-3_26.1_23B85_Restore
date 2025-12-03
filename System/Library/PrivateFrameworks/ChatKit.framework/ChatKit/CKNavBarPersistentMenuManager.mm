@interface CKNavBarPersistentMenuManager
- (_TtC7ChatKit22CKPersistentMenuButton)button;
- (_TtC7ChatKit29CKNavBarPersistentMenuManager)init;
- (_TtC7ChatKit29CKNavBarPersistentMenuManager)initWithDelegate:(id)delegate;
- (id)menuFrom:(id)from;
- (void)setButton:(id)button;
- (void)setupWithPersistentMenu:(id)menu;
@end

@implementation CKNavBarPersistentMenuManager

- (_TtC7ChatKit22CKPersistentMenuButton)button
{
  v3 = OBJC_IVAR____TtC7ChatKit29CKNavBarPersistentMenuManager_button;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setButton:(id)button
{
  v5 = OBJC_IVAR____TtC7ChatKit29CKNavBarPersistentMenuManager_button;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = button;
  buttonCopy = button;
}

- (_TtC7ChatKit29CKNavBarPersistentMenuManager)initWithDelegate:(id)delegate
{
  *(&self->super.isa + OBJC_IVAR____TtC7ChatKit29CKNavBarPersistentMenuManager_button) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v5.receiver = self;
  v5.super_class = type metadata accessor for CKNavBarPersistentMenuManager();
  return [(CKNavBarPersistentMenuManager *)&v5 init];
}

- (void)setupWithPersistentMenu:(id)menu
{
  menuCopy = menu;
  selfCopy = self;
  sub_1908DA424(menu);
}

- (id)menuFrom:(id)from
{
  fromCopy = from;
  selfCopy = self;
  v6 = sub_1908DA6E4(fromCopy);

  return v6;
}

- (_TtC7ChatKit29CKNavBarPersistentMenuManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end