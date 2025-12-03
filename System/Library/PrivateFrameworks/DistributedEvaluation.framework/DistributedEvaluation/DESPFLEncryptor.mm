@interface DESPFLEncryptor
- (DESPFLEncryptor)init;
- (DESPFLEncryptor)initWithRecipe:(id)recipe;
@end

@implementation DESPFLEncryptor

- (DESPFLEncryptor)init
{
  v3.receiver = self;
  v3.super_class = DESPFLEncryptor;
  result = [(DESPFLEncryptor *)&v3 init];
  if (result)
  {
    result->_version = 2;
    result->_weight = 1.0;
  }

  return result;
}

- (DESPFLEncryptor)initWithRecipe:(id)recipe
{
  recipeUserInfo = [recipe recipeUserInfo];
  v5 = [(DESPFLEncryptor *)self initWithRecipeUserInfo:recipeUserInfo writeToSubmissionLogs:1];

  return v5;
}

@end