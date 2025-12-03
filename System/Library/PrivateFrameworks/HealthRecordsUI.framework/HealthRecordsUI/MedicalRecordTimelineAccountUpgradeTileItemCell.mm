@interface MedicalRecordTimelineAccountUpgradeTileItemCell
- (UICellConfigurationState)_bridgedConfigurationState;
- (_TtC15HealthRecordsUI47MedicalRecordTimelineAccountUpgradeTileItemCell)initWithCoder:(id)coder;
- (_TtC15HealthRecordsUI47MedicalRecordTimelineAccountUpgradeTileItemCell)initWithFrame:(CGRect)frame;
- (void)_bridgedUpdateConfigurationUsingState:(id)state;
- (void)dismissAction;
- (void)reloadDataSource;
- (void)upgradeAction;
@end

@implementation MedicalRecordTimelineAccountUpgradeTileItemCell

- (_TtC15HealthRecordsUI47MedicalRecordTimelineAccountUpgradeTileItemCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v7 = self + OBJC_IVAR____TtC15HealthRecordsUI47MedicalRecordTimelineAccountUpgradeTileItemCell_item;
  *v7 = 0u;
  *(v7 + 1) = 0u;
  *(v7 + 4) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC15HealthRecordsUI47MedicalRecordTimelineAccountUpgradeTileItemCell_hasRegisteredForNotifications) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC15HealthRecordsUI47MedicalRecordTimelineAccountUpgradeTileItemCell_tileView) = 0;
  v9.receiver = self;
  v9.super_class = type metadata accessor for MedicalRecordTimelineAccountUpgradeTileItemCell();
  return [(MedicalRecordTimelineAccountUpgradeTileItemCell *)&v9 initWithFrame:x, y, width, height];
}

- (_TtC15HealthRecordsUI47MedicalRecordTimelineAccountUpgradeTileItemCell)initWithCoder:(id)coder
{
  v4 = self + OBJC_IVAR____TtC15HealthRecordsUI47MedicalRecordTimelineAccountUpgradeTileItemCell_item;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC15HealthRecordsUI47MedicalRecordTimelineAccountUpgradeTileItemCell_hasRegisteredForNotifications) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC15HealthRecordsUI47MedicalRecordTimelineAccountUpgradeTileItemCell_tileView) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for MedicalRecordTimelineAccountUpgradeTileItemCell();
  coderCopy = coder;
  v6 = [(MedicalRecordTimelineAccountUpgradeTileItemCell *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

- (UICellConfigurationState)_bridgedConfigurationState
{
  v3 = sub_1D138F20C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  selfCopy = self;
  sub_1D118CD58();

  v8 = sub_1D138F1EC();
  (*(v4 + 8))(v6, v3);

  return v8;
}

- (void)_bridgedUpdateConfigurationUsingState:(id)state
{
  v4 = sub_1D138F20C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D138F1FC();
  selfCopy = self;
  sub_1D118D6F4();

  (*(v5 + 8))(v7, v4);
}

- (void)reloadDataSource
{
  sub_1D10EF534(0, &qword_1EE06A650, MEMORY[0x1E69E85F0]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11 - v4;
  v6 = sub_1D13905DC();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_1D13905AC();
  selfCopy = self;
  v8 = sub_1D139059C();
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E69E85E0];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = selfCopy;
  sub_1D1078B58(0, 0, v5, &unk_1D13A63F8, v9);
}

- (void)upgradeAction
{
  selfCopy = self;
  sub_1D118D97C();
}

- (void)dismissAction
{
  selfCopy = self;
  sub_1D118DE84();
}

@end