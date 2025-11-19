@interface MSBackoffManager
- (BOOL)isEqual:(id)a3;
- (MSBackoffManager)initWithCoder:(id)a3;
- (MSBackoffManager)initWithInitialInterval:(double)a3 backoffFactor:(double)a4 randomizeFactor:(double)a5 maxBackoffInterval:(double)a6 retryAfterDate:(id)a7;
- (NSDate)nextExpiryDate;
- (id)copyParameters;
- (void)_complainAboutMissingKeyInArchive:(id)a3;
- (void)backoff;
- (void)didReceiveRetryAfterDate:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)reset;
- (void)setCurrentInterval:(double)a3;
- (void)setNextExpiryDate:(id)a3;
@end

@implementation MSBackoffManager

- (MSBackoffManager)initWithCoder:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = MSBackoffManager;
  v5 = [(MSBackoffManager *)&v18 init];
  if (v5)
  {
    if ([v4 containsValueForKey:@"initialInterval"])
    {
      [v4 decodeDoubleForKey:@"initialInterval"];
      v5->_initialInterval = v6;
    }

    else
    {
      [(MSBackoffManager *)v5 _complainAboutMissingKeyInArchive:@"initialInterval"];
    }

    if ([v4 containsValueForKey:@"backoffFactor"])
    {
      [v4 decodeDoubleForKey:@"backoffFactor"];
      v5->_backoffFactor = v7;
    }

    else
    {
      [(MSBackoffManager *)v5 _complainAboutMissingKeyInArchive:@"backoffFactor"];
    }

    if ([v4 containsValueForKey:@"randomizeFactor"])
    {
      [v4 decodeDoubleForKey:@"randomizeFactor"];
      v5->_randomizeFactor = v8;
    }

    else
    {
      [(MSBackoffManager *)v5 _complainAboutMissingKeyInArchive:@"randomizeFactor"];
    }

    if ([v4 containsValueForKey:@"maxBackoffInterval"])
    {
      [v4 decodeDoubleForKey:@"maxBackoffInterval"];
      v5->_maxBackoffInterval = v9;
    }

    else
    {
      [(MSBackoffManager *)v5 _complainAboutMissingKeyInArchive:@"maxBackoffInterval"];
    }

    if ([v4 containsValueForKey:@"currentInterval"])
    {
      [v4 decodeDoubleForKey:@"currentInterval"];
      v5->_currentInterval = v10;
    }

    else
    {
      [(MSBackoffManager *)v5 _complainAboutMissingKeyInArchive:@"currentInterval"];
    }

    if ([v4 containsValueForKey:@"nextExpiryDate"])
    {
      v11 = MEMORY[0x277CBEAA8];
      [v4 decodeDoubleForKey:@"nextExpiryDate"];
      v12 = [v11 dateWithTimeIntervalSinceReferenceDate:?];
      nextExpiryDate = v5->_nextExpiryDate;
      v5->_nextExpiryDate = v12;
    }

    if ([v4 containsValueForKey:@"retryAfterDate"])
    {
      v14 = MEMORY[0x277CBEAA8];
      [v4 decodeDoubleForKey:@"retryAfterDate"];
      v15 = [v14 dateWithTimeIntervalSinceReferenceDate:?];
      retryAfterDate = v5->_retryAfterDate;
      v5->_retryAfterDate = v15;
    }
  }

  return v5;
}

