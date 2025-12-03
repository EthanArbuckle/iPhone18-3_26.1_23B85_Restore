@interface NNMKSyncedAccount
- (NNMKSyncedAccount)init;
- (NNMKSyncedAccount)initWithAccount:(id)account;
- (id)account;
@end

@implementation NNMKSyncedAccount

- (NNMKSyncedAccount)initWithAccount:(id)account
{
  accountCopy = account;
  v5 = [(NNMKSyncedAccount *)self init];
  if (v5)
  {
    accountId = [accountCopy accountId];
    accountId = v5->_accountId;
    v5->_accountId = accountId;

    displayName = [accountCopy displayName];
    displayName = v5->_displayName;
    v5->_displayName = displayName;

    v5->_shouldArchive = [accountCopy shouldArchive];
    emailAddresses = [accountCopy emailAddresses];
    v11 = [emailAddresses copy];
    emailAddresses = v5->_emailAddresses;
    v5->_emailAddresses = v11;

    defaultEmailAddress = [accountCopy defaultEmailAddress];
    defaultEmailAddress = v5->_defaultEmailAddress;
    v5->_defaultEmailAddress = defaultEmailAddress;

    username = [accountCopy username];
    username = v5->_username;
    v5->_username = username;

    localId = [accountCopy localId];
    localId = v5->_localId;
    v5->_localId = localId;

    typeIdentifier = [accountCopy typeIdentifier];
    typeIdentifier = v5->_typeIdentifier;
    v5->_typeIdentifier = typeIdentifier;

    emailAddressToken = [accountCopy emailAddressToken];
    emailAddressToken = v5->_emailAddressToken;
    v5->_emailAddressToken = emailAddressToken;

    pccEmailAddress = [accountCopy pccEmailAddress];
    pccEmailAddress = v5->_pccEmailAddress;
    v5->_pccEmailAddress = pccEmailAddress;
  }

  return v5;
}

- (NNMKSyncedAccount)init
{
  v8.receiver = self;
  v8.super_class = NNMKSyncedAccount;
  v2 = [(NNMKSyncedAccount *)&v8 init];
  v3 = v2;
  if (v2)
  {
    accountId = v2->_accountId;
    v2->_accountId = 0;

    displayName = v3->_displayName;
    v3->_displayName = 0;

    v3->_shouldArchive = 0;
    emailAddresses = v3->_emailAddresses;
    v3->_emailAddresses = 0;
  }

  return v3;
}

- (id)account
{
  v3 = objc_alloc_init(NNMKAccount);
  accountId = [(NNMKSyncedAccount *)self accountId];
  [(NNMKAccount *)v3 setAccountId:accountId];

  localId = [(NNMKSyncedAccount *)self localId];
  [(NNMKAccount *)v3 setLocalId:localId];

  displayName = [(NNMKSyncedAccount *)self displayName];
  [(NNMKAccount *)v3 setDisplayName:displayName];

  [(NNMKAccount *)v3 setShouldArchive:[(NNMKSyncedAccount *)self shouldArchive]];
  emailAddresses = [(NNMKSyncedAccount *)self emailAddresses];
  [(NNMKAccount *)v3 setEmailAddresses:emailAddresses];

  defaultEmailAddress = [(NNMKSyncedAccount *)self defaultEmailAddress];
  [(NNMKAccount *)v3 setDefaultEmailAddress:defaultEmailAddress];

  [(NNMKAccount *)v3 setSourceType:[(NNMKSyncedAccount *)self sourceType]];
  username = [(NNMKSyncedAccount *)self username];
  [(NNMKAccount *)v3 setUsername:username];

  typeIdentifier = [(NNMKSyncedAccount *)self typeIdentifier];
  [(NNMKAccount *)v3 setTypeIdentifier:typeIdentifier];

  emailAddressToken = [(NNMKSyncedAccount *)self emailAddressToken];
  [(NNMKAccount *)v3 setEmailAddressToken:emailAddressToken];

  pccEmailAddress = [(NNMKSyncedAccount *)self pccEmailAddress];
  [(NNMKAccount *)v3 setPccEmailAddress:pccEmailAddress];

  return v3;
}

@end