@interface SGSuggestionCategoryList
- (SGSuggestionCategoryList)init;
@end

@implementation SGSuggestionCategoryList

- (SGSuggestionCategoryList)init
{
  v6.receiver = self;
  v6.super_class = SGSuggestionCategoryList;
  v2 = [(SGSuggestionCategoryList *)&v6 init];
  v3 = v2;
  if (v2)
  {
    listTitle = v2->_listTitle;
    v2->_listTitle = 0;

    v3->_supportsDismissAll = 0;
  }

  return v3;
}

@end