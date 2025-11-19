@interface EMSearchableItemSnippetData
- (EMSearchableItemSnippetData)initWithSearchableItemIdentifier:(id)a3 snippetHints:(id)a4;
@end

@implementation EMSearchableItemSnippetData

- (EMSearchableItemSnippetData)initWithSearchableItemIdentifier:(id)a3 snippetHints:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = EMSearchableItemSnippetData;
  v8 = [(EMSearchableItemSnippetData *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    searchableItemIdentifier = v8->_searchableItemIdentifier;
    v8->_searchableItemIdentifier = v9;

    v11 = [v7 copy];
    snippetHints = v8->_snippetHints;
    v8->_snippetHints = v11;
  }

  return v8;
}

@end