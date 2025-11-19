@interface CPSOpenClipCardPresenter
+ (id)responseForOpenClipAction:(BOOL)a3;
+ (id)sharedPresenter;
- (CPSOpenClipCardPresenter)init;
- (void)_activateAlertHandleWithSettings:(id)a3 viewControllerClassName:(id)a4 repsonseHandler:(id)a5;
- (void)_activateAlertHandleWithURL:(id)a3 completionHandler:(id)a4;
- (void)_invalidateSharingClient;
- (void)_performStagedLocationConfirmationDisplayIfNeeded;
- (void)_sharingClientDidInvalidate;
- (void)_showCardWithOptions:(unint64_t)a3 activationHandler:(id)a4 completionHandler:(id)a5;
- (void)remoteAlertHandle:(id)a3 didInvalidateWithError:(id)a4;
- (void)remoteAlertHandleDidDeactivate:(id)a3;
- (void)showCardWithURL:(id)a3 completionHandler:(id)a4;
- (void)showLocationConfirmationSheetWithRequest:(id)a3 completion:(id)a4;
@end

@implementation CPSOpenClipCardPresenter

+ (id)sharedPresenter
{
  if (sharedPresenter_onceToken != -1)
  {
    +[CPSOpenClipCardPresenter sharedPresenter];
  }

  v3 = sharedPresenter_presenter;

  return v3;
}

uint64_t __43__CPSOpenClipCardPresenter_sharedPresenter__block_invoke()
{
  sharedPresenter_presenter = objc_alloc_init(CPSOpenClipCardPresenter);

  return MEMORY[0x2821F96F8]();
}

- (CPSOpenClipCardPresenter)init
{
  v7.receiver = self;
  v7.super_class = CPSOpenClipCardPresenter;
  v2 = [(CPSOpenClipCardPresenter *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.ClipServices.OpenClipCardPresenter", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = v2;
  }

  return v2;
}

- (void)showCardWithURL:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __62__CPSOpenClipCardPresenter_showCardWithURL_completionHandler___block_invoke;
  v10[3] = &unk_278DCDCF8;
  v10[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(CPSOpenClipCardPresenter *)self _showCardWithOptions:119 activationHandler:v10 completionHandler:v8];
}

- (void)showLocationConfirmationSheetWithRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __80__CPSOpenClipCardPresenter_showLocationConfirmationSheetWithRequest_completion___block_invoke;
  v15[3] = &unk_278DCDCF8;
  v15[4] = self;
  v16 = v6;
  v17 = v7;
  v8 = v7;
  v9 = v6;
  v10 = MEMORY[0x245D3D5F0](v15);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__CPSOpenClipCardPresenter_showLocationConfirmationSheetWithRequest_completion___block_invoke_10;
  block[3] = &unk_278DCDD70;
  block[4] = self;
  v14 = v10;
  v12 = v10;
  dispatch_async(queue, block);
}

void __80__CPSOpenClipCardPresenter_showLocationConfirmationSheetWithRequest_completion___block_invoke(uint64_t a1)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __80__CPSOpenClipCardPresenter_showLocationConfirmationSheetWithRequest_completion___block_invoke_2;
  v6[3] = &unk_278DCF078;
  v2 = *(a1 + 32);
  v7 = *(a1 + 40);
  v3 = *(a1 + 48);
  v8 = *(a1 + 32);
  v9 = v3;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __80__CPSOpenClipCardPresenter_showLocationConfirmationSheetWithRequest_completion___block_invoke_8;
  v4[3] = &unk_278DCE438;
  v5 = *(a1 + 48);
  [v2 _showCardWithOptions:33 activationHandler:v6 completionHandler:v4];
}

void __80__CPSOpenClipCardPresenter_showLocationConfirmationSheetWithRequest_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v10 = 0;
  v3 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v2 requiringSecureCoding:1 error:&v10];
  v4 = v10;
  if (v4)
  {
    v5 = CPS_LOG_CHANNEL_PREFIXClipServices();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __80__CPSOpenClipCardPresenter_showLocationConfirmationSheetWithRequest_completion___block_invoke_2_cold_1(v4, v5);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x277CF0C80]);
    [v6 setObject:v3 forSetting:0];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __80__CPSOpenClipCardPresenter_showLocationConfirmationSheetWithRequest_completion___block_invoke_5;
    v8[3] = &unk_278DCF050;
    v7 = *(a1 + 40);
    v9 = *(a1 + 48);
    [v7 _activateAlertHandleWithSettings:v6 viewControllerClassName:@"CPSLocationAlertViewController" repsonseHandler:v8];
  }
}

