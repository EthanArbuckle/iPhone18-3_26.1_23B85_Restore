@interface NRRegistryProxy
+ (id)clientRemoteObjectInterface;
+ (id)entitlements;
+ (id)serverExportedInterface;
- (BOOL)_hasInternalEntitlement;
- (BOOL)loudHasEntitlement:(id)a3;
- (void)logCaller:(SEL)a3 args:(id)a4;
- (void)xpcApplyDiff:(id)a3 withSecureProperties:(id)a4 block:(id)a5;
- (void)xpcBooleanForInternalPreference:(id)a3 withBlock:(id)a4;
- (void)xpcClientInfo:(id)a3;
- (void)xpcGetChangeHistoryWithBlock:(id)a3;
- (void)xpcGetDeviceCollectionWithBlock:(id)a3;
- (void)xpcGetDiffSinceTokenValue:(unint64_t)a3 getSecureProperties:(BOOL)a4 withBlock:(id)a5;
- (void)xpcLongForInternalPreference:(id)a3 withBlock:(id)a4;
- (void)xpcRetrieveSecureProperties:(id)a3 block:(id)a4;
- (void)xpcSwitchIndex:(id)a3;
@end

@implementation NRRegistryProxy

+ (id)serverExportedInterface
{
  if (qword_1ED6F0AE8 != -1)
  {
    dispatch_once(&qword_1ED6F0AE8, &__block_literal_global_6);
  }

  v3 = _MergedGlobals_9;

  return v3;
}

void __42__NRRegistryProxy_serverExportedInterface__block_invoke()
{
  v7[2] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F5B87840];
  v1 = _MergedGlobals_9;
  _MergedGlobals_9 = v0;

  v2 = _MergedGlobals_9;
  v3 = MEMORY[0x1E695DFD8];
  v7[0] = objc_opt_class();
  v7[1] = objc_opt_class();
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];
  v5 = [v3 setWithArray:v4];
  [v2 setClasses:v5 forSelector:sel_xpcRetrieveSecureProperties_block_ argumentIndex:0 ofReply:0];

  v6 = *MEMORY[0x1E69E9840];
}

+ (id)clientRemoteObjectInterface
{
  if (qword_1ED6F0AF8 != -1)
  {
    dispatch_once(&qword_1ED6F0AF8, &__block_literal_global_41);
  }

  v3 = qword_1ED6F0AF0;

  return v3;
}

void __46__NRRegistryProxy_clientRemoteObjectInterface__block_invoke()
{
  v11[2] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F5B87840];
  v1 = qword_1ED6F0AF0;
  qword_1ED6F0AF0 = v0;

  v2 = qword_1ED6F0AF0;
  v3 = +[NRSecureDevicePropertyStore enclosedClassTypes];
  [v2 setClasses:v3 forSelector:sel_xpcRetrieveSecureProperties_block_ argumentIndex:0 ofReply:1];

  v4 = qword_1ED6F0AF0;
  v5 = MEMORY[0x1E695DFD8];
  v11[0] = objc_opt_class();
  v11[1] = objc_opt_class();
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
  v7 = [v5 setWithArray:v6];
  [v4 setClasses:v7 forSelector:sel_xpcClientInfo_ argumentIndex:0 ofReply:1];

  v8 = qword_1ED6F0AF0;
  v9 = +[NRSecureDevicePropertyStore enclosedClassTypes];
  [v8 setClasses:v9 forSelector:sel_xpcGetDiffSinceTokenValue_getSecureProperties_withBlock_ argumentIndex:1 ofReply:1];

  v10 = *MEMORY[0x1E69E9840];
}

