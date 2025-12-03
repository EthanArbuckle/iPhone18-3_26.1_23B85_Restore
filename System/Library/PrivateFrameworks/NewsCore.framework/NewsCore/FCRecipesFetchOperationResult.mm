@interface FCRecipesFetchOperationResult
- (FCRecipesFetchOperationResult)initWithRecipes:(id)recipes recipeLists:(id)lists;
@end

@implementation FCRecipesFetchOperationResult

- (FCRecipesFetchOperationResult)initWithRecipes:(id)recipes recipeLists:(id)lists
{
  recipesCopy = recipes;
  listsCopy = lists;
  v14.receiver = self;
  v14.super_class = FCRecipesFetchOperationResult;
  v8 = [(FCRecipesFetchOperationResult *)&v14 init];
  if (v8)
  {
    v9 = [recipesCopy copy];
    recipes = v8->_recipes;
    v8->_recipes = v9;

    v11 = [listsCopy copy];
    recipeLists = v8->_recipeLists;
    v8->_recipeLists = v11;
  }

  return v8;
}

@end