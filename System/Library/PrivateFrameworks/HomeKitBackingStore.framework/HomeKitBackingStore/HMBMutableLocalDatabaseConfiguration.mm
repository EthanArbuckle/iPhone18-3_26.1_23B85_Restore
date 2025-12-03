@interface HMBMutableLocalDatabaseConfiguration
- (id)mutableCopyWithZone:(_NSZone *)zone;
@end

@implementation HMBMutableLocalDatabaseConfiguration

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [[HMBLocalDatabaseConfiguration allocWithZone:?]];
  modelContainer = [(HMBLocalDatabaseConfiguration *)self modelContainer];
  [(HMBLocalDatabaseConfiguration *)v4 setModelContainer:modelContainer];

  return v4;
}

@end