@interface FCRecipesFetchOperationResult
- (FCRecipesFetchOperationResult)initWithRecipes:(id)a3 recipeLists:(id)a4;
@end

@implementation FCRecipesFetchOperationResult

- (FCRecipesFetchOperationResult)initWithRecipes:(id)a3 recipeLists:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = FCRecipesFetchOperationResult;
  v8 = [(FCRecipesFetchOperationResult *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    recipes = v8->_recipes;
    v8->_recipes = v9;

    v11 = [v7 copy];
    recipeLists = v8->_recipeLists;
    v8->_recipeLists = v11;
  }

  return v8;
}

@end