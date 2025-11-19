@interface _RateLimiter
- (_RateLimiter)initWithRate:(unint64_t)a3;
- (unint64_t)_now_micro_seconds;
- (void)_doWait:(unint64_t)a3;
- (void)wait;
@end

@implementation _RateLimiter

- (_RateLimiter)initWithRate:(unint64_t)a3
{
  v7.receiver = self;
  v7.super_class = _RateLimiter;
  v4 = [(_RateLimiter *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_rate = a3;
    v4->_totalBytes = 0;
    v4->_startTime = [(_RateLimiter *)v4 _now_micro_seconds];
  }

  return v5;
}

- (void)wait
{
  v3 = [(_RateLimiter *)self _now_micro_seconds];
  v4 = 1000000 * self->_totalBytes / self->_rate + self->_startTime;
  v5 = v4 - v3;
  if (v4 > v3)
  {
    v6 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = 134217984;
      v8 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Sync session waiting for %llu microseconds", &v7, 0xCu);
    }

    [(_RateLimiter *)self _doWait:v5];
  }
}

- (unint64_t)_now_micro_seconds
{
  v4.tv_sec = 0;
  *&v4.tv_usec = 0;
  v3 = 0;
  gettimeofday(&v4, &v3);
  return v4.tv_usec + 1000000 * v4.tv_sec;
}

- (void)_doWait:(unint64_t)a3
{
  __rqtp.tv_sec = a3 / 1000000;
  __rqtp.tv_nsec = 1000 * (a3 % 0xF4240);
    ;
  }
}

@end