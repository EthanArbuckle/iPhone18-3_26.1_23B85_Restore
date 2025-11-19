@interface BCSNetworkInfo
+ (BOOL)isExpensiveNetwork;
@end

@implementation BCSNetworkInfo

+ (BOOL)isExpensiveNetwork
{
  v2 = objc_alloc_init(MEMORY[0x277CD9200]);
  v3 = [v2 path];
  v4 = [v3 isExpensive];

  return v4;
}

@end