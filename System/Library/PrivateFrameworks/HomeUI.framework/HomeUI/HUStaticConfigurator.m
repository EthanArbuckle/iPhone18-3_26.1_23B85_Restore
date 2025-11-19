@interface HUStaticConfigurator
- (HUStaticConfigurator)initWithConfiguratorDelegate:(id)a3 contentViewControllers:(id)a4;
- (HUStaticConfigurator)initWithConfiguratorDelegate:(id)a3 viewControllers:(id)a4;
- (id)_nextViewControllerForResults:(id)a3;
@end

@implementation HUStaticConfigurator

- (HUStaticConfigurator)initWithConfiguratorDelegate:(id)a3 viewControllers:(id)a4
{
  v7 = a4;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __69__HUStaticConfigurator_initWithConfiguratorDelegate_viewControllers___block_invoke;
  v14[3] = &unk_277DC4C50;
  v8 = self;
  v15 = v8;
  v9 = a3;
  [v7 na_each:v14];
  v10 = [v7 firstObject];
  v13.receiver = v8;
  v13.super_class = HUStaticConfigurator;
  v11 = [(HUConfigurator *)&v13 initWithConfiguratorDelegate:v9 initialViewController:v10];

  if (v11)
  {
    objc_storeStrong(&v11->_staticViewControllers, a4);
  }

  return v11;
}

- (HUStaticConfigurator)initWithConfiguratorDelegate:(id)a3 contentViewControllers:(id)a4
{
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __76__HUStaticConfigurator_initWithConfiguratorDelegate_contentViewControllers___block_invoke;
  v11[3] = &unk_277DC4C78;
  v6 = self;
  v12 = v6;
  v7 = a3;
  v8 = [a4 na_map:v11];
  v9 = [(HUStaticConfigurator *)v6 initWithConfiguratorDelegate:v7 viewControllers:v8];

  return v9;
}

HUConfigurationWrapperViewController *__76__HUStaticConfigurator_initWithConfiguratorDelegate_contentViewControllers___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[HUConfigurationWrapperViewController alloc] initWithContentViewController:v3 configurationDelegate:*(a1 + 32)];

  return v4;
}

- (id)_nextViewControllerForResults:(id)a3
{
  v4 = [(HUStaticConfigurator *)self staticViewControllers];
  v5 = [(HUConfigurator *)self currentViewController];
  v6 = [v4 indexOfObject:v5];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [(HUConfigurator *)self currentViewController];
    v8 = [(HUStaticConfigurator *)self staticViewControllers];
    NSLog(&cfstr_Currentviewcon.isa, v7, v8);
  }

  v9 = v6 + 1;
  v10 = [(HUStaticConfigurator *)self staticViewControllers];
  v11 = [v10 count];

  if (v9 < v11 && (-[HUStaticConfigurator staticViewControllers](self, "staticViewControllers"), v12 = objc_claimAutoreleasedReturnValue(), [v12 objectAtIndexedSubscript:v9], v13 = objc_claimAutoreleasedReturnValue(), v12, v13))
  {
    v14 = [MEMORY[0x277D2C900] futureWithResult:v13];
  }

  else
  {
    v14 = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  return v14;
}

@end