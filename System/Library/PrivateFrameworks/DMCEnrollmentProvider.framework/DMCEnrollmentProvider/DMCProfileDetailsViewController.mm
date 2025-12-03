@interface DMCProfileDetailsViewController
- (DMCProfileDetailsViewController)initWithProfileViewModel:(id)model mode:(int)mode;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_profileChanged:(id)changed;
- (void)_reloadTable:(id)table;
- (void)_setup;
- (void)_updateStateForCurrentMode;
- (void)dealloc;
- (void)reloadSectionArray;
- (void)setProfileDetailsMode:(int)mode;
- (void)setProfileViewModel:(id)model;
- (void)setProfileViewModel:(id)model mode:(int)mode;
- (void)setTableViewBottomInset:(double)inset;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation DMCProfileDetailsViewController

- (DMCProfileDetailsViewController)initWithProfileViewModel:(id)model mode:(int)mode
{
  v4 = *&mode;
  modelCopy = model;
  v10.receiver = self;
  v10.super_class = DMCProfileDetailsViewController;
  v7 = [(DMCProfileTableViewController *)&v10 initWithStyle:2];
  v8 = v7;
  if (v7)
  {
    [(DMCProfileDetailsViewController *)v7 _setup];
    [(DMCProfileDetailsViewController *)v8 setProfileViewModel:modelCopy mode:v4];
  }

  return v8;
}

- (void)_setup
{
  self->_showTitleIfOnlyOneSection = 1;
  tableView = [(DMCProfileDetailsViewController *)self tableView];
  v4 = objc_opt_class();
  v5 = +[DMCProfileDetailsCell cellIdentifier];
  [tableView registerClass:v4 forCellReuseIdentifier:v5];

  tableView2 = [(DMCProfileDetailsViewController *)self tableView];
  v7 = objc_opt_class();
  v8 = +[DMCProfileInfoTextCell cellIdentifier];
  [tableView2 registerClass:v7 forCellReuseIdentifier:v8];

  tableView3 = [(DMCProfileDetailsViewController *)self tableView];
  v10 = objc_opt_class();
  v11 = +[DMCProfileTitleTextCell cellIdentifier];
  [tableView3 registerClass:v10 forCellReuseIdentifier:v11];

  v15.receiver = self;
  v15.super_class = DMCProfileDetailsViewController;
  [(DMCProfileTableViewController *)&v15 updateExtendedLayoutIncludesOpaqueBars];
  v14.receiver = self;
  v14.super_class = DMCProfileDetailsViewController;
  [(DMCProfileTableViewController *)&v14 reloadTableOnContentSizeCategoryChange];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__profileChanged_ name:@"kMCUIProfileDidChangeNotification" object:0];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel__reloadTable_ name:@"kMCUIBridgeIconLoadedNotification" object:0];
}

- (void)viewWillAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = DMCProfileDetailsViewController;
  [(DMCProfileDetailsViewController *)&v6 viewWillAppear:appear];
  tableView = [(DMCProfileDetailsViewController *)self tableView];
  [tableView layoutIfNeeded];

  tableView2 = [(DMCProfileDetailsViewController *)self tableView];
  [tableView2 reloadData];
}

- (void)viewDidAppear:(BOOL)appear
{
  v9.receiver = self;
  v9.super_class = DMCProfileDetailsViewController;
  [(DMCProfileDetailsViewController *)&v9 viewDidAppear:appear];
  [(DMCProfileDetailsViewController *)self setViewControllerCanPop:1];
  sections = [(DMCProfileDetailsViewController *)self sections];
  v5 = [sections count];

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

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = DMCProfileDetailsViewController;
  [(DMCProfileDetailsViewController *)&v4 viewWillDisappear:disappear];
  [(DMCProfileDetailsViewController *)self setViewControllerCanPop:0];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = DMCProfileDetailsViewController;
  [(DMCProfileTableViewController *)&v4 dealloc];
}

- (void)_profileChanged:(id)changed
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

- (void)_reloadTable:(id)table
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

- (void)setProfileDetailsMode:(int)mode
{
  if (self->_mode != mode)
  {
    self->_mode = mode;
    [(DMCProfileDetailsViewController *)self _updateStateForCurrentMode];
  }
}

- (void)setProfileViewModel:(id)model
{
  modelCopy = model;
  if (self->_profileViewModel != modelCopy)
  {
    v6 = modelCopy;
    objc_storeStrong(&self->_profileViewModel, model);
    [(DMCProfileDetailsViewController *)self _updateStateForCurrentMode];
    modelCopy = v6;
  }
}

