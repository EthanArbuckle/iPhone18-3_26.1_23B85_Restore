@interface DVTDeviceGlobalStatusIndicatorConfiguration
- (DVTDeviceGlobalStatusIndicatorConfiguration)initWithTitle:(id)title informationText:(id)text;
@end

@implementation DVTDeviceGlobalStatusIndicatorConfiguration

- (DVTDeviceGlobalStatusIndicatorConfiguration)initWithTitle:(id)title informationText:(id)text
{
  titleCopy = title;
  textCopy = text;
  v12.receiver = self;
  v12.super_class = DVTDeviceGlobalStatusIndicatorConfiguration;
  v9 = [(DVTDeviceGlobalStatusIndicatorConfiguration *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_title, title);
    objc_storeStrong(&v10->_informationText, text);
  }

  return v10;
}

@end