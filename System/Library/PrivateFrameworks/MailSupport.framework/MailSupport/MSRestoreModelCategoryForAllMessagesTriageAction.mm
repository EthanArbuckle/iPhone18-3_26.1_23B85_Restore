@interface MSRestoreModelCategoryForAllMessagesTriageAction
- (MSRestoreModelCategoryForAllMessagesTriageAction)initWithMessageRepository:(id)repository origin:(int64_t)origin actor:(int64_t)actor;
- (id)_changeAction;
@end

@implementation MSRestoreModelCategoryForAllMessagesTriageAction

- (MSRestoreModelCategoryForAllMessagesTriageAction)initWithMessageRepository:(id)repository origin:(int64_t)origin actor:(int64_t)actor
{
  repositoryCopy = repository;
  [(MSRestoreModelCategoryForAllMessagesTriageAction *)self setMessageRepository:repositoryCopy];
  v11.receiver = self;
  v11.super_class = MSRestoreModelCategoryForAllMessagesTriageAction;
  v9 = [(MSTriageAction *)&v11 initWithOrigin:origin actor:actor];

  return v9;
}

- (id)_changeAction
{
  v2 = [objc_alloc(MEMORY[0x277D06E30]) initWithOrigin:-[MSTriageAction origin](self actor:{"origin"), -[MSTriageAction actor](self, "actor")}];

  return v2;
}

@end