@interface MFMailAccountsProviderState
- (id)initFromProvider:(id)provider;
@end

@implementation MFMailAccountsProviderState

- (id)initFromProvider:(id)provider
{
  providerCopy = provider;
  v16.receiver = self;
  v16.super_class = MFMailAccountsProviderState;
  v5 = [(MFMailAccountsProviderState *)&v16 init];
  if (v5)
  {
    v5->_numberOfActiveAccounts = [providerCopy numberOfActiveAccounts];
    v5->_numberOfInactiveAccounts = [providerCopy numberOfInactiveAccounts];
    _displayedAccountsIdentifiers = [providerCopy _displayedAccountsIdentifiers];
    v7 = [_displayedAccountsIdentifiers copy];
    displayedAccountsIdentifiers = v5->_displayedAccountsIdentifiers;
    v5->_displayedAccountsIdentifiers = v7;

    _focusedAccountsIdentifiers = [providerCopy _focusedAccountsIdentifiers];
    v10 = [_focusedAccountsIdentifiers copy];
    focusedAccountsIdentifiers = v5->_focusedAccountsIdentifiers;
    v5->_focusedAccountsIdentifiers = v10;

    mailAccounts = [providerCopy mailAccounts];
    v13 = [mailAccounts copy];
    mailAccounts = v5->_mailAccounts;
    v5->_mailAccounts = v13;
  }

  return v5;
}

@end