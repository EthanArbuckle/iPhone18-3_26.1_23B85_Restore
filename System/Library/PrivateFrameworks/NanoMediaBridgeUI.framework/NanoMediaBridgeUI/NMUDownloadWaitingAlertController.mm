@interface NMUDownloadWaitingAlertController
- (NMUDownloadWaitingAlertController)initWithModelObject:(id)object status:(unint64_t)status downloadPauseReason:(unint64_t)reason options:(id)options presentingViewController:(id)controller;
- (void)presentWithCompletion:(id)completion;
@end

@implementation NMUDownloadWaitingAlertController

- (NMUDownloadWaitingAlertController)initWithModelObject:(id)object status:(unint64_t)status downloadPauseReason:(unint64_t)reason options:(id)options presentingViewController:(id)controller
{
  objectCopy = object;
  optionsCopy = options;
  controllerCopy = controller;
  v19.receiver = self;
  v19.super_class = NMUDownloadWaitingAlertController;
  v16 = [(NMUDownloadWaitingAlertController *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_modelObject, object);
    v17->_status = status;
    v17->_downloadPauseReason = reason;
    objc_storeStrong(&v17->_keepLocalRequestOptions, options);
    objc_storeStrong(&v17->_presentingViewController, controller);
  }

  return v17;
}

- (void)presentWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = [[NMUDownloadWaitingAlertConfiguration alloc] initWithModelObject:self->_modelObject status:self->_status downloadPauseReason:self->_downloadPauseReason options:self->_keepLocalRequestOptions];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __59__NMUDownloadWaitingAlertController_presentWithCompletion___block_invoke;
  v9[3] = &unk_27993BE08;
  v10 = v5;
  v11 = completionCopy;
  v9[4] = self;
  v6 = v5;
  v7 = completionCopy;
  v8 = [(NMUKeepLocalAlertConfiguration *)v6 alertViewControllerWithKeepLocalBlock:v9];
  [(UIViewController *)self->_presentingViewController presentViewController:v8 animated:1 completion:0];
}

void __59__NMUDownloadWaitingAlertController_presentWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  if ([v7 shouldPerformKeepLocalRequest])
  {
    v3 = [objc_alloc(MEMORY[0x277D2B9E8]) initWithModelObject:*(*(a1 + 32) + 8) enableState:1];
    v4 = [[NMUKeepLocalRequestController alloc] initWithRequest:v3 presentingViewController:*(*(a1 + 32) + 40)];
    v5 = [v7 keepLocalRequestOptions];
    [(NMUKeepLocalRequestController *)v4 performRequestWithOptions:v5 completion:*(a1 + 48)];
  }

  else
  {
    v6 = *(a1 + 48);
    if (v6)
    {
      (*(v6 + 16))(v6, 0);
    }
  }

  +[NMUMetricsReporter incrementTapCountForDownloadWaitingReason:action:](NMUMetricsReporter, "incrementTapCountForDownloadWaitingReason:action:", [*(a1 + 40) reason], objc_msgSend(v7, "downloadAction"));
}

@end