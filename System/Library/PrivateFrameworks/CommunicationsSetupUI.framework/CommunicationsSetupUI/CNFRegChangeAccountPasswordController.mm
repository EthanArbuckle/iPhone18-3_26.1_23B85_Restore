@interface CNFRegChangeAccountPasswordController
- (BOOL)canSendURLRequest:(id)a3;
- (CNFRegChangeAccountPasswordController)initWithRegController:(id)a3 appleID:(id)a4;
- (id)bagKey;
- (id)overrideURLForURL:(id)a3;
- (void)cancelTapped;
- (void)completeHandoffWithStatus:(int)a3 appleID:(id)a4 authID:(id)a5 authToken:(id)a6;
- (void)dealloc;
- (void)setHeadersForRequest:(id)a3;
@end

@implementation CNFRegChangeAccountPasswordController

- (CNFRegChangeAccountPasswordController)initWithRegController:(id)a3 appleID:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = CNFRegChangeAccountPasswordController;
  v7 = [(CNFRegAccountWebViewController *)&v10 initWithRegController:a3];
  v8 = v7;
  if (v7)
  {
    [(CNFRegChangeAccountPasswordController *)v7 setAppleID:v6];
  }

  return v8;
}

- (void)dealloc
{
  self->_delegate = 0;
  v2.receiver = self;
  v2.super_class = CNFRegChangeAccountPasswordController;
  [(CNFRegAccountWebViewController *)&v2 dealloc];
}

- (void)setHeadersForRequest:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CNFRegChangeAccountPasswordController;
  [(CNFRegAuthorizedAccountWebViewController *)&v8 setHeadersForRequest:v4];
  v5 = [(CNFRegAccountWebViewController *)self pushTokenHeaderValue];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 __imHexString];
    [v4 addValue:v7 forHTTPHeaderField:@"x-push-token"];
  }
}

- (BOOL)canSendURLRequest:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CNFRegChangeAccountPasswordController;
  if (![(CNFRegAuthorizedAccountWebViewController *)&v10 canSendURLRequest:v4])
  {
LABEL_10:
    v6 = 0;
    goto LABEL_11;
  }

  v5 = [v4 valueForHTTPHeaderField:@"x-push-token"];

  if (!v5)
  {
    if ([(CNFRegServerWebViewController *)self _shouldLog])
    {
      v7 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&dword_243BE5000, v7, OS_LOG_TYPE_DEFAULT, "No push token header for request, denying send", v9, 2u);
      }

      if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
      {
        IMLogString();
      }
    }

    goto LABEL_10;
  }

  v6 = 1;
LABEL_11:

  return v6;
}

- (id)bagKey
{
  v2 = [(CNFRegServerWebViewController *)self regController];
  v3 = [v2 serviceType];

  if (v3 == 1)
  {
    return @"md-profile-password-change";
  }

  else
  {
    return @"vc-profile-password-change";
  }
}

- (id)overrideURLForURL:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(CNFRegChangeAccountPasswordController *)self appleID];
  v6 = v5;
  v7 = v4;
  if (v5)
  {
    v7 = v4;
    if ([v5 length])
    {
      if ([(CNFRegServerWebViewController *)self _shouldLog])
      {
        v8 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v14 = v6;
          _os_log_impl(&dword_243BE5000, v8, OS_LOG_TYPE_DEFAULT, "Appending login {%@} to password change URL", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
        {
          v12 = v6;
          IMLogString();
        }
      }

      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v6 forKey:{@"appleId", v12}];
      v7 = [v4 URLByAppendingCNFQueryDictionary:v9];
    }
  }

  v10 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)cancelTapped
{
  v3 = [(CNFRegChangeAccountPasswordController *)self delegate];
  [v3 changePasswordControllerDidCancel:self];
}

- (void)completeHandoffWithStatus:(int)a3 appleID:(id)a4 authID:(id)a5 authToken:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = [(CNFRegChangeAccountPasswordController *)self delegate];
  [v12 changePasswordControllerDidFinish:self withAppleID:v11 authID:v10 authToken:v9];
}

@end