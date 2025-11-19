@interface FASharedSubscriptionsViewController
- (FASharedSubscriptionsViewController)initWithAppleAccount:(id)a3 sharedSubscriptionSpecifierProvider:(id)a4;
- (id)preferredContentSizeCategory;
- (id)specifiers;
- (void)_performEventWithContext:(id)a3 specifier:(id)a4 completion:(id)a5;
- (void)_startSpinnerInCellLoadingRemoteUI:(id)a3;
- (void)_stopSpinnerInCellLoadingRemoteUI;
- (void)didSelectSpecifier:(id)a3;
- (void)viewDidLoad;
@end

@implementation FASharedSubscriptionsViewController

- (FASharedSubscriptionsViewController)initWithAppleAccount:(id)a3 sharedSubscriptionSpecifierProvider:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = FASharedSubscriptionsViewController;
  v9 = [(ACUIViewController *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_appleAccount, a3);
    objc_storeStrong(&v10->_sharedSubscriptionSpecifierProvider, a4);
    [(FASharedSubscriptionSpecifierProvider *)v10->_sharedSubscriptionSpecifierProvider addSubscriber:v10];
    v11 = objc_alloc_init(MEMORY[0x277CCABD8]);
    networkingQueue = v10->_networkingQueue;
    v10->_networkingQueue = v11;
  }

  return v10;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = FASharedSubscriptionsViewController;
  [(ACUIViewController *)&v4 viewDidLoad];
  v3 = [(FASharedSubscriptionsViewController *)self navigationItem];
  [v3 setLeftBarButtonItem:0];
  [v3 setRightBarButtonItem:0];
  [v3 setTitle:0];
}

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = [(FASharedSubscriptionsViewController *)self _sharedSubscriptionSpecifiers];
    v6 = *(&self->super.super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.super.isa + v3) = v5;

    v4 = *(&self->super.super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (void)_performEventWithContext:(id)a3 specifier:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v9)
  {
    v11 = [v9 propertyForKey:*MEMORY[0x277D40148]];
    [(FASharedSubscriptionsViewController *)self _startSpinnerInCellLoadingRemoteUI:v11];
  }

  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__7;
  v27 = __Block_byref_object_dispose__7;
  v12 = [FACircleStateController alloc];
  v13 = [(FASharedSubscriptionsViewController *)self navigationController];
  v28 = [(FACircleStateController *)v12 initWithPresenter:v13];

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __85__FASharedSubscriptionsViewController__performEventWithContext_specifier_completion___block_invoke;
  v22[3] = &unk_2782F29E8;
  v22[4] = self;
  [v24[5] setPresentationHandler:v22];
  v14 = v24[5];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __85__FASharedSubscriptionsViewController__performEventWithContext_specifier_completion___block_invoke_2;
  v17[3] = &unk_2782F43B0;
  v15 = v8;
  v21 = &v23;
  v18 = v15;
  v19 = self;
  v16 = v10;
  v20 = v16;
  [v14 performOperationWithContext:v15 completion:v17];

  _Block_object_dispose(&v23, 8);
}

void __85__FASharedSubscriptionsViewController__performEventWithContext_specifier_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _FALogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [*(a1 + 32) eventType];
    v8 = @"NO";
    v13 = 138412802;
    v14 = v7;
    v15 = 2112;
    if (a2)
    {
      v8 = @"YES";
    }

    v16 = v8;
    v17 = 2112;
    v18 = v5;
    _os_log_impl(&dword_21BB35000, v6, OS_LOG_TYPE_DEFAULT, "Event type %@ - completed with success: %@, error: %@", &v13, 0x20u);
  }

  v9 = *(*(a1 + 56) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = 0;

  [*(a1 + 40) _stopSpinnerInCellLoadingRemoteUI];
  v11 = *(a1 + 48);
  if (v11)
  {
    (*(v11 + 16))(v11, a2, v5);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_startSpinnerInCellLoadingRemoteUI:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_activeCell, a3);
    v6 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
    [v6 startAnimating];
    [(UITableViewCell *)self->_activeCell setAccessoryView:v6];

    v5 = v7;
  }
}

- (void)_stopSpinnerInCellLoadingRemoteUI
{
  activeCell = self->_activeCell;
  if (activeCell)
  {
    [(UITableViewCell *)activeCell setAccessoryView:0];
    v4 = self->_activeCell;
    self->_activeCell = 0;
  }
}

- (void)didSelectSpecifier:(id)a3
{
  v4 = a3;
  if (![(FASharedSubscriptionsViewController *)self _hasActiveCell])
  {
    v5 = [v4 propertyForKey:@"FASharedServicesSpecifierActionURLKey"];
    if (v5)
    {
      v6 = [[FACircleContext alloc] initWithEventType:@"FACircleEventTypeSharedService"];
      [(FACircleContext *)v6 setUrlForContext:v5];
      v7 = [v4 propertyForKey:@"FASharedServicesAdditionalParameters"];
      if (v7)
      {
        [(FACircleContext *)v6 setAdditionalParameters:v7];
      }

      [(FASharedSubscriptionsViewController *)self _performEventWithContext:v6 specifier:v4 completion:0];
    }

    else
    {
      v8 = _FALogSystem();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&dword_21BB35000, v8, OS_LOG_TYPE_DEFAULT, "Shared services specifier selected, no url present. We are bailing.", v9, 2u);
      }
    }
  }
}

- (id)preferredContentSizeCategory
{
  v2 = [(FASharedSubscriptionsViewController *)self traitCollection];
  v3 = [v2 preferredContentSizeCategory];

  return v3;
}

@end