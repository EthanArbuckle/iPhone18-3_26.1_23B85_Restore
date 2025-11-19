@interface DDRTaskResetLockdownKeys
- (void)run;
@end

@implementation DDRTaskResetLockdownKeys

- (void)run
{
  v2 = lockdown_connect();
  if (v2)
  {
    v3 = v2;
    lockdown_remove_value();
    lockdown_remove_value();
    lockdown_remove_value();
    lockdown_remove_value();
    lockdown_remove_value();

    _lockdown_disconnect(v3);
  }
}

@end