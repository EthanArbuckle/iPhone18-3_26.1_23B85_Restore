@interface MXCore
+ (id)sharedCore;
- (BOOL)_canSetupXpcListenerForSourceData;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (MXCore)init;
- (id)_getDailyActivityCriteria;
- (void)_canSetupXpcListenerForSourceData;
- (void)_deliverSamplePayloadForXcodeClient:(id)client;
- (void)_initIvar;
- (void)_initLogHandle;
- (void)_initQueue;
- (void)_performDataActivity;
- (void)_registerClient;
- (void)_registerClientAndTeam;
- (void)_scheduleDataActivity;
- (void)_setupDailyActivityCriteriaForDataActivity:(id)activity;
- (void)_setupExportedInterfaceForConnection:(id)connection;
- (void)_setupHandlersForConnection:(id)connection;
- (void)_setupRemoteInterfaceForConnection:(id)connection;
- (void)_startListenClientXPC;
- (void)_writeDiagnosticReport:(id)report atAppContainerPath:(id)path forClient:(id)client withError:(id *)error;
- (void)clientDidRegisterForBundleID:(id)d;
- (void)clientIsAvailableForPreparingDataActivity;
- (void)metricIsAvailableFromSourceDirectoryForSavingToDeliveryDirectoryWithClientMetrics:(id)metrics;
- (void)performDataActivity;
- (void)retrieveDiagnostics;
- (void)retrieveMetrics;
@end

@implementation MXCore

+ (id)sharedCore
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __20__MXCore_sharedCore__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedCore_onceToken != -1)
  {
    dispatch_once(&sharedCore_onceToken, block);
  }

  v2 = sharedCore_result;

  return v2;
}

uint64_t __20__MXCore_sharedCore__block_invoke(uint64_t a1)
{
  sharedCore_result = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (MXCore)init
{
  v11.receiver = self;
  v11.super_class = MXCore;
  v2 = [(MXCore *)&v11 init];
  v3 = v2;
  if (v2)
  {
    [(MXCore *)v2 _initLogHandle];
    [(MXCore *)v3 _initQueue];
    [(MXCore *)v3 _initIvar];
    [(MXCore *)v3 _startListenClientXPC];
    if (![(MXCore *)v3 _canSetupXpcListenerForSourceData])
    {
      v7 = 0;
      goto LABEL_8;
    }

    clientUtil = [(MXCore *)v3 clientUtil];
    hasAnyClient = [clientUtil hasAnyClient];

    if (hasAnyClient)
    {
      iVarQueue = v3->_iVarQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __14__MXCore_init__block_invoke;
      block[3] = &unk_2798C6758;
      v10 = v3;
      dispatch_async(iVarQueue, block);
    }

    [(MXCore *)v3 _registerXpcActivityForCore];
  }

  v7 = v3;
LABEL_8:

  return v7;
}

- (void)_initLogHandle
{
  v3 = os_log_create("com.apple.metrickit.core", "");
  p_MXCoreLogHandle = &self->_MXCoreLogHandle;
  MXCoreLogHandle = self->_MXCoreLogHandle;
  self->_MXCoreLogHandle = v3;

  if (!self->_MXCoreLogHandle)
  {
    objc_storeStrong(&self->_MXCoreLogHandle, MEMORY[0x277D86220]);
  }

  v6 = os_log_create("com.apple.metrickit.core.xcodesupport", "");
  MXCoreXcodeSupportLogHandle = self->_MXCoreXcodeSupportLogHandle;
  p_MXCoreXcodeSupportLogHandle = &self->_MXCoreXcodeSupportLogHandle;
  *p_MXCoreXcodeSupportLogHandle = v6;

  if (!*p_MXCoreXcodeSupportLogHandle)
  {
    objc_storeStrong(p_MXCoreXcodeSupportLogHandle, MEMORY[0x277D86220]);
  }

  v9 = *p_MXCoreLogHandle;
  if (os_log_type_enabled(*p_MXCoreLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_258D6F000, v9, OS_LOG_TYPE_DEFAULT, "Initializing MXCore\n", v10, 2u);
  }
}

- (void)_initQueue
{
  v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
  v4 = dispatch_queue_create("com.apple.metrickitd.requestqueue", v3);
  requestQueue = self->_requestQueue;
  self->_requestQueue = v4;

  v8 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
  v6 = dispatch_queue_create("com.apple.metrickitd.ivarqueue", v8);
  iVarQueue = self->_iVarQueue;
  self->_iVarQueue = v6;
}

- (void)_startListenClientXPC
{
  iVarQueue = self->_iVarQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__MXCore__startListenClientXPC__block_invoke;
  block[3] = &unk_2798C6758;
  block[4] = self;
  dispatch_async(iVarQueue, block);
}

void __31__MXCore__startListenClientXPC__block_invoke(uint64_t a1)
{
  v1 = (a1 + 32);
  v2 = [*(a1 + 32) MXCoreLogHandle];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __31__MXCore__startListenClientXPC__block_invoke_cold_1(v2);
  }

  v3 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:@"com.apple.metrickit.xpc"];
  [*v1 setXpcListener:v3];

  v4 = [*v1 MXCoreLogHandle];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __31__MXCore__startListenClientXPC__block_invoke_cold_2(v1);
  }

  v5 = *v1;
  v6 = [*v1 xpcListener];
  [v6 setDelegate:v5];

  v7 = [*v1 xpcListener];
  [v7 resume];
}

