@interface MSCategoryTriageAction
- (MSCategoryTriageAction)initWithMessageListSelection:(id)a3 origin:(int64_t)a4 actor:(int64_t)a5 delegate:(id)a6 categoryType:(unint64_t)a7 changeOptions:(unint64_t)a8;
- (id)_changeAction;
@end

@implementation MSCategoryTriageAction

- (MSCategoryTriageAction)initWithMessageListSelection:(id)a3 origin:(int64_t)a4 actor:(int64_t)a5 delegate:(id)a6 categoryType:(unint64_t)a7 changeOptions:(unint64_t)a8
{
  v11.receiver = self;
  v11.super_class = MSCategoryTriageAction;
  result = [(MSTriageAction *)&v11 initWithMessageListSelection:a3 origin:a4 actor:a5 delegate:a6];
  if (result)
  {
    result->_categoryType = a7;
    result->_changeOptions = a8;
  }

  return result;
}

- (id)_changeAction
{
  v3 = objc_alloc(MEMORY[0x277D06DC0]);
  v4 = [(MSTriageAction *)self messageListItemSelection];
  v5 = [v4 messageListItems];
  v6 = [v3 initWithMessageListItems:v5 origin:-[MSTriageAction origin](self actor:"origin") categoryType:-[MSTriageAction actor](self changeOptions:{"actor"), -[MSCategoryTriageAction categoryType](self, "categoryType"), -[MSCategoryTriageAction changeOptions](self, "changeOptions")}];

  return v6;
}

@end