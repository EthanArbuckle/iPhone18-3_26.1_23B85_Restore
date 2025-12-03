@interface FCRecipeListRecordSource
- (id)nonLocalizableKeys;
- (id)recordFromCKRecord:(id)record base:(id)base;
@end

@implementation FCRecipeListRecordSource

- (id)recordFromCKRecord:(id)record base:(id)base
{
  v5 = MEMORY[0x1E69B6F88];
  baseCopy = base;
  recordCopy = record;
  v8 = objc_alloc_init(v5);
  [v8 setBase:baseCopy];

  v9 = [recordCopy objectForKeyedSubscript:@"recipeIDs"];

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