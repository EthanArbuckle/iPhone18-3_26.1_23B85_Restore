@interface NSDate(CDRound)
- (uint64_t)cd_dateWithCeilingForAlignment:()CDRound;
- (uint64_t)cd_dateWithCeilingForAlignment:()CDRound withOffset:inTimeZone:;
- (uint64_t)cd_dateWithFloorForAlignment:()CDRound;
- (uint64_t)cd_dateWithFloorForAlignment:()CDRound withOffset:inTimeZone:;
@end

@implementation NSDate(CDRound)

- (uint64_t)cd_dateWithFloorForAlignment:()CDRound
{
  v3 = MEMORY[0x1E695DF00];
  [self timeIntervalSinceReferenceDate];
  v5 = (v4 / a2 * a2);

  return [v3 dateWithTimeIntervalSinceReferenceDate:v5];
}

- (uint64_t)cd_dateWithCeilingForAlignment:()CDRound
{
  v3 = MEMORY[0x1E695DF00];
  [self timeIntervalSinceReferenceDate];
  v5 = v4 % a2;
  v6 = a2 - v5;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = (v6 + v4);

  return [v3 dateWithTimeIntervalSinceReferenceDate:v7];
}

- (uint64_t)cd_dateWithFloorForAlignment:()CDRound withOffset:inTimeZone:
{
  secondsFromGMT = [a5 secondsFromGMT];
  v9 = MEMORY[0x1E695DF00];
  [self timeIntervalSinceReferenceDate];
  v11 = v10 - fmod(v10 + secondsFromGMT - a3, a2);

  return [v9 dateWithTimeIntervalSinceReferenceDate:v11];
}

- (uint64_t)cd_dateWithCeilingForAlignment:()CDRound withOffset:inTimeZone:
{
  secondsFromGMT = [a5 secondsFromGMT];
  v9 = MEMORY[0x1E695DF00];
  [self timeIntervalSinceReferenceDate];
  v11 = v10;
  v12 = fmod(v10 + secondsFromGMT - a3, a2);
  if (v12 == 0.0)
  {
    v13 = v11;
  }

  else
  {
    v13 = v11 + a2 - v12;
  }

  return [v9 dateWithTimeIntervalSinceReferenceDate:v13];
}

@end