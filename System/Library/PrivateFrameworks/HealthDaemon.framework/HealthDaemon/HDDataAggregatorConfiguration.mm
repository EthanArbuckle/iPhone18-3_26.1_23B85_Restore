@interface HDDataAggregatorConfiguration
+ (HDDataAggregatorConfiguration)configurationWithLatency:(double)a3 interval:(double)a4 seriesDuration:(double)a5 activeWorkout:(BOOL)a6 foregroundObserver:(BOOL)a7 backgroundObserver:(BOOL)a8;
- (BOOL)isEqual:(id)a3;
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

+ (HDDataAggregatorConfiguration)configurationWithLatency:(double)a3 interval:(double)a4 seriesDuration:(double)a5 activeWorkout:(BOOL)a6 foregroundObserver:(BOOL)a7 backgroundObserver:(BOOL)a8
{
  v14 = [HDDataAggregatorConfiguration alloc];
  if (v14)
  {
    v17.receiver = v14;
    v17.super_class = HDDataAggregatorConfiguration;
    v14 = objc_msgSendSuper2(&v17, sel_init);
    if (v14)
    {
      v14->_collectionLatency = fmax(a3, 0.0);
      v14->_aggregationInterval = fmax(a4, 0.0);
      if (a5 >= a4)
      {
        v15 = a5;
      }

      else
      {
        v15 = a4;
      }

      v14->_maximumSeriesDuration = v15;
      v14->_hasActiveWorkout = a6;
      v14->_hasForegroundObserver = a7;
      v14->_hasBackgroundObserver = a8;
    }
  }

  return v14;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && vabdd_f64(self->_collectionLatency, v4->_collectionLatency) < 2.22044605e-16 && vabdd_f64(self->_aggregationInterval, v4->_aggregationInterval) < 2.22044605e-16 && vabdd_f64(self->_maximumSeriesDuration, v4->_maximumSeriesDuration) < 2.22044605e-16 && self->_hasActiveWorkout == v4->_hasActiveWorkout && self->_hasForegroundObserver == v4->_hasForegroundObserver && self->_hasBackgroundObserver == v4->_hasBackgroundObserver;
  }

  return v5;
}

@end