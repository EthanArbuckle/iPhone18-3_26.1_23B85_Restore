@interface HKHealthSettingsMedicalIDViewController
- (BOOL)isEditEnabled;
- (HKHealthSettingsMedicalIDViewController)init;
- (HKHealthSettingsMedicalIDViewController)initWithHealthSettingsProfile:(id)a3;
- (HKHealthSettingsNavigationDonating)settingsNavigationDonatingDelegate;
- (PSController)parentController;
- (PSRootController)rootController;
- (id)readPreferenceValue:(id)a3;
- (void)_fetchMedicalIDData;
- (void)_handleFetchedMedicalIDData:(id)a3;
- (void)_updateChildViewController;
- (void)dealloc;
- (void)handleURL:(id)a3 withCompletion:(id)a4;
- (void)medicalIDViewControllerDidCancel:(id)a3;
- (void)medicalIDViewControllerDidDelete:(id)a3;
- (void)medicalIDViewControllerDidSave:(id)a3;
- (void)setPreferenceValue:(id)a3 specifier:(id)a4;
- (void)showController:(id)a3;
- (void)viewDidLoad;
@end

@implementation HKHealthSettingsMedicalIDViewController

- (HKHealthSettingsMedicalIDViewController)init
{
  v3 = [HKHealthSettingsProfile alloc];
  v4 = objc_alloc_init(MEMORY[0x277CCD4D8]);
  v5 = [(WDProfile *)v3 initWithHealthStore:v4];
  v6 = [(HKHealthSettingsMedicalIDViewController *)self initWithHealthSettingsProfile:v5];

  return v6;
}

- (HKHealthSettingsMedicalIDViewController)initWithHealthSettingsProfile:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = HKHealthSettingsMedicalIDViewController;
  v5 = [(HKHealthSettingsMedicalIDViewController *)&v13 init];
  healthSettingsProfile = v5->_healthSettingsProfile;
  v5->_healthSettingsProfile = v4;
  v7 = v4;

  v8 = [(WDProfile *)v7 healthStore];
  healthStore = v5->_healthStore;
  v5->_healthStore = v8;

  v10 = [objc_alloc(MEMORY[0x277CCD5E8]) initWithHealthStore:v5->_healthStore];
  medicalIDStore = v5->_medicalIDStore;
  v5->_medicalIDStore = v10;

  v5->__medicalIDLoaded = 0;
  [(HKHealthSettingsMedicalIDViewController *)v5 _fetchMedicalIDData];
  return v5;
}

- (void)dealloc
{
  notify_cancel(self->_medicalIDChangedToken);
  v3.receiver = self;
  v3.super_class = HKHealthSettingsMedicalIDViewController;
  [(HKHealthSettingsMedicalIDViewController *)&v3 dealloc];
}

- (void)viewDidLoad
{
  v15.receiver = self;
  v15.super_class = HKHealthSettingsMedicalIDViewController;
  [(HKHealthSettingsMedicalIDViewController *)&v15 viewDidLoad];
  v3 = objc_alloc(MEMORY[0x277D27FD0]);
  v4 = [(HKHealthSettingsMedicalIDViewController *)self healthStore];
  v5 = [(HKHealthSettingsMedicalIDViewController *)self _medicalIDData];
  v6 = [MEMORY[0x277CBEAF8] autoupdatingCurrentLocale];
  v7 = [v3 initWithHealthStore:v4 medicalIDData:v5 showDateUpdated:0 locale:v6];
  v8 = [(HKHealthSettingsMedicalIDViewController *)self navigationItem];
  [v8 setTitleView:v7];

  [(HKHealthSettingsMedicalIDViewController *)self _updateChildViewController];
  objc_initWeak(&location, self);
  v9 = *MEMORY[0x277CCE4B0];
  v10 = MEMORY[0x277D85CD0];
  v11 = MEMORY[0x277D85CD0];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __54__HKHealthSettingsMedicalIDViewController_viewDidLoad__block_invoke;
  v12[3] = &unk_2796E5200;
  objc_copyWeak(&v13, &location);
  notify_register_dispatch(v9, &self->_medicalIDChangedToken, v10, v12);

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __54__HKHealthSettingsMedicalIDViewController_viewDidLoad__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _fetchMedicalIDData];
    WeakRetained = v2;
  }
}

- (BOOL)isEditEnabled
{
  v2 = [(HKHealthSettingsMedicalIDViewController *)self healthStore];
  v3 = [v2 profileIdentifier];
  v4 = [v3 type] != 3;

  return v4;
}

- (void)_fetchMedicalIDData
{
  objc_initWeak(&location, self);
  medicalIDStore = self->_medicalIDStore;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __62__HKHealthSettingsMedicalIDViewController__fetchMedicalIDData__block_invoke;
  v4[3] = &unk_2796E5250;
  objc_copyWeak(&v5, &location);
  [(HKMedicalIDStore *)medicalIDStore fetchMedicalIDDataWithCompletion:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __62__HKHealthSettingsMedicalIDViewController__fetchMedicalIDData__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __62__HKHealthSettingsMedicalIDViewController__fetchMedicalIDData__block_invoke_2;
  v5[3] = &unk_2796E5228;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);

  objc_destroyWeak(&v7);
}

