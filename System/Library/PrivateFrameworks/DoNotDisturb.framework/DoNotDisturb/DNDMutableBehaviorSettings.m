@interface DNDMutableBehaviorSettings
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation DNDMutableBehaviorSettings

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [DNDBehaviorSettings alloc];

  return [(DNDBehaviorSettings *)v4 _initWithSettings:self];
}

@end