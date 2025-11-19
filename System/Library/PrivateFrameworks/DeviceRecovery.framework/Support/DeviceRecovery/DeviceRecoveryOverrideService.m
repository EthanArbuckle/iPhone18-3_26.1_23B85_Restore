@interface DeviceRecoveryOverrideService
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (DeviceRecoveryOverrideService)initWithQueue:(id)a3;
- (id)startService;
- (int)brainLoadResult;
- (int)brainType;
- (int)issuesScanResult;
- (int)networkAvailableResult;
- (int)recoveryResult;
- (int)userAuthResult;
- (void)fetchOverride:(id)a3 callback:(id)a4;
- (void)removeAllOverrides:(id)a3;
- (void)removeOverride:(id)a3 callback:(id)a4;
- (void)setOverride:(id)a3 value:(id)a4 callback:(id)a5;
- (void)writeOverrideFile;
@end

@implementation DeviceRecoveryOverrideService

- (DeviceRecoveryOverrideService)initWithQueue:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    p_super = sub_1000118BC();
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
    {
      sub_1000186EC();
    }

    v7 = 0;
    goto LABEL_7;
  }

  v15.receiver = self;
  v15.super_class = DeviceRecoveryOverrideService;
  v6 = [(DeviceRecoveryOverrideService *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_serviceQueue, a3);
    v8 = +[NSUserDefaults standardUserDefaults];
    self = [v8 persistentDomainForName:@"com.apple.DeviceRecovery.Overrides"];

    if (self)
    {
      v9 = [(DeviceRecoveryOverrideService *)self mutableCopy];
      overrides = v7->overrides;
      v7->overrides = v9;

      p_super = sub_1000118BC();
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
      {
        v12 = v7->overrides;
        *buf = 136446466;
        v17 = "[DeviceRecoveryOverrideService initWithQueue:]";
        v18 = 2114;
        v19 = v12;
        _os_log_impl(&_mh_execute_header, p_super, OS_LOG_TYPE_DEFAULT, "%{public}s: Loaded overrides: %{public}@", buf, 0x16u);
      }
    }

    else
    {
      v13 = +[NSMutableDictionary dictionary];
      p_super = &v7->overrides->super.super;
      v7->overrides = v13;
    }

LABEL_7:
  }

  return v7;
}

- (id)startService
{
  v3 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.DeviceRecoveryOverrideService"];
  v4 = v3;
  if (v3)
  {
    [v3 setDelegate:self];
    v5 = [(DeviceRecoveryOverrideService *)self serviceQueue];
    [v4 _setQueue:v5];

    [v4 resume];
    v6 = 0;
  }

  else
  {
    sub_100018794(&v8);
    v6 = v8;
  }

  return v6;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = v5;
  if (!v5)
  {
    sub_100018D54(buf, &v24);
    v7 = *buf;
    v17 = v24;
    goto LABEL_11;
  }

  [v5 processIdentifier];
  v7 = sub_10000EDB8();
  v8 = sub_1000118BC();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = qos_class_self();
    v10 = sub_10000EED4(v9);
    *buf = 136446722;
    *&buf[4] = "[DeviceRecoveryOverrideService listener:shouldAcceptNewConnection:]";
    v26 = 2114;
    v27 = v7;
    v28 = 2114;
    v29 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}s: Got connection from process %{public}@ at qos %{public}@", buf, 0x20u);
  }

  v11 = 0;
  if ((os_variant_allows_internal_security_policies() & 1) == 0)
  {
    v12 = [v6 valueForEntitlement:@"com.apple.DeviceRecovery.Override"];
    if (!v12)
    {
      v19 = sub_1000118BC();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_100018B4C();
      }

      v11 = sub_1000118BC();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_100018BF4(v11);
      }

      goto LABEL_20;
    }

    v11 = v12;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      sub_100018900();
      goto LABEL_20;
    }

    if (([v11 BOOLValue]& 1) == 0)
    {
      sub_100018A84();
      goto LABEL_20;
    }
  }

  v13 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___DeviceRecoveryOverrideServiceInterface];
  [v6 setExportedInterface:v13];

  v14 = [v6 exportedInterface];

  if (!v14)
  {
    sub_100018C8C();
LABEL_20:
    v17 = 0;
    goto LABEL_10;
  }

  v15 = [(DeviceRecoveryOverrideService *)self serviceQueue];
  [v6 _setQueue:v15];

  [v6 setExportedObject:self];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100002B74;
  v22[3] = &unk_100034AE8;
  v16 = v7;
  v23 = v16;
  [v6 setInterruptionHandler:v22];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100002C30;
  v20[3] = &unk_100034AE8;
  v21 = v16;
  [v6 setInvalidationHandler:v20];
  [v6 resume];

  v17 = 1;
