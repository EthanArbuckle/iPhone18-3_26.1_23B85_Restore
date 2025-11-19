@interface HUFeatureOnboardingConfigurator
- (id)_nextViewControllerForResults:(id)a3;
- (void)viewControllerDidGoBack:(id)a3;
@end

@implementation HUFeatureOnboardingConfigurator

- (id)_nextViewControllerForResults:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    v8 = [(HUConfigurator *)self currentViewController];
    v9 = [(HUConfigurator *)self configuratorDelegate];
    v22 = 138413314;
    v23 = self;
    v24 = 2112;
    v25 = v7;
    v26 = 2112;
    v27 = v8;
    v28 = 2112;
    v29 = v5;
    v30 = 2112;
    v31 = v9;
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "%@:%@ Advancing configurator view controller from %@ & results %@ (note that configuratorDelegate = %@)", &v22, 0x34u);
  }

  v10 = [(HUConfigurator *)self configuratorDelegate];

  if (!v10)
  {
    v11 = HFLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v22 = 136315138;
      v23 = "[HUFeatureOnboardingConfigurator _nextViewControllerForResults:]";
      _os_log_error_impl(&dword_20CEB6000, v11, OS_LOG_TYPE_ERROR, "%s The configuration flow is already finished! We should not present any more view controllers.", &v22, 0xCu);
    }
  }

  v12 = [(HUConfigurator *)self currentViewController];
  if ([v12 conformsToProtocol:&unk_2824B2218])
  {
    v13 = v12;
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
      v23 = "[HUFeatureOnboardingConfigurator _nextViewControllerForResults:]";
      _os_log_error_impl(&dword_20CEB6000, v15, OS_LOG_TYPE_ERROR, "%s The current view controller must support the HUConfigurationViewControllerFlow protocol!", &v22, 0xCu);
    }
  }

  v16 = [(HUConfigurator *)self configuratorDelegate];
  if ([v16 conformsToProtocol:&unk_2824FEC80])
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;

  if ([MEMORY[0x277D14CE8] isInternalInstall] && !v18)
  {
    v21 = [MEMORY[0x277CCA890] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"HUFeatureOnboardingConfigurator.m" lineNumber:31 description:@"The configuratorDelegate must support the HUFeatureOnboardingConfiguratorDelegate protocol!"];
  }

  v19 = [v18 getNextViewControllerForOnboardingInput:v5 currentOnboardingFlowClass:{objc_msgSend(v14, "onboardingFlowClass")}];

  return v19;
}

- (void)viewControllerDidGoBack:(id)a3
{
  v9.receiver = self;
  v9.super_class = HUFeatureOnboardingConfigurator;
  [(HUConfigurator *)&v9 viewControllerDidGoBack:a3];
  v5 = [(HUConfigurator *)self configuratorDelegate];
  if ([v5 conformsToProtocol:&unk_2824FEC80])
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (!v7)
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"HUFeatureOnboardingConfigurator.m" lineNumber:48 description:{@"Invalid parameter not satisfying: %@", @"featureOnboardingDelegate != nil"}];
  }

  [v7 restartCurrentOnboarding];
}

@end