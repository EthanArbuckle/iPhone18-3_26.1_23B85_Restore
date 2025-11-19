@interface DMCEnrollmentConsentViewController
- (BOOL)isEqual:(id)a3;
- (DMCEnrollmentConsentViewController)initWithDelegate:(id)a3 username:(id)a4 profile:(id)a5 enrollmentType:(unint64_t)a6;
- (DMCEnrollmentConsentViewControllerDelegate)delegate;
- (id)_cellDataForESSOBYODDisclosure;
- (id)_cellDataForESSODeviceDisclosure;
- (id)_cellDataForLearnMoreButton;
- (id)_commonCellDataForRegularBYODDisclosure;
- (id)_platterCellDataForRegularADDEDisclosure;
- (id)_platterCellDataForRegularADUEDisclosure;
- (id)_platterCellDataWithImage:(id)a3 text:(id)a4;
- (id)_requiredAppCellData;
- (id)_serverURLWithoutHTTP:(id)a3;
- (void)_requiredAppCellData;
- (void)_setupManagementDetailsLinkTextForCell:(id)a3;
- (void)loadView;
- (void)updateContinueButtonStatus;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation DMCEnrollmentConsentViewController

- (DMCEnrollmentConsentViewController)initWithDelegate:(id)a3 username:(id)a4 profile:(id)a5 enrollmentType:(unint64_t)a6
{
  v37[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = DMCLocalizedString();
  v35.receiver = self;
  v35.super_class = DMCEnrollmentConsentViewController;
  v14 = [(DMCEnrollmentTemplateTableViewController *)&v35 initWithIconName:@"gear" title:v13 subTitle:0];
  if (v14)
  {
    v15 = [v11 copy];
    username = v14->_username;
    v14->_username = v15;

    objc_storeStrong(&v14->_profile, a5);
    objc_storeWeak(&v14->_delegate, v10);
    v17 = [v12 hasRequiredAppIDForMDM];
    requiredAppID = v14->_requiredAppID;
    v14->_requiredAppID = v17;

    if (v12)
    {
      v19 = [v12 payloadsWithClass:objc_opt_class()];
      v20 = [v19 firstObject];

      v21 = [v12 organization];
      v22 = [v21 copy];
      orgName = v14->_orgName;
      v14->_orgName = v22;

      v24 = [v20 serverURLString];
      v25 = [(DMCEnrollmentConsentViewController *)v14 _serverURLWithoutHTTP:v24];
      serverURL = v14->_serverURL;
      v14->_serverURL = v25;

      v27 = [(DMCEnrollmentConsentViewController *)v14 _commonCellDataForRegularBYODDisclosure];
      [(DMCEnrollmentTemplateTableViewController *)v14 addCellData:v27 animated:0];
      v28 = [v20 enrollmentMode];
      v29 = [v28 isEqualToString:*MEMORY[0x277D247C8]];

      if (v29)
      {
        v30 = [(DMCEnrollmentConsentViewController *)v14 _platterCellDataForRegularADDEDisclosure];
        v37[0] = v30;
        v31 = v37;
      }

      else
      {
        v30 = [(DMCEnrollmentConsentViewController *)v14 _platterCellDataForRegularADUEDisclosure];
        v36 = v30;
        v31 = &v36;
      }

      v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:1];
      [(DMCEnrollmentTemplateTableViewController *)v14 addSectionWithCellData:v32 animated:0];
    }

    else
    {
      if (a6 == 4)
      {
        [(DMCEnrollmentConsentViewController *)v14 _cellDataForESSOBYODDisclosure];
      }

      else
      {
        [(DMCEnrollmentConsentViewController *)v14 _cellDataForESSODeviceDisclosure];
      }
      v20 = ;
      v33 = [(DMCEnrollmentConsentViewController *)v14 _cellDataForLearnMoreButton];
      [v20 addObject:v33];

      [(DMCEnrollmentTemplateTableViewController *)v14 addCellData:v20 animated:0];
    }
  }

  return v14;
}

