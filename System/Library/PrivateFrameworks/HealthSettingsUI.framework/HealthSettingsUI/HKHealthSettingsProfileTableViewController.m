@interface HKHealthSettingsProfileTableViewController
- (HKHealthSettingsProfileTableViewController)init;
- (PSController)parentController;
- (PSRootController)rootController;
- (id)readPreferenceValue:(id)a3;
- (void)handleURL:(id)a3 withCompletion:(id)a4;
- (void)setPreferenceValue:(id)a3 specifier:(id)a4;
- (void)showController:(id)a3;
@end

@implementation HKHealthSettingsProfileTableViewController

- (HKHealthSettingsProfileTableViewController)init
{
  v3 = +[HKHealthSettingsProfile sharedProfile];
  [(ProfileCharacteristicsViewController *)self setAccessType:5];
  v4 = [v3 healthStore];
  v7.receiver = self;
  v7.super_class = HKHealthSettingsProfileTableViewController;
  v5 = [(ProfileCharacteristicsViewController *)&v7 initWithHealthStore:v4];

  return v5;
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