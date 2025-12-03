@interface DeviceRecoveryOverrideClient
- (DeviceRecoveryOverrideClient)init;
- (NSDictionary)allOverrides;
- (id)fetchOverride:(id)override;
- (int)brainLoadResult;
- (int)brainType;
- (int)issuesScanResult;
- (int)networkAvailableResult;
- (int)recoveryResult;
- (int)userAuthResult;
- (void)removeAllOverrides;
- (void)setBrainLoadResult:(int)result;
- (void)setBrainType:(int)type;
- (void)setIssuesScanResult:(int)result;
- (void)setNetworkAvailableResult:(int)result;
- (void)setOverride:(id)override value:(id)value;
- (void)setRecoveryResult:(int)result;
- (void)setUserAuthResult:(int)result;
@end

@implementation DeviceRecoveryOverrideClient

- (DeviceRecoveryOverrideClient)init
{
  v18.receiver = self;
  v18.super_class = DeviceRecoveryOverrideClient;
  v2 = [(DeviceRecoveryOverrideClient *)&v18 init];
  if (v2)
  {
    v3 = [[NSXPCConnection alloc] initWithMachServiceName:@"com.apple.DeviceRecoveryOverrideService" options:4096];
    [(DeviceRecoveryOverrideClient *)v2 setServiceConnection:v3];

    serviceConnection = [(DeviceRecoveryOverrideClient *)v2 serviceConnection];

    if (serviceConnection)
    {
      v5 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___DeviceRecoveryOverrideServiceInterface];
      if (v5)
      {
        v6 = v5;
        serviceConnection2 = [(DeviceRecoveryOverrideClient *)v2 serviceConnection];
        [serviceConnection2 setRemoteObjectInterface:v6];

        objc_initWeak(&location, v2);
        serviceConnection3 = [(DeviceRecoveryOverrideClient *)v2 serviceConnection];
        [serviceConnection3 setInterruptionHandler:&stru_1000351A8];

        serviceConnection4 = [(DeviceRecoveryOverrideClient *)v2 serviceConnection];
        v12 = _NSConcreteStackBlock;
        v13 = 3221225472;
        v14 = sub_100011C58;
        v15 = &unk_100034CE8;
        objc_copyWeak(&v16, &location);
        [serviceConnection4 setInvalidationHandler:&v12];

        v10 = [(DeviceRecoveryOverrideClient *)v2 serviceConnection:v12];
        [v10 activate];

        objc_destroyWeak(&v16);
        objc_destroyWeak(&location);

        return v2;
      }

      sub_100022074(v2);
    }

    else
    {
      sub_100022140(v2);
    }

    return 0;
  }

  return v2;
}

- (id)fetchOverride:(id)override
{
  overrideCopy = override;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_100011EC4;
  v15 = sub_100011ED4;
  v16 = 0;
  serviceConnection = [(DeviceRecoveryOverrideClient *)self serviceConnection];

  if (serviceConnection)
  {
    serviceConnection2 = [(DeviceRecoveryOverrideClient *)self serviceConnection];
    v7 = [serviceConnection2 synchronousRemoteObjectProxyWithErrorHandler:&stru_1000351C8];

    if (v7)
    {
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_100011F30;
      v10[3] = &unk_1000351F0;
      v10[4] = &v11;
      [v7 fetchOverride:overrideCopy callback:v10];
      goto LABEL_4;
    }

    sub_1000118BC();
    objc_claimAutoreleasedReturnValue();
    sub_10002229C();
  }

  else
  {
    sub_1000118BC();
    objc_claimAutoreleasedReturnValue();
    sub_100022350();
  }

  v7 = 0;
LABEL_4:
  v8 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v8;
}

- (void)setOverride:(id)override value:(id)value
{
  overrideCopy = override;
  valueCopy = value;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_100011EC4;
  v22 = sub_100011ED4;
  v23 = 0;
  serviceConnection = [(DeviceRecoveryOverrideClient *)self serviceConnection];

  if (!serviceConnection)
  {
    v13 = sub_1000118BC();
    sub_1000227CC(v13, &v24, &v25);
LABEL_11:
    v12 = v24;
    v10 = v25;
LABEL_12:

    goto LABEL_8;
  }

  serviceConnection2 = [(DeviceRecoveryOverrideClient *)self serviceConnection];
  v10 = [serviceConnection2 synchronousRemoteObjectProxyWithErrorHandler:&stru_100035210];

  if (!v10)
  {
    v14 = sub_1000118BC();
    sub_1000226F0(v14, &v24, &v25);
    goto LABEL_11;
  }

  if (valueCopy)
  {
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100012244;
    v16[3] = &unk_100035238;
    v16[4] = &v18;
    [v10 setOverride:overrideCopy value:valueCopy callback:v16];
    if (v19[5])
    {
      v11 = sub_1000118BC();
      sub_100022478(v11);

      v12 = sub_1000118BC();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_100022534();
      }

      goto LABEL_12;
    }
  }

  else
  {
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100012234;
    v17[3] = &unk_100035238;
    v17[4] = &v18;
    [v10 removeOverride:overrideCopy callback:v17];
    if (v19[5])
    {
      v15 = sub_1000118BC();
      sub_1000225C0(v15);

      v12 = sub_1000118BC();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10002267C();
      }

      goto LABEL_12;
    }
  }

