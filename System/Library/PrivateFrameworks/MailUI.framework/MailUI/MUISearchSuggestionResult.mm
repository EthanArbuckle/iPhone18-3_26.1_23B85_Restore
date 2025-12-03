@interface MUISearchSuggestionResult
- (MUISearchSuggestionResult)initWithSearchableItem:(id)item objectID:(id)d;
@end

@implementation MUISearchSuggestionResult

- (MUISearchSuggestionResult)initWithSearchableItem:(id)item objectID:(id)d
{
  itemCopy = item;
  dCopy = d;
  v14.receiver = self;
  v14.super_class = MUISearchSuggestionResult;
  v8 = [(MUISearchSuggestionResult *)&v14 init];
  if (v8)
  {
    v9 = [itemCopy copy];
    searchableItem = v8->_searchableItem;
    v8->_searchableItem = v9;

    v11 = [dCopy copy];
    objectID = v8->_objectID;
    v8->_objectID = v11;
  }

  return v8;
}

@end