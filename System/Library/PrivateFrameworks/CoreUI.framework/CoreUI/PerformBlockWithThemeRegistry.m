@interface PerformBlockWithThemeRegistry
@end

@implementation PerformBlockWithThemeRegistry

NSMapTable *____PerformBlockWithThemeRegistry_block_invoke()
{
  v0 = *&NSIntegerMapKeyCallBacks.retain;
  *&keyCallBacks.hash = *&NSIntegerMapKeyCallBacks.hash;
  *&keyCallBacks.retain = v0;
  *&keyCallBacks.describe = *&NSIntegerMapKeyCallBacks.describe;
  v2 = NSObjectMapValueCallBacks;
  result = NSCreateMapTable(&keyCallBacks, &v2, 0);
  __PerformBlockWithThemeRegistry___themeRegistry = result;
  __PerformBlockWithThemeRegistry___lock = 0;
  return result;
}

@end