@interface NDOManager
+ (void)postCAEventFor:(id)a3 eventDict:(id)a4;
- (BOOL)checkIsAvailableInStore:(id)a3;
- (BOOL)isAPSSupportedOverrideWithServerValue:(BOOL)a3;
- (NDOManager)init;
- (id)agentConnection;
- (id)clientConfiguration;
- (id)defaultDevice;
- (id)getDefaultDeviceInfoUsingForceCachedPolicy;
- (id)getDeviceInfoUsingForceCachedPolicyForSerialNumber:(id)a3;
- (id)pairedBTDevices;
- (id)pairedWatches;
- (id)payloadDictionaryForDeviceInfo:(id)a3 atIndex:(int64_t)a4;
- (id)payloadFrom:(id)a3 atIndex:(int64_t)a4 device:(id)a5;
- (void)_getDeviceListForLocalDevices:(id)a3 sessionID:(id)a4 params:(id)a5 completionBlock:(id)a6;
- (void)appSupportDictionaryWithReply:(id)a3;
- (void)apsSupportedOverride:(id)a3;
- (void)clearAllUserInitiatedFollowUpDismissalsWithReply:(id)a3;
- (void)clearUserInitiatedFollowUpDismissalForSerialNumber:(id)a3 withReply:(id)a4;
- (void)dismissFollowUpForSerialNumber:(id)a3 completion:(id)a4;
- (void)dismissFollowUps:(id)a3 completion:(id)a4;
- (void)dismissNotificationForSerialNumber:(id)a3 completion:(id)a4;
- (void)getAmsPropertiesForContext:(id)a3 withReply:(id)a4;
- (void)getCoverageInfoForSerialNumber:(id)a3 usingPolicy:(unint64_t)a4 withReply:(id)a5;
- (void)getDecodedParamsForPath:(id)a3 withReply:(id)a4;
- (void)getDefaultDeviceInfoUsingPolicy:(unint64_t)a3 withReply:(id)a4;
- (void)getDeviceInfoForSerialNumber:(id)a3 usingPolicy:(unint64_t)a4 withReply:(id)a5;
- (void)getDeviceListForLocalDevices:(id)a3 sessionID:(id)a4 policy:(unint64_t)a5 params:(id)a6 salesReplyOnly:(BOOL)a7 salesInfoReply:(id)a8 deviceInfoReply:(id)a9 completionBlock:(id)a10;
- (void)getLocalDeviceListWithReply:(id)a3;
- (void)getLocalDeviceWarrantyForSerialNumber:(id)a3 withReply:(id)a4;
- (void)getRemoteDeviceListWithReply:(id)a3;
- (void)getRemoteDeviceWarrantyForSerialNumber:(id)a3 withAdditionalHeaders:(id)a4 withReply:(id)a5;
- (void)getWarrantyUsingPolicy:(unint64_t)a3 withReply:(id)a4;
- (void)handleInternalCommand:(id)a3 withReply:(id)a4;
- (void)removePromoSectionWithHashValue:(int64_t)a3 andAckData:(id)a4;
- (void)scheduleOutreachAfter:(double)a3 withReply:(id)a4;
- (void)storeUserInitiatedFollowUpDismissalForSerialNumber:(id)a3 withReply:(id)a4;
- (void)ulWebURLOverride:(id)a3;
- (void)webURLOverride:(id)a3;
@end

@implementation NDOManager

- (NDOManager)init
{
  v7.receiver = self;
  v7.super_class = NDOManager;
  v2 = [(NDOManager *)&v7 init];
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_create("com.apple.newdeviceoutreach.ndoagent.devicelist", v3);
  workingQueue = v2->workingQueue;
  v2->workingQueue = v4;

  return v2;
}

- (id)agentConnection
{
  v2 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.ndoagent" options:0];
  v3 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_286D764F8];
  v4 = MEMORY[0x277CBEB98];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v5, v6, objc_opt_class(), 0}];
  [v3 setClasses:v7 forSelector:sel_getDeviceListForLocalDevices_sessionID_params_withReply_ argumentIndex:0 ofReply:0];

  v8 = MEMORY[0x277CBEB98];
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = [v8 setWithObjects:{v9, v10, objc_opt_class(), 0}];
  [v3 setClasses:v11 forSelector:sel_getDeviceListForLocalDevices_sessionID_params_withReply_ argumentIndex:0 ofReply:1];

  v12 = MEMORY[0x277CBEB98];
  v13 = objc_opt_class();
  v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
  [v3 setClasses:v14 forSelector:sel_getPrimaryFUPEligibleDeviceInfosUsingPolicy_updateFollowUps_withReply_ argumentIndex:0 ofReply:1];

  v15 = MEMORY[0x277CBEB98];
  v16 = objc_opt_class();
  v17 = [v15 setWithObjects:{v16, objc_opt_class(), 0}];
  [v3 setClasses:v17 forSelector:sel_getAllFUPEligibleDeviceInfosUsingPolicy_updateFollowUps_withReply_ argumentIndex:0 ofReply:1];

  v18 = MEMORY[0x277CBEB98];
  v19 = objc_opt_class();
  v20 = [v18 setWithObjects:{v19, objc_opt_class(), 0}];
  [v3 setClasses:v20 forSelector:sel_getBTDeviceInfosUsingPolicy_updateFollowUps_withReply_ argumentIndex:0 ofReply:1];

  v21 = MEMORY[0x277CBEB98];
  v22 = objc_opt_class();
  v23 = [v21 setWithObjects:{v22, objc_opt_class(), 0}];
  [v3 setClasses:v23 forSelector:sel_getBTPioneerDeviceInfosUsingPolicy_updateFollowUps_withReply_ argumentIndex:0 ofReply:1];

  v24 = MEMORY[0x277CBEB98];
  v25 = objc_opt_class();
  v26 = [v24 setWithObjects:{v25, objc_opt_class(), 0}];
  [v3 setClasses:v26 forSelector:sel_defaultDevice_ argumentIndex:0 ofReply:1];

  v27 = MEMORY[0x277CBEB98];
  v28 = objc_opt_class();
  v29 = [v27 setWithObjects:{v28, objc_opt_class(), 0}];
  [v3 setClasses:v29 forSelector:sel_pairedWatches_ argumentIndex:0 ofReply:1];

  v30 = MEMORY[0x277CBEB98];
  v31 = objc_opt_class();
  v32 = objc_opt_class();
  v33 = [v30 setWithObjects:{v31, v32, objc_opt_class(), 0}];
  [v3 setClasses:v33 forSelector:sel_pairedBTDevices_ argumentIndex:0 ofReply:1];

  v34 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v3 setClasses:v34 forSelector:sel_getLocalDeviceListWithReply_ argumentIndex:0 ofReply:1];

  v35 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v3 setClasses:v35 forSelector:sel_getRemoteDeviceListWithReply_ argumentIndex:0 ofReply:1];

  v36 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v3 setClasses:v36 forSelector:sel_getAmsPropertiesForContext_withReply_ argumentIndex:0 ofReply:1];

  [v2 setRemoteObjectInterface:v3];
  [v2 resume];

  return v2;
}

- (void)scheduleOutreachAfter:(double)a3 withReply:(id)a4
{
  v6 = a4;
  v7 = [(NDOManager *)self agentConnection];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __46__NDOManager_scheduleOutreachAfter_withReply___block_invoke;
  v16[3] = &unk_279975D98;
  v8 = v7;
  v17 = v8;
  v9 = v6;
  v18 = v9;
  v10 = [v8 remoteObjectProxyWithErrorHandler:v16];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __46__NDOManager_scheduleOutreachAfter_withReply___block_invoke_9;
  v13[3] = &unk_279975DC0;
  v14 = v8;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  [v10 scheduleOutreachAfter:v13 withReply:a3];
}

void __46__NDOManager_scheduleOutreachAfter_withReply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _NDOLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __46__NDOManager_scheduleOutreachAfter_withReply___block_invoke_cold_1();
  }

  [*(a1 + 32) invalidate];
  (*(*(a1 + 40) + 16))();
}

uint64_t __46__NDOManager_scheduleOutreachAfter_withReply___block_invoke_9(uint64_t a1, int a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = _NDOLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = a2;
    _os_log_impl(&dword_25BD52000, v4, OS_LOG_TYPE_DEFAULT, "Result %d", v7, 8u);
  }

  [*(a1 + 32) invalidate];
  result = (*(*(a1 + 40) + 16))();
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)getWarrantyUsingPolicy:(unint64_t)a3 withReply:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __47__NDOManager_getWarrantyUsingPolicy_withReply___block_invoke;
  v8[3] = &unk_279975DE8;
  v9 = v6;
  v7 = v6;
  [(NDOManager *)self getDefaultDeviceInfoUsingPolicy:a3 withReply:v8];
}

void __47__NDOManager_getWarrantyUsingPolicy_withReply___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 warranty];
  (*(v2 + 16))(v2, v3);
}

