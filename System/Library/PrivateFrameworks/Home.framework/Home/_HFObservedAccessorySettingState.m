@interface _HFObservedAccessorySettingState
+ (NAIdentity)na_identity;
+ (id)stateWithSettings:(id)a3 forSetting:(id)a4;
- (BOOL)isEqual:(id)a3;
- (_HFObservedAccessorySettingState)init;
- (_HFObservedAccessorySettingState)initWithSettings:(id)a3 setting:(id)a4;
- (unint64_t)hash;
@end

@implementation _HFObservedAccessorySettingState

+ (id)stateWithSettings:(id)a3 forSetting:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_alloc(objc_opt_class()) initWithSettings:v6 setting:v5];

  return v7;
}

- (_HFObservedAccessorySettingState)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithSettings_setting_);
  [v4 handleFailureInMethod:a2 object:self file:@"HFAccessorySettingAdapter.m" lineNumber:36 description:{@"%s is unavailable; use %@ instead", "-[_HFObservedAccessorySettingState init]", v5}];

  return 0;
}

- (_HFObservedAccessorySettingState)initWithSettings:(id)a3 setting:(id)a4
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v8)
  {
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v24 = [MEMORY[0x277CCA890] currentHandler];
    [v24 handleFailureInMethod:a2 object:self file:@"HFAccessorySettingAdapter.m" lineNumber:41 description:{@"Invalid parameter not satisfying: %@", @"settings"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  v25 = [MEMORY[0x277CCA890] currentHandler];
  [v25 handleFailureInMethod:a2 object:self file:@"HFAccessorySettingAdapter.m" lineNumber:42 description:{@"Invalid parameter not satisfying: %@", @"setting"}];

LABEL_3:
  v26.receiver = self;
  v26.super_class = _HFObservedAccessorySettingState;
  v11 = [(_HFObservedAccessorySettingState *)&v26 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_settings, a3);
    objc_storeStrong(&v12->_setting, a4);
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
    v17 = [v15 items];
    v18 = [v17 na_map:&__block_literal_global_38];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() na_identity];
  LOBYTE(self) = [v5 isObject:self equalToObject:v4];

  return self;
}

- (unint64_t)hash
{
  v3 = [objc_opt_class() na_identity];
  v4 = [v3 hashOfObject:self];

  return v4;
}

@end