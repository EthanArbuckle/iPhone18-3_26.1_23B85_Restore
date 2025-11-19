@interface ULConnection
+ (id)_createNSXPCConnectionWithWeakProxy:(id)a3;
+ (id)createServiceIdentifierForToken:(id)a3;
+ (id)getMicroLocationInternalVersion;
+ (id)getRecordingTriggerUUIDAndRequestMicroLocationRecordingScanWithAdditionalInformation:(id)a3 shouldForceRecording:(BOOL)a4 handler:(id)a5;
+ (id)metadataForHomekitAccessoryControlEventWithUUID:(id)a3 stateString:(id)a4 serviceUUID:(id)a5 serviceType:(id)a6 characteristicType:(id)a7 serviceGroupUUID:(id)a8 source:(id)a9 roomUUID:(id)a10;
+ (id)metadataForHomekitActionSetEventWithUUID:(id)a3 name:(id)a4 type:(id)a5 clientName:(id)a6 source:(id)a7 homeName:(id)a8;
+ (void)createServiceWithServiceType:(unint64_t)a3 locationTypes:(id)a4 reply:(id)a5;
+ (void)deleteServiceWithIdentifier:(id)a3 reply:(id)a4;
+ (void)donateMicroLocationTruthTagWithTagUUID:(id)a3 correspondingToTriggerUUID:(id)a4 handler:(id)a5;
+ (void)donateMicroLocationTruthTagWithTagUUID:(id)a3 forRecordingEventsBetweenDate:(id)a4 andDate:(id)a5 handler:(id)a6;
+ (void)exportDatabaseWithReply:(id)a3;
+ (void)imageFeaturesDebugWithTask:(unint64_t)a3 additionalInformation:(id)a4 reply:(id)a5;
+ (void)polarisDebugWithTask:(unint64_t)a3 reply:(id)a4;
+ (void)purgeDatabaseWithReply:(id)a3;
+ (void)queryServicesWithReply:(id)a3;
+ (void)requestCurrentMicroLocationWithAdditionalInformation:(id)a3;
+ (void)requestMicroLocationRecordingScanWithAdditionalInformation:(id)a3 shouldForceRecording:(BOOL)a4;
- (ULConnection)initWithDelegate:(id)a3 serviceIdentifier:(id)a4;
- (ULConnectionDelegate)delegate;
- (ULMap)currentMap;
- (id)connect;
- (id)disconnect;
- (id)requestAllModelsLearning;
- (id)requestObservation;
- (id)requestPrediction;
- (id)runWithConfiguration:(id)a3;
- (id)startUpdatingWithConfiguration:(id)a3;
- (id)stopUpdating;
- (uint64_t)_xpcInterruptionHandler;
- (uint64_t)_xpcInvalidationHandler;
- (void)_checkAndRecoverIfNeeded;
- (void)_invalidate;
- (void)_manageConnectionAvailableNotificationObservation:(BOOL)a3;
- (void)_performAsyncOnDelegateQueueIfRespondsToSelector:(SEL)a3 block:(id)a4;
- (void)_xpcInterruptionHandler;
- (void)_xpcInvalidationHandler;
- (void)addLabel:(id)a3;
- (void)addLabel:(id)a3 betweenStartDate:(id)a4 andEndDate:(id)a5;
- (void)dealloc;
- (void)didCompleteObservationWithMetaInformation:(id)a3;
- (void)didCompletePredictionWithMetaInformation:(id)a3;
- (void)didCompleteRequest:(id)a3 withError:(id)a4;
- (void)didCreateCustomLocationOfInterestWithError:(id)a3;
- (void)didFailWithError:(id)a3;
- (void)didRemoveCustomLocationOfInterestWithIdentifier:(id)a3 withError:(id)a4;
- (void)didSendGenericEvent:(unint64_t)a3 withDescription:(id)a4;
- (void)didUpdateMap:(id)a3;
- (void)didUpdatePredictionContext:(id)a3;
- (void)disableMicrolocationAtlocationWithIdentifier:(id)a3;
- (void)enableMicrolocationAtCurrentLocation;
- (void)enableMicrolocationAtCurrentLocationWithConfiguration:(id)a3;
- (void)updateLegacyServiceIdentifier:(id)a3;
@end

@implementation ULConnection

- (ULConnection)initWithDelegate:(id)a3 serviceIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v19.receiver = self;
  v19.super_class = ULConnection;
  v8 = [(ULConnection *)&v19 init];
  if (v8)
  {
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("com.apple.ULConnection.queue", v9);
    [(ULConnection *)v8 setQueue:v10];

    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("com.apple.ULConnection.delegateQueue", v11);
    [(ULConnection *)v8 setDelegateQueue:v12];

    v13 = [(ULConnection *)v8 queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __51__ULConnection_initWithDelegate_serviceIdentifier___block_invoke;
    block[3] = &unk_2798D2448;
    v16 = v8;
    v17 = v6;
    v18 = v7;
    dispatch_sync(v13, block);
  }

  return v8;
}

void __51__ULConnection_initWithDelegate_serviceIdentifier___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setDelegate:*(a1 + 40)];
  [*(a1 + 32) setServiceIdentifier:*(a1 + 48)];
  v2 = [objc_alloc(MEMORY[0x277D28888]) initWithObject:*(a1 + 32)];
  v3 = [ULConnection _createNSXPCConnectionWithWeakProxy:v2];
  [*(a1 + 32) setConnection:v3];

  v4 = objc_alloc_init(MEMORY[0x277D28850]);
  [*(a1 + 32) setDarwinNotificationHelper:v4];

  v5 = +[ULMap emptyMap];
  [*(a1 + 32) setInternalMap:v5];

  v6 = [ULConfiguration alloc];
  v7 = [MEMORY[0x277CBEB98] set];
  v8 = [(ULConfiguration *)v6 initWithContextLayers:v7];
  [*(a1 + 32) setConfiguration:v8];

  objc_initWeak(&location, *(a1 + 32));
  v9 = [*(a1 + 32) connection];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __51__ULConnection_initWithDelegate_serviceIdentifier___block_invoke_2;
  v18[3] = &unk_2798D2420;
  objc_copyWeak(&v19, &location);
  [v9 setInterruptionHandler:v18];

  v10 = [*(a1 + 32) connection];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __51__ULConnection_initWithDelegate_serviceIdentifier___block_invoke_3;
  v16[3] = &unk_2798D2420;
  objc_copyWeak(&v17, &location);
  [v10 setInvalidationHandler:v16];

  v11 = [*(a1 + 32) connection];
  v12 = [*(a1 + 32) queue];
  [v11 _setQueue:v12];

  [*(a1 + 32) _manageConnectionAvailableNotificationObservation:1];
  v13 = [*(a1 + 32) connection];
  [v13 resume];

  if (onceToken_MicroLocation_Default != -1)
  {
    __51__ULConnection_initWithDelegate_serviceIdentifier___block_invoke_cold_1();
  }

  v14 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *v15 = 0;
    _os_log_impl(&dword_258FC9000, v14, OS_LOG_TYPE_DEFAULT, "Initialized a new MiLo connection", v15, 2u);
  }

  objc_destroyWeak(&v17);
  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

void __51__ULConnection_initWithDelegate_serviceIdentifier___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained queue];
    dispatch_assert_queue_V2(v2);

    [v3 _xpcInterruptionHandler];
    WeakRetained = v3;
  }
}

void __51__ULConnection_initWithDelegate_serviceIdentifier___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained queue];
    dispatch_assert_queue_V2(v2);

    [v3 _xpcInvalidationHandler];
    WeakRetained = v3;
  }
}

- (void)dealloc
{
  [(ULConnection *)self _invalidate];
  v3.receiver = self;
  v3.super_class = ULConnection;
  [(ULConnection *)&v3 dealloc];
}

