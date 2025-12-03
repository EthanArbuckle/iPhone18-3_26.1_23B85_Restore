@interface _CDPerfMetric
- (NSDate)lastUpdate;
- (_CDPerfMetric)initWithName:(id)name string:(id)string family:(id)family;
- (_CDPerfMetricFamily)family;
- (double)averageElapsedTime;
- (double)lastElapsedTime;
- (double)maximumElapsedTime;
- (double)minimumElapsedTime;
- (unint64_t)count;
- (unint64_t)errorCount;
- (unint64_t)lastResultCount;
@end

@implementation _CDPerfMetric

- (_CDPerfMetric)initWithName:(id)name string:(id)string family:(id)family
{
  nameCopy = name;
  stringCopy = string;
  familyCopy = family;
  v15.receiver = self;
  v15.super_class = _CDPerfMetric;
  v12 = [(_CDPerfMetric *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v12->_name, name);
    objc_storeStrong(&v13->_string, string);
    objc_storeWeak(&v13->_family, familyCopy);
  }

  return v13;
}

- (unint64_t)count
{
  os_unfair_lock_lock(&self->_lock);
  count = self->_count;
  os_unfair_lock_unlock(&self->_lock);
  return count;
}

- (double)lastElapsedTime
{
  os_unfair_lock_lock(&self->_lock);
  lastElapsedTime = self->_lastElapsedTime;
  os_unfair_lock_unlock(&self->_lock);
  return lastElapsedTime;
}

- (double)minimumElapsedTime
{
  os_unfair_lock_lock(&self->_lock);
  minimumElapsedTime = self->_minimumElapsedTime;
  os_unfair_lock_unlock(&self->_lock);
  return minimumElapsedTime;
}

- (double)maximumElapsedTime
{
  os_unfair_lock_lock(&self->_lock);
  maximumElapsedTime = self->_maximumElapsedTime;
  os_unfair_lock_unlock(&self->_lock);
  return maximumElapsedTime;
}

- (double)averageElapsedTime
{
  os_unfair_lock_lock(&self->_lock);
  count = self->_count;
  if (count)
  {
    v4 = self->_totalElapsedTime / count;
  }

  else
  {
    v4 = 0.0;
  }

  os_unfair_lock_unlock(&self->_lock);
  return v4;
}

- (NSDate)lastUpdate
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:self->_lastUpdateTime];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (unint64_t)lastResultCount
{
  os_unfair_lock_lock(&self->_lock);
  lastResultCount = self->_lastResultCount;
  os_unfair_lock_unlock(&self->_lock);
  return lastResultCount;
}

- (unint64_t)errorCount
{
  os_unfair_lock_lock(&self->_lock);
  errorCount = self->_errorCount;
  os_unfair_lock_unlock(&self->_lock);
  return errorCount;
}

- (_CDPerfMetricFamily)family
{
  WeakRetained = objc_loadWeakRetained(&self->_family);

  return WeakRetained;
}

@end