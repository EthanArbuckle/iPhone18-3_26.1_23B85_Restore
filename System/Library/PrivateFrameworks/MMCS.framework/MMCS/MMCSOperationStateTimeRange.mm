@interface MMCSOperationStateTimeRange
+ (id)describedSortedRanges:(id)ranges;
+ (id)descriptionWithOperationState:(unint64_t)state absoluteStart:(double)start duration:(double)duration;
+ (id)stringForOperationState:(unint64_t)state;
- (MMCSOperationStateTimeRange)initWithOperationState:(unint64_t)state startDate:(id)date duration:(double)duration;
- (NSString)description;
- (double)absoluteStart;
- (double)absoluteStop;
- (double)executing;
- (double)queueing;
- (double)relativeStart;
- (int64_t)compareStartTime:(id)time;
- (int64_t)compareStopTime:(id)time;
@end

@implementation MMCSOperationStateTimeRange

- (MMCSOperationStateTimeRange)initWithOperationState:(unint64_t)state startDate:(id)date duration:(double)duration
{
  dateCopy = date;
  v13.receiver = self;
  v13.super_class = MMCSOperationStateTimeRange;
  v10 = [(MMCSOperationStateTimeRange *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_operationState = state;
    objc_storeStrong(&v10->_startDate, date);
    v11->_duration = duration;
  }

  return v11;
}

+ (id)stringForOperationState:(unint64_t)state
{
  if (state > 2)
  {
    return @"unknown";
  }

  else
  {
    return *(&off_2798415F0 + state);
  }
}

+ (id)descriptionWithOperationState:(unint64_t)state absoluteStart:(double)start duration:(double)duration
{
  v7 = MEMORY[0x277CCACA8];
  v8 = [self stringForOperationState:state];
  mmcs_operation_metric_reference_time();
  v10 = [v7 stringWithFormat:@"[%@ %0.3lf, %0.3lf]", v8, start - v9, *&duration];

  return v10;
}

- (NSString)description
{
  v3 = objc_opt_class();
  operationState = self->_operationState;
  [(MMCSOperationStateTimeRange *)self absoluteStart];
  duration = self->_duration;

  return [v3 descriptionWithOperationState:operationState absoluteStart:? duration:?];
}

+ (id)describedSortedRanges:(id)ranges
{
  rangesCopy = ranges;
  string = [MEMORY[0x277CCAB68] string];
  v6 = [rangesCopy count];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = 0.0;
    do
    {
      v10 = [rangesCopy objectAtIndexedSubscript:v8];
      v11 = v10;
      if (v8)
      {
        [v10 absoluteStart];
        if (v12 > v9)
        {
          [string appendString:@" "];
          [v11 absoluteStart];
          v14 = [self descriptionWithOperationState:2 absoluteStart:v9 duration:v13 - v9];
          [string appendString:v14];
        }

        [string appendString:@" "];
        v15 = [v11 description];
        [string appendString:v15];
      }

      else
      {
        v16 = [v10 description];
        [string appendString:v16];

        [v11 absoluteStop];
        v9 = v17;
      }

      ++v8;
    }

    while (v7 != v8);
  }

  return string;
}

- (double)absoluteStart
{
  startDate = [(MMCSOperationStateTimeRange *)self startDate];
  [startDate timeIntervalSinceReferenceDate];
  v4 = v3;

  return v4;
}

- (double)queueing
{
  result = 0.0;
  if (!self->_operationState)
  {
    return self->_duration;
  }

  return result;
}

- (double)executing
{
  result = 0.0;
  if (self->_operationState == 1)
  {
    return self->_duration;
  }

  return result;
}

- (int64_t)compareStartTime:(id)time
{
  timeCopy = time;
  [(MMCSOperationStateTimeRange *)self absoluteStart];
  v6 = v5;
  [timeCopy absoluteStart];
  v8 = v7;

  if (v6 < v8)
  {
    return -1;
  }

  else
  {
    return v6 > v8;
  }
}

- (int64_t)compareStopTime:(id)time
{
  timeCopy = time;
  [(MMCSOperationStateTimeRange *)self absoluteStop];
  v6 = v5;
  [timeCopy absoluteStop];
  v8 = v7;

  if (v6 < v8)
  {
    return -1;
  }

  else
  {
    return v6 > v8;
  }
}

- (double)absoluteStop
{
  [(MMCSOperationStateTimeRange *)self absoluteStart];
  v4 = v3;
  [(MMCSOperationStateTimeRange *)self duration];
  return v4 + v5;
}

- (double)relativeStart
{
  [(MMCSOperationStateTimeRange *)self absoluteStart];
  v3 = v2;
  mmcs_operation_metric_reference_time();
  return v3 - v4;
}

@end