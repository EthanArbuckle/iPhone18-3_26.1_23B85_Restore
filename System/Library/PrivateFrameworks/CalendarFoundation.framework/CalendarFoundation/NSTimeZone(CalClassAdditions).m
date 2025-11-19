@interface NSTimeZone(CalClassAdditions)
- (id)descriptionForDate:()CalClassAdditions;
- (uint64_t)isUTC;
@end

@implementation NSTimeZone(CalClassAdditions)

- (uint64_t)isUTC
{
  v2 = [MEMORY[0x1E695DFE8] timeZoneWithName:@"UTC"];
  v3 = [a1 isEquivalentTo:v2];

  return v3;
}

- (id)descriptionForDate:()CalClassAdditions
{
  v4 = a3;
  if (v4)
  {
    v5 = [a1 name];
    v6 = [a1 abbreviationForDate:v4];
    v7 = [a1 secondsFromGMTForDate:v4];
    v8 = [a1 isDaylightSavingTimeForDate:v4];
    v9 = &stru_1F379FFA8;
    if (v8)
    {
      v9 = @" (Daylight)";
    }

    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ (%@) offset %ld%@", v5, v6, v7, v9];
  }

  else
  {
    v10 = [a1 description];
  }

  return v10;
}

@end