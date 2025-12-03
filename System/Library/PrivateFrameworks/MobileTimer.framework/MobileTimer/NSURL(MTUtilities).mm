@interface NSURL(MTUtilities)
+ (__CFString)schemeForSection:()MTUtilities;
+ (id)mtURLForClockAppSection:()MTUtilities timerManager:;
+ (id)mtURLForScheme:()MTUtilities;
+ (id)mtURLForSection:()MTUtilities;
- (id)mtID;
- (uint64_t)mtClockAppSection;
- (uint64_t)mtIsForLastTimer;
- (uint64_t)mtIsList;
@end

@implementation NSURL(MTUtilities)

+ (id)mtURLForClockAppSection:()MTUtilities timerManager:
{
  v6 = a4;
  v7 = objc_opt_new();
  v8 = v7;
  if (a3 > 1)
  {
    switch(a3)
    {
      case 2:
        v11 = @"clock-sleep-alarm";
        goto LABEL_11;
      case 3:
        v11 = @"clock-stopwatch";
        goto LABEL_11;
      case 4:
        currentTimer = [v6 currentTimer];
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __59__NSURL_MTUtilities__mtURLForClockAppSection_timerManager___block_invoke;
        v15[3] = &unk_1E7B0CDC0;
        v16 = v8;
        v10 = [currentTimer addSuccessBlock:v15];

        goto LABEL_12;
    }

    goto LABEL_8;
  }

  if (a3 != 1)
  {
LABEL_8:
    v11 = @"clock-worldclock";
    goto LABEL_11;
  }

  v11 = @"clock-alarm";
LABEL_11:
  [v7 finishWithResult:v11];
LABEL_12:
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __59__NSURL_MTUtilities__mtURLForClockAppSection_timerManager___block_invoke_2;
  v14[3] = &__block_descriptor_40_e28___NAFuture_16__0__NSString_8l;
  v14[4] = self;
  v12 = [v8 flatMap:v14];

  return v12;
}

+ (id)mtURLForScheme:()MTUtilities
{
  v3 = MEMORY[0x1E695DFF8];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:%@", a3, @"default"];
  v5 = [v3 URLWithString:v4];

  return v5;
}

+ (id)mtURLForSection:()MTUtilities
{
  v1 = MEMORY[0x1E695DFF8];
  v2 = MEMORY[0x1E696AEC0];
  v3 = [self schemeForSection:?];
  v4 = [v2 stringWithFormat:@"%@:%@", v3, @"default"];
  v5 = [v1 URLWithString:v4];

  return v5;
}

+ (__CFString)schemeForSection:()MTUtilities
{
  if ((a3 - 1) > 3)
  {
    return @"clock-worldclock";
  }

  else
  {
    return off_1E7B0E940[a3 - 1];
  }
}

- (uint64_t)mtClockAppSection
{
  scheme = [self scheme];
  if ([scheme isEqualToString:@"clock-worldclock"])
  {
    v2 = 0;
  }

  else if ([scheme isEqualToString:@"clock-alarm"])
  {
    v2 = 1;
  }

  else if ([scheme isEqualToString:@"clock-sleep-alarm"])
  {
    v2 = 2;
  }

  else if ([scheme isEqualToString:@"clock-stopwatch"])
  {
    v2 = 3;
  }

  else if (([scheme isEqualToString:@"clock-timer"] & 1) != 0 || objc_msgSend(scheme, "isEqualToString:", @"clock-timer-running"))
  {
    v2 = 4;
  }

  else
  {
    v2 = -1;
  }

  return v2;
}

- (uint64_t)mtIsList
{
  host = [self host];
  v2 = [host isEqualToString:@"list"];

  return v2;
}

- (uint64_t)mtIsForLastTimer
{
  scheme = [self scheme];
  if ([scheme isEqualToString:@"clock-timer"])
  {
    host = [self host];
    v4 = [host isEqualToString:@"lastTimer"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)mtID
{
  path = [self path];
  v3 = [path length];

  if (v3 >= 2)
  {
    path2 = [self path];
    v4 = [path2 substringFromIndex:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end