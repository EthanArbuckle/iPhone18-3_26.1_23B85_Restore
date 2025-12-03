@interface HKInfographicTitleDetailOptionalButtonItem
- (HKInfographicTitleDetailOptionalButtonItem)initWithTitle:(id)title detail:(id)detail buttonTextString:(id)string buttonAction:(id)action;
@end

@implementation HKInfographicTitleDetailOptionalButtonItem

- (HKInfographicTitleDetailOptionalButtonItem)initWithTitle:(id)title detail:(id)detail buttonTextString:(id)string buttonAction:(id)action
{
  titleCopy = title;
  detailCopy = detail;
  stringCopy = string;
  actionCopy = action;
  v20.receiver = self;
  v20.super_class = HKInfographicTitleDetailOptionalButtonItem;
  v15 = [(HKInfographicTitleDetailOptionalButtonItem *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_titleString, title);
    objc_storeStrong(&v16->_detailString, detail);
    objc_storeStrong(&v16->_buttonTextString, string);
    v17 = _Block_copy(actionCopy);
    buttonAction = v16->_buttonAction;
    v16->_buttonAction = v17;
  }

  return v16;
}

@end