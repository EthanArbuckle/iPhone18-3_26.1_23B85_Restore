@interface EKTimeZone
+ (id)timeZoneWithNSTimeZone:(id)a3;
+ (id)timeZoneWithName:(id)a3;
- (BOOL)isEqual:(id)a3;
- (EKTimeZone)initWithNSTimeZone:(id)a3;
- (double)nextDaylightSavingTimeTransitionAfterAbsoluteTime:(double)a3;
- (double)secondsFromGMTForAbsoluteTime:(double)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation EKTimeZone

+ (id)timeZoneWithName:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = @"UTC";
  }

  pthread_mutex_lock(&sTimeZonesLock);
  if (!sTimeZones || ([sTimeZones objectForKey:v5], (v6 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v7 = [MEMORY[0x1E695DFE8] timeZoneWithName:v5];
    if (v7)
    {
      v6 = [[a1 alloc] initWithNSTimeZone:v7];
      if (v6)
      {
        v8 = sTimeZones;
        if (!sTimeZones)
        {
          v9 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:0];
          v10 = sTimeZones;
          sTimeZones = v9;

          v8 = sTimeZones;
        }

        [v8 setObject:v6 forKey:v5];
      }
    }

    else
    {
      v6 = 0;
    }
  }

  pthread_mutex_unlock(&sTimeZonesLock);

  return v6;
}

+ (id)timeZoneWithNSTimeZone:(id)a3
{
  v4 = [a3 name];
  v5 = [a1 timeZoneWithName:v4];

  return v5;
}

- (EKTimeZone)initWithNSTimeZone:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = EKTimeZone;
  v6 = [(EKTimeZone *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_nsTimeZone, a3);
  }

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 nsTimeZone];
    v6 = [(EKTimeZone *)self nsTimeZone];
    v7 = [v5 isEqual:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  v2 = [(EKTimeZone *)self nsTimeZone];
  v3 = [v2 hash];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(EKTimeZone *)self nsTimeZone];
  v6 = [v5 name];
  v7 = [v3 stringWithFormat:@"%@ <%p> {name = %@}", v4, self, v6];

  return v7;
}

- (double)secondsFromGMTForAbsoluteTime:(double)a3
{
  v4 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:a3];
  v5 = [(EKTimeZone *)self nsTimeZone];
  v6 = [v5 secondsFromGMTForDate:v4];

  return v6;
}

- (double)nextDaylightSavingTimeTransitionAfterAbsoluteTime:(double)a3
{
  v4 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:a3];
  v5 = [(EKTimeZone *)self nsTimeZone];
  v6 = [v5 nextDaylightSavingTimeTransitionAfterDate:v4];

  if (v6)
  {
    [v6 timeIntervalSinceReferenceDate];
    v8 = v7;
  }

  else
  {
    v8 = 1.79769313e308;
  }

  return v8;
}

@end