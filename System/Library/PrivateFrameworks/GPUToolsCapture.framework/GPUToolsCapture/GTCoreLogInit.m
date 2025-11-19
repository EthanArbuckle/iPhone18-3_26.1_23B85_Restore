@interface GTCoreLogInit
@end

@implementation GTCoreLogInit

void __GTCoreLogInit_block_invoke(id a1)
{
  v1 = +[NSUserDefaults standardUserDefaults];
  v2 = [v1 BOOLForKey:@"GPUToolsPerfLogging"];

  if (v2)
  {
    v3 = os_log_create("com.apple.gputools.perf", "");
    v4 = g_signpostLog;
    g_signpostLog = v3;

    _objc_release_x1(v3, v4);
  }
}

@end