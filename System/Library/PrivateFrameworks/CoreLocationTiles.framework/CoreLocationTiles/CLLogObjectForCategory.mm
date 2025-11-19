@interface CLLogObjectForCategory
@end

@implementation CLLogObjectForCategory

os_log_t ___CLLogObjectForCategory_Utility_Default_block_invoke()
{
  result = os_log_create("com.apple.locationd.Utility", "Utility");
  logObject_Utility_Default = result;
  return result;
}

@end