+ (id)createServiceIdentifierForToken:(id)a3
{
  v44[8] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v43[0] = @"com.apple.intelligentroutingd";
  v41[0] = @"com.apple.mediaremoted";
  v41[1] = @"com.apple.Music";
  v42[0] = @"00000000-0000-0000-0000-000000000001";
  v42[1] = @"00000000-0000-0000-0000-000000000002";
  v41[2] = @"com.apple.TelephonyUtilities";
  v41[3] = @"com.apple.controlcenter";
  v42[2] = @"00000000-0000-0000-0000-000000000003";
  v42[3] = @"00000000-0000-0000-0000-000000000004";
  v41[4] = @"com.apple.AVKit.RoutePickerViewService";
  v41[5] = @"com.apple.tvremoted";
  v42[4] = @"00000000-0000-0000-0000-000000000005";
  v42[5] = @"00000000-0000-0000-0000-000000000006";
  v41[6] = @"com.apple.NeighborhoodActivityConduitService";
  v41[7] = @"com.apple.intelligentroutingclient.Media";
  v42[6] = @"00000000-0000-0000-0000-000000000007";
  v42[7] = @"00000000-0000-0000-0000-000000000008";
  v41[8] = @"com.apple.intelligentroutingclient.AppleTVControl";
  v41[9] = @"com.apple.intelligentroutingclient.Home";
  v42[8] = @"00000000-0000-0000-0000-000000000009";
  v42[9] = @"00000000-0000-0000-0000-000000000025";
  v41[10] = @"com.apple.IntelligentRoutingHostTests.xctrunner.Media";
  v41[11] = @"com.apple.IntelligentRoutingHostTests.xctrunner.AppleTVControl";
  v42[10] = @"00000000-0000-0000-0000-000000000010";
  v42[11] = @"00000000-0000-0000-0000-000000000023";
  v41[12] = @"com.apple.IntelligentRoutingHostTests.xctrunner.Home";
  v41[13] = @"com.vpg.Rover";
  v42[12] = @"00000000-0000-0000-0000-000000000024";
  v42[13] = @"00000000-0000-0000-0000-000000000022";
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:14];
  v44[0] = v4;
  v43[1] = @"com.apple.MicroLocationHostTests.xctrunner";
  v39 = @"com.apple.MicroLocationHostTests.xctrunner";
  v40 = @"00000000-0000-0000-0000-000000000011";
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
  v44[1] = v5;
  v43[2] = @"com.apple.microlocationclient";
  v37[0] = @"com.apple.MicroLocationClientUnsupervised";
  v37[1] = @"com.apple.MicroLocationClientBinaryDetection";
  v38[0] = @"00000000-0000-0000-0000-000000000012";
  v38[1] = @"00000000-0000-0000-0000-000000000013";
  v37[2] = @"com.apple.MicroLocationClientMultiClass";
  v37[3] = @"com.apple.MicroLocationClientLSL";
  v38[2] = @"00000000-0000-0000-0000-000000000014";
  v38[3] = @"00000000-0000-0000-0000-000000000015";
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:4];
  v44[2] = v6;
  v43[3] = @"com.apple.MiLoDataCollection";
  v35 = @"com.apple.MiLoDataCollection";
  v36 = @"00000000-0000-0000-0000-000000000019";
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
  v44[3] = v7;
  v43[4] = @"com.apple.MiLoLSL2";
  v33 = @"com.apple.MiLoLSL2";
  v34 = @"00000000-0000-0000-0000-000000000018";
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
  v44[4] = v8;
  v43[5] = @"com.apple.HomeSlam";
  v31 = @"com.apple.HomeSlam";
  v32 = @"00000000-0000-0000-0000-000000000020";
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
  v44[5] = v9;
  v43[6] = @"com.apple.MiLoPlaceholderApp";
  v29 = @"com.apple.MiLoPlaceholderApp";
  v30 = @"00000000-0000-0000-0000-000000000021";
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
  v44[6] = v10;
  v43[7] = @"com.apple.contextstored";
  v27 = @"com.apple.proactive.ProactiveContextClient";
  v28 = @"00000000-0000-0000-0000-000000000017";
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
  v44[7] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:v43 count:8];

  v13 = [MEMORY[0x277CCAE80] signingIdentityForSelf];
  if (v13)
  {
    v14 = [v12 objectForKeyedSubscript:v13];
    v15 = v14;
    if (v14)
    {
      v16 = [v14 objectForKeyedSubscript:v3];
      if (v16)
      {
        v17 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v16];
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        __51__ULConnection_initWithDelegate_serviceIdentifier___block_invoke_cold_1();
      }

      v18 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
      {
        v19 = v18;
        *buf = 138412546;
        v24 = objc_opt_class();
        v25 = 2112;
        v26 = v13;
        v20 = v24;
        _os_log_impl(&dword_258FC9000, v19, OS_LOG_TYPE_ERROR, "[%@] invalid signing identity: %@", buf, 0x16u);
      }

      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];

  return v17;
}

+ (void)createServiceWithServiceType:(unint64_t)a3 locationTypes:(id)a4 reply:(id)a5
{
  v7 = a4;
  v8 = a5;
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default_cold_1();
  }

  v9 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_258FC9000, v9, OS_LOG_TYPE_DEFAULT, "Creating a service", buf, 2u);
  }

  v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v11 = dispatch_queue_create("com.apple.MicroLocation.createServiceWithServiceType", v10);

  v12 = [ULConnection _createNSXPCConnectionWithWeakProxy:0];
  [v12 resume];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __65__ULConnection_createServiceWithServiceType_locationTypes_reply___block_invoke;
  v16[3] = &unk_2798D2498;
  v17 = v12;
  v18 = v7;
  v19 = v8;
  v20 = a3;
  v13 = v8;
  v14 = v7;
  v15 = v12;
  dispatch_async(v11, v16);
}

void __65__ULConnection_createServiceWithServiceType_locationTypes_reply___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) remoteObjectProxy];
  v3 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __65__ULConnection_createServiceWithServiceType_locationTypes_reply___block_invoke_2;
  v5[3] = &unk_2798D2470;
  v4 = *(a1 + 56);
  v7 = *(a1 + 48);
  v6 = *(a1 + 32);
  [v2 createServiceWithServiceType:v4 locationTypes:v3 reply:v5];
}

void __65__ULConnection_createServiceWithServiceType_locationTypes_reply___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default_cold_1();
  }

  v7 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = [v6 localizedDescription];
    v11 = 138412546;
    v12 = v5;
    v13 = 2112;
    v14 = v9;
    _os_log_impl(&dword_258FC9000, v8, OS_LOG_TYPE_DEFAULT, "Creating service, identifier: %@, error:%@", &v11, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) invalidate];

  v10 = *MEMORY[0x277D85DE8];
}

+ (void)deleteServiceWithIdentifier:(id)a3 reply:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default_cold_1();
  }

  v7 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v20 = v5;
    _os_log_impl(&dword_258FC9000, v7, OS_LOG_TYPE_DEFAULT, "Deleting service:%@", buf, 0xCu);
  }

  v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v9 = dispatch_queue_create("com.apple.MicroLocation.deleteServiceWithIdentifier", v8);

  v10 = [ULConnection _createNSXPCConnectionWithWeakProxy:0];
  [v10 resume];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__ULConnection_deleteServiceWithIdentifier_reply___block_invoke;
  block[3] = &unk_2798D24E8;
  v16 = v10;
  v17 = v5;
  v18 = v6;
  v11 = v6;
  v12 = v5;
  v13 = v10;
  dispatch_async(v9, block);

  v14 = *MEMORY[0x277D85DE8];
}

void __50__ULConnection_deleteServiceWithIdentifier_reply___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) remoteObjectProxy];
  v3 = *(a1 + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __50__ULConnection_deleteServiceWithIdentifier_reply___block_invoke_2;
  v4[3] = &unk_2798D24C0;
  v5 = v3;
  v7 = *(a1 + 48);
  v6 = *(a1 + 32);
  [v2 deleteServiceWithIdentifier:v5 reply:v4];
}

void __50__ULConnection_deleteServiceWithIdentifier_reply___block_invoke_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default_cold_1();
  }

  v4 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = v4;
    v7 = [v3 localizedDescription];
    v9 = 138412546;
    v10 = v5;
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&dword_258FC9000, v6, OS_LOG_TYPE_DEFAULT, "Deleting service, identifier: %@, error:%@", &v9, 0x16u);
  }

  (*(*(a1 + 48) + 16))();
  [*(a1 + 40) invalidate];

  v8 = *MEMORY[0x277D85DE8];
}

