@interface _CPLTimingStatistic
- (id)description;
- (void)updateWithDuration:(double)duration recordCount:(unint64_t)count error:(BOOL)error cancelled:(BOOL)cancelled;
@end

@implementation _CPLTimingStatistic

- (id)description
{
  if (self->_duration >= 1.0)
  {
    v4 = objc_alloc(MEMORY[0x1E696AD60]);
    v5 = [CPLDateFormatter stringForTimeInterval:self->_duration];
    v2 = objc_msgSend(v4, "initWithFormat:", @"%@ for %lu records (%lu batches"), v5, self->_recordCount, self->_batchCount;

    if (self->_errorCount)
    {
      [(__CFString *)v2 appendFormat:@" - %lu errors", self->_errorCount];
    }

    if (self->_cancelCount)
    {
      [(__CFString *)v2 appendFormat:@" - %lu cancels", self->_cancelCount];
    }

    [(__CFString *)v2 appendString:@""]);
  }

  else
  {
    v2 = @"insignificant";
  }

  return v2;
}

- (void)updateWithDuration:(double)duration recordCount:(unint64_t)count error:(BOOL)error cancelled:(BOOL)cancelled
{
  if (duration >= 0.0)
  {
    v6 = vdupq_n_s64(1uLL);
    v6.i64[0] = count;
    *&self->_recordCount = vaddq_s64(*&self->_recordCount, v6);
    if (error)
    {
      ++self->_errorCount;
    }

    if (cancelled)
    {
      ++self->_cancelCount;
    }

    self->_duration = self->_duration + duration;
  }
}

@end