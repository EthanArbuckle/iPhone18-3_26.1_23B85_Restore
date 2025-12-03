@interface DMCEnrollmentTestInformationViewController
- (DMCEnrollmentTestInformationViewController)initWithDelegate:(id)delegate title:(id)title subtitle:(id)subtitle description:(id)description;
- (DMCEnrollmentTestInformationViewControllerDelegate)delegate;
- (void)loadView;
- (void)updateContinueButtonStatus;
@end

@implementation DMCEnrollmentTestInformationViewController

- (DMCEnrollmentTestInformationViewController)initWithDelegate:(id)delegate title:(id)title subtitle:(id)subtitle description:(id)description
{
  delegateCopy = delegate;
  descriptionCopy = description;
  v17.receiver = self;
  v17.super_class = DMCEnrollmentTestInformationViewController;
  v12 = [(DMCEnrollmentTemplateTableViewController *)&v17 initWithIconName:@"gear" title:title subTitle:subtitle];
  v13 = v12;
  if (v12)
  {
    objc_storeWeak(&v12->_delegate, delegateCopy);
    v14 = objc_opt_new();
    v15 = [[DMCEnrollmentTableViewTextCell alloc] initWithText:descriptionCopy bold:0];
    [v14 addObject:v15];

    [(DMCEnrollmentTemplateTableViewController *)v13 addCellData:v14 animated:0];
  }

  return v13;
}

- (void)loadView
{
  v10.receiver = self;
  v10.super_class = DMCEnrollmentTestInformationViewController;
  [(DMCEnrollmentTestInformationViewController *)&v10 loadView];
  objc_initWeak(&location, self);
  v3 = [DMCEnrollmentConfirmationView alloc];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__DMCEnrollmentTestInformationViewController_loadView__block_invoke;
  v7[3] = &unk_278EE7880;
  objc_copyWeak(&v8, &location);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __54__DMCEnrollmentTestInformationViewController_loadView__block_invoke_2;
  v5[3] = &unk_278EE7880;
  objc_copyWeak(&v6, &location);
  v4 = [(DMCEnrollmentConfirmationView *)v3 initWithConfirmationText:@"OK" cancelText:@"Cancel" confirmationAction:v7 cancelAction:v5];
  [(DMCEnrollmentTemplateTableViewController *)self addBottomView:v4];
  [(DMCEnrollmentTestInformationViewController *)self setConfirmationView:v4];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __54__DMCEnrollmentTestInformationViewController_loadView__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained delegate];
    [v2 testInformationViewController:v3 didReceiveUserAction:1];

    WeakRetained = v3;
  }
}

void __54__DMCEnrollmentTestInformationViewController_loadView__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained delegate];
    [v2 testInformationViewController:v3 didReceiveUserAction:0];

    WeakRetained = v3;
  }
}

- (void)updateContinueButtonStatus
{
  inProgress = [(DMCEnrollmentTemplateTableViewController *)self inProgress];
  confirmationView = [(DMCEnrollmentTestInformationViewController *)self confirmationView];
  [confirmationView setInProgress:inProgress];
}

- (DMCEnrollmentTestInformationViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end