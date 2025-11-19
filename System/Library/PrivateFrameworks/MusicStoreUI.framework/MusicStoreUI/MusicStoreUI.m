Class initAMPOnboardingViewController()
{
  if (AMPCoreUILibrary_sOnce != -1)
  {
    initAMPOnboardingViewController_cold_1();
  }

  result = objc_getClass("AMPOnboardingViewController");
  classAMPOnboardingViewController = result;
  getAMPOnboardingViewControllerClass = AMPOnboardingViewControllerFunction;
  return result;
}

void *__AMPCoreUILibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/AMPCoreUI.framework/AMPCoreUI", 2);
  AMPCoreUILibrary_sLib = result;
  return result;
}

Class initAMPOnboardingFeature()
{
  if (AMPCoreUILibrary_sOnce != -1)
  {
    initAMPOnboardingViewController_cold_1();
  }

  result = objc_getClass("AMPOnboardingFeature");
  classAMPOnboardingFeature = result;
  getAMPOnboardingFeatureClass = AMPOnboardingFeatureFunction;
  return result;
}