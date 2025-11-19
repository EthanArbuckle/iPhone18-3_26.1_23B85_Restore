@interface HKInfographicButtonItem
- (HKInfographicButtonItem)initWithConfiguration:(id)a3 buttonTapHandler:(id)a4;
@end

@implementation HKInfographicButtonItem

- (HKInfographicButtonItem)initWithConfiguration:(id)a3 buttonTapHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = HKInfographicButtonItem;
  v8 = [(HKInfographicButtonItem *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    configuration = v8->_configuration;
    v8->_configuration = v9;

    v11 = [v7 copy];
    buttonTapHandler = v8->_buttonTapHandler;
    v8->_buttonTapHandler = v11;
  }

  return v8;
}

@end