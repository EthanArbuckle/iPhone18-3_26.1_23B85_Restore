@interface DMCProfileDetailsViewController
- (DMCProfileDetailsViewController)initWithProfileViewModel:(id)a3 mode:(int)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_profileChanged:(id)a3;
- (void)_reloadTable:(id)a3;
- (void)_setup;
- (void)_updateStateForCurrentMode;
- (void)dealloc;
- (void)reloadSectionArray;
- (void)setProfileDetailsMode:(int)a3;
- (void)setProfileViewModel:(id)a3;
- (void)setProfileViewModel:(id)a3 mode:(int)a4;
- (void)setTableViewBottomInset:(double)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation DMCProfileDetailsViewController

- (DMCProfileDetailsViewController)initWithProfileViewModel:(id)a3 mode:(int)a4
{
  v4 = *&a4;
  v6 = a3;
  v10.receiver = self;
  v10.super_class = DMCProfileDetailsViewController;
  v7 = [(DMCProfileTableViewController *)&v10 initWithStyle:2];
  v8 = v7;
  if (v7)
  {
    [(DMCProfileDetailsViewController *)v7 _setup];
    [(DMCProfileDetailsViewController *)v8 setProfileViewModel:v6 mode:v4];
  }

  return v8;
}

- (void)_setup
{
  self->_showTitleIfOnlyOneSection = 1;
  v3 = [(DMCProfileDetailsViewController *)self tableView];
  v4 = objc_opt_class();
  v5 = +[DMCProfileDetailsCell cellIdentifier];
  [v3 registerClass:v4 forCellReuseIdentifier:v5];

  v6 = [(DMCProfileDetailsViewController *)self tableView];
  v7 = objc_opt_class();
  v8 = +[DMCProfileInfoTextCell cellIdentifier];
  [v6 registerClass:v7 forCellReuseIdentifier:v8];

  v9 = [(DMCProfileDetailsViewController *)self tableView];
  v10 = objc_opt_class();
  v11 = +[DMCProfileTitleTextCell cellIdentifier];
  [v9 registerClass:v10 forCellReuseIdentifier:v11];

  v15.receiver = self;
  v15.super_class = DMCProfileDetailsViewController;
  [(DMCProfileTableViewController *)&v15 updateExtendedLayoutIncludesOpaqueBars];
  v14.receiver = self;
  v14.super_class = DMCProfileDetailsViewController;
  [(DMCProfileTableViewController *)&v14 reloadTableOnContentSizeCategoryChange];
  v12 = [MEMORY[0x277CCAB98] defaultCenter];
  [v12 addObserver:self selector:sel__profileChanged_ name:@"kMCUIProfileDidChangeNotification" object:0];

  v13 = [MEMORY[0x277CCAB98] defaultCenter];
  [v13 addObserver:self selector:sel__reloadTable_ name:@"kMCUIBridgeIconLoadedNotification" object:0];
}

- (void)viewWillAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = DMCProfileDetailsViewController;
  [(DMCProfileDetailsViewController *)&v6 viewWillAppear:a3];
  v4 = [(DMCProfileDetailsViewController *)self tableView];
  [v4 layoutIfNeeded];

  v5 = [(DMCProfileDetailsViewController *)self tableView];
  [v5 reloadData];
}

- (void)viewDidAppear:(BOOL)a3
{
  v9.receiver = self;
  v9.super_class = DMCProfileDetailsViewController;
  [(DMCProfileDetailsViewController *)&v9 viewDidAppear:a3];
  [(DMCProfileDetailsViewController *)self setViewControllerCanPop:1];
  v4 = [(DMCProfileDetailsViewController *)self sections];
  v5 = [v4 count];

  if (!v5)
  {
    objc_initWeak(&location, self);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __49__DMCProfileDetailsViewController_viewDidAppear___block_invoke;
    v6[3] = &unk_278EE7880;
    objc_copyWeak(&v7, &location);
    dispatch_async(MEMORY[0x277D85CD0], v6);
    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

void __49__DMCProfileDetailsViewController_viewDidAppear___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained dmc_popViewControllerAnimated:1];
    WeakRetained = v2;
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = DMCProfileDetailsViewController;
  [(DMCProfileDetailsViewController *)&v4 viewWillDisappear:a3];
  [(DMCProfileDetailsViewController *)self setViewControllerCanPop:0];
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = DMCProfileDetailsViewController;
  [(DMCProfileTableViewController *)&v4 dealloc];
}

