@interface DeviceRecoveryOverrideClient
- (DeviceRecoveryOverrideClient)init;
- (NSDictionary)allOverrides;
- (id)fetchOverride:(id)a3;
- (int)brainLoadResult;
- (int)brainType;
- (int)issuesScanResult;
- (int)networkAvailableResult;
- (int)recoveryResult;
- (int)userAuthResult;
- (void)allOverrides;
- (void)init;
- (void)removeAllOverrides;
- (void)setBrainLoadResult:(int)a3;
- (void)setBrainType:(int)a3;
- (void)setIssuesScanResult:(int)a3;
- (void)setNetworkAvailableResult:(int)a3;
- (void)setOverride:(id)a3 value:(id)a4;
- (void)setRecoveryResult:(int)a3;
- (void)setUserAuthResult:(int)a3;
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

    v4 = [(DeviceRecoveryOverrideClient *)v2 serviceConnection];

    if (v4)
    {
      v5 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___DeviceRecoveryOverrideServiceInterface];
      if (v5)
      {
        v6 = v5;
        v7 = [(DeviceRecoveryOverrideClient *)v2 serviceConnection];
        [v7 setRemoteObjectInterface:v6];

        objc_initWeak(&location, v2);
        v8 = [(DeviceRecoveryOverrideClient *)v2 serviceConnection];
        [v8 setInterruptionHandler:&__block_literal_global_1];

        v9 = [(DeviceRecoveryOverrideClient *)v2 serviceConnection];
        v12 = _NSConcreteStackBlock;
        v13 = 3221225472;
        v14 = __36__DeviceRecoveryOverrideClient_init__block_invoke_19;
        v15 = &unk_2C618;
        objc_copyWeak(&v16, &location);
        [v9 setInvalidationHandler:&v12];

        v10 = [(DeviceRecoveryOverrideClient *)v2 serviceConnection:v12];
        [v10 activate];

        objc_destroyWeak(&v16);
        objc_destroyWeak(&location);

        return v2;
      }

      [(DeviceRecoveryOverrideClient *)v2 init];
    }

    else
    {
      [(DeviceRecoveryOverrideClient *)v2 init];
    }

    return 0;
  }

  return v2;
}

void __36__DeviceRecoveryOverrideClient_init__block_invoke(id a1)
{
  v1 = DRGetLogHandle();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136446210;
    v3 = "[DeviceRecoveryOverrideClient init]_block_invoke";
    _os_log_impl(&dword_0, v1, OS_LOG_TYPE_DEFAULT, "%{public}s: Device Recovery Override Service connection interrupted", &v2, 0xCu);
  }
}

void __36__DeviceRecoveryOverrideClient_init__block_invoke_19(uint64_t a1)
{
  v2 = DRGetLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136446210;
    v5 = "[DeviceRecoveryOverrideClient init]_block_invoke";
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "%{public}s: Device Recovery Override Service connection invalidated", &v4, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setServiceConnection:0];
}

- (id)fetchOverride:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__1;
  v15 = __Block_byref_object_dispose__1;
  v16 = 0;
  v5 = [(DeviceRecoveryOverrideClient *)self serviceConnection];

  if (v5)
  {
    v6 = [(DeviceRecoveryOverrideClient *)self serviceConnection];
    v7 = [v6 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_22];

    if (v7)
    {
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = __46__DeviceRecoveryOverrideClient_fetchOverride___block_invoke_24;
      v10[3] = &unk_2C660;
      v10[4] = &v11;
      [v7 fetchOverride:v4 callback:v10];
      goto LABEL_4;
    }

    DRGetLogHandle();
    objc_claimAutoreleasedReturnValue();
    [DeviceRecoveryOverrideClient fetchOverride:];
  }

  else
  {
    DRGetLogHandle();
    objc_claimAutoreleasedReturnValue();
    [DeviceRecoveryOverrideClient fetchOverride:];
  }

  v7 = 0;
LABEL_4:
  v8 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v8;
}

void __46__DeviceRecoveryOverrideClient_fetchOverride___block_invoke(id a1, NSError *a2)
{
  v2 = a2;
  v3 = DRGetLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __46__DeviceRecoveryOverrideClient_fetchOverride___block_invoke_cold_1();
  }
}

