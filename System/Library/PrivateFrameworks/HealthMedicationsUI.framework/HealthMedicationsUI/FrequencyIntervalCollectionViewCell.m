@interface FrequencyIntervalCollectionViewCell
- (id)pickerView:(id)a3 titleForRow:(int64_t)a4 forComponent:(int64_t)a5;
- (int64_t)pickerView:(id)a3 numberOfRowsInComponent:(int64_t)a4;
- (void)pickerView:(id)a3 didSelectRow:(int64_t)a4 inComponent:(int64_t)a5;
@end

@implementation FrequencyIntervalCollectionViewCell

- (int64_t)pickerView:(id)a3 numberOfRowsInComponent:(int64_t)a4
{
  v4 = *(sub_22830F9DC() + 16);

  return v4;
}

- (id)pickerView:(id)a3 titleForRow:(int64_t)a4 forComponent:(int64_t)a5
{
  result = sub_22830F9DC();
  if (a4 < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (*(result + 2) <= a4)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v7 = *(result + a4 + 4);

  sub_22830F6D4(0);
  v8 = sub_228391FC0();

  return v8;
}

- (void)pickerView:(id)a3 didSelectRow:(int64_t)a4 inComponent:(int64_t)a5
{
  v7 = a3;
  v8 = self;
  sub_2282B105C(a4);
}

@end