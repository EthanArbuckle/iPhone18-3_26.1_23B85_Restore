@interface CRKExecutionTimer
+ (id)startedTimerWithDescription:(id)description;
- (CRKExecutionTimer)initWithDescription:(id)description;
- (id)stop;
- (void)start;
- (void)stop;
@end

@implementation CRKExecutionTimer

+ (id)startedTimerWithDescription:(id)description
{
  descriptionCopy = description;
  v5 = [[self alloc] initWithDescription:descriptionCopy];

  [v5 start];

  return v5;
}

- (CRKExecutionTimer)initWithDescription:(id)description
{
  descriptionCopy = description;
  v9.receiver = self;
  v9.super_class = CRKExecutionTimer;
  v5 = [(CRKExecutionTimer *)&v9 init];
  if (v5)
  {
    v6 = [descriptionCopy copy];
    timerDescription = v5->_timerDescription;
    v5->_timerDescription = v6;
  }

  return v5;
}

- (void)start
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  startDate = [self startDate];
  [currentHandler handleFailureInMethod:a2 object:self file:@"CRKExecutionTimer.m" lineNumber:37 description:{@"Timer was already started at %@", startDate}];
}

- (id)stop
{
  endDate = [(CRKExecutionTimer *)self endDate];

  if (endDate)
  {
    [(CRKExecutionTimer *)self stop];
  }

  v5 = objc_opt_new();
  [(CRKExecutionTimer *)self setEndDate:v5];

  endDate2 = [(CRKExecutionTimer *)self endDate];
  startDate = [(CRKExecutionTimer *)self startDate];
  [endDate2 timeIntervalSinceDate:startDate];
  v9 = v8;

  v10 = MEMORY[0x277CCACA8];
  timerDescription = [(CRKExecutionTimer *)self timerDescription];
  v12 = [v10 stringWithFormat:@"'%@' took %.2f seconds", timerDescription, v9];

  return v12;
}

- (void)stop
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  endDate = [self endDate];
  [currentHandler handleFailureInMethod:a2 object:self file:@"CRKExecutionTimer.m" lineNumber:42 description:{@"Timer was already stopped at %@", endDate}];
}

@end