@interface CNFRegCreateAccountController
- (id)bagKey;
- (void)cancelTapped;
- (void)completeHandoffWithStatus:(int)status appleID:(id)d authID:(id)iD authToken:(id)token;
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
  regController = [(CNFRegServerWebViewController *)self regController];
  serviceType = [regController serviceType];

  if (serviceType == 1)
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
  delegate = [(CNFRegCreateAccountController *)self delegate];
  [delegate createAccountControllerDidFinish:self withAppleId:0 authID:0 authToken:0];
}

- (void)completeHandoffWithStatus:(int)status appleID:(id)d authID:(id)iD authToken:(id)token
{
  tokenCopy = token;
  iDCopy = iD;
  dCopy = d;
  delegate = [(CNFRegCreateAccountController *)self delegate];
  [delegate createAccountControllerDidFinish:self withAppleId:dCopy authID:iDCopy authToken:tokenCopy];
}

@end