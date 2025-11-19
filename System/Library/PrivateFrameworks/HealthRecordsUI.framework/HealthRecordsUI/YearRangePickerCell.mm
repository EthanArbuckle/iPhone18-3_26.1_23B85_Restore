@interface YearRangePickerCell
- (_TtC15HealthRecordsUI19YearRangePickerCell)initWithCoder:(id)a3;
- (_TtC15HealthRecordsUI19YearRangePickerCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (id)pickerView:(id)a3 titleForRow:(int64_t)a4 forComponent:(int64_t)a5;
- (int64_t)pickerView:(id)a3 numberOfRowsInComponent:(int64_t)a4;
- (void)pickerView:(id)a3 didSelectRow:(int64_t)a4 inComponent:(int64_t)a5;
@end

@implementation YearRangePickerCell

- (_TtC15HealthRecordsUI19YearRangePickerCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
  {
    a4 = sub_1D139016C();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_1D1248264(a3, a4, v6);
}

- (_TtC15HealthRecordsUI19YearRangePickerCell)initWithCoder:(id)a3
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

- (int64_t)pickerView:(id)a3 numberOfRowsInComponent:(int64_t)a4
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

- (id)pickerView:(id)a3 titleForRow:(int64_t)a4 forComponent:(int64_t)a5
{
  v5 = *(self + OBJC_IVAR____TtC15HealthRecordsUI19YearRangePickerCell_dataSource);
  if (v5)
  {
    if (a4 < 0)
    {
      __break(1u);
    }

    else
    {
      v6 = *&v5[OBJC_IVAR____TtC15HealthRecordsUI25YearRangePickerDataSource_pickerRange];
      if (*(v6 + 16) > a4)
      {
        v7 = *(v6 + 8 * a4 + 32);
        v8 = self;

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

- (void)pickerView:(id)a3 didSelectRow:(int64_t)a4 inComponent:(int64_t)a5
{
  v7 = a3;
  v8 = self;
  sub_1D12489F0(v7, a4);
}

@end