- (id)connect
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = [(ULConnection *)self queue];
  dispatch_assert_queue_not_V2(v3);

  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default_cold_1();
  }

  v4 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v26[0]) = 0;
    _os_log_impl(&dword_258FC9000, v4, OS_LOG_TYPE_DEFAULT, "connect", v26, 2u);
  }

  v5 = [(ULConnection *)self configuration];
  v6 = [v5 contextLayers];
  v7 = [v6 count];

  if (!v7)
  {
    v8 = [(ULConnection *)self serviceIdentifier];
    v9 = [ULContextLayerUtilities getDefaultContextLayerForService:v8];

    if (onceToken_MicroLocation_Default != -1)
    {
      __51__ULConnection_initWithDelegate_serviceIdentifier___block_invoke_cold_1();
    }

    v10 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v10;
      v12 = [(ULConnection *)self serviceIdentifier];
      v13 = [v12 UUIDString];
      v14 = [v13 UTF8String];
      v15 = [v9 UTF8String];
      v26[0] = 68289538;
      v26[1] = 0;
      v27 = 2082;
      v28 = &unk_258FDF03F;
      v29 = 2082;
      v30 = v14;
      v31 = 2082;
      v32 = v15;
      _os_log_impl(&dword_258FC9000, v11, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:connect: No context layers provided. Setting default context layer for service, ServiceUUID:%{public, location:escape_only}s, ContextLayer:%{public, location:escape_only}s}", v26, 0x26u);
    }

    v16 = [(ULConnection *)self configuration];
    v17 = [v16 predictionsUpdateType];

    v18 = [ULConfiguration alloc];
    v19 = [MEMORY[0x277CBEB98] setWithObject:v9];
    v20 = [(ULConfiguration *)v18 initWithContextLayers:v19];
    [(ULConnection *)self setConfiguration:v20];

    v21 = [(ULConnection *)self configuration];
    [v21 setPredictionsUpdateType:v17];
  }

  v22 = [(ULConnection *)self configuration];
  v23 = [(ULConnection *)self runWithConfiguration:v22];

  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

- (id)disconnect
{
  v3 = [(ULConnection *)self queue];
  dispatch_assert_queue_not_V2(v3);

  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy_;
  v12 = __Block_byref_object_dispose_;
  v13 = 0;
  v4 = [(ULConnection *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __26__ULConnection_disconnect__block_invoke;
  v7[3] = &unk_2798D2510;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(v4, v7);

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __26__ULConnection_disconnect__block_invoke(uint64_t a1)
{
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default_cold_1();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_258FC9000, v2, OS_LOG_TYPE_DEFAULT, "disconnect", v9, 2u);
  }

  [*(a1 + 32) _checkAndRecoverIfNeeded];
  v3 = [MEMORY[0x277CCAD78] UUID];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = [*(a1 + 32) connection];
  v7 = [v6 remoteObjectProxy];
  [v7 disconnectWithRequestIdentifier:*(*(*(a1 + 40) + 8) + 40)];

  v8 = +[ULMap emptyMap];
  [*(a1 + 32) setInternalMap:v8];
}

- (id)runWithConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(ULConnection *)self queue];
  dispatch_assert_queue_not_V2(v5);

  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  v6 = [(ULConnection *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__ULConnection_runWithConfiguration___block_invoke;
  block[3] = &unk_2798D2538;
  v11 = v4;
  v12 = &v13;
  block[4] = self;
  v7 = v4;
  dispatch_sync(v6, block);

  v8 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v8;
}

void __37__ULConnection_runWithConfiguration___block_invoke(uint64_t a1)
{
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default_cold_1();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&dword_258FC9000, v2, OS_LOG_TYPE_DEFAULT, "runWithConfiguration", v12, 2u);
  }

  [*(a1 + 32) _checkAndRecoverIfNeeded];
  v3 = [MEMORY[0x277CCAD78] UUID];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = [*(a1 + 32) connection];
  v7 = [v6 remoteObjectProxy];
  v8 = *(a1 + 40);
  v9 = [*(a1 + 32) serviceIdentifier];
  v10 = [*(a1 + 32) legacyServiceIdentifier];
  [v7 runWithConfiguration:v8 serviceIdentifier:v9 legacyServiceIdentifier:v10 andRequestIdentifier:*(*(*(a1 + 48) + 8) + 40)];

  v11 = [*(a1 + 40) copy];
  [*(a1 + 32) setConfiguration:v11];
}

- (id)requestPrediction
{
  v3 = [(ULConnection *)self queue];
  dispatch_assert_queue_not_V2(v3);

  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy_;
  v12 = __Block_byref_object_dispose_;
  v13 = 0;
  v4 = [(ULConnection *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __33__ULConnection_requestPrediction__block_invoke;
  v7[3] = &unk_2798D2510;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(v4, v7);

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __33__ULConnection_requestPrediction__block_invoke(uint64_t a1)
{
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default_cold_1();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_258FC9000, v2, OS_LOG_TYPE_DEFAULT, "requestPrediction", v8, 2u);
  }

  [*(a1 + 32) _checkAndRecoverIfNeeded];
  v3 = [MEMORY[0x277CCAD78] UUID];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = [*(a1 + 32) connection];
  v7 = [v6 remoteObjectProxy];
  [v7 requestPredictionWithRequestIdentifier:*(*(*(a1 + 40) + 8) + 40)];
}

- (id)requestObservation
{
  v3 = [(ULConnection *)self queue];
  dispatch_assert_queue_not_V2(v3);

  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy_;
  v12 = __Block_byref_object_dispose_;
  v13 = 0;
  v4 = [(ULConnection *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __34__ULConnection_requestObservation__block_invoke;
  v7[3] = &unk_2798D2510;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(v4, v7);

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __34__ULConnection_requestObservation__block_invoke(uint64_t a1)
{
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default_cold_1();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_258FC9000, v2, OS_LOG_TYPE_DEFAULT, "requestObservation", v8, 2u);
  }

  [*(a1 + 32) _checkAndRecoverIfNeeded];
  v3 = [MEMORY[0x277CCAD78] UUID];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = [*(a1 + 32) connection];
  v7 = [v6 remoteObjectProxy];
  [v7 requestObservationWithRequestIdentifier:*(*(*(a1 + 40) + 8) + 40)];
}

- (void)addLabel:(id)a3
{
  v4 = a3;
  v5 = [(ULConnection *)self queue];
  dispatch_assert_queue_not_V2(v5);

  v6 = [(ULConnection *)self queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __25__ULConnection_addLabel___block_invoke;
  v8[3] = &unk_2798D2560;
  v9 = v4;
  v10 = self;
  v7 = v4;
  dispatch_sync(v6, v8);
}

void __25__ULConnection_addLabel___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) copy];
  v3 = [*(a1 + 32) contextLayer];
  v4 = [v3 isEqualToString:@"ULContextLayerTypeUnknown"];

  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = [*(a1 + 40) serviceIdentifier];
    v7 = [v5 copyWithReplacementContextLayerFromServiceIdentifier:v6];

    v2 = v7;
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default_cold_1();
  }

  v8 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = [v2 name];
    v11 = [v2 contextLayer];
    v12 = ULDeviceClassToString([v2 deviceClass]);
    v16 = 138412802;
    v17 = v10;
    v18 = 2112;
    v19 = v11;
    v20 = 2112;
    v21 = v12;
    _os_log_impl(&dword_258FC9000, v9, OS_LOG_TYPE_DEFAULT, "addLabel with name: %@ to contextLayer: %@ to device: %@", &v16, 0x20u);
  }

  [*(a1 + 40) _checkAndRecoverIfNeeded];
  v13 = [*(a1 + 40) connection];
  v14 = [v13 remoteObjectProxy];
  [v14 addLabel:v2];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)addLabel:(id)a3 betweenStartDate:(id)a4 andEndDate:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(ULConnection *)self queue];
  dispatch_assert_queue_not_V2(v11);

  v12 = [(ULConnection *)self queue];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __53__ULConnection_addLabel_betweenStartDate_andEndDate___block_invoke;
  v16[3] = &unk_2798D2588;
  v17 = v8;
  v18 = self;
  v19 = v9;
  v20 = v10;
  v13 = v10;
  v14 = v9;
  v15 = v8;
  dispatch_sync(v12, v16);
}