void __80__CPSOpenClipCardPresenter_showLocationConfirmationSheetWithRequest_completion___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = [a2 info];
  v4 = [v3 objectForSetting:0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    (*(*(a1 + 32) + 16))(*(a1 + 32), [v4 integerValue]);
  }

  else
  {
    v5 = CPS_LOG_CHANNEL_PREFIXClipServices();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __80__CPSOpenClipCardPresenter_showLocationConfirmationSheetWithRequest_completion___block_invoke_5_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }

    (*(*(a1 + 32) + 16))(*(a1 + 32), 0);
  }
}

uint64_t __80__CPSOpenClipCardPresenter_showLocationConfirmationSheetWithRequest_completion___block_invoke_8(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    v2 = result;
    v3 = CPS_LOG_CHANNEL_PREFIXClipServices();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __80__CPSOpenClipCardPresenter_showLocationConfirmationSheetWithRequest_completion___block_invoke_8_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }

    return (*(*(v2 + 32) + 16))();
  }

  return result;
}

uint64_t __80__CPSOpenClipCardPresenter_showLocationConfirmationSheetWithRequest_completion___block_invoke_10(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 8) || *(v2 + 16))
  {
    v3 = MEMORY[0x245D3D5F0](*(a1 + 40));
    v4 = *(a1 + 32);
    v5 = *(v4 + 32);
    *(v4 + 32) = v3;

    return MEMORY[0x2821F96F8]();
  }

  else
  {
    v6 = *(a1 + 40);
    v7 = *(*(a1 + 40) + 16);

    return v7();
  }
}

- (void)_performStagedLocationConfirmationDisplayIfNeeded
{
  dispatch_assert_queue_V2(self->_queue);
  if (self->_stagedLocationConfirmationDisplay && !self->_alertHandle && !self->_sharingClient)
  {
    v4 = MEMORY[0x245D3D5F0]();
    stagedLocationConfirmationDisplay = self->_stagedLocationConfirmationDisplay;
    self->_stagedLocationConfirmationDisplay = 0;

    v4[2]();
  }
}

- (void)_showCardWithOptions:(unint64_t)a3 activationHandler:(id)a4 completionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  objc_initWeak(&location, self);
  queue = self->_queue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __85__CPSOpenClipCardPresenter__showCardWithOptions_activationHandler_completionHandler___block_invoke;
  v13[3] = &unk_278DCF0F0;
  v13[4] = self;
  v14 = v9;
  v11 = v9;
  objc_copyWeak(v16, &location);
  v16[1] = a3;
  v15 = v8;
  v12 = v8;
  dispatch_async(queue, v13);

  objc_destroyWeak(v16);
  objc_destroyWeak(&location);
}

void __85__CPSOpenClipCardPresenter__showCardWithOptions_activationHandler_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 8))
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 40) + 16);

    v4();
  }

  else if (*(v2 + 16))
  {
    v5 = CPS_LOG_CHANNEL_PREFIXClipServices();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __85__CPSOpenClipCardPresenter__showCardWithOptions_activationHandler_completionHandler___block_invoke_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v13 = objc_alloc_init(MEMORY[0x277D54C30]);
    v14 = *(a1 + 32);
    v15 = *(v14 + 16);
    *(v14 + 16) = v13;

    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __85__CPSOpenClipCardPresenter__showCardWithOptions_activationHandler_completionHandler___block_invoke_12;
    v22[3] = &unk_278DCE2A0;
    objc_copyWeak(&v23, (a1 + 56));
    [*(*(a1 + 32) + 16) setInvalidationHandler:v22];
    v16 = *(*(a1 + 32) + 16);
    v17 = *(a1 + 64);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __85__CPSOpenClipCardPresenter__showCardWithOptions_activationHandler_completionHandler___block_invoke_2;
    v18[3] = &unk_278DCF0C8;
    objc_copyWeak(&v21, (a1 + 56));
    v19 = *(a1 + 48);
    v20 = *(a1 + 40);
    [v16 startProxCardTransactionWithOptions:v17 completion:v18];

    objc_destroyWeak(&v21);
    objc_destroyWeak(&v23);
  }
}

void __85__CPSOpenClipCardPresenter__showCardWithOptions_activationHandler_completionHandler___block_invoke_12(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _sharingClientDidInvalidate];
    WeakRetained = v2;
  }
}

void __85__CPSOpenClipCardPresenter__showCardWithOptions_activationHandler_completionHandler___block_invoke_2(id *a1, char a2)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[3];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __85__CPSOpenClipCardPresenter__showCardWithOptions_activationHandler_completionHandler___block_invoke_3;
    v8[3] = &unk_278DCF0A0;
    v11 = a2;
    v7 = a1[4];
    v8[4] = v5;
    v9 = v7;
    v10 = a1[5];
    dispatch_async(v6, v8);
  }
}

