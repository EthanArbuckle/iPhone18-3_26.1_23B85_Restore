@interface MTStopwatchUtilities
+ (double)_timeAdjustedFor30fpsDisplay:(double)display;
+ (id)decodeStopwatchesFromDictionary:(id)dictionary;
+ (id)encodedDictionaryForStopwatches:(id)stopwatches;
@end

@implementation MTStopwatchUtilities

+ (id)encodedDictionaryForStopwatches:(id)stopwatches
{
  stopwatchesCopy = stopwatches;
  v4 = objc_opt_new();
  [v4 encodeObject:stopwatchesCopy forKey:@"MTStopwatches"];

  encodedDictionary = [v4 encodedDictionary];

  return encodedDictionary;
}

+ (id)decodeStopwatchesFromDictionary:(id)dictionary
{
  v15 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  objc_opt_class();
  v5 = dictionaryCopy;
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
      selfCopy = self;
      _os_log_impl(&dword_22D741000, v10, OS_LOG_TYPE_INFO, "%{public}@ decoding defaults could not generate dictionary", &v13, 0xCu);
    }

    v9 = MEMORY[0x277CBEBF8];
  }

  v11 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (double)_timeAdjustedFor30fpsDisplay:(double)display
{
  displayCopy = display;
  v4 = display * 1000.0;
  if (v4 <= 1.84467441e19)
  {
    v5 = _timeAdjustedFor30fpsDisplay__leastSignificantDigits[(121 * (v4 - 100 * ((v4 / 0x64) & 0x3FFFFFFF))) >> 12];
    v6 = arc4random_uniform(3u);
    v7 = displayCopy * 10.0;
    return ((100 * vcvtms_u32_f32(v7) + (10 * (v6 + v5))) | 1) / 1000.0;
  }

  return displayCopy;
}

@end