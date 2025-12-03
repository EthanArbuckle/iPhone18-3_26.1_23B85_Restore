@interface HUConfigurator
- (HUConfigurationViewController)currentViewController;
- (HUConfigurator)initWithConfiguratorDelegate:(id)delegate initialViewController:(id)controller;
- (HUConfiguratorDelegate)configuratorDelegate;
- (void)_removeDisplayedViewController;
- (void)pushViewControllerForResults:(id)results;
@end

@implementation HUConfigurator

- (HUConfigurator)initWithConfiguratorDelegate:(id)delegate initialViewController:(id)controller
{
  delegateCopy = delegate;
  controllerCopy = controller;
  v13.receiver = self;
  v13.super_class = HUConfigurator;
  v8 = [(HUConfigurator *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_configuratorDelegate, delegateCopy);
    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    displayedViewControllers = v9->_displayedViewControllers;
    v9->_displayedViewControllers = v10;

    [(HUConfigurator *)v9 _addViewControllerToDisplay:controllerCopy];
  }

  return v9;
}

- (HUConfigurationViewController)currentViewController
{
  displayedViewControllers = [(HUConfigurator *)self displayedViewControllers];
  lastObject = [displayedViewControllers lastObject];

  return lastObject;
}

- (void)pushViewControllerForResults:(id)results
{
  v4 = [(HUConfigurator *)self _nextViewControllerForResults:results];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__HUConfigurator_pushViewControllerForResults___block_invoke;
  v6[3] = &unk_277DB7530;
  v6[4] = self;
  v5 = [v4 addCompletionBlock:v6];
}

void __47__HUConfigurator_pushViewControllerForResults___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v11 = v3;
  if (objc_opt_isKindOfClass())
  {
    v4 = v11;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = v5;
  if ([v6 conformsToProtocol:&unk_2824B2098])
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v9 = *(a1 + 32);
  if (v8)
  {
    [v9 _addViewControllerToDisplay:v8];
    v10 = [*(a1 + 32) configuratorDelegate];
    [v10 configuratorDidUpdateViewController:*(a1 + 32)];
  }

  else
  {
    v10 = [v9 configuratorDelegate];
    [v10 configuratorDidFinish:*(a1 + 32)];
  }
}

- (void)_removeDisplayedViewController
{
  if ([(NSMutableArray *)self->_displayedViewControllers count]>= 2)
  {
    displayedViewControllers = self->_displayedViewControllers;

    [(NSMutableArray *)displayedViewControllers removeLastObject];
  }
}

- (HUConfiguratorDelegate)configuratorDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_configuratorDelegate);

  return WeakRetained;
}

@end