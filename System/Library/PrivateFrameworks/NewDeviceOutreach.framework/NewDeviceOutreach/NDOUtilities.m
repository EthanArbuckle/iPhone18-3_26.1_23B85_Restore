@interface NDOUtilities
+ (id)dateWithEpochNumber:(id)a3;
+ (unsigned)daysFromDate:(id)a3;
@end

@implementation NDOUtilities

+ (id)dateWithEpochNumber:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 unsignedIntegerValue];
    v5 = v4 / 0x3E8;
    if (v4 <= 0x2540BE400)
    {
      v5 = v4;
    }

    v6 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (unsigned)daysFromDate:(id)a3
{
  v3 = MEMORY[0x277CBEBD0];
  v4 = a3;
  v5 = [v3 standardUserDefaults];
  v6 = [v5 objectForKey:@"OneDayInterval"];
  [v6 doubleValue];
  v8 = v7;

  if (v8 <= 0.0)
  {
    v9 = 86400.0;
  }

  else
  {
    v9 = v8;
  }

  [v4 timeIntervalSinceNow];
  v11 = v10;

  return vcvtpd_u64_f64(v11 / v9);
}

@end