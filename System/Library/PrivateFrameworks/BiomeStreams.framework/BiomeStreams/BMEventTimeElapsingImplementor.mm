@interface BMEventTimeElapsingImplementor
- (BMEventTimeElapsingImplementor)init;
- (BOOL)isCompleteWithContext:(id)context error:(id *)error;
- (BOOL)isValidWithContext:(id)context error:(id *)error;
- (NSDateInterval)dateInterval;
- (void)setDateInterval:(id)interval;
@end

@implementation BMEventTimeElapsingImplementor

- (BMEventTimeElapsingImplementor)init
{
  v5.receiver = self;
  v5.super_class = BMEventTimeElapsingImplementor;
  v2 = [(BMEventBase *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(BMEventTimeElapsingImplementor *)v2 setAbsoluteTimestamp:0.0];
    [(BMEventTimeElapsingImplementor *)v3 setDuration:0.0];
  }

  return v3;
}

- (NSDateInterval)dateInterval
{
  v3 = objc_alloc(MEMORY[0x1E696AB80]);
  v4 = MEMORY[0x1E695DF00];
  [(BMEventTimeElapsingImplementor *)self absoluteTimestamp];
  v5 = [v4 dateWithTimeIntervalSinceReferenceDate:?];
  [(BMEventTimeElapsingImplementor *)self duration];
  v6 = [v3 initWithStartDate:v5 duration:?];

  return v6;
}

- (void)setDateInterval:(id)interval
{
  intervalCopy = interval;
  startDate = [intervalCopy startDate];
  [startDate timeIntervalSinceReferenceDate];
  [(BMEventTimeElapsingImplementor *)self setAbsoluteTimestamp:?];

  [intervalCopy duration];
  v7 = v6;

  [(BMEventTimeElapsingImplementor *)self setDuration:v7];
}

- (BOOL)isValidWithContext:(id)context error:(id *)error
{
  contextCopy = context;
  [(BMEventTimeElapsingImplementor *)self absoluteTimestamp];
  v7 = v6 > 0.0;
  previousEvent = [contextCopy previousEvent];

  [(BMEventTimeElapsingImplementor *)self absoluteTimestamp];
  v10 = v9;
  dateInterval = [previousEvent dateInterval];
  endDate = [dateInterval endDate];
  [endDate timeIntervalSinceReferenceDate];
  v14 = v10 >= v13 && v7;

  if (!v14)
  {
    v15 = __biome_log_for_category();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [BMEventTimeElapsingImplementor isValidWithContext:v15 error:?];
    }
  }

  return v14;
}

- (BOOL)isCompleteWithContext:(id)context error:(id *)error
{
  v5 = [(BMEventTimeElapsingImplementor *)self isValidWithContext:context error:error];
  [(BMEventTimeElapsingImplementor *)self duration];
  return v6 > 0.0 && v5;
}

@end