void __53__ULConnection_addLabel_betweenStartDate_andEndDate___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) copy];
  v3 = [*(a1 + 32) contextLayer];
  v4 = [v3 isEqualToString:@"ULContextLayerTypeUnknown"];

  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = [*(a1 + 40) serviceIdentifier];
    v7 = [v5 copyWithReplacementContextLayerFromServiceIdentifier:v6];

    v2 = v7;
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default_cold_1();
  }

  v8 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = [v2 contextLayer];
    v11 = *(a1 + 48);
    v12 = *(a1 + 56);
    v16 = 138413058;
    v17 = v2;
    v18 = 2112;
    v19 = v10;
    v20 = 2112;
    v21 = v11;
    v22 = 2112;
    v23 = v12;
    _os_log_impl(&dword_258FC9000, v9, OS_LOG_TYPE_DEFAULT, "addLabel with name: %@ contextLayer: %@ between dates: %@ - %@", &v16, 0x2Au);
  }

  [*(a1 + 40) _checkAndRecoverIfNeeded];
  v13 = [*(a1 + 40) connection];
  v14 = [v13 remoteObjectProxy];
  [v14 addLabel:v2 betweenStartDate:*(a1 + 48) andEndDate:*(a1 + 56)];

  v15 = *MEMORY[0x277D85DE8];
}

- (id)startUpdatingWithConfiguration:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ULConnection *)self queue];
  dispatch_assert_queue_not_V2(v5);

  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default_cold_1();
  }

  v6 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138412290;
    v19 = v4;
    _os_log_impl(&dword_258FC9000, v6, OS_LOG_TYPE_DEFAULT, "startUpdatingWithConfiguration: %@", &v18, 0xCu);
  }

  v7 = [ULConfiguration alloc];
  v8 = [(ULConnection *)self configuration];
  v9 = [v8 contextLayers];
  v10 = [(ULConfiguration *)v7 initWithContextLayers:v9];
  [(ULConnection *)self setConfiguration:v10];

  LODWORD(v10) = [v4 isLowLatency];
  v11 = [(ULConnection *)self configuration];
  v12 = v11;
  if (v10)
  {
    v13 = 2;
  }

  else
  {
    v13 = 1;
  }

  [v11 setPredictionsUpdateType:v13];

  v14 = [(ULConnection *)self configuration];
  v15 = [(ULConnection *)self runWithConfiguration:v14];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)stopUpdating
{
  v3 = [(ULConnection *)self queue];
  dispatch_assert_queue_not_V2(v3);

  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default_cold_1();
  }

  v4 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&dword_258FC9000, v4, OS_LOG_TYPE_DEFAULT, "stopUpdating", v13, 2u);
  }

  v5 = [ULConfiguration alloc];
  v6 = [(ULConnection *)self configuration];
  v7 = [v6 contextLayers];
  v8 = [(ULConfiguration *)v5 initWithContextLayers:v7];
  [(ULConnection *)self setConfiguration:v8];

  v9 = [(ULConnection *)self configuration];
  [v9 setPredictionsUpdateType:0];

  v10 = [(ULConnection *)self configuration];
  v11 = [(ULConnection *)self runWithConfiguration:v10];

  return v11;
}

- (void)enableMicrolocationAtCurrentLocation
{
  v3 = [(ULConnection *)self queue];
  dispatch_assert_queue_not_V2(v3);

  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default_cold_1();
  }

  v4 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_258FC9000, v4, OS_LOG_TYPE_DEFAULT, "Legacy SPI request, enableMicrolocationAtCurrentLocation, default to enable in room detection", v6, 2u);
  }

  v5 = [[ULCustomLoiConfiguration alloc] initWithEnableInRoomDetection:1];
  [(ULConnection *)self enableMicrolocationAtCurrentLocationWithConfiguration:v5];
}

- (void)enableMicrolocationAtCurrentLocationWithConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(ULConnection *)self queue];
  dispatch_assert_queue_not_V2(v5);

  v6 = [(ULConnection *)self queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __70__ULConnection_enableMicrolocationAtCurrentLocationWithConfiguration___block_invoke;
  v8[3] = &unk_2798D2560;
  v9 = v4;
  v10 = self;
  v7 = v4;
  dispatch_sync(v6, v8);
}

void __70__ULConnection_enableMicrolocationAtCurrentLocationWithConfiguration___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default_cold_1();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_258FC9000, v2, OS_LOG_TYPE_DEFAULT, "enableMicrolocationAtCurrentLocationWithConfiguration %@", &v7, 0xCu);
  }

  v4 = [*(a1 + 40) connection];
  v5 = [v4 remoteObjectProxy];
  [v5 createCustomLocationOfInterestAtCurrentLocationWithConfiguration:*(a1 + 32)];

  v6 = *MEMORY[0x277D85DE8];
}

- (ULMap)currentMap
{
  v3 = [(ULConnection *)self queue];
  dispatch_assert_queue_not_V2(v3);

  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy_;
  v12 = __Block_byref_object_dispose_;
  v13 = 0;
  v4 = [(ULConnection *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __26__ULConnection_currentMap__block_invoke;
  v7[3] = &unk_2798D25B0;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(v4, v7);

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __26__ULConnection_currentMap__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) internalMap];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)didUpdateMap:(id)a3
{
  v4 = a3;
  v5 = [(ULConnection *)self queue];
  dispatch_assert_queue_V2(v5);

  v15 = [ULMap alloc];
  v6 = [v4 mapItems];
  v16 = [(ULConnection *)self internalMap];
  v7 = [v16 predictionContext];
  v8 = [v4 locationOfInterest];
  v9 = [v4 serviceState];
  v10 = [v4 serviceSuspendReasons];
  v11 = [v4 isMapValid];
  v12 = [v4 metaInfo];
  v13 = [v4 homeSlamModelData];

  v14 = [(ULMap *)v15 initWithMapItems:v6 predictionContext:v7 locationOfInterest:v8 serviceState:v9 serviceSuspendReasons:v10 isMapValid:v11 metaInfo:v12 homeSlamModelData:v13];
  [(ULConnection *)self setInternalMap:v14];

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __29__ULConnection_didUpdateMap___block_invoke;
  v17[3] = &unk_2798D25D8;
  v17[4] = self;
  [(ULConnection *)self _performAsyncOnDelegateQueueIfRespondsToSelector:sel_connectionDidUpdateMap_ block:v17];
}

void __29__ULConnection_didUpdateMap___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 connectionDidUpdateMap:*(a1 + 32)];
}

- (void)didUpdatePredictionContext:(id)a3
{
  v4 = a3;
  v5 = [(ULConnection *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(ULConnection *)self internalMap];
  v7 = [v6 copyWithReplacementPredictionContext:v4];

  [(ULConnection *)self setInternalMap:v7];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __43__ULConnection_didUpdatePredictionContext___block_invoke;
  v8[3] = &unk_2798D25D8;
  v8[4] = self;
  [(ULConnection *)self _performAsyncOnDelegateQueueIfRespondsToSelector:sel_connectionDidUpdatePredictionContext_ block:v8];
}

void __43__ULConnection_didUpdatePredictionContext___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 connectionDidUpdatePredictionContext:*(a1 + 32)];
}

- (void)didCompleteRequest:(id)a3 withError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ULConnection *)self queue];
  dispatch_assert_queue_V2(v8);

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __45__ULConnection_didCompleteRequest_withError___block_invoke;
  v11[3] = &unk_2798D2448;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [(ULConnection *)self _performAsyncOnDelegateQueueIfRespondsToSelector:sel_connection_didCompleteRequest_withError_ block:v11];
}

void __45__ULConnection_didCompleteRequest_withError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 connection:*(a1 + 32) didCompleteRequest:*(a1 + 40) withError:*(a1 + 48)];
}

- (void)didCreateCustomLocationOfInterestWithError:(id)a3
{
  v4 = a3;
  v5 = [(ULConnection *)self queue];
  dispatch_assert_queue_V2(v5);

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__ULConnection_didCreateCustomLocationOfInterestWithError___block_invoke;
  v7[3] = &unk_2798D2560;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(ULConnection *)self _performAsyncOnDelegateQueueIfRespondsToSelector:sel_connection_didEnableMicrolocationAtCurrentLocationWithError_ block:v7];
}

void __59__ULConnection_didCreateCustomLocationOfInterestWithError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 connection:*(a1 + 32) didEnableMicrolocationAtCurrentLocationWithError:*(a1 + 40)];
}

- (void)didRemoveCustomLocationOfInterestWithIdentifier:(id)a3 withError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ULConnection *)self queue];
  dispatch_assert_queue_V2(v8);

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __74__ULConnection_didRemoveCustomLocationOfInterestWithIdentifier_withError___block_invoke;
  v11[3] = &unk_2798D2448;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [(ULConnection *)self _performAsyncOnDelegateQueueIfRespondsToSelector:sel_connection_didDisableMicrolocationAtLocationWithIdentifier_withError_ block:v11];
}

