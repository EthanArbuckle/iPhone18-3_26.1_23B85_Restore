@interface NDOUtilities
+ (id)dateWithEpochNumber:(id)number;
+ (unsigned)daysFromDate:(id)date;
@end

@implementation NDOUtilities

+ (id)dateWithEpochNumber:(id)number
{
  numberCopy = number;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    unsignedIntegerValue = [numberCopy unsignedIntegerValue];
    v5 = unsignedIntegerValue / 0x3E8;
    if (unsignedIntegerValue <= 0x2540BE400)
    {
      v5 = unsignedIntegerValue;
    }

    v6 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (unsigned)daysFromDate:(id)date
{
  v3 = MEMORY[0x277CBEBD0];
  dateCopy = date;
  standardUserDefaults = [v3 standardUserDefaults];
  v6 = [standardUserDefaults objectForKey:@"OneDayInterval"];
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

  [dateCopy timeIntervalSinceNow];
  v11 = v10;

  return vcvtpd_u64_f64(v11 / v9);
}

@end