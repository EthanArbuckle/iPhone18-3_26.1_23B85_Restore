@interface MedicalRecordTimelineAccountDetailsItemCell
- (_TtC15HealthRecordsUI43MedicalRecordTimelineAccountDetailsItemCell)initWithCoder:(id)coder;
- (_TtC15HealthRecordsUI43MedicalRecordTimelineAccountDetailsItemCell)initWithFrame:(CGRect)frame;
@end

@implementation MedicalRecordTimelineAccountDetailsItemCell

- (_TtC15HealthRecordsUI43MedicalRecordTimelineAccountDetailsItemCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = self + OBJC_IVAR____TtC15HealthRecordsUI43MedicalRecordTimelineAccountDetailsItemCell_item;
  v9 = type metadata accessor for MedicalRecordTimelineAccountDetailsItemCell();
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  v11.receiver = self;
  v11.super_class = v9;
  return [(MedicalRecordTimelineAccountDetailsItemCell *)&v11 initWithFrame:x, y, width, height];
}

- (_TtC15HealthRecordsUI43MedicalRecordTimelineAccountDetailsItemCell)initWithCoder:(id)coder
{
  v4 = self + OBJC_IVAR____TtC15HealthRecordsUI43MedicalRecordTimelineAccountDetailsItemCell_item;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for MedicalRecordTimelineAccountDetailsItemCell();
  coderCopy = coder;
  v6 = [(MedicalRecordTimelineAccountDetailsItemCell *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

@end