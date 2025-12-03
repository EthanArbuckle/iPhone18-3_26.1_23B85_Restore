@interface CalendarDatePickerCollectionViewCell
- (void)pickerDateChanged:(id)changed;
@end

@implementation CalendarDatePickerCollectionViewCell

- (void)pickerDateChanged:(id)changed
{
  changedCopy = changed;
  selfCopy = self;
  sub_1BA0ABB44(changedCopy);
}

@end