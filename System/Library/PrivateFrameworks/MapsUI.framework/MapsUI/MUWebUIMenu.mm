@interface MUWebUIMenu
- (_TtC6MapsUI11MUWebUIMenu)initWithCoder:(id)coder;
- (_TtC6MapsUI11MUWebUIMenu)initWithFrame:(CGRect)frame;
- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location;
@end

@implementation MUWebUIMenu

- (_TtC6MapsUI11MUWebUIMenu)initWithCoder:(id)coder
{
  *(&self->super.super.super._responderFlags + OBJC_IVAR____TtC6MapsUI11MUWebUIMenu_delegate) = 0;
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC6MapsUI11MUWebUIMenu_mapItem) = 0;
  result = sub_1C584FD00();
  __break(1u);
  return result;
}

- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location
{
  sub_1C5626E40(0, &qword_1EC171138, 0x1E69DC8D8);
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = sub_1C5773E28(0, 0, 0, sub_1C5774B60, v4);

  return v5;
}

- (_TtC6MapsUI11MUWebUIMenu)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end