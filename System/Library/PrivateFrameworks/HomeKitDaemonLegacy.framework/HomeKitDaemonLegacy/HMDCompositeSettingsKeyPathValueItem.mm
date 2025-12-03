@interface HMDCompositeSettingsKeyPathValueItem
- (HMDCompositeSettingsKeyPathValueItem)initWithKeyPath:(id)path value:(id)value;
@end

@implementation HMDCompositeSettingsKeyPathValueItem

- (HMDCompositeSettingsKeyPathValueItem)initWithKeyPath:(id)path value:(id)value
{
  pathCopy = path;
  valueCopy = value;
  v12.receiver = self;
  v12.super_class = HMDCompositeSettingsKeyPathValueItem;
  v9 = [(HMDCompositeSettingsKeyPathValueItem *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_keyPath, path);
    objc_storeStrong(&v10->_value, value);
  }

  return v10;
}

@end