@interface CWFAutoJoinThrottle
+ (id)autoJoinThrottleWithTrigger:(int64_t)trigger intervals:(id)intervals;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation CWFAutoJoinThrottle

+ (id)autoJoinThrottleWithTrigger:(int64_t)trigger intervals:(id)intervals
{
  intervalsCopy = intervals;
  v6 = objc_alloc_init(CWFAutoJoinThrottle);
  [(CWFAutoJoinThrottle *)v6 setTrigger:trigger];
  [(CWFAutoJoinThrottle *)v6 setIntervals:intervalsCopy];

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = sub_1E0BCC05C(self->_trigger);
  v5 = [v3 stringWithFormat:@"trigger=%@, intervals=(%@), intervalsBasedOnTriggerTimestamp=(%@)", v4, self->_intervals, self->_intervalsBasedOnTriggerTimestamp];

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[CWFAutoJoinThrottle allocWithZone:?]];
  [(CWFAutoJoinThrottle *)v4 setTrigger:self->_trigger];
  [(CWFAutoJoinThrottle *)v4 setIntervals:self->_intervals];
  [(CWFAutoJoinThrottle *)v4 setIntervalsBasedOnTriggerTimestamp:self->_intervalsBasedOnTriggerTimestamp];
  return v4;
}

@end