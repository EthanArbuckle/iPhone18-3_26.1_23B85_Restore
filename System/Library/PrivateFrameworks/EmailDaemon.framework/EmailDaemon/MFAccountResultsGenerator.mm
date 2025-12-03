@interface MFAccountResultsGenerator
+ (id)resultsDictionaryFromAccount:(id)account forKeys:(id)keys;
- (id)_accountReference:(id)reference;
- (id)_canFetch:(id)fetch;
- (id)_defaultAddress:(id)address;
- (id)_displayName:(id)name;
- (id)_emailAddresses:(id)addresses;
- (id)_emailAddressesAndAliases:(id)aliases;
- (id)_fromEmailAddresses:(id)addresses;
- (id)_fromEmailAddressesIncludingDisabled:(id)disabled;
- (id)_fullUserName:(id)name;
- (id)_isActive:(id)active;
- (id)_isDefaultSendingAccount:(id)account;
- (id)_isManaged:(id)managed;
- (id)_pcStyle:(id)style;
- (id)_restrictedFromMailDrop:(id)drop;
- (id)_restrictedFromSendingExternally:(id)externally;
- (id)_restrictedFromSyncingRecents:(id)recents;
- (id)_restrictsRepliesAndForwards:(id)forwards;
- (id)_supportsMailDrop:(id)drop;
- (id)_supportsThreadOperations:(id)operations;
- (id)_syncsReadState:(id)state;
- (id)_username:(id)_username;
- (id)blockForKey:(id)key;
@end

@implementation MFAccountResultsGenerator

+ (id)resultsDictionaryFromAccount:(id)account forKeys:(id)keys
{
  accountCopy = account;
  keysCopy = keys;
  v7 = [(_MFResultsGenerator *)[MFAccountResultsGenerator alloc] initWithKeys:keysCopy];
  [(MFAccountResultsGenerator *)v7 setAccount:accountCopy];
  results = [(_MFResultsGenerator *)v7 results];

  return results;
}

- (id)blockForKey:(id)key
{
  keyCopy = key;
  if (qword_100185778 != -1)
  {
    sub_1000D3B74();
  }

  v4 = [qword_100185770 objectForKeyedSubscript:keyCopy];

  return v4;
}

- (id)_accountReference:(id)reference
{
  uniqueID = [(MailAccount *)self->_account uniqueID];

  return uniqueID;
}

- (id)_displayName:(id)name
{
  displayName = [(MailAccount *)self->_account displayName];

  return displayName;
}

- (id)_fullUserName:(id)name
{
  fullUserName = [(MailAccount *)self->_account fullUserName];

  return fullUserName;
}

- (id)_username:(id)_username
{
  username = [(MailAccount *)self->_account username];

  return username;
}

- (id)_emailAddresses:(id)addresses
{
  emailAddressStrings = [(MailAccount *)self->_account emailAddressStrings];

  return emailAddressStrings;
}

- (id)_emailAddressesAndAliases:(id)aliases
{
  emailAddressesAndAliasesList = [(MailAccount *)self->_account emailAddressesAndAliasesList];

  return emailAddressesAndAliasesList;
}

- (id)_fromEmailAddresses:(id)addresses
{
  fromEmailAddresses = [(MailAccount *)self->_account fromEmailAddresses];

  return fromEmailAddresses;
}

- (id)_fromEmailAddressesIncludingDisabled:(id)disabled
{
  fromEmailAddressesIncludingDisabled = [(MailAccount *)self->_account fromEmailAddressesIncludingDisabled];

  return fromEmailAddressesIncludingDisabled;
}

- (id)_defaultAddress:(id)address
{
  defaultEmailAddress = [(MailAccount *)self->_account defaultEmailAddress];

  return defaultEmailAddress;
}

- (id)_isActive:(id)active
{
  isActive = [(MailAccount *)self->_account isActive];
  v4 = &kCFBooleanTrue;
  if (!isActive)
  {
    v4 = &kCFBooleanFalse;
  }

  v5 = *v4;

  return v5;
}

- (id)_isDefaultSendingAccount:(id)account
{
  v4 = +[MailAccount defaultMailAccountForDelivery];
  if (v4 == self->_account)
  {
    v5 = &kCFBooleanTrue;
  }

  else
  {
    v5 = &kCFBooleanFalse;
  }

  v6 = *v5;
  v7 = *v5;

  return v6;
}

- (id)_restrictsRepliesAndForwards:(id)forwards
{
  restrictedFromTransferingMessagesToOtherAccounts = [(MailAccount *)self->_account restrictedFromTransferingMessagesToOtherAccounts];
  v4 = &kCFBooleanTrue;
  if (!restrictedFromTransferingMessagesToOtherAccounts)
  {
    v4 = &kCFBooleanFalse;
  }

  v5 = *v4;

  return v5;
}

- (id)_restrictedFromSendingExternally:(id)externally
{
  restrictedFromSendingExternally = [(MailAccount *)self->_account restrictedFromSendingExternally];
  v4 = &kCFBooleanTrue;
  if (!restrictedFromSendingExternally)
  {
    v4 = &kCFBooleanFalse;
  }

  v5 = *v4;

  return v5;
}

- (id)_supportsMailDrop:(id)drop
{
  v3 = [NSNumber numberWithBool:[(MailAccount *)self->_account supportsMailDrop]];

  return v3;
}

- (id)_isManaged:(id)managed
{
  v3 = [NSNumber numberWithBool:[(MailAccount *)self->_account isManaged]];

  return v3;
}

- (id)_canFetch:(id)fetch
{
  v3 = [NSNumber numberWithBool:[(MailAccount *)self->_account canFetch]];

  return v3;
}

- (id)_pcStyle:(id)style
{
  [(MailAccount *)self->_account uniqueIdForPersistentConnection];
  v3 = [NSNumber numberWithUnsignedInt:PCSettingsGetStyle()];

  return v3;
}

- (id)_restrictedFromMailDrop:(id)drop
{
  v3 = [NSNumber numberWithInt:[(MailAccount *)self->_account supportsMailDrop]^ 1];

  return v3;
}

- (id)_supportsThreadOperations:(id)operations
{
  supportsThreadOperations = [(MailAccount *)self->_account supportsThreadOperations];
  v4 = &kCFBooleanTrue;
  if (!supportsThreadOperations)
  {
    v4 = &kCFBooleanFalse;
  }

  v5 = *v4;

  return v5;
}

- (id)_syncsReadState:(id)state
{
  v3 = [NSNumber numberWithBool:[(MailAccount *)self->_account supportsSyncingReadState]];

  return v3;
}

- (id)_restrictedFromSyncingRecents:(id)recents
{
  v3 = [NSNumber numberWithBool:[(MailAccount *)self->_account restrictedFromSyncingRecents]];

  return v3;
}

@end