@interface HUTriggerDurationModuleController
- (Class)cellClassForItem:(id)a3;
- (HUTriggerDurationModuleControllerDelegate)delegate;
- (id)_durationEventBuilder;
- (unint64_t)didSelectItem:(id)a3;
- (void)durationPicker:(id)a3 didSelectDuration:(id)a4;
- (void)setupCell:(id)a3 forItem:(id)a4;
- (void)updateCell:(id)a3 forItem:(id)a4 animated:(BOOL)a5;
@end

@implementation HUTriggerDurationModuleController

- (Class)cellClassForItem:(id)a3
{
  v4 = a3;
  v5 = [(HUItemModuleController *)self module];
  v6 = [v5 durationSummaryItem];

  if (v6 != v4)
  {
    v7 = [(HUItemModuleController *)self module];
    [v7 durationPickerItem];
  }

  v8 = objc_opt_class();

  return v8;
}

- (void)setupCell:(id)a3 forItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v21.receiver = self;
  v21.super_class = HUTriggerDurationModuleController;
  [(HUItemModuleController *)&v21 setupCell:v6 forItem:v7];
  v8 = [(HUItemModuleController *)self module];
  v9 = [v8 durationSummaryItem];
  v10 = [v7 isEqual:v9];

  if (v10)
  {
    objc_opt_class();
    v11 = v6;
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;

    [v13 setHideIcon:1];
    [v13 setValueColorFollowsTintColor:1];
    goto LABEL_15;
  }

  v14 = [(HUItemModuleController *)self module];
  v15 = [v14 durationPickerItem];

  if (v15 == v7)
  {
    v16 = objc_opt_class();
    v17 = v6;
    if (v17)
    {
      if (objc_opt_isKindOfClass())
      {
        v18 = v17;
      }

      else
      {
        v18 = 0;
      }

      v13 = v17;
      if (v18)
      {
        goto LABEL_14;
      }

      v19 = [MEMORY[0x277CCA890] currentHandler];
      v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
      [v19 handleFailureInFunction:v20 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v16, objc_opt_class()}];
    }

    v13 = 0;
LABEL_14:

    [v13 setDelegate:self];
LABEL_15:
  }
}

- (void)updateCell:(id)a3 forItem:(id)a4 animated:(BOOL)a5
{
  v21 = a3;
  v7 = a4;
  v8 = [(HUItemModuleController *)self module];
  v9 = [v8 durationPickerItem];
  v10 = [v7 isEqual:v9];

  if (v10)
  {
    v11 = objc_opt_class();
    v12 = v21;
    if (v12)
    {
      if (objc_opt_isKindOfClass())
      {
        v13 = v12;
      }

      else
      {
        v13 = 0;
      }

      v14 = v12;
      if (v13)
      {
        goto LABEL_9;
      }

      v15 = [MEMORY[0x277CCA890] currentHandler];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
      [v15 handleFailureInFunction:v16 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v11, objc_opt_class()}];
    }

    v14 = 0;
LABEL_9:

    v17 = [(HUTriggerDurationModuleController *)self _durationEventBuilder];
    v18 = v17;
    if (v17)
    {
      v19 = MEMORY[0x277CCABB0];
      [v17 duration];
      v20 = [v19 numberWithDouble:?];
      [v14 setCurrentDuration:v20];
    }

    else
    {
      [v14 setCurrentDuration:0];
    }
  }
}

- (unint64_t)didSelectItem:(id)a3
{
  v4 = a3;
  v5 = [(HUItemModuleController *)self module];
  v6 = [v5 durationSummaryItem];

  if (v6 == v4)
  {
    v7 = [(HUItemModuleController *)self module];
    v8 = [v7 durationPickerShown];

    v9 = [(HUItemModuleController *)self module];
    [v9 setDurationPickerShown:v8 ^ 1u];

    if ((v8 & 1) == 0)
    {
      v10 = [(HUTriggerDurationModuleController *)self delegate];
      v11 = [(HUItemModuleController *)self module];
      v12 = [v11 durationPickerItem];
      [v10 durationModuleController:self requestsScrollToItem:v12];
    }
  }

  return 0;
}

- (void)durationPicker:(id)a3 didSelectDuration:(id)a4
{
  v10 = a4;
  if (v10)
  {
    v5 = objc_alloc_init(MEMORY[0x277D14630]);
    [v10 doubleValue];
    [v5 setDuration:?];
    v6 = [(HUItemModuleController *)self module];
    v7 = [v6 triggerBuilder];
    [v7 setEndEvent:v5];
  }

  else
  {
    v5 = [(HUItemModuleController *)self module];
    v6 = [v5 triggerBuilder];
    [v6 removeAllEndEventBuilders];
  }

  v8 = [(HUItemModuleController *)self module];
  v9 = [v8 itemManager];
  [v9 triggerBuilderDidChange];
}

- (id)_durationEventBuilder
{
  v2 = [(HUItemModuleController *)self module];
  v3 = [v2 triggerBuilder];
  v4 = [v3 designatedDurationEventBuilder];

  return v4;
}

- (HUTriggerDurationModuleControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end