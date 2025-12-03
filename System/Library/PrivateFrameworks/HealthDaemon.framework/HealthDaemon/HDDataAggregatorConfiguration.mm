@interface HDDataAggregatorConfiguration
+ (HDDataAggregatorConfiguration)configurationWithLatency:(double)latency interval:(double)interval seriesDuration:(double)duration activeWorkout:(BOOL)workout foregroundObserver:(BOOL)observer backgroundObserver:(BOOL)backgroundObserver;
- (BOOL)isEqual:(id)equal;
- (id)description;
@end

@implementation HDDataAggregatorConfiguration

- (id)description
{
  v2 = "no";
  if (self->_hasActiveWorkout)
  {
    v3 = "YES";
  }

  else
  {
    v3 = "no";
  }

  if (self->_hasForegroundObserver)
  {
    v4 = "YES";
  }

  else
  {
    v4 = "no";
  }

  if (self->_hasBackgroundObserver)
  {
    v2 = "YES";
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"<Interval: %0.1lfs, Latency: %0.1lfs, Duration: %0.1lfs, Workout: %s, Foreground: %s, Background: %s>", *&self->_aggregationInterval, *&self->_collectionLatency, *&self->_maximumSeriesDuration, v3, v4, v2];
}

+ (HDDataAggregatorConfiguration)configurationWithLatency:(double)latency interval:(double)interval seriesDuration:(double)duration activeWorkout:(BOOL)workout foregroundObserver:(BOOL)observer backgroundObserver:(BOOL)backgroundObserver
{
  v14 = [HDDataAggregatorConfiguration alloc];
  if (v14)
  {
    v17.receiver = v14;
    v17.super_class = HDDataAggregatorConfiguration;
    v14 = objc_msgSendSuper2(&v17, sel_init);
    if (v14)
    {
      v14->_collectionLatency = fmax(latency, 0.0);
      v14->_aggregationInterval = fmax(interval, 0.0);
      if (duration >= interval)
      {
        intervalCopy = duration;
      }

      else
      {
        intervalCopy = interval;
      }

      v14->_maximumSeriesDuration = intervalCopy;
      v14->_hasActiveWorkout = workout;
      v14->_hasForegroundObserver = observer;
      v14->_hasBackgroundObserver = backgroundObserver;
    }
  }

  return v14;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && vabdd_f64(self->_collectionLatency, equalCopy->_collectionLatency) < 2.22044605e-16 && vabdd_f64(self->_aggregationInterval, equalCopy->_aggregationInterval) < 2.22044605e-16 && vabdd_f64(self->_maximumSeriesDuration, equalCopy->_maximumSeriesDuration) < 2.22044605e-16 && self->_hasActiveWorkout == equalCopy->_hasActiveWorkout && self->_hasForegroundObserver == equalCopy->_hasForegroundObserver && self->_hasBackgroundObserver == equalCopy->_hasBackgroundObserver;
  }

  return v5;
}

@end