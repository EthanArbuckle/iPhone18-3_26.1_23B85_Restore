@interface HKHealthSettingsSecondaryProfileSourcesViewController
- (HKHealthSettingsSecondaryProfileSourcesViewController)init;
- (PSController)parentController;
- (PSRootController)rootController;
- (id)readPreferenceValue:(id)value;
- (void)handleURL:(id)l withCompletion:(id)completion;
- (void)setPreferenceValue:(id)value specifier:(id)specifier;
- (void)showController:(id)controller;
@end

@implementation HKHealthSettingsSecondaryProfileSourcesViewController

- (HKHealthSettingsSecondaryProfileSourcesViewController)init
{
  v3 = [HKHealthSettingsProfile alloc];
  v4 = objc_alloc_init(MEMORY[0x277CCD4D8]);
  v5 = [(WDProfile *)v3 initWithHealthStore:v4];

  v8.receiver = self;
  v8.super_class = HKHealthSettingsSecondaryProfileSourcesViewController;
  v6 = [(WDSourcesViewController *)&v8 initWithProfile:v5 usingInsetStyling:0];

  return v6;
}

- (void)handleURL:(id)l withCompletion:(id)completion
{
  completionCopy = completion;
  lCopy = l;
  WeakRetained = objc_loadWeakRetained(&self->_parentController);
  [WeakRetained handleURL:lCopy withCompletion:completionCopy];
}

- (void)setPreferenceValue:(id)value specifier:(id)specifier
{
  specifierCopy = specifier;
  valueCopy = value;
  WeakRetained = objc_loadWeakRetained(&self->_parentController);
  [WeakRetained setPreferenceValue:valueCopy specifier:specifierCopy];
}

- (id)readPreferenceValue:(id)value
{
  valueCopy = value;
  WeakRetained = objc_loadWeakRetained(&self->_parentController);
  v6 = [WeakRetained readPreferenceValue:valueCopy];

  return v6;
}

- (void)showController:(id)controller
{
  controllerCopy = controller;
  WeakRetained = objc_loadWeakRetained(&self->_parentController);
  [WeakRetained showController:controllerCopy];
}

- (PSController)parentController
{
  WeakRetained = objc_loadWeakRetained(&self->_parentController);

  return WeakRetained;
}

- (PSRootController)rootController
{
  WeakRetained = objc_loadWeakRetained(&self->_rootController);

  return WeakRetained;
}

@end