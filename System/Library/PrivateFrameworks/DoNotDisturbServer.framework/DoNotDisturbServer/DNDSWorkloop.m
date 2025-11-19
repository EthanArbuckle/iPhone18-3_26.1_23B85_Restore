@interface DNDSWorkloop
+ (id)serialQueueTargetingSharedWorkloop:(id)a3;
+ (id)sharedDaemonWorkloop;
@end

@implementation DNDSWorkloop

+ (id)sharedDaemonWorkloop
{
  if (sharedDaemonWorkloop_onceToken != -1)
  {
    +[DNDSWorkloop sharedDaemonWorkloop];
  }

  v3 = sharedDaemonWorkloop_workloop;

  return v3;
}

void __36__DNDSWorkloop_sharedDaemonWorkloop__block_invoke()
{
  inactive = dispatch_workloop_create_inactive("com.apple.donotdisturb.daemon_workloop");
  v1 = sharedDaemonWorkloop_workloop;
  sharedDaemonWorkloop_workloop = inactive;

  dispatch_workloop_set_autorelease_frequency(sharedDaemonWorkloop_workloop, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  dispatch_set_qos_class_fallback();
  v2 = sharedDaemonWorkloop_workloop;

  dispatch_activate(v2);
}

+ (id)serialQueueTargetingSharedWorkloop:(id)a3
{
  v3 = [a3 UTF8String];
  v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v5 = +[DNDSWorkloop sharedDaemonWorkloop];
  v6 = dispatch_queue_create_with_target_V2(v3, v4, v5);

  return v6;
}

@end