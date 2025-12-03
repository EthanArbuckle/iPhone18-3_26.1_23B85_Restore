@interface EKTimeZone
+ (id)timeZoneWithNSTimeZone:(id)zone;
+ (id)timeZoneWithName:(id)name;
- (BOOL)isEqual:(id)equal;
- (EKTimeZone)initWithNSTimeZone:(id)zone;
- (double)nextDaylightSavingTimeTransitionAfterAbsoluteTime:(double)time;
- (double)secondsFromGMTForAbsoluteTime:(double)time;
- (id)description;
- (unint64_t)hash;
@end

@implementation EKTimeZone

+ (id)timeZoneWithName:(id)name
{
  nameCopy = name;
  if (nameCopy)
  {
    v5 = nameCopy;
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
      v6 = [[self alloc] initWithNSTimeZone:v7];
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

+ (id)timeZoneWithNSTimeZone:(id)zone
{
  name = [zone name];
  v5 = [self timeZoneWithName:name];

  return v5;
}

- (EKTimeZone)initWithNSTimeZone:(id)zone
{
  zoneCopy = zone;
  v9.receiver = self;
  v9.super_class = EKTimeZone;
  v6 = [(EKTimeZone *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_nsTimeZone, zone);
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    nsTimeZone = [equalCopy nsTimeZone];
    nsTimeZone2 = [(EKTimeZone *)self nsTimeZone];
    v7 = [nsTimeZone isEqual:nsTimeZone2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  nsTimeZone = [(EKTimeZone *)self nsTimeZone];
  v3 = [nsTimeZone hash];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  nsTimeZone = [(EKTimeZone *)self nsTimeZone];
  name = [nsTimeZone name];
  v7 = [v3 stringWithFormat:@"%@ <%p> {name = %@}", v4, self, name];

  return v7;
}

- (double)secondsFromGMTForAbsoluteTime:(double)time
{
  v4 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:time];
  nsTimeZone = [(EKTimeZone *)self nsTimeZone];
  v6 = [nsTimeZone secondsFromGMTForDate:v4];

  return v6;
}

- (double)nextDaylightSavingTimeTransitionAfterAbsoluteTime:(double)time
{
  v4 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:time];
  nsTimeZone = [(EKTimeZone *)self nsTimeZone];
  v6 = [nsTimeZone nextDaylightSavingTimeTransitionAfterDate:v4];

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