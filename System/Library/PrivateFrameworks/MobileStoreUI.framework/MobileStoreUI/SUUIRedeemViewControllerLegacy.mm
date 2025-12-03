@interface SUUIRedeemViewControllerLegacy
+ (BOOL)redeemRequiresNationalId:(id)id;
- (CGSize)preferredContentSize;
- (NSOperationQueue)operationQueue;
- (SUUIRedeemViewCameraOverrideDelegate)cameraDelegate;
- (SUUIRedeemViewControllerLegacy)initWithRedeemCategory:(int64_t)category;
- (UIBarButtonItem)cancelButtonItem;
- (id)_newInputViewController;
- (unint64_t)supportedInterfaceOrientations;
- (void)_attemptAutomaticRedeemWithMetadata:(id)metadata;
- (void)_cancelButtonAction:(id)action;
- (void)_executeIdValidationOperationWithFields:(id)fields;
- (void)_executePreflightOperationForcesAuthentication:(BOOL)authentication;
- (void)_executeRequiresIdValidationOperation;
- (void)_finishPreflightWithResult:(id)result;
- (void)_loadInputViewController;
- (void)_performInitialRedeemOperation;
- (void)_showInputViewController;
- (void)_showNationalIdLoadingPage;
- (void)_showNationalIdVerificationPage;
- (void)dismissAnimated:(BOOL)animated;
- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion;
- (void)redeemAgainAnimated:(BOOL)animated;
- (void)redeemIdViewController:(id)controller submittedWithFields:(id)fields;
- (void)redeemStepViewControllerShouldValidateNationalID:(id)d;
- (void)setCameraRedeemVisible:(BOOL)visible;
- (void)setClientContext:(id)context;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation SUUIRedeemViewControllerLegacy

- (SUUIRedeemViewControllerLegacy)initWithRedeemCategory:(int64_t)category
{
  v5 = objc_alloc_init(MEMORY[0x277D75D28]);
  v6 = objc_alloc_init(SUUILoadingView);
  [(SUUILoadingView *)v6 setAutoresizingMask:45];
  [(SUUILoadingView *)v6 sizeToFit];
  view = [v5 view];
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  [view setBackgroundColor:whiteColor];

  [(SUUILoadingView *)v6 bounds];
  [view setFrame:?];
  [view bounds];
  [(SUUILoadingView *)v6 setFrame:?];
  [view addSubview:v6];
  v12.receiver = self;
  v12.super_class = SUUIRedeemViewControllerLegacy;
  v9 = [(SUUIRedeemViewControllerLegacy *)&v12 initWithRootViewController:v5];
  v10 = v9;
  if (v9)
  {
    v9->_cameraRedeemEnabled = -1;
    v9->_category = category;
    [(SUUIRedeemViewControllerLegacy *)v9 setModalPresentationStyle:2];
  }

  [(SUUIRedeemViewControllerLegacy *)v10 setShouldPerformInitialOperationOnAppear:1];

  return v10;
}

- (void)setCameraRedeemVisible:(BOOL)visible
{
  if (visible)
  {
    self->_cameraRedeemEnabled = 1;
    self->_cameraRedeemVisible = 1;
  }
}

- (void)setClientContext:(id)context
{
  contextCopy = context;
  if (self->_clientContext != contextCopy)
  {
    v6 = contextCopy;
    objc_storeStrong(&self->_clientContext, context);
    [(SUUIRedeemStepViewController *)self->_inputViewController setClientContext:self->_clientContext];
    contextCopy = v6;
  }
}

- (NSOperationQueue)operationQueue
{
  operationQueue = self->_operationQueue;
  if (!operationQueue)
  {
    v4 = objc_alloc_init(MEMORY[0x277CCABD8]);
    v5 = self->_operationQueue;
    self->_operationQueue = v4;

    [(NSOperationQueue *)self->_operationQueue setMaxConcurrentOperationCount:2];
    operationQueue = self->_operationQueue;
  }

  return operationQueue;
}

