@interface HKHealthSettingsProfileTableViewController
- (HKHealthSettingsProfileTableViewController)init;
- (PSController)parentController;
- (PSRootController)rootController;
- (id)readPreferenceValue:(id)value;
- (void)handleURL:(id)l withCompletion:(id)completion;
- (void)setPreferenceValue:(id)value specifier:(id)specifier;
- (void)showController:(id)controller;
@end

@implementation HKHealthSettingsProfileTableViewController

- (HKHealthSettingsProfileTableViewController)init
{
  v3 = +[HKHealthSettingsProfile sharedProfile];
  [(ProfileCharacteristicsViewController *)self setAccessType:5];
  healthStore = [v3 healthStore];
  v7.receiver = self;
  v7.super_class = HKHealthSettingsProfileTableViewController;
  v5 = [(ProfileCharacteristicsViewController *)&v7 initWithHealthStore:healthStore];

  return v5;
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