- (void)_profileChanged:(id)a3
{
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __51__DMCProfileDetailsViewController__profileChanged___block_invoke;
  v3[3] = &unk_278EE7880;
  objc_copyWeak(&v4, &location);
  dispatch_async(MEMORY[0x277D85CD0], v3);
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

uint64_t __51__DMCProfileDetailsViewController__profileChanged___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    [WeakRetained reloadSectionArray];
    v2 = [v6 sections];
    v3 = [v2 count];

    if (v3)
    {
      v4 = [v6 tableView];
      [v4 reloadData];
    }

    else if ([v6 viewControllerCanPop])
    {
      [v6 dmc_popViewControllerAnimated:1];
    }
  }

  return MEMORY[0x2821F96F8]();
}

- (void)_reloadTable:(id)a3
{
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __48__DMCProfileDetailsViewController__reloadTable___block_invoke;
  v3[3] = &unk_278EE7880;
  objc_copyWeak(&v4, &location);
  dispatch_async(MEMORY[0x277D85CD0], v3);
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __48__DMCProfileDetailsViewController__reloadTable___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained tableView];
    [v2 reloadData];

    WeakRetained = v3;
  }
}

- (void)setProfileDetailsMode:(int)a3
{
  if (self->_mode != a3)
  {
    self->_mode = a3;
    [(DMCProfileDetailsViewController *)self _updateStateForCurrentMode];
  }
}

- (void)setProfileViewModel:(id)a3
{
  v5 = a3;
  if (self->_profileViewModel != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_profileViewModel, a3);
    [(DMCProfileDetailsViewController *)self _updateStateForCurrentMode];
    v5 = v6;
  }
}

- (void)setProfileViewModel:(id)a3 mode:(int)a4
{
  v4 = *&a4;
  [(DMCProfileDetailsViewController *)self setProfileViewModel:a3];

  [(DMCProfileDetailsViewController *)self setProfileDetailsMode:v4];
}

- (void)setTableViewBottomInset:(double)a3
{
  if (self->_tableViewBottomInset != a3)
  {
    self->_tableViewBottomInset = a3;
    v4 = [(DMCProfileDetailsViewController *)self tableView];
    [v4 contentInset];
    v6 = v5;
    v8 = v7;
    v10 = v9;

    tableViewBottomInset = self->_tableViewBottomInset;
    v12 = [(DMCProfileDetailsViewController *)self tableView];
    [v12 setContentInset:{v6, v8, tableViewBottomInset, v10}];
  }
}

- (void)reloadSectionArray
{
  mode = self->_mode;
  if (mode <= 3)
  {
    if (mode <= 1)
    {
      if (mode)
      {
        if (mode == 1)
        {
          v4 = [(DMCProfileDetailsViewController *)self profileViewModel];
          v5 = [v4 byodInfoSections];
          v6 = [v5 mutableCopy];

          v7 = [(DMCProfileDetailsViewController *)self profileViewModel];
          v8 = [v7 moreDetailsSections];
          [v6 addObjectsFromArray:v8];

          v9 = [v6 copy];
          sections = self->_sections;
          self->_sections = v9;
        }

        goto LABEL_21;
      }

      v11 = [(DMCProfileDetailsViewController *)self profileViewModel];
      v12 = [v11 moreDetailsSections];
LABEL_18:
      v14 = self->_sections;
      self->_sections = v12;

      goto LABEL_21;
    }

    if (mode == 2)
    {
      v11 = [(DMCProfileDetailsViewController *)self profileViewModel];
      [v11 accountSections];
    }

    else
    {
      v11 = [(DMCProfileDetailsViewController *)self profileViewModel];
      [v11 managedAppSections];
    }

    v12 = LABEL_9:;
    goto LABEL_18;
  }

  if (mode <= 5)
  {
    if (mode == 4)
    {
      v11 = [(DMCProfileDetailsViewController *)self profileViewModel];
      [v11 managedBookSections];
    }

    else
    {
      v11 = [(DMCProfileDetailsViewController *)self profileViewModel];
      [v11 restrictionSections];
    }

    goto LABEL_9;
  }

  if (mode == 6)
  {
    v13 = 6;
  }

  else
  {
    if (mode != 7)
    {
      goto LABEL_21;
    }

    v13 = 7;
  }

  NSLog(&cfstr_Dmcprofiledeta_0.isa, a2, v13);
LABEL_21:
  v15 = [(DMCProfileDetailsViewController *)self tableView];
  [v15 reloadData];
}

