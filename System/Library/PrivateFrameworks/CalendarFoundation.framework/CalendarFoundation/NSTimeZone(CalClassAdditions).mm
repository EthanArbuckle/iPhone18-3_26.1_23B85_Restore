@interface NSTimeZone(CalClassAdditions)
- (id)descriptionForDate:()CalClassAdditions;
- (uint64_t)isUTC;
@end

@implementation NSTimeZone(CalClassAdditions)

- (uint64_t)isUTC
{
  v2 = [MEMORY[0x1E695DFE8] timeZoneWithName:@"UTC"];
  v3 = [self isEquivalentTo:v2];

  return v3;
}

- (id)descriptionForDate:()CalClassAdditions
{
  v4 = a3;
  if (v4)
  {
    name = [self name];
    v6 = [self abbreviationForDate:v4];
    v7 = [self secondsFromGMTForDate:v4];
    v8 = [self isDaylightSavingTimeForDate:v4];
    v9 = &stru_1F379FFA8;
    if (v8)
    {
      v9 = @" (Daylight)";
    }

    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ (%@) offset %ld%@", name, v6, v7, v9];
  }

  else
  {
    v10 = [self description];
  }

  return v10;
}

@end