- (void)setOverride:(id)a3 value:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__1;
  v22 = __Block_byref_object_dispose__1;
  v23 = 0;
  v8 = [(DeviceRecoveryOverrideClient *)self serviceConnection];

  if (!v8)
  {
    v13 = DRGetLogHandle();
    [(DeviceRecoveryOverrideClient *)v13 setOverride:&v25 value:?];
LABEL_11:
    v12 = v24;
    v10 = v25;
LABEL_12:

    goto LABEL_8;
  }

  v9 = [(DeviceRecoveryOverrideClient *)self serviceConnection];
  v10 = [v9 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_27];

  if (!v10)
  {
    v14 = DRGetLogHandle();
    [(DeviceRecoveryOverrideClient *)v14 setOverride:&v25 value:?];
    goto LABEL_11;
  }

  if (v7)
  {
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = __50__DeviceRecoveryOverrideClient_setOverride_value___block_invoke_30;
    v16[3] = &unk_2C688;
    v16[4] = &v18;
    [v10 setOverride:v6 value:v7 callback:v16];
    if (v19[5])
    {
      v11 = DRGetLogHandle();
      [DeviceRecoveryOverrideClient setOverride:v11 value:?];

      v12 = DRGetLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [DeviceRecoveryOverrideClient setOverride:value:];
      }

      goto LABEL_12;
    }
  }

  else
  {
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = __50__DeviceRecoveryOverrideClient_setOverride_value___block_invoke_28;
    v17[3] = &unk_2C688;
    v17[4] = &v18;
    [v10 removeOverride:v6 callback:v17];
    if (v19[5])
    {
      v15 = DRGetLogHandle();
      [DeviceRecoveryOverrideClient setOverride:v15 value:?];

      v12 = DRGetLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [DeviceRecoveryOverrideClient setOverride:value:];
      }

      goto LABEL_12;
    }
  }

LABEL_8:
  _Block_object_dispose(&v18, 8);
}

void __50__DeviceRecoveryOverrideClient_setOverride_value___block_invoke(id a1, NSError *a2)
{
  v2 = a2;
  v3 = DRGetLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __50__DeviceRecoveryOverrideClient_setOverride_value___block_invoke_cold_1();
  }
}