- (CGSize)preferredContentSize
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom != 1 || (([MEMORY[0x277D75DA0] keyWindow], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "bounds"), v7 = v6, v9 = v8, v11 = v10, v13 = v12, v5, v30.origin.x = v7, v30.origin.y = v9, v30.size.width = v11, v30.size.height = v13, Width = CGRectGetWidth(v30), v31.origin.x = v7, v31.origin.y = v9, v31.size.width = v11, v31.size.height = v13, v15 = CGRectGetHeight(v31), Width >= 1024.0) ? (v16 = v15 < 1024.0) : (v16 = 1), v16))
  {
    v28.receiver = self;
    v28.super_class = SUUIRedeemViewControllerLegacy;
    [(SUUIRedeemViewControllerLegacy *)&v28 preferredContentSize];
    v18 = v17;
    v20 = v19;
  }

  else
  {
    navigationBar = [(SUUIRedeemViewControllerLegacy *)self navigationBar];
    v22 = navigationBar;
    if (navigationBar)
    {
      [navigationBar frame];
      Height = CGRectGetHeight(v32);
    }

    else
    {
      Height = 0.0;
    }

    v24 = Height + 1045.0;
    v25 = Height + 904.0;
    if (v15 <= Width)
    {
      v20 = v25;
    }

    else
    {
      v20 = v24;
    }

    *&v18 = 784.0;
  }

  v26 = *&v18;
  v27 = v20;
  result.height = v27;
  result.width = v26;
  return result;
}

- (unint64_t)supportedInterfaceOrientations
{
  if (SUUIUserInterfaceIdiom(self->_clientContext) == 1)
  {
    return 30;
  }

  if (SUUIAllowsLandscapePhone())
  {
    return 26;
  }

  return 2;
}

