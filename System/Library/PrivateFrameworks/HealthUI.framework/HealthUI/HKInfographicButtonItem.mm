@interface HKInfographicButtonItem
- (HKInfographicButtonItem)initWithConfiguration:(id)configuration buttonTapHandler:(id)handler;
@end

@implementation HKInfographicButtonItem

- (HKInfographicButtonItem)initWithConfiguration:(id)configuration buttonTapHandler:(id)handler
{
  configurationCopy = configuration;
  handlerCopy = handler;
  v14.receiver = self;
  v14.super_class = HKInfographicButtonItem;
  v8 = [(HKInfographicButtonItem *)&v14 init];
  if (v8)
  {
    v9 = [configurationCopy copy];
    configuration = v8->_configuration;
    v8->_configuration = v9;

    v11 = [handlerCopy copy];
    buttonTapHandler = v8->_buttonTapHandler;
    v8->_buttonTapHandler = v11;
  }

  return v8;
}

@end