@interface DNDSMutableSyncSettings
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation DNDSMutableSyncSettings

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [DNDSSyncSettings alloc];
  v5 = [(DNDSSyncSettings *)self isPairSyncEnabled];
  v6 = [(DNDSSyncSettings *)self isCloudSyncEnabled];

  return [(DNDSSyncSettings *)v4 initWithPairSyncEnabled:v5 cloudSyncEnabled:v6];
}

@end