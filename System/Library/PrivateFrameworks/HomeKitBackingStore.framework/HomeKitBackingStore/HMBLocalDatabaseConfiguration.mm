@interface HMBLocalDatabaseConfiguration
- (HMBLocalDatabaseConfiguration)init;
- (id)mutableCopyWithZone:(_NSZone *)zone;
@end

@implementation HMBLocalDatabaseConfiguration

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [(HMBLocalDatabaseConfiguration *)[HMBMutableLocalDatabaseConfiguration allocWithZone:?]];
  modelContainer = [(HMBLocalDatabaseConfiguration *)self modelContainer];
  [(HMBLocalDatabaseConfiguration *)v4 setModelContainer:modelContainer];

  return v4;
}

- (HMBLocalDatabaseConfiguration)init
{
  v6.receiver = self;
  v6.super_class = HMBLocalDatabaseConfiguration;
  v2 = [(HMBLocalDatabaseConfiguration *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(HMBModelContainer);
    modelContainer = v2->_modelContainer;
    v2->_modelContainer = v3;
  }

  return v2;
}

@end