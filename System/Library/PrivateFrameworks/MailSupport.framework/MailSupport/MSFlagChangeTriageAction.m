@interface MSFlagChangeTriageAction
- (BOOL)shouldOverrideFlagState;
- (MSFlagChangeTriageAction)initWithMessageListSelection:(id)a3 origin:(int64_t)a4 actor:(int64_t)a5 delegate:(id)a6 reason:(int64_t)a7;
- (MSFlagChangeTriageAction)initWithQuery:(id)a3 origin:(int64_t)a4 actor:(int64_t)a5 delegate:(id)a6 reason:(int64_t)a7;
- (id)_changeAction;
- (void)_toggleFlagWithBuilder:(id)a3;
@end

@implementation MSFlagChangeTriageAction

- (MSFlagChangeTriageAction)initWithQuery:(id)a3 origin:(int64_t)a4 actor:(int64_t)a5 delegate:(id)a6 reason:(int64_t)a7
{
  v9.receiver = self;
  v9.super_class = MSFlagChangeTriageAction;
  result = [(MSTriageAction *)&v9 initWithQuery:a3 origin:a4 actor:a5 delegate:a6];
  if (result)
  {
    result->_reason = a7;
  }

  return result;
}

- (MSFlagChangeTriageAction)initWithMessageListSelection:(id)a3 origin:(int64_t)a4 actor:(int64_t)a5 delegate:(id)a6 reason:(int64_t)a7
{
  v9.receiver = self;
  v9.super_class = MSFlagChangeTriageAction;
  result = [(MSTriageAction *)&v9 initWithMessageListSelection:a3 origin:a4 actor:a5 delegate:a6];
  if (result)
  {
    result->_reason = a7;
  }

  return result;
}

- (void)_toggleFlagWithBuilder:(id)a3
{
  v5 = a3;
  [(MSFlagChangeTriageAction *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[MSFlagChangeTriageAction _toggleFlagWithBuilder:]", "MSFlagChangeTriageAction.m", 38, "0");
}

- (BOOL)shouldOverrideFlagState
{
  v3 = [(MSTriageAction *)self messageListItemSelection];
  if ([v3 isSelectAll])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(MSTriageAction *)self messageListItemSelection];
    if ([v5 isActingOnSender])
    {
      v4 = 1;
    }

    else
    {
      v6 = [(MSTriageAction *)self query];
      v4 = v6 != 0;
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
  v5 = [(MSTriageAction *)self messageListItemSelection];
  v6 = [v5 isSelectAll];

  if (v6)
  {
    v7 = objc_alloc(MEMORY[0x277D06DF0]);
    v8 = [(MSTriageAction *)self messageListItemSelection];
    v9 = [v8 mailboxes];
    v10 = [(MSTriageAction *)self messageListItemSelection];
    v11 = [v10 messageListItems];
    v12 = [v7 initWithMailboxes:v9 messageListItemsToExclude:v11 flagChange:v4 origin:-[MSTriageAction origin](self actor:{"origin"), -[MSTriageAction actor](self, "actor")}];
  }

  else
  {
    v13 = [(MSTriageAction *)self query];

    if (v13)
    {
      v14 = objc_alloc(MEMORY[0x277D06DE8]);
      v8 = [(MSTriageAction *)self query];
      v12 = [v14 initWithQuery:v8 origin:-[MSTriageAction origin](self actor:"origin") flagChange:{-[MSTriageAction actor](self, "actor"), v4}];
      goto LABEL_7;
    }

    v15 = objc_alloc(MEMORY[0x277D06DE8]);
    v8 = [(MSTriageAction *)self messageListItemSelection];
    v9 = [v8 messageListItems];
    v12 = [v15 initWithMessageListItems:v9 origin:-[MSTriageAction origin](self actor:"origin") flagChange:{-[MSTriageAction actor](self, "actor"), v4}];
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