@interface MSDeleteTriageAction
- (id)_changeAction;
@end

@implementation MSDeleteTriageAction

- (id)_changeAction
{
  v3 = [(MSTriageAction *)self messageListItemSelection];
  v4 = [v3 isSelectAll];

  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x277D06DE0]);
    v6 = [(MSTriageAction *)self messageListItemSelection];
    v7 = [v6 mailboxes];
    v8 = [(MSTriageAction *)self origin];
    v9 = [(MSTriageAction *)self actor];
    v10 = [(MSTriageAction *)self messageListItemSelection];
    v11 = [v10 messageListItems];
    v12 = [v5 initWithMailboxes:v7 origin:v8 actor:v9 messageListItemsToExclude:v11];
  }

  else
  {
    v13 = objc_alloc(MEMORY[0x277D06DD8]);
    v6 = [(MSTriageAction *)self messageListItemSelection];
    v7 = [v6 messageListItems];
    v12 = [v13 initWithMessageListItems:v7 origin:-[MSTriageAction origin](self actor:{"origin"), -[MSTriageAction actor](self, "actor")}];
  }

  return v12;
}

@end