@interface EMSearchableItemSearchResult
- (EMSearchableItemSearchResult)initWithIdentifiers:(id)identifiers snippetData:(id)data;
@end

@implementation EMSearchableItemSearchResult

- (EMSearchableItemSearchResult)initWithIdentifiers:(id)identifiers snippetData:(id)data
{
  identifiersCopy = identifiers;
  dataCopy = data;
  v12.receiver = self;
  v12.super_class = EMSearchableItemSearchResult;
  v9 = [(EMSearchableItemSearchResult *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifiers, identifiers);
    objc_storeStrong(&v10->_snippetData, data);
  }

  return v10;
}

@end