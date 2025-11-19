@interface HKInfographicTitleDetailOptionalButtonItem
- (HKInfographicTitleDetailOptionalButtonItem)initWithTitle:(id)a3 detail:(id)a4 buttonTextString:(id)a5 buttonAction:(id)a6;
@end

@implementation HKInfographicTitleDetailOptionalButtonItem

- (HKInfographicTitleDetailOptionalButtonItem)initWithTitle:(id)a3 detail:(id)a4 buttonTextString:(id)a5 buttonAction:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v20.receiver = self;
  v20.super_class = HKInfographicTitleDetailOptionalButtonItem;
  v15 = [(HKInfographicTitleDetailOptionalButtonItem *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_titleString, a3);
    objc_storeStrong(&v16->_detailString, a4);
    objc_storeStrong(&v16->_buttonTextString, a5);
    v17 = _Block_copy(v14);
    buttonAction = v16->_buttonAction;
    v16->_buttonAction = v17;
  }

  return v16;
}

@end