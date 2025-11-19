@interface AccountUpgradeCell
- (UICellConfigurationState)_bridgedConfigurationState;
- (_TtC15HealthRecordsUI18AccountUpgradeCell)initWithFrame:(CGRect)a3;
- (void)_bridgedUpdateConfigurationUsingState:(id)a3;
@end

@implementation AccountUpgradeCell

- (UICellConfigurationState)_bridgedConfigurationState
{
  v3 = sub_1D138F20C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = self;
  sub_1D11BE26C();

  v8 = sub_1D138F1EC();
  (*(v4 + 8))(v6, v3);

  return v8;
}

- (void)_bridgedUpdateConfigurationUsingState:(id)a3
{
  v4 = sub_1D138F20C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D138F1FC();
  v8 = self;
  sub_1D11BE3E8();

  (*(v5 + 8))(v7, v4);
}

- (_TtC15HealthRecordsUI18AccountUpgradeCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self + OBJC_IVAR____TtC15HealthRecordsUI18AccountUpgradeCell_item;
  *v7 = 0u;
  *(v7 + 1) = 0u;
  *(v7 + 4) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC15HealthRecordsUI18AccountUpgradeCell_disableAction) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC15HealthRecordsUI18AccountUpgradeCell_hideDismiss) = 1;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC15HealthRecordsUI18AccountUpgradeCell_hasSetUpViews) = 0;
  v9.receiver = self;
  v9.super_class = type metadata accessor for AccountUpgradeCell();
  return [(AccountUpgradeCell *)&v9 initWithFrame:x, y, width, height];
}

@end