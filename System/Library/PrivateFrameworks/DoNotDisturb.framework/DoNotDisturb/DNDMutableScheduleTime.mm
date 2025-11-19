@interface DNDMutableScheduleTime
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation DNDMutableScheduleTime

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [DNDScheduleTime alloc];

  return [(DNDScheduleTime *)v4 _initWithTime:self];
}

@end