void __74__ULConnection_didRemoveCustomLocationOfInterestWithIdentifier_withError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 connection:*(a1 + 32) didDisableMicrolocationAtLocationWithIdentifier:*(a1 + 40) withError:*(a1 + 48)];
}

- (void)didFailWithError:(id)a3
{
  v4 = a3;
  v5 = [(ULConnection *)self queue];
  dispatch_assert_queue_V2(v5);

  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __33__ULConnection_didFailWithError___block_invoke;
  v10 = &unk_2798D2560;
  v11 = self;
  v12 = v4;
  v6 = v4;
  [(ULConnection *)self _performAsyncOnDelegateQueueIfRespondsToSelector:sel_connection_didFailWithError_ block:&v7];
  [(ULConnection *)self _invalidate:v7];
}

void __33__ULConnection_didFailWithError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 connection:*(a1 + 32) didFailWithError:*(a1 + 40)];
}

- (void)didSendGenericEvent:(unint64_t)a3 withDescription:(id)a4
{
  v6 = a4;
  v7 = [(ULConnection *)self queue];
  dispatch_assert_queue_V2(v7);

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __52__ULConnection_didSendGenericEvent_withDescription___block_invoke;
  v9[3] = &unk_2798D2600;
  v10 = v6;
  v11 = a3;
  v9[4] = self;
  v8 = v6;
  [(ULConnection *)self _performAsyncOnDelegateQueueIfRespondsToSelector:sel_connection_didSendGenericEvent_withDescription_ block:v9];
}

void __52__ULConnection_didSendGenericEvent_withDescription___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 connection:*(a1 + 32) didSendGenericEvent:*(a1 + 48) withDescription:*(a1 + 40)];
}

- (void)didCompleteObservationWithMetaInformation:(id)a3
{
  v4 = a3;
  v5 = [(ULConnection *)self queue];
  dispatch_assert_queue_V2(v5);

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__ULConnection_didCompleteObservationWithMetaInformation___block_invoke;
  v7[3] = &unk_2798D2560;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(ULConnection *)self _performAsyncOnDelegateQueueIfRespondsToSelector:sel_connection_didCompleteObservationWithMetaInformation_ block:v7];
}

void __58__ULConnection_didCompleteObservationWithMetaInformation___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 connection:*(a1 + 32) didCompleteObservationWithMetaInformation:*(a1 + 40)];
}

- (void)didCompletePredictionWithMetaInformation:(id)a3
{
  v4 = a3;
  v5 = [(ULConnection *)self queue];
  dispatch_assert_queue_V2(v5);

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__ULConnection_didCompletePredictionWithMetaInformation___block_invoke;
  v7[3] = &unk_2798D2560;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(ULConnection *)self _performAsyncOnDelegateQueueIfRespondsToSelector:sel_connection_didCompletePredictionWithMetaInformation_ block:v7];
}

void __57__ULConnection_didCompletePredictionWithMetaInformation___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 connection:*(a1 + 32) didCompletePredictionWithMetaInformation:*(a1 + 40)];
}

+ (id)_createNSXPCConnectionWithWeakProxy:(id)a3
{
  v3 = MEMORY[0x277CCAE80];
  v4 = a3;
  v5 = [[v3 alloc] initWithMachServiceName:@"com.apple.milod.xpc.service" options:4096];
  v6 = +[ULXPCProtocols responseInterface];
  [v5 setExportedInterface:v6];

  [v5 setExportedObject:v4];
  v7 = +[ULXPCProtocols requestInterface];
  [v5 setRemoteObjectInterface:v7];

  return v5;
}

- (void)_xpcInterruptionHandler
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [(ULConnection *)self queue];
  dispatch_assert_queue_V2(v3);

  if ([(ULConnection *)self interrupted])
  {
    [ULConnection _xpcInterruptionHandler];
  }

  else if (onceToken_MicroLocation_Default == -1)
  {
    goto LABEL_3;
  }

  _CLLogObjectForCategory_MicroLocation_Default_cold_1();
LABEL_3:
  v4 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    v6 = [(ULConnection *)self connection];
    v7 = [v6 signingIdentity];
    *buf = 138412290;
    v12 = v7;
    _os_log_impl(&dword_258FC9000, v5, OS_LOG_TYPE_DEFAULT, "%@: connection interrupted", buf, 0xCu);
  }

  v8 = +[ULMap emptyMap];
  [(ULConnection *)self setInternalMap:v8];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __39__ULConnection__xpcInterruptionHandler__block_invoke;
  v10[3] = &unk_2798D25D8;
  v10[4] = self;
  [(ULConnection *)self _performAsyncOnDelegateQueueIfRespondsToSelector:sel_connectionDidUpdateMap_ block:v10];
  [(ULConnection *)self setInterrupted:1];
  v9 = *MEMORY[0x277D85DE8];
}

void __39__ULConnection__xpcInterruptionHandler__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 connectionDidUpdateMap:*(a1 + 32)];
}

- (void)_xpcInvalidationHandler
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = [(ULConnection *)self queue];
  dispatch_assert_queue_V2(v3);

  if ([(ULConnection *)self interrupted])
  {
    [ULConnection _xpcInvalidationHandler];
  }

  else if (onceToken_MicroLocation_Default == -1)
  {
    goto LABEL_3;
  }

  _CLLogObjectForCategory_MicroLocation_Default_cold_1();
LABEL_3:
  v4 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    v6 = [(ULConnection *)self connection];
    v7 = [v6 signingIdentity];
    v10 = 138412290;
    v11 = v7;
    _os_log_impl(&dword_258FC9000, v5, OS_LOG_TYPE_DEFAULT, "%@: connection invalidated", &v10, 0xCu);
  }

  v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ULLogicDomain" code:0 userInfo:0];
  [(ULConnection *)self didFailWithError:v8];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_invalidate
{
  v3 = [(ULConnection *)self connection];
  [v3 setInterruptionHandler:0];

  v4 = [(ULConnection *)self connection];
  [v4 setInvalidationHandler:0];

  v5 = [(ULConnection *)self connection];
  [v5 invalidate];

  [(ULConnection *)self setConnection:0];

  [(ULConnection *)self _manageConnectionAvailableNotificationObservation:0];
}

- (void)_manageConnectionAvailableNotificationObservation:(BOOL)a3
{
  if (a3)
  {
    objc_initWeak(&location, self);
    v4 = [(ULConnection *)self darwinNotificationHelper];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __66__ULConnection__manageConnectionAvailableNotificationObservation___block_invoke;
    v6[3] = &unk_2798D2420;
    objc_copyWeak(&v7, &location);
    [v4 addObserverForNotificationName:@"ULConnectionAvailableNotification" handler:v6];

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }

  else
  {
    v5 = [(ULConnection *)self darwinNotificationHelper];
    [v5 removeObserverForNotificationName:@"ULConnectionAvailableNotification"];
  }
}

void __66__ULConnection__manageConnectionAvailableNotificationObservation___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __66__ULConnection__manageConnectionAvailableNotificationObservation___block_invoke_2;
    block[3] = &unk_2798D25D8;
    block[4] = v2;
    dispatch_async(v3, block);
  }
}

uint64_t __66__ULConnection__manageConnectionAvailableNotificationObservation___block_invoke_2(uint64_t a1)
{
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default_cold_1();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_258FC9000, v2, OS_LOG_TYPE_DEFAULT, "Handling connection available notification", v4, 2u);
  }

  return [*(a1 + 32) _checkAndRecoverIfNeeded];
}

