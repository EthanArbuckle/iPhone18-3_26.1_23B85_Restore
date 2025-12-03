@interface MSCategoryFeedbackTriageAction
- (id)_changeAction;
@end

@implementation MSCategoryFeedbackTriageAction

- (id)_changeAction
{
  v3 = objc_alloc(MEMORY[0x277D06DC8]);
  messageListItemSelection = [(MSTriageAction *)self messageListItemSelection];
  messageListItems = [messageListItemSelection messageListItems];
  v6 = [v3 initWithMessageListItems:messageListItems origin:-[MSTriageAction origin](self actor:"origin") categoryType:-[MSTriageAction actor](self changeOptions:{"actor"), -[MSCategoryTriageAction categoryType](self, "categoryType"), -[MSCategoryTriageAction changeOptions](self, "changeOptions")}];

  return v6;
}

@end