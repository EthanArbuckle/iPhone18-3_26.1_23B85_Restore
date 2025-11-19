@interface BiologicalSexPickerItem
- (_TtC18HealthExperienceUI23BiologicalSexPickerItem)init;
- (id)pickerView:(id)a3 titleForRow:(int64_t)a4 forComponent:(int64_t)a5;
- (int64_t)pickerView:(id)a3 numberOfRowsInComponent:(int64_t)a4;
- (void)pickerView:(id)a3 didSelectRow:(int64_t)a4 inComponent:(int64_t)a5;
@end

@implementation BiologicalSexPickerItem

- (_TtC18HealthExperienceUI23BiologicalSexPickerItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (int64_t)pickerView:(id)a3 numberOfRowsInComponent:(int64_t)a4
{
  if (a4)
  {
    return 0;
  }

  else
  {
    return 3;
  }
}

- (id)pickerView:(id)a3 titleForRow:(int64_t)a4 forComponent:(int64_t)a5
{
  sub_1BA31EE9C(a4, a5);
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

- (void)pickerView:(id)a3 didSelectRow:(int64_t)a4 inComponent:(int64_t)a5
{
  v8 = a3;
  v9 = self;
  sub_1BA31EF90(a4, a5);
}

@end