@interface ICUtilities
+ (BOOL)isInternalInstall;
+ (BOOL)isInternetReachable;
+ (BOOL)showInternalInstallUI;
+ (_NSRange)range:(_NSRange)range liesWithinRange:(_NSRange)withinRange assert:(BOOL)assert;
@end

@implementation ICUtilities

+ (BOOL)isInternalInstall
{
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  uTF8String = [bundleIdentifier UTF8String];

  return MEMORY[0x1EEE71D60](uTF8String);
}

+ (BOOL)showInternalInstallUI
{
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  uTF8String = [bundleIdentifier UTF8String];

  return MEMORY[0x1EEE71D70](uTF8String);
}

+ (BOOL)isInternetReachable
{
  v2 = +[ICReachability sharedReachabilityForInternetConnection];
  currentReachabilityStatus = [v2 currentReachabilityStatus];

  return currentReachabilityStatus != 0;
}

+ (_NSRange)range:(_NSRange)range liesWithinRange:(_NSRange)withinRange assert:(BOOL)assert
{
  if (range.location == 0x7FFFFFFFFFFFFFFFLL || withinRange.location == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 0;
    v10 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_25;
  }

  assertCopy = assert;
  length = withinRange.length;
  location = withinRange.location;
  v9 = range.length;
  v10 = range.location;
  v11 = NSIntersectionRange(range, withinRange);
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

  if (assertCopy)
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