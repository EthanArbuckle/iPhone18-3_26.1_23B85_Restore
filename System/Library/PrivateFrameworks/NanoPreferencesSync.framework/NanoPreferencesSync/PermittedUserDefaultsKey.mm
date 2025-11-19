@interface PermittedUserDefaultsKey
- (id)description;
- (void)log;
@end

@implementation PermittedUserDefaultsKey

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [NSString stringWithFormat:@"<%@: %p key = %@ notificationNames = %@ twoWaySync = %d", v4, self, self->_key, self->_notificationNames, self->_twoWaySync];

  v6 = [NSString stringWithFormat:@" isPerGizmoSetting = %d", self->_isPerGizmoSetting];
  v7 = [NSString stringWithFormat:@"%@%@>", v5, v6];

  return v7;
}

- (void)log
{
  v3 = nps_daemon_log;
  if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEBUG))
  {
    sub_100026D00(v3, self);
  }
}

@end