- (BOOL)checkIsAvailableInStore:(id)a3
{
  v4 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v5 = [(NDOManager *)self agentConnection];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __38__NDOManager_checkIsAvailableInStore___block_invoke;
  v13[3] = &unk_279975E10;
  v6 = v5;
  v14 = v6;
  v7 = [v6 synchronousRemoteObjectProxyWithErrorHandler:v13];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __38__NDOManager_checkIsAvailableInStore___block_invoke_12;
  v10[3] = &unk_279975E38;
  v8 = v6;
  v11 = v8;
  v12 = &v15;
  [v7 checkIsAvailableInStore:v4 withReply:v10];

  LOBYTE(v7) = *(v16 + 24);
  _Block_object_dispose(&v15, 8);

  return v7;
}

void __38__NDOManager_checkIsAvailableInStore___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _NDOLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __46__NDOManager_scheduleOutreachAfter_withReply___block_invoke_cold_1();
  }

  [*(a1 + 32) invalidate];
}

void __38__NDOManager_checkIsAvailableInStore___block_invoke_12(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [*(a1 + 32) invalidate];
  v4 = [v3 objectForKeyedSubscript:@"AppAvailabilityType"];
  *(*(*(a1 + 40) + 8) + 24) = v4 == 0;

  v5 = _NDOLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_25BD52000, v5, OS_LOG_TYPE_DEFAULT, "%@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)appSupportDictionaryWithReply:(id)a3
{
  v22[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x3032000000;
  v19[3] = __Block_byref_object_copy_;
  v19[4] = __Block_byref_object_dispose_;
  v21 = @"AppAvailabilityType";
  v22[0] = &unk_286D6E450;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
  v5 = [(NDOManager *)self agentConnection];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __44__NDOManager_appSupportDictionaryWithReply___block_invoke;
  v15[3] = &unk_279975E60;
  v6 = v5;
  v16 = v6;
  v7 = v4;
  v17 = v7;
  v18 = v19;
  v8 = [v6 remoteObjectProxyWithErrorHandler:v15];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __44__NDOManager_appSupportDictionaryWithReply___block_invoke_18;
  v12[3] = &unk_279975E88;
  v9 = v6;
  v13 = v9;
  v10 = v7;
  v14 = v10;
  [v8 appSupportAvailability:@"com.apple.supportapp" withReply:v12];

  _Block_object_dispose(v19, 8);
  v11 = *MEMORY[0x277D85DE8];
}

void __44__NDOManager_appSupportDictionaryWithReply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _NDOLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __46__NDOManager_scheduleOutreachAfter_withReply___block_invoke_cold_1();
  }

  [*(a1 + 32) invalidate];
  v5 = *(*(*(a1 + 48) + 8) + 40);
  (*(*(a1 + 40) + 16))();
}

void __44__NDOManager_appSupportDictionaryWithReply___block_invoke_18(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 invalidate];
  (*(*(a1 + 40) + 16))();
}

- (void)webURLOverride:(id)a3
{
  v4 = a3;
  v5 = [(NDOManager *)self agentConnection];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __29__NDOManager_webURLOverride___block_invoke;
  v13[3] = &unk_279975E10;
  v6 = v5;
  v14 = v6;
  v7 = [v6 synchronousRemoteObjectProxyWithErrorHandler:v13];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __29__NDOManager_webURLOverride___block_invoke_19;
  v10[3] = &unk_279975EB0;
  v11 = v6;
  v12 = v4;
  v8 = v4;
  v9 = v6;
  [v7 readWebURLOverride:v10];
}

void __29__NDOManager_webURLOverride___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _NDOLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __46__NDOManager_scheduleOutreachAfter_withReply___block_invoke_cold_1();
  }

  [*(a1 + 32) invalidate];
}

void __29__NDOManager_webURLOverride___block_invoke_19(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [*(a1 + 32) invalidate];
  (*(*(a1 + 40) + 16))();
  v4 = _NDOLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_25BD52000, v4, OS_LOG_TYPE_DEFAULT, "webURLOverride : %@", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)ulWebURLOverride:(id)a3
{
  v4 = a3;
  v5 = [(NDOManager *)self agentConnection];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __31__NDOManager_ulWebURLOverride___block_invoke;
  v13[3] = &unk_279975E10;
  v6 = v5;
  v14 = v6;
  v7 = [v6 synchronousRemoteObjectProxyWithErrorHandler:v13];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __31__NDOManager_ulWebURLOverride___block_invoke_21;
  v10[3] = &unk_279975EB0;
  v11 = v6;
  v12 = v4;
  v8 = v4;
  v9 = v6;
  [v7 readULWebURLOverride:v10];
}

void __31__NDOManager_ulWebURLOverride___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _NDOLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __46__NDOManager_scheduleOutreachAfter_withReply___block_invoke_cold_1();
  }

  [*(a1 + 32) invalidate];
}

void __31__NDOManager_ulWebURLOverride___block_invoke_21(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [*(a1 + 32) invalidate];
  (*(*(a1 + 40) + 16))();
  v4 = _NDOLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_25BD52000, v4, OS_LOG_TYPE_DEFAULT, "ulWebURLOverride : %@", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)apsSupportedOverride:(id)a3
{
  v4 = a3;
  v5 = [(NDOManager *)self agentConnection];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __35__NDOManager_apsSupportedOverride___block_invoke;
  v13[3] = &unk_279975E10;
  v6 = v5;
  v14 = v6;
  v7 = [v6 synchronousRemoteObjectProxyWithErrorHandler:v13];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __35__NDOManager_apsSupportedOverride___block_invoke_22;
  v10[3] = &unk_279975EB0;
  v11 = v6;
  v12 = v4;
  v8 = v4;
  v9 = v6;
  [v7 readAPSSupportedOverride:v10];
}

void __35__NDOManager_apsSupportedOverride___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _NDOLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __46__NDOManager_scheduleOutreachAfter_withReply___block_invoke_cold_1();
  }

  [*(a1 + 32) invalidate];
}

void __35__NDOManager_apsSupportedOverride___block_invoke_22(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [*(a1 + 32) invalidate];
  (*(*(a1 + 40) + 16))();
  v4 = _NDOLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_25BD52000, v4, OS_LOG_TYPE_DEFAULT, "apsSupportedOverride : %@", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (BOOL)isAPSSupportedOverrideWithServerValue:(BOOL)a3
{
  v15 = 0;
  v16[0] = &v15;
  v16[1] = 0x3032000000;
  v16[2] = __Block_byref_object_copy_;
  v16[3] = __Block_byref_object_dispose_;
  v17 = 0;
  if (+[NDOUtilities isInternal])
  {
    v5 = CFPreferencesCopyAppValue(@"isAPSSupported", @"com.apple.NewDeviceOutreach");
    v6 = *(v16[0] + 40);
    *(v16[0] + 40) = v5;

    if (!*(v16[0] + 40))
    {
      v7 = dispatch_semaphore_create(0);
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __52__NDOManager_isAPSSupportedOverrideWithServerValue___block_invoke;
      v12[3] = &unk_279975ED8;
      v14 = &v15;
      v8 = v7;
      v13 = v8;
      [(NDOManager *)self apsSupportedOverride:v12];
      v9 = dispatch_time(0, 2000000000);
      dispatch_semaphore_wait(v8, v9);
    }
  }

  if (*(v16[0] + 40))
  {
    v10 = _NDOLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [(NDOManager *)v16 isAPSSupportedOverrideWithServerValue:v10];
    }

    a3 = [*(v16[0] + 40) isEqualToString:@"1"];
  }

  _Block_object_dispose(&v15, 8);

  return a3;
}

void __52__NDOManager_isAPSSupportedOverrideWithServerValue___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)getDecodedParamsForPath:(id)a3 withReply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NDOManager *)self agentConnection];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __48__NDOManager_getDecodedParamsForPath_withReply___block_invoke;
  v19[3] = &unk_279975D98;
  v9 = v8;
  v20 = v9;
  v10 = v7;
  v21 = v10;
  v11 = [v9 remoteObjectProxyWithErrorHandler:v19];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __48__NDOManager_getDecodedParamsForPath_withReply___block_invoke_36;
  v15[3] = &unk_279975F00;
  v16 = v6;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v6;
  [v11 getDecodedParamsForPath:v14 withReply:v15];
}

void __48__NDOManager_getDecodedParamsForPath_withReply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _NDOLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __46__NDOManager_scheduleOutreachAfter_withReply___block_invoke_cold_1();
  }

  [*(a1 + 32) invalidate];
  (*(*(a1 + 40) + 16))();
}

void __48__NDOManager_getDecodedParamsForPath_withReply___block_invoke_36(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _NDOLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v7 = 136446722;
    v8 = "[NDOManager getDecodedParamsForPath:withReply:]_block_invoke";
    v9 = 2114;
    v10 = v5;
    v11 = 2114;
    v12 = v3;
    _os_log_impl(&dword_25BD52000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s:  %{public}@ : %{public}@", &v7, 0x20u);
  }

  [*(a1 + 40) invalidate];
  (*(*(a1 + 48) + 16))();

  v6 = *MEMORY[0x277D85DE8];
}

