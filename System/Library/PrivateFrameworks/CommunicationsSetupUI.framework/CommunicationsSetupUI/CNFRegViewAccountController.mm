@interface CNFRegViewAccountController
- (id)bagKey;
- (void)cancelTapped;
- (void)completeHandoffWithStatus:(int)a3 appleID:(id)a4 authID:(id)a5 authToken:(id)a6;
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
  v2 = [(CNFRegServerWebViewController *)self regController];
  v3 = [v2 serviceType];

  if (v3 == 1)
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
  v3 = [(CNFRegViewAccountController *)self delegate];
  [v3 viewAccountControllerDidFinish:self withAppleId:0];
}

- (void)completeHandoffWithStatus:(int)a3 appleID:(id)a4 authID:(id)a5 authToken:(id)a6
{
  v7 = a4;
  v8 = [(CNFRegViewAccountController *)self delegate];
  [v8 viewAccountControllerDidFinish:self withAppleId:v7];
}

@end