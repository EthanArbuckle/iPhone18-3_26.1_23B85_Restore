@interface DMCEnrollmentDebuggingESSOApplicationInstallationViewController
- (DMCEnrollmentDebuggingESSOApplicationInstallationViewController)initWithDelegate:(id)a3 appBundleIDs:(id)a4 requiredEntitlements:(id)a5;
- (DMCEnrollmentDebuggingESSOApplicationInstallationViewControllerDelegate)delegate;
- (void)applicationsDidInstall:(id)a3;
- (void)leftBarButtonTapped:(id)a3;
- (void)loadView;
- (void)updateContinueButtonStatus;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation DMCEnrollmentDebuggingESSOApplicationInstallationViewController

- (DMCEnrollmentDebuggingESSOApplicationInstallationViewController)initWithDelegate:(id)a3 appBundleIDs:(id)a4 requiredEntitlements:(id)a5
{
  v33[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = DMCLocalizedString();
  v30.receiver = self;
  v30.super_class = DMCEnrollmentDebuggingESSOApplicationInstallationViewController;
  v12 = [(DMCEnrollmentTemplateTableViewController *)&v30 initWithIconName:@"hammer.circle.fill" title:v11 subTitle:0];

  if (v12)
  {
    objc_storeWeak(&v12->_delegate, v8);
    v13 = [v9 copy];
    bundleIDs = v12->_bundleIDs;
    v12->_bundleIDs = v13;

    v15 = [v10 copy];
    requiredEntitlements = v12->_requiredEntitlements;
    v12->_requiredEntitlements = v15;

    v17 = [MEMORY[0x277CC1E80] defaultWorkspace];
    appWorkspace = v12->_appWorkspace;
    v12->_appWorkspace = v17;

    [(LSApplicationWorkspace *)v12->_appWorkspace addObserver:v12];
    v19 = [DMCEnrollmentTableViewTextCell alloc];
    v20 = DMCLocalizedString();
    v21 = [(DMCEnrollmentTableViewTextCell *)v19 initWithText:v20 bold:0];
    v33[0] = v21;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:1];
    [(DMCEnrollmentTemplateTableViewController *)v12 addCellData:v22 animated:0];

    v23 = [[DMCEnrollmentNameListCell alloc] initWithNames:v9 numberOfColumns:1];
    v32 = v23;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v32 count:1];
    [(DMCEnrollmentTemplateTableViewController *)v12 addSectionWithCellData:v24 animated:0];

    v25 = [DMCEnrollmentTableViewTextCell alloc];
    v26 = DMCLocalizedString();
    v27 = [(DMCEnrollmentTableViewTextCell *)v25 initWithText:v26 bold:0];
    v31 = v27;
    v28 = [MEMORY[0x277CBEA60] arrayWithObjects:&v31 count:1];
    [(DMCEnrollmentTemplateTableViewController *)v12 addSectionWithCellData:v28 animated:0];
  }

  return v12;
}

- (void)loadView
{
  v12.receiver = self;
  v12.super_class = DMCEnrollmentDebuggingESSOApplicationInstallationViewController;
  [(DMCEnrollmentDebuggingESSOApplicationInstallationViewController *)&v12 loadView];
  objc_initWeak(&location, self);
  v3 = [DMCEnrollmentConfirmationView alloc];
  v4 = DMCLocalizedString();
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __75__DMCEnrollmentDebuggingESSOApplicationInstallationViewController_loadView__block_invoke;
  v9 = &unk_278EE7880;
  objc_copyWeak(&v10, &location);
  v5 = [(DMCEnrollmentConfirmationView *)v3 initWithConfirmationText:v4 cancelText:0 confirmationAction:&v6 cancelAction:&__block_literal_global_1];

  [(DMCEnrollmentTemplateTableViewController *)self addBottomView:v5, v6, v7, v8, v9];
  [(DMCEnrollmentDebuggingESSOApplicationInstallationViewController *)self setConfirmationView:v5];
  [(DMCEnrollmentDebuggingESSOApplicationInstallationViewController *)self updateContinueButtonStatus];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __75__DMCEnrollmentDebuggingESSOApplicationInstallationViewController_loadView__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained delegate];
    [v2 debuggingApplicationInstallationViewController:v3 didReceiveUserAction:1];

    WeakRetained = v3;
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = DMCEnrollmentDebuggingESSOApplicationInstallationViewController;
  [(DMCEnrollmentTemplateTableViewController *)&v4 viewWillAppear:a3];
  if (([(DMCEnrollmentDebuggingESSOApplicationInstallationViewController *)self isBeingPresented]& 1) != 0 || [(DMCEnrollmentDebuggingESSOApplicationInstallationViewController *)self isMovingToParentViewController])
  {
    [(DMCEnrollmentDebuggingESSOApplicationInstallationViewController *)self _setupNavigationBar];
  }
}

