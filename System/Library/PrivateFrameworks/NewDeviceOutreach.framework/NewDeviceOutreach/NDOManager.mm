@interface NDOManager
+ (void)postCAEventFor:(id)for eventDict:(id)dict;
- (BOOL)checkIsAvailableInStore:(id)store;
- (BOOL)isAPSSupportedOverrideWithServerValue:(BOOL)value;
- (NDOManager)init;
- (id)agentConnection;
- (id)clientConfiguration;
- (id)defaultDevice;
- (id)getDefaultDeviceInfoUsingForceCachedPolicy;
- (id)getDeviceInfoUsingForceCachedPolicyForSerialNumber:(id)number;
- (id)pairedBTDevices;
- (id)pairedWatches;
- (id)payloadDictionaryForDeviceInfo:(id)info atIndex:(int64_t)index;
- (id)payloadFrom:(id)from atIndex:(int64_t)index device:(id)device;
- (void)_getDeviceListForLocalDevices:(id)devices sessionID:(id)d params:(id)params completionBlock:(id)block;
- (void)appSupportDictionaryWithReply:(id)reply;
- (void)apsSupportedOverride:(id)override;
- (void)clearAllUserInitiatedFollowUpDismissalsWithReply:(id)reply;
- (void)clearUserInitiatedFollowUpDismissalForSerialNumber:(id)number withReply:(id)reply;
- (void)dismissFollowUpForSerialNumber:(id)number completion:(id)completion;
- (void)dismissFollowUps:(id)ups completion:(id)completion;
- (void)dismissNotificationForSerialNumber:(id)number completion:(id)completion;
- (void)getAmsPropertiesForContext:(id)context withReply:(id)reply;
- (void)getCoverageInfoForSerialNumber:(id)number usingPolicy:(unint64_t)policy withReply:(id)reply;
- (void)getDecodedParamsForPath:(id)path withReply:(id)reply;
- (void)getDefaultDeviceInfoUsingPolicy:(unint64_t)policy withReply:(id)reply;
- (void)getDeviceInfoForSerialNumber:(id)number usingPolicy:(unint64_t)policy withReply:(id)reply;
- (void)getDeviceListForLocalDevices:(id)devices sessionID:(id)d policy:(unint64_t)policy params:(id)params salesReplyOnly:(BOOL)only salesInfoReply:(id)reply deviceInfoReply:(id)infoReply completionBlock:(id)self0;
- (void)getLocalDeviceListWithReply:(id)reply;
- (void)getLocalDeviceWarrantyForSerialNumber:(id)number withReply:(id)reply;
- (void)getRemoteDeviceListWithReply:(id)reply;
- (void)getRemoteDeviceWarrantyForSerialNumber:(id)number withAdditionalHeaders:(id)headers withReply:(id)reply;
- (void)getWarrantyUsingPolicy:(unint64_t)policy withReply:(id)reply;
- (void)handleInternalCommand:(id)command withReply:(id)reply;
- (void)removePromoSectionWithHashValue:(int64_t)value andAckData:(id)data;
- (void)scheduleOutreachAfter:(double)after withReply:(id)reply;
- (void)storeUserInitiatedFollowUpDismissalForSerialNumber:(id)number withReply:(id)reply;
- (void)ulWebURLOverride:(id)override;
- (void)webURLOverride:(id)override;
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

- (void)scheduleOutreachAfter:(double)after withReply:(id)reply
{
  replyCopy = reply;
  agentConnection = [(NDOManager *)self agentConnection];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __46__NDOManager_scheduleOutreachAfter_withReply___block_invoke;
  v16[3] = &unk_279975D98;
  v8 = agentConnection;
  v17 = v8;
  v9 = replyCopy;
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
  [v10 scheduleOutreachAfter:v13 withReply:after];
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

- (void)getWarrantyUsingPolicy:(unint64_t)policy withReply:(id)reply
{
  replyCopy = reply;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __47__NDOManager_getWarrantyUsingPolicy_withReply___block_invoke;
  v8[3] = &unk_279975DE8;
  v9 = replyCopy;
  v7 = replyCopy;
  [(NDOManager *)self getDefaultDeviceInfoUsingPolicy:policy withReply:v8];
}

void __47__NDOManager_getWarrantyUsingPolicy_withReply___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 warranty];
  (*(v2 + 16))(v2, v3);
}