- (void)_updateStateForCurrentMode
{
  mode = self->_mode;
  if (mode <= 3)
  {
    if (mode <= 1)
    {
      if (mode)
      {
        if (mode == 1)
        {
          v4 = [(DMCProfileDetailsViewController *)self navigationItem];
          [v4 setTitle:0];

          v5 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel__doneButtonTapped_];
          v6 = [(DMCProfileDetailsViewController *)self navigationItem];
          [v6 setRightBarButtonItem:v5];

          v7 = [(DMCProfileDetailsViewController *)self profileViewModel];
          v8 = [v7 moreDetailsSections];
          sections = self->_sections;
          self->_sections = v8;

          self->_showTitleIfOnlyOneSection = 1;
          self->_shouldShowWarningText = 1;
        }
      }

      else
      {
        v17 = [(DMCProfileDetailsViewController *)self profileViewModel];
        v18 = [v17 profile];
        v19 = [v18 friendlyName];
        v20 = [(DMCProfileDetailsViewController *)self navigationItem];
        [v20 setTitle:v19];

        v21 = [(DMCProfileDetailsViewController *)self profileViewModel];
        v22 = [v21 moreDetailsSections];
        v23 = self->_sections;
        self->_sections = v22;

        self->_showTitleIfOnlyOneSection = 1;
      }

      goto LABEL_20;
    }

    if (mode == 2)
    {
      v26 = DMCEnrollmentLocalizedString(@"DMC_PROFILE_DETAILS_ACCOUNTS");
      v27 = [(DMCProfileDetailsViewController *)self navigationItem];
      [v27 setTitle:v26];

      v12 = [(DMCProfileDetailsViewController *)self profileViewModel];
      [v12 accountSections];
    }

    else
    {
      v14 = DMCEnrollmentLocalizedString(@"DMC_PROFILE_DETAILS_APPS");
      v15 = [(DMCProfileDetailsViewController *)self navigationItem];
      [v15 setTitle:v14];

      v12 = [(DMCProfileDetailsViewController *)self profileViewModel];
      [v12 managedAppSections];
    }

    v13 = LABEL_9:;
    v28 = self->_sections;
    self->_sections = v13;

    self->_showTitleIfOnlyOneSection = 0;
    goto LABEL_20;
  }

  if (mode <= 5)
  {
    if (mode == 4)
    {
      v24 = DMCEnrollmentLocalizedString(@"DMC_PROFILE_DETAILS_BOOKS");
      v25 = [(DMCProfileDetailsViewController *)self navigationItem];
      [v25 setTitle:v24];

      v12 = [(DMCProfileDetailsViewController *)self profileViewModel];
      [v12 managedBookSections];
    }

    else
    {
      v10 = DMCEnrollmentLocalizedString(@"DMC_PROFILE_DETAILS_RESTRICTIONS");
      v11 = [(DMCProfileDetailsViewController *)self navigationItem];
      [v11 setTitle:v10];

      v12 = [(DMCProfileDetailsViewController *)self profileViewModel];
      [v12 restrictionSections];
    }

    goto LABEL_9;
  }

  if (mode == 6)
  {
    v16 = 6;
  }

  else
  {
    if (mode != 7)
    {
      goto LABEL_20;
    }

    v16 = 7;
  }

  NSLog(&cfstr_Dmcprofiledeta_1.isa, a2, v16);
LABEL_20:
  v29 = [(DMCProfileDetailsViewController *)self tableView];
  [v29 reloadData];

  v30 = [(DMCProfileDetailsViewController *)self navigationItem];
  DMCSendNavUIUpdatedNotification(v30);
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v4 = [(DMCProfileDetailsViewController *)self sections];
  v5 = [v4 count];
  v6 = [(DMCProfileDetailsViewController *)self tableTitle];
  if ([v6 length])
  {
    ++v5;
  }

  return v5;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v6 = [(DMCProfileDetailsViewController *)self tableTitle];
  v7 = [v6 length];

  if (v7)
  {
    if (!a4)
    {
      goto LABEL_13;
    }

    --a4;
  }

  v8 = [(DMCProfileDetailsViewController *)self sections];
  if (a4 >= [v8 count])
  {
    goto LABEL_11;
  }

  if ([(DMCProfileDetailsViewController *)self showTitleIfOnlyOneSection])
  {

LABEL_8:
    v11 = [(DMCProfileDetailsViewController *)self sections];
    v8 = [v11 objectAtIndex:a4];

    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      a4 = [v8 sectionTitle];
LABEL_12:

      goto LABEL_13;
    }

