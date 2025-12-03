@interface NSUserDefaults
+ (id)mad_daemonUserDefaults;
@end

@implementation NSUserDefaults

+ (id)mad_daemonUserDefaults
{
  v2 = +[NSBundle mainBundle];
  bundleIdentifier = [v2 bundleIdentifier];
  v4 = MediaAnalysisDaemonDomain;
  v5 = [bundleIdentifier isEqualToString:MediaAnalysisDaemonDomain];

  if (v5)
  {
    v6 = +[NSUserDefaults standardUserDefaults];
  }

  else
  {
    v6 = [[NSUserDefaults alloc] initWithSuiteName:v4];
  }

  return v6;
}

@end