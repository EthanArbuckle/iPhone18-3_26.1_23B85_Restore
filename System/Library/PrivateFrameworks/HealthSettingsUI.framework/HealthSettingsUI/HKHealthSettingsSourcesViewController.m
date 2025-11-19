@interface HKHealthSettingsSourcesViewController
- (HKHealthSettingsSourcesViewController)init;
- (PSController)parentController;
- (PSRootController)rootController;
- (id)readPreferenceValue:(id)a3;
- (void)handleURL:(id)a3 withCompletion:(id)a4;
- (void)setPreferenceValue:(id)a3 specifier:(id)a4;
- (void)showController:(id)a3;
@end

@implementation HKHealthSettingsSourcesViewController

- (HKHealthSettingsSourcesViewController)init
{
  v3 = [HKHealthSettingsProfile alloc];
  v4 = objc_alloc_init(MEMORY[0x277CCD4D8]);
  v5 = [(WDProfile *)v3 initWithHealthStore:v4];

  v8.receiver = self;
  v8.super_class = HKHealthSettingsSourcesViewController;
  v6 = [(WDSourcesViewController *)&v8 initWithProfile:v5 usingInsetStyling:1];

  return v6;
}

- (void)handleURL:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_parentController);
  [WeakRetained handleURL:v7 withCompletion:v6];
}

- (void)setPreferenceValue:(id)a3 specifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_parentController);
  [WeakRetained setPreferenceValue:v7 specifier:v6];
}

- (id)readPreferenceValue:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_parentController);
  v6 = [WeakRetained readPreferenceValue:v4];

  return v6;
}

- (void)showController:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_parentController);
  [WeakRetained showController:v4];
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