LABEL_11:
    a4 = 0;
    goto LABEL_12;
  }

  v9 = [(DMCProfileDetailsViewController *)self sections];
  v10 = [v9 count];

  if (v10 >= 2)
  {
    goto LABEL_8;
  }

  a4 = 0;
LABEL_13:

  return a4;
}

- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4
{
  v6 = [(DMCProfileDetailsViewController *)self tableTitle];
  v7 = [v6 length];

  if (v7)
  {
    if (!a4)
    {
      goto LABEL_12;
    }

    --a4;
  }

  v8 = [(DMCProfileDetailsViewController *)self sections];
  if (a4 >= [v8 count])
  {
    goto LABEL_9;
  }

  v9 = [(DMCProfileDetailsViewController *)self shouldShowWarningText];

  if (v9)
  {
    v10 = [(DMCProfileDetailsViewController *)self sections];
    v8 = [v10 objectAtIndex:a4];

    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      a4 = [v8 sectionFooter];
LABEL_10:

      goto LABEL_12;
    }

LABEL_9:
    a4 = 0;
    goto LABEL_10;
  }

  a4 = 0;
LABEL_12:

  return a4;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v6 = [(DMCProfileDetailsViewController *)self tableTitle];
  v7 = [v6 length];

  if (v7)
  {
    if (!a4)
    {
      return 1;
    }

    --a4;
  }

  v8 = [(DMCProfileDetailsViewController *)self sections];
  v9 = [v8 count];

  if (a4 >= v9)
  {
    return 0;
  }

  v10 = [(DMCProfileDetailsViewController *)self sections];
  v11 = [v10 objectAtIndex:a4];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = [v11 payloadViewModels];
    v13 = [v12 count];
  }

  else
  {
    objc_opt_class();
    v13 = objc_opt_isKindOfClass() & 1;
  }

  return v13;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(DMCProfileDetailsViewController *)self tableTitle];
  v9 = [v8 length];

  if (!v9)
  {
LABEL_4:
    v11 = [v7 section];
    v12 = [(DMCProfileDetailsViewController *)self sections];
    v13 = [v12 count];

    if (v11 < v13)
    {
      v14 = [(DMCProfileDetailsViewController *)self sections];
      v15 = [v14 objectAtIndex:v11];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = +[DMCProfileDetailsCell cellIdentifier];
        v17 = [v6 dequeueReusableCellWithIdentifier:v16 forIndexPath:v7];

        v18 = [v15 payloadViewModels];
        v19 = [v18 objectAtIndex:{objc_msgSend(v7, "row")}];
        [v17 setDetails:v19];
LABEL_15:

        goto LABEL_16;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v21 = +[DMCProfileInfoTextCell cellIdentifier];
        v17 = [v6 dequeueReusableCellWithIdentifier:v21 forIndexPath:v7];

        v18 = v15;
        v22 = [v18 sectionAttributedText];
        v23 = [v22 length];

        if (v23)
        {
          v24 = [v18 sectionAttributedText];
          [v17 setAttributedText:v24];
        }

        else
        {
          v24 = [v18 sectionText];
          [v17 setText:v24];
        }

        [v17 setUserInteractionEnabled:0];
        v19 = [v6 backgroundColor];
        [v17 setBackgroundColor:v19];
        goto LABEL_15;
      }
    }

    v26.receiver = self;
    v26.super_class = DMCProfileDetailsViewController;
    v17 = [(DMCProfileDetailsViewController *)&v26 tableView:v6 cellForRowAtIndexPath:v7];
    goto LABEL_17;
  }

  if ([v7 section])
  {
    v10 = [MEMORY[0x277CCAA70] indexPathForRow:objc_msgSend(v7 inSection:{"row"), objc_msgSend(v7, "section") - 1}];

    v7 = v10;
    goto LABEL_4;
  }

  v20 = +[DMCProfileTitleTextCell cellIdentifier];
  v17 = [v6 dequeueReusableCellWithIdentifier:v20 forIndexPath:v7];

  v15 = [(DMCProfileDetailsViewController *)self tableTitle];
  [v17 setText:v15];
