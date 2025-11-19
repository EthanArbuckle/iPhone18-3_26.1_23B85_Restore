@interface MedicalRecordTimelineAccountUpgradeItemCell
- (_TtC15HealthRecordsUI43MedicalRecordTimelineAccountUpgradeItemCell)initWithCoder:(id)a3;
- (_TtC15HealthRecordsUI43MedicalRecordTimelineAccountUpgradeItemCell)initWithFrame:(CGRect)a3;
@end

@implementation MedicalRecordTimelineAccountUpgradeItemCell

- (_TtC15HealthRecordsUI43MedicalRecordTimelineAccountUpgradeItemCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = self + OBJC_IVAR____TtC15HealthRecordsUI43MedicalRecordTimelineAccountUpgradeItemCell_item;
  v9 = type metadata accessor for MedicalRecordTimelineAccountUpgradeItemCell();
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  v11.receiver = self;
  v11.super_class = v9;
  return [(MedicalRecordTimelineAccountUpgradeItemCell *)&v11 initWithFrame:x, y, width, height];
}

- (_TtC15HealthRecordsUI43MedicalRecordTimelineAccountUpgradeItemCell)initWithCoder:(id)a3
{
  v4 = self + OBJC_IVAR____TtC15HealthRecordsUI43MedicalRecordTimelineAccountUpgradeItemCell_item;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for MedicalRecordTimelineAccountUpgradeItemCell();
  v5 = a3;
  v6 = [(MedicalRecordTimelineAccountUpgradeItemCell *)&v8 initWithCoder:v5];

  if (v6)
  {
  }

  return v6;
}

@end