@interface FCRecipeUserEventHistory
+ (id)recordZoneID;
@end

@implementation FCRecipeUserEventHistory

+ (id)recordZoneID
{
  if (qword_1EDB274B0 != -1)
  {
    dispatch_once(&qword_1EDB274B0, &__block_literal_global_82);
  }

  v3 = _MergedGlobals_167;

  return v3;
}

uint64_t __40__FCRecipeUserEventHistory_recordZoneID__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695BA90]);
  v1 = [v0 initWithZoneName:@"RecipeUserEventHistory" ownerName:*MEMORY[0x1E695B728]];
  v2 = _MergedGlobals_167;
  _MergedGlobals_167 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

@end