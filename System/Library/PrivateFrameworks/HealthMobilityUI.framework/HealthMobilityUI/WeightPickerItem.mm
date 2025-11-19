@interface WeightPickerItem
- (_TtC16HealthMobilityUI16WeightPickerItem)init;
- (id)pickerView:(id)a3 titleForRow:(int64_t)a4 forComponent:(int64_t)a5;
- (int64_t)pickerView:(id)a3 numberOfRowsInComponent:(int64_t)a4;
- (void)pickerView:(id)a3 didSelectRow:(int64_t)a4 inComponent:(int64_t)a5;
@end

@implementation WeightPickerItem

- (_TtC16HealthMobilityUI16WeightPickerItem)init
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

  v5 = self;
  sub_25199965C();
  v7 = v6;
  sub_251999674();
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

- (id)pickerView:(id)a3 titleForRow:(int64_t)a4 forComponent:(int64_t)a5
{
  v8 = a3;
  v9 = self;
  sub_25199A310(a4, a5);
  v11 = v10;

  if (v11)
  {
    v12 = sub_2519AEE28();
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
  sub_25199A408(a4);
}

@end