- (id)clientConfiguration
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v19 = 0;
  v2 = [(NDOManager *)self agentConnection];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __33__NDOManager_clientConfiguration__block_invoke;
  v12[3] = &unk_279975E10;
  v3 = v2;
  v13 = v3;
  v4 = [v3 synchronousRemoteObjectProxyWithErrorHandler:v12];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __33__NDOManager_clientConfiguration__block_invoke_37;
  v9[3] = &unk_279975E38;
  v5 = v3;
  v10 = v5;
  v11 = &v14;
  [v4 getClientConfigurationWithReply:v9];

  v6 = [NDOClientConfiguration alloc];
  v7 = [(NDOClientConfiguration *)v6 initWithConfigDictionary:v15[5]];

  _Block_object_dispose(&v14, 8);

  return v7;
}

void __33__NDOManager_clientConfiguration__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _NDOLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __33__NDOManager_clientConfiguration__block_invoke_cold_1();
  }

  [*(a1 + 32) invalidate];
}

void __33__NDOManager_clientConfiguration__block_invoke_37(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) invalidate];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)defaultDevice
{
  v24 = *MEMORY[0x277D85DE8];
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy_;
  v20 = __Block_byref_object_dispose_;
  v21 = 0;
  v2 = [(NDOManager *)self agentConnection];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __27__NDOManager_defaultDevice__block_invoke;
  v14[3] = &unk_279975E10;
  v3 = v2;
  v15 = v3;
  v4 = [v3 synchronousRemoteObjectProxyWithErrorHandler:v14];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __27__NDOManager_defaultDevice__block_invoke_39;
  v11[3] = &unk_279975F28;
  v5 = v3;
  v12 = v5;
  v13 = &v16;
  [v4 defaultDevice:v11];

  v6 = _NDOLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v17[5];
    *buf = 138477827;
    v23 = v7;
    _os_log_impl(&dword_25BD52000, v6, OS_LOG_TYPE_DEFAULT, "default device: %{private}@", buf, 0xCu);
  }

  v8 = v17[5];
  _Block_object_dispose(&v16, 8);

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

void __27__NDOManager_defaultDevice__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _NDOLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __46__NDOManager_scheduleOutreachAfter_withReply___block_invoke_cold_1();
  }

  [*(a1 + 32) invalidate];
}

void __27__NDOManager_defaultDevice__block_invoke_39(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) invalidate];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)pairedWatches
{
  v24 = *MEMORY[0x277D85DE8];
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy_;
  v20 = __Block_byref_object_dispose_;
  v21 = 0;
  v2 = [(NDOManager *)self agentConnection];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __27__NDOManager_pairedWatches__block_invoke;
  v14[3] = &unk_279975E10;
  v3 = v2;
  v15 = v3;
  v4 = [v3 synchronousRemoteObjectProxyWithErrorHandler:v14];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __27__NDOManager_pairedWatches__block_invoke_41;
  v11[3] = &unk_279975F50;
  v5 = v3;
  v12 = v5;
  v13 = &v16;
  [v4 pairedWatches:v11];

  v6 = _NDOLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v17[5];
    *buf = 138477827;
    v23 = v7;
    _os_log_impl(&dword_25BD52000, v6, OS_LOG_TYPE_DEFAULT, "paired watches : %{private}@", buf, 0xCu);
  }

  v8 = v17[5];
  _Block_object_dispose(&v16, 8);

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

void __27__NDOManager_pairedWatches__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _NDOLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __46__NDOManager_scheduleOutreachAfter_withReply___block_invoke_cold_1();
  }

  [*(a1 + 32) invalidate];
}

void __27__NDOManager_pairedWatches__block_invoke_41(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) invalidate];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)pairedBTDevices
{
  v24 = *MEMORY[0x277D85DE8];
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy_;
  v20 = __Block_byref_object_dispose_;
  v21 = 0;
  v2 = [(NDOManager *)self agentConnection];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __29__NDOManager_pairedBTDevices__block_invoke;
  v14[3] = &unk_279975E10;
  v3 = v2;
  v15 = v3;
  v4 = [v3 synchronousRemoteObjectProxyWithErrorHandler:v14];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __29__NDOManager_pairedBTDevices__block_invoke_43;
  v11[3] = &unk_279975F50;
  v5 = v3;
  v12 = v5;
  v13 = &v16;
  [v4 pairedBTDevices:v11];

  v6 = _NDOLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v17[5];
    *buf = 138477827;
    v23 = v7;
    _os_log_impl(&dword_25BD52000, v6, OS_LOG_TYPE_DEFAULT, "paired BTDevices : %{private}@", buf, 0xCu);
  }

  v8 = v17[5];
  _Block_object_dispose(&v16, 8);

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

void __29__NDOManager_pairedBTDevices__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _NDOLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __46__NDOManager_scheduleOutreachAfter_withReply___block_invoke_cold_1();
  }

  [*(a1 + 32) invalidate];
}

void __29__NDOManager_pairedBTDevices__block_invoke_43(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) invalidate];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)getDefaultDeviceInfoUsingForceCachedPolicy
{
  v2 = [(NDOManager *)self agentConnection];
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __56__NDOManager_getDefaultDeviceInfoUsingForceCachedPolicy__block_invoke;
  v11[3] = &unk_279975E10;
  v3 = v2;
  v12 = v3;
  v4 = [v3 synchronousRemoteObjectProxyWithErrorHandler:v11];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __56__NDOManager_getDefaultDeviceInfoUsingForceCachedPolicy__block_invoke_44;
  v8[3] = &unk_279975F78;
  v5 = v3;
  v9 = v5;
  v10 = &v13;
  [v4 getDefaultDeviceInfoUsingPolicy:1 withReply:v8];

  v6 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v6;
}

void __56__NDOManager_getDefaultDeviceInfoUsingForceCachedPolicy__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _NDOLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __46__NDOManager_scheduleOutreachAfter_withReply___block_invoke_cold_1();
  }

  [*(a1 + 32) invalidate];
}

void __56__NDOManager_getDefaultDeviceInfoUsingForceCachedPolicy__block_invoke_44(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) invalidate];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)getDefaultDeviceInfoUsingPolicy:(unint64_t)a3 withReply:(id)a4
{
  v6 = a4;
  v7 = [(NDOManager *)self agentConnection];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __56__NDOManager_getDefaultDeviceInfoUsingPolicy_withReply___block_invoke;
  v16[3] = &unk_279975D98;
  v8 = v7;
  v17 = v8;
  v9 = v6;
  v18 = v9;
  v10 = [v8 remoteObjectProxyWithErrorHandler:v16];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __56__NDOManager_getDefaultDeviceInfoUsingPolicy_withReply___block_invoke_45;
  v13[3] = &unk_279975FA0;
  v14 = v8;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  [v10 getDefaultDeviceInfoUsingPolicy:a3 withReply:v13];
}

void __56__NDOManager_getDefaultDeviceInfoUsingPolicy_withReply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _NDOLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __46__NDOManager_scheduleOutreachAfter_withReply___block_invoke_cold_1();
  }

  [*(a1 + 32) invalidate];
  (*(*(a1 + 40) + 16))();
}

void __56__NDOManager_getDefaultDeviceInfoUsingPolicy_withReply___block_invoke_45(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 invalidate];
  (*(*(a1 + 40) + 16))();
}

- (id)getDeviceInfoUsingForceCachedPolicyForSerialNumber:(id)a3
{
  v4 = a3;
  v5 = [(NDOManager *)self agentConnection];
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy_;
  v20 = __Block_byref_object_dispose_;
  v21 = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __65__NDOManager_getDeviceInfoUsingForceCachedPolicyForSerialNumber___block_invoke;
  v14[3] = &unk_279975E10;
  v6 = v5;
  v15 = v6;
  v7 = [v6 synchronousRemoteObjectProxyWithErrorHandler:v14];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __65__NDOManager_getDeviceInfoUsingForceCachedPolicyForSerialNumber___block_invoke_46;
  v11[3] = &unk_279975F78;
  v8 = v6;
  v12 = v8;
  v13 = &v16;
  [v7 getDeviceInfoForSerialNumber:v4 usingPolicy:1 withReply:v11];

  v9 = v17[5];
  _Block_object_dispose(&v16, 8);

  return v9;
}

void __65__NDOManager_getDeviceInfoUsingForceCachedPolicyForSerialNumber___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _NDOLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __46__NDOManager_scheduleOutreachAfter_withReply___block_invoke_cold_1();
  }

  [*(a1 + 32) invalidate];
}

void __65__NDOManager_getDeviceInfoUsingForceCachedPolicyForSerialNumber___block_invoke_46(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) invalidate];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)getDeviceInfoForSerialNumber:(id)a3 usingPolicy:(unint64_t)a4 withReply:(id)a5
{
  v7 = a3;
  v8 = a5;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __65__NDOManager_getDeviceInfoForSerialNumber_usingPolicy_withReply___block_invoke;
  v11[3] = &unk_279975FC8;
  v12 = v7;
  v13 = v8;
  v9 = v7;
  v10 = v8;
  [(NDOManager *)self getCoverageInfoForSerialNumber:v9 usingPolicy:2 withReply:v11];
}