+ (id)entitlements
{
  v7[11] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v7[0] = @"com.apple.bluetoothregistry";
  v7[1] = @"com.apple.nano.nanoregistry";
  v7[2] = @"com.apple.nano.nanoregistry.pairunpairobliterate";
  v7[3] = @"com.apple.nano.nanoregistry.ids.plugin";
  v7[4] = @"com.apple.nano.nanoregistry.applydiff";
  v7[5] = @"com.apple.nano.nanoregistry.internal";
  v7[6] = @"com.apple.nano.nanoregistry.ids.plugin";
  v7[7] = @"com.apple.nano.nanoregistry.unpairwithbrick";
  v7[8] = @"com.apple.nanoregistry.BDE85C67-0FDD-4A95-A9B9-3CB5DD0C06A2";
  v7[9] = @"com.apple.nano.nanoregistry.submitrtcpairingmetric";
  v7[10] = @"com.apple.nano.nanoregistry.generalaccess";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:11];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (BOOL)loudHasEntitlement:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(NRXPCProxy *)self hasEntitlement:v4];
  if (!v5)
  {
    v6 = nr_daemon_log();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);

    if (v7)
    {
      v8 = nr_daemon_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v11 = [(NRXPCProxy *)self appPath];
        v12 = 138543618;
        v13 = v11;
        v14 = 2112;
        v15 = v4;
        _os_log_error_impl(&dword_1E0ADF000, v8, OS_LOG_TYPE_ERROR, "client %{public}@ is missing the %@ entitlement", &v12, 0x16u);
      }
    }
  }

  v9 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)_hasInternalEntitlement
{
  if (_NRIsInternalInstall___onceToken != -1)
  {
    dispatch_once(&_NRIsInternalInstall___onceToken, &__block_literal_global_18);
  }

  if (_NRIsInternalInstall___internalInstall == 1)
  {

    return [(NRRegistryProxy *)self loudHasEntitlement:@"com.apple.nano.nanoregistry.internal"];
  }

  else
  {
    v4 = nr_daemon_log();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

    if (v5)
    {
      v6 = nr_daemon_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *v7 = 0;
        _os_log_error_impl(&dword_1E0ADF000, v6, OS_LOG_TYPE_ERROR, "Internal functionality not available in customer builds", v7, 2u);
      }
    }

    return 0;
  }
}

- (void)xpcGetDeviceCollectionWithBlock:(id)a3
{
  v4 = a3;
  v5 = [(NRXPCProxy *)self hasEntitlements];
  v6 = [(NRRegistryProxy *)self registryDelegate];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51__NRRegistryProxy_xpcGetDeviceCollectionWithBlock___block_invoke;
  v8[3] = &unk_1E86DC4E8;
  v10 = v5;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [v6 xpcGetDeviceCollectionWithBlock:v8];
}

void __51__NRRegistryProxy_xpcGetDeviceCollectionWithBlock___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  v9 = [*(a1 + 32) connection];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __51__NRRegistryProxy_xpcGetDeviceCollectionWithBlock___block_invoke_2;
  v13[3] = &unk_1E86DC4C0;
  v18 = *(a1 + 48);
  v10 = *(a1 + 40);
  v14 = v7;
  v15 = v8;
  v16 = v10;
  v17 = a4;
  v11 = v8;
  v12 = v7;
  [v9 runCompletionBlock:v13];
}

uint64_t __51__NRRegistryProxy_xpcGetDeviceCollectionWithBlock___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 64);
  v3 = *(a1 + 48);
  if (v2 == 1)
  {
    return (*(v3 + 16))(v3, *(a1 + 32), *(a1 + 40), *(a1 + 56), 1);
  }

  else
  {
    return (*(v3 + 16))(v3, 0, 0, *(a1 + 56), 0);
  }
}

- (void)xpcGetDiffSinceTokenValue:(unint64_t)a3 getSecureProperties:(BOOL)a4 withBlock:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = [(NRXPCProxy *)self hasEntitlements];
  v10 = [(NRRegistryProxy *)self registryDelegate];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __75__NRRegistryProxy_xpcGetDiffSinceTokenValue_getSecureProperties_withBlock___block_invoke;
  v12[3] = &unk_1E86DBAA8;
  v12[4] = self;
  v13 = v8;
  v11 = v8;
  [v10 xpcGetDiffSinceTokenValue:a3 getSecureProperties:v9 & v5 withBlock:v12];
}

void __75__NRRegistryProxy_xpcGetDiffSinceTokenValue_getSecureProperties_withBlock___block_invoke(uint64_t a1, void *a2, void *a3, char a4, uint64_t a5)
{
  v9 = a2;
  v10 = a3;
  v11 = [*(a1 + 32) connection];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __75__NRRegistryProxy_xpcGetDiffSinceTokenValue_getSecureProperties_withBlock___block_invoke_2;
  v15[3] = &unk_1E86DC4C0;
  v12 = *(a1 + 40);
  v16 = v9;
  v17 = v10;
  v20 = a4;
  v18 = v12;
  v19 = a5;
  v13 = v10;
  v14 = v9;
  [v11 runCompletionBlock:v15];
}

