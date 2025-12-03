@interface _HFObservedAccessorySettingState
+ (NAIdentity)na_identity;
+ (id)stateWithSettings:(id)settings forSetting:(id)setting;
- (BOOL)isEqual:(id)equal;
- (_HFObservedAccessorySettingState)init;
- (_HFObservedAccessorySettingState)initWithSettings:(id)settings setting:(id)setting;
- (unint64_t)hash;
@end

@implementation _HFObservedAccessorySettingState

+ (id)stateWithSettings:(id)settings forSetting:(id)setting
{
  settingCopy = setting;
  settingsCopy = settings;
  v7 = [objc_alloc(objc_opt_class()) initWithSettings:settingsCopy setting:settingCopy];

  return v7;
}

- (_HFObservedAccessorySettingState)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithSettings_setting_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFAccessorySettingAdapter.m" lineNumber:36 description:{@"%s is unavailable; use %@ instead", "-[_HFObservedAccessorySettingState init]", v5}];

  return 0;
}

- (_HFObservedAccessorySettingState)initWithSettings:(id)settings setting:(id)setting
{
  settingsCopy = settings;
  settingCopy = setting;
  v10 = settingCopy;
  if (settingsCopy)
  {
    if (settingCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HFAccessorySettingAdapter.m" lineNumber:41 description:{@"Invalid parameter not satisfying: %@", @"settings"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"HFAccessorySettingAdapter.m" lineNumber:42 description:{@"Invalid parameter not satisfying: %@", @"setting"}];

LABEL_3:
  v26.receiver = self;
  v26.super_class = _HFObservedAccessorySettingState;
  v11 = [(_HFObservedAccessorySettingState *)&v26 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_settings, settings);
    objc_storeStrong(&v12->_setting, setting);
    objc_opt_class();
    v13 = v10;
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;

    v16 = MEMORY[0x277CBEB98];
    items = [v15 items];
    v18 = [items na_map:&__block_literal_global_38];
    v19 = [v16 setWithArray:v18];
    v20 = v19;
    if (v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = [MEMORY[0x277CBEB98] set];
    }

    selectionOptions = v12->_selectionOptions;
    v12->_selectionOptions = v21;
  }

  return v12;
}

+ (NAIdentity)na_identity
{
  if (_MergedGlobals_229 != -1)
  {
    dispatch_once(&_MergedGlobals_229, &__block_literal_global_23_0);
  }

  v3 = qword_280E02CE8;

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  na_identity = [objc_opt_class() na_identity];
  LOBYTE(self) = [na_identity isObject:self equalToObject:equalCopy];

  return self;
}

- (unint64_t)hash
{
  na_identity = [objc_opt_class() na_identity];
  v4 = [na_identity hashOfObject:self];

  return v4;
}

@end