uint64_t __85__CPSOpenClipCardPresenter__showCardWithOptions_activationHandler_completionHandler___block_invoke_3(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    v2 = *(a1 + 40);
    v3 = *(*(a1 + 40) + 16);

    return v3();
  }

  else
  {
    [*(a1 + 32) _invalidateSharingClient];
    v5 = *(*(a1 + 48) + 16);

    return v5();
  }
}

- (void)_activateAlertHandleWithSettings:(id)a3 viewControllerClassName:(id)a4 repsonseHandler:(id)a5
{
  queue = self->_queue;
  v9 = a5;
  v10 = a4;
  v11 = a3;
  dispatch_assert_queue_V2(queue);
  v18 = [objc_alloc(MEMORY[0x277D66BD8]) initWithServiceName:@"com.apple.ClipViewService" viewControllerClassName:v10];

  v12 = objc_alloc_init(MEMORY[0x277D66BD0]);
  v13 = [objc_alloc(MEMORY[0x277CF0B58]) initWithInfo:v11 timeout:self->_queue forResponseOnQueue:v9 withHandler:0.0];

  v14 = [MEMORY[0x277CBEB98] setWithObject:v13];
  [v12 setActions:v14];

  v15 = [MEMORY[0x277D66BF0] newHandleWithDefinition:v18 configurationContext:v12];
  alertHandle = self->_alertHandle;
  self->_alertHandle = v15;

  [(SBSRemoteAlertHandle *)self->_alertHandle addObserver:self];
  v17 = objc_alloc_init(MEMORY[0x277D66BC0]);
  [(SBSRemoteAlertHandle *)self->_alertHandle activateWithContext:v17];
}

- (void)_activateAlertHandleWithURL:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = MEMORY[0x277CF0C80];
  v8 = a3;
  v9 = objc_alloc_init(v7);
  [v9 setObject:v8 forSetting:0];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __74__CPSOpenClipCardPresenter__activateAlertHandleWithURL_completionHandler___block_invoke;
  v11[3] = &unk_278DCF050;
  v12 = v6;
  v10 = v6;
  [(CPSOpenClipCardPresenter *)self _activateAlertHandleWithSettings:v9 viewControllerClassName:@"CPSAlertViewController" repsonseHandler:v11];
}

uint64_t __74__CPSOpenClipCardPresenter__activateAlertHandleWithURL_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 info];
  [v3 flagForSetting:0];

  v4 = *(*(a1 + 32) + 16);

  return v4();
}

+ (id)responseForOpenClipAction:(BOOL)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CF0C80]);
  [v4 setFlag:v3 forSetting:0];
  v5 = [MEMORY[0x277CF0B68] responseWithInfo:v4];

  return v5;
}

- (void)remoteAlertHandleDidDeactivate:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__CPSOpenClipCardPresenter_remoteAlertHandleDidDeactivate___block_invoke;
  v7[3] = &unk_278DCDE58;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(queue, v7);
}

uint64_t __59__CPSOpenClipCardPresenter_remoteAlertHandleDidDeactivate___block_invoke(uint64_t a1)
{
  [*(a1 + 32) invalidate];
  v2 = *(a1 + 40);

  return [v2 _invalidateSharingClient];
}

- (void)remoteAlertHandle:(id)a3 didInvalidateWithError:(id)a4
{
  v5 = a3;
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __69__CPSOpenClipCardPresenter_remoteAlertHandle_didInvalidateWithError___block_invoke;
  v8[3] = &unk_278DCDE58;
  v9 = v5;
  v10 = self;
  v7 = v5;
  dispatch_async(queue, v8);
}

uint64_t __69__CPSOpenClipCardPresenter_remoteAlertHandle_didInvalidateWithError___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) removeObserver:*(a1 + 40)];
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  if (v4 == *(a1 + 32))
  {
    *(v3 + 8) = 0;

    [*(a1 + 40) _invalidateSharingClient];
    v5 = *(a1 + 40);

    return [v5 _performStagedLocationConfirmationDisplayIfNeeded];
  }

  return result;
}

- (void)_invalidateSharingClient
{
  dispatch_assert_queue_V2(self->_queue);
  sharingClient = self->_sharingClient;
  if (sharingClient)
  {

    [(SFClient *)sharingClient invalidate];
  }
}

- (void)_sharingClientDidInvalidate
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__CPSOpenClipCardPresenter__sharingClientDidInvalidate__block_invoke;
  block[3] = &unk_278DCDE30;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __55__CPSOpenClipCardPresenter__sharingClientDidInvalidate__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;

  v4 = *(a1 + 32);

  return [v4 _performStagedLocationConfirmationDisplayIfNeeded];
}

void __80__CPSOpenClipCardPresenter_showLocationConfirmationSheetWithRequest_completion___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_2436ED000, a2, OS_LOG_TYPE_ERROR, "Fail to encode location request with error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end