- (void)_performAsyncOnDelegateQueueIfRespondsToSelector:(SEL)a3 block:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [(ULConnection *)self queue];
  dispatch_assert_queue_V2(v7);

  v8 = [(ULConnection *)self delegate];
  if (v8 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      _CLLogObjectForCategory_MicroLocation_Default_cold_1();
    }

    v9 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      v11 = NSStringFromSelector(a3);
      v14 = 138412290;
      v15 = v11;
      _os_log_impl(&dword_258FC9000, v10, OS_LOG_TYPE_DEFAULT, "Performing block for selector: %@", &v14, 0xCu);
    }

    v12 = [(ULConnection *)self delegateQueue];
    dispatch_async(v12, v6);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_checkAndRecoverIfNeeded
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [(ULConnection *)self queue];
  dispatch_assert_queue_V2(v3);

  if ([(ULConnection *)self interrupted])
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      _CLLogObjectForCategory_MicroLocation_Default_cold_1();
    }

    v4 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v4;
      v6 = [(ULConnection *)self internalMap];
      v7 = [(ULConnection *)self configuration];
      v15 = 138412546;
      v16 = v6;
      v17 = 2112;
      v18 = v7;
      _os_log_impl(&dword_258FC9000, v5, OS_LOG_TYPE_DEFAULT, "Recovering: internalMap: %@, configuration: %@", &v15, 0x16u);
    }

    v8 = [(ULConnection *)self connection];
    v9 = [v8 remoteObjectProxy];
    v10 = [(ULConnection *)self configuration];
    v11 = [(ULConnection *)self serviceIdentifier];
    v12 = [(ULConnection *)self legacyServiceIdentifier];
    v13 = [MEMORY[0x277CCAD78] UUID];
    [v9 runWithConfiguration:v10 serviceIdentifier:v11 legacyServiceIdentifier:v12 andRequestIdentifier:v13];

    [(ULConnection *)self setInterrupted:0];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (ULConnectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

+ (void)exportDatabaseWithReply:(id)a3
{
  v3 = a3;
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default_cold_1();
  }

  v4 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_258FC9000, v4, OS_LOG_TYPE_DEFAULT, "Exporting database", buf, 2u);
  }

  v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v6 = dispatch_queue_create("com.apple.MicroLocation.exportDatabaseWithReply", v5);

  v7 = [ULConnection _createNSXPCConnectionWithWeakProxy:0];
  [v7 resume];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __52__ULConnection_Diagnostic__exportDatabaseWithReply___block_invoke;
  v10[3] = &unk_2798D2650;
  v11 = v7;
  v12 = v3;
  v8 = v3;
  v9 = v7;
  dispatch_async(v6, v10);
}

void __52__ULConnection_Diagnostic__exportDatabaseWithReply___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) remoteObjectProxy];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __52__ULConnection_Diagnostic__exportDatabaseWithReply___block_invoke_2;
  v3[3] = &unk_2798D2628;
  v5 = *(a1 + 40);
  v4 = *(a1 + 32);
  [v2 exportDatabaseWithReply:v3];
}

void __52__ULConnection_Diagnostic__exportDatabaseWithReply___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default_cold_1();
  }

  v7 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = [v6 localizedDescription];
    v11 = 138412546;
    v12 = v5;
    v13 = 2112;
    v14 = v9;
    _os_log_impl(&dword_258FC9000, v8, OS_LOG_TYPE_DEFAULT, "Export database response, URLS:%@, error:%@", &v11, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) invalidate];

  v10 = *MEMORY[0x277D85DE8];
}

+ (void)purgeDatabaseWithReply:(id)a3
{
  v3 = a3;
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default_cold_1();
  }

  v4 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_258FC9000, v4, OS_LOG_TYPE_DEFAULT, "Purging database", buf, 2u);
  }

  v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v6 = dispatch_queue_create("com.apple.MicroLocation.purgeDatabaseWithReply", v5);

  v7 = [ULConnection _createNSXPCConnectionWithWeakProxy:0];
  [v7 resume];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __51__ULConnection_Diagnostic__purgeDatabaseWithReply___block_invoke;
  v10[3] = &unk_2798D2650;
  v11 = v7;
  v12 = v3;
  v8 = v3;
  v9 = v7;
  dispatch_async(v6, v10);
}

void __51__ULConnection_Diagnostic__purgeDatabaseWithReply___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) remoteObjectProxy];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __51__ULConnection_Diagnostic__purgeDatabaseWithReply___block_invoke_2;
  v3[3] = &unk_2798D2678;
  v5 = *(a1 + 40);
  v4 = *(a1 + 32);
  [v2 purgeDatabaseWithReply:v3];
}

void __51__ULConnection_Diagnostic__purgeDatabaseWithReply___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default_cold_1();
  }

  v4 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    v6 = [v3 localizedDescription];
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&dword_258FC9000, v5, OS_LOG_TYPE_DEFAULT, "Purge database response, error:%@", &v8, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) invalidate];

  v7 = *MEMORY[0x277D85DE8];
}

+ (void)queryServicesWithReply:(id)a3
{
  v3 = a3;
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default_cold_1();
  }

  v4 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_258FC9000, v4, OS_LOG_TYPE_DEFAULT, "Querying services", buf, 2u);
  }

  v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v6 = dispatch_queue_create("com.apple.MicroLocation.queryServicesForClient", v5);

  v7 = [ULConnection _createNSXPCConnectionWithWeakProxy:0];
  [v7 resume];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __51__ULConnection_Diagnostic__queryServicesWithReply___block_invoke;
  v10[3] = &unk_2798D2650;
  v11 = v7;
  v12 = v3;
  v8 = v3;
  v9 = v7;
  dispatch_async(v6, v10);
}

void __51__ULConnection_Diagnostic__queryServicesWithReply___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) remoteObjectProxy];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __51__ULConnection_Diagnostic__queryServicesWithReply___block_invoke_2;
  v3[3] = &unk_2798D2628;
  v5 = *(a1 + 40);
  v4 = *(a1 + 32);
  [v2 queryServicesWithReply:v3];
}

void __51__ULConnection_Diagnostic__queryServicesWithReply___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default_cold_1();
  }

  v7 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = [v6 localizedDescription];
    v11 = 138412546;
    v12 = v5;
    v13 = 2112;
    v14 = v9;
    _os_log_impl(&dword_258FC9000, v8, OS_LOG_TYPE_DEFAULT, "Query services response:%@, error:%@", &v11, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) invalidate];

  v10 = *MEMORY[0x277D85DE8];
}

+ (void)imageFeaturesDebugWithTask:(unint64_t)a3 additionalInformation:(id)a4 reply:(id)a5
{
  v7 = a4;
  v8 = a5;
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default_cold_1();
  }

  v9 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_258FC9000, v9, OS_LOG_TYPE_DEFAULT, "imageFeaturesDebug", buf, 2u);
  }

  v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v11 = dispatch_queue_create("com.apple.MicroLocation.imageFeaturesDebug", v10);

  v12 = [ULConnection _createNSXPCConnectionWithWeakProxy:0];
  [v12 resume];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __83__ULConnection_Diagnostic__imageFeaturesDebugWithTask_additionalInformation_reply___block_invoke;
  v16[3] = &unk_2798D2498;
  v17 = v12;
  v18 = v7;
  v19 = v8;
  v20 = a3;
  v13 = v8;
  v14 = v7;
  v15 = v12;
  dispatch_async(v11, v16);
}

void __83__ULConnection_Diagnostic__imageFeaturesDebugWithTask_additionalInformation_reply___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) remoteObjectProxy];
  v3 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __83__ULConnection_Diagnostic__imageFeaturesDebugWithTask_additionalInformation_reply___block_invoke_2;
  v5[3] = &unk_2798D26A0;
  v4 = *(a1 + 56);
  v7 = *(a1 + 48);
  v6 = *(a1 + 32);
  [v2 imageFeaturesDebugWithTask:v4 additionalInformation:v3 reply:v5];
}

void __83__ULConnection_Diagnostic__imageFeaturesDebugWithTask_additionalInformation_reply___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default_cold_1();
  }

  v7 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = [v6 localizedDescription];
    v11 = 138412290;
    v12 = v9;
    _os_log_impl(&dword_258FC9000, v8, OS_LOG_TYPE_DEFAULT, "Image features debug response, error:%@", &v11, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) invalidate];

  v10 = *MEMORY[0x277D85DE8];
}

+ (void)polarisDebugWithTask:(unint64_t)a3 reply:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a4;
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default_cold_1();
  }

  v6 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = ULPolarisManagerTaskToString(a3);
    *buf = 138412290;
    v20 = v8;
    _os_log_impl(&dword_258FC9000, v7, OS_LOG_TYPE_DEFAULT, "polarisDebug. task: %@", buf, 0xCu);
  }

  v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v10 = dispatch_queue_create("com.apple.MicroLocation.polarisDebug", v9);

  v11 = [ULConnection _createNSXPCConnectionWithWeakProxy:0];
  [v11 resume];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__ULConnection_Diagnostic__polarisDebugWithTask_reply___block_invoke;
  block[3] = &unk_2798D26C8;
  v17 = v5;
  v18 = a3;
  v16 = v11;
  v12 = v5;
  v13 = v11;
  dispatch_async(v10, block);

  v14 = *MEMORY[0x277D85DE8];
}

