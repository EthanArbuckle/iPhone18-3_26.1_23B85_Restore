@interface CKNavBarPersistentMenuManager
- (_TtC7ChatKit22CKPersistentMenuButton)button;
- (_TtC7ChatKit29CKNavBarPersistentMenuManager)init;
- (_TtC7ChatKit29CKNavBarPersistentMenuManager)initWithDelegate:(id)a3;
- (id)menuFrom:(id)a3;
- (void)setButton:(id)a3;
- (void)setupWithPersistentMenu:(id)a3;
@end

@implementation CKNavBarPersistentMenuManager

- (_TtC7ChatKit22CKPersistentMenuButton)button
{
  v3 = OBJC_IVAR____TtC7ChatKit29CKNavBarPersistentMenuManager_button;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setButton:(id)a3
{
  v5 = OBJC_IVAR____TtC7ChatKit29CKNavBarPersistentMenuManager_button;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = a3;
  v7 = a3;
}

- (_TtC7ChatKit29CKNavBarPersistentMenuManager)initWithDelegate:(id)a3
{
  *(&self->super.isa + OBJC_IVAR____TtC7ChatKit29CKNavBarPersistentMenuManager_button) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v5.receiver = self;
  v5.super_class = type metadata accessor for CKNavBarPersistentMenuManager();
  return [(CKNavBarPersistentMenuManager *)&v5 init];
}

- (void)setupWithPersistentMenu:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1908DA424(a3);
}

- (id)menuFrom:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1908DA6E4(v4);

  return v6;
}

- (_TtC7ChatKit29CKNavBarPersistentMenuManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end