- (void)viewDidAppear:(BOOL)appear
{
  v8.receiver = self;
  v8.super_class = SUUIRedeemViewControllerLegacy;
  [(SUUIRedeemViewControllerLegacy *)&v8 viewDidAppear:appear];
  traitCollection = [(SUUIRedeemViewControllerLegacy *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (!userInterfaceIdiom)
  {
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    self->_initialBarStyle = [mEMORY[0x277D75128] statusBarStyle];

    mEMORY[0x277D75128]2 = [MEMORY[0x277D75128] sharedApplication];
    [mEMORY[0x277D75128]2 setStatusBarStyle:0];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  topViewController = [(SUUIRedeemViewControllerLegacy *)self topViewController];
  navigationItem = [topViewController navigationItem];
  cancelButtonItem = [(SUUIRedeemViewControllerLegacy *)self cancelButtonItem];
  [navigationItem setLeftBarButtonItem:cancelButtonItem];

  if ([(SUUIRedeemViewControllerLegacy *)self shouldPerformInitialOperationOnAppear])
  {
    [(SUUIRedeemViewControllerLegacy *)self _performInitialRedeemOperation];
    [(SUUIRedeemViewControllerLegacy *)self setShouldPerformInitialOperationOnAppear:0];
  }

  else if (!self->_inputViewController && self->_redeemConfiguration)
  {
    [(SUUIRedeemViewControllerLegacy *)self _showInputViewController];
  }

  v8.receiver = self;
  v8.super_class = SUUIRedeemViewControllerLegacy;
  [(SUUIRedeemViewControllerLegacy *)&v8 viewWillAppear:appearCopy];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v7.receiver = self;
  v7.super_class = SUUIRedeemViewControllerLegacy;
  [(SUUIRedeemViewControllerLegacy *)&v7 viewWillDisappear:disappear];
  traitCollection = [(SUUIRedeemViewControllerLegacy *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (!userInterfaceIdiom)
  {
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    [mEMORY[0x277D75128] setStatusBarStyle:self->_initialBarStyle];
  }
}

- (void)dismissAnimated:(BOOL)animated
{
  animatedCopy = animated;
  parentViewController = [(SUUIRedeemViewControllerLegacy *)self parentViewController];

  if (parentViewController)
  {
    parentViewController2 = [(SUUIRedeemViewControllerLegacy *)self parentViewController];
    [parentViewController2 dismissAnimated:animatedCopy];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SUUIRedeemViewControllerLegacy;
    [(SUUIRedeemViewControllerLegacy *)&v7 dismissAnimated:animatedCopy];
  }
}

- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  parentViewController = [(SUUIRedeemViewControllerLegacy *)self parentViewController];

  if (parentViewController)
  {
    parentViewController2 = [(SUUIRedeemViewControllerLegacy *)self parentViewController];
    [parentViewController2 dismissViewControllerAnimated:animatedCopy completion:completionCopy];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SUUIRedeemViewControllerLegacy;
    [(SUUIRedeemViewControllerLegacy *)&v9 dismissViewControllerAnimated:animatedCopy completion:completionCopy];
  }
}

- (void)redeemStepViewControllerShouldValidateNationalID:(id)d
{
  inputViewController = self->_inputViewController;
  self->_inputViewController = 0;

  [(SUUIRedeemViewControllerLegacy *)self _showNationalIdVerificationPage];
}

- (void)redeemIdViewController:(id)controller submittedWithFields:(id)fields
{
  fieldsCopy = fields;
  [(SUUIRedeemViewControllerLegacy *)self _showNationalIdLoadingPage];
  [(SUUIRedeemViewControllerLegacy *)self _executeIdValidationOperationWithFields:fieldsCopy];
}

- (void)redeemAgainAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v7[1] = *MEMORY[0x277D85DE8];
  _newInputViewController = [(SUUIRedeemViewControllerLegacy *)self _newInputViewController];
  v7[0] = _newInputViewController;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  [(SUUIRedeemViewControllerLegacy *)self setViewControllers:v6 animated:animatedCopy];
}

- (void)_cancelButtonAction:(id)action
{
  [(SUUIRedeemViewControllerLegacy *)self dismissViewControllerAnimated:1 completion:0];
  [(SUUIRedeemPreflightOperation *)self->_preflightOperation setOutputBlock:0];
  preflightOperation = self->_preflightOperation;
  self->_preflightOperation = 0;
}

- (void)_performInitialRedeemOperation
{
  v3 = objc_opt_class();
  clientContext = [(SUUIRedeemViewControllerLegacy *)self clientContext];
  LODWORD(v3) = [v3 redeemRequiresNationalId:clientContext];

  if (v3)
  {

    [(SUUIRedeemViewControllerLegacy *)self _executeRequiresIdValidationOperation];
  }

  else
  {

    [(SUUIRedeemViewControllerLegacy *)self _executePreflightOperationForcesAuthentication:1];
  }
}

- (void)_executePreflightOperationForcesAuthentication:(BOOL)authentication
{
  if (!self->_preflightOperation)
  {
    v4 = [[SUUIRedeemPreflightOperation alloc] initWithClientContext:self->_clientContext redeemCode:self->_initialCode forcesAuthentication:authentication];
    preflightOperation = self->_preflightOperation;
    self->_preflightOperation = v4;

    [(SUUIRedeemPreflightOperation *)self->_preflightOperation setRedeemViewController:self];
    [(SUUIRedeemPreflightOperation *)self->_preflightOperation setLoadsRedeemCodeMetadata:[(SUUIRedeemViewControllerLegacy *)self attempsAutomaticRedeem]];
    v6 = [SUUIRedeemConfiguration alloc];
    operationQueue = [(SUUIRedeemViewControllerLegacy *)self operationQueue];
    v8 = [(SUUIRedeemConfiguration *)v6 initWithOperationQueue:operationQueue category:self->_category clientContext:self->_clientContext];

    [(SUUIRedeemPreflightOperation *)self->_preflightOperation setRedeemConfiguration:v8];
    objc_initWeak(&location, self);
    v9 = self->_preflightOperation;
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __81__SUUIRedeemViewControllerLegacy__executePreflightOperationForcesAuthentication___block_invoke;
    v14 = &unk_2798F8D48;
    objc_copyWeak(&v15, &location);
    [(SUUIRedeemPreflightOperation *)v9 setOutputBlock:&v11];
    v10 = [(SUUIRedeemViewControllerLegacy *)self operationQueue:v11];
    [v10 addOperation:self->_preflightOperation];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }
}

void __81__SUUIRedeemViewControllerLegacy__executePreflightOperationForcesAuthentication___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __81__SUUIRedeemViewControllerLegacy__executePreflightOperationForcesAuthentication___block_invoke_2;
  v5[3] = &unk_2798F7560;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);

  objc_destroyWeak(&v7);
}

void __81__SUUIRedeemViewControllerLegacy__executePreflightOperationForcesAuthentication___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _finishPreflightWithResult:*(a1 + 32)];
}

