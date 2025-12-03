@interface HKHealthSettingsMedicalIDViewController
- (BOOL)isEditEnabled;
- (HKHealthSettingsMedicalIDViewController)init;
- (HKHealthSettingsMedicalIDViewController)initWithHealthSettingsProfile:(id)profile;
- (HKHealthSettingsNavigationDonating)settingsNavigationDonatingDelegate;
- (PSController)parentController;
- (PSRootController)rootController;
- (id)readPreferenceValue:(id)value;
- (void)_fetchMedicalIDData;
- (void)_handleFetchedMedicalIDData:(id)data;
- (void)_updateChildViewController;
- (void)dealloc;
- (void)handleURL:(id)l withCompletion:(id)completion;
- (void)medicalIDViewControllerDidCancel:(id)cancel;
- (void)medicalIDViewControllerDidDelete:(id)delete;
- (void)medicalIDViewControllerDidSave:(id)save;
- (void)setPreferenceValue:(id)value specifier:(id)specifier;
- (void)showController:(id)controller;
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

- (HKHealthSettingsMedicalIDViewController)initWithHealthSettingsProfile:(id)profile
{
  profileCopy = profile;
  v13.receiver = self;
  v13.super_class = HKHealthSettingsMedicalIDViewController;
  v5 = [(HKHealthSettingsMedicalIDViewController *)&v13 init];
  healthSettingsProfile = v5->_healthSettingsProfile;
  v5->_healthSettingsProfile = profileCopy;
  v7 = profileCopy;

  healthStore = [(WDProfile *)v7 healthStore];
  healthStore = v5->_healthStore;
  v5->_healthStore = healthStore;

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
  healthStore = [(HKHealthSettingsMedicalIDViewController *)self healthStore];
  _medicalIDData = [(HKHealthSettingsMedicalIDViewController *)self _medicalIDData];
  autoupdatingCurrentLocale = [MEMORY[0x277CBEAF8] autoupdatingCurrentLocale];
  v7 = [v3 initWithHealthStore:healthStore medicalIDData:_medicalIDData showDateUpdated:0 locale:autoupdatingCurrentLocale];
  navigationItem = [(HKHealthSettingsMedicalIDViewController *)self navigationItem];
  [navigationItem setTitleView:v7];

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
  healthStore = [(HKHealthSettingsMedicalIDViewController *)self healthStore];
  profileIdentifier = [healthStore profileIdentifier];
  v4 = [profileIdentifier type] != 3;

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

- (void)_handleFetchedMedicalIDData:(id)data
{
  [(HKHealthSettingsMedicalIDViewController *)self set_medicalIDData:data];
  [(HKHealthSettingsMedicalIDViewController *)self set_medicalIDLoaded:1];
  if ([(HKHealthSettingsMedicalIDViewController *)self isViewLoaded])
  {

    [(HKHealthSettingsMedicalIDViewController *)self _updateChildViewController];
  }
}

- (void)_updateChildViewController
{
  _currentChildViewController = [(HKHealthSettingsMedicalIDViewController *)self _currentChildViewController];
  [_currentChildViewController willMoveToParentViewController:0];

  _currentChildViewController2 = [(HKHealthSettingsMedicalIDViewController *)self _currentChildViewController];
  view = [_currentChildViewController2 view];
  [view removeFromSuperview];

  _currentChildViewController3 = [(HKHealthSettingsMedicalIDViewController *)self _currentChildViewController];
  [_currentChildViewController3 removeFromParentViewController];

  _medicalIDData = [(HKHealthSettingsMedicalIDViewController *)self _medicalIDData];
  if (_medicalIDData && (v8 = _medicalIDData, -[HKHealthSettingsMedicalIDViewController _medicalIDData](self, "_medicalIDData"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 isEmpty], v9, v8, (v10 & 1) == 0))
  {
    standardConfiguration = [MEMORY[0x277D27FC8] standardConfiguration];
    [standardConfiguration setIsDeletionAvailable:1];
    [standardConfiguration setAccessPoint:7];
    v19 = objc_alloc(MEMORY[0x277D27FD8]);
    healthStore = [(HKHealthSettingsMedicalIDViewController *)self healthStore];
    _medicalIDData2 = [(HKHealthSettingsMedicalIDViewController *)self _medicalIDData];
    v22 = [v19 initWithHealthStore:healthStore medicalIDData:_medicalIDData2 displayConfiguration:standardConfiguration];

    [(HKHealthSettingsMedicalIDViewController *)self set_currentChildViewController:v22];
  }

  else
  {
    if ([(HKHealthSettingsMedicalIDViewController *)self _medicalIDLoaded])
    {
      v11 = [HKHealthSettingsMedicalIDCallToActionTableViewController alloc];
      healthSettingsProfile = [(HKHealthSettingsMedicalIDViewController *)self healthSettingsProfile];
      v13 = [(HKHealthSettingsMedicalIDCallToActionTableViewController *)v11 initWithHealthSettingsProfile:healthSettingsProfile];
      [(HKHealthSettingsMedicalIDViewController *)self set_currentChildViewController:v13];
    }

    else
    {
      v14 = objc_alloc_init(MEMORY[0x277D75D28]);
      [(HKHealthSettingsMedicalIDViewController *)self set_currentChildViewController:v14];

      systemGroupedBackgroundColor = [MEMORY[0x277D75348] systemGroupedBackgroundColor];
      _currentChildViewController4 = [(HKHealthSettingsMedicalIDViewController *)self _currentChildViewController];
      view2 = [_currentChildViewController4 view];
      [view2 setBackgroundColor:systemGroupedBackgroundColor];
    }

    standardConfiguration = [(HKHealthSettingsMedicalIDViewController *)self navigationItem];
    [standardConfiguration setRightBarButtonItem:0];
  }

  _currentChildViewController5 = [(HKHealthSettingsMedicalIDViewController *)self _currentChildViewController];
  [(HKHealthSettingsMedicalIDViewController *)self addChildViewController:_currentChildViewController5];

  view3 = [(HKHealthSettingsMedicalIDViewController *)self view];
  _currentChildViewController6 = [(HKHealthSettingsMedicalIDViewController *)self _currentChildViewController];
  view4 = [_currentChildViewController6 view];
  [view3 addSubview:view4];

  _currentChildViewController7 = [(HKHealthSettingsMedicalIDViewController *)self _currentChildViewController];
  view5 = [_currentChildViewController7 view];
  view6 = [(HKHealthSettingsMedicalIDViewController *)self view];
  [view5 hk_alignConstraintsWithView:view6];

  _currentChildViewController8 = [(HKHealthSettingsMedicalIDViewController *)self _currentChildViewController];
  [_currentChildViewController8 didMoveToParentViewController:self];
}

- (void)medicalIDViewControllerDidDelete:(id)delete
{
  deleteCopy = delete;
  if ([(HKHealthSettingsMedicalIDViewController *)self isEditEnabled])
  {
    navigationController = [deleteCopy navigationController];
    [navigationController dismissViewControllerAnimated:1 completion:0];

    [(HKMedicalIDStore *)self->_medicalIDStore deleteMedicalIDDataWithCompletion:0];
    [(HKHealthSettingsMedicalIDViewController *)self set_medicalIDData:0];
    [(HKHealthSettingsMedicalIDViewController *)self _updateChildViewController];
  }
}

- (void)medicalIDViewControllerDidCancel:(id)cancel
{
  navigationController = [cancel navigationController];
  [navigationController dismissViewControllerAnimated:1 completion:0];
}

- (void)medicalIDViewControllerDidSave:(id)save
{
  navigationController = [save navigationController];
  [navigationController dismissViewControllerAnimated:1 completion:0];
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