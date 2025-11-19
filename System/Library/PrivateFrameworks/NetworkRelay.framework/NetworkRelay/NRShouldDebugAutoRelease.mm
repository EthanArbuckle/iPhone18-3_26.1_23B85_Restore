@interface NRShouldDebugAutoRelease
@end

@implementation NRShouldDebugAutoRelease

const char *___NRShouldDebugAutoRelease_block_invoke()
{
  result = getenv("NR_DEBUG_AUTORELEASE");
  if (result)
  {
    result = strcmp(result, "YES");
    if (!result)
    {
      _NRShouldDebugAutoRelease_debugAutoRelease = 1;
    }
  }

  return result;
}

@end