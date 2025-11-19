@interface OspreyServiceConfiguration
+ (id)sharedConfiguration;
- (OspreyServiceConfiguration)init;
@end

@implementation OspreyServiceConfiguration

- (OspreyServiceConfiguration)init
{
  v6.receiver = self;
  v6.super_class = OspreyServiceConfiguration;
  v2 = [(OspreyServiceConfiguration *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(OspreyConnectionPool);
    connectionPool = v2->_connectionPool;
    v2->_connectionPool = v3;
  }

  return v2;
}

+ (id)sharedConfiguration
{
  if (sharedConfiguration_onceToken != -1)
  {
    +[OspreyServiceConfiguration sharedConfiguration];
  }

  v3 = sharedConfiguration_shared;

  return v3;
}

uint64_t __49__OspreyServiceConfiguration_sharedConfiguration__block_invoke()
{
  sharedConfiguration_shared = objc_alloc_init(OspreyServiceConfiguration);

  return MEMORY[0x2821F96F8]();
}

@end