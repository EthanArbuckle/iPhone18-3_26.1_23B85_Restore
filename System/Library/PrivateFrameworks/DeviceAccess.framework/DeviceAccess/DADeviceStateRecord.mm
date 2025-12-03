@interface DADeviceStateRecord
- (BOOL)isEqual:(id)equal;
- (DADeviceStateRecord)initWithState:(int64_t)state andTime:(id)time;
- (id)discoveryTimeIntervelBetweenState:(id)state;
- (id)stateTransitionAsString:(id)string;
- (id)timeIntervelBetweenState:(id)state;
@end

@implementation DADeviceStateRecord

- (DADeviceStateRecord)initWithState:(int64_t)state andTime:(id)time
{
  timeCopy = time;
  v11.receiver = self;
  v11.super_class = DADeviceStateRecord;
  v8 = [(DADeviceStateRecord *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_state = state;
    objc_storeStrong(&v8->_time, time);
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else if ([(DADeviceStateRecord *)equalCopy isMemberOfClass:objc_opt_class()])
  {
    state = self->_state;
    v6 = state == [(DADeviceStateRecord *)equalCopy state];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)discoveryTimeIntervelBetweenState:(id)state
{
  stateCopy = state;
  if (!stateCopy)
  {
    [(DADeviceStateRecord *)a2 discoveryTimeIntervelBetweenState:?];
  }

  discoveryTime = [(DADeviceStateRecord *)self discoveryTime];
  [discoveryTime doubleValue];
  v8 = v7;
  discoveryTime2 = [stateCopy discoveryTime];
  [discoveryTime2 doubleValue];
  v11 = vabdd_f64(v8, v10);

  v12 = [MEMORY[0x277CCABB0] numberWithDouble:v11];

  return v12;
}

- (id)timeIntervelBetweenState:(id)state
{
  stateCopy = state;
  if (!stateCopy)
  {
    [(DADeviceStateRecord *)a2 timeIntervelBetweenState:?];
  }

  time = [(DADeviceStateRecord *)self time];
  [time doubleValue];
  v8 = v7;
  time2 = [stateCopy time];
  [time2 doubleValue];
  v11 = vabdd_f64(v8, v10);

  v12 = [MEMORY[0x277CCABB0] numberWithDouble:v11];

  return v12;
}

- (id)stateTransitionAsString:(id)string
{
  stringCopy = string;
  if (!stringCopy)
  {
    [(DADeviceStateRecord *)a2 stateTransitionAsString:?];
  }

  v6 = MEMORY[0x277CCACA8];
  v7 = DADeviceStateToString([(DADeviceStateRecord *)self state]);
  v8 = DADeviceStateToString([stringCopy state]);
  v9 = [v6 stringWithFormat:@"%@->%@", v7, v8];

  return v9;
}

- (void)discoveryTimeIntervelBetweenState:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"DADeviceAccessAnalytics.m" lineNumber:61 description:@"Other object to compare is nil"];
}

- (void)timeIntervelBetweenState:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"DADeviceAccessAnalytics.m" lineNumber:69 description:@"Other object to compare is nil"];
}

- (void)stateTransitionAsString:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"DADeviceAccessAnalytics.m" lineNumber:77 description:@"Other state object is nil"];
}

@end