- (BOOL)_canSetupXpcListenerForSourceData
{
  v3 = +[MXSource sharedSource];
  source = self->_source;
  self->_source = v3;

  MXCoreLogHandle = self->_MXCoreLogHandle;
  if (os_log_type_enabled(MXCoreLogHandle, OS_LOG_TYPE_DEBUG))
  {
    [(MXCore *)&self->_source _canSetupXpcListenerForSourceData:v6];
  }

  v12 = self->_source;
  if (!v12)
  {
    v13 = self->_MXCoreLogHandle;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(MXCore *)v13 _canSetupXpcListenerForSourceData];
    }
  }

  return v12 != 0;
}

- (void)_initIvar
{
  v3 = +[MXDependencyFactory shared];
  bundleUtil = [v3 bundleUtil];
  bundleUtil = self->_bundleUtil;
  self->_bundleUtil = bundleUtil;

  v6 = +[MXDependencyFactory shared];
  deliveryPathUtil = [v6 deliveryPathUtil];
  deliveryPathUtil = self->_deliveryPathUtil;
  self->_deliveryPathUtil = deliveryPathUtil;

  v9 = +[MXDependencyFactory shared];
  deliveryDataCacher = [v9 deliveryDataCacher];
  deliveryDataCacher = self->_deliveryDataCacher;
  self->_deliveryDataCacher = deliveryDataCacher;

  v12 = +[MXDependencyFactory shared];
  clientUtil = [v12 clientUtil];
  clientUtil = self->_clientUtil;
  self->_clientUtil = clientUtil;

  v15 = +[MXDependencyFactory shared];
  cleanUtil = [v15 cleanUtil];
  cleanUtil = self->_cleanUtil;
  self->_cleanUtil = cleanUtil;

  v20 = +[MXDependencyFactory shared];
  v18 = [v20 handlerForMXCoreWithDelegate:self];
  handler = self->_handler;
  self->_handler = v18;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  requestQueue = self->_requestQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __45__MXCore_listener_shouldAcceptNewConnection___block_invoke;
  v9[3] = &unk_2798C6780;
  v9[4] = self;
  v10 = connectionCopy;
  v7 = connectionCopy;
  dispatch_async(requestQueue, v9);

  return 1;
}

