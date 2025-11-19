@interface EMMessageRestoreModelCategoryForAllMessagesChangeAction
- (EMMessageRestoreModelCategoryForAllMessagesChangeAction)initWithOrigin:(int64_t)a3 actor:(int64_t)a4;
@end

@implementation EMMessageRestoreModelCategoryForAllMessagesChangeAction

- (EMMessageRestoreModelCategoryForAllMessagesChangeAction)initWithOrigin:(int64_t)a3 actor:(int64_t)a4
{
  v5.receiver = self;
  v5.super_class = EMMessageRestoreModelCategoryForAllMessagesChangeAction;
  return [(EMMessageChangeAction *)&v5 initWithMessageListItems:0 origin:a3 actor:a4];
}

@end