void __55__ULConnection_Diagnostic__polarisDebugWithTask_reply___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) remoteObjectProxy];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __55__ULConnection_Diagnostic__polarisDebugWithTask_reply___block_invoke_2;
  v4[3] = &unk_2798D2678;
  v3 = *(a1 + 48);
  v6 = *(a1 + 40);
  v5 = *(a1 + 32);
  [v2 polarisDebugWithTask:v3 reply:v4];
}

void __55__ULConnection_Diagnostic__polarisDebugWithTask_reply___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default_cold_1();
  }

  v4 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    v6 = [v3 localizedDescription];
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&dword_258FC9000, v5, OS_LOG_TYPE_DEFAULT, "polaris debug response, error:%@", &v8, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) invalidate];

  v7 = *MEMORY[0x277D85DE8];
}

- (id)requestAllModelsLearning
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy_;
  v11 = __Block_byref_object_dispose_;
  v12 = 0;
  v3 = [(ULConnection *)self queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__ULConnection_Diagnostic__requestAllModelsLearning__block_invoke;
  v6[3] = &unk_2798D2510;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __52__ULConnection_Diagnostic__requestAllModelsLearning__block_invoke(uint64_t a1)
{
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default_cold_1();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_258FC9000, v2, OS_LOG_TYPE_DEFAULT, "requestAllModelsLearning", v8, 2u);
  }

  [*(a1 + 32) _checkAndRecoverIfNeeded];
  v3 = [MEMORY[0x277CCAD78] UUID];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = [*(a1 + 32) connection];
  v7 = [v6 remoteObjectProxy];
  [v7 requestAllModelsLearningWithRequestIdentifier:*(*(*(a1 + 40) + 8) + 40)];
}

- (void)disableMicrolocationAtlocationWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(ULConnection *)self queue];
  dispatch_assert_queue_not_V2(v5);

  v6 = [(ULConnection *)self queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __73__ULConnection_Diagnostic__disableMicrolocationAtlocationWithIdentifier___block_invoke;
  v8[3] = &unk_2798D2560;
  v9 = v4;
  v10 = self;
  v7 = v4;
  dispatch_sync(v6, v8);
}

void __73__ULConnection_Diagnostic__disableMicrolocationAtlocationWithIdentifier___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default_cold_1();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_258FC9000, v2, OS_LOG_TYPE_DEFAULT, "disableMicrolocationAtlocationWithIdentifier: %@", &v7, 0xCu);
  }

  v4 = [*(a1 + 40) connection];
  v5 = [v4 remoteObjectProxy];
  [v5 removeCustomLocationOfInterestWithIdentifier:*(a1 + 32)];

  v6 = *MEMORY[0x277D85DE8];
}

+ (id)getRecordingTriggerUUIDAndRequestMicroLocationRecordingScanWithAdditionalInformation:(id)a3 shouldForceRecording:(BOOL)a4 handler:(id)a5
{
  v5 = a5;
  v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v7 = dispatch_queue_create("com.apple.MicroLocation.getRecordingTriggerUUIDAndRequestMicroLocationRecordingScanWithAdditionalInformation", v6);

  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default_cold_1();
  }

  v8 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_258FC9000, v8, OS_LOG_TYPE_DEFAULT, "[DEPRECATED][DoNothing] received recording scan request", buf, 2u);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __138__ULConnection_Legacy__getRecordingTriggerUUIDAndRequestMicroLocationRecordingScanWithAdditionalInformation_shouldForceRecording_handler___block_invoke;
  block[3] = &unk_2798D26F0;
  v12 = v5;
  v9 = v5;
  dispatch_async(v7, block);

  return 0;
}

+ (void)donateMicroLocationTruthTagWithTagUUID:(id)a3 correspondingToTriggerUUID:(id)a4 handler:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default_cold_1();
  }

  v10 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_258FC9000, v10, OS_LOG_TYPE_DEFAULT, "[DEPRECATED][DoNothing] received truth label donation request for a recording trigger", v11, 2u);
  }
}

+ (void)donateMicroLocationTruthTagWithTagUUID:(id)a3 forRecordingEventsBetweenDate:(id)a4 andDate:(id)a5 handler:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default_cold_1();
  }

  v13 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&dword_258FC9000, v13, OS_LOG_TYPE_DEFAULT, "[DEPRECATED][DoNothing] received truth label donation request between Dates", v14, 2u);
  }
}

+ (void)requestMicroLocationRecordingScanWithAdditionalInformation:(id)a3 shouldForceRecording:(BOOL)a4
{
  v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v7 = a3;
  v8 = dispatch_queue_create("com.apple.MicroLocation.requestMicroLocationRecordingScanWithAdditionalInformation", v6);

  v9 = [ULConnection _createNSXPCConnectionWithWeakProxy:0];
  [v9 resume];
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3032000000;
  v16[3] = __Block_byref_object_copy_;
  v16[4] = __Block_byref_object_dispose_;
  v10 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithDictionary:v7 copyItems:1];

  v17 = v10;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __104__ULConnection_Legacy__requestMicroLocationRecordingScanWithAdditionalInformation_shouldForceRecording___block_invoke;
  block[3] = &unk_2798D2740;
  v15 = a4;
  v13 = v9;
  v14 = v16;
  v11 = v9;
  dispatch_async(v8, block);

  _Block_object_dispose(v16, 8);
}

void __104__ULConnection_Legacy__requestMicroLocationRecordingScanWithAdditionalInformation_shouldForceRecording___block_invoke(uint64_t a1)
{
  v39[3] = *MEMORY[0x277D85DE8];
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v3 = *(*(a1 + 40) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
  }

  v5 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:*(*(*(a1 + 40) + 8) + 40) copyItems:1];
  v6 = v5;
  if (*(a1 + 48))
  {
    v7 = MEMORY[0x277CBEC38];
  }

  else
  {
    v7 = MEMORY[0x277CBEC28];
  }

  [v5 setValue:v7 forKey:@"private.MicroLocation.forced.recordingRequest"];
  v8 = [v6 objectForKey:@"private.MicroLocation.recordingTriggerUUID"];

  if (!v8)
  {
    v9 = [MEMORY[0x277CCAD78] UUID];
    [v6 setValue:v9 forKey:@"private.MicroLocation.recordingTriggerUUID"];
  }

  v39[0] = objc_opt_class();
  v39[1] = objc_opt_class();
  v39[2] = objc_opt_class();
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:3];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v23 = a1;
  obj = *(*(*(a1 + 40) + 8) + 40);
  v10 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v10)
  {
    v11 = v10;
    v25 = *v34;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v34 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v33 + 1) + 8 * i);
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v14 = v26;
        v15 = [v14 countByEnumeratingWithState:&v29 objects:v37 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v30;
          while (2)
          {
            for (j = 0; j != v16; ++j)
            {
              if (*v30 != v17)
              {
                objc_enumerationMutation(v14);
              }

              v19 = *(*(&v29 + 1) + 8 * j);
              v20 = [v6 objectForKeyedSubscript:v13];
              LOBYTE(v19) = objc_opt_isKindOfClass();

              if (v19)
              {

                goto LABEL_23;
              }
            }

            v16 = [v14 countByEnumeratingWithState:&v29 objects:v37 count:16];
            if (v16)
            {
              continue;
            }

            break;
          }
        }

        [v6 removeObjectForKey:v13];
LABEL_23:
        ;
      }

      v11 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v11);
  }

  v21 = [*(v23 + 32) remoteObjectProxy];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __104__ULConnection_Legacy__requestMicroLocationRecordingScanWithAdditionalInformation_shouldForceRecording___block_invoke_2;
  v27[3] = &unk_2798D2718;
  v28 = *(v23 + 32);
  [v21 requestMicroLocationRecordingScanWithAdditionalInformation:v6 reply:v27];

  v22 = *MEMORY[0x277D85DE8];
}

+ (void)requestCurrentMicroLocationWithAdditionalInformation:(id)a3
{
  v3 = a3;
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default_cold_1();
  }

  v4 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_258FC9000, v4, OS_LOG_TYPE_DEFAULT, "received localization scan request", buf, 2u);
  }

  v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v6 = dispatch_queue_create("com.apple.MicroLocation.requestCurrentMicroLocationWithAdditionalInformation", v5);

  v7 = [ULConnection _createNSXPCConnectionWithWeakProxy:0];
  [v7 resume];
  *buf = 0;
  v13 = buf;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithDictionary:v3 copyItems:1];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __77__ULConnection_Legacy__requestCurrentMicroLocationWithAdditionalInformation___block_invoke;
  v9[3] = &unk_2798D25B0;
  v10 = v7;
  v11 = buf;
  v8 = v7;
  dispatch_async(v6, v9);

  _Block_object_dispose(buf, 8);
}

