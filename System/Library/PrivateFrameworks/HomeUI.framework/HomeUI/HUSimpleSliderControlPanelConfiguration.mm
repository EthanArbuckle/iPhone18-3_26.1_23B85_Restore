@interface HUSimpleSliderControlPanelConfiguration
- (HUControlPanelRule)rule;
- (void)setupControlsForCell:(id)cell item:(id)item;
@end

@implementation HUSimpleSliderControlPanelConfiguration

- (HUControlPanelRule)rule
{
  v2 = objc_opt_class();

  return [HUControlPanelClassRule ruleWithControlItemClass:v2];
}

- (void)setupControlsForCell:(id)cell item:(id)item
{
  cellCopy = cell;
  itemCopy = item;
  v7 = objc_opt_class();
  v8 = cellCopy;
  v25 = v8;
  if (!v8)
  {
    goto LABEL_7;
  }

  if (objc_opt_isKindOfClass())
  {
    v9 = v25;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  v8 = v25;
  v11 = v25;
  if (!v10)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [currentHandler handleFailureInFunction:v13 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v7, objc_opt_class()}];

    v8 = v25;
LABEL_7:
    v11 = 0;
  }

  v14 = objc_opt_class();
  controlItems = [itemCopy controlItems];
  anyObject = [controlItems anyObject];
  if (anyObject)
  {
    if (objc_opt_isKindOfClass())
    {
      v17 = anyObject;
    }

    else
    {
      v17 = 0;
    }

    v18 = anyObject;
    if (v17)
    {
      goto LABEL_15;
    }

    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [currentHandler2 handleFailureInFunction:v20 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v14, objc_opt_class()}];
  }

  v18 = 0;
LABEL_15:

  v21 = objc_alloc_init(HUSimpleSliderControlView);
  v22 = [itemCopy identifierForControlItem:v18];
  [(HUSimpleSliderControlView *)v21 setIdentifier:v22];

  minValue = [v18 minValue];
  [minValue floatValue];
  [(HUSimpleSliderControlView *)v21 setMinValue:?];

  maxValue = [v18 maxValue];
  [maxValue floatValue];
  [(HUSimpleSliderControlView *)v21 setMaxValue:?];

  [v11 setSliderView:v21];
}

@end