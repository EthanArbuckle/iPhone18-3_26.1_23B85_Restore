@interface MSBackoffManager
- (BOOL)isEqual:(id)equal;
- (MSBackoffManager)initWithCoder:(id)coder;
- (MSBackoffManager)initWithInitialInterval:(double)interval backoffFactor:(double)factor randomizeFactor:(double)randomizeFactor maxBackoffInterval:(double)backoffInterval retryAfterDate:(id)date;
- (NSDate)nextExpiryDate;
- (id)copyParameters;
- (void)_complainAboutMissingKeyInArchive:(id)archive;
- (void)backoff;
- (void)didReceiveRetryAfterDate:(id)date;
- (void)encodeWithCoder:(id)coder;
- (void)reset;
- (void)setCurrentInterval:(double)interval;
- (void)setNextExpiryDate:(id)date;
@end

@implementation MSBackoffManager

- (MSBackoffManager)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = MSBackoffManager;
  v5 = [(MSBackoffManager *)&v18 init];
  if (v5)
  {
    if ([coderCopy containsValueForKey:@"initialInterval"])
    {
      [coderCopy decodeDoubleForKey:@"initialInterval"];
      v5->_initialInterval = v6;
    }

    else
    {
      [(MSBackoffManager *)v5 _complainAboutMissingKeyInArchive:@"initialInterval"];
    }

    if ([coderCopy containsValueForKey:@"backoffFactor"])
    {
      [coderCopy decodeDoubleForKey:@"backoffFactor"];
      v5->_backoffFactor = v7;
    }

    else
    {
      [(MSBackoffManager *)v5 _complainAboutMissingKeyInArchive:@"backoffFactor"];
    }

    if ([coderCopy containsValueForKey:@"randomizeFactor"])
    {
      [coderCopy decodeDoubleForKey:@"randomizeFactor"];
      v5->_randomizeFactor = v8;
    }

    else
    {
      [(MSBackoffManager *)v5 _complainAboutMissingKeyInArchive:@"randomizeFactor"];
    }

    if ([coderCopy containsValueForKey:@"maxBackoffInterval"])
    {
      [coderCopy decodeDoubleForKey:@"maxBackoffInterval"];
      v5->_maxBackoffInterval = v9;
    }

    else
    {
      [(MSBackoffManager *)v5 _complainAboutMissingKeyInArchive:@"maxBackoffInterval"];
    }

    if ([coderCopy containsValueForKey:@"currentInterval"])
    {
      [coderCopy decodeDoubleForKey:@"currentInterval"];
      v5->_currentInterval = v10;
    }

    else
    {
      [(MSBackoffManager *)v5 _complainAboutMissingKeyInArchive:@"currentInterval"];
    }

    if ([coderCopy containsValueForKey:@"nextExpiryDate"])
    {
      v11 = MEMORY[0x277CBEAA8];
      [coderCopy decodeDoubleForKey:@"nextExpiryDate"];
      v12 = [v11 dateWithTimeIntervalSinceReferenceDate:?];
      nextExpiryDate = v5->_nextExpiryDate;
      v5->_nextExpiryDate = v12;
    }

    if ([coderCopy containsValueForKey:@"retryAfterDate"])
    {
      v14 = MEMORY[0x277CBEAA8];
      [coderCopy decodeDoubleForKey:@"retryAfterDate"];
      v15 = [v14 dateWithTimeIntervalSinceReferenceDate:?];
      retryAfterDate = v5->_retryAfterDate;
      v5->_retryAfterDate = v15;
    }
  }

  return v5;
}

