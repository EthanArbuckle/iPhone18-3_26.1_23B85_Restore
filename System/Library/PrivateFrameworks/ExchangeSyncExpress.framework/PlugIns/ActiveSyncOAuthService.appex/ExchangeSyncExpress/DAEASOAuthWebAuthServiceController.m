@interface DAEASOAuthWebAuthServiceController
- (DAEASOAuthWebAuthServiceController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)loadView;
- (void)webViewController:(id)a3 didFinishWithSuccess:(BOOL)a4 response:(id)a5 error:(id)a6;
@end

@implementation DAEASOAuthWebAuthServiceController

- (DAEASOAuthWebAuthServiceController)initWithNibName:(id)a3 bundle:(id)a4
{
  v8.receiver = self;
  v8.super_class = DAEASOAuthWebAuthServiceController;
  v4 = [(DAEASOAuthWebAuthServiceController *)&v8 initWithNibName:a3 bundle:a4];
  if (v4)
  {
    v5 = objc_alloc_init(SL_OOPAWebViewController);
    webViewController = v4->_webViewController;
    v4->_webViewController = v5;

    [(SL_OOPAWebViewController *)v4->_webViewController setDelegate:v4];
  }

  return v4;
}

- (void)loadView
{
  v22.receiver = self;
  v22.super_class = DAEASOAuthWebAuthServiceController;
  [(DAEASOAuthWebAuthServiceController *)&v22 loadView];
  v3 = [(DAEASOAuthWebAuthServiceController *)self view];
  [v3 setOpaque:1];

  v4 = +[UIColor clearColor];
  v5 = [(DAEASOAuthWebAuthServiceController *)self view];
  [v5 setBackgroundColor:v4];

  v6 = [(DAEASOAuthWebAuthServiceController *)self extensionContext];
  v7 = [v6 inputItems];
  v8 = [v7 objectAtIndexedSubscript:0];

  v9 = [v8 userInfo];
  v10 = DALoggingwithCategory();
  v11 = _CPLog_to_os_log_type[7];
  if (os_log_type_enabled(v10, v11))
  {
    *buf = 138412290;
    v24 = v9;
    _os_log_impl(&_mh_execute_header, v10, v11, "DAEASOAuthWebAuthServiceController extensionItem.userInfo %@", buf, 0xCu);
  }

  v12 = [v9 objectForKeyedSubscript:@"description"];
  [(SL_OOPAWebViewController *)self->_webViewController setNavBarTitle:v12];

  v13 = [v9 objectForKeyedSubscript:@"username"];
  if (v13)
  {
    [(SL_OOPAWebViewController *)self->_webViewController setUsername:v13];
  }

  [(DAEASOAuthWebAuthServiceController *)self pushViewController:self->_webViewController animated:0];
  v14 = [v9 objectForKeyedSubscript:@"accountId"];
  v15 = [v9 objectForKeyedSubscript:@"oauthAccountType"];
  v16 = [v15 integerValue];

  v17 = [v9 objectForKeyedSubscript:@"authURI"];
  v18 = [v9 objectForKeyedSubscript:@"easEndPoint"];
  v19 = [v9 objectForKeyedSubscript:@"claimsChallenge"];
  if ((v16 & 0xFFFFFFFFFFFFFFFDLL) == 1)
  {
    v20 = [[DAEASOAuthFlowController alloc] initWithOAuthType:v16 authURI:v17 username:v13 accountId:v14 claims:v19 isOnPrem:0];
  }

  else
  {
    v20 = [[DAExchangeOAuthFlowController alloc] initWithAuthURI:v17 easEndPoint:v18 username:v13 accountId:v14 claims:v19 isOnPrem:0];
  }

  v21 = v20;
  [(SL_OOPAWebViewController *)self->_webViewController setAuthFlowDelegate:v20];
}

- (void)webViewController:(id)a3 didFinishWithSuccess:(BOOL)a4 response:(id)a5 error:(id)a6
{
  v7 = a4;
  v9 = a6;
  if (a5 || v7)
  {
    v13 = [NSKeyedArchiver archivedDataWithRootObject:a5];
    v14 = [[NSItemProvider alloc] initWithItem:v13 typeIdentifier:kUTTypeData];
    v24 = v14;
    v15 = [NSArray arrayWithObjects:&v24 count:1];
    v16 = objc_alloc_init(NSExtensionItem);
    [v16 setAttachments:v15];
    v17 = DALoggingwithCategory();
    v18 = _CPLog_to_os_log_type[7];
    if (os_log_type_enabled(v17, v18))
    {
      LOWORD(v21) = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "DAEASOAuthWebAuthServiceController will completeRequestReturningItems:", &v21, 2u);
    }

    v19 = [(DAEASOAuthWebAuthServiceController *)self extensionContext];
    v23 = v16;
    v20 = [NSArray arrayWithObjects:&v23 count:1];
    [v19 completeRequestReturningItems:v20 completionHandler:&stru_100004128];
  }

  else
  {
    v10 = DALoggingwithCategory();
    v11 = _CPLog_to_os_log_type[7];
    if (os_log_type_enabled(v10, _CPLog_to_os_log_type[7]))
    {
      v21 = 138412290;
      v22 = v9;
      _os_log_impl(&_mh_execute_header, v10, v11, "DAEASOAuthWebAuthServiceController will cancelRequestWithError: %@", &v21, 0xCu);
    }

    v12 = [(DAEASOAuthWebAuthServiceController *)self extensionContext];
    [v12 cancelRequestWithError:v9];

    v13 = DALoggingwithCategory();
    if (os_log_type_enabled(v13, v11))
    {
      v21 = 138412290;
      v22 = v9;
      _os_log_impl(&_mh_execute_header, v13, v11, "DAEASOAuthWebAuthServiceController did cancelRequestWithError: %@", &v21, 0xCu);
    }
  }
}

@end