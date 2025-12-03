@interface FrequencyIntervalCollectionViewCell
- (id)pickerView:(id)view titleForRow:(int64_t)row forComponent:(int64_t)component;
- (int64_t)pickerView:(id)view numberOfRowsInComponent:(int64_t)component;
- (void)pickerView:(id)view didSelectRow:(int64_t)row inComponent:(int64_t)component;
@end

@implementation FrequencyIntervalCollectionViewCell

- (int64_t)pickerView:(id)view numberOfRowsInComponent:(int64_t)component
{
  v4 = *(sub_22830F9DC() + 16);

  return v4;
}

- (id)pickerView:(id)view titleForRow:(int64_t)row forComponent:(int64_t)component
{
  result = sub_22830F9DC();
  if (row < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (*(result + 2) <= row)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v7 = *(result + row + 4);

  sub_22830F6D4(0);
  v8 = sub_228391FC0();

  return v8;
}

- (void)pickerView:(id)view didSelectRow:(int64_t)row inComponent:(int64_t)component
{
  viewCopy = view;
  selfCopy = self;
  sub_2282B105C(row);
}

@end