- (void)_complainAboutMissingKeyInArchive:(id)archive
{
  v10 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v6 = 138543618;
    selfCopy = self;
    v8 = 2114;
    archiveCopy = archive;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Missing key in archive: “%{public}@”.", &v6, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (id)copyParameters
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:self->_initialInterval];
  [dictionary setObject:v4 forKey:@"initialInterval"];

  v5 = [MEMORY[0x277CCABB0] numberWithDouble:self->_backoffFactor];
  [dictionary setObject:v5 forKey:@"backoffFactor"];

  v6 = [MEMORY[0x277CCABB0] numberWithDouble:self->_randomizeFactor];
  [dictionary setObject:v6 forKey:@"randomizeFactor"];

  v7 = [MEMORY[0x277CCABB0] numberWithDouble:self->_maxBackoffInterval];
  [dictionary setObject:v7 forKey:@"maxBackoffInterval"];

  v8 = [MEMORY[0x277CCABB0] numberWithDouble:self->_currentInterval];
  [dictionary setObject:v8 forKey:@"currentInterval"];

  nextExpiryDate = [(MSBackoffManager *)self nextExpiryDate];
  if (nextExpiryDate)
  {
    [dictionary setObject:nextExpiryDate forKey:@"nextExpiryDate"];
  }

  retryAfterDate = [(MSBackoffManager *)self retryAfterDate];
  if (retryAfterDate)
  {
    [dictionary setObject:retryAfterDate forKey:@"retryAfterDate"];
  }

  return dictionary;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeDouble:@"initialInterval" forKey:self->_initialInterval];
  [coderCopy encodeDouble:@"backoffFactor" forKey:self->_backoffFactor];
  [coderCopy encodeDouble:@"randomizeFactor" forKey:self->_randomizeFactor];
  [coderCopy encodeDouble:@"maxBackoffInterval" forKey:self->_maxBackoffInterval];
  [coderCopy encodeDouble:@"currentInterval" forKey:self->_currentInterval];
  nextExpiryDate = [(MSBackoffManager *)self nextExpiryDate];
  v5 = nextExpiryDate;
  if (nextExpiryDate)
  {
    [nextExpiryDate timeIntervalSinceReferenceDate];
    [coderCopy encodeDouble:@"nextExpiryDate" forKey:?];
  }

  retryAfterDate = [(MSBackoffManager *)self retryAfterDate];
  v7 = retryAfterDate;
  if (retryAfterDate)
  {
    [retryAfterDate timeIntervalSinceReferenceDate];
    [coderCopy encodeDouble:@"retryAfterDate" forKey:?];
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v18 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
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
        retryAfterDate = [(MSBackoffManager *)v5 retryAfterDate];
        v18 = [(NSDate *)retryAfterDate isEqual:retryAfterDate];
      }
    }

    else
    {
      v20.receiver = self;
      v20.super_class = MSBackoffManager;
      v18 = [(MSBackoffManager *)&v20 isEqual:equalCopy];
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

- (void)didReceiveRetryAfterDate:(id)date
{
  v12 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  retryAfterDate = [(MSBackoffManager *)self retryAfterDate];
  v6 = retryAfterDate;
  if (dateCopy)
  {
    if (retryAfterDate && [retryAfterDate compare:dateCopy] == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v8 = 138543618;
        v9 = dateCopy;
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
        v9 = dateCopy;
        v10 = 2114;
        v11 = v6;
        _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Setting retry-after date to %{public}@. Old retry-after date was %{public}@", &v8, 0x16u);
      }

      [(MSBackoffManager *)self setRetryAfterDate:dateCopy];
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  nextExpiryDate = selfCopy->_nextExpiryDate;
  if (nextExpiryDate)
  {
    distantPast = nextExpiryDate;
  }

  else
  {
    distantPast = [MEMORY[0x277CBEAA8] distantPast];
  }

  v5 = distantPast;
  retryAfterDate = [(MSBackoffManager *)selfCopy retryAfterDate];
  v7 = retryAfterDate;
  if (retryAfterDate && [retryAfterDate compare:v5] == 1)
  {
    v8 = v7;

    v5 = v8;
  }

  objc_sync_exit(selfCopy);

  return v5;
}

- (void)setNextExpiryDate:(id)date
{
  dateCopy = date;
  obj = self;
  objc_sync_enter(obj);
  nextExpiryDate = obj->_nextExpiryDate;
  obj->_nextExpiryDate = dateCopy;

  objc_sync_exit(obj);
}

- (void)setCurrentInterval:(double)interval
{
  if (self->_maxBackoffInterval <= interval)
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

- (MSBackoffManager)initWithInitialInterval:(double)interval backoffFactor:(double)factor randomizeFactor:(double)randomizeFactor maxBackoffInterval:(double)backoffInterval retryAfterDate:(id)date
{
  dateCopy = date;
  v17.receiver = self;
  v17.super_class = MSBackoffManager;
  v14 = [(MSBackoffManager *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_initialInterval = interval;
    v14->_backoffFactor = factor;
    v14->_randomizeFactor = randomizeFactor;
    v14->_maxBackoffInterval = backoffInterval;
    v14->_currentInterval = 0.0;
    objc_storeStrong(&v14->_retryAfterDate, date);
  }

  return v15;
}

@end