@interface DNDSMutableSyncSettings
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation DNDSMutableSyncSettings

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [DNDSSyncSettings alloc];
  isPairSyncEnabled = [(DNDSSyncSettings *)self isPairSyncEnabled];
  isCloudSyncEnabled = [(DNDSSyncSettings *)self isCloudSyncEnabled];

  return [(DNDSSyncSettings *)v4 initWithPairSyncEnabled:isPairSyncEnabled cloudSyncEnabled:isCloudSyncEnabled];
}

@end