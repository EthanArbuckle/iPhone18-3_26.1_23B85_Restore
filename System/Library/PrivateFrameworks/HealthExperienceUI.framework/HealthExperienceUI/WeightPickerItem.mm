@interface WeightPickerItem
- (_TtC18HealthExperienceUI16WeightPickerItem)init;
- (id)pickerView:(id)view titleForRow:(int64_t)row forComponent:(int64_t)component;
- (int64_t)pickerView:(id)view numberOfRowsInComponent:(int64_t)component;
- (void)pickerView:(id)view didSelectRow:(int64_t)row inComponent:(int64_t)component;
@end

@implementation WeightPickerItem

- (_TtC18HealthExperienceUI16WeightPickerItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (int64_t)pickerView:(id)view numberOfRowsInComponent:(int64_t)component
{
  if (component)
  {
    return 0;
  }

  selfCopy = self;
  sub_1BA3C5FC0();
  v7 = v6;
  sub_1BA3C5FD8();
  v9 = v8;

  v10 = v7 - v9;
  if (__OFSUB__(v7, v9))
  {
    __break(1u);
    goto LABEL_7;
  }

  result = v10 + 1;
  if (__OFADD__(v10, 1))
  {
LABEL_7:
    __break(1u);
  }

  return result;
}

- (id)pickerView:(id)view titleForRow:(int64_t)row forComponent:(int64_t)component
{
  viewCopy = view;
  selfCopy = self;
  sub_1BA3C69D4(row, component);
  v11 = v10;

  if (v11)
  {
    v12 = sub_1BA4A6758();
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)pickerView:(id)view didSelectRow:(int64_t)row inComponent:(int64_t)component
{
  viewCopy = view;
  selfCopy = self;
  sub_1BA3C6ACC(row);
}

@end