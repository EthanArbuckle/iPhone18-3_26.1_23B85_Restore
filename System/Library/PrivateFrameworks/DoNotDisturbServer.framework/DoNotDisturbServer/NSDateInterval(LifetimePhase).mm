@interface NSDateInterval(LifetimePhase)
- (uint64_t)dnds_lifetimePhaseForDate:()LifetimePhase;
@end

@implementation NSDateInterval(LifetimePhase)

- (uint64_t)dnds_lifetimePhaseForDate:()LifetimePhase
{
  v4 = a3;
  startDate = [self startDate];
  endDate = [self endDate];
  v7 = DNDSGetLifetimePhase(v4, startDate, endDate);

  return v7;
}

@end