@interface BCSNetworkInfo
+ (BOOL)isExpensiveNetwork;
@end

@implementation BCSNetworkInfo

+ (BOOL)isExpensiveNetwork
{
  v2 = objc_alloc_init(MEMORY[0x277CD9200]);
  path = [v2 path];
  isExpensive = [path isExpensive];

  return isExpensive;
}

@end