@interface MBDurationEstimation
- (BOOL)shouldPeriodicUpdate;
- (BOOL)shouldUpdateWithProgress:(float)progress;
- (MBDurationEstimation)init;
- (double)_now;
- (double)_secondsRemainingWithProgress:(float)progress now:(double)now;
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  progressAtLastUpdate = selfCopy->_progressAtLastUpdate;
  objc_sync_exit(selfCopy);

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

- (BOOL)shouldUpdateWithProgress:(float)progress
{
  [(MBDurationEstimation *)self _now];
  v6 = v5;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  *&v8 = progress;
  [(MBDurationEstimation *)selfCopy _secondsRemainingWithProgress:v8 now:v6];
  if ((progress - selfCopy->_progressAtLastUpdate) >= 0.001 || v9 >= 0.0 && (estimateAtLastUpdate = selfCopy->_estimateAtLastUpdate, estimateAtLastUpdate >= 0.0) && vabdd_f64(v9, estimateAtLastUpdate) >= 60.0)
  {
    selfCopy->_progressAtLastUpdate = progress;
    selfCopy->_estimateAtLastUpdate = v9;
    v11 = 1;
  }

  else
  {
    v11 = 0;
  }

  objc_sync_exit(selfCopy);

  return v11;
}

- (BOOL)shouldPeriodicUpdate
{
  [(MBDurationEstimation *)self _now];
  v4 = v3;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = v4 - selfCopy->_lastPeriodicUpdate;
  if (v6 > 15.0)
  {
    selfCopy->_lastPeriodicUpdate = v4;
  }

  v7 = v6 > 15.0;
  objc_sync_exit(selfCopy);

  return v7;
}

- (double)_secondsRemainingWithProgress:(float)progress now:(double)now
{
  if (self->_currentProgress + -0.01 <= progress)
  {
    timeBegan = self->_timeBegan;
  }

  else
  {
    self->_timeBegan = now;
    self->_currentEstimate = -1.0;
    timeBegan = now;
  }

  self->_currentProgress = progress;
  if (progress > 0.0)
  {
    v5 = now - timeBegan;
    if (v5 > self->_estimationHysteresis || self->_progressHysteresis < progress)
    {
      self->_currentEstimate = (1.0 - progress) * (v5 / progress);
    }
  }

  return self->_currentEstimate;
}

- (double)secondsRemaining
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  currentEstimate = selfCopy->_currentEstimate;
  objc_sync_exit(selfCopy);

  return currentEstimate;
}

- (unint64_t)minutesRemaining
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  currentEstimate = selfCopy->_currentEstimate;
  if (currentEstimate < 0.0)
  {
    objc_sync_exit(selfCopy);

    return -1;
  }

  else
  {
    smoothEstimate = selfCopy->_smoothEstimate;
    if (currentEstimate >= 1.0 || smoothEstimate >= 0.0)
    {
      if (smoothEstimate >= 0.0)
      {
        currentEstimate = smoothEstimate * 0.8 + currentEstimate * 0.2;
      }

      selfCopy->_smoothEstimate = currentEstimate;
    }

    objc_sync_exit(selfCopy);

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