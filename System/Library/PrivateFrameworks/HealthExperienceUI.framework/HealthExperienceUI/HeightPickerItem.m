@interface HeightPickerItem
- (_TtC18HealthExperienceUI16HeightPickerItem)init;
- (id)pickerView:(id)a3 titleForRow:(int64_t)a4 forComponent:(int64_t)a5;
- (int64_t)numberOfComponentsInPickerView:(id)a3;
- (int64_t)pickerView:(id)a3 numberOfRowsInComponent:(int64_t)a4;
- (void)pickerView:(id)a3 didSelectRow:(int64_t)a4 inComponent:(int64_t)a5;
@end

@implementation HeightPickerItem

- (_TtC18HealthExperienceUI16HeightPickerItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (int64_t)numberOfComponentsInPickerView:(id)a3
{
  v3 = self;
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

- (int64_t)pickerView:(id)a3 numberOfRowsInComponent:(int64_t)a4
{
  v5 = self;
  v6 = sub_1BA3761BC();

  v7 = 246;
  if (a4)
  {
    v7 = 0;
  }

  v8 = 12;
  if (a4 != 1)
  {
    v8 = 0;
  }

  if (!a4)
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

- (id)pickerView:(id)a3 titleForRow:(int64_t)a4 forComponent:(int64_t)a5
{
  v8 = a3;
  v9 = self;
  sub_1BA376AF8(a4, a5);
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

- (void)pickerView:(id)a3 didSelectRow:(int64_t)a4 inComponent:(int64_t)a5
{
  v7 = a3;
  v8 = self;
  _s18HealthExperienceUI16HeightPickerItemC10pickerView_12didSelectRow11inComponentySo08UIPickerH0C_S2itF_0(v7, a4);
}

@end