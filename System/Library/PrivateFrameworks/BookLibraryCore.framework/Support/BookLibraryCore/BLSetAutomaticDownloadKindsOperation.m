@interface BLSetAutomaticDownloadKindsOperation
- (BLSetAutomaticDownloadKindsOperation)initWithEnabledMediaKinds:(id)a3 account:(id)a4;
- (void)AMSURLSession:(id)a3 task:(id)a4 handleAuthenticateRequest:(id)a5 completion:(id)a6;
- (void)AMSURLSession:(id)a3 task:(id)a4 handleDialogRequest:(id)a5 completion:(id)a6;
- (void)AMSURLSession:(id)a3 task:(id)a4 handleEngagementRequest:(id)a5 completion:(id)a6;
- (void)handleAuthenticateRequest:(id)a3 completion:(id)a4;
- (void)handleDialogRequest:(id)a3 completion:(id)a4;
- (void)run;
- (void)setUiHostProxy:(id)a3;
@end

@implementation BLSetAutomaticDownloadKindsOperation

- (BLSetAutomaticDownloadKindsOperation)initWithEnabledMediaKinds:(id)a3 account:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = BLSetAutomaticDownloadKindsOperation;
  v9 = [(BLOperation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_enabledMediaKinds, a3);
    objc_storeStrong(&v10->_account, a4);
  }

  return v10;
}

- (void)run
{
  v3 = +[BUBag defaultBag];
  v4 = [AMSAutomaticDownloadKindsSetTask alloc];
  v5 = [(BLSetAutomaticDownloadKindsOperation *)self enabledMediaKinds];
  v6 = [v5 allObjects];
  v7 = [(BLSetAutomaticDownloadKindsOperation *)self account];
  v8 = [v4 initWithEnabledMediaKinds:v6 account:v7 bag:v3 presentationDelegate:self];

  v9 = [v8 perform];
  v15 = 0;
  v10 = [v9 resultWithError:&v15];
  v11 = v15;

  if (v11)
  {
    [(BLOperation *)self setError:v11];
  }

  else
  {
    [(BLOperation *)self setSuccess:1];
    v12 = [NSSet alloc];
    v13 = [v10 enabledMediaKinds];
    v14 = [v12 initWithArray:v13];
    [(BLSetAutomaticDownloadKindsOperation *)self setResultingEnabledMediaKinds:v14];
  }
}

- (void)AMSURLSession:(id)a3 task:(id)a4 handleDialogRequest:(id)a5 completion:(id)a6
{
  v8 = a6;
  v9 = a5;
  v10 = [(BLSetAutomaticDownloadKindsOperation *)self uiHelper];
  [v10 handleDialogRequest:v9 completion:v8];
}

- (void)AMSURLSession:(id)a3 task:(id)a4 handleEngagementRequest:(id)a5 completion:(id)a6
{
  v8 = a6;
  v9 = a5;
  v10 = [(BLSetAutomaticDownloadKindsOperation *)self uiHelper];
  [v10 handleEngagementRequest:v9 completion:v8];
}

- (void)AMSURLSession:(id)a3 task:(id)a4 handleAuthenticateRequest:(id)a5 completion:(id)a6
{
  v8 = a6;
  v9 = a5;
  v10 = [(BLSetAutomaticDownloadKindsOperation *)self uiHelper];
  [v10 handleAuthenticateRequest:v9 completion:v8];
}

- (void)handleAuthenticateRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(BLSetAutomaticDownloadKindsOperation *)self uiHelper];
  [v8 handleAuthenticateRequest:v7 completion:v6];
}

- (void)handleDialogRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(BLSetAutomaticDownloadKindsOperation *)self uiHelper];
  [v8 handleDialogRequest:v7 completion:v6];
}

- (void)setUiHostProxy:(id)a3
{
  v8 = a3;
  objc_storeStrong(&self->_uiHostProxy, a3);
  v5 = [(BLSetAutomaticDownloadKindsOperation *)self uiHelper];

  if (!v5)
  {
    v6 = objc_alloc_init(BLPurchaseUIHelper);
    [(BLSetAutomaticDownloadKindsOperation *)self setUiHelper:v6];
  }

  v7 = [(BLSetAutomaticDownloadKindsOperation *)self uiHelper];
  [v7 setUiHostProxy:v8];
}

@end