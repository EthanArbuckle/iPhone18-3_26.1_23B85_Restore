@interface HUQuickControlViewController
+ (HUQuickControlItemPredicate)controlItemPredicate;
- (BOOL)shouldShowContentForReachabilityState:(BOOL)a3;
- (HULayoutAnchorProviding)preferredFrameLayoutGuide;
- (HUQuickControlContentCharacteristicWritingDelegate)characteristicWritingDelegate;
- (HUQuickControlContentHosting)quickControlHost;
- (HUQuickControlItemUpdating)itemUpdater;
- (HUQuickControlViewController)initWithCoder:(id)a3;
- (HUQuickControlViewController)initWithControlItems:(id)a3 home:(id)a4 itemUpdater:(id)a5 controlOrientation:(unint64_t)a6 preferredControl:(unint64_t)a7;
- (HUQuickControlViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (HUQuickControlViewControllerDelegate)delegate;
- (NSSet)affectedCharacteristics;
- (id)overrideValueForCharacteristic:(id)a3;
- (id)viewControllerForTouchContinuation;
- (void)_updateControlItemHiddenStateNotifyingHost:(BOOL)a3;
- (void)beginUserInteractionWithFirstTouchGestureRecognizer:(id)a3;
- (void)setCharacteristicWritingDelegate:(id)a3;
- (void)setControlsVisible:(BOOL)a3;
- (void)setPreferredFrameLayoutGuide:(id)a3;
- (void)setQuickControlHost:(id)a3;
- (void)setUserInteractionEnabled:(BOOL)a3;
@end

@implementation HUQuickControlViewController

+ (HUQuickControlItemPredicate)controlItemPredicate
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"HUQuickControlViewController.m" lineNumber:35 description:{@"%s is an abstract method that must be overriden by subclass %@", "+[HUQuickControlViewController controlItemPredicate]", objc_opt_class()}];

  return 0;
}

- (HUQuickControlViewController)initWithControlItems:(id)a3 home:(id)a4 itemUpdater:(id)a5 controlOrientation:(unint64_t)a6 preferredControl:(unint64_t)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v21.receiver = self;
  v21.super_class = HUQuickControlViewController;
  v16 = [(HUQuickControlViewController *)&v21 initWithNibName:0 bundle:0];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_controlItems, a3);
    objc_storeStrong(&v17->_home, a4);
    if (!v15)
    {
      v18 = [[HUQuickControlSimpleItemUpdater alloc] initWithItemHost:v17];
      internalItemUpdater = v17->_internalItemUpdater;
      v17->_internalItemUpdater = v18;

      v15 = v17->_internalItemUpdater;
    }

    objc_storeWeak(&v17->_itemUpdater, v15);
    v17->_controlOrientation = a6;
    v17->_preferredControl = a7;
    [(HUQuickControlViewController *)v17 _updateControlItemHiddenStateNotifyingHost:0];
  }

  return v17;
}

- (HUQuickControlViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithControlItems_home_itemUpdater_controlOrientation_preferredControl_);
  [v6 handleFailureInMethod:a2 object:self file:@"HUQuickControlViewController.m" lineNumber:62 description:{@"%s is unavailable; use %@ instead", "-[HUQuickControlViewController initWithNibName:bundle:]", v7}];

  return 0;
}

- (HUQuickControlViewController)initWithCoder:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithControlItems_home_itemUpdater_controlOrientation_preferredControl_);
  [v5 handleFailureInMethod:a2 object:self file:@"HUQuickControlViewController.m" lineNumber:67 description:{@"%s is unavailable; use %@ instead", "-[HUQuickControlViewController initWithCoder:]", v6}];

  return 0;
}

- (HULayoutAnchorProviding)preferredFrameLayoutGuide
{
  preferredFrameLayoutGuide = self->_preferredFrameLayoutGuide;
  if (preferredFrameLayoutGuide)
  {
    v3 = preferredFrameLayoutGuide;
  }

  else
  {
    v3 = [(HUQuickControlViewController *)self view];
  }

  return v3;
}

- (void)setPreferredFrameLayoutGuide:(id)a3
{
  objc_storeStrong(&self->_preferredFrameLayoutGuide, a3);
  v5 = a3;
  v6 = [(HUQuickControlViewController *)self childQuickControlContentViewControllers];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__HUQuickControlViewController_setPreferredFrameLayoutGuide___block_invoke;
  v7[3] = &unk_277DB7378;
  v7[4] = self;
  [v6 na_each:v7];
}

void __61__HUQuickControlViewController_setPreferredFrameLayoutGuide___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 preferredFrameLayoutGuide];
  [v3 setPreferredFrameLayoutGuide:v4];
}

- (void)setControlsVisible:(BOOL)a3
{
  if (self->_controlsVisible != a3)
  {
    v4 = a3;
    self->_controlsVisible = a3;
    v6 = [(HUQuickControlViewController *)self itemUpdater];
    [v6 quickControlItemHost:self didUpdateVisibility:v4];
  }
}

