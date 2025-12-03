@interface DMCEnrollmentESSOApplicationDisclosureViewController
- (DMCEnrollmentESSOApplicationDisclosureViewController)initWithDelegate:(id)delegate lockupRequest:(id)request lockupViewGroup:(id)group requiredEntitlements:(id)entitlements;
- (DMCEnrollmentESSOApplicationDisclosureViewControllerDelegate)delegate;
- (void)leftBarButtonTapped:(id)tapped;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation DMCEnrollmentESSOApplicationDisclosureViewController

- (DMCEnrollmentESSOApplicationDisclosureViewController)initWithDelegate:(id)delegate lockupRequest:(id)request lockupViewGroup:(id)group requiredEntitlements:(id)entitlements
{
  v32[2] = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  requestCopy = request;
  groupCopy = group;
  entitlementsCopy = entitlements;
  v14 = DMCLocalizedString();
  v31.receiver = self;
  v31.super_class = DMCEnrollmentESSOApplicationDisclosureViewController;
  v15 = [(DMCEnrollmentTemplateTableViewController *)&v31 initWithIconName:@"appstore" title:v14 subTitle:0];

  if (v15)
  {
    objc_storeWeak(&v15->_delegate, delegateCopy);
    v16 = [entitlementsCopy copy];
    requiredEntitlements = v15->_requiredEntitlements;
    v15->_requiredEntitlements = v16;

    v18 = [DMCEnrollmentTableViewTextCell alloc];
    v19 = DMCLocalizedString();
    v20 = [(DMCEnrollmentTableViewTextCell *)v18 initWithText:v19 bold:0];
    v32[0] = v20;
    v21 = [[DMCEnrollmentTableViewAppLockupCell alloc] initWithLockupRequest:requestCopy lockupViewGroup:groupCopy presentingViewController:v15];
    v32[1] = v21;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:2];
    [(DMCEnrollmentTemplateTableViewController *)v15 addCellData:v22 animated:0];

    v23 = [DMCEnrollmentInstallAppButtonView alloc];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __124__DMCEnrollmentESSOApplicationDisclosureViewController_initWithDelegate_lockupRequest_lockupViewGroup_requiredEntitlements___block_invoke;
    v29[3] = &unk_278EE74C0;
    v30 = v15;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __124__DMCEnrollmentESSOApplicationDisclosureViewController_initWithDelegate_lockupRequest_lockupViewGroup_requiredEntitlements___block_invoke_3;
    v27[3] = &unk_278EE74C0;
    v24 = v30;
    v28 = v24;
    v25 = [(DMCEnrollmentInstallAppButtonView *)v23 initWithLockupRequest:requestCopy lockupViewGroup:groupCopy beginInstallationHandler:v29 completionHandler:v27];
    [(DMCEnrollmentTemplateTableViewController *)v24 addBottomView:v25];
  }

  return v15;
}

void __124__DMCEnrollmentESSOApplicationDisclosureViewController_initWithDelegate_lockupRequest_lockupViewGroup_requiredEntitlements___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __124__DMCEnrollmentESSOApplicationDisclosureViewController_initWithDelegate_lockupRequest_lockupViewGroup_requiredEntitlements___block_invoke_2;
  block[3] = &unk_278EE74C0;
  v2 = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __124__DMCEnrollmentESSOApplicationDisclosureViewController_initWithDelegate_lockupRequest_lockupViewGroup_requiredEntitlements___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) tableView];
  [v1 setUserInteractionEnabled:0];
}

void __124__DMCEnrollmentESSOApplicationDisclosureViewController_initWithDelegate_lockupRequest_lockupViewGroup_requiredEntitlements___block_invoke_3(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __124__DMCEnrollmentESSOApplicationDisclosureViewController_initWithDelegate_lockupRequest_lockupViewGroup_requiredEntitlements___block_invoke_4;
  block[3] = &unk_278EE74C0;
  v2 = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __124__DMCEnrollmentESSOApplicationDisclosureViewController_initWithDelegate_lockupRequest_lockupViewGroup_requiredEntitlements___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) tableView];
  [v2 setUserInteractionEnabled:1];

  v3 = [*(a1 + 32) delegate];
  [v3 essoApplicationDisclosureViewController:*(a1 + 32) didReceiveUserAction:1 error:0];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = DMCEnrollmentESSOApplicationDisclosureViewController;
  [(DMCEnrollmentTemplateTableViewController *)&v4 viewWillAppear:appear];
  if (([(DMCEnrollmentESSOApplicationDisclosureViewController *)self isBeingPresented]& 1) != 0 || [(DMCEnrollmentESSOApplicationDisclosureViewController *)self isMovingToParentViewController])
  {
    [(DMCEnrollmentESSOApplicationDisclosureViewController *)self _setupNavigationBar];
  }

  [(DMCEnrollmentESSOApplicationDisclosureViewController *)self setModalInPresentation:1];
}

- (void)leftBarButtonTapped:(id)tapped
{
  delegate = [(DMCEnrollmentESSOApplicationDisclosureViewController *)self delegate];
  [delegate essoApplicationDisclosureViewController:self didReceiveUserAction:0 error:0];
}

- (DMCEnrollmentESSOApplicationDisclosureViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end