void __77__ULConnection_Legacy__requestCurrentMicroLocationWithAdditionalInformation___block_invoke(uint64_t a1)
{
  v32[2] = *MEMORY[0x277D85DE8];
  v32[0] = objc_opt_class();
  v32[1] = objc_opt_class();
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:2];
  v2 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:*(*(*(a1 + 40) + 8) + 40) copyItems:1];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v16 = a1;
  obj = *(*(*(a1 + 40) + 8) + 40);
  v3 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v3)
  {
    v4 = v3;
    v18 = *v27;
    do
    {
      v5 = 0;
      do
      {
        if (*v27 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v26 + 1) + 8 * v5);
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v7 = v19;
        v8 = [v7 countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v23;
          while (2)
          {
            v11 = 0;
            do
            {
              if (*v23 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v22 + 1) + 8 * v11);
              v13 = [v2 objectForKeyedSubscript:v6];
              LOBYTE(v12) = objc_opt_isKindOfClass();

              if (v12)
              {

                goto LABEL_16;
              }

              ++v11;
            }

            while (v9 != v11);
            v9 = [v7 countByEnumeratingWithState:&v22 objects:v30 count:16];
            if (v9)
            {
              continue;
            }

            break;
          }
        }

        [v2 removeObjectForKey:v6];
LABEL_16:
        ++v5;
      }

      while (v5 != v4);
      v4 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v4);
  }

  v14 = [*(v16 + 32) remoteObjectProxy];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __77__ULConnection_Legacy__requestCurrentMicroLocationWithAdditionalInformation___block_invoke_2;
  v20[3] = &unk_2798D2718;
  v21 = *(v16 + 32);
  [v14 requestCurrentMicroLocationWithAdditionalInformation:v2 reply:v20];

  v15 = *MEMORY[0x277D85DE8];
}

+ (id)getMicroLocationInternalVersion
{
  v30 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default_cold_1();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_258FC9000, v2, OS_LOG_TYPE_DEFAULT, "received internal version get request", buf, 2u);
  }

  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_create("com.apple.MicroLocation.getMicroLocationInternalVersion", v3);

  v5 = [ULConnection _createNSXPCConnectionWithWeakProxy:0];
  [v5 resume];
  *buf = 0;
  v20 = buf;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy_;
  v23 = __Block_byref_object_dispose_;
  v24 = 0;
  v6 = dispatch_semaphore_create(0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__ULConnection_Legacy__getMicroLocationInternalVersion__block_invoke;
  block[3] = &unk_2798D2538;
  v7 = v5;
  v16 = v7;
  v18 = buf;
  v8 = v6;
  v17 = v8;
  dispatch_async(v4, block);
  v9 = dispatch_time(0, 2000000000);
  dispatch_semaphore_wait(v8, v9);
  if (onceToken_MicroLocation_Default != -1)
  {
    __51__ULConnection_initWithDelegate_serviceIdentifier___block_invoke_cold_1();
  }

  v10 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [*(v20 + 5) UTF8String];
    v25 = 68289282;
    v26 = 2082;
    v27 = &unk_258FDF03F;
    v28 = 2082;
    v29 = v11;
    _os_log_impl(&dword_258FC9000, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:MicroLocation Internal Version request, version:%{public, location:escape_only}s}", &v25, 0x1Cu);
  }

  v12 = *(v20 + 5);
  _Block_object_dispose(buf, 8);

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

void __55__ULConnection_Legacy__getMicroLocationInternalVersion__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) remoteObjectProxy];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __55__ULConnection_Legacy__getMicroLocationInternalVersion__block_invoke_2;
  v4[3] = &unk_2798D2768;
  v3 = *(a1 + 40);
  v7 = *(a1 + 48);
  v5 = v3;
  v6 = *(a1 + 32);
  [v2 getMicroLocationInternalVersionWithReply:v4];
}

void __55__ULConnection_Legacy__getMicroLocationInternalVersion__block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
  [*(a1 + 40) invalidate];
}

+ (id)metadataForHomekitActionSetEventWithUUID:(id)a3 name:(id)a4 type:(id)a5 clientName:(id)a6 source:(id)a7 homeName:(id)a8
{
  v13 = MEMORY[0x277CBEB38];
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  v20 = objc_alloc_init(v13);
  [v20 setValue:v19 forKey:@"private.HomeKit.scene.actionSetUUID"];

  [v20 setValue:v18 forKey:@"private.HomeKit.scene.actionSetName"];
  [v20 setValue:v17 forKey:@"private.HomeKit.scene.actionSetType"];

  [v20 setValue:v16 forKey:@"private.HomeKit.scene.clientName"];
  [v20 setValue:v15 forKey:@"private.HomeKit.scene.source"];

  [v20 setValue:v14 forKey:@"private.HomeKit.scene.homeName"];

  return v20;
}

+ (id)metadataForHomekitAccessoryControlEventWithUUID:(id)a3 stateString:(id)a4 serviceUUID:(id)a5 serviceType:(id)a6 characteristicType:(id)a7 serviceGroupUUID:(id)a8 source:(id)a9 roomUUID:(id)a10
{
  v16 = MEMORY[0x277CBEB38];
  v17 = a10;
  v18 = a9;
  v19 = a8;
  v20 = a7;
  v21 = a6;
  v22 = a5;
  v23 = a4;
  v24 = a3;
  v25 = objc_alloc_init(v16);
  [v25 setValue:v24 forKey:@"private.HomeKit.accessory.accessoryUUID"];

  [v25 setValue:v23 forKey:@"private.HomeKit.accessory.stateString"];
  [v25 setValue:v22 forKey:@"private.HomeKit.accessory.serviceUUID"];

  [v25 setValue:v21 forKey:@"private.HomeKit.accessory.serviceType"];
  [v25 setValue:v20 forKey:@"private.HomeKit.accessory.characteristicType"];

  [v25 setValue:v19 forKey:@"private.HomeKit.accessory.serviceGroupUUID"];
  [v25 setValue:v18 forKey:@"private.HomeKit.accessory.source"];

  [v25 setValue:v17 forKey:@"private.HomeKit.accessory.roomUUID"];

  return v25;
}

- (void)updateLegacyServiceIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(ULConnection *)self queue];
  dispatch_assert_queue_not_V2(v5);

  v6 = [(ULConnection *)self queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __54__ULConnection_Legacy__updateLegacyServiceIdentifier___block_invoke;
  v8[3] = &unk_2798D2560;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_sync(v6, v8);
}

- (uint64_t)_xpcInterruptionHandler
{
  v27 = *MEMORY[0x277D85DE8];
  v0 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3(&dword_258FC9000, v1, v2, "{msg%{public}.0s:Interruption handler called twice, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v3, v4, v5, v6, v22, v23, v24, v25, v26);
  }

  v7 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_signpost_enabled(v7))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_258FC9000, v8, v9, v10, "Interruption handler called twice", "{msg%{public}.0s:Interruption handler called twice, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v11, v12, v22, v23, v24, v25, v26);
  }

  v13 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2(&dword_258FC9000, v14, v15, "{msg%{public}.0s:Interruption handler called twice, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v16, v17, v18, v19, v22, v23, v24, v25, v26);
  }

  v20 = abort_report_np();
  return [(ULConnection *)v20 _xpcInvalidationHandler];
}

- (uint64_t)_xpcInvalidationHandler
{
  v27 = *MEMORY[0x277D85DE8];
  v0 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3(&dword_258FC9000, v1, v2, "{msg%{public}.0s:Invalidation handler called after interruption handler, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v3, v4, v5, v6, v22, v23, v24, v25, v26);
  }

  v7 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_signpost_enabled(v7))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_258FC9000, v8, v9, v10, "Invalidation handler called after interruption handler", "{msg%{public}.0s:Invalidation handler called after interruption handler, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v11, v12, v22, v23, v24, v25, v26);
  }

  v13 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2(&dword_258FC9000, v14, v15, "{msg%{public}.0s:Invalidation handler called after interruption handler, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v16, v17, v18, v19, v22, v23, v24, v25, v26);
  }

  v20 = abort_report_np();
  return [ULContextLayerUtilities getDefaultContextLayerForService:v20];
}

@end