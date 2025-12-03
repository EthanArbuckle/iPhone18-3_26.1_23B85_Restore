@interface MSFlagChangeTriageAction
- (BOOL)shouldOverrideFlagState;
- (MSFlagChangeTriageAction)initWithMessageListSelection:(id)selection origin:(int64_t)origin actor:(int64_t)actor delegate:(id)delegate reason:(int64_t)reason;
- (MSFlagChangeTriageAction)initWithQuery:(id)query origin:(int64_t)origin actor:(int64_t)actor delegate:(id)delegate reason:(int64_t)reason;
- (id)_changeAction;
- (void)_toggleFlagWithBuilder:(id)builder;
@end

@implementation MSFlagChangeTriageAction

- (MSFlagChangeTriageAction)initWithQuery:(id)query origin:(int64_t)origin actor:(int64_t)actor delegate:(id)delegate reason:(int64_t)reason
{
  v9.receiver = self;
  v9.super_class = MSFlagChangeTriageAction;
  result = [(MSTriageAction *)&v9 initWithQuery:query origin:origin actor:actor delegate:delegate];
  if (result)
  {
    result->_reason = reason;
  }

  return result;
}

- (MSFlagChangeTriageAction)initWithMessageListSelection:(id)selection origin:(int64_t)origin actor:(int64_t)actor delegate:(id)delegate reason:(int64_t)reason
{
  v9.receiver = self;
  v9.super_class = MSFlagChangeTriageAction;
  result = [(MSTriageAction *)&v9 initWithMessageListSelection:selection origin:origin actor:actor delegate:delegate];
  if (result)
  {
    result->_reason = reason;
  }

  return result;
}

- (void)_toggleFlagWithBuilder:(id)builder
{
  builderCopy = builder;
  [(MSFlagChangeTriageAction *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[MSFlagChangeTriageAction _toggleFlagWithBuilder:]", "MSFlagChangeTriageAction.m", 38, "0");
}

- (BOOL)shouldOverrideFlagState
{
  messageListItemSelection = [(MSTriageAction *)self messageListItemSelection];
  if ([messageListItemSelection isSelectAll])
  {
    v4 = 1;
  }

  else
  {
    messageListItemSelection2 = [(MSTriageAction *)self messageListItemSelection];
    if ([messageListItemSelection2 isActingOnSender])
    {
      v4 = 1;
    }

    else
    {
      query = [(MSTriageAction *)self query];
      v4 = query != 0;
    }
  }

  return v4;
}

- (id)_changeAction
{
  v3 = objc_alloc(MEMORY[0x277D070C8]);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __41__MSFlagChangeTriageAction__changeAction__block_invoke;
  v17[3] = &unk_27985B590;
  v17[4] = self;
  v4 = [v3 initWithBuilder:v17];
  messageListItemSelection = [(MSTriageAction *)self messageListItemSelection];
  isSelectAll = [messageListItemSelection isSelectAll];

  if (isSelectAll)
  {
    v7 = objc_alloc(MEMORY[0x277D06DF0]);
    messageListItemSelection2 = [(MSTriageAction *)self messageListItemSelection];
    mailboxes = [messageListItemSelection2 mailboxes];
    messageListItemSelection3 = [(MSTriageAction *)self messageListItemSelection];
    messageListItems = [messageListItemSelection3 messageListItems];
    v12 = [v7 initWithMailboxes:mailboxes messageListItemsToExclude:messageListItems flagChange:v4 origin:-[MSTriageAction origin](self actor:{"origin"), -[MSTriageAction actor](self, "actor")}];
  }

  else
  {
    query = [(MSTriageAction *)self query];

    if (query)
    {
      v14 = objc_alloc(MEMORY[0x277D06DE8]);
      messageListItemSelection2 = [(MSTriageAction *)self query];
      v12 = [v14 initWithQuery:messageListItemSelection2 origin:-[MSTriageAction origin](self actor:"origin") flagChange:{-[MSTriageAction actor](self, "actor"), v4}];
      goto LABEL_7;
    }

    v15 = objc_alloc(MEMORY[0x277D06DE8]);
    messageListItemSelection2 = [(MSTriageAction *)self messageListItemSelection];
    mailboxes = [messageListItemSelection2 messageListItems];
    v12 = [v15 initWithMessageListItems:mailboxes origin:-[MSTriageAction origin](self actor:"origin") flagChange:{-[MSTriageAction actor](self, "actor"), v4}];
  }

LABEL_7:

  return v12;
}

void __41__MSFlagChangeTriageAction__changeAction__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setReason:{objc_msgSend(*(a1 + 32), "reason")}];
  [*(a1 + 32) _toggleFlagWithBuilder:v3];
}

@end