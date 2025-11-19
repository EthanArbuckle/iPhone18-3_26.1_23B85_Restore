@interface ICUtilities
+ (BOOL)isInternalInstall;
+ (BOOL)isInternetReachable;
+ (BOOL)showInternalInstallUI;
+ (_NSRange)range:(_NSRange)a3 liesWithinRange:(_NSRange)a4 assert:(BOOL)a5;
@end

@implementation ICUtilities

+ (BOOL)isInternalInstall
{
  v2 = [MEMORY[0x1E696AAE8] mainBundle];
  v3 = [v2 bundleIdentifier];
  v4 = [v3 UTF8String];

  return MEMORY[0x1EEE71D60](v4);
}

+ (BOOL)showInternalInstallUI
{
  v2 = [MEMORY[0x1E696AAE8] mainBundle];
  v3 = [v2 bundleIdentifier];
  v4 = [v3 UTF8String];

  return MEMORY[0x1EEE71D70](v4);
}

+ (BOOL)isInternetReachable
{
  v2 = +[ICReachability sharedReachabilityForInternetConnection];
  v3 = [v2 currentReachabilityStatus];

  return v3 != 0;
}

+ (_NSRange)range:(_NSRange)a3 liesWithinRange:(_NSRange)a4 assert:(BOOL)a5
{
  if (a3.location == 0x7FFFFFFFFFFFFFFFLL || a4.location == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 0;
    v10 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_25;
  }

  v6 = a5;
  length = a4.length;
  location = a4.location;
  v9 = a3.length;
  v10 = a3.location;
  v11 = NSIntersectionRange(a3, a4);
  if (v9)
  {
    if (v10 == v11.location && v9 == v11.length)
    {
      goto LABEL_25;
    }
  }

  else if (v10 >= location && v10 - location < length)
  {
    v9 = 0;
    goto LABEL_25;
  }

  if (v6)
  {
    v17.location = v10;
    v17.length = v9;
    v12 = NSStringFromRange(v17);
    v18.location = location;
    v18.length = length;
    v13 = NSStringFromRange(v18);
    +[ICAssert handleFailedAssertWithCondition:functionName:simulateCrash:showAlert:format:](ICAssert, "handleFailedAssertWithCondition:functionName:simulateCrash:showAlert:format:", "__objc_no", "+[ICUtilities range:liesWithinRange:assert:]", 1, 0, @"range %@ doesn't lie within range %@", v12, v13);
  }

  if (v11.length)
  {
    v14 = v11.location;
  }

  else
  {
    v14 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v9)
  {
    v10 = v14;
  }

  else
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v9)
  {
    v9 = v11.length;
  }

  else
  {
    v9 = 0;
  }

LABEL_25:
  v15 = v10;
  v16 = v9;
  result.length = v16;
  result.location = v15;
  return result;
}

@end