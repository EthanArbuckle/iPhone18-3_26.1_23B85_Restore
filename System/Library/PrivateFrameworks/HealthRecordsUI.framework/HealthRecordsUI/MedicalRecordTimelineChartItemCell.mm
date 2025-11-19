@interface MedicalRecordTimelineChartItemCell
- (_TtC15HealthRecordsUI34MedicalRecordTimelineChartItemCell)initWithCoder:(id)a3;
- (_TtC15HealthRecordsUI34MedicalRecordTimelineChartItemCell)initWithFrame:(CGRect)a3;
- (void)didMoveToSuperview;
@end

@implementation MedicalRecordTimelineChartItemCell

- (_TtC15HealthRecordsUI34MedicalRecordTimelineChartItemCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = self + OBJC_IVAR____TtC15HealthRecordsUI34MedicalRecordTimelineChartItemCell_item;
  v9 = type metadata accessor for MedicalRecordTimelineChartItemCell();
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  v12.receiver = self;
  v12.super_class = v9;
  v10 = [(MedicalRecordTimelineChartItemCell *)&v12 initWithFrame:x, y, width, height];
  sub_1D137491C();

  return v10;
}

- (_TtC15HealthRecordsUI34MedicalRecordTimelineChartItemCell)initWithCoder:(id)a3
{
  v4 = self + OBJC_IVAR____TtC15HealthRecordsUI34MedicalRecordTimelineChartItemCell_item;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  v10.receiver = self;
  v10.super_class = type metadata accessor for MedicalRecordTimelineChartItemCell();
  v5 = a3;
  v6 = [(MedicalRecordTimelineChartItemCell *)&v10 initWithCoder:v5];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
    sub_1D137491C();
  }

  return v7;
}

- (void)didMoveToSuperview
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for MedicalRecordTimelineChartItemCell();
  v2 = v6.receiver;
  [(MedicalRecordTimelineChartItemCell *)&v6 didMoveToSuperview];
  v3 = OBJC_IVAR____TtC15HealthRecordsUI34MedicalRecordTimelineChartItemCell_item;
  swift_beginAccess();
  sub_1D10A71C0(v2 + v3, v4);
  if (v5)
  {
    sub_1D10A72B8(v4);
    sub_1D1375110();
  }

  else
  {

    sub_1D10A72B8(v4);
  }
}

@end