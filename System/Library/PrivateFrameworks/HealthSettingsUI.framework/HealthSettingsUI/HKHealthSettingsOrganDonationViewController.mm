@interface HKHealthSettingsOrganDonationViewController
- (HKHealthSettingsOrganDonationViewController)init;
- (PSController)parentController;
- (PSRootController)rootController;
- (id)readPreferenceValue:(id)value;
- (void)handleURL:(id)l withCompletion:(id)completion;
- (void)setPreferenceValue:(id)value specifier:(id)specifier;
- (void)showController:(id)controller;
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
    fetchMedicalIDDataSynchronously = [v3 fetchMedicalIDDataSynchronously];
    [(HKOrganDonationRegisterViewController *)v2 setMedicalIDData:fetchMedicalIDDataSynchronously];
  }

  return v2;
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