LABEL_16:

LABEL_17:

  return v17;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v38 = a4;
  v5 = [(DMCProfileDetailsViewController *)self tableTitle];
  v6 = [v5 length];

  if (v6)
  {
    if (![v38 section])
    {
      goto LABEL_27;
    }

    v7 = [MEMORY[0x277CCAA70] indexPathForRow:objc_msgSend(v38 inSection:{"row"), objc_msgSend(v38, "section") - 1}];

    v8 = v7;
  }

  else
  {
    v8 = v38;
  }

  v38 = v8;
  v9 = [v8 section];
  v10 = [(DMCProfileDetailsViewController *)self sections];
  v11 = [v10 count];

  if (v9 < v11)
  {
    v12 = [(DMCProfileDetailsViewController *)self sections];
    v13 = [v12 objectAtIndex:{objc_msgSend(v38, "section")}];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_26:

      goto LABEL_27;
    }

    v14 = [v13 payloadViewModels];
    v15 = [v14 objectAtIndex:{objc_msgSend(v38, "row")}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = v15;
      v17 = v16;
      if (!v16)
      {
        goto LABEL_25;
      }

      if ([(__CFString *)v16 isCertificate]&& ([(__CFString *)v17 certificateProperties], v18 = objc_claimAutoreleasedReturnValue(), v18, v18))
      {
        v19 = [DMCCertificateDetailsViewController alloc];
        v20 = [(__CFString *)v17 certificateProperties];
        v21 = [(DMCCertificateDetailsViewController *)v19 initWithCertificateProperties:v20];

        v22 = [(__CFString *)v17 friendlyName];
        v23 = [(DMCPayloadDetailsViewController *)v21 navigationItem];
        [v23 setTitle:v22];
      }

      else
      {
        if ([(__CFString *)v17 isManagedAppPayload])
        {
          v25 = [DMCManagedMediaViewController alloc];
          v22 = [(DMCProfileDetailsViewController *)self profileViewModel];
          v23 = [(__CFString *)v17 managedApp];
          v26 = [(DMCManagedMediaViewController *)v25 initWithProfileViewModel:v22 managedApp:v23];
        }

        else
        {
          if (![(__CFString *)v17 isManagedBookPayload])
          {
            if (![(__CFString *)v17 hasDetails])
            {
              goto LABEL_25;
            }

            v21 = [[DMCPayloadDetailsViewController alloc] initWithPayloadViewModel:v17];
            if (!v21)
            {
              goto LABEL_25;
            }

            goto LABEL_24;
          }

          v27 = [DMCManagedMediaViewController alloc];
          v22 = [(DMCProfileDetailsViewController *)self profileViewModel];
          v23 = [(__CFString *)v17 managedBook];
          v26 = [(DMCManagedMediaViewController *)v27 initWithProfileViewModel:v22 managedBook:v23];
        }

        v21 = v26;
      }
    }

    else
    {
      if (!v15)
      {
        v17 = 0;
        goto LABEL_25;
      }

      v21 = [[DMCCertificateDetailsViewController alloc] initWithCertificate:v15];
      v17 = SecCertificateCopySubjectSummary(v15);
      if (v17)
      {
        v24 = [(DMCPayloadDetailsViewController *)v21 navigationItem];
        [v24 setTitle:v17];

        CFRelease(v17);
        v17 = 0;
        if (!v21)
        {
          goto LABEL_25;
        }

        goto LABEL_24;
      }
    }

    if (v21)
    {
LABEL_24:
      v28 = [(DMCPayloadDetailsViewController *)v21 tableView];
      [v28 contentInset];
      v30 = v29;
      v32 = v31;
      v34 = v33;

      [(DMCProfileDetailsViewController *)self tableViewBottomInset];
      v36 = v35;
      v37 = [(DMCPayloadDetailsViewController *)v21 tableView];
      [v37 setContentInset:{v30, v32, v36, v34}];

      [(UIViewController *)self dmc_pushViewController:v21 animated:1];
    }

LABEL_25:

    goto LABEL_26;
  }

LABEL_27:
}

@end