- (void)loadView
{
  v12.receiver = self;
  v12.super_class = DMCEnrollmentConsentViewController;
  [(DMCEnrollmentConsentViewController *)&v12 loadView];
  objc_initWeak(&location, self);
  v3 = [DMCEnrollmentConfirmationView alloc];
  v4 = DMCLocalizedString();
  v5 = DMCLocalizedString();
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __46__DMCEnrollmentConsentViewController_loadView__block_invoke;
  v9[3] = &unk_278EE7880;
  objc_copyWeak(&v10, &location);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__DMCEnrollmentConsentViewController_loadView__block_invoke_2;
  v7[3] = &unk_278EE7880;
  objc_copyWeak(&v8, &location);
  v6 = [(DMCEnrollmentConfirmationView *)v3 initWithConfirmationText:v4 cancelText:v5 confirmationAction:v9 cancelAction:v7];

  [(DMCEnrollmentTemplateTableViewController *)self addBottomView:v6];
  [(DMCEnrollmentConsentViewController *)self setConfirmationView:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __46__DMCEnrollmentConsentViewController_loadView__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained delegate];
    [v2 consentViewController:v3 didReceiveUserAction:1];

    WeakRetained = v3;
  }
}

void __46__DMCEnrollmentConsentViewController_loadView__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained delegate];
    [v2 consentViewController:v3 didReceiveUserAction:0];

    WeakRetained = v3;
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = DMCEnrollmentConsentViewController;
  [(DMCEnrollmentTemplateTableViewController *)&v5 viewWillAppear:a3];
  v4 = [(DMCEnrollmentConsentViewController *)self navigationItem];
  [v4 setHidesBackButton:1];

  [(DMCEnrollmentConsentViewController *)self setModalInPresentation:1];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(DMCEnrollmentConsentViewController *)self username];
      v7 = [(DMCEnrollmentConsentViewController *)v5 username];
      if ([v6 isEqualToString:v7])
      {
        v8 = [(DMCEnrollmentConsentViewController *)self orgName];
        v9 = [(DMCEnrollmentConsentViewController *)v5 orgName];
        v10 = [v8 isEqualToString:v9];
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (void)updateContinueButtonStatus
{
  v3 = [(DMCEnrollmentTemplateTableViewController *)self inProgress];
  v4 = [(DMCEnrollmentConsentViewController *)self confirmationView];
  [v4 setInProgress:v3];
}

- (id)_commonCellDataForRegularBYODDisclosure
{
  v3 = objc_opt_new();
  v4 = [DMCEnrollmentTableViewTextCell alloc];
  v5 = DMCLocalizedString();
  v6 = [(DMCEnrollmentTableViewTextCell *)v4 initWithText:v5 bold:0];
  [v3 addObject:v6];

  v7 = [DMCEnrollmentTableViewTextCell alloc];
  v8 = [(DMCEnrollmentConsentViewController *)self orgName];
  v9 = [(DMCEnrollmentConsentViewController *)self serverURL];
  v10 = [(DMCEnrollmentTableViewTextCell *)v7 initWithText:v8 bold:1 subText:v9 layoutStyle:0];
  [v3 addObject:v10];

  return v3;
}

- (id)_platterCellDataForRegularADUEDisclosure
{
  v3 = [MEMORY[0x277D755B8] systemImageNamed:@"person.line.dotted.person.fill"];
  v4 = DMCLocalizedString();
  v5 = [(DMCEnrollmentConsentViewController *)self _platterCellDataWithImage:v3 text:v4];

  return v5;
}

- (id)_platterCellDataForRegularADDEDisclosure
{
  v13[2] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D755B8] systemImageNamed:@"exclamationmark.triangle.fill"];
  v4 = MEMORY[0x277D755D0];
  v5 = [MEMORY[0x277D75348] systemWhiteColor];
  v13[0] = v5;
  v6 = [MEMORY[0x277D75348] systemOrangeColor];
  v13[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
  v8 = [v4 configurationWithPaletteColors:v7];

  v9 = [v3 imageWithConfiguration:v8];

  v10 = DMCLocalizedStringByDevice();
  v11 = [(DMCEnrollmentConsentViewController *)self _platterCellDataWithImage:v9 text:v10];

  return v11;
}

- (id)_platterCellDataWithImage:(id)a3 text:(id)a4
{
  v20[2] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = [[DMCEnrollmentTableViewIconCell alloc] initWithIconImage:v7 layoutStyle:1];

  v9 = [[DMCEnrollmentTableViewTextCell alloc] initWithText:v6 bold:0 subText:0 layoutStyle:1];
  v10 = [[DMCEnrollmentTableViewTextCell alloc] initWithText:&stru_2859FB650 bold:0 subText:0 layoutStyle:1];
  [(DMCEnrollmentConsentViewController *)self _setupManagementDetailsLinkTextForCell:v10];
  v20[0] = v8;
  v20[1] = v9;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
  v12 = [v11 mutableCopy];

  v13 = [(DMCEnrollmentConsentViewController *)self _requiredAppCellData];
  if (v13)
  {
    [v12 insertObject:v13 atIndex:1];
  }

  [v12 addObject:v10];
  v14 = [DMCEnrollmentTableViewPlatterCell alloc];
  v19 = v12;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v19 count:1];
  v16 = [(DMCEnrollmentTemplateTableViewController *)self tableView];
  v17 = [(DMCEnrollmentTableViewPlatterCell *)v14 initWithCellData:v15 parentTableView:v16 useShadow:1];

  return v17;
}

