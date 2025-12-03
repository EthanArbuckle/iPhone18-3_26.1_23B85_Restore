@interface DAEASOAuthWebAuthServiceController
- (DAEASOAuthWebAuthServiceController)initWithNibName:(id)name bundle:(id)bundle;
- (void)loadView;
- (void)webViewController:(id)controller didFinishWithSuccess:(BOOL)success response:(id)response error:(id)error;
@end

@implementation DAEASOAuthWebAuthServiceController

- (DAEASOAuthWebAuthServiceController)initWithNibName:(id)name bundle:(id)bundle
{
  v8.receiver = self;
  v8.super_class = DAEASOAuthWebAuthServiceController;
  v4 = [(DAEASOAuthWebAuthServiceController *)&v8 initWithNibName:name bundle:bundle];
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
  view = [(DAEASOAuthWebAuthServiceController *)self view];
  [view setOpaque:1];

  v4 = +[UIColor clearColor];
  view2 = [(DAEASOAuthWebAuthServiceController *)self view];
  [view2 setBackgroundColor:v4];

  extensionContext = [(DAEASOAuthWebAuthServiceController *)self extensionContext];
  inputItems = [extensionContext inputItems];
  v8 = [inputItems objectAtIndexedSubscript:0];

  userInfo = [v8 userInfo];
  v10 = DALoggingwithCategory();
  v11 = _CPLog_to_os_log_type[7];
  if (os_log_type_enabled(v10, v11))
  {
    *buf = 138412290;
    v24 = userInfo;
    _os_log_impl(&_mh_execute_header, v10, v11, "DAEASOAuthWebAuthServiceController extensionItem.userInfo %@", buf, 0xCu);
  }

  v12 = [userInfo objectForKeyedSubscript:@"description"];
  [(SL_OOPAWebViewController *)self->_webViewController setNavBarTitle:v12];

  v13 = [userInfo objectForKeyedSubscript:@"username"];
  if (v13)
  {
    [(SL_OOPAWebViewController *)self->_webViewController setUsername:v13];
  }

  [(DAEASOAuthWebAuthServiceController *)self pushViewController:self->_webViewController animated:0];
  v14 = [userInfo objectForKeyedSubscript:@"accountId"];
  v15 = [userInfo objectForKeyedSubscript:@"oauthAccountType"];
  integerValue = [v15 integerValue];

  v17 = [userInfo objectForKeyedSubscript:@"authURI"];
  v18 = [userInfo objectForKeyedSubscript:@"easEndPoint"];
  v19 = [userInfo objectForKeyedSubscript:@"claimsChallenge"];
  if ((integerValue & 0xFFFFFFFFFFFFFFFDLL) == 1)
  {
    v20 = [[DAEASOAuthFlowController alloc] initWithOAuthType:integerValue authURI:v17 username:v13 accountId:v14 claims:v19 isOnPrem:0];
  }

  else
  {
    v20 = [[DAExchangeOAuthFlowController alloc] initWithAuthURI:v17 easEndPoint:v18 username:v13 accountId:v14 claims:v19 isOnPrem:0];
  }

  v21 = v20;
  [(SL_OOPAWebViewController *)self->_webViewController setAuthFlowDelegate:v20];
}

- (void)webViewController:(id)controller didFinishWithSuccess:(BOOL)success response:(id)response error:(id)error
{
  successCopy = success;
  errorCopy = error;
  if (response || successCopy)
  {
    v13 = [NSKeyedArchiver archivedDataWithRootObject:response];
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

    extensionContext = [(DAEASOAuthWebAuthServiceController *)self extensionContext];
    v23 = v16;
    v20 = [NSArray arrayWithObjects:&v23 count:1];
    [extensionContext completeRequestReturningItems:v20 completionHandler:&stru_100004128];
  }

  else
  {
    v10 = DALoggingwithCategory();
    v11 = _CPLog_to_os_log_type[7];
    if (os_log_type_enabled(v10, _CPLog_to_os_log_type[7]))
    {
      v21 = 138412290;
      v22 = errorCopy;
      _os_log_impl(&_mh_execute_header, v10, v11, "DAEASOAuthWebAuthServiceController will cancelRequestWithError: %@", &v21, 0xCu);
    }

    extensionContext2 = [(DAEASOAuthWebAuthServiceController *)self extensionContext];
    [extensionContext2 cancelRequestWithError:errorCopy];

    v13 = DALoggingwithCategory();
    if (os_log_type_enabled(v13, v11))
    {
      v21 = 138412290;
      v22 = errorCopy;
      _os_log_impl(&_mh_execute_header, v13, v11, "DAEASOAuthWebAuthServiceController did cancelRequestWithError: %@", &v21, 0xCu);
    }
  }
}

@end