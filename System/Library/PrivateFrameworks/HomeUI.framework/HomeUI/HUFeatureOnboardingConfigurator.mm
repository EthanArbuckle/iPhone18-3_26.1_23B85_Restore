@interface HUFeatureOnboardingConfigurator
- (id)_nextViewControllerForResults:(id)results;
- (void)viewControllerDidGoBack:(id)back;
@end

@implementation HUFeatureOnboardingConfigurator

- (id)_nextViewControllerForResults:(id)results
{
  v32 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    currentViewController = [(HUConfigurator *)self currentViewController];
    configuratorDelegate = [(HUConfigurator *)self configuratorDelegate];
    v22 = 138413314;
    selfCopy = self;
    v24 = 2112;
    v25 = v7;
    v26 = 2112;
    v27 = currentViewController;
    v28 = 2112;
    v29 = resultsCopy;
    v30 = 2112;
    v31 = configuratorDelegate;
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "%@:%@ Advancing configurator view controller from %@ & results %@ (note that configuratorDelegate = %@)", &v22, 0x34u);
  }

  configuratorDelegate2 = [(HUConfigurator *)self configuratorDelegate];

  if (!configuratorDelegate2)
  {
    v11 = HFLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v22 = 136315138;
      selfCopy = "[HUFeatureOnboardingConfigurator _nextViewControllerForResults:]";
      _os_log_error_impl(&dword_20CEB6000, v11, OS_LOG_TYPE_ERROR, "%s The configuration flow is already finished! We should not present any more view controllers.", &v22, 0xCu);
    }
  }

  currentViewController2 = [(HUConfigurator *)self currentViewController];
  if ([currentViewController2 conformsToProtocol:&unk_2824B2218])
  {
    v13 = currentViewController2;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  if (!v14)
  {
    v15 = HFLogForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v22 = 136315138;
      selfCopy = "[HUFeatureOnboardingConfigurator _nextViewControllerForResults:]";
      _os_log_error_impl(&dword_20CEB6000, v15, OS_LOG_TYPE_ERROR, "%s The current view controller must support the HUConfigurationViewControllerFlow protocol!", &v22, 0xCu);
    }
  }

  configuratorDelegate3 = [(HUConfigurator *)self configuratorDelegate];
  if ([configuratorDelegate3 conformsToProtocol:&unk_2824FEC80])
  {
    v17 = configuratorDelegate3;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;

  if ([MEMORY[0x277D14CE8] isInternalInstall] && !v18)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HUFeatureOnboardingConfigurator.m" lineNumber:31 description:@"The configuratorDelegate must support the HUFeatureOnboardingConfiguratorDelegate protocol!"];
  }

  v19 = [v18 getNextViewControllerForOnboardingInput:resultsCopy currentOnboardingFlowClass:{objc_msgSend(v14, "onboardingFlowClass")}];

  return v19;
}

- (void)viewControllerDidGoBack:(id)back
{
  v9.receiver = self;
  v9.super_class = HUFeatureOnboardingConfigurator;
  [(HUConfigurator *)&v9 viewControllerDidGoBack:back];
  configuratorDelegate = [(HUConfigurator *)self configuratorDelegate];
  if ([configuratorDelegate conformsToProtocol:&unk_2824FEC80])
  {
    v6 = configuratorDelegate;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (!v7)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HUFeatureOnboardingConfigurator.m" lineNumber:48 description:{@"Invalid parameter not satisfying: %@", @"featureOnboardingDelegate != nil"}];
  }

  [v7 restartCurrentOnboarding];
}

@end