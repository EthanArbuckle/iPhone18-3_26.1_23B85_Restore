@interface NoDataUpgradeTileCell
- (_TtC15HealthRecordsUI21NoDataUpgradeTileCell)initWithCoder:(id)coder;
- (_TtC15HealthRecordsUI21NoDataUpgradeTileCell)initWithFrame:(CGRect)frame;
@end

@implementation NoDataUpgradeTileCell

- (_TtC15HealthRecordsUI21NoDataUpgradeTileCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC15HealthRecordsUI21NoDataUpgradeTileCell_tileView) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC15HealthRecordsUI21NoDataUpgradeTileCell_accounts) = MEMORY[0x1E69E7CC0];
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v10.receiver = self;
  v10.super_class = type metadata accessor for NoDataUpgradeTileCell();
  height = [(NoDataUpgradeTileCell *)&v10 initWithFrame:x, y, width, height];
  sub_1D1371544();

  return height;
}

- (_TtC15HealthRecordsUI21NoDataUpgradeTileCell)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC15HealthRecordsUI21NoDataUpgradeTileCell_tileView) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC15HealthRecordsUI21NoDataUpgradeTileCell_accounts) = MEMORY[0x1E69E7CC0];
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  result = sub_1D13913BC();
  __break(1u);
  return result;
}

@end