void __62__HKHealthSettingsMedicalIDViewController__fetchMedicalIDData__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleFetchedMedicalIDData:*(a1 + 32)];
}

- (void)_handleFetchedMedicalIDData:(id)a3
{
  [(HKHealthSettingsMedicalIDViewController *)self set_medicalIDData:a3];
  [(HKHealthSettingsMedicalIDViewController *)self set_medicalIDLoaded:1];
  if ([(HKHealthSettingsMedicalIDViewController *)self isViewLoaded])
  {

    [(HKHealthSettingsMedicalIDViewController *)self _updateChildViewController];
  }
}

- (void)_updateChildViewController
{
  v3 = [(HKHealthSettingsMedicalIDViewController *)self _currentChildViewController];
  [v3 willMoveToParentViewController:0];

  v4 = [(HKHealthSettingsMedicalIDViewController *)self _currentChildViewController];
  v5 = [v4 view];
  [v5 removeFromSuperview];

  v6 = [(HKHealthSettingsMedicalIDViewController *)self _currentChildViewController];
  [v6 removeFromParentViewController];

  v7 = [(HKHealthSettingsMedicalIDViewController *)self _medicalIDData];
  if (v7 && (v8 = v7, -[HKHealthSettingsMedicalIDViewController _medicalIDData](self, "_medicalIDData"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 isEmpty], v9, v8, (v10 & 1) == 0))
  {
    v18 = [MEMORY[0x277D27FC8] standardConfiguration];
    [v18 setIsDeletionAvailable:1];
    [v18 setAccessPoint:7];
    v19 = objc_alloc(MEMORY[0x277D27FD8]);
    v20 = [(HKHealthSettingsMedicalIDViewController *)self healthStore];
    v21 = [(HKHealthSettingsMedicalIDViewController *)self _medicalIDData];
    v22 = [v19 initWithHealthStore:v20 medicalIDData:v21 displayConfiguration:v18];

    [(HKHealthSettingsMedicalIDViewController *)self set_currentChildViewController:v22];
  }

  else
  {
    if ([(HKHealthSettingsMedicalIDViewController *)self _medicalIDLoaded])
    {
      v11 = [HKHealthSettingsMedicalIDCallToActionTableViewController alloc];
      v12 = [(HKHealthSettingsMedicalIDViewController *)self healthSettingsProfile];
      v13 = [(HKHealthSettingsMedicalIDCallToActionTableViewController *)v11 initWithHealthSettingsProfile:v12];
      [(HKHealthSettingsMedicalIDViewController *)self set_currentChildViewController:v13];
    }

    else
    {
      v14 = objc_alloc_init(MEMORY[0x277D75D28]);
      [(HKHealthSettingsMedicalIDViewController *)self set_currentChildViewController:v14];

      v15 = [MEMORY[0x277D75348] systemGroupedBackgroundColor];
      v16 = [(HKHealthSettingsMedicalIDViewController *)self _currentChildViewController];
      v17 = [v16 view];
      [v17 setBackgroundColor:v15];
    }

    v18 = [(HKHealthSettingsMedicalIDViewController *)self navigationItem];
    [v18 setRightBarButtonItem:0];
  }

  v23 = [(HKHealthSettingsMedicalIDViewController *)self _currentChildViewController];
  [(HKHealthSettingsMedicalIDViewController *)self addChildViewController:v23];

  v24 = [(HKHealthSettingsMedicalIDViewController *)self view];
  v25 = [(HKHealthSettingsMedicalIDViewController *)self _currentChildViewController];
  v26 = [v25 view];
  [v24 addSubview:v26];

  v27 = [(HKHealthSettingsMedicalIDViewController *)self _currentChildViewController];
  v28 = [v27 view];
  v29 = [(HKHealthSettingsMedicalIDViewController *)self view];
  [v28 hk_alignConstraintsWithView:v29];

  v30 = [(HKHealthSettingsMedicalIDViewController *)self _currentChildViewController];
  [v30 didMoveToParentViewController:self];
}

- (void)medicalIDViewControllerDidDelete:(id)a3
{
  v5 = a3;
  if ([(HKHealthSettingsMedicalIDViewController *)self isEditEnabled])
  {
    v4 = [v5 navigationController];
    [v4 dismissViewControllerAnimated:1 completion:0];

    [(HKMedicalIDStore *)self->_medicalIDStore deleteMedicalIDDataWithCompletion:0];
    [(HKHealthSettingsMedicalIDViewController *)self set_medicalIDData:0];
    [(HKHealthSettingsMedicalIDViewController *)self _updateChildViewController];
  }
}

- (void)medicalIDViewControllerDidCancel:(id)a3
{
  v3 = [a3 navigationController];
  [v3 dismissViewControllerAnimated:1 completion:0];
}

- (void)medicalIDViewControllerDidSave:(id)a3
{
  v3 = [a3 navigationController];
  [v3 dismissViewControllerAnimated:1 completion:0];
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

- (HKHealthSettingsNavigationDonating)settingsNavigationDonatingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_settingsNavigationDonatingDelegate);

  return WeakRetained;
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