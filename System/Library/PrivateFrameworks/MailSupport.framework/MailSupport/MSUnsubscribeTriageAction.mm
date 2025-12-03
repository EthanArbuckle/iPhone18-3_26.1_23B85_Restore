@interface MSUnsubscribeTriageAction
- (id)_changeAction;
@end

@implementation MSUnsubscribeTriageAction

- (id)_changeAction
{
  v3 = objc_alloc(MEMORY[0x277D06ED8]);
  messageListItemSelection = [(MSTriageAction *)self messageListItemSelection];
  messageListItems = [messageListItemSelection messageListItems];
  v6 = [v3 initWithMessageListItems:messageListItems origin:-[MSTriageAction origin](self actor:{"origin"), -[MSTriageAction actor](self, "actor")}];

  [v6 setShouldStopDeletingMessages:{-[MSUnsubscribeTriageAction isSenderAlreadyBlocked](self, "isSenderAlreadyBlocked")}];

  return v6;
}

@end