uint64_t __45__MXCore_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) MXCoreLogHandle];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 40) processIdentifier];
    v6[0] = 67109120;
    v6[1] = v3;
    _os_log_impl(&dword_258D6F000, v2, OS_LOG_TYPE_DEFAULT, "Received connection request from %d\n", v6, 8u);
  }

  [*(a1 + 32) _setupExportedInterfaceForConnection:*(a1 + 40)];
  [*(a1 + 32) _setupRemoteInterfaceForConnection:*(a1 + 40)];
  [*(a1 + 32) _setupHandlersForConnection:*(a1 + 40)];
  result = [*(a1 + 40) resume];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_setupExportedInterfaceForConnection:(id)connection
{
  v4 = MEMORY[0x277CCAE90];
  connectionCopy = connection;
  v5 = [v4 interfaceWithProtocol:&unk_286A1F6D8];
  [connectionCopy setExportedInterface:v5];

  [connectionCopy setExportedObject:self];
}

- (void)_setupRemoteInterfaceForConnection:(id)connection
{
  v3 = MEMORY[0x277CCAE90];
  connectionCopy = connection;
  v5 = [v3 interfaceWithProtocol:&unk_286A22048];
  [connectionCopy setRemoteObjectInterface:v5];

  v6 = MEMORY[0x277CBEB98];
  v7 = objc_opt_class();
  v13 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v8 = MEMORY[0x277CBEB98];
  v9 = objc_opt_class();
  v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
  remoteObjectInterface = [connectionCopy remoteObjectInterface];
  [remoteObjectInterface setClasses:v13 forSelector:sel_deliverMetricPayload_ argumentIndex:0 ofReply:0];

  remoteObjectInterface2 = [connectionCopy remoteObjectInterface];

  [remoteObjectInterface2 setClasses:v10 forSelector:sel_deliverDiagnosticPayload_ argumentIndex:0 ofReply:0];
}

- (void)_setupHandlersForConnection:(id)connection
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __38__MXCore__setupHandlersForConnection___block_invoke;
  v6[3] = &unk_2798C6758;
  v6[4] = self;
  connectionCopy = connection;
  [connectionCopy setInterruptionHandler:v6];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __38__MXCore__setupHandlersForConnection___block_invoke_29;
  v5[3] = &unk_2798C6758;
  v5[4] = self;
  [connectionCopy setInvalidationHandler:v5];
}

void __38__MXCore__setupHandlersForConnection___block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 32) MXCoreLogHandle];
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    v2 = [MEMORY[0x277CCAE80] currentConnection];
    v4[0] = 67109120;
    v4[1] = [v2 processIdentifier];
    _os_log_impl(&dword_258D6F000, v1, OS_LOG_TYPE_INFO, "Connection to %d interrupted\n", v4, 8u);
  }

  v3 = *MEMORY[0x277D85DE8];
}

void __38__MXCore__setupHandlersForConnection___block_invoke_29(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 32) MXCoreLogHandle];
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    v2 = [MEMORY[0x277CCAE80] currentConnection];
    v4[0] = 67109120;
    v4[1] = [v2 processIdentifier];
    _os_log_impl(&dword_258D6F000, v1, OS_LOG_TYPE_INFO, "Connection to %d invalidated\n", v4, 8u);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)retrieveDiagnostics
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [self description];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_3();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)retrieveMetrics
{
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  bundleUtil = [(MXCore *)self bundleUtil];
  if (currentConnection)
  {
    [currentConnection auditToken];
  }

  else
  {
    memset(v9, 0, sizeof(v9));
  }

  v5 = [bundleUtil bundleIDFromAuditToken:v9];

  if ([(MXCore *)self _shouldDeliverToClientForBundleID:v5])
  {
    handler = [(MXCore *)self handler];
    v7 = [handler metricsForBundleID:v5];

    if (v7)
    {
      remoteObjectProxy = [currentConnection remoteObjectProxy];
      [remoteObjectProxy deliverMetricPayload:v7];
    }
  }

  else
  {
    [currentConnection invalidate];
  }
}