LABEL_10:

LABEL_11:
  return v17;
}

- (void)fetchOverride:(id)a3 callback:(id)a4
{
  overrides = self->overrides;
  v7 = a4;
  v8 = [(NSMutableDictionary *)overrides objectForKey:a3];
  (*(a4 + 2))(v7, v8);
}

- (void)writeOverrideFile
{
  v3 = +[NSUserDefaults standardUserDefaults];
  [v3 setPersistentDomain:self->overrides forName:@"com.apple.DeviceRecovery.Overrides"];
}

- (void)setOverride:(id)a3 value:(id)a4 callback:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = sub_10000FC9C(v8, v9);
  v12 = sub_1000118BC();
  v13 = v12;
  if (v11)
  {
    sub_100018E38(v12);
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = sub_10000F87C(v8, v9);
      v15 = 136446722;
      v16 = "[DeviceRecoveryOverrideService setOverride:value:callback:]";
      v17 = 2114;
      v18 = v8;
      v19 = 2114;
      v20 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}s: Setting override '%{public}@' -> %{public}@", &v15, 0x20u);
    }

    [(NSMutableDictionary *)self->overrides setObject:v9 forKey:v8];
    [(DeviceRecoveryOverrideService *)self writeOverrideFile];
  }

  v10[2](v10, v11);
}

- (void)removeOverride:(id)a3 callback:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_1000118BC();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136446466;
    v10 = "[DeviceRecoveryOverrideService removeOverride:callback:]";
    v11 = 2114;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}s: Removing override '%{public}@'", &v9, 0x16u);
  }

  [(NSMutableDictionary *)self->overrides removeObjectForKey:v6];
  [(DeviceRecoveryOverrideService *)self writeOverrideFile];
  v7[2](v7, 0);
}

- (void)removeAllOverrides:(id)a3
{
  v4 = a3;
  v5 = sub_1000118BC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136446210;
    v7 = "[DeviceRecoveryOverrideService removeAllOverrides:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: Removing all overrides", &v6, 0xCu);
  }

  [(NSMutableDictionary *)self->overrides removeAllObjects];
  [(DeviceRecoveryOverrideService *)self writeOverrideFile];
  v4[2](v4, 0);
}

- (int)brainType
{
  v2 = [(NSMutableDictionary *)self->overrides valueForKey:@"BrainType"];
  v3 = sub_1000100D0(v2);

  return v3;
}

- (int)userAuthResult
{
  v2 = [(NSMutableDictionary *)self->overrides valueForKey:@"UserAuthResult"];
  v3 = sub_100010124(v2);

  return v3;
}

- (int)networkAvailableResult
{
  v2 = [(NSMutableDictionary *)self->overrides valueForKey:@"NetworkAvailableResult"];
  v3 = sub_100010124(v2);

  return v3;
}

- (int)brainLoadResult
{
  v2 = [(NSMutableDictionary *)self->overrides valueForKey:@"BrainLoadResult"];
  v3 = sub_100010124(v2);

  return v3;
}

- (int)issuesScanResult
{
  v2 = [(NSMutableDictionary *)self->overrides valueForKey:@"IssuesScanResult"];
  v3 = sub_100010178(v2);

  return v3;
}

- (int)recoveryResult
{
  v2 = [(NSMutableDictionary *)self->overrides valueForKey:@"RecoveryResult"];
  v3 = sub_1000101CC(v2);

  return v3;
}

@end