- (void)_attemptAutomaticRedeemWithMetadata:(id)metadata
{
  metadataCopy = metadata;
  v5 = [SUUIRedeemOperation alloc];
  code = [metadataCopy code];
  if (code)
  {
    v7 = [(SUUIRedeemOperation *)v5 initWithCode:code];
  }

  else
  {
    inputCode = [metadataCopy inputCode];
    v7 = [(SUUIRedeemOperation *)v5 initWithCode:inputCode];
  }

  clientContext = [(SUUIRedeemViewControllerLegacy *)self clientContext];
  [(SUUIRedeemOperation *)v7 setClientContext:clientContext];

  objc_initWeak(&location, self);
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __70__SUUIRedeemViewControllerLegacy__attemptAutomaticRedeemWithMetadata___block_invoke;
  v14 = &unk_2798F6D80;
  objc_copyWeak(&v15, &location);
  [(SUUIRedeemOperation *)v7 setResultBlock:&v11];
  v10 = [(SUUIRedeemViewControllerLegacy *)self operationQueue:v11];
  [v10 addOperation:v7];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __70__SUUIRedeemViewControllerLegacy__attemptAutomaticRedeemWithMetadata___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__SUUIRedeemViewControllerLegacy__attemptAutomaticRedeemWithMetadata___block_invoke_2;
  block[3] = &unk_2798F6530;
  objc_copyWeak(&v12, (a1 + 32));
  v10 = v6;
  v11 = v5;
  v7 = v5;
  v8 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v12);
}

void __70__SUUIRedeemViewControllerLegacy__attemptAutomaticRedeemWithMetadata___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (*(a1 + 32))
  {
    v6 = WeakRetained;
    [WeakRetained _loadInputViewController];
  }

  else
  {
    if (!WeakRetained)
    {
      goto LABEL_6;
    }

    v6 = WeakRetained;
    v3 = [[SUUIRedeemResultsViewController alloc] initWithRedeem:*(a1 + 40)];
    v4 = [v6 clientContext];
    [(SUUIRedeemStepViewController *)v3 setClientContext:v4];

    [(SUUIRedeemStepViewController *)v3 setConfiguration:v6[190]];
    v5 = [v6 operationQueue];
    [(SUUIRedeemStepViewController *)v3 setOperationQueue:v5];

    -[SUUIRedeemResultsViewController setRedeemCategory:](v3, "setRedeemCategory:", [v6 category]);
    [v6 pushViewController:v3 animated:1];
  }

  WeakRetained = v6;
LABEL_6:
}

- (void)_finishPreflightWithResult:(id)result
{
  resultCopy = result;
  if ([resultCopy resultType] || (objc_msgSend(resultCopy, "account"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "isManagedAppleID"), v4, v5))
  {
    [(SUUIRedeemViewControllerLegacy *)self dismissViewControllerAnimated:1 completion:0];
    goto LABEL_4;
  }

  redeemConfiguration = [resultCopy redeemConfiguration];
  redeemConfiguration = self->_redeemConfiguration;
  self->_redeemConfiguration = redeemConfiguration;

  clientContext = [resultCopy clientContext];
  [(SUUIRedeemViewControllerLegacy *)self setClientContext:clientContext];

  codeMetadata = [resultCopy codeMetadata];
  if (![(SUUIRedeemViewControllerLegacy *)self attempsAutomaticRedeem])
  {
    goto LABEL_10;
  }

  items = [codeMetadata items];
  if (![items count])
  {

    goto LABEL_12;
  }

  allowsAutoSubmission = [codeMetadata allowsAutoSubmission];

  if (allowsAutoSubmission)
  {
LABEL_12:
    [(SUUIRedeemViewControllerLegacy *)self _attemptAutomaticRedeemWithMetadata:codeMetadata];
    goto LABEL_13;
  }

LABEL_10:
  [(SUUIRedeemViewControllerLegacy *)self _loadInputViewController];
LABEL_13:

LABEL_4:
  [(SUUIRedeemPreflightOperation *)self->_preflightOperation setOutputBlock:0];
  preflightOperation = self->_preflightOperation;
  self->_preflightOperation = 0;
}

- (void)_loadInputViewController
{
  if (self->_cameraRedeemEnabled == 255)
  {
    objc_initWeak(&location, self);
    uRLBag = [(SUUIClientContext *)self->_clientContext URLBag];
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __58__SUUIRedeemViewControllerLegacy__loadInputViewController__block_invoke;
    v4[3] = &unk_2798F8D70;
    objc_copyWeak(&v5, &location);
    [uRLBag loadValueForKey:@"cameraGiftingEnabled" completionBlock:v4];

    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }

  else
  {

    [(SUUIRedeemViewControllerLegacy *)self _showInputViewController];
  }
}