void __65__NDOManager_getDeviceInfoForSerialNumber_usingPolicy_withReply___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = _NDOLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __65__NDOManager_getDeviceInfoForSerialNumber_usingPolicy_withReply___block_invoke_cold_1();
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v7 = *(a1 + 40);
    v8 = [NDOManagerSupportAppUtilities ndoDeviceInfoFromCoverageInfoData:a2 withSerialNumber:*(a1 + 32)];
    (*(v7 + 16))(v7, v8);
  }
}

void __103__NDOManager_getDeviceInfoForSerialNumber_usingPolicy_sessionID_params_andForcePostFollowup_withReply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _NDOLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __46__NDOManager_scheduleOutreachAfter_withReply___block_invoke_cold_1();
  }

  [*(a1 + 32) invalidate];
  (*(*(a1 + 40) + 16))();
}

void __103__NDOManager_getDeviceInfoForSerialNumber_usingPolicy_sessionID_params_andForcePostFollowup_withReply___block_invoke_49(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 invalidate];
  (*(*(a1 + 40) + 16))();
}

- (id)payloadFrom:(id)a3 atIndex:(int64_t)a4 device:(id)a5
{
  v59 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = [v9 serialNumber];
  v11 = [(NDOManager *)self defaultDevice];
  v12 = [v11 serialNumber];
  v48 = v10;
  v13 = [v12 isEqualToString:v10];

  v14 = [v8 acOfferEligibleUntil];

  if (v14)
  {
    v15 = [v8 acOfferEligibleUntil];
    v16 = [NDOUtilities daysFromDate:v15];
  }

  else
  {
    v16 = 1;
  }

  v17 = _NDOLogSystem();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [(NDOManager *)self defaultDevice];
    v19 = [v18 serialNumber];
    v20 = [v8 acOfferEligibleUntil];
    *buf = 136446978;
    v52 = "[NDOManager payloadFrom:atIndex:device:]";
    v53 = 2112;
    v54 = v19;
    v55 = 2112;
    v56 = v10;
    v57 = 2112;
    v58 = v20;
    _os_log_impl(&dword_25BD52000, v17, OS_LOG_TYPE_DEFAULT, "%{public}s: sn: %@ sn2: %@ %@", buf, 0x2Au);
  }

  v50[0] = v10;
  v49[0] = @"serialNum";
  v49[1] = @"currentDevice";
  v47 = [MEMORY[0x277CCABB0] numberWithBool:v13];
  v50[1] = v47;
  v49[2] = @"deviceSeq";
  v46 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
  v50[2] = v46;
  v49[3] = @"deviceName";
  v21 = [v9 name];
  v50[3] = v21;
  v49[4] = @"deviceImageUrl";
  v22 = [v9 deviceImageUrl];

  v23 = v22;
  if (!v22)
  {
    v24 = [v8 deviceImageUrl];
    v44 = v24;
    if (v24)
    {
      v23 = v24;
    }

    else
    {
      v23 = &stru_286D686B8;
    }
  }

  v50[4] = v23;
  v49[5] = @"deviceDesc";
  v25 = [v8 deviceDesc];
  v26 = v25;
  if (v25)
  {
    v27 = v25;
  }

  else
  {
    v27 = &stru_286D686B8;
  }

  v50[5] = v27;
  v49[6] = @"eligibilityRemainingInDays";
  v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v16];
  v50[6] = v28;
  v49[7] = @"sgId";
  v29 = [v8 sgId];
  v30 = v29;
  if (v29)
  {
    v31 = v29;
  }

  else
  {
    v31 = &stru_286D686B8;
  }

  v50[7] = v31;
  v49[8] = @"pfcId";
  v32 = [v8 pfcId];
  v33 = v32;
  if (v32)
  {
    v34 = v32;
  }

  else
  {
    v34 = &stru_286D686B8;
  }

  v50[8] = v34;
  v49[9] = @"pgfId";
  v35 = [v8 pgfId];
  v36 = v35;
  if (v35)
  {
    v37 = v35;
  }

  else
  {
    v37 = &stru_286D686B8;
  }

  v50[9] = v37;
  v49[10] = @"parentId";
  v38 = [v8 parentId];
  v39 = v38;
  if (v38)
  {
    v40 = v38;
  }

  else
  {
    v40 = &stru_286D686B8;
  }

  v50[10] = v40;
  v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:v49 count:11];

  if (!v22)
  {
  }

  v42 = *MEMORY[0x277D85DE8];

  return v41;
}

- (id)payloadDictionaryForDeviceInfo:(id)a3 atIndex:(int64_t)a4
{
  v6 = a3;
  v7 = v6;
  if (!v6)
  {
    goto LABEL_14;
  }

  v8 = [v6 warranty];
  v9 = [v8 acOfferDisplayDate];

  v10 = [v7 warranty];
  v11 = [v10 acOfferEligible];
  if (v9)
  {
    if (v11)
    {
      v12 = [v7 warranty];
      v13 = [v12 acOfferDisplayDate];
      [v13 timeIntervalSinceNow];
      if (v14 > 0.0)
      {

        v15 = 0;
LABEL_12:

        goto LABEL_13;
      }

      v18 = [v7 warranty];
      v19 = [v18 acOfferEligibleUntil];
      [v19 timeIntervalSinceNow];
      v17 = v20;

      goto LABEL_10;
    }

LABEL_8:
    v15 = 0;
LABEL_13:

    goto LABEL_15;
  }

  if (!v11)
  {
    goto LABEL_8;
  }

  v12 = [v7 warranty];
  v13 = [v12 acOfferEligibleUntil];
  [v13 timeIntervalSinceNow];
  v17 = v16;
LABEL_10:

  if (v17 > 0.0)
  {
    v10 = [v7 warranty];
    v12 = [v7 device];
    v15 = [(NDOManager *)self payloadFrom:v10 atIndex:a4 device:v12];
    goto LABEL_12;
  }

LABEL_14:
  v15 = 0;
LABEL_15:

  return v15;
}

- (void)getDeviceListForLocalDevices:(id)a3 sessionID:(id)a4 policy:(unint64_t)a5 params:(id)a6 salesReplyOnly:(BOOL)a7 salesInfoReply:(id)a8 deviceInfoReply:(id)a9 completionBlock:(id)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a6;
  v19 = a8;
  v20 = a9;
  v21 = a10;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __129__NDOManager_getDeviceListForLocalDevices_sessionID_policy_params_salesReplyOnly_salesInfoReply_deviceInfoReply_completionBlock___block_invoke;
  v28[3] = &unk_279976108;
  v28[4] = self;
  v29 = v16;
  v36 = a7;
  v32 = v21;
  v33 = v19;
  v30 = v17;
  v31 = v18;
  v34 = v20;
  v35 = a5;
  v22 = v20;
  v23 = v18;
  v24 = v17;
  v25 = v19;
  v26 = v21;
  v27 = v16;
  [(NDOManager *)self _getDeviceListForLocalDevices:v27 sessionID:v24 params:v23 completionBlock:v28];
}

