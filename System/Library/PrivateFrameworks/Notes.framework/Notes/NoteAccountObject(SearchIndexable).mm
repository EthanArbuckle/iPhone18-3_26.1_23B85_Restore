@interface NoteAccountObject(SearchIndexable)
- (NSString)searchDomainIdentifier;
@end

@implementation NoteAccountObject(SearchIndexable)

- (NSString)searchDomainIdentifier
{
  v3 = +[AccountUtilities sharedAccountUtilities];
  v4 = [v3 accountStore];

  v5 = [(NoteAccountObject *)self accountIdentifier];
  v6 = [v4 accountWithIdentifier:v5];

  v7 = [v6 parentAccount];
  v8 = v7;
  if (!v7)
  {
    v7 = v6;
  }

  v9 = [v7 identifier];

  return v9;
}

@end