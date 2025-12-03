@interface HMDSettingOnChangeAttachedUpdatesResult
- (HMDSettingOnChangeAttachedUpdatesResult)initWithSettingsToUpdate:(id)update models:(id)models onCommitCompletion:(id)completion;
@end

@implementation HMDSettingOnChangeAttachedUpdatesResult

- (HMDSettingOnChangeAttachedUpdatesResult)initWithSettingsToUpdate:(id)update models:(id)models onCommitCompletion:(id)completion
{
  updateCopy = update;
  modelsCopy = models;
  completionCopy = completion;
  v17.receiver = self;
  v17.super_class = HMDSettingOnChangeAttachedUpdatesResult;
  v11 = [(HMDSettingOnChangeAttachedUpdatesResult *)&v17 init];
  if (v11)
  {
    array = updateCopy;
    if (!updateCopy)
    {
      array = [MEMORY[0x277CBEA60] array];
    }

    objc_storeStrong(&v11->_settingsToUpdate, array);
    if (!updateCopy)
    {
    }

    array2 = modelsCopy;
    if (!modelsCopy)
    {
      array2 = [MEMORY[0x277CBEA60] array];
    }

    objc_storeStrong(&v11->_modelsToUpdate, array2);
    if (!modelsCopy)
    {
    }

    v14 = _Block_copy(completionCopy);
    onCommitCompletion = v11->_onCommitCompletion;
    v11->_onCommitCompletion = v14;
  }

  return v11;
}

@end