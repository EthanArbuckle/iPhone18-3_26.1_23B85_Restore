@interface DNDMutableBehaviorSettings
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation DNDMutableBehaviorSettings

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [DNDBehaviorSettings alloc];

  return [(DNDBehaviorSettings *)v4 _initWithSettings:self];
}

@end