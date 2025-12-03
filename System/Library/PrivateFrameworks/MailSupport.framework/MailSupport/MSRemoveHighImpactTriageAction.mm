@interface MSRemoveHighImpactTriageAction
- (MSRemoveHighImpactTriageAction)initWithMessageListSelection:(id)selection origin:(int64_t)origin actor:(int64_t)actor delegate:(id)delegate highImpactChange:(unint64_t)change;
- (id)_changeAction;
@end

@implementation MSRemoveHighImpactTriageAction

- (MSRemoveHighImpactTriageAction)initWithMessageListSelection:(id)selection origin:(int64_t)origin actor:(int64_t)actor delegate:(id)delegate highImpactChange:(unint64_t)change
{
  v9.receiver = self;
  v9.super_class = MSRemoveHighImpactTriageAction;
  result = [(MSTriageAction *)&v9 initWithMessageListSelection:selection origin:origin actor:actor delegate:delegate];
  if (result)
  {
    result->_highImpactChange = change;
  }

  return result;
}

- (id)_changeAction
{
  v3 = objc_alloc(MEMORY[0x277D06E50]);
  messageListItemSelection = [(MSTriageAction *)self messageListItemSelection];
  messageListItems = [messageListItemSelection messageListItems];
  v6 = [v3 initWithMessageListItems:messageListItems origin:-[MSTriageAction origin](self actor:"origin") highImpactChange:{-[MSTriageAction actor](self, "actor"), -[MSRemoveHighImpactTriageAction highImpactChange](self, "highImpactChange")}];

  return v6;
}

@end