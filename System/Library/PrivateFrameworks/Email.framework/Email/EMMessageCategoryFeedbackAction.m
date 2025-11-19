@interface EMMessageCategoryFeedbackAction
- (EMMessageCategoryFeedbackAction)initWithMessageListItems:(id)a3 origin:(int64_t)a4 actor:(int64_t)a5 categoryType:(unint64_t)a6 changeOptions:(unint64_t)a7;
@end

@implementation EMMessageCategoryFeedbackAction

- (EMMessageCategoryFeedbackAction)initWithMessageListItems:(id)a3 origin:(int64_t)a4 actor:(int64_t)a5 categoryType:(unint64_t)a6 changeOptions:(unint64_t)a7
{
  v12 = a3;
  v16.receiver = self;
  v16.super_class = EMMessageCategoryFeedbackAction;
  v13 = [(EMMessageCategoryChangeAction *)&v16 initWithMessageListItems:v12 origin:a4 actor:a5 categoryType:a6 changeOptions:a7];
  v14 = v13;
  if (v13)
  {
    [(EMMessageCategoryChangeAction *)v13 setCategoryType:a6];
  }

  return v14;
}

@end