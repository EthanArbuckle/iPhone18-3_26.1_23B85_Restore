@interface CNFRegCreateAccountController
- (id)bagKey;
- (void)cancelTapped;
- (void)completeHandoffWithStatus:(int)a3 appleID:(id)a4 authID:(id)a5 authToken:(id)a6;
- (void)dealloc;
@end

@implementation CNFRegCreateAccountController

- (void)dealloc
{
  self->_delegate = 0;
  v2.receiver = self;
  v2.super_class = CNFRegCreateAccountController;
  [(CNFRegAccountWebViewController *)&v2 dealloc];
}

- (id)bagKey
{
  v2 = [(CNFRegServerWebViewController *)self regController];
  v3 = [v2 serviceType];

  if (v3 == 1)
  {
    return @"md-profile-setup-page";
  }

  else
  {
    return @"vc-profile-setup-page";
  }
}

- (void)cancelTapped
{
  v3 = [(CNFRegCreateAccountController *)self delegate];
  [v3 createAccountControllerDidFinish:self withAppleId:0 authID:0 authToken:0];
}

- (void)completeHandoffWithStatus:(int)a3 appleID:(id)a4 authID:(id)a5 authToken:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = [(CNFRegCreateAccountController *)self delegate];
  [v12 createAccountControllerDidFinish:self withAppleId:v11 authID:v10 authToken:v9];
}

@end