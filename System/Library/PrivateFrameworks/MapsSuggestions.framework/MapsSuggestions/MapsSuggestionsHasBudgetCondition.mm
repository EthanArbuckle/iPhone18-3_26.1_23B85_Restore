@interface MapsSuggestionsHasBudgetCondition
- (MapsSuggestionsHasBudgetCondition)initWithBudget:(id)budget;
@end

@implementation MapsSuggestionsHasBudgetCondition

- (MapsSuggestionsHasBudgetCondition)initWithBudget:(id)budget
{
  budgetCopy = budget;
  v9.receiver = self;
  v9.super_class = MapsSuggestionsHasBudgetCondition;
  v6 = [(MapsSuggestionsBaseCondition *)&v9 initWithName:@"MapsSuggestionsHasBudgetCondition"];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_budget, budget);
  }

  return v7;
}

@end