void __129__NDOManager_getDeviceListForLocalDevices_sessionID_policy_params_salesReplyOnly_salesInfoReply_deviceInfoReply_completionBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v125 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v55 = a3;
  v58 = v4;
  v57 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v105 = 0;
  v106 = &v105;
  v107 = 0x2020000000;
  v108 = 0;
  v101 = 0;
  v102 = &v101;
  v103 = 0x2020000000;
  v104 = 0;
  v97 = 0;
  v98 = &v97;
  v99 = 0x2020000000;
  v100 = 0;
  if (v4 && [v4 count])
  {
    *(v98 + 24) = 1;
    [v57 addObjectsFromArray:v4];
    *(v106 + 24) = 1;
    v5 = *(a1 + 64);
    if (v5 && (*(a1 + 96) & 1) == 0)
    {
      (*(v5 + 16))(v5, v57);
    }

    v6 = _NDOLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      *&buf[4] = "[NDOManager getDeviceListForLocalDevices:sessionID:policy:params:salesReplyOnly:salesInfoReply:deviceInfoReply:completionBlock:]_block_invoke";
      *&buf[12] = 1024;
      *&buf[14] = 428;
      _os_log_impl(&dword_25BD52000, v6, OS_LOG_TYPE_DEFAULT, "%{public}s:%d completionBlock", buf, 0x12u);
    }
  }

  else
  {
    v7 = _NDOLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __129__NDOManager_getDeviceListForLocalDevices_sessionID_policy_params_salesReplyOnly_salesInfoReply_deviceInfoReply_completionBlock___block_invoke_cold_1(v7);
    }

    v8 = [*(a1 + 32) defaultDevice];
    v6 = [v8 serialNumber];

    v9 = [NDODeviceSection alloc];
    v10 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/PrivateFrameworks/NewDeviceOutreachUI.framework"];
    v11 = [v10 localizedStringForKey:@"THIS_DEVICE" value:&stru_286D686B8 table:@"Localizable"];
    v12 = [(NDODeviceSection *)v9 initWithLabel:v11 identifier:@"THIS_DEVICE"];

    v13 = [NDODeviceSection alloc];
    v14 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/PrivateFrameworks/NewDeviceOutreachUI.framework"];
    v15 = [v14 localizedStringForKey:@"MORE_DEVICES" value:&stru_286D686B8 table:@"Localizable"];
    v16 = [(NDODeviceSection *)v13 initWithLabel:v15 identifier:@"MORE_DEVICES"];

    [v57 addObject:v12];
    v95 = 0u;
    v96 = 0u;
    v93 = 0u;
    v94 = 0u;
    v17 = *(a1 + 40);
    v18 = [v17 countByEnumeratingWithState:&v93 objects:v124 count:16];
    if (v18)
    {
      v19 = *v94;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v94 != v19)
          {
            objc_enumerationMutation(v17);
          }

          v21 = *(*(&v93 + 1) + 8 * i);
          v22 = [v21 serialNumber];
          v23 = [v22 isEqualToString:v6];

          if (v23)
          {
            v24 = v12;
          }

          else
          {
            v24 = v16;
          }

          [(NDODeviceSection *)v24 addDevice:v21];
        }

        v18 = [v17 countByEnumeratingWithState:&v93 objects:v124 count:16];
      }

      while (v18);
    }

    v25 = [(NDODeviceSection *)v16 deviceList];
    v26 = [v25 count] == 0;

    if (!v26)
    {
      [v57 addObject:v16];
    }
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v121 = __Block_byref_object_copy_;
  v122 = __Block_byref_object_dispose_;
  v27 = v55;
  v123 = v27;
  v53 = dispatch_group_create();
  v54 = [MEMORY[0x277CBEB18] arrayWithCapacity:0];
  v56 = [MEMORY[0x277CBEB18] arrayWithCapacity:0];
  v28 = [MEMORY[0x277CBEB18] arrayWithCapacity:0];
  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  v29 = v57;
  v30 = [v29 countByEnumeratingWithState:&v89 objects:v119 count:16];
  if (v30)
  {
    v31 = *v90;
    do
    {
      for (j = 0; j != v30; ++j)
      {
        if (*v90 != v31)
        {
          objc_enumerationMutation(v29);
        }

        v33 = [*(*(&v89 + 1) + 8 * j) deviceList];
        [v28 addObjectsFromArray:v33];
      }

      v30 = [v29 countByEnumeratingWithState:&v89 objects:v119 count:16];
    }

    while (v30);
  }

  v34 = a1;
  if (*(v98 + 24) != 1 || !*(a1 + 72))
  {
    goto LABEL_38;
  }

  v86[0] = MEMORY[0x277D85DD0];
  v86[1] = 3221225472;
  v86[2] = __129__NDOManager_getDeviceListForLocalDevices_sessionID_policy_params_salesReplyOnly_salesInfoReply_deviceInfoReply_completionBlock___block_invoke_99;
  v86[3] = &unk_279975FF0;
  v35 = v56;
  v36 = *(a1 + 32);
  v87 = v35;
  v88 = v36;
  [v28 enumerateObjectsUsingBlock:v86];
  *(v102 + 24) = 1;
  v37 = *(a1 + 72);
  v38 = *(*&buf[8] + 40);
  v39 = [v35 count] ? v35 : 0;
  (*(v37 + 16))(v37, v38, v39, v27);
  v40 = _NDOLogSystem();
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
  {
    v52 = *(*&buf[8] + 40);
    *v109 = 136316162;
    v110 = "[NDOManager getDeviceListForLocalDevices:sessionID:policy:params:salesReplyOnly:salesInfoReply:deviceInfoReply:completionBlock:]_block_invoke_2";
    v111 = 1024;
    v112 = 450;
    v113 = 2112;
    v114 = v52;
    v115 = 2112;
    v116 = v27;
    v117 = 2112;
    v118 = v35;
    _os_log_debug_impl(&dword_25BD52000, v40, OS_LOG_TYPE_DEBUG, "%s:%d salesInfoReply salesURL:%@ agsULUrl:%@ %@", v109, 0x30u);
  }

  v41 = *(a1 + 96);
  v34 = a1;
  if ((v41 & 1) == 0)
  {
LABEL_38:
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __129__NDOManager_getDeviceListForLocalDevices_sessionID_policy_params_salesReplyOnly_salesInfoReply_deviceInfoReply_completionBlock___block_invoke_102;
    aBlock[3] = &unk_279976018;
    v42 = v54;
    v80 = v42;
    v84 = &v97;
    v43 = *(v34 + 72);
    v85 = buf;
    v44 = *(v34 + 32);
    v83 = v43;
    v81 = v44;
    v45 = v56;
    v82 = v45;
    v46 = _Block_copy(aBlock);
    v72[0] = MEMORY[0x277D85DD0];
    v72[1] = 3221225472;
    v72[2] = __129__NDOManager_getDeviceListForLocalDevices_sessionID_policy_params_salesReplyOnly_salesInfoReply_deviceInfoReply_completionBlock___block_invoke_2;
    v72[3] = &unk_2799760B8;
    v47 = v53;
    v48 = *(v34 + 32);
    v73 = v47;
    v74 = v48;
    v78 = *(a1 + 88);
    v75 = *(a1 + 48);
    v76 = *(a1 + 56);
    v49 = v46;
    v77 = v49;
    [v28 enumerateObjectsUsingBlock:v72];
    v50 = *(*(a1 + 32) + 8);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __129__NDOManager_getDeviceListForLocalDevices_sessionID_policy_params_salesReplyOnly_salesInfoReply_deviceInfoReply_completionBlock___block_invoke_105;
    block[3] = &unk_2799760E0;
    v65 = *(a1 + 64);
    v68 = &v105;
    v71 = *(a1 + 96);
    v61 = v29;
    v66 = *(a1 + 72);
    v69 = &v101;
    v70 = buf;
    v62 = v45;
    v63 = v27;
    v67 = *(a1 + 80);
    v64 = v42;
    dispatch_group_notify(v47, v50, block);
  }

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(&v97, 8);
  _Block_object_dispose(&v101, 8);
  _Block_object_dispose(&v105, 8);

  v51 = *MEMORY[0x277D85DE8];
}

void __129__NDOManager_getDeviceListForLocalDevices_sessionID_policy_params_salesReplyOnly_salesInfoReply_deviceInfoReply_completionBlock___block_invoke_99(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  if ([v7 acOfferEligible])
  {
    v5 = *(a1 + 32);
    v6 = [*(a1 + 40) payloadFrom:v7 atIndex:a3 device:v7];
    [v5 addObject:v6];
  }
}

void __129__NDOManager_getDeviceListForLocalDevices_sessionID_policy_params_salesReplyOnly_salesInfoReply_deviceInfoReply_completionBlock___block_invoke_102(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v16 = a3;
  v7 = a2;
  v8 = [v16 warranty];
  [v7 updateWithWarranty:v8];

  [*(a1 + 32) addObject:v16];
  if ((*(*(*(a1 + 64) + 8) + 24) & 1) != 0 || !*(a1 + 56))
  {
    goto LABEL_10;
  }

  v9 = [v16 warranty];
  v10 = [v9 agsULURL];
  if (!v10)
  {
    goto LABEL_6;
  }

  v11 = *(*(*(a1 + 72) + 8) + 40);

  if (!v11)
  {
    v9 = [v16 warranty];
    v12 = [v9 agsULURL];
    v13 = *(*(a1 + 72) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;

LABEL_6:
  }

  v15 = [*(a1 + 40) payloadDictionaryForDeviceInfo:v16 atIndex:a4];
  if (v15)
  {
    [*(a1 + 48) addObject:v15];
  }

LABEL_10:
}

void __129__NDOManager_getDeviceListForLocalDevices_sessionID_policy_params_salesReplyOnly_salesInfoReply_deviceInfoReply_completionBlock___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  dispatch_group_enter(*(a1 + 32));
  if ([v5 deviceType] == 2)
  {
    v6 = _NDOLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __129__NDOManager_getDeviceListForLocalDevices_sessionID_policy_params_salesReplyOnly_salesInfoReply_deviceInfoReply_completionBlock___block_invoke_2_cold_1(v5, v6);
    }

    dispatch_group_leave(*(a1 + 32));
  }

  else
  {
    v7 = *(a1 + 40);
    v8 = [v5 serialNumber];
    v9 = *(a1 + 72);
    v10 = *(a1 + 48);
    v11 = *(a1 + 56);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __129__NDOManager_getDeviceListForLocalDevices_sessionID_policy_params_salesReplyOnly_salesInfoReply_deviceInfoReply_completionBlock___block_invoke_3;
    v14[3] = &unk_279976090;
    v14[4] = *(a1 + 40);
    v12 = v5;
    v13 = *(a1 + 72);
    v15 = v12;
    v20 = v13;
    v16 = *(a1 + 32);
    v17 = *(a1 + 48);
    v18 = *(a1 + 56);
    v19 = *(a1 + 64);
    v21 = a3;
    [v7 getDeviceInfoForSerialNumber:v8 usingPolicy:v9 sessionID:v10 params:v11 andForcePostFollowup:0 withReply:v14];
  }
}

