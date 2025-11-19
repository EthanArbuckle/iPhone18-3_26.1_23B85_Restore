@interface DDRTaskDisableScreenTime
- (void)run;
@end

@implementation DDRTaskDisableScreenTime

- (void)run
{
  v2 = objc_opt_new();
  [v2 setScreenTimeEnabled:0 error:0];
}

@end