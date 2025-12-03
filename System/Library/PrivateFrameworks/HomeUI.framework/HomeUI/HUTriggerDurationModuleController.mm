@interface HUTriggerDurationModuleController
- (Class)cellClassForItem:(id)item;
- (HUTriggerDurationModuleControllerDelegate)delegate;
- (id)_durationEventBuilder;
- (unint64_t)didSelectItem:(id)item;
- (void)durationPicker:(id)picker didSelectDuration:(id)duration;
- (void)setupCell:(id)cell forItem:(id)item;
- (void)updateCell:(id)cell forItem:(id)item animated:(BOOL)animated;
@end

@implementation HUTriggerDurationModuleController

- (Class)cellClassForItem:(id)item
{
  itemCopy = item;
  module = [(HUItemModuleController *)self module];
  durationSummaryItem = [module durationSummaryItem];

  if (durationSummaryItem != itemCopy)
  {
    module2 = [(HUItemModuleController *)self module];
    [module2 durationPickerItem];
  }

  v8 = objc_opt_class();

  return v8;
}

- (void)setupCell:(id)cell forItem:(id)item
{
  cellCopy = cell;
  itemCopy = item;
  v21.receiver = self;
  v21.super_class = HUTriggerDurationModuleController;
  [(HUItemModuleController *)&v21 setupCell:cellCopy forItem:itemCopy];
  module = [(HUItemModuleController *)self module];
  durationSummaryItem = [module durationSummaryItem];
  v10 = [itemCopy isEqual:durationSummaryItem];

  if (v10)
  {
    objc_opt_class();
    v11 = cellCopy;
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

  module2 = [(HUItemModuleController *)self module];
  durationPickerItem = [module2 durationPickerItem];

  if (durationPickerItem == itemCopy)
  {
    v16 = objc_opt_class();
    v17 = cellCopy;
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

      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
      [currentHandler handleFailureInFunction:v20 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v16, objc_opt_class()}];
    }

    v13 = 0;
LABEL_14:

    [v13 setDelegate:self];
LABEL_15:
  }
}

- (void)updateCell:(id)cell forItem:(id)item animated:(BOOL)animated
{
  cellCopy = cell;
  itemCopy = item;
  module = [(HUItemModuleController *)self module];
  durationPickerItem = [module durationPickerItem];
  v10 = [itemCopy isEqual:durationPickerItem];

  if (v10)
  {
    v11 = objc_opt_class();
    v12 = cellCopy;
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

      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
      [currentHandler handleFailureInFunction:v16 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v11, objc_opt_class()}];
    }

    v14 = 0;
LABEL_9:

    _durationEventBuilder = [(HUTriggerDurationModuleController *)self _durationEventBuilder];
    v18 = _durationEventBuilder;
    if (_durationEventBuilder)
    {
      v19 = MEMORY[0x277CCABB0];
      [_durationEventBuilder duration];
      v20 = [v19 numberWithDouble:?];
      [v14 setCurrentDuration:v20];
    }

    else
    {
      [v14 setCurrentDuration:0];
    }
  }
}

- (unint64_t)didSelectItem:(id)item
{
  itemCopy = item;
  module = [(HUItemModuleController *)self module];
  durationSummaryItem = [module durationSummaryItem];

  if (durationSummaryItem == itemCopy)
  {
    module2 = [(HUItemModuleController *)self module];
    durationPickerShown = [module2 durationPickerShown];

    module3 = [(HUItemModuleController *)self module];
    [module3 setDurationPickerShown:durationPickerShown ^ 1u];

    if ((durationPickerShown & 1) == 0)
    {
      delegate = [(HUTriggerDurationModuleController *)self delegate];
      module4 = [(HUItemModuleController *)self module];
      durationPickerItem = [module4 durationPickerItem];
      [delegate durationModuleController:self requestsScrollToItem:durationPickerItem];
    }
  }

  return 0;
}

- (void)durationPicker:(id)picker didSelectDuration:(id)duration
{
  durationCopy = duration;
  if (durationCopy)
  {
    module2 = objc_alloc_init(MEMORY[0x277D14630]);
    [durationCopy doubleValue];
    [module2 setDuration:?];
    module = [(HUItemModuleController *)self module];
    triggerBuilder = [module triggerBuilder];
    [triggerBuilder setEndEvent:module2];
  }

  else
  {
    module2 = [(HUItemModuleController *)self module];
    module = [module2 triggerBuilder];
    [module removeAllEndEventBuilders];
  }

  module3 = [(HUItemModuleController *)self module];
  itemManager = [module3 itemManager];
  [itemManager triggerBuilderDidChange];
}

- (id)_durationEventBuilder
{
  module = [(HUItemModuleController *)self module];
  triggerBuilder = [module triggerBuilder];
  designatedDurationEventBuilder = [triggerBuilder designatedDurationEventBuilder];

  return designatedDurationEventBuilder;
}

- (HUTriggerDurationModuleControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end