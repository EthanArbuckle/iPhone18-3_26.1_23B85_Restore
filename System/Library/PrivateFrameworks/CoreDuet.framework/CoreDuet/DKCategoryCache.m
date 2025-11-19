@interface DKCategoryCache
@end

@implementation DKCategoryCache

uint64_t __32___DKCategoryCache_sharedCached__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedCached_sharedCache_0;
  sharedCached_sharedCache_0 = v0;

  v2 = sharedCached_sharedCache_0;

  return [v2 setCountLimit:6];
}

void __45___DKCategoryCache_categoryWithInteger_type___block_invoke()
{
  v0 = +[_DKBoolCategory type];
  categoryWithInteger_type__BOOLTypeCode = [v0 typeCode];

  v1 = +[_DKAnyIntegerCategory type];
  categoryWithInteger_type__anyTypeCode = [v1 typeCode];
}

@end