- (void)xpcRetrieveSecureProperties:(id)a3 block:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(NRXPCProxy *)self hasEntitlements])
  {
    v8 = [(NRRegistryProxy *)self registryDelegate];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __53__NRRegistryProxy_xpcRetrieveSecureProperties_block___block_invoke;
    v9[3] = &unk_1E86DB648;
    v9[4] = self;
    v10 = v7;
    [v8 xpcRetrieveSecureProperties:v6 block:v9];
  }

  else
  {
    (*(v7 + 2))(v7, 0);
  }
}

void __53__NRRegistryProxy_xpcRetrieveSecureProperties_block___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) connection];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__NRRegistryProxy_xpcRetrieveSecureProperties_block___block_invoke_2;
  v7[3] = &unk_1E86DACC0;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v4 runCompletionBlock:v7];
}

- (void)xpcSwitchIndex:(id)a3
{
  v4 = a3;
  v5 = [(NRRegistryProxy *)self registryDelegate];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __34__NRRegistryProxy_xpcSwitchIndex___block_invoke;
  v7[3] = &unk_1E86DC538;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 xpcSwitchIndex:v7];
}

void __34__NRRegistryProxy_xpcSwitchIndex___block_invoke(uint64_t a1, int a2)
{
  v4 = [*(a1 + 32) connection];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __34__NRRegistryProxy_xpcSwitchIndex___block_invoke_2;
  v5[3] = &unk_1E86DC510;
  v6 = *(a1 + 40);
  v7 = a2;
  [v4 runCompletionBlock:v5];
}

- (void)xpcLongForInternalPreference:(id)a3 withBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(NRRegistryProxy *)self registryDelegate];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __58__NRRegistryProxy_xpcLongForInternalPreference_withBlock___block_invoke;
  v10[3] = &unk_1E86DC588;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  [v8 xpcLongForInternalPreference:v7 withBlock:v10];
}

void __58__NRRegistryProxy_xpcLongForInternalPreference_withBlock___block_invoke(uint64_t a1, char a2, uint64_t a3)
{
  v6 = [*(a1 + 32) connection];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __58__NRRegistryProxy_xpcLongForInternalPreference_withBlock___block_invoke_2;
  v8[3] = &unk_1E86DC560;
  v7 = *(a1 + 40);
  v11 = a2;
  v9 = v7;
  v10 = a3;
  [v6 runCompletionBlock:v8];
}

- (void)xpcBooleanForInternalPreference:(id)a3 withBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(NRRegistryProxy *)self registryDelegate];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __61__NRRegistryProxy_xpcBooleanForInternalPreference_withBlock___block_invoke;
  v10[3] = &unk_1E86DC5D8;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  [v8 xpcBooleanForInternalPreference:v7 withBlock:v10];
}

void __61__NRRegistryProxy_xpcBooleanForInternalPreference_withBlock___block_invoke(uint64_t a1, char a2, char a3)
{
  v6 = [*(a1 + 32) connection];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__NRRegistryProxy_xpcBooleanForInternalPreference_withBlock___block_invoke_2;
  v7[3] = &unk_1E86DC5B0;
  v8 = *(a1 + 40);
  v9 = a2;
  v10 = a3;
  [v6 runCompletionBlock:v7];
}

void __54__NRRegistryProxy_xpcDeviceIDAtSwitchIndex_withBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) connection];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __54__NRRegistryProxy_xpcDeviceIDAtSwitchIndex_withBlock___block_invoke_2;
  v11[3] = &unk_1E86DB5D0;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  [v7 runCompletionBlock:v11];
}

- (void)xpcClientInfo:(id)a3
{
  v4 = a3;
  if ([(NRRegistryProxy *)self _hasInternalEntitlement])
  {
    v5 = [(NRRegistryProxy *)self registryDelegate];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __33__NRRegistryProxy_xpcClientInfo___block_invoke;
    v6[3] = &unk_1E86DC628;
    v6[4] = self;
    v7 = v4;
    [v5 xpcClientInfo:v6];
  }

  else
  {
    (*(v4 + 2))(v4, 0);
  }
}

