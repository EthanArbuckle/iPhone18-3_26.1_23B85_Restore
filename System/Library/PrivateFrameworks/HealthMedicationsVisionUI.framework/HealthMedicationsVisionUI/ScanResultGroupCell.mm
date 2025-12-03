@interface ScanResultGroupCell
- (_TtC25HealthMedicationsVisionUI19ScanResultGroupCell)initWithCoder:(id)coder;
- (_TtC25HealthMedicationsVisionUI19ScanResultGroupCell)initWithFrame:(CGRect)frame;
@end

@implementation ScanResultGroupCell

- (_TtC25HealthMedicationsVisionUI19ScanResultGroupCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
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
  height = [(ScanResultGroupCell *)&v12 initWithFrame:x, y, width, height];
  sub_2518EF6A8();
  sub_2518F0478();

  return height;
}

- (_TtC25HealthMedicationsVisionUI19ScanResultGroupCell)initWithCoder:(id)coder
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