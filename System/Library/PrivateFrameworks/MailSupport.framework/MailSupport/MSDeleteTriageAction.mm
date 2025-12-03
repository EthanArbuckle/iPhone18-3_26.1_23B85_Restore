@interface MSDeleteTriageAction
- (id)_changeAction;
@end

@implementation MSDeleteTriageAction

- (id)_changeAction
{
  messageListItemSelection = [(MSTriageAction *)self messageListItemSelection];
  isSelectAll = [messageListItemSelection isSelectAll];

  if (isSelectAll)
  {
    v5 = objc_alloc(MEMORY[0x277D06DE0]);
    messageListItemSelection2 = [(MSTriageAction *)self messageListItemSelection];
    mailboxes = [messageListItemSelection2 mailboxes];
    origin = [(MSTriageAction *)self origin];
    actor = [(MSTriageAction *)self actor];
    messageListItemSelection3 = [(MSTriageAction *)self messageListItemSelection];
    messageListItems = [messageListItemSelection3 messageListItems];
    v12 = [v5 initWithMailboxes:mailboxes origin:origin actor:actor messageListItemsToExclude:messageListItems];
  }

  else
  {
    v13 = objc_alloc(MEMORY[0x277D06DD8]);
    messageListItemSelection2 = [(MSTriageAction *)self messageListItemSelection];
    mailboxes = [messageListItemSelection2 messageListItems];
    v12 = [v13 initWithMessageListItems:mailboxes origin:-[MSTriageAction origin](self actor:{"origin"), -[MSTriageAction actor](self, "actor")}];
  }

  return v12;
}

@end