- (BOOL)checkIsAvailableInStore:(id)store
{
  storeCopy = store;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  agentConnection = [(NDOManager *)self agentConnection];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __38__NDOManager_checkIsAvailableInStore___block_invoke;
  v13[3] = &unk_279975E10;
  v6 = agentConnection;
  v14 = v6;
  v7 = [v6 synchronousRemoteObjectProxyWithErrorHandler:v13];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __38__NDOManager_checkIsAvailableInStore___block_invoke_12;
  v10[3] = &unk_279975E38;
  v8 = v6;
  v11 = v8;
  v12 = &v15;
  [v7 checkIsAvailableInStore:storeCopy withReply:v10];

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

- (void)appSupportDictionaryWithReply:(id)reply
{
  v22[1] = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x3032000000;
  v19[3] = __Block_byref_object_copy_;
  v19[4] = __Block_byref_object_dispose_;
  v21 = @"AppAvailabilityType";
  v22[0] = &unk_286D6E450;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
  agentConnection = [(NDOManager *)self agentConnection];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __44__NDOManager_appSupportDictionaryWithReply___block_invoke;
  v15[3] = &unk_279975E60;
  v6 = agentConnection;
  v16 = v6;
  v7 = replyCopy;
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

- (void)webURLOverride:(id)override
{
  overrideCopy = override;
  agentConnection = [(NDOManager *)self agentConnection];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __29__NDOManager_webURLOverride___block_invoke;
  v13[3] = &unk_279975E10;
  v6 = agentConnection;
  v14 = v6;
  v7 = [v6 synchronousRemoteObjectProxyWithErrorHandler:v13];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __29__NDOManager_webURLOverride___block_invoke_19;
  v10[3] = &unk_279975EB0;
  v11 = v6;
  v12 = overrideCopy;
  v8 = overrideCopy;
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

- (void)ulWebURLOverride:(id)override
{
  overrideCopy = override;
  agentConnection = [(NDOManager *)self agentConnection];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __31__NDOManager_ulWebURLOverride___block_invoke;
  v13[3] = &unk_279975E10;
  v6 = agentConnection;
  v14 = v6;
  v7 = [v6 synchronousRemoteObjectProxyWithErrorHandler:v13];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __31__NDOManager_ulWebURLOverride___block_invoke_21;
  v10[3] = &unk_279975EB0;
  v11 = v6;
  v12 = overrideCopy;
  v8 = overrideCopy;
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

- (void)apsSupportedOverride:(id)override
{
  overrideCopy = override;
  agentConnection = [(NDOManager *)self agentConnection];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __35__NDOManager_apsSupportedOverride___block_invoke;
  v13[3] = &unk_279975E10;
  v6 = agentConnection;
  v14 = v6;
  v7 = [v6 synchronousRemoteObjectProxyWithErrorHandler:v13];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __35__NDOManager_apsSupportedOverride___block_invoke_22;
  v10[3] = &unk_279975EB0;
  v11 = v6;
  v12 = overrideCopy;
  v8 = overrideCopy;
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

- (BOOL)isAPSSupportedOverrideWithServerValue:(BOOL)value
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

    value = [*(v16[0] + 40) isEqualToString:@"1"];
  }

  _Block_object_dispose(&v15, 8);

  return value;
}

void __52__NDOManager_isAPSSupportedOverrideWithServerValue___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)getDecodedParamsForPath:(id)path withReply:(id)reply
{
  pathCopy = path;
  replyCopy = reply;
  agentConnection = [(NDOManager *)self agentConnection];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __48__NDOManager_getDecodedParamsForPath_withReply___block_invoke;
  v19[3] = &unk_279975D98;
  v9 = agentConnection;
  v20 = v9;
  v10 = replyCopy;
  v21 = v10;
  v11 = [v9 remoteObjectProxyWithErrorHandler:v19];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __48__NDOManager_getDecodedParamsForPath_withReply___block_invoke_36;
  v15[3] = &unk_279975F00;
  v16 = pathCopy;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = pathCopy;
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
  agentConnection = [(NDOManager *)self agentConnection];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __33__NDOManager_clientConfiguration__block_invoke;
  v12[3] = &unk_279975E10;
  v3 = agentConnection;
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
  agentConnection = [(NDOManager *)self agentConnection];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __27__NDOManager_defaultDevice__block_invoke;
  v14[3] = &unk_279975E10;
  v3 = agentConnection;
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
  agentConnection = [(NDOManager *)self agentConnection];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __27__NDOManager_pairedWatches__block_invoke;
  v14[3] = &unk_279975E10;
  v3 = agentConnection;
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
  agentConnection = [(NDOManager *)self agentConnection];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __29__NDOManager_pairedBTDevices__block_invoke;
  v14[3] = &unk_279975E10;
  v3 = agentConnection;
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
  agentConnection = [(NDOManager *)self agentConnection];
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
  v3 = agentConnection;
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

- (void)getDefaultDeviceInfoUsingPolicy:(unint64_t)policy withReply:(id)reply
{
  replyCopy = reply;
  agentConnection = [(NDOManager *)self agentConnection];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __56__NDOManager_getDefaultDeviceInfoUsingPolicy_withReply___block_invoke;
  v16[3] = &unk_279975D98;
  v8 = agentConnection;
  v17 = v8;
  v9 = replyCopy;
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
  [v10 getDefaultDeviceInfoUsingPolicy:policy withReply:v13];
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

- (id)getDeviceInfoUsingForceCachedPolicyForSerialNumber:(id)number
{
  numberCopy = number;
  agentConnection = [(NDOManager *)self agentConnection];
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
  v6 = agentConnection;
  v15 = v6;
  v7 = [v6 synchronousRemoteObjectProxyWithErrorHandler:v14];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __65__NDOManager_getDeviceInfoUsingForceCachedPolicyForSerialNumber___block_invoke_46;
  v11[3] = &unk_279975F78;
  v8 = v6;
  v12 = v8;
  v13 = &v16;
  [v7 getDeviceInfoForSerialNumber:numberCopy usingPolicy:1 withReply:v11];

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

- (void)getDeviceInfoForSerialNumber:(id)number usingPolicy:(unint64_t)policy withReply:(id)reply
{
  numberCopy = number;
  replyCopy = reply;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __65__NDOManager_getDeviceInfoForSerialNumber_usingPolicy_withReply___block_invoke;
  v11[3] = &unk_279975FC8;
  v12 = numberCopy;
  v13 = replyCopy;
  v9 = numberCopy;
  v10 = replyCopy;
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

- (id)payloadFrom:(id)from atIndex:(int64_t)index device:(id)device
{
  v59 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  deviceCopy = device;
  serialNumber = [deviceCopy serialNumber];
  defaultDevice = [(NDOManager *)self defaultDevice];
  serialNumber2 = [defaultDevice serialNumber];
  v48 = serialNumber;
  v13 = [serialNumber2 isEqualToString:serialNumber];

  acOfferEligibleUntil = [fromCopy acOfferEligibleUntil];

  if (acOfferEligibleUntil)
  {
    acOfferEligibleUntil2 = [fromCopy acOfferEligibleUntil];
    v16 = [NDOUtilities daysFromDate:acOfferEligibleUntil2];
  }

  else
  {
    v16 = 1;
  }

  v17 = _NDOLogSystem();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    defaultDevice2 = [(NDOManager *)self defaultDevice];
    serialNumber3 = [defaultDevice2 serialNumber];
    acOfferEligibleUntil3 = [fromCopy acOfferEligibleUntil];
    *buf = 136446978;
    v52 = "[NDOManager payloadFrom:atIndex:device:]";
    v53 = 2112;
    v54 = serialNumber3;
    v55 = 2112;
    v56 = serialNumber;
    v57 = 2112;
    v58 = acOfferEligibleUntil3;
    _os_log_impl(&dword_25BD52000, v17, OS_LOG_TYPE_DEFAULT, "%{public}s: sn: %@ sn2: %@ %@", buf, 0x2Au);
  }

  v50[0] = serialNumber;
  v49[0] = @"serialNum";
  v49[1] = @"currentDevice";
  v47 = [MEMORY[0x277CCABB0] numberWithBool:v13];
  v50[1] = v47;
  v49[2] = @"deviceSeq";
  v46 = [MEMORY[0x277CCABB0] numberWithInteger:index];
  v50[2] = v46;
  v49[3] = @"deviceName";
  name = [deviceCopy name];
  v50[3] = name;
  v49[4] = @"deviceImageUrl";
  deviceImageUrl = [deviceCopy deviceImageUrl];

  v23 = deviceImageUrl;
  if (!deviceImageUrl)
  {
    deviceImageUrl2 = [fromCopy deviceImageUrl];
    v44 = deviceImageUrl2;
    if (deviceImageUrl2)
    {
      v23 = deviceImageUrl2;
    }

    else
    {
      v23 = &stru_286D686B8;
    }
  }

  v50[4] = v23;
  v49[5] = @"deviceDesc";
  deviceDesc = [fromCopy deviceDesc];
  v26 = deviceDesc;
  if (deviceDesc)
  {
    v27 = deviceDesc;
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
  sgId = [fromCopy sgId];
  v30 = sgId;
  if (sgId)
  {
    v31 = sgId;
  }

  else
  {
    v31 = &stru_286D686B8;
  }

  v50[7] = v31;
  v49[8] = @"pfcId";
  pfcId = [fromCopy pfcId];
  v33 = pfcId;
  if (pfcId)
  {
    v34 = pfcId;
  }

  else
  {
    v34 = &stru_286D686B8;
  }

  v50[8] = v34;
  v49[9] = @"pgfId";
  pgfId = [fromCopy pgfId];
  v36 = pgfId;
  if (pgfId)
  {
    v37 = pgfId;
  }

  else
  {
    v37 = &stru_286D686B8;
  }

  v50[9] = v37;
  v49[10] = @"parentId";
  parentId = [fromCopy parentId];
  v39 = parentId;
  if (parentId)
  {
    v40 = parentId;
  }

  else
  {
    v40 = &stru_286D686B8;
  }

  v50[10] = v40;
  v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:v49 count:11];

  if (!deviceImageUrl)
  {
  }

  v42 = *MEMORY[0x277D85DE8];

  return v41;
}

- (id)payloadDictionaryForDeviceInfo:(id)info atIndex:(int64_t)index
{
  infoCopy = info;
  v7 = infoCopy;
  if (!infoCopy)
  {
    goto LABEL_14;
  }

  warranty = [infoCopy warranty];
  acOfferDisplayDate = [warranty acOfferDisplayDate];

  warranty2 = [v7 warranty];
  acOfferEligible = [warranty2 acOfferEligible];
  if (acOfferDisplayDate)
  {
    if (acOfferEligible)
    {
      warranty3 = [v7 warranty];
      acOfferDisplayDate2 = [warranty3 acOfferDisplayDate];
      [acOfferDisplayDate2 timeIntervalSinceNow];
      if (v14 > 0.0)
      {

        v15 = 0;
LABEL_12:

        goto LABEL_13;
      }

      warranty4 = [v7 warranty];
      acOfferEligibleUntil = [warranty4 acOfferEligibleUntil];
      [acOfferEligibleUntil timeIntervalSinceNow];
      v17 = v20;

      goto LABEL_10;
    }

LABEL_8:
    v15 = 0;
LABEL_13:

    goto LABEL_15;
  }

  if (!acOfferEligible)
  {
    goto LABEL_8;
  }

  warranty3 = [v7 warranty];
  acOfferDisplayDate2 = [warranty3 acOfferEligibleUntil];
  [acOfferDisplayDate2 timeIntervalSinceNow];
  v17 = v16;
LABEL_10:

  if (v17 > 0.0)
  {
    warranty2 = [v7 warranty];
    warranty3 = [v7 device];
    v15 = [(NDOManager *)self payloadFrom:warranty2 atIndex:index device:warranty3];
    goto LABEL_12;
  }

LABEL_14:
  v15 = 0;
LABEL_15:

  return v15;
}

- (void)getDeviceListForLocalDevices:(id)devices sessionID:(id)d policy:(unint64_t)policy params:(id)params salesReplyOnly:(BOOL)only salesInfoReply:(id)reply deviceInfoReply:(id)infoReply completionBlock:(id)self0
{
  devicesCopy = devices;
  dCopy = d;
  paramsCopy = params;
  replyCopy = reply;
  infoReplyCopy = infoReply;
  blockCopy = block;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __129__NDOManager_getDeviceListForLocalDevices_sessionID_policy_params_salesReplyOnly_salesInfoReply_deviceInfoReply_completionBlock___block_invoke;
  v28[3] = &unk_279976108;
  v28[4] = self;
  v29 = devicesCopy;
  onlyCopy = only;
  v32 = blockCopy;
  v33 = replyCopy;
  v30 = dCopy;
  v31 = paramsCopy;
  v34 = infoReplyCopy;
  policyCopy = policy;
  v22 = infoReplyCopy;
  v23 = paramsCopy;
  v24 = dCopy;
  v25 = replyCopy;
  v26 = blockCopy;
  v27 = devicesCopy;
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

- (void)_getDeviceListForLocalDevices:(id)devices sessionID:(id)d params:(id)params completionBlock:(id)block
{
  blockCopy = block;
  paramsCopy = params;
  dCopy = d;
  devicesCopy = devices;
  agentConnection = [(NDOManager *)self agentConnection];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __77__NDOManager__getDeviceListForLocalDevices_sessionID_params_completionBlock___block_invoke;
  v23[3] = &unk_279975D98;
  v15 = agentConnection;
  v24 = v15;
  v16 = blockCopy;
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
  [v17 getDeviceListForLocalDevices:devicesCopy sessionID:dCopy params:paramsCopy withReply:v20];
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

- (void)dismissFollowUpForSerialNumber:(id)number completion:(id)completion
{
  completionCopy = completion;
  numberCopy = number;
  agentConnection = [(NDOManager *)self agentConnection];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __56__NDOManager_dismissFollowUpForSerialNumber_completion___block_invoke;
  v17[3] = &unk_279975D98;
  v9 = agentConnection;
  v18 = v9;
  v10 = completionCopy;
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
  [v11 dismissFollowUpForSerialNumber:numberCopy completion:v14];
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

- (void)dismissNotificationForSerialNumber:(id)number completion:(id)completion
{
  completionCopy = completion;
  numberCopy = number;
  agentConnection = [(NDOManager *)self agentConnection];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __60__NDOManager_dismissNotificationForSerialNumber_completion___block_invoke;
  v17[3] = &unk_279975D98;
  v9 = agentConnection;
  v18 = v9;
  v10 = completionCopy;
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
  [v11 dismissNotificationForSerialNumber:numberCopy completion:v14];
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

+ (void)postCAEventFor:(id)for eventDict:(id)dict
{
  forCopy = for;
  dictCopy = dict;
  v5 = dictCopy;
  v6 = forCopy;
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

- (void)clearUserInitiatedFollowUpDismissalForSerialNumber:(id)number withReply:(id)reply
{
  replyCopy = reply;
  numberCopy = number;
  agentConnection = [(NDOManager *)self agentConnection];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __75__NDOManager_clearUserInitiatedFollowUpDismissalForSerialNumber_withReply___block_invoke;
  v17[3] = &unk_279975D98;
  v9 = agentConnection;
  v18 = v9;
  v10 = replyCopy;
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
  [v11 clearUserInitiatedFollowUpDismissalForSerialNumber:numberCopy completion:v14];
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

- (void)clearAllUserInitiatedFollowUpDismissalsWithReply:(id)reply
{
  replyCopy = reply;
  agentConnection = [(NDOManager *)self agentConnection];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __63__NDOManager_clearAllUserInitiatedFollowUpDismissalsWithReply___block_invoke;
  v14[3] = &unk_279975D98;
  v6 = agentConnection;
  v15 = v6;
  v7 = replyCopy;
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

- (void)storeUserInitiatedFollowUpDismissalForSerialNumber:(id)number withReply:(id)reply
{
  v24 = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  numberCopy = number;
  v8 = _NDOLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136380675;
    v23 = "[NDOManager storeUserInitiatedFollowUpDismissalForSerialNumber:withReply:]";
    _os_log_impl(&dword_25BD52000, v8, OS_LOG_TYPE_DEFAULT, "%{private}s", buf, 0xCu);
  }

  agentConnection = [(NDOManager *)self agentConnection];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __75__NDOManager_storeUserInitiatedFollowUpDismissalForSerialNumber_withReply___block_invoke;
  v19[3] = &unk_279975D98;
  v10 = agentConnection;
  v20 = v10;
  v11 = replyCopy;
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
  [v12 storeUserInitiatedFollowUpDismissalForSerialNumber:numberCopy completion:v16];

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

- (void)getLocalDeviceListWithReply:(id)reply
{
  replyCopy = reply;
  agentConnection = [(NDOManager *)self agentConnection];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __42__NDOManager_getLocalDeviceListWithReply___block_invoke;
  v14[3] = &unk_279975D98;
  v6 = agentConnection;
  v15 = v6;
  v7 = replyCopy;
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

- (void)getRemoteDeviceListWithReply:(id)reply
{
  replyCopy = reply;
  agentConnection = [(NDOManager *)self agentConnection];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __43__NDOManager_getRemoteDeviceListWithReply___block_invoke;
  v14[3] = &unk_279975D98;
  v6 = agentConnection;
  v15 = v6;
  v7 = replyCopy;
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

- (void)removePromoSectionWithHashValue:(int64_t)value andAckData:(id)data
{
  dataCopy = data;
  agentConnection = [(NDOManager *)self agentConnection];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __57__NDOManager_removePromoSectionWithHashValue_andAckData___block_invoke;
  v13[3] = &unk_279975E10;
  v8 = agentConnection;
  v14 = v8;
  v9 = [v8 remoteObjectProxyWithErrorHandler:v13];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __57__NDOManager_removePromoSectionWithHashValue_andAckData___block_invoke_214;
  v11[3] = &unk_2799761F8;
  v12 = v8;
  v10 = v8;
  [v9 removePromoSectionWithHashValue:value andAckData:dataCopy withReply:v11];
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

- (void)getLocalDeviceWarrantyForSerialNumber:(id)number withReply:(id)reply
{
  replyCopy = reply;
  numberCopy = number;
  agentConnection = [(NDOManager *)self agentConnection];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __62__NDOManager_getLocalDeviceWarrantyForSerialNumber_withReply___block_invoke;
  v17[3] = &unk_279975D98;
  v9 = agentConnection;
  v18 = v9;
  v10 = replyCopy;
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
  [v11 getLocalDeviceWarrantyForSerialNumber:numberCopy withReply:v14];
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

- (void)getRemoteDeviceWarrantyForSerialNumber:(id)number withAdditionalHeaders:(id)headers withReply:(id)reply
{
  replyCopy = reply;
  headersCopy = headers;
  numberCopy = number;
  agentConnection = [(NDOManager *)self agentConnection];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __85__NDOManager_getRemoteDeviceWarrantyForSerialNumber_withAdditionalHeaders_withReply___block_invoke;
  v20[3] = &unk_279975D98;
  v12 = agentConnection;
  v21 = v12;
  v13 = replyCopy;
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
  [v14 getRemoteDeviceWarrantyForSerialNumber:numberCopy withAdditionalHeaders:headersCopy withReply:v17];
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

- (void)getCoverageInfoForSerialNumber:(id)number usingPolicy:(unint64_t)policy withReply:(id)reply
{
  replyCopy = reply;
  numberCopy = number;
  agentConnection = [(NDOManager *)self agentConnection];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __67__NDOManager_getCoverageInfoForSerialNumber_usingPolicy_withReply___block_invoke;
  v19[3] = &unk_279975D98;
  v11 = agentConnection;
  v20 = v11;
  v12 = replyCopy;
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
  [v13 getCoverageInfoForSerialNumber:numberCopy usingPolicy:policy withReply:v16];
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

- (void)getAmsPropertiesForContext:(id)context withReply:(id)reply
{
  replyCopy = reply;
  contextCopy = context;
  agentConnection = [(NDOManager *)self agentConnection];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __51__NDOManager_getAmsPropertiesForContext_withReply___block_invoke;
  v17[3] = &unk_279975D98;
  v9 = agentConnection;
  v18 = v9;
  v10 = replyCopy;
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
  [v11 getAmsPropertiesForContext:contextCopy withReply:v14];
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

- (void)dismissFollowUps:(id)ups completion:(id)completion
{
  completionCopy = completion;
  upsCopy = ups;
  agentConnection = [(NDOManager *)self agentConnection];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __42__NDOManager_dismissFollowUps_completion___block_invoke;
  v17[3] = &unk_279975D98;
  v9 = agentConnection;
  v18 = v9;
  v10 = completionCopy;
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
  [v11 dismissFollowUps:upsCopy completion:v14];
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

- (void)handleInternalCommand:(id)command withReply:(id)reply
{
  replyCopy = reply;
  commandCopy = command;
  agentConnection = [(NDOManager *)self agentConnection];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __46__NDOManager_handleInternalCommand_withReply___block_invoke;
  v17[3] = &unk_279975D98;
  v9 = agentConnection;
  v18 = v9;
  v10 = replyCopy;
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
  [v11 handleInternalCommand:commandCopy withReply:v14];
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