- (void)_complainAboutMissingKeyInArchive:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v6 = 138543618;
    v7 = self;
    v8 = 2114;
    v9 = a3;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Missing key in archive: “%{public}@”.", &v6, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (id)copyParameters
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:self->_initialInterval];
  [v3 setObject:v4 forKey:@"initialInterval"];

  v5 = [MEMORY[0x277CCABB0] numberWithDouble:self->_backoffFactor];
  [v3 setObject:v5 forKey:@"backoffFactor"];

  v6 = [MEMORY[0x277CCABB0] numberWithDouble:self->_randomizeFactor];
  [v3 setObject:v6 forKey:@"randomizeFactor"];

  v7 = [MEMORY[0x277CCABB0] numberWithDouble:self->_maxBackoffInterval];
  [v3 setObject:v7 forKey:@"maxBackoffInterval"];

  v8 = [MEMORY[0x277CCABB0] numberWithDouble:self->_currentInterval];
  [v3 setObject:v8 forKey:@"currentInterval"];

  v9 = [(MSBackoffManager *)self nextExpiryDate];
  if (v9)
  {
    [v3 setObject:v9 forKey:@"nextExpiryDate"];
  }

  v10 = [(MSBackoffManager *)self retryAfterDate];
  if (v10)
  {
    [v3 setObject:v10 forKey:@"retryAfterDate"];
  }

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  [v8 encodeDouble:@"initialInterval" forKey:self->_initialInterval];
  [v8 encodeDouble:@"backoffFactor" forKey:self->_backoffFactor];
  [v8 encodeDouble:@"randomizeFactor" forKey:self->_randomizeFactor];
  [v8 encodeDouble:@"maxBackoffInterval" forKey:self->_maxBackoffInterval];
  [v8 encodeDouble:@"currentInterval" forKey:self->_currentInterval];
  v4 = [(MSBackoffManager *)self nextExpiryDate];
  v5 = v4;
  if (v4)
  {
    [v4 timeIntervalSinceReferenceDate];
    [v8 encodeDouble:@"nextExpiryDate" forKey:?];
  }

  v6 = [(MSBackoffManager *)self retryAfterDate];
  v7 = v6;
  if (v6)
  {
    [v6 timeIntervalSinceReferenceDate];
    [v8 encodeDouble:@"retryAfterDate" forKey:?];
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v18 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      initialInterval = self->_initialInterval;
      [(MSBackoffManager *)v5 initialInterval];
      if (vabdd_f64(initialInterval, v7) >= 2.22044605e-16)
      {
        goto LABEL_11;
      }

      backoffFactor = self->_backoffFactor;
      [(MSBackoffManager *)v5 backoffFactor];
      if (vabdd_f64(backoffFactor, v9) >= 2.22044605e-16 || (randomizeFactor = self->_randomizeFactor, [(MSBackoffManager *)v5 randomizeFactor], vabdd_f64(randomizeFactor, v11) >= 2.22044605e-16) || (maxBackoffInterval = self->_maxBackoffInterval, [(MSBackoffManager *)v5 maxBackoffInterval], vabdd_f64(maxBackoffInterval, v13) >= 2.22044605e-16) || (currentInterval = self->_currentInterval, [(MSBackoffManager *)v5 currentInterval], vabdd_f64(currentInterval, v15) >= 2.22044605e-16))
      {
LABEL_11:
        v18 = 0;
      }

      else
      {
        retryAfterDate = self->_retryAfterDate;
        v17 = [(MSBackoffManager *)v5 retryAfterDate];
        v18 = [(NSDate *)retryAfterDate isEqual:v17];
      }
    }

    else
    {
      v20.receiver = self;
      v20.super_class = MSBackoffManager;
      v18 = [(MSBackoffManager *)&v20 isEqual:v4];
    }
  }

  return v18;
}

- (void)backoff
{
  v17 = *MEMORY[0x277D85DE8];
  currentInterval = self->_currentInterval;
  if (currentInterval <= 0.0)
  {
    initialInterval = self->_initialInterval;
  }

  else
  {
    initialInterval = currentInterval * self->_backoffFactor;
  }

  randomizeFactor = self->_randomizeFactor;
  v6 = arc4random();
  if (initialInterval * (randomizeFactor * v6 / 4294967300.0 + 1.0) <= self->_maxBackoffInterval)
  {
    maxBackoffInterval = initialInterval * (randomizeFactor * v6 / 4294967300.0 + 1.0);
  }

  else
  {
    maxBackoffInterval = self->_maxBackoffInterval;
  }

  v8 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceNow:maxBackoffInterval];
  [(MSBackoffManager *)self setNextExpiryDate:v8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v10 = self->_currentInterval;
    v11 = 134218498;
    v12 = v10;
    v13 = 2048;
    v14 = maxBackoffInterval;
    v15 = 2114;
    v16 = v8;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Backing off. Old interval: %0.3lf sec, new interval: %0.3lf. Next fire date: %{public}@", &v11, 0x20u);
  }

  self->_currentInterval = maxBackoffInterval;
  [(MSBackoffManagerDelegate *)self->_delegate MSBackoffManagerDidUpdateNextExpiryDate:self];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)reset
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    *v3 = 0;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Backoff manager reset to zero seconds.", v3, 2u);
  }

  self->_currentInterval = 0.0;
  [(MSBackoffManager *)self setNextExpiryDate:0];
  [(MSBackoffManager *)self setRetryAfterDate:0];
  [(MSBackoffManagerDelegate *)self->_delegate MSBackoffManagerDidUpdateNextExpiryDate:self];
}

