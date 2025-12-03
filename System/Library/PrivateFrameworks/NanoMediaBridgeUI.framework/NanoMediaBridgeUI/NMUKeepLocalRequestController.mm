@interface NMUKeepLocalRequestController
- (NMUKeepLocalRequestController)initWithRequest:(id)request presentingViewController:(id)controller;
- (void)_handleResponseForRequest:(id)request options:(id)options error:(id)error completion:(id)completion;
- (void)_presentAlertForRequest:(id)request options:(id)options error:(id)error completion:(id)completion;
- (void)performRequestWithOptions:(id)options completion:(id)completion;
@end

@implementation NMUKeepLocalRequestController

- (NMUKeepLocalRequestController)initWithRequest:(id)request presentingViewController:(id)controller
{
  requestCopy = request;
  controllerCopy = controller;
  v12.receiver = self;
  v12.super_class = NMUKeepLocalRequestController;
  v9 = [(NMUKeepLocalRequestController *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_request, request);
    objc_storeStrong(&v10->_presentingViewController, controller);
  }

  return v10;
}

- (void)performRequestWithOptions:(id)options completion:(id)completion
{
  optionsCopy = options;
  completionCopy = completion;
  request = self->_request;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __70__NMUKeepLocalRequestController_performRequestWithOptions_completion___block_invoke;
  v11[3] = &unk_27993BDB8;
  v11[4] = self;
  v12 = optionsCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = optionsCopy;
  [(NMSKeepLocalRequest *)request performWithOptions:v10 completion:v11];
}

- (void)_handleResponseForRequest:(id)request options:(id)options error:(id)error completion:(id)completion
{
  v29 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  optionsCopy = options;
  errorCopy = error;
  completionCopy = completion;
  if (errorCopy)
  {
    domain = [errorCopy domain];
    if ([domain isEqualToString:*MEMORY[0x277D2B9D0]])
    {
      code = [errorCopy code];

      if (code == 1)
      {
LABEL_13:
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __84__NMUKeepLocalRequestController__handleResponseForRequest_options_error_completion___block_invoke;
        block[3] = &unk_27993BDE0;
        block[4] = self;
        v21 = requestCopy;
        v22 = optionsCopy;
        v23 = errorCopy;
        v24 = completionCopy;
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
      [NMUKeepLocalRequestController _handleResponseForRequest:errorCopy options:requestCopy error:v19 completion:?];
    }

    goto LABEL_13;
  }

  v16 = NMLogForCategory(7);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    enableState = [requestCopy enableState];
    modelObject = [requestCopy modelObject];
    *buf = 134218242;
    v26 = enableState;
    v27 = 2112;
    v28 = modelObject;
    _os_log_impl(&dword_25B260000, v16, OS_LOG_TYPE_DEFAULT, "[NMUKeepLocalRequestController] Successfully set keepLocalState:%ld for modelObject: %@", buf, 0x16u);
  }

  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 1);
  }

LABEL_14:
}

- (void)_presentAlertForRequest:(id)request options:(id)options error:(id)error completion:(id)completion
{
  completionCopy = completion;
  errorCopy = error;
  optionsCopy = options;
  requestCopy = request;
  v14 = [NMUKeepLocalErrorAlertConfiguration alloc];
  modelObject = [requestCopy modelObject];

  v16 = [(NMUKeepLocalErrorAlertConfiguration *)v14 initWithModelObject:modelObject error:errorCopy options:optionsCopy];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __82__NMUKeepLocalRequestController__presentAlertForRequest_options_error_completion___block_invoke;
  v20[3] = &unk_27993BE08;
  v21 = v16;
  v22 = completionCopy;
  v20[4] = self;
  v17 = v16;
  v18 = completionCopy;
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