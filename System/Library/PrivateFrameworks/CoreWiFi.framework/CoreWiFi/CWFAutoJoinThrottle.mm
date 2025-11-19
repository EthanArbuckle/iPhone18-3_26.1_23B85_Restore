@interface CWFAutoJoinThrottle
+ (id)autoJoinThrottleWithTrigger:(int64_t)a3 intervals:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation CWFAutoJoinThrottle

+ (id)autoJoinThrottleWithTrigger:(int64_t)a3 intervals:(id)a4
{
  v5 = a4;
  v6 = objc_alloc_init(CWFAutoJoinThrottle);
  [(CWFAutoJoinThrottle *)v6 setTrigger:a3];
  [(CWFAutoJoinThrottle *)v6 setIntervals:v5];

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = sub_1E0BCC05C(self->_trigger);
  v5 = [v3 stringWithFormat:@"trigger=%@, intervals=(%@), intervalsBasedOnTriggerTimestamp=(%@)", v4, self->_intervals, self->_intervalsBasedOnTriggerTimestamp];

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[CWFAutoJoinThrottle allocWithZone:?]];
  [(CWFAutoJoinThrottle *)v4 setTrigger:self->_trigger];
  [(CWFAutoJoinThrottle *)v4 setIntervals:self->_intervals];
  [(CWFAutoJoinThrottle *)v4 setIntervalsBasedOnTriggerTimestamp:self->_intervalsBasedOnTriggerTimestamp];
  return v4;
}

@end