- (void)_registerClient
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = 0;
  _os_log_error_impl(&dword_258D6F000, log, OS_LOG_TYPE_ERROR, "Bundle %@ is not codesigned", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)_registerClientAndTeam
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(&dword_258D6F000, v0, OS_LOG_TYPE_ERROR, "Bundle %@ is not codesigned", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

uint64_t __32__MXCore__registerClientAndTeam__block_invoke(uint64_t result)
{
  if (*(result + 32))
  {
    v1 = result;
    v2 = [*(result + 40) handler];
    [v2 registerClientAndTeamForBundleID:v1[6] andTeamID:v1[7]];

    v3 = v1[4];

    return [v3 invalidate];
  }

  return result;
}

- (void)performDataActivity
{
  objc_initWeak(&location, self);
  iVarQueue = self->_iVarQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __29__MXCore_performDataActivity__block_invoke;
  v4[3] = &unk_2798C6818;
  objc_copyWeak(&v5, &location);
  dispatch_async(iVarQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __29__MXCore_performDataActivity__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _performDataActivity];
}

- (void)_scheduleDataActivity
{
  MXCoreLogHandle = self->_MXCoreLogHandle;
  if (os_log_type_enabled(MXCoreLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_258D6F000, MXCoreLogHandle, OS_LOG_TYPE_DEFAULT, "Scheduling data activity\n", buf, 2u);
  }

  objc_initWeak(buf, self);
  v4 = *MEMORY[0x277D86238];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __31__MXCore__scheduleDataActivity__block_invoke;
  v5[3] = &unk_2798C6840;
  v5[4] = self;
  objc_copyWeak(&v6, buf);
  xpc_activity_register("com.apple.metrickitd.data", v4, v5);
  objc_destroyWeak(&v6);
  objc_destroyWeak(buf);
}

void __31__MXCore__scheduleDataActivity__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  state = xpc_activity_get_state(v3);
  if (state == 2)
  {
    v6 = [*(a1 + 32) iVarQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __31__MXCore__scheduleDataActivity__block_invoke_2;
    block[3] = &unk_2798C6818;
    objc_copyWeak(&v8, (a1 + 40));
    dispatch_async(v6, block);

    objc_destroyWeak(&v8);
  }

  else if (!state)
  {
    [*(a1 + 32) _setupDailyActivityCriteriaForDataActivity:v3];
  }

  objc_autoreleasePoolPop(v4);
}

void __31__MXCore__scheduleDataActivity__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _performDataActivity];
}

- (void)_setupDailyActivityCriteriaForDataActivity:(id)activity
{
  activityCopy = activity;
  v5 = xpc_activity_copy_criteria(activityCopy);
  if (!v5)
  {
    mXCoreLogHandle = [(MXCore *)self MXCoreLogHandle];
    if (os_log_type_enabled(mXCoreLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_258D6F000, mXCoreLogHandle, OS_LOG_TYPE_DEFAULT, "Setting daily activity criteria", v8, 2u);
    }

    _getDailyActivityCriteria = [(MXCore *)self _getDailyActivityCriteria];
    xpc_activity_set_criteria(activityCopy, _getDailyActivityCriteria);
  }
}

- (id)_getDailyActivityCriteria
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v2, *MEMORY[0x277D86340], *MEMORY[0x277D86348]);
  xpc_dictionary_set_BOOL(v2, *MEMORY[0x277D86230], 0);
  xpc_dictionary_set_BOOL(v2, *MEMORY[0x277D86360], 1);
  xpc_dictionary_set_BOOL(v2, *MEMORY[0x277D86248], 1);
  xpc_dictionary_set_BOOL(v2, *MEMORY[0x277D862E0], 1);
  xpc_dictionary_set_BOOL(v2, *MEMORY[0x277D863A0], 1);
  xpc_dictionary_set_int64(v2, *MEMORY[0x277D86268], *MEMORY[0x277D862C0]);
  xpc_dictionary_set_int64(v2, *MEMORY[0x277D86288], *MEMORY[0x277D86298]);
  xpc_dictionary_set_int64(v2, *MEMORY[0x277D86270], *MEMORY[0x277D862A0]);

  return v2;
}

