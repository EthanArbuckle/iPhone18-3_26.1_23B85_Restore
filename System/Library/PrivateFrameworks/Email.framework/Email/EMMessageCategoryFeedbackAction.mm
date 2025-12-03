@interface EMMessageCategoryFeedbackAction
- (EMMessageCategoryFeedbackAction)initWithMessageListItems:(id)items origin:(int64_t)origin actor:(int64_t)actor categoryType:(unint64_t)type changeOptions:(unint64_t)options;
@end

@implementation EMMessageCategoryFeedbackAction

- (EMMessageCategoryFeedbackAction)initWithMessageListItems:(id)items origin:(int64_t)origin actor:(int64_t)actor categoryType:(unint64_t)type changeOptions:(unint64_t)options
{
  itemsCopy = items;
  v16.receiver = self;
  v16.super_class = EMMessageCategoryFeedbackAction;
  v13 = [(EMMessageCategoryChangeAction *)&v16 initWithMessageListItems:itemsCopy origin:origin actor:actor categoryType:type changeOptions:options];
  v14 = v13;
  if (v13)
  {
    [(EMMessageCategoryChangeAction *)v13 setCategoryType:type];
  }

  return v14;
}

@end