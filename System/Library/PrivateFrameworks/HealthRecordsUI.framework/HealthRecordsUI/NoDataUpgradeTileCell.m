@interface NoDataUpgradeTileCell
- (_TtC15HealthRecordsUI21NoDataUpgradeTileCell)initWithCoder:(id)a3;
- (_TtC15HealthRecordsUI21NoDataUpgradeTileCell)initWithFrame:(CGRect)a3;
@end

@implementation NoDataUpgradeTileCell

- (_TtC15HealthRecordsUI21NoDataUpgradeTileCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC15HealthRecordsUI21NoDataUpgradeTileCell_tileView) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC15HealthRecordsUI21NoDataUpgradeTileCell_accounts) = MEMORY[0x1E69E7CC0];
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v10.receiver = self;
  v10.super_class = type metadata accessor for NoDataUpgradeTileCell();
  v8 = [(NoDataUpgradeTileCell *)&v10 initWithFrame:x, y, width, height];
  sub_1D1371544();

  return v8;
}

- (_TtC15HealthRecordsUI21NoDataUpgradeTileCell)initWithCoder:(id)a3
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