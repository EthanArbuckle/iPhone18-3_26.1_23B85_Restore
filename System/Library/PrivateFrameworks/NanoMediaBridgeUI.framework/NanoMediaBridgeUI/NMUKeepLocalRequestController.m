@interface NMUKeepLocalRequestController
- (NMUKeepLocalRequestController)initWithRequest:(id)a3 presentingViewController:(id)a4;
- (void)_handleResponseForRequest:(id)a3 options:(id)a4 error:(id)a5 completion:(id)a6;
- (void)_presentAlertForRequest:(id)a3 options:(id)a4 error:(id)a5 completion:(id)a6;
- (void)performRequestWithOptions:(id)a3 completion:(id)a4;
@end

@implementation NMUKeepLocalRequestController

- (NMUKeepLocalRequestController)initWithRequest:(id)a3 presentingViewController:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = NMUKeepLocalRequestController;
  v9 = [(NMUKeepLocalRequestController *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_request, a3);
    objc_storeStrong(&v10->_presentingViewController, a4);
  }

  return v10;
}

- (void)performRequestWithOptions:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  request = self->_request;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __70__NMUKeepLocalRequestController_performRequestWithOptions_completion___block_invoke;
  v11[3] = &unk_27993BDB8;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [(NMSKeepLocalRequest *)request performWithOptions:v10 completion:v11];
}

- (void)_handleResponseForRequest:(id)a3 options:(id)a4 error:(id)a5 completion:(id)a6
{
  v29 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v12)
  {
    v14 = [v12 domain];
    if ([v14 isEqualToString:*MEMORY[0x277D2B9D0]])
    {
      v15 = [v12 code];

      if (v15 == 1)
      {
LABEL_13:
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __84__NMUKeepLocalRequestController__handleResponseForRequest_options_error_completion___block_invoke;
        block[3] = &unk_27993BDE0;
        block[4] = self;
        v21 = v10;
        v22 = v11;
        v23 = v12;
        v24 = v13;
        dispatch_async(MEMORY[0x277D85CD0], block);

        goto LABEL_14;
      }
    }

    else
    {
    }

    v19 = NMLogForCategory(7);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [NMUKeepLocalRequestController _handleResponseForRequest:v12 options:v10 error:v19 completion:?];
    }

    goto LABEL_13;
  }

  v16 = NMLogForCategory(7);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [v10 enableState];
    v18 = [v10 modelObject];
    *buf = 134218242;
    v26 = v17;
    v27 = 2112;
    v28 = v18;
    _os_log_impl(&dword_25B260000, v16, OS_LOG_TYPE_DEFAULT, "[NMUKeepLocalRequestController] Successfully set keepLocalState:%ld for modelObject: %@", buf, 0x16u);
  }

  if (v13)
  {
    (*(v13 + 2))(v13, 1);
  }

LABEL_14:
}

- (void)_presentAlertForRequest:(id)a3 options:(id)a4 error:(id)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [NMUKeepLocalErrorAlertConfiguration alloc];
  v15 = [v13 modelObject];

  v16 = [(NMUKeepLocalErrorAlertConfiguration *)v14 initWithModelObject:v15 error:v11 options:v12];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __82__NMUKeepLocalRequestController__presentAlertForRequest_options_error_completion___block_invoke;
  v20[3] = &unk_27993BE08;
  v21 = v16;
  v22 = v10;
  v20[4] = self;
  v17 = v16;
  v18 = v10;
  v19 = [(NMUKeepLocalAlertConfiguration *)v17 alertViewControllerWithKeepLocalBlock:v20];
  [(UIViewController *)self->_presentingViewController presentViewController:v19 animated:1 completion:0];
}

void __82__NMUKeepLocalRequestController__presentAlertForRequest_options_error_completion___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  if ([v6 shouldPerformKeepLocalRequest])
  {
    v3 = *(a1 + 32);
    v4 = [v6 keepLocalRequestOptions];
    [v3 performRequestWithOptions:v4 completion:*(a1 + 48)];
  }

  else
  {
    v5 = *(a1 + 48);
    if (v5)
    {
      (*(v5 + 16))(v5, 0);
    }
  }

  +[NMUMetricsReporter incrementTapCountForKeepLocalErrorAlertReason:action:](NMUMetricsReporter, "incrementTapCountForKeepLocalErrorAlertReason:action:", [*(a1 + 40) reason], objc_msgSend(v6, "downloadAction"));
}

- (void)_handleResponseForRequest:(NSObject *)a3 options:error:completion:.cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = [a2 modelObject];
  v6 = 138412546;
  v7 = a1;
  v8 = 2112;
  v9 = v5;
  _os_log_error_impl(&dword_25B260000, a3, OS_LOG_TYPE_ERROR, "[NMUKeepLocalRequestController] error (%@) while trying to validate for download model object: %@", &v6, 0x16u);
}

@end