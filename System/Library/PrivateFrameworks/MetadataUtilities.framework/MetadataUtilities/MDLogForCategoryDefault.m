@interface MDLogForCategoryDefault
@end

@implementation MDLogForCategoryDefault

os_log_t ___MDLogForCategoryDefault_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  result = os_log_create("com.apple.metadata.utilities", "default");
  _MDLogForCategoryDefault_log = result;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

@end