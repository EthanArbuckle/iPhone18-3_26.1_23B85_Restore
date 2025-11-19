@interface DDRTaskResetControlCenterSettings
- (void)run;
@end

@implementation DDRTaskResetControlCenterSettings

- (void)run
{
  v5 = NSHomeDirectory();
  v2 = [v5 stringByAppendingPathComponent:@"Library"];
  v3 = [v2 stringByAppendingPathComponent:@"ControlCenter"];
  v4 = +[NSArray array];
  removeSubFiles(v3, v4);
}

@end