void __129__NDOManager_getDeviceListForLocalDevices_sessionID_policy_params_salesReplyOnly_salesInfoReply_deviceInfoReply_completionBlock___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __129__NDOManager_getDeviceListForLocalDevices_sessionID_policy_params_salesReplyOnly_salesInfoReply_deviceInfoReply_completionBlock___block_invoke_4;
  block[3] = &unk_279976068;
  v15 = v3;
  v5 = *(a1 + 40);
  v20 = *(a1 + 80);
  v6 = *(a1 + 48);
  v13 = *(a1 + 32);
  v7 = *(a1 + 56);
  *&v8 = v13;
  *(&v8 + 1) = v7;
  *&v9 = v5;
  *(&v9 + 1) = v6;
  v16 = v9;
  v17 = v8;
  v18 = *(a1 + 64);
  v10 = *(a1 + 72);
  v11 = *(a1 + 88);
  v19 = v10;
  v21 = v11;
  v12 = v3;
  dispatch_async(v4, block);
}

void __129__NDOManager_getDeviceListForLocalDevices_sessionID_policy_params_salesReplyOnly_salesInfoReply_deviceInfoReply_completionBlock___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) warranty];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 acOfferEligible];
    if (v4 == [*(a1 + 40) acOfferEligible] || *(a1 + 88) == 2)
    {
      v6 = *(a1 + 32);
      v5 = *(a1 + 40);
      v7 = *(a1 + 96);
      (*(*(a1 + 80) + 16))();
    }

    else
    {
      dispatch_group_enter(*(a1 + 48));
      v8 = *(a1 + 56);
      v9 = [*(a1 + 40) serialNumber];
      v10 = *(a1 + 64);
      v11 = *(a1 + 72);
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __129__NDOManager_getDeviceListForLocalDevices_sessionID_policy_params_salesReplyOnly_salesInfoReply_deviceInfoReply_completionBlock___block_invoke_5;
      v14[3] = &unk_279976040;
      v17 = *(a1 + 80);
      v12 = *(a1 + 40);
      v13 = *(a1 + 96);
      v15 = v12;
      v18 = v13;
      v16 = *(a1 + 48);
      [v8 getDeviceInfoForSerialNumber:v9 usingPolicy:2 sessionID:v10 params:v11 andForcePostFollowup:0 withReply:v14];
    }
  }

  dispatch_group_leave(*(a1 + 48));
}

void __129__NDOManager_getDeviceListForLocalDevices_sessionID_policy_params_salesReplyOnly_salesInfoReply_deviceInfoReply_completionBlock___block_invoke_5(void *a1)
{
  v2 = a1[4];
  v3 = a1[7];
  (*(a1[6] + 16))();
  v4 = a1[5];

  dispatch_group_leave(v4);
}

uint64_t __129__NDOManager_getDeviceListForLocalDevices_sessionID_policy_params_salesReplyOnly_salesInfoReply_deviceInfoReply_completionBlock___block_invoke_105(uint64_t result)
{
  v1 = result;
  v15 = *MEMORY[0x277D85DE8];
  if (*(result + 64) && (*(*(*(result + 88) + 8) + 24) & 1) == 0 && (*(result + 112) & 1) == 0)
  {
    v2 = _NDOLogSystem();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136446466;
      v12 = "[NDOManager getDeviceListForLocalDevices:sessionID:policy:params:salesReplyOnly:salesInfoReply:deviceInfoReply:completionBlock:]_block_invoke";
      v13 = 1024;
      v14 = 507;
      _os_log_impl(&dword_25BD52000, v2, OS_LOG_TYPE_DEFAULT, "%{public}s:%d completionBlock", &v11, 0x12u);
    }

    v3 = *(v1 + 32);
    result = (*(*(v1 + 64) + 16))();
  }

  if (*(v1 + 72) && (*(*(*(v1 + 96) + 8) + 24) & 1) == 0)
  {
    v4 = _NDOLogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136446466;
      v12 = "[NDOManager getDeviceListForLocalDevices:sessionID:policy:params:salesReplyOnly:salesInfoReply:deviceInfoReply:completionBlock:]_block_invoke";
      v13 = 1024;
      v14 = 512;
      _os_log_impl(&dword_25BD52000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s:%d salesInfoReply", &v11, 0x12u);
    }

    v5 = *(v1 + 72);
    v6 = *(*(*(v1 + 104) + 8) + 40);
    if ([*(v1 + 40) count])
    {
      v7 = *(v1 + 40);
    }

    else
    {
      v7 = 0;
    }

    result = (*(v5 + 16))(v5, v6, v7, *(v1 + 48));
  }

  if (*(v1 + 80) && (*(v1 + 112) & 1) == 0)
  {
    v8 = _NDOLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136446466;
      v12 = "[NDOManager getDeviceListForLocalDevices:sessionID:policy:params:salesReplyOnly:salesInfoReply:deviceInfoReply:completionBlock:]_block_invoke";
      v13 = 1024;
      v14 = 517;
      _os_log_impl(&dword_25BD52000, v8, OS_LOG_TYPE_DEFAULT, "%{public}s:%d deviceInfoReply", &v11, 0x12u);
    }

    v9 = *(v1 + 56);
    result = (*(*(v1 + 80) + 16))();
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_getDeviceListForLocalDevices:(id)a3 sessionID:(id)a4 params:(id)a5 completionBlock:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [(NDOManager *)self agentConnection];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __77__NDOManager__getDeviceListForLocalDevices_sessionID_params_completionBlock___block_invoke;
  v23[3] = &unk_279975D98;
  v15 = v14;
  v24 = v15;
  v16 = v10;
  v25 = v16;
  v17 = [v15 remoteObjectProxyWithErrorHandler:v23];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __77__NDOManager__getDeviceListForLocalDevices_sessionID_params_completionBlock___block_invoke_107;
  v20[3] = &unk_279976130;
  v21 = v15;
  v22 = v16;
  v18 = v16;
  v19 = v15;
  [v17 getDeviceListForLocalDevices:v13 sessionID:v12 params:v11 withReply:v20];
}

void __77__NDOManager__getDeviceListForLocalDevices_sessionID_params_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _NDOLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __77__NDOManager__getDeviceListForLocalDevices_sessionID_params_completionBlock___block_invoke_cold_1();
  }

  [*(a1 + 32) invalidate];
  (*(*(a1 + 40) + 16))();
}

void __77__NDOManager__getDeviceListForLocalDevices_sessionID_params_completionBlock___block_invoke_107(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  [v5 invalidate];
  (*(*(a1 + 40) + 16))();
}

void __84__NDOManager_getPrimaryFUPEligibleDeviceInfosUsingPolicy_updateFollowUps_withReply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _NDOLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __46__NDOManager_scheduleOutreachAfter_withReply___block_invoke_cold_1();
  }

  [*(a1 + 32) invalidate];
  (*(*(a1 + 40) + 16))();
}

void __84__NDOManager_getPrimaryFUPEligibleDeviceInfosUsingPolicy_updateFollowUps_withReply___block_invoke_108(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 invalidate];
  (*(*(a1 + 40) + 16))();
}

void __80__NDOManager_getAllFUPEligibleDeviceInfosUsingPolicy_updateFollowUps_withReply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _NDOLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __46__NDOManager_scheduleOutreachAfter_withReply___block_invoke_cold_1();
  }

  [*(a1 + 32) invalidate];
  (*(*(a1 + 40) + 16))();
}

void __80__NDOManager_getAllFUPEligibleDeviceInfosUsingPolicy_updateFollowUps_withReply___block_invoke_109(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 invalidate];
  (*(*(a1 + 40) + 16))();
}

void __68__NDOManager_getBTDeviceInfosUsingPolicy_updateFollowUps_withReply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _NDOLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __46__NDOManager_scheduleOutreachAfter_withReply___block_invoke_cold_1();
  }

  [*(a1 + 32) invalidate];
  (*(*(a1 + 40) + 16))();
}

void __68__NDOManager_getBTDeviceInfosUsingPolicy_updateFollowUps_withReply___block_invoke_110(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 invalidate];
  (*(*(a1 + 40) + 16))();
}

void __75__NDOManager_getBTPioneerDeviceInfosUsingPolicy_updateFollowUps_withReply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _NDOLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __46__NDOManager_scheduleOutreachAfter_withReply___block_invoke_cold_1();
  }

  [*(a1 + 32) invalidate];
  (*(*(a1 + 40) + 16))();
}

void __75__NDOManager_getBTPioneerDeviceInfosUsingPolicy_updateFollowUps_withReply___block_invoke_111(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 invalidate];
  (*(*(a1 + 40) + 16))();
}

- (void)dismissFollowUpForSerialNumber:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(NDOManager *)self agentConnection];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __56__NDOManager_dismissFollowUpForSerialNumber_completion___block_invoke;
  v17[3] = &unk_279975D98;
  v9 = v8;
  v18 = v9;
  v10 = v6;
  v19 = v10;
  v11 = [v9 remoteObjectProxyWithErrorHandler:v17];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __56__NDOManager_dismissFollowUpForSerialNumber_completion___block_invoke_112;
  v14[3] = &unk_279975DC0;
  v15 = v9;
  v16 = v10;
  v12 = v10;
  v13 = v9;
  [v11 dismissFollowUpForSerialNumber:v7 completion:v14];
}

