@interface MSRemoveFollowUpTriageAction
- (MSRemoveFollowUpTriageAction)initWithMessageListSelection:(id)selection origin:(int64_t)origin actor:(int64_t)actor delegate:(id)delegate followUp:(id)up;
- (id)_changeAction;
@end

@implementation MSRemoveFollowUpTriageAction

- (MSRemoveFollowUpTriageAction)initWithMessageListSelection:(id)selection origin:(int64_t)origin actor:(int64_t)actor delegate:(id)delegate followUp:(id)up
{
  upCopy = up;
  v17.receiver = self;
  v17.super_class = MSRemoveFollowUpTriageAction;
  v14 = [(MSTriageAction *)&v17 initWithMessageListSelection:selection origin:origin actor:actor delegate:delegate];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_followUp, up);
  }

  return v15;
}

- (id)_changeAction
{
  v3 = objc_alloc(MEMORY[0x277D06DF8]);
  messageListItemSelection = [(MSTriageAction *)self messageListItemSelection];
  messageListItems = [messageListItemSelection messageListItems];
  origin = [(MSTriageAction *)self origin];
  actor = [(MSTriageAction *)self actor];
  followUp = [(MSRemoveFollowUpTriageAction *)self followUp];
  v9 = [v3 initWithMessageListItems:messageListItems origin:origin actor:actor followUp:followUp];

  return v9;
}

@end