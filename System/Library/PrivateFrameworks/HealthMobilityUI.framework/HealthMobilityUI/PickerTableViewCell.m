@interface PickerTableViewCell
- (_TtC16HealthMobilityUI19PickerTableViewCell)initWithCoder:(id)a3;
- (_TtC16HealthMobilityUI19PickerTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
@end

@implementation PickerTableViewCell

- (_TtC16HealthMobilityUI19PickerTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
  {
    v4 = sub_2519AEE38();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  return sub_251980EAC(v4, v5);
}

- (_TtC16HealthMobilityUI19PickerTableViewCell)initWithCoder:(id)a3
{
  v3 = self + OBJC_IVAR____TtC16HealthMobilityUI19PickerTableViewCell_item;
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  result = sub_2519AF198();
  __break(1u);
  return result;
}

@end