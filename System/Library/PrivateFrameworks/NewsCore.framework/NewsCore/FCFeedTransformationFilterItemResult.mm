@interface FCFeedTransformationFilterItemResult
- (FCFeedTransformationFilterItemResult)initWithItem:(id)a3 filtered:(BOOL)a4 filteredReasons:(unint64_t)a5;
@end

@implementation FCFeedTransformationFilterItemResult

- (FCFeedTransformationFilterItemResult)initWithItem:(id)a3 filtered:(BOOL)a4 filteredReasons:(unint64_t)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = FCFeedTransformationFilterItemResult;
  v10 = [(FCFeedTransformationFilterItemResult *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_item, a3);
    v11->_filtered = a4;
    v11->_filteredReasons = a5;
  }

  return v11;
}

@end