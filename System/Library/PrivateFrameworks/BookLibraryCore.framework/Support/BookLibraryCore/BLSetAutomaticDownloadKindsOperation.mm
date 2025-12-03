@interface BLSetAutomaticDownloadKindsOperation
- (BLSetAutomaticDownloadKindsOperation)initWithEnabledMediaKinds:(id)kinds account:(id)account;
- (void)AMSURLSession:(id)session task:(id)task handleAuthenticateRequest:(id)request completion:(id)completion;
- (void)AMSURLSession:(id)session task:(id)task handleDialogRequest:(id)request completion:(id)completion;
- (void)AMSURLSession:(id)session task:(id)task handleEngagementRequest:(id)request completion:(id)completion;
- (void)handleAuthenticateRequest:(id)request completion:(id)completion;
- (void)handleDialogRequest:(id)request completion:(id)completion;
- (void)run;
- (void)setUiHostProxy:(id)proxy;
@end

@implementation BLSetAutomaticDownloadKindsOperation

- (BLSetAutomaticDownloadKindsOperation)initWithEnabledMediaKinds:(id)kinds account:(id)account
{
  kindsCopy = kinds;
  accountCopy = account;
  v12.receiver = self;
  v12.super_class = BLSetAutomaticDownloadKindsOperation;
  v9 = [(BLOperation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_enabledMediaKinds, kinds);
    objc_storeStrong(&v10->_account, account);
  }

  return v10;
}

- (void)run
{
  v3 = +[BUBag defaultBag];
  v4 = [AMSAutomaticDownloadKindsSetTask alloc];
  enabledMediaKinds = [(BLSetAutomaticDownloadKindsOperation *)self enabledMediaKinds];
  allObjects = [enabledMediaKinds allObjects];
  account = [(BLSetAutomaticDownloadKindsOperation *)self account];
  v8 = [v4 initWithEnabledMediaKinds:allObjects account:account bag:v3 presentationDelegate:self];

  perform = [v8 perform];
  v15 = 0;
  v10 = [perform resultWithError:&v15];
  v11 = v15;

  if (v11)
  {
    [(BLOperation *)self setError:v11];
  }

  else
  {
    [(BLOperation *)self setSuccess:1];
    v12 = [NSSet alloc];
    enabledMediaKinds2 = [v10 enabledMediaKinds];
    v14 = [v12 initWithArray:enabledMediaKinds2];
    [(BLSetAutomaticDownloadKindsOperation *)self setResultingEnabledMediaKinds:v14];
  }
}

- (void)AMSURLSession:(id)session task:(id)task handleDialogRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  uiHelper = [(BLSetAutomaticDownloadKindsOperation *)self uiHelper];
  [uiHelper handleDialogRequest:requestCopy completion:completionCopy];
}

- (void)AMSURLSession:(id)session task:(id)task handleEngagementRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  uiHelper = [(BLSetAutomaticDownloadKindsOperation *)self uiHelper];
  [uiHelper handleEngagementRequest:requestCopy completion:completionCopy];
}

- (void)AMSURLSession:(id)session task:(id)task handleAuthenticateRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  uiHelper = [(BLSetAutomaticDownloadKindsOperation *)self uiHelper];
  [uiHelper handleAuthenticateRequest:requestCopy completion:completionCopy];
}

- (void)handleAuthenticateRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  uiHelper = [(BLSetAutomaticDownloadKindsOperation *)self uiHelper];
  [uiHelper handleAuthenticateRequest:requestCopy completion:completionCopy];
}

- (void)handleDialogRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  uiHelper = [(BLSetAutomaticDownloadKindsOperation *)self uiHelper];
  [uiHelper handleDialogRequest:requestCopy completion:completionCopy];
}

- (void)setUiHostProxy:(id)proxy
{
  proxyCopy = proxy;
  objc_storeStrong(&self->_uiHostProxy, proxy);
  uiHelper = [(BLSetAutomaticDownloadKindsOperation *)self uiHelper];

  if (!uiHelper)
  {
    v6 = objc_alloc_init(BLPurchaseUIHelper);
    [(BLSetAutomaticDownloadKindsOperation *)self setUiHelper:v6];
  }

  uiHelper2 = [(BLSetAutomaticDownloadKindsOperation *)self uiHelper];
  [uiHelper2 setUiHostProxy:proxyCopy];
}

@end