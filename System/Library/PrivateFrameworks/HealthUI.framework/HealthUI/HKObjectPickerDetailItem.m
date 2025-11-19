@interface HKObjectPickerDetailItem
- (HKObjectPickerDetailItem)initWithPrimaryText:(id)a3 secondaryText:(id)a4;
@end

@implementation HKObjectPickerDetailItem

- (HKObjectPickerDetailItem)initWithPrimaryText:(id)a3 secondaryText:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = HKObjectPickerDetailItem;
  v8 = [(HKObjectPickerDetailItem *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    primaryText = v8->_primaryText;
    v8->_primaryText = v9;

    v11 = [v7 copy];
    secondaryText = v8->_secondaryText;
    v8->_secondaryText = v11;
  }

  return v8;
}

@end