- (void)_performDataActivity
{
  v7 = *MEMORY[0x277D85DE8];
  mXCoreLogHandle = [(MXCore *)self MXCoreLogHandle];
  if (os_log_type_enabled(mXCoreLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "com.apple.metrickitd.data";
    _os_log_impl(&dword_258D6F000, mXCoreLogHandle, OS_LOG_TYPE_DEFAULT, "%s running\n", &v5, 0xCu);
  }

  [(MXCoreHandler *)self->_handler performDataActivity];
  v4 = *MEMORY[0x277D85DE8];
}

- (void)metricIsAvailableFromSourceDirectoryForSavingToDeliveryDirectoryWithClientMetrics:(id)metrics
{
  [(MXCoreHandler *)self->_handler saveMetricPayloadsToDeliveryDirectoryAndReportSuccessForClientMetrics:metrics];
  cleanUtil = self->_cleanUtil;

  [(MXCleanUtil *)cleanUtil cleanStaleData];
}

- (void)clientDidRegisterForBundleID:(id)d
{
  v11 = *MEMORY[0x277D85DE8];
  dCopy = d;
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  remoteObjectProxy = [currentConnection remoteObjectProxy];
  [remoteObjectProxy registrationProcessed];

  mXCoreLogHandle = [(MXCore *)self MXCoreLogHandle];
  if (os_log_type_enabled(mXCoreLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = dCopy;
    _os_log_impl(&dword_258D6F000, mXCoreLogHandle, OS_LOG_TYPE_DEFAULT, "New client: %@\n", &v9, 0xCu);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)clientIsAvailableForPreparingDataActivity
{
  if ([(MXCore *)self _canSetupXpcListenerForSourceData])
  {

    [(MXCore *)self _scheduleDataActivity];
  }
}

- (void)_deliverSamplePayloadForXcodeClient:(id)client
{
  clientCopy = client;
  v5 = [(MXClientUtilProtocol *)self->_clientUtil hasClientForBundleID:clientCopy];
  mXCoreXcodeSupportLogHandle = [(MXCore *)self MXCoreXcodeSupportLogHandle];
  v7 = os_log_type_enabled(mXCoreXcodeSupportLogHandle, OS_LOG_TYPE_DEBUG);
  if (v5)
  {
    if (v7)
    {
      [MXCore _deliverSamplePayloadForXcodeClient:mXCoreXcodeSupportLogHandle];
    }

    mXCoreXcodeSupportLogHandle = objc_alloc_init(MEMORY[0x277CCA968]);
    v8 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:@"en_US_POSIX"];
    [mXCoreXcodeSupportLogHandle setLocale:v8];
    [mXCoreXcodeSupportLogHandle setDateFormat:@"yyyy-MM-dd"];
    v9 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-86400.0];
    v10 = [mXCoreXcodeSupportLogHandle stringFromDate:v9];

    v11 = [(MXDeliveryPathUtilProtocol *)self->_deliveryPathUtil applicationContainerPathForBundleID:clientCopy];
    if (v11)
    {
      deliveryPathUtil = self->_deliveryPathUtil;
      v35 = 0;
      v13 = [(MXDeliveryPathUtilProtocol *)deliveryPathUtil createMetricDirectoryAtPath:v11 forClient:clientCopy withError:&v35];
      v14 = v35;
      if ((v13 & 1) == 0)
      {
        mXCoreXcodeSupportLogHandle2 = [(MXCore *)self MXCoreXcodeSupportLogHandle];
        if (os_log_type_enabled(mXCoreXcodeSupportLogHandle2, OS_LOG_TYPE_ERROR))
        {
          [MXCore _deliverSamplePayloadForXcodeClient:];
        }

        goto LABEL_22;
      }

      deliveryDataCacher = self->_deliveryDataCacher;
      v16 = [(MXCore *)self _getSamplePayloadForClient:clientCopy dateString:v10];
      v34 = v14;
      v17 = [(MXDeliveryDataCacherProtocol *)deliveryDataCacher writeMetricReport:v16 atAppContainerPath:v11 forClient:clientCopy withError:&v34];
      v18 = v34;

      if ((v17 & 1) == 0)
      {
        mXCoreXcodeSupportLogHandle3 = [(MXCore *)self MXCoreXcodeSupportLogHandle];
        if (os_log_type_enabled(mXCoreXcodeSupportLogHandle3, OS_LOG_TYPE_ERROR))
        {
          [MXCore _deliverSamplePayloadForXcodeClient:];
        }
      }

      v20 = [(MXCore *)self _getSampleDiagnosticPayloadForClient:clientCopy dateString:v10];
      if (v20)
      {
        v21 = self->_deliveryPathUtil;
        v33 = v18;
        v22 = [(MXDeliveryPathUtilProtocol *)v21 createDiagnosticDirectoryAtPath:v11 forClient:clientCopy withError:&v33];
        v23 = v33;

        if (v22)
        {
          v32 = v23;
          [(MXCore *)self _writeDiagnosticReport:v20 atAppContainerPath:v11 forClient:clientCopy withError:&v32];
          v18 = v32;
        }

        else
        {
          v18 = v23;
        }
      }
    }

    else
    {
      iVarQueue = self->_iVarQueue;
      v26 = MEMORY[0x277D85DD0];
      v27 = 3221225472;
      v28 = __46__MXCore__deliverSamplePayloadForXcodeClient___block_invoke;
      v29 = &unk_2798C6780;
      selfCopy = self;
      v31 = clientCopy;
      dispatch_async(iVarQueue, &v26);
    }

    [(MXDeliveryDataCacherProtocol *)self->_deliveryDataCacher notifyDataAvailableForDelivery:v26];
LABEL_22:

    goto LABEL_23;
  }

  if (v7)
  {
    [MXCore _deliverSamplePayloadForXcodeClient:];
  }

LABEL_23:
}

void __46__MXCore__deliverSamplePayloadForXcodeClient___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) clientUtil];
  [v2 removeClientFromPersistenceForBundleID:*(a1 + 40)];
}

