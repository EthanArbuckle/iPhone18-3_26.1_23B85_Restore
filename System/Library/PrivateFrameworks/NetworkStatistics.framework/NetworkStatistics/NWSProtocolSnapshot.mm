@interface NWSProtocolSnapshot
+ (void)initialize;
- (double)_intervalWithContinuousTime:(unint64_t)time;
- (double)_referenceIntervalWithContinuousTime:(unint64_t)time;
- (id)_createNSUUIDForBytes:(unsigned __int8)bytes[16];
- (id)_dateWithContinuousTime:(unint64_t)time;
@end

@implementation NWSProtocolSnapshot

- (id)_createNSUUIDForBytes:(unsigned __int8)bytes[16]
{
  if (uuid_is_null(bytes))
  {
    v4 = 0;
  }

  else
  {
    v4 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:bytes];
  }

  return v4;
}

- (double)_intervalWithContinuousTime:(unint64_t)time
{
  LODWORD(v3) = timebase_info;
  LODWORD(v4) = *algn_280C54FC8;
  return time * v3 / v4 / 1000000000.0;
}

- (double)_referenceIntervalWithContinuousTime:(unint64_t)time
{
  v5 = 9;
  do
  {
    v6 = mach_continuous_time();
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v8 = v7;
    v9 = mach_continuous_time() - v6;
    [(NWSProtocolSnapshot *)self _intervalWithContinuousTime:v9];
  }

  while (v10 * 1000000.0 >= 50.0 && v5-- != 0);
  v12 = v6 + (v9 >> 1);
  if (v12 <= time)
  {
    [(NWSProtocolSnapshot *)self _intervalWithContinuousTime:time - v12];
    return v8 + v15;
  }

  else
  {
    [(NWSProtocolSnapshot *)self _intervalWithContinuousTime:v12 - time];
    return v8 - v13;
  }
}

- (id)_dateWithContinuousTime:(unint64_t)time
{
  v3 = MEMORY[0x277CBEAA8];
  [(NWSProtocolSnapshot *)self _referenceIntervalWithContinuousTime:time];

  return [v3 dateWithTimeIntervalSinceReferenceDate:?];
}

+ (void)initialize
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = self;
  _os_log_error_impl(&dword_25BA3A000, a2, OS_LOG_TYPE_ERROR, "mach_timebase_info failed %d", v3, 8u);
  v2 = *MEMORY[0x277D85DE8];
}

@end