- (void)setProfileViewModel:(id)model mode:(int)mode
{
  v4 = *&mode;
  [(DMCProfileDetailsViewController *)self setProfileViewModel:model];

  [(DMCProfileDetailsViewController *)self setProfileDetailsMode:v4];
}

- (void)setTableViewBottomInset:(double)inset
{
  if (self->_tableViewBottomInset != inset)
  {
    self->_tableViewBottomInset = inset;
    tableView = [(DMCProfileDetailsViewController *)self tableView];
    [tableView contentInset];
    v6 = v5;
    v8 = v7;
    v10 = v9;

    tableViewBottomInset = self->_tableViewBottomInset;
    tableView2 = [(DMCProfileDetailsViewController *)self tableView];
    [tableView2 setContentInset:{v6, v8, tableViewBottomInset, v10}];
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
          profileViewModel = [(DMCProfileDetailsViewController *)self profileViewModel];
          byodInfoSections = [profileViewModel byodInfoSections];
          v6 = [byodInfoSections mutableCopy];

          profileViewModel2 = [(DMCProfileDetailsViewController *)self profileViewModel];
          moreDetailsSections = [profileViewModel2 moreDetailsSections];
          [v6 addObjectsFromArray:moreDetailsSections];

          v9 = [v6 copy];
          sections = self->_sections;
          self->_sections = v9;
        }

        goto LABEL_21;
      }

      profileViewModel3 = [(DMCProfileDetailsViewController *)self profileViewModel];
      moreDetailsSections2 = [profileViewModel3 moreDetailsSections];
LABEL_18:
      v14 = self->_sections;
      self->_sections = moreDetailsSections2;

      goto LABEL_21;
    }

    if (mode == 2)
    {
      profileViewModel3 = [(DMCProfileDetailsViewController *)self profileViewModel];
      [profileViewModel3 accountSections];
    }

    else
    {
      profileViewModel3 = [(DMCProfileDetailsViewController *)self profileViewModel];
      [profileViewModel3 managedAppSections];
    }

    moreDetailsSections2 = LABEL_9:;
    goto LABEL_18;
  }

  if (mode <= 5)
  {
    if (mode == 4)
    {
      profileViewModel3 = [(DMCProfileDetailsViewController *)self profileViewModel];
      [profileViewModel3 managedBookSections];
    }

    else
    {
      profileViewModel3 = [(DMCProfileDetailsViewController *)self profileViewModel];
      [profileViewModel3 restrictionSections];
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
  tableView = [(DMCProfileDetailsViewController *)self tableView];
  [tableView reloadData];
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
          navigationItem = [(DMCProfileDetailsViewController *)self navigationItem];
          [navigationItem setTitle:0];

          v5 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel__doneButtonTapped_];
          navigationItem2 = [(DMCProfileDetailsViewController *)self navigationItem];
          [navigationItem2 setRightBarButtonItem:v5];

          profileViewModel = [(DMCProfileDetailsViewController *)self profileViewModel];
          moreDetailsSections = [profileViewModel moreDetailsSections];
          sections = self->_sections;
          self->_sections = moreDetailsSections;

          self->_showTitleIfOnlyOneSection = 1;
          self->_shouldShowWarningText = 1;
        }
      }

      else
      {
        profileViewModel2 = [(DMCProfileDetailsViewController *)self profileViewModel];
        profile = [profileViewModel2 profile];
        friendlyName = [profile friendlyName];
        navigationItem3 = [(DMCProfileDetailsViewController *)self navigationItem];
        [navigationItem3 setTitle:friendlyName];

        profileViewModel3 = [(DMCProfileDetailsViewController *)self profileViewModel];
        moreDetailsSections2 = [profileViewModel3 moreDetailsSections];
        v23 = self->_sections;
        self->_sections = moreDetailsSections2;

        self->_showTitleIfOnlyOneSection = 1;
      }

      goto LABEL_20;
    }

    if (mode == 2)
    {
      v26 = DMCEnrollmentLocalizedString(@"DMC_PROFILE_DETAILS_ACCOUNTS");
      navigationItem4 = [(DMCProfileDetailsViewController *)self navigationItem];
      [navigationItem4 setTitle:v26];

      profileViewModel4 = [(DMCProfileDetailsViewController *)self profileViewModel];
      [profileViewModel4 accountSections];
    }

    else
    {
      v14 = DMCEnrollmentLocalizedString(@"DMC_PROFILE_DETAILS_APPS");
      navigationItem5 = [(DMCProfileDetailsViewController *)self navigationItem];
      [navigationItem5 setTitle:v14];

      profileViewModel4 = [(DMCProfileDetailsViewController *)self profileViewModel];
      [profileViewModel4 managedAppSections];
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
      navigationItem6 = [(DMCProfileDetailsViewController *)self navigationItem];
      [navigationItem6 setTitle:v24];

      profileViewModel4 = [(DMCProfileDetailsViewController *)self profileViewModel];
      [profileViewModel4 managedBookSections];
    }

    else
    {
      v10 = DMCEnrollmentLocalizedString(@"DMC_PROFILE_DETAILS_RESTRICTIONS");
      navigationItem7 = [(DMCProfileDetailsViewController *)self navigationItem];
      [navigationItem7 setTitle:v10];

      profileViewModel4 = [(DMCProfileDetailsViewController *)self profileViewModel];
      [profileViewModel4 restrictionSections];
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
  tableView = [(DMCProfileDetailsViewController *)self tableView];
  [tableView reloadData];

  navigationItem8 = [(DMCProfileDetailsViewController *)self navigationItem];
  DMCSendNavUIUpdatedNotification(navigationItem8);
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  sections = [(DMCProfileDetailsViewController *)self sections];
  v5 = [sections count];
  tableTitle = [(DMCProfileDetailsViewController *)self tableTitle];
  if ([tableTitle length])
  {
    ++v5;
  }

  return v5;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  tableTitle = [(DMCProfileDetailsViewController *)self tableTitle];
  v7 = [tableTitle length];

  if (v7)
  {
    if (!section)
    {
      goto LABEL_13;
    }

    --section;
  }

  sections = [(DMCProfileDetailsViewController *)self sections];
  if (section >= [sections count])
  {
    goto LABEL_11;
  }

  if ([(DMCProfileDetailsViewController *)self showTitleIfOnlyOneSection])
  {

LABEL_8:
    sections2 = [(DMCProfileDetailsViewController *)self sections];
    sections = [sections2 objectAtIndex:section];

    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      section = [sections sectionTitle];
LABEL_12:

      goto LABEL_13;
    }

LABEL_11:
    section = 0;
    goto LABEL_12;
  }

  sections3 = [(DMCProfileDetailsViewController *)self sections];
  v10 = [sections3 count];

  if (v10 >= 2)
  {
    goto LABEL_8;
  }

  section = 0;