- (int)brainType
{
  v2 = [(DeviceRecoveryOverrideClient *)self fetchOverride:@"BrainType"];
  v3 = v2;
  if (v2)
  {
    v4 = DRBrainTypeFromOverride(v2);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setBrainType:(int)a3
{
  if (a3)
  {
    v4 = [NSNumber numberWithUnsignedChar:a3];
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
    v4 = DRUserAuthResultFromOverride(v2);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setUserAuthResult:(int)a3
{
  if (a3)
  {
    v4 = [NSNumber numberWithUnsignedChar:a3];
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
    v4 = DRNetworkAvailableResultFromOverride(v2);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setNetworkAvailableResult:(int)a3
{
  if (a3)
  {
    v4 = [NSNumber numberWithUnsignedChar:a3];
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
    ResultFromOverride = DRBrainLoadResultFromOverride(v2);
  }

  else
  {
    ResultFromOverride = 0;
  }

  return ResultFromOverride;
}

- (void)setBrainLoadResult:(int)a3
{
  if (a3)
  {
    v4 = [NSNumber numberWithUnsignedChar:a3];
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
    v4 = DRIssuesScanResultFromOverride(v2);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setIssuesScanResult:(int)a3
{
  if (a3)
  {
    v4 = [NSNumber numberWithUnsignedChar:a3];
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
    v4 = DRRecoveryResultFromOverride(v2);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setRecoveryResult:(int)a3
{
  if (a3)
  {
    v4 = [NSNumber numberWithUnsignedChar:a3];
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
  v12 = __Block_byref_object_copy__1;
  v13 = __Block_byref_object_dispose__1;
  v14 = 0;
  v3 = [(DeviceRecoveryOverrideClient *)self serviceConnection];

  if (v3)
  {
    v4 = [(DeviceRecoveryOverrideClient *)self serviceConnection];
    v5 = [v4 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_33];

    if (v5)
    {
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = __44__DeviceRecoveryOverrideClient_allOverrides__block_invoke_34;
      v8[3] = &unk_2C6B0;
      v8[4] = &v9;
      [v5 fetchOverrides:v8];
      goto LABEL_4;
    }

    DRGetLogHandle();
    objc_claimAutoreleasedReturnValue();
    [DeviceRecoveryOverrideClient allOverrides];
  }

  else
  {
    DRGetLogHandle();
    objc_claimAutoreleasedReturnValue();
    [DeviceRecoveryOverrideClient allOverrides];
  }

  v5 = 0;
LABEL_4:
  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

void __44__DeviceRecoveryOverrideClient_allOverrides__block_invoke(id a1, NSError *a2)
{
  v2 = a2;
  v3 = DRGetLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __44__DeviceRecoveryOverrideClient_allOverrides__block_invoke_cold_1();
  }
}

- (void)removeAllOverrides
{
  v0 = DRGetLogHandle();
  if (OUTLINED_FUNCTION_5_0(v0))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_11_0(&dword_0, v1, v2, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_6_2();
}

void __50__DeviceRecoveryOverrideClient_removeAllOverrides__block_invoke(id a1, NSError *a2)
{
  v2 = a2;
  v3 = DRGetLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __50__DeviceRecoveryOverrideClient_removeAllOverrides__block_invoke_cold_1();
  }
}

- (void)init
{
  v3 = DRGetLogHandle();
  if (OUTLINED_FUNCTION_5_0(v3))
  {
    v12 = "[DeviceRecoveryOverrideClient init]";
    v13 = 2082;
    v14 = "[DeviceRecoveryOverrideClient init]";
    v15 = 2082;
    v16 = "self.serviceConnection != nil";
    v17 = 2082;
    v18 = "";
    v19 = 2082;
    v20 = "/Library/Caches/com.apple.xbs/Sources/DeviceRecovery/DeviceRecovery_Framework/DeviceRecoveryOverrideClient.m";
    v21 = 1026;
    v22 = 46;
    OUTLINED_FUNCTION_11_0(&dword_0, v4, v5, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v6, v7, v8, v9, 2u);
  }

  v10 = DRGetLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = 136446466;
    v12 = "[DeviceRecoveryOverrideClient init]";
    v13 = 2114;
    v14 = @"com.apple.DeviceRecoveryOverrideService";
    _os_log_error_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "%{public}s: Couldn't connect to service: %{public}@", &v11, 0x16u);
  }
}

- (void)fetchOverride:.cold.1()
{
  OUTLINED_FUNCTION_13();
  if (OUTLINED_FUNCTION_6_1(v0, __stack_chk_guard))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_11_0(&dword_0, v1, v2, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_6_2();
}

- (void)fetchOverride:.cold.2()
{
  OUTLINED_FUNCTION_13();
  if (OUTLINED_FUNCTION_6_1(v0, __stack_chk_guard))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_11_0(&dword_0, v1, v2, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_6_2();
}

- (void)setOverride:(NSObject *)a1 value:.cold.1(NSObject *a1)
{
  if (OUTLINED_FUNCTION_6_1(a1, __stack_chk_guard))
  {
    v3[0] = 136447490;
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_12();
    v4 = "";
    OUTLINED_FUNCTION_4();
    v5 = 121;
    OUTLINED_FUNCTION_5_2(&dword_0, a1, v2, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v3);
  }
}

- (void)setOverride:value:.cold.2()
{
  v3[0] = 136446722;
  OUTLINED_FUNCTION_2_1();
  v4 = v0;
  v5 = v1;
  _os_log_error_impl(&dword_0, v2, OS_LOG_TYPE_ERROR, "%{public}s: Error setting override: %{public}@ -> %{public}@", v3, 0x20u);
}

- (void)setOverride:(NSObject *)a1 value:.cold.3(NSObject *a1)
{
  if (OUTLINED_FUNCTION_6_1(a1, __stack_chk_guard))
  {
    v3[0] = 136447490;
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_12();
    v4 = "";
    OUTLINED_FUNCTION_4();
    v5 = 116;
    OUTLINED_FUNCTION_5_2(&dword_0, a1, v2, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v3);
  }
}

- (void)setOverride:(void *)a3 value:.cold.5(NSObject *a1, NSObject **a2, void *a3)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    v7[0] = 136447490;
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_12();
    v8 = "";
    OUTLINED_FUNCTION_4();
    v9 = 110;
    OUTLINED_FUNCTION_5_2(&dword_0, a1, v6, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v7);
  }

  *a3 = 0;
  *a2 = a1;
}

- (void)setOverride:(void *)a3 value:.cold.6(NSObject *a1, NSObject **a2, void *a3)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    v7[0] = 136447490;
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_12();
    v8 = "";
    OUTLINED_FUNCTION_4();
    v9 = 105;
    OUTLINED_FUNCTION_5_2(&dword_0, a1, v6, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v7);
  }

  *a3 = 0;
  *a2 = a1;
}

- (void)allOverrides
{
  OUTLINED_FUNCTION_13();
  if (OUTLINED_FUNCTION_6_1(v0, __stack_chk_guard))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_11_0(&dword_0, v1, v2, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_6_2();
}

@end