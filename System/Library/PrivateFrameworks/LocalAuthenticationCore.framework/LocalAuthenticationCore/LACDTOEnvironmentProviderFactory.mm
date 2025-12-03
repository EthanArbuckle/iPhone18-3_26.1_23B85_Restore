@interface LACDTOEnvironmentProviderFactory
+ (id)environmentProviderWithLocationProvider:(id)provider featureController:(id)controller ratchetStateProvider:(id)stateProvider lostModeController:(id)modeController;
@end

@implementation LACDTOEnvironmentProviderFactory

+ (id)environmentProviderWithLocationProvider:(id)provider featureController:(id)controller ratchetStateProvider:(id)stateProvider lostModeController:(id)modeController
{
  modeControllerCopy = modeController;
  stateProviderCopy = stateProvider;
  controllerCopy = controller;
  providerCopy = provider;
  v13 = [[_TtC23LocalAuthenticationCore25LACDTOEnvironmentProvider alloc] initWithLocationProvider:providerCopy featureController:controllerCopy ratchetStateProvider:stateProviderCopy lostModeController:modeControllerCopy];

  return v13;
}

@end