LABEL_13:

  return section;
}

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  tableTitle = [(DMCProfileDetailsViewController *)self tableTitle];
  v7 = [tableTitle length];

  if (v7)
  {
    if (!section)
    {
      goto LABEL_12;
    }

    --section;
  }

  sections = [(DMCProfileDetailsViewController *)self sections];
  if (section >= [sections count])
  {
    goto LABEL_9;
  }

  shouldShowWarningText = [(DMCProfileDetailsViewController *)self shouldShowWarningText];

  if (shouldShowWarningText)
  {
    sections2 = [(DMCProfileDetailsViewController *)self sections];
    sections = [sections2 objectAtIndex:section];

    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      section = [sections sectionFooter];
LABEL_10:

      goto LABEL_12;
    }

LABEL_9:
    section = 0;
    goto LABEL_10;
  }

  section = 0;
LABEL_12:

  return section;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  tableTitle = [(DMCProfileDetailsViewController *)self tableTitle];
  v7 = [tableTitle length];

  if (v7)
  {
    if (!section)
    {
      return 1;
    }

    --section;
  }

  sections = [(DMCProfileDetailsViewController *)self sections];
  v9 = [sections count];

  if (section >= v9)
  {
    return 0;
  }

  sections2 = [(DMCProfileDetailsViewController *)self sections];
  v11 = [sections2 objectAtIndex:section];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    payloadViewModels = [v11 payloadViewModels];
    v13 = [payloadViewModels count];
  }

  else
  {
    objc_opt_class();
    v13 = objc_opt_isKindOfClass() & 1;
  }

  return v13;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  tableTitle = [(DMCProfileDetailsViewController *)self tableTitle];
  v9 = [tableTitle length];

  if (!v9)
  {
LABEL_4:
    section = [pathCopy section];
    sections = [(DMCProfileDetailsViewController *)self sections];
    v13 = [sections count];

    if (section < v13)
    {
      sections2 = [(DMCProfileDetailsViewController *)self sections];
      tableTitle2 = [sections2 objectAtIndex:section];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = +[DMCProfileDetailsCell cellIdentifier];
        v17 = [viewCopy dequeueReusableCellWithIdentifier:v16 forIndexPath:pathCopy];

        payloadViewModels = [tableTitle2 payloadViewModels];
        backgroundColor = [payloadViewModels objectAtIndex:{objc_msgSend(pathCopy, "row")}];
        [v17 setDetails:backgroundColor];
LABEL_15:

        goto LABEL_16;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v21 = +[DMCProfileInfoTextCell cellIdentifier];
        v17 = [viewCopy dequeueReusableCellWithIdentifier:v21 forIndexPath:pathCopy];

        payloadViewModels = tableTitle2;
        sectionAttributedText = [payloadViewModels sectionAttributedText];
        v23 = [sectionAttributedText length];

        if (v23)
        {
          sectionAttributedText2 = [payloadViewModels sectionAttributedText];
          [v17 setAttributedText:sectionAttributedText2];
        }

        else
        {
          sectionAttributedText2 = [payloadViewModels sectionText];
          [v17 setText:sectionAttributedText2];
        }

        [v17 setUserInteractionEnabled:0];
        backgroundColor = [viewCopy backgroundColor];
        [v17 setBackgroundColor:backgroundColor];
        goto LABEL_15;
      }
    }

    v26.receiver = self;
    v26.super_class = DMCProfileDetailsViewController;
    v17 = [(DMCProfileDetailsViewController *)&v26 tableView:viewCopy cellForRowAtIndexPath:pathCopy];
    goto LABEL_17;
  }

  if ([pathCopy section])
  {
    v10 = [MEMORY[0x277CCAA70] indexPathForRow:objc_msgSend(pathCopy inSection:{"row"), objc_msgSend(pathCopy, "section") - 1}];

    pathCopy = v10;
    goto LABEL_4;
  }

  v20 = +[DMCProfileTitleTextCell cellIdentifier];
  v17 = [viewCopy dequeueReusableCellWithIdentifier:v20 forIndexPath:pathCopy];

  tableTitle2 = [(DMCProfileDetailsViewController *)self tableTitle];
  [v17 setText:tableTitle2];
