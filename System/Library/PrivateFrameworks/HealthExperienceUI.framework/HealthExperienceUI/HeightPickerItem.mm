@interface HeightPickerItem
- (_TtC18HealthExperienceUI16HeightPickerItem)init;
- (id)pickerView:(id)view titleForRow:(int64_t)row forComponent:(int64_t)component;
- (int64_t)numberOfComponentsInPickerView:(id)view;
- (int64_t)pickerView:(id)view numberOfRowsInComponent:(int64_t)component;
- (void)pickerView:(id)view didSelectRow:(int64_t)row inComponent:(int64_t)component;
@end

@implementation HeightPickerItem

- (_TtC18HealthExperienceUI16HeightPickerItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (int64_t)numberOfComponentsInPickerView:(id)view
{
  selfCopy = self;
  v4 = sub_1BA3761BC();

  if (v4)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (int64_t)pickerView:(id)view numberOfRowsInComponent:(int64_t)component
{
  selfCopy = self;
  v6 = sub_1BA3761BC();

  v7 = 246;
  if (component)
  {
    v7 = 0;
  }

  v8 = 12;
  if (component != 1)
  {
    v8 = 0;
  }

  if (!component)
  {
    v8 = 9;
  }

  if (v6)
  {
    return v8;
  }

  else
  {
    return v7;
  }
}

- (id)pickerView:(id)view titleForRow:(int64_t)row forComponent:(int64_t)component
{
  viewCopy = view;
  selfCopy = self;
  sub_1BA376AF8(row, component);
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
  _s18HealthExperienceUI16HeightPickerItemC10pickerView_12didSelectRow11inComponentySo08UIPickerH0C_S2itF_0(viewCopy, row);
}

@end