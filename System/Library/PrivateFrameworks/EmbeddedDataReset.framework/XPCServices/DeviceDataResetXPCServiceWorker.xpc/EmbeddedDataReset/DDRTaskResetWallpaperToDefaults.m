@interface DDRTaskResetWallpaperToDefaults
- (void)run;
@end

@implementation DDRTaskResetWallpaperToDefaults

- (void)run
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100002DB8;
  v5[3] = &unk_100014640;
  v6 = dispatch_semaphore_create(0);
  v7 = objc_opt_new();
  v2 = v7;
  v3 = v6;
  [v2 restoreDefaultWallpaperWithCompletion:v5];
  v4 = dispatch_time(0, 5000000000);
  dispatch_semaphore_wait(v3, v4);
}

@end