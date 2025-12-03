@interface CNFRegViewAccountController
- (id)bagKey;
- (void)cancelTapped;
- (void)completeHandoffWithStatus:(int)status appleID:(id)d authID:(id)iD authToken:(id)token;
- (void)dealloc;
@end

@implementation CNFRegViewAccountController

- (void)dealloc
{
  self->_delegate = 0;
  v2.receiver = self;
  v2.super_class = CNFRegViewAccountController;
  [(CNFRegAccountWebViewController *)&v2 dealloc];
}

- (id)bagKey
{
  regController = [(CNFRegServerWebViewController *)self regController];
  serviceType = [regController serviceType];

  if (serviceType == 1)
  {
    return @"md-profile-edit-page";
  }

  else
  {
    return @"vc-profile-edit-page";
  }
}

- (void)cancelTapped
{
  delegate = [(CNFRegViewAccountController *)self delegate];
  [delegate viewAccountControllerDidFinish:self withAppleId:0];
}

- (void)completeHandoffWithStatus:(int)status appleID:(id)d authID:(id)iD authToken:(id)token
{
  dCopy = d;
  delegate = [(CNFRegViewAccountController *)self delegate];
  [delegate viewAccountControllerDidFinish:self withAppleId:dCopy];
}

@end