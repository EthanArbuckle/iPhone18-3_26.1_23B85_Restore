@interface SILogForLogForCategory
@end

@implementation SILogForLogForCategory

os_log_t ___SILogForLogForCategory_block_invoke()
{
  for (i = 0; i != 22; ++i)
  {
    result = os_log_create("com.apple.spotlightindex", SILogCategoryNames[i]);
    gSILogArray[i] = result;
  }

  return result;
}

@end