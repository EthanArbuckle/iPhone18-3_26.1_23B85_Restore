@interface HMBMutableLocalDatabaseConfiguration
- (id)mutableCopyWithZone:(_NSZone *)a3;
@end

@implementation HMBMutableLocalDatabaseConfiguration

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [[HMBLocalDatabaseConfiguration allocWithZone:?]];
  v5 = [(HMBLocalDatabaseConfiguration *)self modelContainer];
  [(HMBLocalDatabaseConfiguration *)v4 setModelContainer:v5];

  return v4;
}

@end