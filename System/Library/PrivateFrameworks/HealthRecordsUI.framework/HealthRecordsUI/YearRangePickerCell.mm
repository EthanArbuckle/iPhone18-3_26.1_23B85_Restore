@interface YearRangePickerCell
- (_TtC15HealthRecordsUI19YearRangePickerCell)initWithCoder:(id)coder;
- (_TtC15HealthRecordsUI19YearRangePickerCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (id)pickerView:(id)view titleForRow:(int64_t)row forComponent:(int64_t)component;
- (int64_t)pickerView:(id)view numberOfRowsInComponent:(int64_t)component;
- (void)pickerView:(id)view didSelectRow:(int64_t)row inComponent:(int64_t)component;
@end

@implementation YearRangePickerCell

- (_TtC15HealthRecordsUI19YearRangePickerCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
  {
    identifier = sub_1D139016C();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_1D1248264(style, identifier, v6);
}

- (_TtC15HealthRecordsUI19YearRangePickerCell)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC15HealthRecordsUI19YearRangePickerCell_dataSource) = 0;
  v4 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC15HealthRecordsUI19YearRangePickerCell_baseAccessibilityIdentifier);
  *v4 = 0;
  v4[1] = 0;
  v5 = OBJC_IVAR____TtC15HealthRecordsUI19YearRangePickerCell_pickerView;
  type metadata accessor for YearRangePickerView();
  *(&self->super.super.super.super.isa + v5) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  result = sub_1D13913BC();
  __break(1u);
  return result;
}

- (int64_t)pickerView:(id)view numberOfRowsInComponent:(int64_t)component
{
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC15HealthRecordsUI19YearRangePickerCell_dataSource);
  if (v4)
  {
    return *(*(v4 + OBJC_IVAR____TtC15HealthRecordsUI25YearRangePickerDataSource_pickerRange) + 16);
  }

  else
  {
    return 0;
  }
}

- (id)pickerView:(id)view titleForRow:(int64_t)row forComponent:(int64_t)component
{
  v5 = *(self + OBJC_IVAR____TtC15HealthRecordsUI19YearRangePickerCell_dataSource);
  if (v5)
  {
    if (row < 0)
    {
      __break(1u);
    }

    else
    {
      v6 = *&v5[OBJC_IVAR____TtC15HealthRecordsUI25YearRangePickerDataSource_pickerRange];
      if (*(v6 + 16) > row)
      {
        v7 = *(v6 + 8 * row + 32);
        selfCopy = self;

        sub_1D11F3C64(v7);

        v5 = sub_1D139012C();

        goto LABEL_5;
      }
    }

    __break(1u);
    return self;
  }

LABEL_5:

  return v5;
}

- (void)pickerView:(id)view didSelectRow:(int64_t)row inComponent:(int64_t)component
{
  viewCopy = view;
  selfCopy = self;
  sub_1D12489F0(viewCopy, row);
}

@end