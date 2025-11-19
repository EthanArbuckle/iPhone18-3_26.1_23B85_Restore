@interface IDSCountdown
- (BOOL)_criticalIsCountingDown;
- (BOOL)isCountingDown;
- (BOOL)startCountingDown;
- (IDSCountdown)initWithTimeInterval:(double)a3;
- (void)dealloc;
@end

@implementation IDSCountdown

- (void)dealloc
{
  pthread_mutex_destroy(&self->_startDateMutex);
  v3.receiver = self;
  v3.super_class = IDSCountdown;
  [(IDSCountdown *)&v3 dealloc];
}

- (IDSCountdown)initWithTimeInterval:(double)a3
{
  v7.receiver = self;
  v7.super_class = IDSCountdown;
  v4 = [(IDSCountdown *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_timeInterval = a3;
    pthread_mutex_init(&v4->_startDateMutex, 0);
  }

  return v5;
}

- (BOOL)startCountingDown
{
  pthread_mutex_lock(&self->_startDateMutex);
  v3 = [(IDSCountdown *)self _criticalIsCountingDown];
  if ((v3 & 1) == 0)
  {
    v4 = objc_alloc_init(NSDate);
    startDate = self->_startDate;
    self->_startDate = v4;
  }

  pthread_mutex_unlock(&self->_startDateMutex);
  return v3 ^ 1;
}

- (BOOL)isCountingDown
{
  pthread_mutex_lock(&self->_startDateMutex);
  v3 = [(IDSCountdown *)self _criticalIsCountingDown];
  pthread_mutex_unlock(&self->_startDateMutex);
  return v3;
}

- (BOOL)_criticalIsCountingDown
{
  p_startDate = &self->_startDate;
  if (self->_startDate)
  {
    v4 = +[NSDate date];
    [v4 timeIntervalSinceDate:self->_startDate];
    v6 = v5;

    timeInterval = self->_timeInterval;
    v8 = timeInterval - v6 > 2.22044605e-16 && timeInterval - v6 <= timeInterval;
    if (v8)
    {
      v9 = *p_startDate;
    }

    else
    {
      v9 = 0;
    }

    objc_storeStrong(p_startDate, v9);
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

@end