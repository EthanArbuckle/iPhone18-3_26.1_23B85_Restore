@interface FCRecipeList
- (FCRecipeList)initWithRecipeIDs:(id)a3 identifier:(id)a4;
- (FCRecipeList)initWithRecipeListRecord:(id)a3 interestToken:(id)a4;
@end

@implementation FCRecipeList

- (FCRecipeList)initWithRecipeListRecord:(id)a3 interestToken:(id)a4
{
  v7 = a3;
  v8 = a4;
  v24.receiver = self;
  v24.super_class = FCRecipeList;
  v9 = [(FCRecipeList *)&v24 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_pbRecord, a3);
    objc_storeStrong(&v10->_interestToken, a4);
    v11 = [v7 base];
    v12 = [v11 identifier];
    v13 = [v12 copy];
    identifier = v10->_identifier;
    v10->_identifier = v13;

    v15 = [v7 recipeIDs];
    v16 = [v15 copy];
    recipeIDs = v10->_recipeIDs;
    v10->_recipeIDs = v16;

    v18 = MEMORY[0x1E695DF00];
    v19 = [v7 base];
    v20 = [v19 modificationDate];
    v21 = [v18 dateWithPBDate:v20];
    lastModifiedDate = v10->_lastModifiedDate;
    v10->_lastModifiedDate = v21;
  }

  return v10;
}

- (FCRecipeList)initWithRecipeIDs:(id)a3 identifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = FCRecipeList;
  v8 = [(FCRecipeList *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    recipeIDs = v8->_recipeIDs;
    v8->_recipeIDs = v9;

    v11 = [v7 copy];
    identifier = v8->_identifier;
    v8->_identifier = v11;
  }

  return v8;
}

@end