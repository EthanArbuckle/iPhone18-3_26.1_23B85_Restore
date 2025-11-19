@interface IMNicknameAvatarRecipe
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToAvatarRecipe:(id)a3;
- (IMNicknameAvatarRecipe)initWithCoder:(id)a3;
- (IMNicknameAvatarRecipe)initWithData:(id)a3;
- (IMNicknameAvatarRecipe)initWithDictionaryRepresentation:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IMNicknameAvatarRecipe

- (IMNicknameAvatarRecipe)initWithData:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = IMNicknameAvatarRecipe;
  v6 = [(IMNicknameAvatarRecipe *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_recipeData, a3);
  }

  return v7;
}

- (IMNicknameAvatarRecipe)initWithDictionaryRepresentation:(id)a3
{
  v4 = [a3 objectForKey:@"avatarRecipeData"];
  v5 = [(IMNicknameAvatarRecipe *)self initWithData:v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = v3;
  recipeData = self->_recipeData;
  if (recipeData)
  {
    CFDictionarySetValue(v3, @"avatarRecipeData", recipeData);
  }

  return v4;
}

- (BOOL)isEqualToAvatarRecipe:(id)a3
{
  v4 = a3;
  v5 = [(IMNicknameAvatarRecipe *)self recipeData];
  v6 = [v4 recipeData];

  LOBYTE(v4) = IMAreObjectsLogicallySame();
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(IMNicknameAvatarRecipe *)self isEqualToAvatarRecipe:v4];

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [IMNicknameAvatarRecipe alloc];
  v5 = [(IMNicknameAvatarRecipe *)self recipeData];
  v6 = [(IMNicknameAvatarRecipe *)v4 initWithData:v5];

  return v6;
}

- (IMNicknameAvatarRecipe)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"avatarRecipeData"];

  v6 = [(IMNicknameAvatarRecipe *)self initWithData:v5];
  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(IMNicknameAvatarRecipe *)self recipeData];
  [v4 encodeObject:v5 forKey:@"avatarRecipeData"];
}

@end