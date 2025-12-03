@interface DAContactsBasedAccount
- (DAContactsBasedAccount)initWithAccount:(id)account;
- (id)externalIdentifier;
- (id)identifier;
- (int)legacyIdentifier;
- (void)updateSaveRequest:(id)request;
@end

@implementation DAContactsBasedAccount

- (DAContactsBasedAccount)initWithAccount:(id)account
{
  accountCopy = account;
  v9.receiver = self;
  v9.super_class = DAContactsBasedAccount;
  v6 = [(DAContactsBasedAccount *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_account, account);
  }

  return v7;
}

- (int)legacyIdentifier
{
  account = [(DAContactsBasedAccount *)self account];
  iOSLegacyIdentifier = [account iOSLegacyIdentifier];

  return iOSLegacyIdentifier;
}

- (id)identifier
{
  account = [(DAContactsBasedAccount *)self account];
  identifier = [account identifier];

  return identifier;
}

- (id)externalIdentifier
{
  account = [(DAContactsBasedAccount *)self account];
  externalIdentifierString = [account externalIdentifierString];

  return externalIdentifierString;
}

- (void)updateSaveRequest:(id)request
{
  requestCopy = request;
  markedForDeletion = [(DAContactsBasedAccount *)self markedForDeletion];
  account = [(DAContactsBasedAccount *)self account];
  account2 = account;
  if (markedForDeletion)
  {
    [requestCopy removeAccount:account];
  }

  else
  {
    iOSLegacyIdentifier = [account iOSLegacyIdentifier];

    if (iOSLegacyIdentifier != -1)
    {
      goto LABEL_6;
    }

    account2 = [(DAContactsBasedAccount *)self account];
    [requestCopy addAccount:account2];
  }

LABEL_6:
}

@end