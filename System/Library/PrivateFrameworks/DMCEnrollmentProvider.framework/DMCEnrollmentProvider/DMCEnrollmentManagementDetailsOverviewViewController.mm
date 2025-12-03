@interface DMCEnrollmentManagementDetailsOverviewViewController
- (DMCEnrollmentManagementDetailsOverviewViewController)initWithDelegate:(id)delegate managedAppleID:(id)d profile:(id)profile requiredAppRequest:(id)request requiredAppViewGroup:(id)group;
- (DMCEnrollmentManagementDetailsOverviewViewControllerDelegate)delegate;
- (void)leftBarButtonTapped:(id)tapped;
- (void)loadView;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation DMCEnrollmentManagementDetailsOverviewViewController

- (DMCEnrollmentManagementDetailsOverviewViewController)initWithDelegate:(id)delegate managedAppleID:(id)d profile:(id)profile requiredAppRequest:(id)request requiredAppViewGroup:(id)group
{
  delegateCopy = delegate;
  dCopy = d;
  profileCopy = profile;
  requestCopy = request;
  groupCopy = group;
  v17 = DMCLocalizedString();
  v33.receiver = self;
  v33.super_class = DMCEnrollmentManagementDetailsOverviewViewController;
  v18 = [(DMCEnrollmentTemplateTableViewController *)&v33 initWithIconName:@"gear.badge.checkmark" title:v17 subTitle:0];

  if (v18)
  {
    objc_storeStrong(&v18->_profile, profile);
    objc_storeWeak(&v18->_delegate, delegateCopy);
    v19 = objc_opt_new();
    v20 = [DMCEnrollmentTableViewTextCell alloc];
    v21 = DMCLocalizedFormat();
    dCopy = [(DMCEnrollmentTableViewTextCell *)v20 initWithText:v21 bold:0, dCopy];
    [v19 addObject:dCopy];

    v23 = [[DMCEnrollmentTableViewTextCell alloc] initWithText:&stru_2859FB650 bold:0];
    objc_initWeak(&location, v18);
    v24 = DMCLocalizedString();
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __136__DMCEnrollmentManagementDetailsOverviewViewController_initWithDelegate_managedAppleID_profile_requiredAppRequest_requiredAppViewGroup___block_invoke;
    v30[3] = &unk_278EE7880;
    objc_copyWeak(&v31, &location);
    [(DMCEnrollmentTableViewTextCell *)v23 configureLinkText:v24 forceLineBreak:0 linkAction:v30];

    if (requestCopy)
    {
      v25 = [DMCEnrollmentTableViewTextCell alloc];
      v26 = DMCLocalizedString();
      v27 = [(DMCEnrollmentTableViewTextCell *)v25 initWithText:v26 bold:0];

      v28 = [[DMCEnrollmentTableViewAppLockupCell alloc] initWithLockupRequest:requestCopy lockupViewGroup:groupCopy presentingViewController:v18];
    }

    else
    {
      v27 = 0;
      v28 = 0;
    }

    [v19 addObject:v23];
    if (v28)
    {
      [v19 addObject:v27];
      [v19 addObject:v28];
    }

    [(DMCEnrollmentTemplateTableViewController *)v18 addCellData:v19 animated:0];

    objc_destroyWeak(&v31);
    objc_destroyWeak(&location);
  }

  return v18;
}

void __136__DMCEnrollmentManagementDetailsOverviewViewController_initWithDelegate_managedAppleID_profile_requiredAppRequest_requiredAppViewGroup___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __136__DMCEnrollmentManagementDetailsOverviewViewController_initWithDelegate_managedAppleID_profile_requiredAppRequest_requiredAppViewGroup___block_invoke_2;
    block[3] = &unk_278EE74C0;
    v4 = WeakRetained;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __136__DMCEnrollmentManagementDetailsOverviewViewController_initWithDelegate_managedAppleID_profile_requiredAppRequest_requiredAppViewGroup___block_invoke_2(uint64_t a1)
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

- (void)loadView
{
  v12.receiver = self;
  v12.super_class = DMCEnrollmentManagementDetailsOverviewViewController;
  [(DMCEnrollmentManagementDetailsOverviewViewController *)&v12 loadView];
  objc_initWeak(&location, self);
  v3 = [DMCEnrollmentConfirmationView alloc];
  v4 = DMCLocalizedString();
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __64__DMCEnrollmentManagementDetailsOverviewViewController_loadView__block_invoke;
  v9 = &unk_278EE7880;
  objc_copyWeak(&v10, &location);
  v5 = [(DMCEnrollmentConfirmationView *)v3 initWithConfirmationText:v4 cancelText:0 confirmationAction:&v6 cancelAction:&__block_literal_global_5];

  [(DMCEnrollmentTemplateTableViewController *)self addBottomView:v5, v6, v7, v8, v9];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __64__DMCEnrollmentManagementDetailsOverviewViewController_loadView__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained delegate];
    [v2 managementDetailsOverviewViewController:v3 didReceiveUserAction:1];

    WeakRetained = v3;
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = DMCEnrollmentManagementDetailsOverviewViewController;
  [(DMCEnrollmentTemplateTableViewController *)&v4 viewWillAppear:appear];
  if (([(DMCEnrollmentManagementDetailsOverviewViewController *)self isBeingPresented]& 1) != 0 || [(DMCEnrollmentManagementDetailsOverviewViewController *)self isMovingToParentViewController])
  {
    [(DMCEnrollmentManagementDetailsOverviewViewController *)self _setupNavigationBar];
  }
}

- (void)leftBarButtonTapped:(id)tapped
{
  delegate = [(DMCEnrollmentManagementDetailsOverviewViewController *)self delegate];
  [delegate managementDetailsOverviewViewController:self didReceiveUserAction:0];
}

- (DMCEnrollmentManagementDetailsOverviewViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end