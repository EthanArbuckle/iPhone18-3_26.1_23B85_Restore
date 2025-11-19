@interface MUISearchSuggestionResult
- (MUISearchSuggestionResult)initWithSearchableItem:(id)a3 objectID:(id)a4;
@end

@implementation MUISearchSuggestionResult

- (MUISearchSuggestionResult)initWithSearchableItem:(id)a3 objectID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = MUISearchSuggestionResult;
  v8 = [(MUISearchSuggestionResult *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    searchableItem = v8->_searchableItem;
    v8->_searchableItem = v9;

    v11 = [v7 copy];
    objectID = v8->_objectID;
    v8->_objectID = v11;
  }

  return v8;
}

@end