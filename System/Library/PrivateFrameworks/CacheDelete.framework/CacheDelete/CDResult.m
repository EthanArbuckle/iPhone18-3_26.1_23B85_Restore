@interface CDResult
- (CDResult)init;
- (double)duration;
- (void)finish;
@end

@implementation CDResult

- (CDResult)init
{
  v4.receiver = self;
  v4.super_class = CDResult;
  v2 = [(CDResult *)&v4 init];
  if (v2)
  {
    v2->_monotonicBegin = mach_absolute_time();
  }

  return v2;
}

- (void)finish
{
  [(CDResult *)self setMonotonicEnd:mach_absolute_time()];
  [(CDResult *)self setSuccess:1];

  [(CDResult *)self setFinished:1];
}

- (double)duration
{
  if (![(CDResult *)self finished])
  {
    return INFINITY;
  }

  v3 = [(CDResult *)self monotonicBegin];
  v4 = [(CDResult *)self monotonicEnd];
  if (_MergedGlobals_12 != -1)
  {
    dispatch_once(&_MergedGlobals_12, &__block_literal_global_2);
  }

  return ((v4 - v3) * dword_10006E288 / *algn_10006E28C) / 1000000000.0;
}

@end