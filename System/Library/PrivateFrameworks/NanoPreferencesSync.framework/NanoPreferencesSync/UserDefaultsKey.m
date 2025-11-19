@interface UserDefaultsKey
- (BOOL)isMirroring;
- (id)description;
- (void)log;
@end

@implementation UserDefaultsKey

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [NSString stringWithFormat:@"<%@: %p key = %@ twoWaySync = %d", v4, self, self->_key, self->_twoWaySync];

  v6 = [NSString stringWithFormat:@" isPerGizmoSetting = %d", self->_isPerGizmoSetting];
  v7 = [NSString stringWithFormat:@"%@%@>", v5, v6];

  return v7;
}

- (BOOL)isMirroring
{
  if (self->_mirrorableBBDomain)
  {
    v3 = +[NPSSettings bbAppsSettings];
    v4 = [v3 synchronize];
    v5 = [v3 objectForKey:self->_mirrorableBBDomain];
    v6 = [v5 objectForKeyedSubscript:@"BPSNanoBulletinShowsCustomSettings"];
    v7 = [v6 BOOLValue] ^ 1;
  }

  else
  {
    if (!self->_mirrorableDomain)
    {
      v7 = 0;
      return v7 & 1;
    }

    v3 = [[NPSDomainAccessor alloc] initWithDomain:self->_mirrorableDomain];
    v8 = [v3 synchronize];
    v11 = 0;
    v9 = [v3 BOOLForKey:self->_mirrorableKey keyExistsAndHasValidFormat:&v11];
    v7 = v11 ^ 1 | v9;
  }

  return v7 & 1;
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