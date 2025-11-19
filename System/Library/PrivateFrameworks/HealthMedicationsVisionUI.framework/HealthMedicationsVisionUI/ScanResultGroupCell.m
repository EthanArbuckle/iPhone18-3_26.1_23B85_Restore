@interface ScanResultGroupCell
- (_TtC25HealthMedicationsVisionUI19ScanResultGroupCell)initWithCoder:(id)a3;
- (_TtC25HealthMedicationsVisionUI19ScanResultGroupCell)initWithFrame:(CGRect)a3;
@end

@implementation ScanResultGroupCell

- (_TtC25HealthMedicationsVisionUI19ScanResultGroupCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  sub_2518F0278();
  sub_2518F0268();
  sub_2518F0218();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = self + OBJC_IVAR____TtC25HealthMedicationsVisionUI19ScanResultGroupCell_item;
  v9 = type metadata accessor for ScanResultGroupCell();
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  v12.receiver = self;
  v12.super_class = v9;
  v10 = [(ScanResultGroupCell *)&v12 initWithFrame:x, y, width, height];
  sub_2518EF6A8();
  sub_2518F0478();

  return v10;
}

- (_TtC25HealthMedicationsVisionUI19ScanResultGroupCell)initWithCoder:(id)a3
{
  sub_2518F0278();
  sub_2518F0268();
  sub_2518F0218();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = self + OBJC_IVAR____TtC25HealthMedicationsVisionUI19ScanResultGroupCell_item;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  result = sub_2518F0778();
  __break(1u);
  return result;
}

@end