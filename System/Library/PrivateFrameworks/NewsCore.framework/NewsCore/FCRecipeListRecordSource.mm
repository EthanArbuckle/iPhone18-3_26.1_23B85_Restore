@interface FCRecipeListRecordSource
- (id)nonLocalizableKeys;
- (id)recordFromCKRecord:(id)a3 base:(id)a4;
@end

@implementation FCRecipeListRecordSource

- (id)recordFromCKRecord:(id)a3 base:(id)a4
{
  v5 = MEMORY[0x1E69B6F88];
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(v5);
  [v8 setBase:v6];

  v9 = [v7 objectForKeyedSubscript:@"recipeIDs"];

  v10 = [v9 mutableCopy];
  [v8 setRecipeIDs:v10];

  return v8;
}

- (id)nonLocalizableKeys
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = @"recipeIDs";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

@end