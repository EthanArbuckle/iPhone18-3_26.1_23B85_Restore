@interface SILogForLogForCategory
@end

@implementation SILogForLogForCategory

os_log_t ___SILogForLogForCategory_block_invoke()
{
  v0 = 0;
  v3 = *MEMORY[0x1E69E9840];
  do
  {
    result = os_log_create("com.apple.spotlightindex", SILogCategoryNames[v0]);
    gSILogArray[v0++] = result;
  }

  while (v0 != 22);
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

@end