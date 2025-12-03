@interface DMCMDMSignoutSpecifierProvider
- (UIViewController)viewController;
- (id)_specifierForSignoutButton;
- (id)_vc;
- (id)specifiers;
- (void)_specifierForMDMProfileWasTapped:(id)tapped;
@end

@implementation DMCMDMSignoutSpecifierProvider

- (id)specifiers
{
  v11[2] = *MEMORY[0x277D85DE8];
  v10.receiver = self;
  v10.super_class = DMCMDMSignoutSpecifierProvider;
  specifiers = [(DMCSpecifierProvider *)&v10 specifiers];

  if (specifiers)
  {
    v9.receiver = self;
    v9.super_class = DMCMDMSignoutSpecifierProvider;
    specifiers2 = [(DMCSpecifierProvider *)&v9 specifiers];
  }

  else
  {
    v5 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:*MEMORY[0x277D24D58]];
    v11[0] = v5;
    _specifierForSignoutButton = [(DMCMDMSignoutSpecifierProvider *)self _specifierForSignoutButton];
    v11[1] = _specifierForSignoutButton;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
    specifiers2 = [(DMCSpecifierProvider *)self cachedSpecifiers:v7];
  }

  return specifiers2;
}

- (id)_specifierForSignoutButton
{
  v3 = MEMORY[0x277D3FAD8];
  v4 = DMCLocalizedString();
  v5 = [v3 deleteButtonSpecifierWithName:v4 target:self action:sel__specifierForMDMProfileWasTapped_];

  [v5 setProperty:*MEMORY[0x277D24D50] forKey:*MEMORY[0x277D3FFB8]];

  return v5;
}

- (void)_specifierForMDMProfileWasTapped:(id)tapped
{
  tappedCopy = tapped;
  if (!self->_enrollmentInterface)
  {
    objc_initWeak(&location, self);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __67__DMCMDMSignoutSpecifierProvider__specifierForMDMProfileWasTapped___block_invoke;
    aBlock[3] = &unk_278EE7880;
    objc_copyWeak(&v21, &location);
    v5 = _Block_copy(aBlock);
    v6 = [DMCEnrollmentInterface alloc];
    v7 = [(DMCMDMSignoutSpecifierProvider *)self _vc];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __67__DMCMDMSignoutSpecifierProvider__specifierForMDMProfileWasTapped___block_invoke_4;
    v18[3] = &unk_278EE7E78;
    v8 = v5;
    v19 = v8;
    v9 = [(DMCEnrollmentInterface *)v6 initFromViewController:v7 enrollmentResultBlock:v18];
    enrollmentInterface = self->_enrollmentInterface;
    self->_enrollmentInterface = v9;

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  rmAccount = [(DMCSpecifierProvider *)self rmAccount];
  dmc_altDSID = [rmAccount dmc_altDSID];

  if (![dmc_altDSID length])
  {
    accountManager = [(DMCSpecifierProvider *)self accountManager];
    accounts = [accountManager accounts];
    allValues = [accounts allValues];
    firstObject = [allValues firstObject];
    dmc_altDSID2 = [firstObject dmc_altDSID];

    dmc_altDSID = dmc_altDSID2;
  }

  [(DMCEnrollmentInterface *)self->_enrollmentInterface startUnenrollmentWithAltDSID:dmc_altDSID silent:0];
}

void __67__DMCMDMSignoutSpecifierProvider__specifierForMDMProfileWasTapped___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__DMCMDMSignoutSpecifierProvider__specifierForMDMProfileWasTapped___block_invoke_2;
  block[3] = &unk_278EE7880;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v2);
}

void __67__DMCMDMSignoutSpecifierProvider__specifierForMDMProfileWasTapped___block_invoke_2(uint64_t a1)
{
  v1 = MEMORY[0x277D75D28];
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __67__DMCMDMSignoutSpecifierProvider__specifierForMDMProfileWasTapped___block_invoke_3;
  v2[3] = &unk_278EE7880;
  objc_copyWeak(&v3, (a1 + 32));
  [v1 _performWithoutDeferringTransitions:v2];
  objc_destroyWeak(&v3);
}

void __67__DMCMDMSignoutSpecifierProvider__specifierForMDMProfileWasTapped___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v9 = WeakRetained;
    v2 = [WeakRetained _vc];
    v3 = v2;
    if (v2)
    {
      if (([v2 dmc_popViewControllerAnimated:0] & 1) == 0)
      {
        [v3 popRecursivelyToRootController];
        v4 = [v3 navigationController];
        v5 = [v4 viewControllers];
        v6 = [v5 containsObject:v3];

        if (v6)
        {
          v7 = [MEMORY[0x277CC1E80] defaultWorkspace];
          v8 = [MEMORY[0x277CBEBC0] URLWithString:*MEMORY[0x277D24D60]];
          [v7 openSensitiveURL:v8 withOptions:0];
        }
      }
    }

    WeakRetained = v9;
  }
}

uint64_t __67__DMCMDMSignoutSpecifierProvider__specifierForMDMProfileWasTapped___block_invoke_4(uint64_t result, int a2, char a3)
{
  if (a2 && (a3 & 1) == 0)
  {
    result = *(result + 32);
    if (result)
    {
      return (*(result + 16))();
    }
  }

  return result;
}

- (id)_vc
{
  viewController = [(DMCMDMSignoutSpecifierProvider *)self viewController];

  if (viewController)
  {
    viewController2 = [(DMCMDMSignoutSpecifierProvider *)self viewController];
  }

  else
  {
    delegate = [(DMCSpecifierProvider *)self delegate];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      viewController2 = [(DMCSpecifierProvider *)self delegate];
    }

    else
    {
      v7 = *DMCLogObjects();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *v9 = 0;
        _os_log_impl(&dword_247E7D000, v7, OS_LOG_TYPE_ERROR, "DMCMDMSignoutSpecifierProvider does not have a view controller to pop", v9, 2u);
      }

      viewController2 = 0;
    }
  }

  return viewController2;
}

- (UIViewController)viewController
{
  WeakRetained = objc_loadWeakRetained(&self->_viewController);

  return WeakRetained;
}

@end