void __56__NDOManager_dismissFollowUpForSerialNumber_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _NDOLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __46__NDOManager_scheduleOutreachAfter_withReply___block_invoke_cold_1();
  }

  [*(a1 + 32) invalidate];
  (*(*(a1 + 40) + 16))();
}

uint64_t __56__NDOManager_dismissFollowUpForSerialNumber_completion___block_invoke_112(uint64_t a1)
{
  [*(a1 + 32) invalidate];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)dismissNotificationForSerialNumber:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(NDOManager *)self agentConnection];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __60__NDOManager_dismissNotificationForSerialNumber_completion___block_invoke;
  v17[3] = &unk_279975D98;
  v9 = v8;
  v18 = v9;
  v10 = v6;
  v19 = v10;
  v11 = [v9 remoteObjectProxyWithErrorHandler:v17];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __60__NDOManager_dismissNotificationForSerialNumber_completion___block_invoke_113;
  v14[3] = &unk_279975DC0;
  v15 = v9;
  v16 = v10;
  v12 = v10;
  v13 = v9;
  [v11 dismissNotificationForSerialNumber:v7 completion:v14];
}

void __60__NDOManager_dismissNotificationForSerialNumber_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _NDOLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __46__NDOManager_scheduleOutreachAfter_withReply___block_invoke_cold_1();
  }

  [*(a1 + 32) invalidate];
  (*(*(a1 + 40) + 16))();
}

uint64_t __60__NDOManager_dismissNotificationForSerialNumber_completion___block_invoke_113(uint64_t a1)
{
  [*(a1 + 32) invalidate];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

+ (void)postCAEventFor:(id)a3 eventDict:(id)a4
{
  v7 = a3;
  v8 = a4;
  v5 = v8;
  v6 = v7;
  AnalyticsSendEventLazy();
}

id __39__NDOManager_postCAEventFor_eventDict___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = _NDOLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v8 = 138412546;
    v9 = v3;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&dword_25BD52000, v2, OS_LOG_TYPE_DEFAULT, "Posting for event: %@ with value: %@", &v8, 0x16u);
  }

  v5 = *(a1 + 40);
  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)clearUserInitiatedFollowUpDismissalForSerialNumber:(id)a3 withReply:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(NDOManager *)self agentConnection];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __75__NDOManager_clearUserInitiatedFollowUpDismissalForSerialNumber_withReply___block_invoke;
  v17[3] = &unk_279975D98;
  v9 = v8;
  v18 = v9;
  v10 = v6;
  v19 = v10;
  v11 = [v9 remoteObjectProxyWithErrorHandler:v17];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __75__NDOManager_clearUserInitiatedFollowUpDismissalForSerialNumber_withReply___block_invoke_208;
  v14[3] = &unk_2799761A8;
  v15 = v9;
  v16 = v10;
  v12 = v10;
  v13 = v9;
  [v11 clearUserInitiatedFollowUpDismissalForSerialNumber:v7 completion:v14];
}

void __75__NDOManager_clearUserInitiatedFollowUpDismissalForSerialNumber_withReply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _NDOLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __46__NDOManager_scheduleOutreachAfter_withReply___block_invoke_cold_1();
  }

  [*(a1 + 32) invalidate];
  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))();
  }
}

uint64_t __75__NDOManager_clearUserInitiatedFollowUpDismissalForSerialNumber_withReply___block_invoke_208(uint64_t a1)
{
  [*(a1 + 32) invalidate];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)clearAllUserInitiatedFollowUpDismissalsWithReply:(id)a3
{
  v4 = a3;
  v5 = [(NDOManager *)self agentConnection];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __63__NDOManager_clearAllUserInitiatedFollowUpDismissalsWithReply___block_invoke;
  v14[3] = &unk_279975D98;
  v6 = v5;
  v15 = v6;
  v7 = v4;
  v16 = v7;
  v8 = [v6 remoteObjectProxyWithErrorHandler:v14];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __63__NDOManager_clearAllUserInitiatedFollowUpDismissalsWithReply___block_invoke_209;
  v11[3] = &unk_2799761A8;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [v8 clearAllUserInitiatedFollowUpDismissalsWithCompletion:v11];
}

void __63__NDOManager_clearAllUserInitiatedFollowUpDismissalsWithReply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _NDOLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __46__NDOManager_scheduleOutreachAfter_withReply___block_invoke_cold_1();
  }

  [*(a1 + 32) invalidate];
  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))();
  }
}

uint64_t __63__NDOManager_clearAllUserInitiatedFollowUpDismissalsWithReply___block_invoke_209(uint64_t a1)
{
  [*(a1 + 32) invalidate];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)storeUserInitiatedFollowUpDismissalForSerialNumber:(id)a3 withReply:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = _NDOLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136380675;
    v23 = "[NDOManager storeUserInitiatedFollowUpDismissalForSerialNumber:withReply:]";
    _os_log_impl(&dword_25BD52000, v8, OS_LOG_TYPE_DEFAULT, "%{private}s", buf, 0xCu);
  }

  v9 = [(NDOManager *)self agentConnection];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __75__NDOManager_storeUserInitiatedFollowUpDismissalForSerialNumber_withReply___block_invoke;
  v19[3] = &unk_279975D98;
  v10 = v9;
  v20 = v10;
  v11 = v6;
  v21 = v11;
  v12 = [v10 remoteObjectProxyWithErrorHandler:v19];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __75__NDOManager_storeUserInitiatedFollowUpDismissalForSerialNumber_withReply___block_invoke_210;
  v16[3] = &unk_2799761A8;
  v17 = v10;
  v18 = v11;
  v13 = v11;
  v14 = v10;
  [v12 storeUserInitiatedFollowUpDismissalForSerialNumber:v7 completion:v16];

  v15 = *MEMORY[0x277D85DE8];
}

void __75__NDOManager_storeUserInitiatedFollowUpDismissalForSerialNumber_withReply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _NDOLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __46__NDOManager_scheduleOutreachAfter_withReply___block_invoke_cold_1();
  }

  [*(a1 + 32) invalidate];
  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))();
  }
}

uint64_t __75__NDOManager_storeUserInitiatedFollowUpDismissalForSerialNumber_withReply___block_invoke_210(uint64_t a1)
{
  [*(a1 + 32) invalidate];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)getLocalDeviceListWithReply:(id)a3
{
  v4 = a3;
  v5 = [(NDOManager *)self agentConnection];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __42__NDOManager_getLocalDeviceListWithReply___block_invoke;
  v14[3] = &unk_279975D98;
  v6 = v5;
  v15 = v6;
  v7 = v4;
  v16 = v7;
  v8 = [v6 remoteObjectProxyWithErrorHandler:v14];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __42__NDOManager_getLocalDeviceListWithReply___block_invoke_211;
  v11[3] = &unk_2799761D0;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [v8 getLocalDeviceListWithReply:v11];
}

void __42__NDOManager_getLocalDeviceListWithReply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _NDOLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __46__NDOManager_scheduleOutreachAfter_withReply___block_invoke_cold_1();
  }

  [*(a1 + 32) invalidate];
  (*(*(a1 + 40) + 16))();
}

void __42__NDOManager_getLocalDeviceListWithReply___block_invoke_211(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 invalidate];
  (*(*(a1 + 40) + 16))();
}

- (void)getRemoteDeviceListWithReply:(id)a3
{
  v4 = a3;
  v5 = [(NDOManager *)self agentConnection];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __43__NDOManager_getRemoteDeviceListWithReply___block_invoke;
  v14[3] = &unk_279975D98;
  v6 = v5;
  v15 = v6;
  v7 = v4;
  v16 = v7;
  v8 = [v6 remoteObjectProxyWithErrorHandler:v14];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __43__NDOManager_getRemoteDeviceListWithReply___block_invoke_213;
  v11[3] = &unk_2799761D0;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [v8 getRemoteDeviceListWithReply:v11];
}

void __43__NDOManager_getRemoteDeviceListWithReply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _NDOLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __46__NDOManager_scheduleOutreachAfter_withReply___block_invoke_cold_1();
  }

  [*(a1 + 32) invalidate];
  (*(*(a1 + 40) + 16))();
}

void __43__NDOManager_getRemoteDeviceListWithReply___block_invoke_213(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 invalidate];
  (*(*(a1 + 40) + 16))();
}

- (void)removePromoSectionWithHashValue:(int64_t)a3 andAckData:(id)a4
{
  v6 = a4;
  v7 = [(NDOManager *)self agentConnection];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __57__NDOManager_removePromoSectionWithHashValue_andAckData___block_invoke;
  v13[3] = &unk_279975E10;
  v8 = v7;
  v14 = v8;
  v9 = [v8 remoteObjectProxyWithErrorHandler:v13];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __57__NDOManager_removePromoSectionWithHashValue_andAckData___block_invoke_214;
  v11[3] = &unk_2799761F8;
  v12 = v8;
  v10 = v8;
  [v9 removePromoSectionWithHashValue:a3 andAckData:v6 withReply:v11];
}

