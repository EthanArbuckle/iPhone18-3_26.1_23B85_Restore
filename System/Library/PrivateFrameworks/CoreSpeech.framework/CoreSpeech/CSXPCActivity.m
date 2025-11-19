@interface CSXPCActivity
- (void)registerXPCActivities;
@end

@implementation CSXPCActivity

- (void)registerXPCActivities
{
  if (XPC_ACTIVITY_CHECK_IN)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100107F7C;
    v3[3] = &unk_100251A68;
    v4 = &stru_100251A40;
    v5 = &stru_100251A00;
    xpc_activity_register("com.apple.siri.xpc_activity.power-logging", XPC_ACTIVITY_CHECK_IN, v3);
  }

  else
  {

    xpc_activity_unregister("com.apple.siri.xpc_activity.power-logging");
  }
}

@end