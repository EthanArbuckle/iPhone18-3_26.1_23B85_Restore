@interface FCRecipeList
- (FCRecipeList)initWithRecipeIDs:(id)ds identifier:(id)identifier;
- (FCRecipeList)initWithRecipeListRecord:(id)record interestToken:(id)token;
@end

@implementation FCRecipeList

- (FCRecipeList)initWithRecipeListRecord:(id)record interestToken:(id)token
{
  recordCopy = record;
  tokenCopy = token;
  v24.receiver = self;
  v24.super_class = FCRecipeList;
  v9 = [(FCRecipeList *)&v24 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_pbRecord, record);
    objc_storeStrong(&v10->_interestToken, token);
    base = [recordCopy base];
    identifier = [base identifier];
    v13 = [identifier copy];
    identifier = v10->_identifier;
    v10->_identifier = v13;

    recipeIDs = [recordCopy recipeIDs];
    v16 = [recipeIDs copy];
    recipeIDs = v10->_recipeIDs;
    v10->_recipeIDs = v16;

    v18 = MEMORY[0x1E695DF00];
    base2 = [recordCopy base];
    modificationDate = [base2 modificationDate];
    v21 = [v18 dateWithPBDate:modificationDate];
    lastModifiedDate = v10->_lastModifiedDate;
    v10->_lastModifiedDate = v21;
  }

  return v10;
}

- (FCRecipeList)initWithRecipeIDs:(id)ds identifier:(id)identifier
{
  dsCopy = ds;
  identifierCopy = identifier;
  v14.receiver = self;
  v14.super_class = FCRecipeList;
  v8 = [(FCRecipeList *)&v14 init];
  if (v8)
  {
    v9 = [dsCopy copy];
    recipeIDs = v8->_recipeIDs;
    v8->_recipeIDs = v9;

    v11 = [identifierCopy copy];
    identifier = v8->_identifier;
    v8->_identifier = v11;
  }

  return v8;
}

@end