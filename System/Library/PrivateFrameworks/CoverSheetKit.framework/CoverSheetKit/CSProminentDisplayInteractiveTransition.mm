@interface CSProminentDisplayInteractiveTransition
- (CSProminentDisplayInteractiveTransition)initWithViewController:(id)controller baseFont:(id)font fromVibrancyConfiguration:(id)configuration toVibrancyConfiguration:(id)vibrancyConfiguration cachingVibrancyTransitionProvider:(id)provider;
- (CSProminentDisplayViewController)viewController;
- (void)cancelInteractiveTransition;
- (void)finishInteractiveTransition;
- (void)updateInteractiveTransition:(double)transition;
@end

@implementation CSProminentDisplayInteractiveTransition

- (CSProminentDisplayInteractiveTransition)initWithViewController:(id)controller baseFont:(id)font fromVibrancyConfiguration:(id)configuration toVibrancyConfiguration:(id)vibrancyConfiguration cachingVibrancyTransitionProvider:(id)provider
{
  controllerCopy = controller;
  fontCopy = font;
  configurationCopy = configuration;
  vibrancyConfigurationCopy = vibrancyConfiguration;
  providerCopy = provider;
  v24.receiver = self;
  v24.super_class = CSProminentDisplayInteractiveTransition;
  v17 = [(CSProminentDisplayInteractiveTransition *)&v24 init];
  v18 = v17;
  if (v17)
  {
    objc_storeWeak(&v17->_viewController, controllerCopy);
    objc_storeStrong(&v18->_baseFont, font);
    v19 = [configurationCopy copy];
    fromVibrancyConfiguration = v18->_fromVibrancyConfiguration;
    v18->_fromVibrancyConfiguration = v19;

    v21 = [vibrancyConfigurationCopy copy];
    toVibrancyConfiguration = v18->_toVibrancyConfiguration;
    v18->_toVibrancyConfiguration = v21;

    objc_storeStrong(&v18->_cachingVibrancyTransitionProvider, provider);
  }

  return v18;
}

- (void)updateInteractiveTransition:(double)transition
{
  viewController = [(CSProminentDisplayInteractiveTransition *)self viewController];
  [viewController interactiveTransition:self didUpdate:transition];
}

- (void)finishInteractiveTransition
{
  viewController = [(CSProminentDisplayInteractiveTransition *)self viewController];
  [viewController interactiveTransition:self didFinishSuccessfully:1];
}

- (void)cancelInteractiveTransition
{
  viewController = [(CSProminentDisplayInteractiveTransition *)self viewController];
  [viewController interactiveTransition:self didFinishSuccessfully:0];
}

- (CSProminentDisplayViewController)viewController
{
  WeakRetained = objc_loadWeakRetained(&self->_viewController);

  return WeakRetained;
}

@end