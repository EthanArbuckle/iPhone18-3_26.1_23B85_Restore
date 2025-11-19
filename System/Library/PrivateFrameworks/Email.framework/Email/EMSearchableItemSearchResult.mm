@interface EMSearchableItemSearchResult
- (EMSearchableItemSearchResult)initWithIdentifiers:(id)a3 snippetData:(id)a4;
@end

@implementation EMSearchableItemSearchResult

- (EMSearchableItemSearchResult)initWithIdentifiers:(id)a3 snippetData:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = EMSearchableItemSearchResult;
  v9 = [(EMSearchableItemSearchResult *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifiers, a3);
    objc_storeStrong(&v10->_snippetData, a4);
  }

  return v10;
}

@end