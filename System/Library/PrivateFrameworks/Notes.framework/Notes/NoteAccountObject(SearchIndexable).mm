@interface NoteAccountObject(SearchIndexable)
- (NSString)searchDomainIdentifier;
@end

@implementation NoteAccountObject(SearchIndexable)

- (NSString)searchDomainIdentifier
{
  v3 = +[AccountUtilities sharedAccountUtilities];
  accountStore = [v3 accountStore];

  accountIdentifier = [(NoteAccountObject *)self accountIdentifier];
  v6 = [accountStore accountWithIdentifier:accountIdentifier];

  parentAccount = [v6 parentAccount];
  v8 = parentAccount;
  if (!parentAccount)
  {
    parentAccount = v6;
  }

  identifier = [parentAccount identifier];

  return identifier;
}

@end