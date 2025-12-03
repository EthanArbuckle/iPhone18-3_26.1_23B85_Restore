@interface BiologicalSexPickerItem
- (_TtC18HealthExperienceUI23BiologicalSexPickerItem)init;
- (id)pickerView:(id)view titleForRow:(int64_t)row forComponent:(int64_t)component;
- (int64_t)pickerView:(id)view numberOfRowsInComponent:(int64_t)component;
- (void)pickerView:(id)view didSelectRow:(int64_t)row inComponent:(int64_t)component;
@end

@implementation BiologicalSexPickerItem

- (_TtC18HealthExperienceUI23BiologicalSexPickerItem)init
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

  else
  {
    return 3;
  }
}

- (id)pickerView:(id)view titleForRow:(int64_t)row forComponent:(int64_t)component
{
  sub_1BA31EE9C(row, component);
  if (v5)
  {
    v6 = sub_1BA4A6758();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)pickerView:(id)view didSelectRow:(int64_t)row inComponent:(int64_t)component
{
  viewCopy = view;
  selfCopy = self;
  sub_1BA31EF90(row, component);
}

@end