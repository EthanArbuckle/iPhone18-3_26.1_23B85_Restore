@interface CNFRegAccountAuthorizationController
- (CNFRegAccountAuthorizationController)initWithRegController:(id)controller authID:(id)d token:(id)token;
- (id)bagKey;
- (void)cancelTapped;
- (void)completeHandoffWithStatus:(int)status appleID:(id)d authID:(id)iD authToken:(id)token;
- (void)dealloc;
@end

@implementation CNFRegAccountAuthorizationController

- (CNFRegAccountAuthorizationController)initWithRegController:(id)controller authID:(id)d token:(id)token
{
  dCopy = d;
  tokenCopy = token;
  v13.receiver = self;
  v13.super_class = CNFRegAccountAuthorizationController;
  v10 = [(CNFRegAccountWebViewController *)&v13 initWithRegController:controller];
  v11 = v10;
  if (v10)
  {
    [(CNFRegAccountAuthorizationController *)v10 setAuthID:dCopy];
    [(CNFRegAccountAuthorizationController *)v11 setAuthToken:tokenCopy];
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
  regController = [(CNFRegServerWebViewController *)self regController];
  serviceType = [regController serviceType];

  if (serviceType == 1)
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
  delegate = [(CNFRegAccountAuthorizationController *)self delegate];
  [delegate authorizationController:self authorizedAccount:0];
}

- (void)completeHandoffWithStatus:(int)status appleID:(id)d authID:(id)iD authToken:(id)token
{
  v7 = status == 0;
  delegate = [(CNFRegAccountAuthorizationController *)self delegate];
  [delegate authorizationController:self authorizedAccount:v7];
}

@end