@interface FASharedSubscriptionsViewController
- (FASharedSubscriptionsViewController)initWithAppleAccount:(id)account sharedSubscriptionSpecifierProvider:(id)provider;
- (id)preferredContentSizeCategory;
- (id)specifiers;
- (void)_performEventWithContext:(id)context specifier:(id)specifier completion:(id)completion;
- (void)_startSpinnerInCellLoadingRemoteUI:(id)i;
- (void)_stopSpinnerInCellLoadingRemoteUI;
- (void)didSelectSpecifier:(id)specifier;
- (void)viewDidLoad;
@end

@implementation FASharedSubscriptionsViewController

- (FASharedSubscriptionsViewController)initWithAppleAccount:(id)account sharedSubscriptionSpecifierProvider:(id)provider
{
  accountCopy = account;
  providerCopy = provider;
  v14.receiver = self;
  v14.super_class = FASharedSubscriptionsViewController;
  v9 = [(ACUIViewController *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_appleAccount, account);
    objc_storeStrong(&v10->_sharedSubscriptionSpecifierProvider, provider);
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
  navigationItem = [(FASharedSubscriptionsViewController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:0];
  [navigationItem setRightBarButtonItem:0];
  [navigationItem setTitle:0];
}

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.super.isa + v3);
  if (!v4)
  {
    _sharedSubscriptionSpecifiers = [(FASharedSubscriptionsViewController *)self _sharedSubscriptionSpecifiers];
    v6 = *(&self->super.super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.super.isa + v3) = _sharedSubscriptionSpecifiers;

    v4 = *(&self->super.super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (void)_performEventWithContext:(id)context specifier:(id)specifier completion:(id)completion
{
  contextCopy = context;
  specifierCopy = specifier;
  completionCopy = completion;
  if (specifierCopy)
  {
    v11 = [specifierCopy propertyForKey:*MEMORY[0x277D40148]];
    [(FASharedSubscriptionsViewController *)self _startSpinnerInCellLoadingRemoteUI:v11];
  }

  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__7;
  v27 = __Block_byref_object_dispose__7;
  v12 = [FACircleStateController alloc];
  navigationController = [(FASharedSubscriptionsViewController *)self navigationController];
  v28 = [(FACircleStateController *)v12 initWithPresenter:navigationController];

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
  v15 = contextCopy;
  v21 = &v23;
  v18 = v15;
  selfCopy = self;
  v16 = completionCopy;
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

- (void)_startSpinnerInCellLoadingRemoteUI:(id)i
{
  iCopy = i;
  if (iCopy)
  {
    v7 = iCopy;
    objc_storeStrong(&self->_activeCell, i);
    v6 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
    [v6 startAnimating];
    [(UITableViewCell *)self->_activeCell setAccessoryView:v6];

    iCopy = v7;
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

- (void)didSelectSpecifier:(id)specifier
{
  specifierCopy = specifier;
  if (![(FASharedSubscriptionsViewController *)self _hasActiveCell])
  {
    v5 = [specifierCopy propertyForKey:@"FASharedServicesSpecifierActionURLKey"];
    if (v5)
    {
      v6 = [[FACircleContext alloc] initWithEventType:@"FACircleEventTypeSharedService"];
      [(FACircleContext *)v6 setUrlForContext:v5];
      v7 = [specifierCopy propertyForKey:@"FASharedServicesAdditionalParameters"];
      if (v7)
      {
        [(FACircleContext *)v6 setAdditionalParameters:v7];
      }

      [(FASharedSubscriptionsViewController *)self _performEventWithContext:v6 specifier:specifierCopy completion:0];
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
  traitCollection = [(FASharedSubscriptionsViewController *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];

  return preferredContentSizeCategory;
}

@end