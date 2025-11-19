@interface DADeviceStateRecord
- (BOOL)isEqual:(id)a3;
- (DADeviceStateRecord)initWithState:(int64_t)a3 andTime:(id)a4;
- (id)discoveryTimeIntervelBetweenState:(id)a3;
- (id)stateTransitionAsString:(id)a3;
- (id)timeIntervelBetweenState:(id)a3;
@end

@implementation DADeviceStateRecord

- (DADeviceStateRecord)initWithState:(int64_t)a3 andTime:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = DADeviceStateRecord;
  v8 = [(DADeviceStateRecord *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_state = a3;
    objc_storeStrong(&v8->_time, a4);
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
  }

  else if ([(DADeviceStateRecord *)v4 isMemberOfClass:objc_opt_class()])
  {
    state = self->_state;
    v6 = state == [(DADeviceStateRecord *)v4 state];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)discoveryTimeIntervelBetweenState:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [(DADeviceStateRecord *)a2 discoveryTimeIntervelBetweenState:?];
  }

  v6 = [(DADeviceStateRecord *)self discoveryTime];
  [v6 doubleValue];
  v8 = v7;
  v9 = [v5 discoveryTime];
  [v9 doubleValue];
  v11 = vabdd_f64(v8, v10);

  v12 = [MEMORY[0x277CCABB0] numberWithDouble:v11];

  return v12;
}

- (id)timeIntervelBetweenState:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [(DADeviceStateRecord *)a2 timeIntervelBetweenState:?];
  }

  v6 = [(DADeviceStateRecord *)self time];
  [v6 doubleValue];
  v8 = v7;
  v9 = [v5 time];
  [v9 doubleValue];
  v11 = vabdd_f64(v8, v10);

  v12 = [MEMORY[0x277CCABB0] numberWithDouble:v11];

  return v12;
}

- (id)stateTransitionAsString:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [(DADeviceStateRecord *)a2 stateTransitionAsString:?];
  }

  v6 = MEMORY[0x277CCACA8];
  v7 = DADeviceStateToString([(DADeviceStateRecord *)self state]);
  v8 = DADeviceStateToString([v5 state]);
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