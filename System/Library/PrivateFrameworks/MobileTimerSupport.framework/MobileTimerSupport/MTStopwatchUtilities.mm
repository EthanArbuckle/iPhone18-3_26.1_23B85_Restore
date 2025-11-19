@interface MTStopwatchUtilities
+ (double)_timeAdjustedFor30fpsDisplay:(double)a3;
+ (id)decodeStopwatchesFromDictionary:(id)a3;
+ (id)encodedDictionaryForStopwatches:(id)a3;
@end

@implementation MTStopwatchUtilities

+ (id)encodedDictionaryForStopwatches:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 encodeObject:v3 forKey:@"MTStopwatches"];

  v5 = [v4 encodedDictionary];

  return v5;
}

+ (id)decodeStopwatchesFromDictionary:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  v5 = v4;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x277D29720]) initWithEncodedDictionary:v7];
    v9 = [v8 decodeObjectForKey:@"MTStopwatches"];
  }

  else
  {
    v10 = MTLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v13 = 138543362;
      v14 = a1;
      _os_log_impl(&dword_22D741000, v10, OS_LOG_TYPE_INFO, "%{public}@ decoding defaults could not generate dictionary", &v13, 0xCu);
    }

    v9 = MEMORY[0x277CBEBF8];
  }

  v11 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (double)_timeAdjustedFor30fpsDisplay:(double)a3
{
  v3 = a3;
  v4 = a3 * 1000.0;
  if (v4 <= 1.84467441e19)
  {
    v5 = _timeAdjustedFor30fpsDisplay__leastSignificantDigits[(121 * (v4 - 100 * ((v4 / 0x64) & 0x3FFFFFFF))) >> 12];
    v6 = arc4random_uniform(3u);
    v7 = v3 * 10.0;
    return ((100 * vcvtms_u32_f32(v7) + (10 * (v6 + v5))) | 1) / 1000.0;
  }

  return v3;
}

@end