@interface _CPLTimingStatistic
- (id)description;
- (void)updateWithDuration:(double)a3 recordCount:(unint64_t)a4 error:(BOOL)a5 cancelled:(BOOL)a6;
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

- (void)updateWithDuration:(double)a3 recordCount:(unint64_t)a4 error:(BOOL)a5 cancelled:(BOOL)a6
{
  if (a3 >= 0.0)
  {
    v6 = vdupq_n_s64(1uLL);
    v6.i64[0] = a4;
    *&self->_recordCount = vaddq_s64(*&self->_recordCount, v6);
    if (a5)
    {
      ++self->_errorCount;
    }

    if (a6)
    {
      ++self->_cancelCount;
    }

    self->_duration = self->_duration + a3;
  }
}

@end