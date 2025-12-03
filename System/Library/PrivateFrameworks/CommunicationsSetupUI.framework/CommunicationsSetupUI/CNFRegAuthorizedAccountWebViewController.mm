@interface CNFRegAuthorizedAccountWebViewController
- (BOOL)canSendURLRequest:(id)request;
- (void)setHeadersForRequest:(id)request;
@end

@implementation CNFRegAuthorizedAccountWebViewController

- (void)setHeadersForRequest:(id)request
{
  requestCopy = request;
  v7.receiver = self;
  v7.super_class = CNFRegAuthorizedAccountWebViewController;
  [(CNFRegAccountWebViewController *)&v7 setHeadersForRequest:requestCopy];
  authIdHeaderValue = [(CNFRegAccountWebViewController *)self authIdHeaderValue];
  if (authIdHeaderValue)
  {
    [requestCopy addValue:authIdHeaderValue forHTTPHeaderField:@"x-vc-profile-id"];
  }

  authTokenHeaderValue = [(CNFRegAccountWebViewController *)self authTokenHeaderValue];
  if (authTokenHeaderValue)
  {
    [requestCopy addValue:authTokenHeaderValue forHTTPHeaderField:@"x-vc-auth-token"];
  }
}

- (BOOL)canSendURLRequest:(id)request
{
  requestCopy = request;
  v12.receiver = self;
  v12.super_class = CNFRegAuthorizedAccountWebViewController;
  if (![(CNFRegAccountWebViewController *)&v12 canSendURLRequest:requestCopy])
  {
    goto LABEL_17;
  }

  v5 = [requestCopy valueForHTTPHeaderField:@"x-vc-auth-token"];

  if (!v5)
  {
    if (![(CNFRegServerWebViewController *)self _shouldLog])
    {
      goto LABEL_17;
    }

    v8 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_243BE5000, v8, OS_LOG_TYPE_DEFAULT, "No auth token for request, denying send", v11, 2u);
    }

    if (!os_log_shim_legacy_logging_enabled() || (IMShouldLog() & 1) == 0)
    {
      goto LABEL_17;
    }

LABEL_16:
    IMLogString();
LABEL_17:
    v7 = 0;
    goto LABEL_18;
  }

  v6 = [requestCopy valueForHTTPHeaderField:@"x-vc-profile-id"];

  if (!v6)
  {
    if (![(CNFRegServerWebViewController *)self _shouldLog])
    {
      goto LABEL_17;
    }

    v9 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_243BE5000, v9, OS_LOG_TYPE_DEFAULT, "No auth id for request, denying send", v11, 2u);
    }

    if (!os_log_shim_legacy_logging_enabled() || (IMShouldLog() & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v7 = 1;
LABEL_18:

  return v7;
}

@end