LABEL_8:
  _Block_object_dispose(&v18, 8);
}

- (int)brainType
{
  v2 = [(DeviceRecoveryOverrideClient *)self fetchOverride:@"BrainType"];
  v3 = v2;
  if (v2)
  {
    v4 = sub_1000100D0(v2);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setBrainType:(int)type
{
  if (type)
  {
    v4 = [NSNumber numberWithUnsignedChar:type];
    [(DeviceRecoveryOverrideClient *)self setOverride:@"BrainType" value:v4];
  }

  else
  {

    [(DeviceRecoveryOverrideClient *)self setOverride:@"BrainType" value:0];
  }
}

- (int)userAuthResult
{
  v2 = [(DeviceRecoveryOverrideClient *)self fetchOverride:@"UserAuthResult"];
  v3 = v2;
  if (v2)
  {
    v4 = sub_100010124(v2);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setUserAuthResult:(int)result
{
  if (result)
  {
    v4 = [NSNumber numberWithUnsignedChar:result];
    [(DeviceRecoveryOverrideClient *)self setOverride:@"UserAuthResult" value:v4];
  }

  else
  {

    [(DeviceRecoveryOverrideClient *)self setOverride:@"UserAuthResult" value:0];
  }
}

- (int)networkAvailableResult
{
  v2 = [(DeviceRecoveryOverrideClient *)self fetchOverride:@"NetworkAvailableResult"];
  v3 = v2;
  if (v2)
  {
    v4 = sub_100010124(v2);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setNetworkAvailableResult:(int)result
{
  if (result)
  {
    v4 = [NSNumber numberWithUnsignedChar:result];
    [(DeviceRecoveryOverrideClient *)self setOverride:@"NetworkAvailableResult" value:v4];
  }

  else
  {

    [(DeviceRecoveryOverrideClient *)self setOverride:@"NetworkAvailableResult" value:0];
  }
}

- (int)brainLoadResult
{
  v2 = [(DeviceRecoveryOverrideClient *)self fetchOverride:@"BrainLoadResult"];
  v3 = v2;
  if (v2)
  {
    v4 = sub_100010124(v2);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setBrainLoadResult:(int)result
{
  if (result)
  {
    v4 = [NSNumber numberWithUnsignedChar:result];
    [(DeviceRecoveryOverrideClient *)self setOverride:@"BrainLoadResult" value:v4];
  }

  else
  {

    [(DeviceRecoveryOverrideClient *)self setOverride:@"BrainLoadResult" value:0];
  }
}

- (int)issuesScanResult
{
  v2 = [(DeviceRecoveryOverrideClient *)self fetchOverride:@"IssuesScanResult"];
  v3 = v2;
  if (v2)
  {
    v4 = sub_100010178(v2);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setIssuesScanResult:(int)result
{
  if (result)
  {
    v4 = [NSNumber numberWithUnsignedChar:result];
    [(DeviceRecoveryOverrideClient *)self setOverride:@"IssuesScanResult" value:v4];
  }

  else
  {

    [(DeviceRecoveryOverrideClient *)self setOverride:@"IssuesScanResult" value:0];
  }
}

- (int)recoveryResult
{
  v2 = [(DeviceRecoveryOverrideClient *)self fetchOverride:@"RecoveryResult"];
  v3 = v2;
  if (v2)
  {
    v4 = sub_1000101CC(v2);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setRecoveryResult:(int)result
{
  if (result)
  {
    v4 = [NSNumber numberWithUnsignedChar:result];
    [(DeviceRecoveryOverrideClient *)self setOverride:@"RecoveryResult" value:v4];
  }

  else
  {

    [(DeviceRecoveryOverrideClient *)self setOverride:@"RecoveryResult" value:0];
  }
}

- (NSDictionary)allOverrides
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_100011EC4;
  v13 = sub_100011ED4;
  v14 = 0;
  serviceConnection = [(DeviceRecoveryOverrideClient *)self serviceConnection];

  if (serviceConnection)
  {
    serviceConnection2 = [(DeviceRecoveryOverrideClient *)self serviceConnection];
    v5 = [serviceConnection2 synchronousRemoteObjectProxyWithErrorHandler:&stru_100035258];

    if (v5)
    {
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_100012AA0;
      v8[3] = &unk_100035280;
      v8[4] = &v9;
      [v5 fetchOverrides:v8];
      goto LABEL_4;
    }

    sub_1000118BC();
    objc_claimAutoreleasedReturnValue();
    sub_10002291C();
  }

  else
  {
    sub_1000118BC();
    objc_claimAutoreleasedReturnValue();
    sub_1000229D0();
  }

  v5 = 0;
LABEL_4:
  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

- (void)removeAllOverrides
{
  serviceConnection = [(DeviceRecoveryOverrideClient *)self serviceConnection];

  if (!serviceConnection)
  {
    sub_100022BB8();
LABEL_7:
    v5 = v6;
    goto LABEL_4;
  }

  serviceConnection2 = [(DeviceRecoveryOverrideClient *)self serviceConnection];
  v5 = [serviceConnection2 synchronousRemoteObjectProxyWithErrorHandler:&stru_1000352A0];

  if (!v5)
  {
    sub_100022AF8();
    goto LABEL_7;
  }

  [v5 removeAllOverrides:&stru_1000352C0];
LABEL_4:
}

@end