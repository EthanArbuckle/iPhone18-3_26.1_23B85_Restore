@interface CRKExecutionTimer
+ (id)startedTimerWithDescription:(id)a3;
- (CRKExecutionTimer)initWithDescription:(id)a3;
- (id)stop;
- (void)start;
- (void)stop;
@end

@implementation CRKExecutionTimer

+ (id)startedTimerWithDescription:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithDescription:v4];

  [v5 start];

  return v5;
}

- (CRKExecutionTimer)initWithDescription:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CRKExecutionTimer;
  v5 = [(CRKExecutionTimer *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    timerDescription = v5->_timerDescription;
    v5->_timerDescription = v6;
  }

  return v5;
}

- (void)start
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v4 = [a1 startDate];
  [v5 handleFailureInMethod:a2 object:a1 file:@"CRKExecutionTimer.m" lineNumber:37 description:{@"Timer was already started at %@", v4}];
}

- (id)stop
{
  v4 = [(CRKExecutionTimer *)self endDate];

  if (v4)
  {
    [(CRKExecutionTimer *)self stop];
  }

  v5 = objc_opt_new();
  [(CRKExecutionTimer *)self setEndDate:v5];

  v6 = [(CRKExecutionTimer *)self endDate];
  v7 = [(CRKExecutionTimer *)self startDate];
  [v6 timeIntervalSinceDate:v7];
  v9 = v8;

  v10 = MEMORY[0x277CCACA8];
  v11 = [(CRKExecutionTimer *)self timerDescription];
  v12 = [v10 stringWithFormat:@"'%@' took %.2f seconds", v11, v9];

  return v12;
}

- (void)stop
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v4 = [a1 endDate];
  [v5 handleFailureInMethod:a2 object:a1 file:@"CRKExecutionTimer.m" lineNumber:42 description:{@"Timer was already stopped at %@", v4}];
}

@end