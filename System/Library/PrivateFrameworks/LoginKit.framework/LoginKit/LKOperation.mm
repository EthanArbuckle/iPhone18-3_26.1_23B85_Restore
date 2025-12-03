@interface LKOperation
- (LKOperation)init;
- (id)dictionary;
- (void)setDuration:(double)duration;
- (void)setEndTime:(id)time;
- (void)setStartTime:(id)time;
@end

@implementation LKOperation

- (LKOperation)init
{
  v7.receiver = self;
  v7.super_class = LKOperation;
  v2 = [(LKOperation *)&v7 init];
  v3 = v2;
  if (v2)
  {
    startTime = v2->_startTime;
    v2->_startTime = 0;

    endTime = v3->_endTime;
    v3->_endTime = 0;

    v3->_duration = 0.0;
  }

  return v3;
}

- (void)setStartTime:(id)time
{
  timeCopy = time;
  startTime = self->_startTime;
  p_startTime = &self->_startTime;
  if (startTime != timeCopy)
  {
    v8 = timeCopy;
    objc_storeStrong(p_startTime, time);
    timeCopy = v8;
  }
}

- (void)setEndTime:(id)time
{
  timeCopy = time;
  endTime = self->_endTime;
  p_endTime = &self->_endTime;
  if (endTime != timeCopy)
  {
    v8 = timeCopy;
    objc_storeStrong(p_endTime, time);
    timeCopy = v8;
  }
}

- (void)setDuration:(double)duration
{
  if (self->_duration != duration)
  {
    self->_duration = duration;
  }
}

- (id)dictionary
{
  v3 = objc_opt_new();
  v4 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v4 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss.SSS"];
  startTime = [(LKOperation *)self startTime];
  v6 = [v4 stringFromDate:startTime];
  if (v6)
  {
    [v3 setObject:v6 forKeyedSubscript:@"startTime"];
  }

  else
  {
    v7 = objc_opt_new();
    [v3 setObject:v7 forKeyedSubscript:@"startTime"];
  }

  endTime = [(LKOperation *)self endTime];
  v9 = [v4 stringFromDate:endTime];
  if (v9)
  {
    [v3 setObject:v9 forKeyedSubscript:@"endTime"];
  }

  else
  {
    v10 = objc_opt_new();
    [v3 setObject:v10 forKeyedSubscript:@"endTime"];
  }

  v11 = MEMORY[0x277CCABB0];
  [(LKOperation *)self duration];
  v12 = [v11 numberWithDouble:?];
  notANumber = [MEMORY[0x277CCA980] notANumber];
  v14 = [v12 isEqualToNumber:notANumber];

  if (v14)
  {
    v15 = objc_opt_new();
    [v3 setObject:v15 forKeyedSubscript:@"duration"];
  }

  else
  {
    [v3 setObject:v12 forKeyedSubscript:@"duration"];
  }

  v16 = [v3 copy];

  return v16;
}

@end