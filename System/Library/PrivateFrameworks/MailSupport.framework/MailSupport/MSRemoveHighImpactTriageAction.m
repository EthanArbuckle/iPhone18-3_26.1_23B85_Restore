@interface MSRemoveHighImpactTriageAction
- (MSRemoveHighImpactTriageAction)initWithMessageListSelection:(id)a3 origin:(int64_t)a4 actor:(int64_t)a5 delegate:(id)a6 highImpactChange:(unint64_t)a7;
- (id)_changeAction;
@end

@implementation MSRemoveHighImpactTriageAction

- (MSRemoveHighImpactTriageAction)initWithMessageListSelection:(id)a3 origin:(int64_t)a4 actor:(int64_t)a5 delegate:(id)a6 highImpactChange:(unint64_t)a7
{
  v9.receiver = self;
  v9.super_class = MSRemoveHighImpactTriageAction;
  result = [(MSTriageAction *)&v9 initWithMessageListSelection:a3 origin:a4 actor:a5 delegate:a6];
  if (result)
  {
    result->_highImpactChange = a7;
  }

  return result;
}

- (id)_changeAction
{
  v3 = objc_alloc(MEMORY[0x277D06E50]);
  v4 = [(MSTriageAction *)self messageListItemSelection];
  v5 = [v4 messageListItems];
  v6 = [v3 initWithMessageListItems:v5 origin:-[MSTriageAction origin](self actor:"origin") highImpactChange:{-[MSTriageAction actor](self, "actor"), -[MSRemoveHighImpactTriageAction highImpactChange](self, "highImpactChange")}];

  return v6;
}

@end