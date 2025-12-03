@interface MedicalRecordTimelineAccountUpgradeItemCell
- (_TtC15HealthRecordsUI43MedicalRecordTimelineAccountUpgradeItemCell)initWithCoder:(id)coder;
- (_TtC15HealthRecordsUI43MedicalRecordTimelineAccountUpgradeItemCell)initWithFrame:(CGRect)frame;
@end

@implementation MedicalRecordTimelineAccountUpgradeItemCell

- (_TtC15HealthRecordsUI43MedicalRecordTimelineAccountUpgradeItemCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = self + OBJC_IVAR____TtC15HealthRecordsUI43MedicalRecordTimelineAccountUpgradeItemCell_item;
  v9 = type metadata accessor for MedicalRecordTimelineAccountUpgradeItemCell();
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  v11.receiver = self;
  v11.super_class = v9;
  return [(MedicalRecordTimelineAccountUpgradeItemCell *)&v11 initWithFrame:x, y, width, height];
}

- (_TtC15HealthRecordsUI43MedicalRecordTimelineAccountUpgradeItemCell)initWithCoder:(id)coder
{
  v4 = self + OBJC_IVAR____TtC15HealthRecordsUI43MedicalRecordTimelineAccountUpgradeItemCell_item;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for MedicalRecordTimelineAccountUpgradeItemCell();
  coderCopy = coder;
  v6 = [(MedicalRecordTimelineAccountUpgradeItemCell *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

@end