- (void)didReceiveRetryAfterDate:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(MSBackoffManager *)self retryAfterDate];
  v6 = v5;
  if (v4)
  {
    if (v5 && [v5 compare:v4] == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v8 = 138543618;
        v9 = v4;
        v10 = 2114;
        v11 = v6;
        _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Not resetting retry-after date, because the new date %{public}@ is not later than the existing date %{public}@", &v8, 0x16u);
      }
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v8 = 138543618;
        v9 = v4;
        v10 = 2114;
        v11 = v6;
        _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Setting retry-after date to %{public}@. Old retry-after date was %{public}@", &v8, 0x16u);
      }

      [(MSBackoffManager *)self setRetryAfterDate:v4];
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v8) = 0;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Not setting retry-after date because the new date is nil.", &v8, 2u);
  }

  [(MSBackoffManagerDelegate *)self->_delegate MSBackoffManagerDidUpdateNextExpiryDate:self];

  v7 = *MEMORY[0x277D85DE8];
}

- (NSDate)nextExpiryDate
{
  v2 = self;
  objc_sync_enter(v2);
  nextExpiryDate = v2->_nextExpiryDate;
  if (nextExpiryDate)
  {
    v4 = nextExpiryDate;
  }

  else
  {
    v4 = [MEMORY[0x277CBEAA8] distantPast];
  }

  v5 = v4;
  v6 = [(MSBackoffManager *)v2 retryAfterDate];
  v7 = v6;
  if (v6 && [v6 compare:v5] == 1)
  {
    v8 = v7;

    v5 = v8;
  }

  objc_sync_exit(v2);

  return v5;
}

- (void)setNextExpiryDate:(id)a3
{
  v4 = a3;
  obj = self;
  objc_sync_enter(obj);
  nextExpiryDate = obj->_nextExpiryDate;
  obj->_nextExpiryDate = v4;

  objc_sync_exit(obj);
}

- (void)setCurrentInterval:(double)a3
{
  if (self->_maxBackoffInterval <= a3)
  {
    maxBackoffInterval = self->_maxBackoffInterval;
  }

  else
  {
    maxBackoffInterval = 1.0;
  }

  self->_currentInterval = maxBackoffInterval;
  if (maxBackoffInterval <= 0.0)
  {
    self->_currentInterval = 0.0;

    [(MSBackoffManager *)self setNextExpiryDate:0];
  }

  else
  {
    v5 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceNow:self->_currentInterval];
    [(MSBackoffManager *)self setNextExpiryDate:v5];
  }
}

- (MSBackoffManager)initWithInitialInterval:(double)a3 backoffFactor:(double)a4 randomizeFactor:(double)a5 maxBackoffInterval:(double)a6 retryAfterDate:(id)a7
{
  v13 = a7;
  v17.receiver = self;
  v17.super_class = MSBackoffManager;
  v14 = [(MSBackoffManager *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_initialInterval = a3;
    v14->_backoffFactor = a4;
    v14->_randomizeFactor = a5;
    v14->_maxBackoffInterval = a6;
    v14->_currentInterval = 0.0;
    objc_storeStrong(&v14->_retryAfterDate, a7);
  }

  return v15;
}

@end