void __58__SUUIRedeemViewControllerLegacy__loadInputViewController__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __58__SUUIRedeemViewControllerLegacy__loadInputViewController__block_invoke_2;
  v5[3] = &unk_2798F7560;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);

  objc_destroyWeak(&v7);
}

void __58__SUUIRedeemViewControllerLegacy__loadInputViewController__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    WeakRetained[1473] = [*(a1 + 32) BOOLValue];
    [v3 _showInputViewController];
    WeakRetained = v3;
  }
}

- (id)_newInputViewController
{
  if (self->_cameraRedeemEnabled && [MEMORY[0x277D00F70] isCRCodeRedeemerAvailable])
  {
    cameraRedeemVisible = [(SUUIRedeemViewControllerLegacy *)self cameraRedeemVisible];
    v4 = [SUUIRedeemCameraViewController alloc];
    category = self->_category;
    if (cameraRedeemVisible)
    {
      v6 = [(SUUIRedeemCameraViewController *)v4 initWithRedeemCategoryFullscreen:category];
    }

    else
    {
      v6 = [(SUUIRedeemCameraViewController *)v4 initWithRedeemCategory:category];
    }

    v7 = v6;
    cameraDelegate = [(SUUIRedeemViewControllerLegacy *)self cameraDelegate];
    [(SUUIRedeemInputViewController *)v7 setCameraOverrideDelegate:cameraDelegate];

    cameraDelegate2 = [(SUUIRedeemViewControllerLegacy *)self cameraDelegate];
    [(SUUIRedeemInputViewController *)v7 setDelegate:cameraDelegate2];
  }

  else
  {
    v7 = [[SUUIRedeemInputViewController alloc] initWithRedeemCategory:self->_category];
  }

  [(SUUIRedeemStepViewController *)v7 setClientContext:self->_clientContext];
  [(SUUIRedeemStepViewController *)v7 setConfiguration:self->_redeemConfiguration];
  operationQueue = [(SUUIRedeemViewControllerLegacy *)self operationQueue];
  [(SUUIRedeemStepViewController *)v7 setOperationQueue:operationQueue];

  [(SUUIRedeemStepViewController *)v7 setRedeemStepDelegate:self];
  return v7;
}

- (void)_showInputViewController
{
  v6[1] = *MEMORY[0x277D85DE8];
  if (!self->_inputViewController)
  {
    _newInputViewController = [(SUUIRedeemViewControllerLegacy *)self _newInputViewController];
    inputViewController = self->_inputViewController;
    self->_inputViewController = _newInputViewController;

    [(SUUIRedeemStepViewController *)self->_inputViewController setInitialCode:self->_initialCode];
    v6[0] = self->_inputViewController;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
    [(SUUIRedeemViewControllerLegacy *)self setViewControllers:v5];
  }
}

- (UIBarButtonItem)cancelButtonItem
{
  cancelButtonItem = self->_cancelButtonItem;
  if (!cancelButtonItem)
  {
    v4 = objc_alloc_init(MEMORY[0x277D751E0]);
    v5 = self->_cancelButtonItem;
    self->_cancelButtonItem = v4;

    [(UIBarButtonItem *)self->_cancelButtonItem setAction:sel__cancelButtonAction_];
    [(UIBarButtonItem *)self->_cancelButtonItem setTarget:self];
    v6 = self->_cancelButtonItem;
    v7 = SUUIBundle();
    v8 = [v7 localizedStringForKey:@"REDEEM_CANCEL_BUTTON" value:&stru_286AECDE0 table:@"Redeem"];
    [(UIBarButtonItem *)v6 setTitle:v8];

    cancelButtonItem = self->_cancelButtonItem;
  }

  return cancelButtonItem;
}

