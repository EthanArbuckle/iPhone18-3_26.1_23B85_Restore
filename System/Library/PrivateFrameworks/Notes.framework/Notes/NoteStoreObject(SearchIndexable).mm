@interface NoteStoreObject(SearchIndexable)
- (NSString)searchDomainIdentifier;
@end

@implementation NoteStoreObject(SearchIndexable)

- (NSString)searchDomainIdentifier
{
  v3 = +[AccountUtilities sharedAccountUtilities];
  v4 = [v3 accountStore];

  v5 = [(NoteStoreObject *)self account];
  v6 = [v5 accountIdentifier];
  v7 = [v4 accountWithIdentifier:v6];

  v8 = [v7 parentAccount];
  v9 = v8;
  if (!v8)
  {
    v8 = v7;
  }

  v10 = [v8 identifier];

  return v10;
}

@end