LABEL_16:

LABEL_17:

  return v17;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  tableTitle = [(DMCProfileDetailsViewController *)self tableTitle];
  v6 = [tableTitle length];

  if (v6)
  {
    if (![pathCopy section])
    {
      goto LABEL_27;
    }

    v7 = [MEMORY[0x277CCAA70] indexPathForRow:objc_msgSend(pathCopy inSection:{"row"), objc_msgSend(pathCopy, "section") - 1}];

    v8 = v7;
  }

  else
  {
    v8 = pathCopy;
  }

  pathCopy = v8;
  section = [v8 section];
  sections = [(DMCProfileDetailsViewController *)self sections];
  v11 = [sections count];

  if (section < v11)
  {
    sections2 = [(DMCProfileDetailsViewController *)self sections];
    v13 = [sections2 objectAtIndex:{objc_msgSend(pathCopy, "section")}];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_26:

      goto LABEL_27;
    }

    payloadViewModels = [v13 payloadViewModels];
    v15 = [payloadViewModels objectAtIndex:{objc_msgSend(pathCopy, "row")}];
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
        certificateProperties = [(__CFString *)v17 certificateProperties];
        v21 = [(DMCCertificateDetailsViewController *)v19 initWithCertificateProperties:certificateProperties];

        friendlyName = [(__CFString *)v17 friendlyName];
        navigationItem = [(DMCPayloadDetailsViewController *)v21 navigationItem];
        [navigationItem setTitle:friendlyName];
      }

      else
      {
        if ([(__CFString *)v17 isManagedAppPayload])
        {
          v25 = [DMCManagedMediaViewController alloc];
          friendlyName = [(DMCProfileDetailsViewController *)self profileViewModel];
          navigationItem = [(__CFString *)v17 managedApp];
          v26 = [(DMCManagedMediaViewController *)v25 initWithProfileViewModel:friendlyName managedApp:navigationItem];
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
          friendlyName = [(DMCProfileDetailsViewController *)self profileViewModel];
          navigationItem = [(__CFString *)v17 managedBook];
          v26 = [(DMCManagedMediaViewController *)v27 initWithProfileViewModel:friendlyName managedBook:navigationItem];
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
        navigationItem2 = [(DMCPayloadDetailsViewController *)v21 navigationItem];
        [navigationItem2 setTitle:v17];

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
      tableView = [(DMCPayloadDetailsViewController *)v21 tableView];
      [tableView contentInset];
      v30 = v29;
      v32 = v31;
      v34 = v33;

      [(DMCProfileDetailsViewController *)self tableViewBottomInset];
      v36 = v35;
      tableView2 = [(DMCPayloadDetailsViewController *)v21 tableView];
      [tableView2 setContentInset:{v30, v32, v36, v34}];

      [(UIViewController *)self dmc_pushViewController:v21 animated:1];
    }

LABEL_25:

    goto LABEL_26;
  }

LABEL_27:
}

@end