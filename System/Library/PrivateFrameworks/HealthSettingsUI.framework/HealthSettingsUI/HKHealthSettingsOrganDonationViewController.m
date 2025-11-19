@interface HKHealthSettingsOrganDonationViewController
- (HKHealthSettingsOrganDonationViewController)init;
- (PSController)parentController;
- (PSRootController)rootController;
- (id)readPreferenceValue:(id)a3;
- (void)handleURL:(id)a3 withCompletion:(id)a4;
- (void)setPreferenceValue:(id)a3 specifier:(id)a4;
- (void)showController:(id)a3;
@end

@implementation HKHealthSettingsOrganDonationViewController

- (HKHealthSettingsOrganDonationViewController)init
{
  v6.receiver = self;
  v6.super_class = HKHealthSettingsOrganDonationViewController;
  v2 = [(HKOrganDonationRegisterViewController *)&v6 init];
  if (v2)
  {
    v3 = +[HKHealthSettingsProfile sharedProfile];
    v4 = [v3 fetchMedicalIDDataSynchronously];
    [(HKOrganDonationRegisterViewController *)v2 setMedicalIDData:v4];
  }

  return v2;
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