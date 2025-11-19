@interface MSRestoreModelCategoryForAllMessagesTriageAction
- (MSRestoreModelCategoryForAllMessagesTriageAction)initWithMessageRepository:(id)a3 origin:(int64_t)a4 actor:(int64_t)a5;
- (id)_changeAction;
@end

@implementation MSRestoreModelCategoryForAllMessagesTriageAction

- (MSRestoreModelCategoryForAllMessagesTriageAction)initWithMessageRepository:(id)a3 origin:(int64_t)a4 actor:(int64_t)a5
{
  v8 = a3;
  [(MSRestoreModelCategoryForAllMessagesTriageAction *)self setMessageRepository:v8];
  v11.receiver = self;
  v11.super_class = MSRestoreModelCategoryForAllMessagesTriageAction;
  v9 = [(MSTriageAction *)&v11 initWithOrigin:a4 actor:a5];

  return v9;
}

- (id)_changeAction
{
  v2 = [objc_alloc(MEMORY[0x277D06E30]) initWithOrigin:-[MSTriageAction origin](self actor:{"origin"), -[MSTriageAction actor](self, "actor")}];

  return v2;
}

@end