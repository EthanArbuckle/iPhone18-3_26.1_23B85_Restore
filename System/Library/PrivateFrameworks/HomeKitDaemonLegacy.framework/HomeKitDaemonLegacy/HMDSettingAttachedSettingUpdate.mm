@interface HMDSettingAttachedSettingUpdate
- (HMDSettingAttachedSettingUpdate)initWithKeyPath:(id)path settingValue:(id)value;
@end

@implementation HMDSettingAttachedSettingUpdate

- (HMDSettingAttachedSettingUpdate)initWithKeyPath:(id)path settingValue:(id)value
{
  pathCopy = path;
  valueCopy = value;
  v12.receiver = self;
  v12.super_class = HMDSettingAttachedSettingUpdate;
  v9 = [(HMDSettingAttachedSettingUpdate *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_keyPath, path);
    objc_storeStrong(&v10->_settingValue, value);
  }

  return v10;
}

@end