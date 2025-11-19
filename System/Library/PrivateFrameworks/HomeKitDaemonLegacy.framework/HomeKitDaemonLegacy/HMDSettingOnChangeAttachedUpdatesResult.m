@interface HMDSettingOnChangeAttachedUpdatesResult
- (HMDSettingOnChangeAttachedUpdatesResult)initWithSettingsToUpdate:(id)a3 models:(id)a4 onCommitCompletion:(id)a5;
@end

@implementation HMDSettingOnChangeAttachedUpdatesResult

- (HMDSettingOnChangeAttachedUpdatesResult)initWithSettingsToUpdate:(id)a3 models:(id)a4 onCommitCompletion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17.receiver = self;
  v17.super_class = HMDSettingOnChangeAttachedUpdatesResult;
  v11 = [(HMDSettingOnChangeAttachedUpdatesResult *)&v17 init];
  if (v11)
  {
    v12 = v8;
    if (!v8)
    {
      v12 = [MEMORY[0x277CBEA60] array];
    }

    objc_storeStrong(&v11->_settingsToUpdate, v12);
    if (!v8)
    {
    }

    v13 = v9;
    if (!v9)
    {
      v13 = [MEMORY[0x277CBEA60] array];
    }

    objc_storeStrong(&v11->_modelsToUpdate, v13);
    if (!v9)
    {
    }

    v14 = _Block_copy(v10);
    onCommitCompletion = v11->_onCommitCompletion;
    v11->_onCommitCompletion = v14;
  }

  return v11;
}

@end