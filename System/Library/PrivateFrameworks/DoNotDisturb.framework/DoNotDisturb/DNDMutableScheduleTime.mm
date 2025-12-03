@interface DNDMutableScheduleTime
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation DNDMutableScheduleTime

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [DNDScheduleTime alloc];

  return [(DNDScheduleTime *)v4 _initWithTime:self];
}

@end