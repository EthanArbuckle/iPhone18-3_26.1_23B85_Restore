@interface MBDurationEstimation
- (BOOL)shouldPeriodicUpdate;
- (BOOL)shouldUpdateWithProgress:(float)a3;
- (MBDurationEstimation)init;
- (double)_now;
- (double)_secondsRemainingWithProgress:(float)a3 now:(double)a4;
- (double)secondsRemaining;
- (float)progressAtLastUpdate;
- (unint64_t)minutesRemaining;
- (void)reset;
- (void)resetStartTime;
@end

@implementation MBDurationEstimation

- (double)_now
{
  v2 = +[NSDate date];
  [v2 timeIntervalSinceReferenceDate];
  v4 = v3;

  return v4;
}

- (MBDurationEstimation)init
{
  v5.receiver = self;
  v5.super_class = MBDurationEstimation;
  v2 = [(MBDurationEstimation *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_estimationHysteresis = 30.0;
    v2->_progressHysteresis = 0.05;
    [(MBDurationEstimation *)v2 reset];
  }

  return v3;
}

- (float)progressAtLastUpdate
{
  v2 = self;
  objc_sync_enter(v2);
  progressAtLastUpdate = v2->_progressAtLastUpdate;
  objc_sync_exit(v2);

  return progressAtLastUpdate;
}

- (void)reset
{
  [(MBDurationEstimation *)self _now];
  v4 = v3;
  obj = self;
  objc_sync_enter(obj);
  obj->_timeBegan = v4;
  obj->_currentEstimate = -1.0;
  *&obj->_estimateAtLastUpdate = xmmword_1002BA100;
  obj->_progressAtLastUpdate = 0.0;
  objc_sync_exit(obj);
}

- (void)resetStartTime
{
  [(MBDurationEstimation *)self _now];
  v4 = v3;
  obj = self;
  objc_sync_enter(obj);
  obj->_timeBegan = v4;
  objc_sync_exit(obj);
}

- (BOOL)shouldUpdateWithProgress:(float)a3
{
  [(MBDurationEstimation *)self _now];
  v6 = v5;
  v7 = self;
  objc_sync_enter(v7);
  *&v8 = a3;
  [(MBDurationEstimation *)v7 _secondsRemainingWithProgress:v8 now:v6];
  if ((a3 - v7->_progressAtLastUpdate) >= 0.001 || v9 >= 0.0 && (estimateAtLastUpdate = v7->_estimateAtLastUpdate, estimateAtLastUpdate >= 0.0) && vabdd_f64(v9, estimateAtLastUpdate) >= 60.0)
  {
    v7->_progressAtLastUpdate = a3;
    v7->_estimateAtLastUpdate = v9;
    v11 = 1;
  }

  else
  {
    v11 = 0;
  }

  objc_sync_exit(v7);

  return v11;
}

- (BOOL)shouldPeriodicUpdate
{
  [(MBDurationEstimation *)self _now];
  v4 = v3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = v4 - v5->_lastPeriodicUpdate;
  if (v6 > 15.0)
  {
    v5->_lastPeriodicUpdate = v4;
  }

  v7 = v6 > 15.0;
  objc_sync_exit(v5);

  return v7;
}

- (double)_secondsRemainingWithProgress:(float)a3 now:(double)a4
{
  if (self->_currentProgress + -0.01 <= a3)
  {
    timeBegan = self->_timeBegan;
  }

  else
  {
    self->_timeBegan = a4;
    self->_currentEstimate = -1.0;
    timeBegan = a4;
  }

  self->_currentProgress = a3;
  if (a3 > 0.0)
  {
    v5 = a4 - timeBegan;
    if (v5 > self->_estimationHysteresis || self->_progressHysteresis < a3)
    {
      self->_currentEstimate = (1.0 - a3) * (v5 / a3);
    }
  }

  return self->_currentEstimate;
}

- (double)secondsRemaining
{
  v2 = self;
  objc_sync_enter(v2);
  currentEstimate = v2->_currentEstimate;
  objc_sync_exit(v2);

  return currentEstimate;
}

- (unint64_t)minutesRemaining
{
  v2 = self;
  objc_sync_enter(v2);
  currentEstimate = v2->_currentEstimate;
  if (currentEstimate < 0.0)
  {
    objc_sync_exit(v2);

    return -1;
  }

  else
  {
    smoothEstimate = v2->_smoothEstimate;
    if (currentEstimate >= 1.0 || smoothEstimate >= 0.0)
    {
      if (smoothEstimate >= 0.0)
      {
        currentEstimate = smoothEstimate * 0.8 + currentEstimate * 0.2;
      }

      v2->_smoothEstimate = currentEstimate;
    }

    objc_sync_exit(v2);

    if (currentEstimate <= 60.0)
    {
      return 1;
    }

    else
    {
      if (currentEstimate - (60 * (currentEstimate / 60.0)) >= 40.0)
      {
        v5 = currentEstimate + 20.0;
      }

      else
      {
        v5 = currentEstimate;
      }

      if ((v5 / 60.0) <= 1)
      {
        return 1;
      }

      else
      {
        return (v5 / 60.0);
      }
    }
  }
}

@end