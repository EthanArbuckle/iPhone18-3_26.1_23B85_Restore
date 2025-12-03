@interface IMNicknameAvatarRecipe
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToAvatarRecipe:(id)recipe;
- (IMNicknameAvatarRecipe)initWithCoder:(id)coder;
- (IMNicknameAvatarRecipe)initWithData:(id)data;
- (IMNicknameAvatarRecipe)initWithDictionaryRepresentation:(id)representation;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IMNicknameAvatarRecipe

- (IMNicknameAvatarRecipe)initWithData:(id)data
{
  dataCopy = data;
  v9.receiver = self;
  v9.super_class = IMNicknameAvatarRecipe;
  v6 = [(IMNicknameAvatarRecipe *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_recipeData, data);
  }

  return v7;
}

- (IMNicknameAvatarRecipe)initWithDictionaryRepresentation:(id)representation
{
  v4 = [representation objectForKey:@"avatarRecipeData"];
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

- (BOOL)isEqualToAvatarRecipe:(id)recipe
{
  recipeCopy = recipe;
  recipeData = [(IMNicknameAvatarRecipe *)self recipeData];
  recipeData2 = [recipeCopy recipeData];

  LOBYTE(recipeCopy) = IMAreObjectsLogicallySame();
  return recipeCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(IMNicknameAvatarRecipe *)self isEqualToAvatarRecipe:equalCopy];

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [IMNicknameAvatarRecipe alloc];
  recipeData = [(IMNicknameAvatarRecipe *)self recipeData];
  v6 = [(IMNicknameAvatarRecipe *)v4 initWithData:recipeData];

  return v6;
}

- (IMNicknameAvatarRecipe)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"avatarRecipeData"];

  v6 = [(IMNicknameAvatarRecipe *)self initWithData:v5];
  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  recipeData = [(IMNicknameAvatarRecipe *)self recipeData];
  [coderCopy encodeObject:recipeData forKey:@"avatarRecipeData"];
}

@end