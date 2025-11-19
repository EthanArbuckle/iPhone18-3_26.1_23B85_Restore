@interface DAContactsBasedAccount
- (DAContactsBasedAccount)initWithAccount:(id)a3;
- (id)externalIdentifier;
- (id)identifier;
- (int)legacyIdentifier;
- (void)updateSaveRequest:(id)a3;
@end

@implementation DAContactsBasedAccount

- (DAContactsBasedAccount)initWithAccount:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = DAContactsBasedAccount;
  v6 = [(DAContactsBasedAccount *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_account, a3);
  }

  return v7;
}

- (int)legacyIdentifier
{
  v2 = [(DAContactsBasedAccount *)self account];
  v3 = [v2 iOSLegacyIdentifier];

  return v3;
}

- (id)identifier
{
  v2 = [(DAContactsBasedAccount *)self account];
  v3 = [v2 identifier];

  return v3;
}

- (id)externalIdentifier
{
  v2 = [(DAContactsBasedAccount *)self account];
  v3 = [v2 externalIdentifierString];

  return v3;
}

- (void)updateSaveRequest:(id)a3
{
  v8 = a3;
  v4 = [(DAContactsBasedAccount *)self markedForDeletion];
  v5 = [(DAContactsBasedAccount *)self account];
  v6 = v5;
  if (v4)
  {
    [v8 removeAccount:v5];
  }

  else
  {
    v7 = [v5 iOSLegacyIdentifier];

    if (v7 != -1)
    {
      goto LABEL_6;
    }

    v6 = [(DAContactsBasedAccount *)self account];
    [v8 addAccount:v6];
  }

LABEL_6:
}

@end