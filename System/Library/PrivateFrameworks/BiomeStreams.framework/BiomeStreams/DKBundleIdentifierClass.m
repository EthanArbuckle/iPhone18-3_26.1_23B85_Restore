@interface DKBundleIdentifierClass
@end

@implementation DKBundleIdentifierClass

Class __get_DKBundleIdentifierClass_block_invoke(uint64_t a1)
{
  CoreDuetLibrary();
  result = objc_getClass("_DKBundleIdentifier");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __get_DKBundleIdentifierClass_block_invoke_cold_1();
  }

  get_DKBundleIdentifierClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end