@interface NNMKSyncedAccount
- (NNMKSyncedAccount)init;
- (NNMKSyncedAccount)initWithAccount:(id)a3;
- (id)account;
@end

@implementation NNMKSyncedAccount

- (NNMKSyncedAccount)initWithAccount:(id)a3
{
  v4 = a3;
  v5 = [(NNMKSyncedAccount *)self init];
  if (v5)
  {
    v6 = [v4 accountId];
    accountId = v5->_accountId;
    v5->_accountId = v6;

    v8 = [v4 displayName];
    displayName = v5->_displayName;
    v5->_displayName = v8;

    v5->_shouldArchive = [v4 shouldArchive];
    v10 = [v4 emailAddresses];
    v11 = [v10 copy];
    emailAddresses = v5->_emailAddresses;
    v5->_emailAddresses = v11;

    v13 = [v4 defaultEmailAddress];
    defaultEmailAddress = v5->_defaultEmailAddress;
    v5->_defaultEmailAddress = v13;

    v15 = [v4 username];
    username = v5->_username;
    v5->_username = v15;

    v17 = [v4 localId];
    localId = v5->_localId;
    v5->_localId = v17;

    v19 = [v4 typeIdentifier];
    typeIdentifier = v5->_typeIdentifier;
    v5->_typeIdentifier = v19;

    v21 = [v4 emailAddressToken];
    emailAddressToken = v5->_emailAddressToken;
    v5->_emailAddressToken = v21;

    v23 = [v4 pccEmailAddress];
    pccEmailAddress = v5->_pccEmailAddress;
    v5->_pccEmailAddress = v23;
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
  v4 = [(NNMKSyncedAccount *)self accountId];
  [(NNMKAccount *)v3 setAccountId:v4];

  v5 = [(NNMKSyncedAccount *)self localId];
  [(NNMKAccount *)v3 setLocalId:v5];

  v6 = [(NNMKSyncedAccount *)self displayName];
  [(NNMKAccount *)v3 setDisplayName:v6];

  [(NNMKAccount *)v3 setShouldArchive:[(NNMKSyncedAccount *)self shouldArchive]];
  v7 = [(NNMKSyncedAccount *)self emailAddresses];
  [(NNMKAccount *)v3 setEmailAddresses:v7];

  v8 = [(NNMKSyncedAccount *)self defaultEmailAddress];
  [(NNMKAccount *)v3 setDefaultEmailAddress:v8];

  [(NNMKAccount *)v3 setSourceType:[(NNMKSyncedAccount *)self sourceType]];
  v9 = [(NNMKSyncedAccount *)self username];
  [(NNMKAccount *)v3 setUsername:v9];

  v10 = [(NNMKSyncedAccount *)self typeIdentifier];
  [(NNMKAccount *)v3 setTypeIdentifier:v10];

  v11 = [(NNMKSyncedAccount *)self emailAddressToken];
  [(NNMKAccount *)v3 setEmailAddressToken:v11];

  v12 = [(NNMKSyncedAccount *)self pccEmailAddress];
  [(NNMKAccount *)v3 setPccEmailAddress:v12];

  return v3;
}

@end