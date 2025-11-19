@interface CSProminentDisplayInteractiveTransition
- (CSProminentDisplayInteractiveTransition)initWithViewController:(id)a3 baseFont:(id)a4 fromVibrancyConfiguration:(id)a5 toVibrancyConfiguration:(id)a6 cachingVibrancyTransitionProvider:(id)a7;
- (CSProminentDisplayViewController)viewController;
- (void)cancelInteractiveTransition;
- (void)finishInteractiveTransition;
- (void)updateInteractiveTransition:(double)a3;
@end

@implementation CSProminentDisplayInteractiveTransition

- (CSProminentDisplayInteractiveTransition)initWithViewController:(id)a3 baseFont:(id)a4 fromVibrancyConfiguration:(id)a5 toVibrancyConfiguration:(id)a6 cachingVibrancyTransitionProvider:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v24.receiver = self;
  v24.super_class = CSProminentDisplayInteractiveTransition;
  v17 = [(CSProminentDisplayInteractiveTransition *)&v24 init];
  v18 = v17;
  if (v17)
  {
    objc_storeWeak(&v17->_viewController, v12);
    objc_storeStrong(&v18->_baseFont, a4);
    v19 = [v14 copy];
    fromVibrancyConfiguration = v18->_fromVibrancyConfiguration;
    v18->_fromVibrancyConfiguration = v19;

    v21 = [v15 copy];
    toVibrancyConfiguration = v18->_toVibrancyConfiguration;
    v18->_toVibrancyConfiguration = v21;

    objc_storeStrong(&v18->_cachingVibrancyTransitionProvider, a7);
  }

  return v18;
}

- (void)updateInteractiveTransition:(double)a3
{
  v5 = [(CSProminentDisplayInteractiveTransition *)self viewController];
  [v5 interactiveTransition:self didUpdate:a3];
}

- (void)finishInteractiveTransition
{
  v3 = [(CSProminentDisplayInteractiveTransition *)self viewController];
  [v3 interactiveTransition:self didFinishSuccessfully:1];
}

- (void)cancelInteractiveTransition
{
  v3 = [(CSProminentDisplayInteractiveTransition *)self viewController];
  [v3 interactiveTransition:self didFinishSuccessfully:0];
}

- (CSProminentDisplayViewController)viewController
{
  WeakRetained = objc_loadWeakRetained(&self->_viewController);

  return WeakRetained;
}

@end