@interface EMMessageRestoreModelCategoryForAllMessagesChangeAction
- (EMMessageRestoreModelCategoryForAllMessagesChangeAction)initWithOrigin:(int64_t)origin actor:(int64_t)actor;
@end

@implementation EMMessageRestoreModelCategoryForAllMessagesChangeAction

- (EMMessageRestoreModelCategoryForAllMessagesChangeAction)initWithOrigin:(int64_t)origin actor:(int64_t)actor
{
  v5.receiver = self;
  v5.super_class = EMMessageRestoreModelCategoryForAllMessagesChangeAction;
  return [(EMMessageChangeAction *)&v5 initWithMessageListItems:0 origin:origin actor:actor];
}

@end