@interface EMSearchableItemSnippetData
- (EMSearchableItemSnippetData)initWithSearchableItemIdentifier:(id)identifier snippetHints:(id)hints;
@end

@implementation EMSearchableItemSnippetData

- (EMSearchableItemSnippetData)initWithSearchableItemIdentifier:(id)identifier snippetHints:(id)hints
{
  identifierCopy = identifier;
  hintsCopy = hints;
  v14.receiver = self;
  v14.super_class = EMSearchableItemSnippetData;
  v8 = [(EMSearchableItemSnippetData *)&v14 init];
  if (v8)
  {
    v9 = [identifierCopy copy];
    searchableItemIdentifier = v8->_searchableItemIdentifier;
    v8->_searchableItemIdentifier = v9;

    v11 = [hintsCopy copy];
    snippetHints = v8->_snippetHints;
    v8->_snippetHints = v11;
  }

  return v8;
}

@end