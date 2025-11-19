@interface FAMarqueeUpdateHandler
- (void)updateMarqueeCache;
@end

@implementation FAMarqueeUpdateHandler

- (void)updateMarqueeCache
{
  v2 = _FALogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Requesting image marquee creation", v6, 2u);
  }

  v3 = +[LSApplicationWorkspace defaultWorkspace];
  v4 = [NSURL URLWithString:@"family://?aaaction=cacheMugshotMarquee"];
  [v3 openURL:v4 configuration:0 completionHandler:0];

  v5 = +[NSUserDefaults standardUserDefaults];
  [v5 setBool:1 forKey:FAFamilyMarqueeHasEverBeenCalled];
}

@end