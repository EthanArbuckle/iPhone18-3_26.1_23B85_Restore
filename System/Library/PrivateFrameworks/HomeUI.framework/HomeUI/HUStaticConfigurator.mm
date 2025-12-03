@interface HUStaticConfigurator
- (HUStaticConfigurator)initWithConfiguratorDelegate:(id)delegate contentViewControllers:(id)controllers;
- (HUStaticConfigurator)initWithConfiguratorDelegate:(id)delegate viewControllers:(id)controllers;
- (id)_nextViewControllerForResults:(id)results;
@end

@implementation HUStaticConfigurator

- (HUStaticConfigurator)initWithConfiguratorDelegate:(id)delegate viewControllers:(id)controllers
{
  controllersCopy = controllers;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __69__HUStaticConfigurator_initWithConfiguratorDelegate_viewControllers___block_invoke;
  v14[3] = &unk_277DC4C50;
  selfCopy = self;
  v15 = selfCopy;
  delegateCopy = delegate;
  [controllersCopy na_each:v14];
  firstObject = [controllersCopy firstObject];
  v13.receiver = selfCopy;
  v13.super_class = HUStaticConfigurator;
  v11 = [(HUConfigurator *)&v13 initWithConfiguratorDelegate:delegateCopy initialViewController:firstObject];

  if (v11)
  {
    objc_storeStrong(&v11->_staticViewControllers, controllers);
  }

  return v11;
}

- (HUStaticConfigurator)initWithConfiguratorDelegate:(id)delegate contentViewControllers:(id)controllers
{
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __76__HUStaticConfigurator_initWithConfiguratorDelegate_contentViewControllers___block_invoke;
  v11[3] = &unk_277DC4C78;
  selfCopy = self;
  v12 = selfCopy;
  delegateCopy = delegate;
  v8 = [controllers na_map:v11];
  v9 = [(HUStaticConfigurator *)selfCopy initWithConfiguratorDelegate:delegateCopy viewControllers:v8];

  return v9;
}

HUConfigurationWrapperViewController *__76__HUStaticConfigurator_initWithConfiguratorDelegate_contentViewControllers___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[HUConfigurationWrapperViewController alloc] initWithContentViewController:v3 configurationDelegate:*(a1 + 32)];

  return v4;
}

- (id)_nextViewControllerForResults:(id)results
{
  staticViewControllers = [(HUStaticConfigurator *)self staticViewControllers];
  currentViewController = [(HUConfigurator *)self currentViewController];
  v6 = [staticViewControllers indexOfObject:currentViewController];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    currentViewController2 = [(HUConfigurator *)self currentViewController];
    staticViewControllers2 = [(HUStaticConfigurator *)self staticViewControllers];
    NSLog(&cfstr_Currentviewcon.isa, currentViewController2, staticViewControllers2);
  }

  v9 = v6 + 1;
  staticViewControllers3 = [(HUStaticConfigurator *)self staticViewControllers];
  v11 = [staticViewControllers3 count];

  if (v9 < v11 && (-[HUStaticConfigurator staticViewControllers](self, "staticViewControllers"), v12 = objc_claimAutoreleasedReturnValue(), [v12 objectAtIndexedSubscript:v9], v13 = objc_claimAutoreleasedReturnValue(), v12, v13))
  {
    futureWithNoResult = [MEMORY[0x277D2C900] futureWithResult:v13];
  }

  else
  {
    futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  return futureWithNoResult;
}

@end