+ (BOOL)redeemRequiresNationalId:(id)id
{
  uRLBag = [id URLBag];
  v4 = [uRLBag valueForKey:@"redeemRequiresNationalId" error:0];

  if (objc_opt_respondsToSelector())
  {
    bOOLValue = [v4 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (void)_executeRequiresIdValidationOperation
{
  v3 = objc_alloc_init(SUUIRedeemIdRequiresValidationOperation);
  [(SUUIRedeemIdRequiresValidationOperation *)v3 setRedeemViewController:self];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __71__SUUIRedeemViewControllerLegacy__executeRequiresIdValidationOperation__block_invoke;
  v5[3] = &unk_2798F65D0;
  v5[4] = self;
  [(SUUIRedeemIdRequiresValidationOperation *)v3 setResultBlock:v5];
  operationQueue = [(SUUIRedeemViewControllerLegacy *)self operationQueue];
  [operationQueue addOperation:v3];
}

uint64_t __71__SUUIRedeemViewControllerLegacy__executeRequiresIdValidationOperation__block_invoke(uint64_t a1, char a2, int a3)
{
  v3 = *(a1 + 32);
  if ((a2 & 1) == 0)
  {
    return [v3 dismissAnimated:1];
  }

  if (a3)
  {
    return [v3 _showNationalIdVerificationPage];
  }

  return [v3 _executePreflightOperationForcesAuthentication:?];
}

- (void)_executeIdValidationOperationWithFields:(id)fields
{
  fieldsCopy = fields;
  v5 = [[SUUIRedeemIdValidateOperation alloc] initWithDictionary:fieldsCopy];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __74__SUUIRedeemViewControllerLegacy__executeIdValidationOperationWithFields___block_invoke;
  v7[3] = &unk_2798F5D30;
  v7[4] = self;
  [(SUUIRedeemIdValidateOperation *)v5 setResultBlock:v7];
  operationQueue = [(SUUIRedeemViewControllerLegacy *)self operationQueue];
  [operationQueue addOperation:v5];
}

uint64_t __74__SUUIRedeemViewControllerLegacy__executeIdValidationOperationWithFields___block_invoke(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    return [v2 _executePreflightOperationForcesAuthentication:0];
  }

  else
  {
    return [v2 _showNationalIdVerificationPage];
  }
}

- (void)_showNationalIdVerificationPage
{
  v7[1] = *MEMORY[0x277D85DE8];
  v3 = [SUUIRedeemIdViewController alloc];
  clientContext = [(SUUIRedeemViewControllerLegacy *)self clientContext];
  v5 = [(SUUIRedeemIdViewController *)v3 initWithClientContext:clientContext];

  [(SUUIRedeemIdViewController *)v5 setDelegate:self];
  v7[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  [(SUUIRedeemViewControllerLegacy *)self setViewControllers:v6];
}

- (void)_showNationalIdLoadingPage
{
  v16[1] = *MEMORY[0x277D85DE8];
  v3 = [SUUILoadingViewController alloc];
  clientContext = [(SUUIRedeemViewControllerLegacy *)self clientContext];
  v5 = [(SUUILoadingViewController *)v3 initWithClientContext:clientContext];

  clientContext2 = [(SUUIRedeemViewControllerLegacy *)self clientContext];
  v7 = clientContext2;
  if (clientContext2)
  {
    [clientContext2 localizedStringForKey:@"REDEEM_NATIONAL_ID_VIEW_TITLE" inTable:@"Redeem"];
  }

  else
  {
    [SUUIClientContext localizedStringForKey:@"REDEEM_NATIONAL_ID_VIEW_TITLE" inBundles:0 inTable:@"Redeem"];
  }
  v8 = ;
  [(SUUILoadingViewController *)v5 setTitle:v8];

  clientContext3 = [(SUUIRedeemViewControllerLegacy *)self clientContext];
  v10 = clientContext3;
  if (clientContext3)
  {
    [clientContext3 localizedStringForKey:@"REDEEM_NATIONAL_ID_VERIFYING" inTable:@"Redeem"];
  }

  else
  {
    [SUUIClientContext localizedStringForKey:@"REDEEM_NATIONAL_ID_VERIFYING" inBundles:0 inTable:@"Redeem"];
  }
  v11 = ;
  [(SUUILoadingViewController *)v5 setLoadingText:v11];

  v12 = SUUITableViewGroupedBackgroundColor();
  [(SUUILoadingViewController *)v5 setBackgroundColor:v12];

  navigationItem = [(SUUILoadingViewController *)v5 navigationItem];
  cancelButtonItem = [(SUUIRedeemViewControllerLegacy *)self cancelButtonItem];
  [navigationItem setLeftBarButtonItem:cancelButtonItem];

  v16[0] = v5;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  [(SUUIRedeemViewControllerLegacy *)self setViewControllers:v15];
}

- (SUUIRedeemViewCameraOverrideDelegate)cameraDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_cameraDelegate);

  return WeakRetained;
}

@end