- (void)_writeDiagnosticReport:(id)report atAppContainerPath:(id)path forClient:(id)client withError:(id *)error
{
  clientCopy = client;
  pathCopy = path;
  reportCopy = report;
  v13 = +[MXSource sharedSource];
  v14 = [v13 writeDiagnosticReport:reportCopy atAppContainerPath:pathCopy forClient:clientCopy withError:error];

  if ((v14 & 1) == 0)
  {
    mXCoreXcodeSupportLogHandle = [(MXCore *)self MXCoreXcodeSupportLogHandle];
    if (os_log_type_enabled(mXCoreXcodeSupportLogHandle, OS_LOG_TYPE_ERROR))
    {
      [MXCore _writeDiagnosticReport:clientCopy atAppContainerPath:error forClient:? withError:?];
    }
  }
}

void __31__MXCore__startListenClientXPC__block_invoke_cold_2(id *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [*a1 xpcListener];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_3();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_canSetupXpcListenerForSourceData
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*self);
  OUTLINED_FUNCTION_5(&dword_258D6F000, a2, a3, "MXSource: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_deliverSamplePayloadForXcodeClient:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5(&dword_258D6F000, v0, v1, "Client %@ not found, ending sample payload delivery", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_deliverSamplePayloadForXcodeClient:.cold.3()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_3(&dword_258D6F000, v0, v1, "Sample payload delivery: Failed to create file directory for %@ with error: %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_deliverSamplePayloadForXcodeClient:.cold.4()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_3(&dword_258D6F000, v0, v1, "Sample metric payload delivery: Failed to write metric report for %@ with error: %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_writeDiagnosticReport:(uint64_t)a1 atAppContainerPath:(uint64_t *)a2 forClient:withError:.cold.1(uint64_t a1, uint64_t *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_3(&dword_258D6F000, v3, v4, "Sample diagnostic payload delivery: Failed to write diagnostic report for %@ with error: %@");
  v5 = *MEMORY[0x277D85DE8];
}

@end