@interface NoteStoreObject(SearchIndexable)
- (NSString)searchDomainIdentifier;
@end

@implementation NoteStoreObject(SearchIndexable)

- (NSString)searchDomainIdentifier
{
  v3 = +[AccountUtilities sharedAccountUtilities];
  accountStore = [v3 accountStore];

  account = [(NoteStoreObject *)self account];
  accountIdentifier = [account accountIdentifier];
  v7 = [accountStore accountWithIdentifier:accountIdentifier];

  parentAccount = [v7 parentAccount];
  v9 = parentAccount;
  if (!parentAccount)
  {
    parentAccount = v7;
  }

  identifier = [parentAccount identifier];

  return identifier;
}

@end