- (void)_setupManagementDetailsLinkTextForCell:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = DMCLocalizedString();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __77__DMCEnrollmentConsentViewController__setupManagementDetailsLinkTextForCell___block_invoke;
  v6[3] = &unk_278EE7880;
  objc_copyWeak(&v7, &location);
  [v4 configureLinkText:v5 forceLineBreak:0 linkAction:v6];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __77__DMCEnrollmentConsentViewController__setupManagementDetailsLinkTextForCell___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __77__DMCEnrollmentConsentViewController__setupManagementDetailsLinkTextForCell___block_invoke_2;
    block[3] = &unk_278EE74C0;
    block[4] = WeakRetained;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __77__DMCEnrollmentConsentViewController__setupManagementDetailsLinkTextForCell___block_invoke_2(uint64_t a1)
{
  v2 = [DMCProfileViewModel alloc];
  v3 = [*(a1 + 32) profile];
  v7 = [(DMCProfileViewModel *)v2 initWithProfile:v3 managedPayloads:0];

  v4 = [[DMCProfileDetailsViewController alloc] initWithProfileViewModel:v7 mode:1];
  v5 = DMCLocalizedString();
  [(DMCProfileDetailsViewController *)v4 setTableTitle:v5];

  v6 = [[DMCNavigationController alloc] initWithRootViewController:v4];
  [*(a1 + 32) presentViewController:v6 animated:1 completion:0];
}

- (id)_requiredAppCellData
{
  v32[1] = *MEMORY[0x277D85DE8];
  if (self->_requiredAppID)
  {
    v27 = 0;
    v28 = &v27;
    v29 = 0x2050000000;
    v3 = getSKStoreProductViewControllerClass_softClass;
    v30 = getSKStoreProductViewControllerClass_softClass;
    if (!getSKStoreProductViewControllerClass_softClass)
    {
      location = MEMORY[0x277D85DD0];
      v23 = 3221225472;
      v24 = __getSKStoreProductViewControllerClass_block_invoke;
      v25 = &unk_278EE7940;
      v26 = &v27;
      __getSKStoreProductViewControllerClass_block_invoke(&location);
      v3 = v28[3];
    }

    v4 = v3;
    _Block_object_dispose(&v27, 8);
    v5 = objc_alloc_init(v3);
    v27 = 0;
    v28 = &v27;
    v29 = 0x2020000000;
    v6 = getSKStoreProductParameterITunesItemIdentifierSymbolLoc_ptr;
    v30 = getSKStoreProductParameterITunesItemIdentifierSymbolLoc_ptr;
    if (!getSKStoreProductParameterITunesItemIdentifierSymbolLoc_ptr)
    {
      location = MEMORY[0x277D85DD0];
      v23 = 3221225472;
      v24 = __getSKStoreProductParameterITunesItemIdentifierSymbolLoc_block_invoke;
      v25 = &unk_278EE7940;
      v26 = &v27;
      v7 = StoreKitLibrary();
      v8 = dlsym(v7, "SKStoreProductParameterITunesItemIdentifier");
      *(v26[1] + 24) = v8;
      getSKStoreProductParameterITunesItemIdentifierSymbolLoc_ptr = *(v26[1] + 24);
      v6 = v28[3];
    }

    _Block_object_dispose(&v27, 8);
    if (!v6)
    {
      [DMCEnrollmentConsentViewController _requiredAppCellData];
      __break(1u);
    }

    requiredAppID = self->_requiredAppID;
    v31 = *v6;
    v32[0] = requiredAppID;
    v10 = MEMORY[0x277CBEAC0];
    v11 = v31;
    v12 = [v10 dictionaryWithObjects:v32 forKeys:&v31 count:1];
    [v5 loadProductWithParameters:v12 completionBlock:&__block_literal_global_0];

    [v5 setShowsStoreButton:0];
    [v5 setShowsRightBarButton:0];
    v13 = [DMCEnrollmentTableViewTextCell alloc];
    v14 = DMCLocalizedString();
    v15 = [(DMCEnrollmentTableViewTextCell *)v13 initWithText:v14 bold:0 subText:0 layoutStyle:1];

    objc_initWeak(&location, self);
    v16 = DMCLocalizedString();
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __58__DMCEnrollmentConsentViewController__requiredAppCellData__block_invoke_89;
    v19[3] = &unk_278EE7918;
    objc_copyWeak(&v21, &location);
    v17 = v5;
    v20 = v17;
    [(DMCEnrollmentTableViewTextCell *)v15 configureLinkText:v16 forceLineBreak:0 linkAction:v19];

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

void __58__DMCEnrollmentConsentViewController__requiredAppCellData__block_invoke(uint64_t a1, char a2, void *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4 || (a2 & 1) == 0)
  {
    v5 = *DMCLogObjects();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 138543362;
      v7 = v4;
      _os_log_impl(&dword_247E7D000, v5, OS_LOG_TYPE_ERROR, "Could not load product info for store!! : %{public}@", &v6, 0xCu);
    }
  }
}