void __33__NRRegistryProxy_xpcClientInfo___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) connection];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __33__NRRegistryProxy_xpcClientInfo___block_invoke_2;
  v7[3] = &unk_1E86DACC0;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v4 runCompletionBlock:v7];
}

- (void)xpcGetChangeHistoryWithBlock:(id)a3
{
  v4 = a3;
  if ([(NRRegistryProxy *)self _hasInternalEntitlement])
  {
    v5 = [(NRRegistryProxy *)self registryDelegate];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __48__NRRegistryProxy_xpcGetChangeHistoryWithBlock___block_invoke;
    v12[3] = &unk_1E86DC650;
    v12[4] = self;
    v13 = v4;
    v6 = v4;
    [v5 xpcGetChangeHistoryWithBlock:v12];

    v7 = v13;
  }

  else
  {
    v8 = [(NRXPCProxy *)self connection];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __48__NRRegistryProxy_xpcGetChangeHistoryWithBlock___block_invoke_3;
    v10[3] = &unk_1E86DAE70;
    v11 = v4;
    v9 = v4;
    [v8 runCompletionBlock:v10];

    v7 = v11;
  }
}

void __48__NRRegistryProxy_xpcGetChangeHistoryWithBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) connection];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__NRRegistryProxy_xpcGetChangeHistoryWithBlock___block_invoke_2;
  v7[3] = &unk_1E86DACC0;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v4 runCompletionBlock:v7];
}

- (void)xpcApplyDiff:(id)a3 withSecureProperties:(id)a4 block:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(NRRegistryProxy *)self loudHasEntitlement:@"com.apple.nano.nanoregistry.applydiff"])
  {
    v11 = [(NRRegistryProxy *)self registryDelegate];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __59__NRRegistryProxy_xpcApplyDiff_withSecureProperties_block___block_invoke;
    v18[3] = &unk_1E86DAD10;
    v18[4] = self;
    v19 = v10;
    v12 = v10;
    [v11 xpcApplyDiff:v8 withSecureProperties:v9 block:v18];

    v13 = v19;
  }

  else
  {
    v14 = [(NRXPCProxy *)self connection];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __59__NRRegistryProxy_xpcApplyDiff_withSecureProperties_block___block_invoke_3;
    v16[3] = &unk_1E86DAE70;
    v17 = v10;
    v15 = v10;
    [v14 runCompletionBlock:v16];

    v13 = v17;
  }
}

void __59__NRRegistryProxy_xpcApplyDiff_withSecureProperties_block___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) connection];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __59__NRRegistryProxy_xpcApplyDiff_withSecureProperties_block___block_invoke_2;
  v7[3] = &unk_1E86DACC0;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v4 runCompletionBlock:v7];
}

void __59__NRRegistryProxy_xpcApplyDiff_withSecureProperties_block___block_invoke_3(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = MEMORY[0x1E696ABC0];
  v6 = *MEMORY[0x1E696A578];
  v7[0] = @"entitlement required";
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v4 = [v2 errorWithDomain:@"com.apple.nanoregistry.registry" code:0 userInfo:v3];
  (*(v1 + 16))(v1, v4);

  v5 = *MEMORY[0x1E69E9840];
}

void __66__NRRegistryProxy_xpcSetMigrationConsented_forDeviceID_withBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) connection];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __66__NRRegistryProxy_xpcSetMigrationConsented_forDeviceID_withBlock___block_invoke_2;
  v3[3] = &unk_1E86DAE70;
  v4 = *(a1 + 40);
  [v2 runCompletionBlock:v3];
}

- (void)logCaller:(SEL)a3 args:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = nr_daemon_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v9 = nr_daemon_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(NRXPCProxy *)self appPath];
      v11 = NSStringFromSelector(a3);
      v13 = 138543874;
      v14 = v10;
      v15 = 2114;
      v16 = v11;
      v17 = 2114;
      v18 = v6;
      _os_log_impl(&dword_1E0ADF000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ called %{public}@ %{public}@", &v13, 0x20u);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

@end