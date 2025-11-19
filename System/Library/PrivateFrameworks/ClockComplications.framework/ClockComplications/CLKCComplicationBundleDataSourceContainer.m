@interface CLKCComplicationBundleDataSourceContainer
+ (NSArray)complicationBundleDataSources;
@end

@implementation CLKCComplicationBundleDataSourceContainer

+ (NSArray)complicationBundleDataSources
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return MEMORY[0x277CBEBF8];
}

@end