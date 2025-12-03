@interface FCFeedTransformationFilterItemResult
- (FCFeedTransformationFilterItemResult)initWithItem:(id)item filtered:(BOOL)filtered filteredReasons:(unint64_t)reasons;
@end

@implementation FCFeedTransformationFilterItemResult

- (FCFeedTransformationFilterItemResult)initWithItem:(id)item filtered:(BOOL)filtered filteredReasons:(unint64_t)reasons
{
  itemCopy = item;
  v13.receiver = self;
  v13.super_class = FCFeedTransformationFilterItemResult;
  v10 = [(FCFeedTransformationFilterItemResult *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_item, item);
    v11->_filtered = filtered;
    v11->_filteredReasons = reasons;
  }

  return v11;
}

@end