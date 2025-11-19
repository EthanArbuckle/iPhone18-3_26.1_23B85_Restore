@interface MedicalRecordTimelineAccountReconnectItemCell
- (_TtC15HealthRecordsUI45MedicalRecordTimelineAccountReconnectItemCell)initWithCoder:(id)a3;
- (_TtC15HealthRecordsUI45MedicalRecordTimelineAccountReconnectItemCell)initWithFrame:(CGRect)a3;
@end

@implementation MedicalRecordTimelineAccountReconnectItemCell

- (_TtC15HealthRecordsUI45MedicalRecordTimelineAccountReconnectItemCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = self + OBJC_IVAR____TtC15HealthRecordsUI45MedicalRecordTimelineAccountReconnectItemCell_item;
  v9 = type metadata accessor for MedicalRecordTimelineAccountReconnectItemCell();
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  v11.receiver = self;
  v11.super_class = v9;
  return [(MedicalRecordTimelineAccountReconnectItemCell *)&v11 initWithFrame:x, y, width, height];
}

- (_TtC15HealthRecordsUI45MedicalRecordTimelineAccountReconnectItemCell)initWithCoder:(id)a3
{
  v4 = self + OBJC_IVAR____TtC15HealthRecordsUI45MedicalRecordTimelineAccountReconnectItemCell_item;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for MedicalRecordTimelineAccountReconnectItemCell();
  v5 = a3;
  v6 = [(MedicalRecordTimelineAccountReconnectItemCell *)&v8 initWithCoder:v5];

  if (v6)
  {
  }

  return v6;
}

@end