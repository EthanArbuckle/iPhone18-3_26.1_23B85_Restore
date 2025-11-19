@interface CNFRegAccountAuthorizationController
- (CNFRegAccountAuthorizationController)initWithRegController:(id)a3 authID:(id)a4 token:(id)a5;
- (id)bagKey;
- (void)cancelTapped;
- (void)completeHandoffWithStatus:(int)a3 appleID:(id)a4 authID:(id)a5 authToken:(id)a6;
- (void)dealloc;
@end

@implementation CNFRegAccountAuthorizationController

- (CNFRegAccountAuthorizationController)initWithRegController:(id)a3 authID:(id)a4 token:(id)a5
{
  v8 = a4;
  v9 = a5;
  v13.receiver = self;
  v13.super_class = CNFRegAccountAuthorizationController;
  v10 = [(CNFRegAccountWebViewController *)&v13 initWithRegController:a3];
  v11 = v10;
  if (v10)
  {
    [(CNFRegAccountAuthorizationController *)v10 setAuthID:v8];
    [(CNFRegAccountAuthorizationController *)v11 setAuthToken:v9];
  }

  return v11;
}

- (void)dealloc
{
  self->_delegate = 0;
  v2.receiver = self;
  v2.super_class = CNFRegAccountAuthorizationController;
  [(CNFRegAccountWebViewController *)&v2 dealloc];
}

- (id)bagKey
{
  v2 = [(CNFRegServerWebViewController *)self regController];
  v3 = [v2 serviceType];

  if (v3 == 1)
  {
    return @"md-profile-authorize";
  }

  else
  {
    return @"vc-profile-authorize";
  }
}

- (void)cancelTapped
{
  v3 = [(CNFRegAccountAuthorizationController *)self delegate];
  [v3 authorizationController:self authorizedAccount:0];
}

- (void)completeHandoffWithStatus:(int)a3 appleID:(id)a4 authID:(id)a5 authToken:(id)a6
{
  v7 = a3 == 0;
  v8 = [(CNFRegAccountAuthorizationController *)self delegate];
  [v8 authorizationController:self authorizedAccount:v7];
}

@end