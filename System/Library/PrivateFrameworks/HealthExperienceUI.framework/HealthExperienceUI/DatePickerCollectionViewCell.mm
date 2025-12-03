@interface DatePickerCollectionViewCell
- (void)pickerDateChanged:(id)changed;
@end

@implementation DatePickerCollectionViewCell

- (void)pickerDateChanged:(id)changed
{
  changedCopy = changed;
  selfCopy = self;
  sub_1BA47A9EC(changedCopy);
}

@end