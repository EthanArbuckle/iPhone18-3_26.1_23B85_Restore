@interface BLServiceProxyConnectionFactory
+ (id)connectionWithMachServiceName:(id)name options:(unint64_t)options;
@end

@implementation BLServiceProxyConnectionFactory

+ (id)connectionWithMachServiceName:(id)name options:(unint64_t)options
{
  v5 = MEMORY[0x277CCAE80];
  nameCopy = name;
  v7 = [[v5 alloc] initWithMachServiceName:nameCopy options:options];

  return v7;
}

@end