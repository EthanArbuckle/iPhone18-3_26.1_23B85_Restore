@interface NWSProtocolSnapshot
+ (void)initialize;
- (double)_intervalWithContinuousTime:(unint64_t)a3;
- (double)_referenceIntervalWithContinuousTime:(unint64_t)a3;
- (id)_createNSUUIDForBytes:(unsigned __int8)a3[16];
- (id)_dateWithContinuousTime:(unint64_t)a3;
@end

@implementation NWSProtocolSnapshot

- (id)_createNSUUIDForBytes:(unsigned __int8)a3[16]
{
  if (uuid_is_null(a3))
  {
    v4 = 0;
  }

  else
  {
    v4 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:a3];
  }

  return v4;
}

- (double)_intervalWithContinuousTime:(unint64_t)a3
{
  LODWORD(v3) = timebase_info;
  LODWORD(v4) = *algn_280C54FC8;
  return a3 * v3 / v4 / 1000000000.0;
}

- (double)_referenceIntervalWithContinuousTime:(unint64_t)a3
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
  if (v12 <= a3)
  {
    [(NWSProtocolSnapshot *)self _intervalWithContinuousTime:a3 - v12];
    return v8 + v15;
  }

  else
  {
    [(NWSProtocolSnapshot *)self _intervalWithContinuousTime:v12 - a3];
    return v8 - v13;
  }
}

- (id)_dateWithContinuousTime:(unint64_t)a3
{
  v3 = MEMORY[0x277CBEAA8];
  [(NWSProtocolSnapshot *)self _referenceIntervalWithContinuousTime:a3];

  return [v3 dateWithTimeIntervalSinceReferenceDate:?];
}

+ (void)initialize
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_error_impl(&dword_25BA3A000, a2, OS_LOG_TYPE_ERROR, "mach_timebase_info failed %d", v3, 8u);
  v2 = *MEMORY[0x277D85DE8];
}

@end