@interface CNFRegChangeAccountPasswordController
- (BOOL)canSendURLRequest:(id)request;
- (CNFRegChangeAccountPasswordController)initWithRegController:(id)controller appleID:(id)d;
- (id)bagKey;
- (id)overrideURLForURL:(id)l;
- (void)cancelTapped;
- (void)completeHandoffWithStatus:(int)status appleID:(id)d authID:(id)iD authToken:(id)token;
- (void)dealloc;
- (void)setHeadersForRequest:(id)request;
@end

@implementation CNFRegChangeAccountPasswordController

- (CNFRegChangeAccountPasswordController)initWithRegController:(id)controller appleID:(id)d
{
  dCopy = d;
  v10.receiver = self;
  v10.super_class = CNFRegChangeAccountPasswordController;
  v7 = [(CNFRegAccountWebViewController *)&v10 initWithRegController:controller];
  v8 = v7;
  if (v7)
  {
    [(CNFRegChangeAccountPasswordController *)v7 setAppleID:dCopy];
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

- (void)setHeadersForRequest:(id)request
{
  requestCopy = request;
  v8.receiver = self;
  v8.super_class = CNFRegChangeAccountPasswordController;
  [(CNFRegAuthorizedAccountWebViewController *)&v8 setHeadersForRequest:requestCopy];
  pushTokenHeaderValue = [(CNFRegAccountWebViewController *)self pushTokenHeaderValue];
  v6 = pushTokenHeaderValue;
  if (pushTokenHeaderValue)
  {
    __imHexString = [pushTokenHeaderValue __imHexString];
    [requestCopy addValue:__imHexString forHTTPHeaderField:@"x-push-token"];
  }
}

- (BOOL)canSendURLRequest:(id)request
{
  requestCopy = request;
  v10.receiver = self;
  v10.super_class = CNFRegChangeAccountPasswordController;
  if (![(CNFRegAuthorizedAccountWebViewController *)&v10 canSendURLRequest:requestCopy])
  {
LABEL_10:
    v6 = 0;
    goto LABEL_11;
  }

  v5 = [requestCopy valueForHTTPHeaderField:@"x-push-token"];

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
  regController = [(CNFRegServerWebViewController *)self regController];
  serviceType = [regController serviceType];

  if (serviceType == 1)
  {
    return @"md-profile-password-change";
  }

  else
  {
    return @"vc-profile-password-change";
  }
}

- (id)overrideURLForURL:(id)l
{
  v15 = *MEMORY[0x277D85DE8];
  lCopy = l;
  appleID = [(CNFRegChangeAccountPasswordController *)self appleID];
  v6 = appleID;
  v7 = lCopy;
  if (appleID)
  {
    v7 = lCopy;
    if ([appleID length])
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
      v7 = [lCopy URLByAppendingCNFQueryDictionary:v9];
    }
  }

  v10 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)cancelTapped
{
  delegate = [(CNFRegChangeAccountPasswordController *)self delegate];
  [delegate changePasswordControllerDidCancel:self];
}

- (void)completeHandoffWithStatus:(int)status appleID:(id)d authID:(id)iD authToken:(id)token
{
  tokenCopy = token;
  iDCopy = iD;
  dCopy = d;
  delegate = [(CNFRegChangeAccountPasswordController *)self delegate];
  [delegate changePasswordControllerDidFinish:self withAppleID:dCopy authID:iDCopy authToken:tokenCopy];
}

@end