- (void)leftBarButtonTapped:(id)a3
{
  v4 = [(DMCEnrollmentDebuggingESSOApplicationInstallationViewController *)self delegate];
  [v4 debuggingApplicationInstallationViewController:self didReceiveUserAction:0];
}

- (void)updateContinueButtonStatus
{
  v3 = [(DMCEnrollmentTemplateTableViewController *)self inProgress];
  v4 = [(DMCEnrollmentDebuggingESSOApplicationInstallationViewController *)self confirmationView];
  v5 = v4;
  if (v3)
  {
    [v4 setInProgress:1];
  }

  else
  {
    [v4 setInProgress:0];

    v6 = [(DMCEnrollmentDebuggingESSOApplicationInstallationViewController *)self requiredAppInstalled];
    v5 = [(DMCEnrollmentDebuggingESSOApplicationInstallationViewController *)self confirmationView];
    [v5 setConfirmationButtonEnabled:v6];
  }

  v7 = [(DMCEnrollmentDebuggingESSOApplicationInstallationViewController *)self view];
  [v7 setNeedsDisplay];
}

- (void)applicationsDidInstall:(id)a3
{
  v51 = *MEMORY[0x277D85DE8];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = a3;
  v4 = [obj countByEnumeratingWithState:&v41 objects:v50 count:16];
  if (!v4)
  {
    goto LABEL_28;
  }

  v5 = v4;
  v33 = 0;
  v6 = *v42;
  v30 = *v42;
  v31 = self;
  do
  {
    v7 = 0;
    v32 = v5;
    do
    {
      if (*v42 != v6)
      {
        objc_enumerationMutation(obj);
      }

      v8 = *(*(&v41 + 1) + 8 * v7);
      v9 = *DMCLogObjects();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = v9;
        v11 = [v8 bundleIdentifier];
        *buf = 138543362;
        v46 = v11;
        _os_log_impl(&dword_247E7D000, v10, OS_LOG_TYPE_DEFAULT, "Application (%{public}@) installed.", buf, 0xCu);
      }

      v12 = [(DMCEnrollmentDebuggingESSOApplicationInstallationViewController *)self bundleIDs:v30];
      v13 = [v8 bundleIdentifier];
      v14 = [v12 containsObject:v13];

      if (v14)
      {
        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v15 = [(DMCEnrollmentDebuggingESSOApplicationInstallationViewController *)self requiredEntitlements];
        v16 = [v15 countByEnumeratingWithState:&v37 objects:v49 count:16];
        if (!v16)
        {

LABEL_23:
          [(DMCEnrollmentDebuggingESSOApplicationInstallationViewController *)self delegate];
          v28 = v27 = v7;
          v29 = [v8 bundleIdentifier];
          [v28 debuggingApplicationInstallationViewController:self didInstallApplication:v29];

          v7 = v27;
          v33 = 1;
          goto LABEL_24;
        }

        v17 = v16;
        v35 = v7;
        v18 = *v38;
        v19 = 1;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v38 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v21 = *(*(&v37 + 1) + 8 * i);
            v22 = [v8 entitlementValueForKey:v21 ofClass:objc_opt_class()];
            v23 = [v22 BOOLValue];

            if ((v23 & 1) == 0)
            {
              v24 = *DMCLogObjects();
              if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
              {
                v25 = v24;
                v26 = [v8 bundleIdentifier];
                *buf = 138543618;
                v46 = v26;
                v47 = 2114;
                v48 = v21;
                _os_log_impl(&dword_247E7D000, v25, OS_LOG_TYPE_ERROR, "Application (%{public}@) doesn't have the required entitlement: %{public}@", buf, 0x16u);
              }

              v19 = 0;
            }
          }

          v17 = [v15 countByEnumeratingWithState:&v37 objects:v49 count:16];
        }

        while (v17);

        v6 = v30;
        self = v31;
        v5 = v32;
        v7 = v35;
        if (v19)
        {
          goto LABEL_23;
        }
      }

LABEL_24:
      ++v7;
    }

    while (v7 != v5);
    v5 = [obj countByEnumeratingWithState:&v41 objects:v50 count:16];
  }

  while (v5);
  if (v33)
  {
    [(DMCEnrollmentDebuggingESSOApplicationInstallationViewController *)self setRequiredAppInstalled:1];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __90__DMCEnrollmentDebuggingESSOApplicationInstallationViewController_applicationsDidInstall___block_invoke;
    block[3] = &unk_278EE74C0;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

LABEL_28:
}

- (DMCEnrollmentDebuggingESSOApplicationInstallationViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end