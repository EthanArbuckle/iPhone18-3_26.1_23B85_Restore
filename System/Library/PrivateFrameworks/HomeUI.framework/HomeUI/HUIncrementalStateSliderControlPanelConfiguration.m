@interface HUIncrementalStateSliderControlPanelConfiguration
- (HUControlPanelRule)rule;
- (void)setupControlsForCell:(id)a3 item:(id)a4;
@end

@implementation HUIncrementalStateSliderControlPanelConfiguration

- (HUControlPanelRule)rule
{
  v2 = objc_opt_class();

  return [HUControlPanelClassRule ruleWithControlItemClass:v2];
}

- (void)setupControlsForCell:(id)a3 item:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_class();
  v8 = v5;
  v24 = v8;
  if (!v8)
  {
    goto LABEL_7;
  }

  if (objc_opt_isKindOfClass())
  {
    v9 = v24;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  v8 = v24;
  v11 = v24;
  if (!v10)
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [v12 handleFailureInFunction:v13 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v7, objc_opt_class()}];

    v8 = v24;
LABEL_7:
    v11 = 0;
  }

  v14 = objc_opt_class();
  v15 = [v6 controlItems];
  v16 = [v15 anyObject];
  if (v16)
  {
    if (objc_opt_isKindOfClass())
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    v18 = v16;
    if (v17)
    {
      goto LABEL_15;
    }

    v19 = [MEMORY[0x277CCA890] currentHandler];
    v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [v19 handleFailureInFunction:v20 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v14, objc_opt_class()}];
  }

  v18 = 0;
LABEL_15:

  v21 = objc_alloc_init(HUSimpleSliderControlView);
  v22 = [v6 identifierForControlItem:v18];
  [(HUSimpleSliderControlView *)v21 setIdentifier:v22];

  [(HUSimpleSliderControlView *)v21 setMinValue:0.0];
  LODWORD(v23) = 1.0;
  [(HUSimpleSliderControlView *)v21 setMaxValue:v23];
  [v11 setSliderView:v21];
}

@end