void __57__NDOManager_removePromoSectionWithHashValue_andAckData___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _NDOLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __46__NDOManager_scheduleOutreachAfter_withReply___block_invoke_cold_1();
  }

  [*(a1 + 32) invalidate];
}

- (void)getLocalDeviceWarrantyForSerialNumber:(id)a3 withReply:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(NDOManager *)self agentConnection];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __62__NDOManager_getLocalDeviceWarrantyForSerialNumber_withReply___block_invoke;
  v17[3] = &unk_279975D98;
  v9 = v8;
  v18 = v9;
  v10 = v6;
  v19 = v10;
  v11 = [v9 remoteObjectProxyWithErrorHandler:v17];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __62__NDOManager_getLocalDeviceWarrantyForSerialNumber_withReply___block_invoke_215;
  v14[3] = &unk_2799761D0;
  v15 = v9;
  v16 = v10;
  v12 = v10;
  v13 = v9;
  [v11 getLocalDeviceWarrantyForSerialNumber:v7 withReply:v14];
}

void __62__NDOManager_getLocalDeviceWarrantyForSerialNumber_withReply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _NDOLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __46__NDOManager_scheduleOutreachAfter_withReply___block_invoke_cold_1();
  }

  [*(a1 + 32) invalidate];
  (*(*(a1 + 40) + 16))();
}

void __62__NDOManager_getLocalDeviceWarrantyForSerialNumber_withReply___block_invoke_215(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 invalidate];
  (*(*(a1 + 40) + 16))();
}

- (void)getRemoteDeviceWarrantyForSerialNumber:(id)a3 withAdditionalHeaders:(id)a4 withReply:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(NDOManager *)self agentConnection];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __85__NDOManager_getRemoteDeviceWarrantyForSerialNumber_withAdditionalHeaders_withReply___block_invoke;
  v20[3] = &unk_279975D98;
  v12 = v11;
  v21 = v12;
  v13 = v8;
  v22 = v13;
  v14 = [v12 remoteObjectProxyWithErrorHandler:v20];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __85__NDOManager_getRemoteDeviceWarrantyForSerialNumber_withAdditionalHeaders_withReply___block_invoke_216;
  v17[3] = &unk_2799761D0;
  v18 = v12;
  v19 = v13;
  v15 = v13;
  v16 = v12;
  [v14 getRemoteDeviceWarrantyForSerialNumber:v10 withAdditionalHeaders:v9 withReply:v17];
}

void __85__NDOManager_getRemoteDeviceWarrantyForSerialNumber_withAdditionalHeaders_withReply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _NDOLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __46__NDOManager_scheduleOutreachAfter_withReply___block_invoke_cold_1();
  }

  [*(a1 + 32) invalidate];
  (*(*(a1 + 40) + 16))();
}

void __85__NDOManager_getRemoteDeviceWarrantyForSerialNumber_withAdditionalHeaders_withReply___block_invoke_216(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 invalidate];
  (*(*(a1 + 40) + 16))();
}

- (void)getCoverageInfoForSerialNumber:(id)a3 usingPolicy:(unint64_t)a4 withReply:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [(NDOManager *)self agentConnection];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __67__NDOManager_getCoverageInfoForSerialNumber_usingPolicy_withReply___block_invoke;
  v19[3] = &unk_279975D98;
  v11 = v10;
  v20 = v11;
  v12 = v8;
  v21 = v12;
  v13 = [v11 remoteObjectProxyWithErrorHandler:v19];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __67__NDOManager_getCoverageInfoForSerialNumber_usingPolicy_withReply___block_invoke_217;
  v16[3] = &unk_279976220;
  v17 = v11;
  v18 = v12;
  v14 = v12;
  v15 = v11;
  [v13 getCoverageInfoForSerialNumber:v9 usingPolicy:a4 withReply:v16];
}

void __67__NDOManager_getCoverageInfoForSerialNumber_usingPolicy_withReply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _NDOLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __46__NDOManager_scheduleOutreachAfter_withReply___block_invoke_cold_1();
  }

  [*(a1 + 32) invalidate];
  (*(*(a1 + 40) + 16))();
}

void __67__NDOManager_getCoverageInfoForSerialNumber_usingPolicy_withReply___block_invoke_217(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  [v5 invalidate];
  (*(*(a1 + 40) + 16))();
}

- (void)getAmsPropertiesForContext:(id)a3 withReply:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(NDOManager *)self agentConnection];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __51__NDOManager_getAmsPropertiesForContext_withReply___block_invoke;
  v17[3] = &unk_279975D98;
  v9 = v8;
  v18 = v9;
  v10 = v6;
  v19 = v10;
  v11 = [v9 remoteObjectProxyWithErrorHandler:v17];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __51__NDOManager_getAmsPropertiesForContext_withReply___block_invoke_218;
  v14[3] = &unk_279976248;
  v15 = v9;
  v16 = v10;
  v12 = v10;
  v13 = v9;
  [v11 getAmsPropertiesForContext:v7 withReply:v14];
}

void __51__NDOManager_getAmsPropertiesForContext_withReply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _NDOLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __46__NDOManager_scheduleOutreachAfter_withReply___block_invoke_cold_1();
  }

  [*(a1 + 32) invalidate];
  (*(*(a1 + 40) + 16))();
}

void __51__NDOManager_getAmsPropertiesForContext_withReply___block_invoke_218(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  [v5 invalidate];
  (*(*(a1 + 40) + 16))();
}

- (void)dismissFollowUps:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(NDOManager *)self agentConnection];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __42__NDOManager_dismissFollowUps_completion___block_invoke;
  v17[3] = &unk_279975D98;
  v9 = v8;
  v18 = v9;
  v10 = v6;
  v19 = v10;
  v11 = [v9 remoteObjectProxyWithErrorHandler:v17];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __42__NDOManager_dismissFollowUps_completion___block_invoke_220;
  v14[3] = &unk_279975D98;
  v15 = v9;
  v16 = v10;
  v12 = v10;
  v13 = v9;
  [v11 dismissFollowUps:v7 completion:v14];
}

void __42__NDOManager_dismissFollowUps_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _NDOLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __46__NDOManager_scheduleOutreachAfter_withReply___block_invoke_cold_1();
  }

  [*(a1 + 32) invalidate];
  (*(*(a1 + 40) + 16))();
}

void __42__NDOManager_dismissFollowUps_completion___block_invoke_220(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 invalidate];
  (*(*(a1 + 40) + 16))();
}

- (void)handleInternalCommand:(id)a3 withReply:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(NDOManager *)self agentConnection];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __46__NDOManager_handleInternalCommand_withReply___block_invoke;
  v17[3] = &unk_279975D98;
  v9 = v8;
  v18 = v9;
  v10 = v6;
  v19 = v10;
  v11 = [v9 remoteObjectProxyWithErrorHandler:v17];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __46__NDOManager_handleInternalCommand_withReply___block_invoke_221;
  v14[3] = &unk_279975D98;
  v15 = v9;
  v16 = v10;
  v12 = v10;
  v13 = v9;
  [v11 handleInternalCommand:v7 withReply:v14];
}

void __46__NDOManager_handleInternalCommand_withReply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _NDOLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __46__NDOManager_scheduleOutreachAfter_withReply___block_invoke_cold_1();
  }

  [*(a1 + 32) invalidate];
  (*(*(a1 + 40) + 16))();
}

void __46__NDOManager_handleInternalCommand_withReply___block_invoke_221(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 invalidate];
  (*(*(a1 + 40) + 16))();
}

void __46__NDOManager_scheduleOutreachAfter_withReply___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_25BD52000, v0, v1, "%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)isAPSSupportedOverrideWithServerValue:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(*a1 + 40);
  v4 = 138412290;
  v5 = v2;
  _os_log_debug_impl(&dword_25BD52000, a2, OS_LOG_TYPE_DEBUG, "Using overriden value %@", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

void __33__NDOManager_clientConfiguration__block_invoke_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 136446466;
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(&dword_25BD52000, v0, OS_LOG_TYPE_ERROR, "%{public}s error:%@", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

void __65__NDOManager_getDeviceInfoForSerialNumber_usingPolicy_withReply___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_25BD52000, v0, v1, "Unable to get coverage info with error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __129__NDOManager_getDeviceListForLocalDevices_sessionID_policy_params_salesReplyOnly_salesInfoReply_deviceInfoReply_completionBlock___block_invoke_2_cold_1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 serialNumber];
  v5[0] = 136315394;
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(&dword_25BD52000, a2, OS_LOG_TYPE_DEBUG, "%s Skipping APPLEID Device %@", v5, 0x16u);

  v4 = *MEMORY[0x277D85DE8];
}

void __77__NDOManager__getDeviceListForLocalDevices_sessionID_params_completionBlock___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_25BD52000, v0, v1, "Device list failed with %@, falling to summarily call ", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end