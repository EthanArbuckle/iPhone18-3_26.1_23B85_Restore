@interface MSCategoryTriageAction
- (MSCategoryTriageAction)initWithMessageListSelection:(id)selection origin:(int64_t)origin actor:(int64_t)actor delegate:(id)delegate categoryType:(unint64_t)type changeOptions:(unint64_t)options;
- (id)_changeAction;
@end

@implementation MSCategoryTriageAction

- (MSCategoryTriageAction)initWithMessageListSelection:(id)selection origin:(int64_t)origin actor:(int64_t)actor delegate:(id)delegate categoryType:(unint64_t)type changeOptions:(unint64_t)options
{
  v11.receiver = self;
  v11.super_class = MSCategoryTriageAction;
  result = [(MSTriageAction *)&v11 initWithMessageListSelection:selection origin:origin actor:actor delegate:delegate];
  if (result)
  {
    result->_categoryType = type;
    result->_changeOptions = options;
  }

  return result;
}

- (id)_changeAction
{
  v3 = objc_alloc(MEMORY[0x277D06DC0]);
  messageListItemSelection = [(MSTriageAction *)self messageListItemSelection];
  messageListItems = [messageListItemSelection messageListItems];
  v6 = [v3 initWithMessageListItems:messageListItems origin:-[MSTriageAction origin](self actor:"origin") categoryType:-[MSTriageAction actor](self changeOptions:{"actor"), -[MSCategoryTriageAction categoryType](self, "categoryType"), -[MSCategoryTriageAction changeOptions](self, "changeOptions")}];

  return v6;
}

@end