- (BOOL)shouldShowContentForReachabilityState:(BOOL)a3
{
  if (a3)
  {
    return ![(HUQuickControlViewController *)self areControlItemsRequestingToBeHidden];
  }

  else
  {
    return 0;
  }
}

- (void)beginUserInteractionWithFirstTouchGestureRecognizer:(id)a3
{
  v4 = a3;
  v5 = [(HUQuickControlViewController *)self childQuickControlContentViewControllers];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __84__HUQuickControlViewController_beginUserInteractionWithFirstTouchGestureRecognizer___block_invoke;
  v7[3] = &unk_277DB7378;
  v8 = v4;
  v6 = v4;
  [v5 na_each:v7];
}

- (id)overrideValueForCharacteristic:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(HUQuickControlViewController *)self childQuickControlContentViewControllers];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) overrideValueForCharacteristic:v4];
        if (v10)
        {
          v11 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  return v11;
}

- (NSSet)affectedCharacteristics
{
  v3 = [(HUQuickControlViewController *)self controlItems];
  v4 = [v3 na_flatMap:&__block_literal_global_2];

  v5 = MEMORY[0x277CBEB98];
  v6 = [(HUQuickControlViewController *)self childQuickControlContentViewControllers];
  v7 = [v5 setWithArray:v6];
  v8 = [v7 na_flatMap:&__block_literal_global_20_0];

  v9 = [v4 setByAddingObjectsFromSet:v8];

  return v9;
}

id __55__HUQuickControlViewController_affectedCharacteristics__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 characteristicOptions];
  v4 = [v3 objectForKeyedSubscript:&unk_282490B78];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55__HUQuickControlViewController_affectedCharacteristics__block_invoke_15;
  v8[3] = &unk_277DB73C0;
  v9 = v2;
  v5 = v2;
  v6 = [v4 na_flatMap:v8];

  return v6;
}

id __55__HUQuickControlViewController_affectedCharacteristics__block_invoke_15(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 valueSource];
  v5 = [v4 allCharacteristicsForCharacteristicType:v3];

  return v5;
}

- (void)setCharacteristicWritingDelegate:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_characteristicWritingDelegate, v4);
  v5 = [(HUQuickControlViewController *)self childQuickControlContentViewControllers];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__HUQuickControlViewController_setCharacteristicWritingDelegate___block_invoke;
  v7[3] = &unk_277DB7378;
  v8 = v4;
  v6 = v4;
  [v5 na_each:v7];
}

- (void)setQuickControlHost:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_quickControlHost, v4);
  v5 = [(HUQuickControlViewController *)self childQuickControlContentViewControllers];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__HUQuickControlViewController_setQuickControlHost___block_invoke;
  v7[3] = &unk_277DB7378;
  v8 = v4;
  v6 = v4;
  [v5 na_each:v7];
}

- (void)setUserInteractionEnabled:(BOOL)a3
{
  self->_userInteractionEnabled = a3;
  v4 = [(HUQuickControlViewController *)self childQuickControlContentViewControllers];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __58__HUQuickControlViewController_setUserInteractionEnabled___block_invoke;
  v5[3] = &__block_descriptor_33_e114_v16__0__UIViewController_HUQuickControlInteractiveContentContaining__HUQuickControlContentCharacteristicWriting__8l;
  v6 = a3;
  [v4 na_each:v5];
}

- (id)viewControllerForTouchContinuation
{
  v2 = [(HUQuickControlViewController *)self childQuickControlContentViewControllers];
  v3 = [v2 na_firstObjectPassingTest:&__block_literal_global_23];

  objc_opt_class();
  v4 = v3;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

- (void)_updateControlItemHiddenStateNotifyingHost:(BOOL)a3
{
  v3 = a3;
  v5 = [(HUQuickControlViewController *)self areControlItemsRequestingToBeHidden];
  v6 = [(HUQuickControlViewController *)self controlItems];
  -[HUQuickControlViewController setAreControlItemsRequestingToBeHidden:](self, "setAreControlItemsRequestingToBeHidden:", [v6 na_all:&__block_literal_global_71]);

  if (v3 && v5 != [(HUQuickControlViewController *)self areControlItemsRequestingToBeHidden])
  {
    v7 = [(HUQuickControlViewController *)self quickControlHost];
    [v7 quickControlContentDidUpdateDesiredVisbilityState:self];
  }
}

uint64_t __75__HUQuickControlViewController__updateControlItemHiddenStateNotifyingHost___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 latestResults];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277D13FB8]];
  v4 = v3;
  if (!v3)
  {
    v3 = MEMORY[0x277CBEC28];
  }

  v5 = [v3 BOOLValue];

  return v5;
}

- (HUQuickControlContentCharacteristicWritingDelegate)characteristicWritingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_characteristicWritingDelegate);

  return WeakRetained;
}

- (HUQuickControlContentHosting)quickControlHost
{
  WeakRetained = objc_loadWeakRetained(&self->_quickControlHost);

  return WeakRetained;
}

- (HUQuickControlItemUpdating)itemUpdater
{
  WeakRetained = objc_loadWeakRetained(&self->_itemUpdater);

  return WeakRetained;
}

- (HUQuickControlViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end