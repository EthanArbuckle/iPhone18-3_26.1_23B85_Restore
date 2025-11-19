@interface NPKPrecursorPassUpgradeRequestController
- (NPKPrecursorPassUpgradeRequestController)initWithPass:(id)a3;
- (NPKPrecursorPassUpgradeRequestControllerDelegate)delegate;
- (PKPrecursorPassUpgradeController)upgradeController;
- (void)fetchUpgradeRequestsWithCompletion:(id)a3;
- (void)precursorPassUpgradeRequestDidChange;
@end

@implementation NPKPrecursorPassUpgradeRequestController

- (NPKPrecursorPassUpgradeRequestController)initWithPass:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = NPKPrecursorPassUpgradeRequestController;
  v6 = [(NPKPrecursorPassUpgradeRequestController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_pass, a3);
  }

  return v7;
}

- (PKPrecursorPassUpgradeController)upgradeController
{
  upgradeController = self->_upgradeController;
  if (!upgradeController)
  {
    v4 = objc_alloc(MEMORY[0x277D38218]);
    pass = self->_pass;
    v6 = [MEMORY[0x277D38170] sharedService];
    v7 = [v4 initWithPass:pass webService:v6];
    v8 = self->_upgradeController;
    self->_upgradeController = v7;

    [(PKPrecursorPassUpgradeController *)self->_upgradeController setDelegate:self];
    upgradeController = self->_upgradeController;
  }

  return upgradeController;
}

- (void)fetchUpgradeRequestsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(NPKPrecursorPassUpgradeRequestController *)self upgradeController];
  v6 = [v5 devicePrimaryPrecursorRequest];

  objc_initWeak(&location, self);
  v7 = [(NPKPrecursorPassUpgradeRequestController *)self upgradeController];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __79__NPKPrecursorPassUpgradeRequestController_fetchUpgradeRequestsWithCompletion___block_invoke;
  v9[3] = &unk_2799473E8;
  objc_copyWeak(&v11, &location);
  v8 = v4;
  v10 = v8;
  [v7 requestDescriptionFor:v6 completion:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __79__NPKPrecursorPassUpgradeRequestController_fetchUpgradeRequestsWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  objc_storeStrong(WeakRetained + 2, a2);
  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v6);
  }
}

- (void)precursorPassUpgradeRequestDidChange
{
  v3 = pk_General_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = pk_General_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: NPKPrecursorPassUpgradeRequestController: Received precursor pass upgrade request did change.", buf, 2u);
    }
  }

  objc_initWeak(buf, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __80__NPKPrecursorPassUpgradeRequestController_precursorPassUpgradeRequestDidChange__block_invoke;
  v6[3] = &unk_279947410;
  objc_copyWeak(&v7, buf);
  [(NPKPrecursorPassUpgradeRequestController *)self fetchUpgradeRequestsWithCompletion:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(buf);
}

void __80__NPKPrecursorPassUpgradeRequestController_precursorPassUpgradeRequestDidChange__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained delegate];
  [v1 precursorPassUpgradeRequestsDidChangeForUpgradeController:WeakRetained];
}

- (NPKPrecursorPassUpgradeRequestControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end