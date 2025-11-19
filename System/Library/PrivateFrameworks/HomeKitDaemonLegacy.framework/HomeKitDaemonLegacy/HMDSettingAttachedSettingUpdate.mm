@interface HMDSettingAttachedSettingUpdate
- (HMDSettingAttachedSettingUpdate)initWithKeyPath:(id)a3 settingValue:(id)a4;
@end

@implementation HMDSettingAttachedSettingUpdate

- (HMDSettingAttachedSettingUpdate)initWithKeyPath:(id)a3 settingValue:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HMDSettingAttachedSettingUpdate;
  v9 = [(HMDSettingAttachedSettingUpdate *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_keyPath, a3);
    objc_storeStrong(&v10->_settingValue, a4);
  }

  return v10;
}

@end