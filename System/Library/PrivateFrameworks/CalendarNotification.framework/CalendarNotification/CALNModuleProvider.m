@interface CALNModuleProvider
+ (NSArray)modules;
@end

@implementation CALNModuleProvider

+ (NSArray)modules
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(CALNNotificationServerModule);
  v6[0] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

@end