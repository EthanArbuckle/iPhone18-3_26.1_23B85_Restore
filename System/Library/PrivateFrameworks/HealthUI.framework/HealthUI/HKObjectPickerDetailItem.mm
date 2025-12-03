@interface HKObjectPickerDetailItem
- (HKObjectPickerDetailItem)initWithPrimaryText:(id)text secondaryText:(id)secondaryText;
@end

@implementation HKObjectPickerDetailItem

- (HKObjectPickerDetailItem)initWithPrimaryText:(id)text secondaryText:(id)secondaryText
{
  textCopy = text;
  secondaryTextCopy = secondaryText;
  v14.receiver = self;
  v14.super_class = HKObjectPickerDetailItem;
  v8 = [(HKObjectPickerDetailItem *)&v14 init];
  if (v8)
  {
    v9 = [textCopy copy];
    primaryText = v8->_primaryText;
    v8->_primaryText = v9;

    v11 = [secondaryTextCopy copy];
    secondaryText = v8->_secondaryText;
    v8->_secondaryText = v11;
  }

  return v8;
}

@end