void __58__DMCEnrollmentConsentViewController__requiredAppCellData__block_invoke_89(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __58__DMCEnrollmentConsentViewController__requiredAppCellData__block_invoke_2;
  v2[3] = &unk_278EE7918;
  objc_copyWeak(&v4, (a1 + 40));
  v3 = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], v2);

  objc_destroyWeak(&v4);
}

void __58__DMCEnrollmentConsentViewController__requiredAppCellData__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained presentViewController:*(a1 + 32) animated:1 completion:0];
    WeakRetained = v3;
  }
}

- (id)_cellDataForLearnMoreButton
{
  v3 = [[DMCEnrollmentTableViewTextCell alloc] initWithText:&stru_2859FB650 bold:0];
  objc_initWeak(&location, self);
  v4 = DMCLocalizedString();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __65__DMCEnrollmentConsentViewController__cellDataForLearnMoreButton__block_invoke;
  v6[3] = &unk_278EE7880;
  objc_copyWeak(&v7, &location);
  [(DMCEnrollmentTableViewTextCell *)v3 configureLinkText:v4 forceLineBreak:0 linkAction:v6];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);

  return v3;
}

void __65__DMCEnrollmentConsentViewController__cellDataForLearnMoreButton__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __65__DMCEnrollmentConsentViewController__cellDataForLearnMoreButton__block_invoke_2;
    block[3] = &unk_278EE74C0;
    block[4] = WeakRetained;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

- (id)_cellDataForESSOBYODDisclosure
{
  v2 = objc_opt_new();
  v3 = [DMCEnrollmentTableViewTextCell alloc];
  v4 = DMCLocalizedString();
  v5 = [(DMCEnrollmentTableViewTextCell *)v3 initWithText:v4 bold:0];
  [v2 addObject:v5];

  v6 = [DMCEnrollmentTableViewTextCell alloc];
  v7 = DMCLocalizedString();
  v8 = [(DMCEnrollmentTableViewTextCell *)v6 initWithText:v7 bold:0];
  [v2 addObject:v8];

  v9 = [DMCEnrollmentTableViewTextCell alloc];
  v10 = DMCLocalizedString();
  v11 = [(DMCEnrollmentTableViewTextCell *)v9 initWithText:v10 bold:0];
  [v2 addObject:v11];

  return v2;
}

- (id)_cellDataForESSODeviceDisclosure
{
  v2 = objc_opt_new();
  v3 = [DMCEnrollmentTableViewTextCell alloc];
  v4 = DMCLocalizedString();
  v5 = [(DMCEnrollmentTableViewTextCell *)v3 initWithText:v4 bold:0];
  [v2 addObject:v5];

  v6 = [DMCEnrollmentTableViewTextCell alloc];
  v7 = DMCLocalizedStringByDevice();
  v8 = [(DMCEnrollmentTableViewTextCell *)v6 initWithText:v7 bold:0];
  [v2 addObject:v8];

  return v2;
}

- (id)_serverURLWithoutHTTP:(id)a3
{
  v3 = a3;
  v4 = [v3 dmc_substringWithPattern:@".*:\\/\\/(.*)"];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v3;
  }

  v7 = v6;

  return v6;
}

- (DMCEnrollmentConsentViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_requiredAppCellData
{
  dlerror();
  abort_report_np();
  __getSKStoreProductViewControllerClass_block_invoke_cold_1();
}

@end