@interface PKIDSManager
- (BOOL)_queue_deviceIsRegistered:(id)registered;
- (BOOL)_queue_hasRegisteredAccounts;
- (BOOL)_queue_hasRemoteDevices;
- (BOOL)hasRemoteDevices;
- (NSArray)delegates;
- (NSArray)paymentRequests;
- (NSArray)remoteDevices;
- (PKIDSManager)init;
- (PKIDSManager)initWithIDSService:(id)service;
- (PKIDSManager)initWithTargetQueue:(id)queue;
- (id)_fetchPaymentInstrumentsForRequestingDevice:(id)device;
- (id)_preparePaymentDeviceResponseForRequestingDevice:(id)device userDisabled:(BOOL)disabled;
- (id)_queue_cancelRemotePaymentRequest:(id)request completion:(id)completion;
- (id)_queue_requestForIdentifier:(id)identifier;
- (id)_remoteDevicesWithArchive;
- (id)cancelRemotePaymentRequest:(id)request completion:(id)completion;
- (id)requestForIdentifier:(id)identifier;
- (id)requestInstrumentThumbnail:(id)thumbnail forRemoteDevice:(id)device size:(CGSize)size completion:(id)completion;
- (id)sendPayment:(id)payment forRemotePaymentRequest:(id)request completion:(id)completion;
- (id)sendPaymentClientUpdate:(id)update forRemotePaymentRequest:(id)request completion:(id)completion;
- (id)sendPaymentHostUpdate:(id)update forRemotePaymentRequest:(id)request completion:(id)completion;
- (id)sendPaymentResult:(id)result forRemotePaymentRequest:(id)request completion:(id)completion;
- (id)sendPaymentStatus:(int64_t)status forRemotePaymentRequest:(id)request completion:(id)completion;
- (id)sendRemotePaymentRequest:(id)request completion:(id)completion;
- (id)sendSetupRequest:(id)request appDisplayName:(id)name completion:(id)completion;
- (int64_t)_paymentAuthorizationStatusForPaymentResult:(id)result forRemotePaymentRequest:(id)request;
- (void)_paymentCancellationReceived:(id)received service:(id)service account:(id)account fromID:(id)d context:(id)context;
- (void)_paymentClientUpdateReceived:(id)received service:(id)service account:(id)account fromID:(id)d context:(id)context;
- (void)_paymentDiscoveryRequestReceived:(id)received service:(id)service account:(id)account fromID:(id)d context:(id)context;
- (void)_paymentDiscoveryResponseReceived:(id)received service:(id)service account:(id)account fromID:(id)d context:(id)context;
- (void)_paymentHostUpdateReceived:(id)received service:(id)service account:(id)account fromID:(id)d context:(id)context;
- (void)_paymentRequestReceived:(id)received service:(id)service account:(id)account fromID:(id)d context:(id)context;
- (void)_paymentResponseReceived:(id)received service:(id)service account:(id)account fromID:(id)d context:(id)context;
- (void)_paymentResultReceived:(id)received service:(id)service account:(id)account fromID:(id)d context:(id)context;
- (void)_paymentSetupRequestReceived:(id)received service:(id)service account:(id)account fromID:(id)d context:(id)context;
- (void)_postCTLMThrottleUncapNotification;
- (void)_promptDetailsForVirtualCardRequestReceived:(id)received service:(id)service account:(id)account fromID:(id)d context:(id)context;
- (void)_queue_addThumbnailCompletionHandler:(id)handler forKey:(id)key;
- (void)_queue_logCloudPairingState;
- (void)_queue_removeThumbnailCompletionHandlersForKeys:(id)keys;
- (void)_queue_sendDeviceDiscoveryRequestToAllDevicesWithProximity:(BOOL)proximity;
- (void)_queue_sendDeviceDiscoveryRequestWithProximity:(BOOL)proximity devices:(id)devices;
- (void)_queue_sendDiscoveryResponse:(id)response toDeviceWithFromID:(id)d;
- (void)_registerCTLMThrottleUncapNotification;
- (void)_registerListeners;
- (void)_thumbnailRequestReceived:(id)received service:(id)service account:(id)account fromID:(id)d context:(id)context;
- (void)_thumbnailResponseReceived:(id)received service:(id)service account:(id)account fromID:(id)d context:(id)context;
- (void)addDelegate:(id)delegate;
- (void)dealloc;
- (void)deleteArchivedDevices;
- (void)discoverRemoteDevicesWithProximity:(BOOL)proximity;
- (void)invalidateMessage:(id)message;
- (void)promptDetailsForVirtualCard:(id)card showNotification:(BOOL)notification completion:(id)completion;
- (void)removeDelegate:(id)delegate;
- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error;
- (void)service:(id)service account:(id)account identifier:(id)identifier hasBeenDeliveredWithContext:(id)context;
- (void)service:(id)service account:(id)account incomingUnhandledProtobuf:(id)protobuf fromID:(id)d context:(id)context;
- (void)service:(id)service activeAccountsChanged:(id)changed;
- (void)service:(id)service devicesChanged:(id)changed;
@end

@implementation PKIDSManager

- (NSArray)delegates
{
  os_unfair_lock_lock(&self->_delegatesLock);
  allObjects = [(NSHashTable *)self->_delegates allObjects];
  v4 = [allObjects copy];

  os_unfair_lock_unlock(&self->_delegatesLock);

  return v4;
}

- (PKIDSManager)init
{
  v3 = [objc_alloc(MEMORY[0x1E69A48A8]) initWithService:@"com.apple.private.alloy.applepay"];
  v4 = [(PKIDSManager *)self initWithIDSService:v3];
  if (v4)
  {
    v5 = PKLogFacilityTypeGetObject(9uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Initializing IDS manager", v7, 2u);
    }
  }

  return v4;
}

- (PKIDSManager)initWithTargetQueue:(id)queue
{
  queueCopy = queue;
  v5 = [(PKIDSManager *)self init];
  v6 = v5;
  if (v5)
  {
    dispatch_set_target_queue(v5->_internalQueue, queueCopy);
    dispatch_set_target_queue(v6->_callbackQueue, queueCopy);
  }

  return v6;
}

- (PKIDSManager)initWithIDSService:(id)service
{
  serviceCopy = service;
  v33.receiver = self;
  v33.super_class = PKIDSManager;
  v6 = [(PKIDSManager *)&v33 init];
  v7 = v6;
  if (v6)
  {
    v6->_delegatesLock._os_unfair_lock_opaque = 0;
    v8 = dispatch_queue_create("com.apple.passd.idsmanager.internal", 0);
    internalQueue = v7->_internalQueue;
    v7->_internalQueue = v8;

    v10 = dispatch_queue_create("com.apple.passd.idsmanager.callback", 0);
    callbackQueue = v7->_callbackQueue;
    v7->_callbackQueue = v10;

    objc_storeStrong(&v7->_service, service);
    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    remoteDevices = v7->_remoteDevices;
    v7->_remoteDevices = v12;

    v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
    paymentRequests = v7->_paymentRequests;
    v7->_paymentRequests = v14;

    v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
    pendingCancellations = v7->_pendingCancellations;
    v7->_pendingCancellations = v16;

    v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
    pendingDiscoveries = v7->_pendingDiscoveries;
    v7->_pendingDiscoveries = v18;

    v20 = objc_alloc_init(MEMORY[0x1E695DF90]);
    completionHandlers = v7->_completionHandlers;
    v7->_completionHandlers = v20;

    v22 = objc_alloc_init(MEMORY[0x1E695DF90]);
    thumbnailCompletionHandlers = v7->_thumbnailCompletionHandlers;
    v7->_thumbnailCompletionHandlers = v22;

    v24 = objc_alloc_init(PKProximityAdvertiser);
    proximityAdvertiser = v7->_proximityAdvertiser;
    v7->_proximityAdvertiser = v24;

    v26 = objc_alloc_init(MEMORY[0x1E695DF90]);
    recentlySeenUUIDs = v7->_recentlySeenUUIDs;
    v7->_recentlySeenUUIDs = v26;

    [(PKIDSManager *)v7 _registerCTLMThrottleUncapNotification];
    [(PKIDSManager *)v7 _registerListeners];
    [(PKIDSManager *)v7 _createThumbnailCacheDirectory];
    v28 = v7->_internalQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __35__PKIDSManager_initWithIDSService___block_invoke;
    block[3] = &unk_1E79C4E28;
    v29 = v7;
    v32 = v29;
    dispatch_async(v28, block);
    [(IDSService *)v7->_service addDelegate:v29 queue:v7->_internalQueue];
  }

  return v7;
}

uint64_t __35__PKIDSManager_initWithIDSService___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[1];
  v4 = [v2 _remoteDevicesWithArchive];
  [v3 addObjectsFromArray:v4];

  v5 = *(a1 + 32);

  return [v5 _populateDevicesIfNeeded];
}

- (void)dealloc
{
  [(IDSService *)self->_service removeDelegate:self];
  [(PKIDSManager *)self _unregisterCTLMThrottleUncapNotification];
  v3.receiver = self;
  v3.super_class = PKIDSManager;
  [(PKIDSManager *)&v3 dealloc];
}

- (void)addDelegate:(id)delegate
{
  delegateCopy = delegate;
  os_unfair_lock_lock(&self->_delegatesLock);
  delegates = self->_delegates;
  if (!delegates)
  {
    pk_weakObjectsHashTableUsingPointerPersonality = [MEMORY[0x1E696AC70] pk_weakObjectsHashTableUsingPointerPersonality];
    v6 = self->_delegates;
    self->_delegates = pk_weakObjectsHashTableUsingPointerPersonality;

    delegates = self->_delegates;
  }

  [(NSHashTable *)delegates addObject:delegateCopy];
  os_unfair_lock_unlock(&self->_delegatesLock);
}

- (void)removeDelegate:(id)delegate
{
  delegateCopy = delegate;
  os_unfair_lock_lock(&self->_delegatesLock);
  [(NSHashTable *)self->_delegates removeObject:delegateCopy];

  os_unfair_lock_unlock(&self->_delegatesLock);
}

- (NSArray)remoteDevices
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__74;
  v10 = __Block_byref_object_dispose__74;
  v11 = 0;
  internalQueue = self->_internalQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __29__PKIDSManager_remoteDevices__block_invoke;
  v5[3] = &unk_1E79C8A88;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(internalQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __29__PKIDSManager_remoteDevices__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (NSArray)paymentRequests
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__74;
  v10 = __Block_byref_object_dispose__74;
  v11 = 0;
  internalQueue = self->_internalQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __31__PKIDSManager_paymentRequests__block_invoke;
  v5[3] = &unk_1E79C8A88;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(internalQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __31__PKIDSManager_paymentRequests__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (BOOL)hasRemoteDevices
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  internalQueue = self->_internalQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __32__PKIDSManager_hasRemoteDevices__block_invoke;
  v5[3] = &unk_1E79C8A88;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(internalQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __32__PKIDSManager_hasRemoteDevices__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _queue_hasRemoteDevices];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)discoverRemoteDevicesWithProximity:(BOOL)proximity
{
  internalQueue = self->_internalQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __51__PKIDSManager_discoverRemoteDevicesWithProximity___block_invoke;
  v4[3] = &unk_1E79C4EC8;
  v4[4] = self;
  proximityCopy = proximity;
  dispatch_async(internalQueue, v4);
}

void __51__PKIDSManager_discoverRemoteDevicesWithProximity___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _queue_hasRegisteredAccounts];
  v3 = [*(a1 + 32) _queue_hasRemoteDevices];
  if (v2)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    v5 = v3;
    v6 = PKLogFacilityTypeGetObject(9uLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 40);
      *buf = 134218496;
      v21 = v7;
      v22 = 2048;
      v23 = v2;
      v24 = 2048;
      v25 = v5;
      _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "PKIDSManager: skipped discovering remote devices, proximityEnabled: %ld, hasRegisteredAccounts: %ld, hasRemoteDevices: %ld", buf, 0x20u);
    }
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = *(*(a1 + 32) + 8);
    v9 = [v8 countByEnumeratingWithState:&v16 objects:v26 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        v12 = 0;
        do
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [*(*(&v16 + 1) + 8 * v12++) setProximityState:2];
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v16 objects:v26 count:16];
      }

      while (v10);
    }

    v13 = *(a1 + 32);
    if (*(a1 + 40) == 1)
    {
      v14 = v13[5];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __51__PKIDSManager_discoverRemoteDevicesWithProximity___block_invoke_2;
      v15[3] = &unk_1E79C7D08;
      v15[4] = v13;
      [v14 startAdvertisingForDuration:v15 completion:30.0];
    }

    else
    {
      [v13 _queue_sendDeviceDiscoveryRequestToAllDevicesWithProximity:0];
    }

    [*(a1 + 32) _queue_logCloudPairingState];
  }
}

void __51__PKIDSManager_discoverRemoteDevicesWithProximity___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 120);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__PKIDSManager_discoverRemoteDevicesWithProximity___block_invoke_3;
  v7[3] = &unk_1E79C4DD8;
  v8 = v3;
  v9 = v4;
  v6 = v3;
  dispatch_async(v5, v7);
}

- (id)sendSetupRequest:(id)request appDisplayName:(id)name completion:(id)completion
{
  requestCopy = request;
  nameCopy = name;
  completionCopy = completion;
  internalQueue = self->_internalQueue;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __59__PKIDSManager_sendSetupRequest_appDisplayName_completion___block_invoke;
  v16[3] = &unk_1E79C4EF0;
  v17 = nameCopy;
  selfCopy = self;
  v19 = requestCopy;
  v20 = completionCopy;
  v12 = completionCopy;
  v13 = requestCopy;
  v14 = nameCopy;
  dispatch_sync(internalQueue, v16);

  return 0;
}

void __59__PKIDSManager_sendSetupRequest_appDisplayName_completion___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(PKProtobufPaymentSetupRequest);
  [(PKProtobufPaymentSetupRequest *)v2 setAppName:*(a1 + 32)];
  v3 = objc_alloc(MEMORY[0x1E69A5388]);
  v4 = [(PKProtobufPaymentSetupRequest *)v2 data];
  v5 = [v3 initWithProtobufData:v4 type:7 isResponse:0];

  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x3032000000;
  v12[3] = __Block_byref_object_copy__74;
  v12[4] = __Block_byref_object_dispose__74;
  v13 = 0;
  v6 = *(*(a1 + 40) + 104);
  v7 = [*(a1 + 48) pk_idsDestination];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __59__PKIDSManager_sendSetupRequest_appDisplayName_completion___block_invoke_2;
  v9[3] = &unk_1E79E0C10;
  v8 = *(a1 + 56);
  v9[4] = *(a1 + 40);
  v10 = v8;
  v11 = v12;
  PKProtobufSend(v6, v5, v7, 0, 0, v9);

  _Block_object_dispose(v12, 8);
}

void __59__PKIDSManager_sendSetupRequest_appDisplayName_completion___block_invoke_2(void *a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (v7 && (v8 = a1[5]) != 0)
  {
    v9 = *(a1[4] + 64);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __59__PKIDSManager_sendSetupRequest_appDisplayName_completion___block_invoke_3;
    v13[3] = &unk_1E79C44A0;
    v15 = v8;
    v14 = v7;
    dispatch_async(v9, v13);
  }

  else if (v6)
  {
    v10 = a1[5];
    if (v10)
    {
      v11 = *(a1[4] + 24);
      v12 = [v10 copy];
      [v11 setObject:v12 forKey:v6];

      objc_storeStrong((*(a1[6] + 8) + 40), a2);
    }
  }
}

- (id)sendRemotePaymentRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__74;
  v21 = __Block_byref_object_dispose__74;
  v22 = 0;
  internalQueue = self->_internalQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __52__PKIDSManager_sendRemotePaymentRequest_completion___block_invoke;
  v13[3] = &unk_1E79E0C38;
  v13[4] = self;
  v14 = requestCopy;
  v15 = completionCopy;
  v16 = &v17;
  v9 = completionCopy;
  v10 = requestCopy;
  dispatch_sync(internalQueue, v13);
  v11 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v11;
}

void __52__PKIDSManager_sendRemotePaymentRequest_completion___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 40) startAdvertisingForDuration:0 completion:30.0];
  v2 = objc_alloc_init(PKProtobufRemotePaymentRequest);
  v3 = [*(a1 + 40) paymentRequest];
  v4 = [v3 protobuf];
  [(PKProtobufRemotePaymentRequest *)v2 setPaymentRequest:v4];

  v5 = [*(a1 + 40) selectedApplicationIdentifier];
  [(PKProtobufRemotePaymentRequest *)v2 setPaymentApplicationIdentifier:v5];

  -[PKProtobufRemotePaymentRequest setPaymentType:](v2, "setPaymentType:", [*(a1 + 40) selectedPaymentMethodType]);
  v6 = [*(a1 + 40) identifier];
  [(PKProtobufRemotePaymentRequest *)v2 setIdentifier:v6];

  v7 = objc_alloc(MEMORY[0x1E69A5388]);
  v8 = [(PKProtobufRemotePaymentRequest *)v2 data];
  v9 = [v7 initWithProtobufData:v8 type:2 isResponse:0];

  v10 = *(*(a1 + 32) + 104);
  v11 = [*(a1 + 40) device];
  v12 = [v11 pk_idsDestination];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __52__PKIDSManager_sendRemotePaymentRequest_completion___block_invoke_2;
  v14[3] = &unk_1E79E0C10;
  v13 = *(a1 + 48);
  v14[4] = *(a1 + 32);
  v15 = v13;
  v16 = *(a1 + 56);
  PKProtobufSend(v10, v9, v12, 0, 0, v14);

  [*(*(a1 + 32) + 16) addObject:*(a1 + 40)];
}

void __52__PKIDSManager_sendRemotePaymentRequest_completion___block_invoke_2(void *a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (v7 && (v8 = a1[5]) != 0)
  {
    v9 = *(a1[4] + 64);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __52__PKIDSManager_sendRemotePaymentRequest_completion___block_invoke_3;
    v13[3] = &unk_1E79C44A0;
    v15 = v8;
    v14 = v7;
    dispatch_async(v9, v13);
  }

  else if (v6)
  {
    v10 = a1[5];
    if (v10)
    {
      v11 = *(a1[4] + 24);
      v12 = [v10 copy];
      [v11 setObject:v12 forKey:v6];

      objc_storeStrong((*(a1[6] + 8) + 40), a2);
    }
  }
}

- (id)sendPaymentHostUpdate:(id)update forRemotePaymentRequest:(id)request completion:(id)completion
{
  updateCopy = update;
  requestCopy = request;
  completionCopy = completion;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__74;
  v27 = __Block_byref_object_dispose__74;
  v28 = 0;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__PKIDSManager_sendPaymentHostUpdate_forRemotePaymentRequest_completion___block_invoke;
  block[3] = &unk_1E79D7460;
  v18 = updateCopy;
  v19 = requestCopy;
  selfCopy = self;
  v21 = completionCopy;
  v22 = &v23;
  v12 = completionCopy;
  v13 = requestCopy;
  v14 = updateCopy;
  dispatch_sync(internalQueue, block);
  v15 = v24[5];

  _Block_object_dispose(&v23, 8);

  return v15;
}

void __73__PKIDSManager_sendPaymentHostUpdate_forRemotePaymentRequest_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) protobuf];
  v3 = [*(a1 + 40) identifier];
  [v2 setRemotePaymentRequestIdentifier:v3];

  v4 = objc_alloc(MEMORY[0x1E69A5388]);
  v5 = [v2 data];
  v6 = [v4 initWithProtobufData:v5 type:4 isResponse:0];

  v7 = *(*(a1 + 48) + 104);
  v8 = [*(a1 + 40) device];
  v9 = [v8 pk_idsDestination];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __73__PKIDSManager_sendPaymentHostUpdate_forRemotePaymentRequest_completion___block_invoke_2;
  v11[3] = &unk_1E79E0C10;
  v10 = *(a1 + 56);
  v11[4] = *(a1 + 48);
  v12 = v10;
  v13 = *(a1 + 64);
  PKProtobufSend(v7, v6, v9, 0, 0, v11);
}

void __73__PKIDSManager_sendPaymentHostUpdate_forRemotePaymentRequest_completion___block_invoke_2(void *a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (v7 && (v8 = a1[5]) != 0)
  {
    v9 = *(a1[4] + 64);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __73__PKIDSManager_sendPaymentHostUpdate_forRemotePaymentRequest_completion___block_invoke_3;
    v13[3] = &unk_1E79C44A0;
    v15 = v8;
    v14 = v7;
    dispatch_async(v9, v13);
  }

  else if (v6)
  {
    v10 = a1[5];
    if (v10)
    {
      v11 = *(a1[4] + 24);
      v12 = [v10 copy];
      [v11 setObject:v12 forKey:v6];

      objc_storeStrong((*(a1[6] + 8) + 40), a2);
    }
  }
}

- (id)sendPaymentClientUpdate:(id)update forRemotePaymentRequest:(id)request completion:(id)completion
{
  updateCopy = update;
  requestCopy = request;
  completionCopy = completion;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__74;
  v27 = __Block_byref_object_dispose__74;
  v28 = 0;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__PKIDSManager_sendPaymentClientUpdate_forRemotePaymentRequest_completion___block_invoke;
  block[3] = &unk_1E79D7460;
  v18 = updateCopy;
  v19 = requestCopy;
  selfCopy = self;
  v21 = completionCopy;
  v22 = &v23;
  v12 = completionCopy;
  v13 = requestCopy;
  v14 = updateCopy;
  dispatch_sync(internalQueue, block);
  v15 = v24[5];

  _Block_object_dispose(&v23, 8);

  return v15;
}

void __75__PKIDSManager_sendPaymentClientUpdate_forRemotePaymentRequest_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) protobuf];
  v3 = [*(a1 + 40) identifier];
  [v2 setRemotePaymentRequestIdentifier:v3];

  v4 = objc_alloc(MEMORY[0x1E69A5388]);
  v5 = [v2 data];
  v6 = [v4 initWithProtobufData:v5 type:3 isResponse:0];

  v7 = *(*(a1 + 48) + 104);
  v8 = [*(a1 + 40) device];
  v9 = [v8 pk_idsDestination];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __75__PKIDSManager_sendPaymentClientUpdate_forRemotePaymentRequest_completion___block_invoke_2;
  v11[3] = &unk_1E79E0C10;
  v10 = *(a1 + 56);
  v11[4] = *(a1 + 48);
  v12 = v10;
  v13 = *(a1 + 64);
  PKProtobufSend(v7, v6, v9, 0, 0, v11);
}

void __75__PKIDSManager_sendPaymentClientUpdate_forRemotePaymentRequest_completion___block_invoke_2(void *a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (v7 && (v8 = a1[5]) != 0)
  {
    v9 = *(a1[4] + 64);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __75__PKIDSManager_sendPaymentClientUpdate_forRemotePaymentRequest_completion___block_invoke_3;
    v13[3] = &unk_1E79C44A0;
    v15 = v8;
    v14 = v7;
    dispatch_async(v9, v13);
  }

  else if (v6)
  {
    v10 = a1[5];
    if (v10)
    {
      v11 = *(a1[4] + 24);
      v12 = [v10 copy];
      [v11 setObject:v12 forKey:v6];

      objc_storeStrong((*(a1[6] + 8) + 40), a2);
    }
  }
}

- (id)sendPayment:(id)payment forRemotePaymentRequest:(id)request completion:(id)completion
{
  paymentCopy = payment;
  requestCopy = request;
  completionCopy = completion;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__74;
  v27 = __Block_byref_object_dispose__74;
  v28 = 0;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__PKIDSManager_sendPayment_forRemotePaymentRequest_completion___block_invoke;
  block[3] = &unk_1E79D7460;
  v18 = requestCopy;
  v19 = paymentCopy;
  selfCopy = self;
  v21 = completionCopy;
  v22 = &v23;
  v12 = completionCopy;
  v13 = paymentCopy;
  v14 = requestCopy;
  dispatch_sync(internalQueue, block);
  v15 = v24[5];

  _Block_object_dispose(&v23, 8);

  return v15;
}

void __63__PKIDSManager_sendPayment_forRemotePaymentRequest_completion___block_invoke(uint64_t a1)
{
  AnalyticsSendEvent();
  v2 = objc_alloc_init(PKProtobufRemotePaymentResponse);
  v3 = [*(a1 + 32) identifier];
  [(PKProtobufRemotePaymentResponse *)v2 setRemotePaymentRequestIdentifier:v3];

  v4 = [*(a1 + 40) protobuf];
  [(PKProtobufRemotePaymentResponse *)v2 setPayment:v4];

  v5 = objc_alloc(MEMORY[0x1E69A5388]);
  v6 = [(PKProtobufRemotePaymentResponse *)v2 data];
  v7 = [v5 initWithProtobufData:v6 type:2 isResponse:1];

  v8 = *(*(a1 + 48) + 104);
  v9 = [*(a1 + 32) device];
  v10 = [v9 pk_idsDestination];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __63__PKIDSManager_sendPayment_forRemotePaymentRequest_completion___block_invoke_2;
  v12[3] = &unk_1E79E0C10;
  v11 = *(a1 + 56);
  v12[4] = *(a1 + 48);
  v13 = v11;
  v14 = *(a1 + 64);
  PKProtobufSend(v8, v7, v10, 0, 0, v12);
}

void __63__PKIDSManager_sendPayment_forRemotePaymentRequest_completion___block_invoke_2(void *a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (v7 && (v8 = a1[5]) != 0)
  {
    v9 = *(a1[4] + 64);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __63__PKIDSManager_sendPayment_forRemotePaymentRequest_completion___block_invoke_3;
    v13[3] = &unk_1E79C44A0;
    v15 = v8;
    v14 = v7;
    dispatch_async(v9, v13);
  }

  else if (v6)
  {
    v10 = a1[5];
    if (v10)
    {
      v11 = *(a1[4] + 24);
      v12 = [v10 copy];
      [v11 setObject:v12 forKey:v6];

      objc_storeStrong((*(a1[6] + 8) + 40), a2);
    }
  }
}

- (id)sendPaymentResult:(id)result forRemotePaymentRequest:(id)request completion:(id)completion
{
  resultCopy = result;
  requestCopy = request;
  completionCopy = completion;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__74;
  v26 = __Block_byref_object_dispose__74;
  v27 = 0;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__PKIDSManager_sendPaymentResult_forRemotePaymentRequest_completion___block_invoke;
  block[3] = &unk_1E79D7460;
  block[4] = self;
  v18 = resultCopy;
  v19 = requestCopy;
  v20 = completionCopy;
  v21 = &v22;
  v12 = completionCopy;
  v13 = requestCopy;
  v14 = resultCopy;
  dispatch_sync(internalQueue, block);
  v15 = v23[5];

  _Block_object_dispose(&v22, 8);

  return v15;
}

void __69__PKIDSManager_sendPaymentResult_forRemotePaymentRequest_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _paymentAuthorizationStatusForPaymentResult:*(a1 + 40) forRemotePaymentRequest:*(a1 + 48)];
  v3 = objc_alloc_init(PKProtobufPaymentStatus);
  [(PKProtobufPaymentStatus *)v3 setStatus:v2];
  v4 = [*(a1 + 48) identifier];
  [(PKProtobufPaymentStatus *)v3 setRemotePaymentRequestIdentifier:v4];

  v5 = objc_alloc(MEMORY[0x1E69A5388]);
  v6 = [(PKProtobufPaymentStatus *)v3 data];
  v7 = [v5 initWithProtobufData:v6 type:5 isResponse:0];

  v8 = *(*(a1 + 32) + 104);
  v9 = [*(a1 + 48) device];
  v10 = [v9 pk_idsDestination];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __69__PKIDSManager_sendPaymentResult_forRemotePaymentRequest_completion___block_invoke_2;
  v12[3] = &unk_1E79E0C10;
  v11 = *(a1 + 56);
  v12[4] = *(a1 + 32);
  v13 = v11;
  v14 = *(a1 + 64);
  PKProtobufSend(v8, v7, v10, 0, 0, v12);

  if (!v2)
  {
    [*(*(a1 + 32) + 16) removeObject:*(a1 + 48)];
  }
}

void __69__PKIDSManager_sendPaymentResult_forRemotePaymentRequest_completion___block_invoke_2(void *a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (v7 && (v8 = a1[5]) != 0)
  {
    v9 = *(a1[4] + 64);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __69__PKIDSManager_sendPaymentResult_forRemotePaymentRequest_completion___block_invoke_3;
    v13[3] = &unk_1E79C44A0;
    v15 = v8;
    v14 = v7;
    dispatch_async(v9, v13);
  }

  else if (v6)
  {
    v10 = a1[5];
    if (v10)
    {
      v11 = *(a1[4] + 24);
      v12 = [v10 copy];
      [v11 setObject:v12 forKey:v6];

      objc_storeStrong((*(a1[6] + 8) + 40), a2);
    }
  }
}

- (id)sendPaymentStatus:(int64_t)status forRemotePaymentRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  v10 = objc_alloc_init(PKPaymentAuthorizationResult);
  [(PKPaymentAuthorizationResult *)v10 setStatus:status];
  v11 = [(PKIDSManager *)self sendPaymentResult:v10 forRemotePaymentRequest:requestCopy completion:completionCopy];

  return v11;
}

- (id)cancelRemotePaymentRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__74;
  v21 = __Block_byref_object_dispose__74;
  v22 = 0;
  internalQueue = self->_internalQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __54__PKIDSManager_cancelRemotePaymentRequest_completion___block_invoke;
  v13[3] = &unk_1E79E0C38;
  v13[4] = self;
  v14 = requestCopy;
  v15 = completionCopy;
  v16 = &v17;
  v9 = completionCopy;
  v10 = requestCopy;
  dispatch_sync(internalQueue, v13);
  v11 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v11;
}

void __54__PKIDSManager_cancelRemotePaymentRequest_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_cancelRemotePaymentRequest:*(a1 + 40) completion:*(a1 + 48)];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)requestInstrumentThumbnail:(id)thumbnail forRemoteDevice:(id)device size:(CGSize)size completion:(id)completion
{
  height = size.height;
  width = size.width;
  thumbnailCopy = thumbnail;
  completionCopy = completion;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__74;
  v28 = __Block_byref_object_dispose__74;
  v29 = 0;
  internalQueue = self->_internalQueue;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __75__PKIDSManager_requestInstrumentThumbnail_forRemoteDevice_size_completion___block_invoke;
  v17[3] = &unk_1E79E0CD8;
  v22 = width;
  v23 = height;
  v18 = thumbnailCopy;
  selfCopy = self;
  v20 = completionCopy;
  v21 = &v24;
  v13 = completionCopy;
  v14 = thumbnailCopy;
  dispatch_sync(internalQueue, v17);
  v15 = v25[5];

  _Block_object_dispose(&v24, 8);

  return v15;
}

void __75__PKIDSManager_requestInstrumentThumbnail_forRemoteDevice_size_completion___block_invoke(uint64_t a1)
{
  v60 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) manifestHash];
  v3 = [v2 hexEncoding];
  v4 = [PKRemotePaymentInstrument thumbnailCachePathForManifestHash:v3 size:0 planningToWrite:*(a1 + 64), *(a1 + 72)];

  v5 = PKLogFacilityTypeGetObject(9uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [*(a1 + 32) passIdentifier];
    v7 = [*(a1 + 32) manifestHash];
    v8 = [v7 hexEncoding];
    *buf = 138412802;
    v55 = v4;
    v56 = 2112;
    v57 = v6;
    v58 = 2112;
    v59 = v8;
    _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Looking for card thumbnail: %@ for instrument: %@ with manifest: %@", buf, 0x20u);
  }

  v9 = [MEMORY[0x1E696AC08] defaultManager];
  v10 = [v9 fileExistsAtPath:v4 isDirectory:0];

  if (!v10 || ([MEMORY[0x1E695DEF0] dataWithContentsOfFile:v4], (v11 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v16 = objc_alloc_init(PKProtobufPaymentInstrumentThumbnailRequest);
    v17 = [*(a1 + 32) passIdentifier];
    [(PKProtobufPaymentInstrumentThumbnailRequest *)v16 setPassIdentifier:v17];

    v18 = [*(a1 + 32) manifestHash];
    v19 = [v18 hexEncoding];
    [(PKProtobufPaymentInstrumentThumbnailRequest *)v16 setManifestHash:v19];

    [(PKProtobufPaymentInstrumentThumbnailRequest *)v16 setWidth:*(a1 + 64)];
    [(PKProtobufPaymentInstrumentThumbnailRequest *)v16 setHeight:*(a1 + 72)];
    v20 = *(*(a1 + 40) + 32);
    v52[0] = MEMORY[0x1E69E9820];
    v52[1] = 3221225472;
    v52[2] = __75__PKIDSManager_requestInstrumentThumbnail_forRemoteDevice_size_completion___block_invoke_56;
    v52[3] = &unk_1E79E0C60;
    v15 = v16;
    v53 = v15;
    v21 = [v20 keysOfEntriesPassingTest:v52];
    if ([v21 count])
    {
      v22 = [v21 anyObject];
      v23 = [v22 requestIdentifier];
      v24 = *(*(a1 + 56) + 8);
      v25 = *(v24 + 40);
      *(v24 + 40) = v23;

      v26 = *(a1 + 48);
      if (v26)
      {
        [*(a1 + 40) _queue_addThumbnailCompletionHandler:v26 forKey:v22];
      }
    }

    if (!*(*(*(a1 + 56) + 8) + 40))
    {
      v27 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v28 = *(*(a1 + 40) + 8);
      v49[0] = MEMORY[0x1E69E9820];
      v49[1] = 3221225472;
      v49[2] = __75__PKIDSManager_requestInstrumentThumbnail_forRemoteDevice_size_completion___block_invoke_2;
      v49[3] = &unk_1E79E0C88;
      v50 = *(a1 + 32);
      v29 = v27;
      v51 = v29;
      [v28 enumerateObjectsUsingBlock:v49];
      if ([v29 count])
      {
        v30 = objc_alloc(MEMORY[0x1E69A5388]);
        v31 = [(PKProtobufPaymentInstrumentThumbnailRequest *)v15 data];
        v32 = [v30 initWithProtobufData:v31 type:8 isResponse:0];

        v33 = *(*(a1 + 40) + 104);
        v43[0] = MEMORY[0x1E69E9820];
        v43[1] = 3221225472;
        v43[2] = __75__PKIDSManager_requestInstrumentThumbnail_forRemoteDevice_size_completion___block_invoke_2_62;
        v43[3] = &unk_1E79E0CB0;
        v34 = *(a1 + 48);
        v35 = *(a1 + 40);
        v45 = v34;
        v43[4] = v35;
        v36 = v15;
        v37 = *(a1 + 56);
        v44 = v36;
        v46 = v37;
        PKProtobufSendWithOptions(v33, v32, v29, 300, 0, 1, 0, v43, 0);
      }

      else
      {
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          v38 = *(a1 + 32);
          *buf = 138412290;
          v55 = v38;
          _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Couldn't find remote device to send thumbnail request: %@", buf, 0xCu);
        }

        v39 = *(*(a1 + 40) + 64);
        v47[0] = MEMORY[0x1E69E9820];
        v47[1] = 3221225472;
        v47[2] = __75__PKIDSManager_requestInstrumentThumbnail_forRemoteDevice_size_completion___block_invoke_60;
        v47[3] = &unk_1E79C4428;
        v48 = *(a1 + 48);
        dispatch_async(v39, v47);
        v32 = v48;
      }
    }

    v12 = 0;
    goto LABEL_21;
  }

  v12 = v11;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Found cached image", buf, 2u);
  }

  v13 = *(a1 + 48);
  if (v13)
  {
    v14 = *(*(a1 + 40) + 64);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __75__PKIDSManager_requestInstrumentThumbnail_forRemoteDevice_size_completion___block_invoke_64;
    block[3] = &unk_1E79C44A0;
    v42 = v13;
    v12 = v12;
    v41 = v12;
    dispatch_async(v14, block);

    v15 = v42;
LABEL_21:
  }
}

uint64_t __75__PKIDSManager_requestInstrumentThumbnail_forRemoteDevice_size_completion___block_invoke_56(uint64_t a1, void *a2)
{
  v3 = [a2 requestDictionary];
  v4 = [*(a1 + 32) dictionaryRepresentation];
  v5 = [v3 isEqualToDictionary:v4];

  return v5;
}

void __75__PKIDSManager_requestInstrumentThumbnail_forRemoteDevice_size_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [v3 remotePaymentInstruments];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v14 + 1) + 8 * i) passIdentifier];
        v10 = [*(a1 + 32) passIdentifier];
        v11 = [v9 isEqualToString:v10];

        if (v11)
        {
          v12 = *(a1 + 40);
          v13 = [v3 pk_idsDestination];
          [v12 addObject:v13];

          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

void __75__PKIDSManager_requestInstrumentThumbnail_forRemoteDevice_size_completion___block_invoke_60(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:1 userInfo:0];
  (*(v1 + 16))(v1, 0, v2);
}

void __75__PKIDSManager_requestInstrumentThumbnail_forRemoteDevice_size_completion___block_invoke_2_62(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (v7 && (v8 = *(a1 + 48)) != 0)
  {
    v9 = *(*(a1 + 32) + 64);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __75__PKIDSManager_requestInstrumentThumbnail_forRemoteDevice_size_completion___block_invoke_3;
    v12[3] = &unk_1E79C44A0;
    v14 = v8;
    v13 = v7;
    dispatch_async(v9, v12);
  }

  else if (v6 && *(a1 + 48))
  {
    v10 = objc_alloc_init(PKRemoteThumbnailKey);
    [(PKRemoteThumbnailKey *)v10 setRequestIdentifier:v6];
    v11 = [*(a1 + 40) dictionaryRepresentation];
    [(PKRemoteThumbnailKey *)v10 setRequestDictionary:v11];

    [*(a1 + 32) _queue_addThumbnailCompletionHandler:*(a1 + 48) forKey:v10];
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
  }
}

- (void)invalidateMessage:(id)message
{
  messageCopy = message;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __34__PKIDSManager_invalidateMessage___block_invoke;
  v7[3] = &unk_1E79C4DD8;
  v7[4] = self;
  v8 = messageCopy;
  v6 = messageCopy;
  dispatch_sync(internalQueue, v7);
}

- (id)requestForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__74;
  v16 = __Block_byref_object_dispose__74;
  v17 = 0;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__PKIDSManager_requestForIdentifier___block_invoke;
  block[3] = &unk_1E79E0D00;
  v10 = identifierCopy;
  v11 = &v12;
  block[4] = self;
  v6 = identifierCopy;
  dispatch_sync(internalQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __37__PKIDSManager_requestForIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_requestForIdentifier:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)promptDetailsForVirtualCard:(id)card showNotification:(BOOL)notification completion:(id)completion
{
  cardCopy = card;
  completionCopy = completion;
  internalQueue = self->_internalQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __72__PKIDSManager_promptDetailsForVirtualCard_showNotification_completion___block_invoke;
  v13[3] = &unk_1E79C4F18;
  v13[4] = self;
  v14 = cardCopy;
  notificationCopy = notification;
  v15 = completionCopy;
  v11 = completionCopy;
  v12 = cardCopy;
  dispatch_sync(internalQueue, v13);
}

void __72__PKIDSManager_promptDetailsForVirtualCard_showNotification_completion___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 40) startAdvertisingForDuration:0 completion:30.0];
  v2 = objc_alloc_init(PKProtobufPromptDetailsForVirtualCard);
  v3 = [*(a1 + 40) identifier];
  [(PKProtobufPromptDetailsForVirtualCard *)v2 setIdentifier:v3];

  [(PKProtobufPromptDetailsForVirtualCard *)v2 setShowNotification:*(a1 + 56)];
  v4 = objc_alloc(MEMORY[0x1E69A5388]);
  v5 = [(PKProtobufPromptDetailsForVirtualCard *)v2 data];
  v6 = [v4 initWithProtobufData:v5 type:9 isResponse:0];

  v7 = [MEMORY[0x1E695DFA8] set];
  v8 = *(*(a1 + 32) + 8);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __72__PKIDSManager_promptDetailsForVirtualCard_showNotification_completion___block_invoke_2;
  v14[3] = &unk_1E79E0D28;
  v15 = v7;
  v9 = v7;
  [v8 enumerateObjectsUsingBlock:v14];
  v10 = *(*(a1 + 32) + 104);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __72__PKIDSManager_promptDetailsForVirtualCard_showNotification_completion___block_invoke_3;
  v12[3] = &unk_1E79C5508;
  v11 = *(a1 + 48);
  v12[4] = *(a1 + 32);
  v13 = v11;
  PKProtobufSendWithOptions(v10, v6, v9, 300, 0, 1, 0, v12, 0);
}

void __72__PKIDSManager_promptDetailsForVirtualCard_showNotification_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  if (([v5 type] == 1 || objc_msgSend(v5, "type") == 2) && !objc_msgSend(v5, "proximityState"))
  {
    v3 = *(a1 + 32);
    v4 = [v5 pk_idsDestination];
    [v3 addObject:v4];
  }
}

void __72__PKIDSManager_promptDetailsForVirtualCard_showNotification_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = PKLogFacilityTypeGetObject(9uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = v6;
      _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "Failed to send prompt details for virtual card request: %@", buf, 0xCu);
    }
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    v9 = *(*(a1 + 32) + 64);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __72__PKIDSManager_promptDetailsForVirtualCard_showNotification_completion___block_invoke_66;
    v10[3] = &unk_1E79C44A0;
    v12 = v8;
    v11 = v6;
    dispatch_async(v9, v10);
  }
}

- (void)_paymentSetupRequestReceived:(id)received service:(id)service account:(id)account fromID:(id)d context:(id)context
{
  v31 = *MEMORY[0x1E69E9840];
  receivedCopy = received;
  v10 = [(IDSService *)self->_service deviceForFromID:d];

  if (v10)
  {
    v11 = PKLogFacilityTypeGetObject(9uLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "Received payment setup request", buf, 2u);
    }

    [(PKIDSManager *)self _postCTLMThrottleUncapNotification];
    v12 = [PKProtobufPaymentSetupRequest alloc];
    v22 = receivedCopy;
    data = [receivedCopy data];
    v14 = [(PKProtobufPaymentSetupRequest *)v12 initWithData:data];

    delegates = [(PKIDSManager *)self delegates];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v16 = [delegates countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v26;
      do
      {
        v19 = 0;
        do
        {
          if (*v26 != v18)
          {
            objc_enumerationMutation(delegates);
          }

          v20 = *(*(&v25 + 1) + 8 * v19);
          callbackQueue = self->_callbackQueue;
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __76__PKIDSManager__paymentSetupRequestReceived_service_account_fromID_context___block_invoke;
          block[3] = &unk_1E79C4DD8;
          block[4] = v20;
          v24 = v14;
          dispatch_async(callbackQueue, block);

          ++v19;
        }

        while (v17 != v19);
        v17 = [delegates countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v17);
    }

    receivedCopy = v22;
  }
}

void __76__PKIDSManager__paymentSetupRequestReceived_service_account_fromID_context___block_invoke(uint64_t a1)
{
  if (objc_opt_respondsToSelector())
  {
    v2 = *(a1 + 32);
    v3 = [*(a1 + 40) appName];
    [v2 didReceiveSetupRequest:v3];
  }
}

- (void)_paymentDiscoveryRequestReceived:(id)received service:(id)service account:(id)account fromID:(id)d context:(id)context
{
  v50 = *MEMORY[0x1E69E9840];
  receivedCopy = received;
  serviceCopy = service;
  accountCopy = account;
  dCopy = d;
  contextCopy = context;
  v14 = PKLogFacilityTypeGetObject(9uLL);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AD337000, v14, OS_LOG_TYPE_DEFAULT, "Received discovery request", buf, 2u);
  }

  v15 = [(IDSService *)self->_service deviceForFromID:dCopy];
  v16 = [(PKIDSManager *)self _queue_deviceIsRegistered:v15];

  if (v16)
  {
    contextCopy = [(IDSService *)self->_service deviceForFromID:dCopy, serviceCopy, accountCopy, contextCopy];
    *buf = 0;
    v41 = buf;
    v42 = 0x3032000000;
    v43 = __Block_byref_object_copy__74;
    v44 = __Block_byref_object_dispose__74;
    v45 = 0;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      name = [contextCopy name];
      uniqueID = [contextCopy uniqueID];
      *v46 = 138412546;
      v47 = name;
      v48 = 2112;
      v49 = uniqueID;
      _os_log_impl(&dword_1AD337000, v14, OS_LOG_TYPE_DEFAULT, "Received payment discovery request from %@ - %@", v46, 0x16u);
    }

    v20 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:3];
    [v20 setObject:@"discovery-request" forKeyedSubscript:@"message"];
    v21 = [(PKIDSManagerDataSource *)self->_dataSource continuityDisabledByUser:self];
    if (v21)
    {
      v22 = 0;
    }

    else
    {
      v23 = [PKProtobufPaymentDeviceRequest alloc];
      data = [receivedCopy data];
      v25 = [(PKProtobufPaymentDeviceRequest *)v23 initWithData:data];

      shouldAdvertise = [(PKProtobufPaymentDeviceRequest *)v25 shouldAdvertise];
      v22 = shouldAdvertise;
      if (shouldAdvertise)
      {
        v27 = [PKProximityDetector alloc];
        nsuuid = [contextCopy nsuuid];
        v29 = [(PKProximityDetector *)v27 initWithAdvertisingDeviceUUID:nsuuid];

        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __80__PKIDSManager__paymentDiscoveryRequestReceived_service_account_fromID_context___block_invoke;
        aBlock[3] = &unk_1E79E0D78;
        aBlock[4] = self;
        v39 = buf;
        v38 = dCopy;
        v30 = _Block_copy(aBlock);
        [(PKProximityDetector *)v29 setHandler:v30];
        [(PKProximityDetector *)v29 startDetectingWithDuration:0 completion:30.0];
        [v20 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"proximity"];
      }

      else
      {
        [v20 setObject:MEMORY[0x1E695E110] forKeyedSubscript:@"proximity"];
      }
    }

    v31 = [(PKIDSManager *)self _preparePaymentDeviceResponseForRequestingDevice:contextCopy userDisabled:v21];
    v32 = *(v41 + 5);
    *(v41 + 5) = v31;

    if (!v22)
    {
      [(PKIDSManager *)self _queue_sendDiscoveryResponse:*(v41 + 5) toDeviceWithFromID:dCopy];
    }

    v33 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(*(v41 + 5), "locked")}];
    [v20 setObject:v33 forKeyedSubscript:@"locked"];

    AnalyticsSendEvent();
    [(PKIDSManager *)self _queue_logCloudPairingState];

    _Block_object_dispose(buf, 8);
  }

  else
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v14, OS_LOG_TYPE_DEFAULT, "Received payment discovery request, ignoring (device not recognized)", buf, 2u);
    }

    contextCopy = v14;
  }
}

void __80__PKIDSManager__paymentDiscoveryRequestReceived_service_account_fromID_context___block_invoke(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(v7 + 120);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __80__PKIDSManager__paymentDiscoveryRequestReceived_service_account_fromID_context___block_invoke_2;
  block[3] = &unk_1E79E0D50;
  v15 = a4;
  block[4] = v7;
  v13 = v6;
  v11 = *(a1 + 40);
  v9 = v11;
  v14 = v11;
  v10 = v6;
  dispatch_async(v8, block);
}

uint64_t __80__PKIDSManager__paymentDiscoveryRequestReceived_service_account_fromID_context___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 64);
  v3 = *(*(*(a1 + 56) + 8) + 40);
  if (v2)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  [v3 setNearby:v4];
  v5 = *(*(a1 + 32) + 112);
  if (*(a1 + 64) == 1)
  {
    v6 = [MEMORY[0x1E695DF00] date];
    [v5 setObject:v6 forKey:*(a1 + 40)];
  }

  else
  {
    [*(*(a1 + 32) + 112) removeObjectForKey:*(a1 + 40)];
  }

  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  v9 = *(*(*(a1 + 56) + 8) + 40);

  return [v7 _queue_sendDiscoveryResponse:v9 toDeviceWithFromID:v8];
}

- (void)_paymentRequestReceived:(id)received service:(id)service account:(id)account fromID:(id)d context:(id)context
{
  v45 = *MEMORY[0x1E69E9840];
  receivedCopy = received;
  v10 = [(IDSService *)self->_service deviceForFromID:d];
  v11 = [PKProtobufRemotePaymentRequest alloc];
  data = [receivedCopy data];
  v13 = [(PKProtobufRemotePaymentRequest *)v11 initWithData:data];

  pendingCancellations = self->_pendingCancellations;
  identifier = [(PKProtobufRemotePaymentRequest *)v13 identifier];
  v16 = [(NSMutableArray *)pendingCancellations containsObject:identifier];

  if (([(PKIDSManagerDataSource *)self->_dataSource continuityDisabledByUser:self]& 1) != 0 || v16 & 1 | ![(PKIDSManager *)self _queue_deviceIsRegistered:v10])
  {
    v17 = PKLogFacilityTypeGetObject(9uLL);
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
    if (v16)
    {
      if (v18)
      {
        *buf = 0;
        v19 = "Received payment request but handoff is disabled or device unrecognized. Ignoring.";
LABEL_8:
        _os_log_impl(&dword_1AD337000, v17, OS_LOG_TYPE_DEFAULT, v19, buf, 2u);
      }
    }

    else if (v18)
    {
      *buf = 0;
      v19 = "Received payment request but was previously cancelled. Ignoring.";
      goto LABEL_8;
    }
  }

  else
  {
    AnalyticsSendEvent();
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __71__PKIDSManager__paymentRequestReceived_service_account_fromID_context___block_invoke;
    aBlock[3] = &unk_1E79C4E00;
    v40 = receivedCopy;
    v20 = v10;
    v41 = v20;
    selfCopy = self;
    v21 = _Block_copy(aBlock);
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __71__PKIDSManager__paymentRequestReceived_service_account_fromID_context___block_invoke_3;
    v37[3] = &unk_1E79C4A40;
    v37[4] = self;
    v22 = v21;
    v38 = v22;
    v23 = _Block_copy(v37);
    recentlySeenUUIDs = self->_recentlySeenUUIDs;
    nsuuid = [v20 nsuuid];
    v26 = [(NSMutableDictionary *)recentlySeenUUIDs objectForKey:nsuuid];

    if (v26 && ([v26 timeIntervalSinceNow], v27 > -300.0))
    {
      v28 = PKLogFacilityTypeGetObject(9uLL);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AD337000, v28, OS_LOG_TYPE_DEFAULT, "Found device in recently seen devices. Displaying payment request", buf, 2u);
      }

      v23[2](v23);
    }

    else
    {
      v29 = PKLogFacilityTypeGetObject(9uLL);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AD337000, v29, OS_LOG_TYPE_DEFAULT, "Device not found in recently seen devices. Triggering proximity detection", buf, 2u);
      }

      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v30 = [(NSMutableDictionary *)self->_recentlySeenUUIDs description];
        *buf = 138412290;
        v44 = v30;
        _os_log_impl(&dword_1AD337000, v29, OS_LOG_TYPE_DEFAULT, "Recently seen devices: %@", buf, 0xCu);
      }

      v31 = [PKProximityDetector alloc];
      nsuuid2 = [v20 nsuuid];
      v33 = [(PKProximityDetector *)v31 initWithAdvertisingDeviceUUID:nsuuid2];

      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __71__PKIDSManager__paymentRequestReceived_service_account_fromID_context___block_invoke_98;
      v35[3] = &unk_1E79E0DA0;
      v35[4] = self;
      v36 = v23;
      v34 = _Block_copy(v35);
      [(PKProximityDetector *)v33 setHandler:v34];
      [(PKProximityDetector *)v33 startDetectingWithDuration:0 completion:30.0];
    }

    v17 = v40;
  }
}

void __71__PKIDSManager__paymentRequestReceived_service_account_fromID_context___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = [PKProtobufRemotePaymentRequest alloc];
  v3 = [*(a1 + 32) data];
  v4 = [(PKProtobufRemotePaymentRequest *)v2 initWithData:v3];

  v5 = [[PKRemoteDevice alloc] initWithIDSDevice:*(a1 + 40)];
  v6 = [PKRemotePaymentRequest alloc];
  v7 = [(PKProtobufRemotePaymentRequest *)v4 identifier];
  v8 = [(PKRemotePaymentRequest *)v6 initWithDevice:v5 identifier:v7];

  v9 = [(PKProtobufRemotePaymentRequest *)v4 paymentRequest];
  v10 = [PKPaymentRequest requestWithProtobuf:v9];

  v11 = [MEMORY[0x1E695DFD8] set];
  [v10 setRequiredBillingContactFields:v11];

  v12 = [MEMORY[0x1E695DFD8] set];
  [v10 setRequiredShippingContactFields:v12];

  [(PKRemotePaymentRequest *)v8 setPaymentRequest:v10];
  v13 = [(PKProtobufRemotePaymentRequest *)v4 paymentApplicationIdentifier];
  [(PKRemotePaymentRequest *)v8 setSelectedApplicationIdentifier:v13];

  v21 = v4;
  [(PKRemotePaymentRequest *)v8 setSelectedPaymentMethodType:[(PKProtobufRemotePaymentRequest *)v4 paymentType]];
  if (([*(*(a1 + 48) + 16) containsObject:v8] & 1) == 0)
  {
    [*(*(a1 + 48) + 16) addObject:v8];
  }

  [*(a1 + 48) _postCTLMThrottleUncapNotification];
  v14 = [*(a1 + 48) delegates];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v15 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v25;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v25 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v24 + 1) + 8 * i);
        v20 = *(*(a1 + 48) + 64);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __71__PKIDSManager__paymentRequestReceived_service_account_fromID_context___block_invoke_2;
        block[3] = &unk_1E79C4DD8;
        block[4] = v19;
        v23 = v8;
        dispatch_async(v20, block);
      }

      v16 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v16);
  }
}

uint64_t __71__PKIDSManager__paymentRequestReceived_service_account_fromID_context___block_invoke_2(uint64_t a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);

    return [v3 didReceiveRemotePaymentRequest:v4];
  }

  return result;
}

uint64_t __71__PKIDSManager__paymentRequestReceived_service_account_fromID_context___block_invoke_3(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  if ([*(*(a1 + 32) + 16) count])
  {
    v2 = PKLogFacilityTypeGetObject(9uLL);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "Requested a payment request to be presented, but we're already displaying one. Cancelling existing requests...", buf, 2u);
    }

    v3 = [*(*(a1 + 32) + 16) copy];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    obj = v3;
    v21 = [obj countByEnumeratingWithState:&v27 objects:v34 count:16];
    if (v21)
    {
      v19 = *v28;
      *&v4 = 138412290;
      v17 = v4;
      v20 = v2;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v28 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v6 = *(*(&v27 + 1) + 8 * i);
          v7 = [*(a1 + 32) _queue_cancelRemotePaymentRequest:v6 completion:{0, v17}];
          if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
          {
            v8 = [v6 identifier];
            *buf = v17;
            v33 = v8;
            _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "Cancelled request: %@", buf, 0xCu);
          }

          v9 = [*(a1 + 32) delegates];
          v23 = 0u;
          v24 = 0u;
          v25 = 0u;
          v26 = 0u;
          v10 = [v9 countByEnumeratingWithState:&v23 objects:v31 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = *v24;
            do
            {
              for (j = 0; j != v11; ++j)
              {
                if (*v24 != v12)
                {
                  objc_enumerationMutation(v9);
                }

                v14 = *(*(&v23 + 1) + 8 * j);
                v15 = *(*(a1 + 32) + 64);
                block[0] = MEMORY[0x1E69E9820];
                block[1] = 3221225472;
                block[2] = __71__PKIDSManager__paymentRequestReceived_service_account_fromID_context___block_invoke_95;
                block[3] = &unk_1E79C4DD8;
                block[4] = v14;
                block[5] = v6;
                dispatch_async(v15, block);
              }

              v11 = [v9 countByEnumeratingWithState:&v23 objects:v31 count:16];
            }

            while (v11);
          }

          v2 = v20;
        }

        v21 = [obj countByEnumeratingWithState:&v27 objects:v34 count:16];
      }

      while (v21);
    }
  }

  return (*(*(a1 + 40) + 16))();
}

uint64_t __71__PKIDSManager__paymentRequestReceived_service_account_fromID_context___block_invoke_95(uint64_t a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);

    return [v3 didReceiveCancellationForRemotePaymentRequest:v4];
  }

  return result;
}

void __71__PKIDSManager__paymentRequestReceived_service_account_fromID_context___block_invoke_98(uint64_t a1, void *a2, void *a3, char a4)
{
  v12 = a2;
  v7 = *(*(a1 + 32) + 112);
  if (a4)
  {
    v8 = a3;
    [v7 removeObjectForKey:v8];

    (*(*(a1 + 40) + 16))();
    [v12 endDetecting];
  }

  else
  {
    v9 = MEMORY[0x1E695DF00];
    v10 = a3;
    v11 = [v9 date];
    [v7 setObject:v11 forKey:v10];
  }
}

- (void)_paymentResponseReceived:(id)received service:(id)service account:(id)account fromID:(id)d context:(id)context
{
  v34 = *MEMORY[0x1E69E9840];
  receivedCopy = received;
  v10 = [(IDSService *)self->_service deviceForFromID:d];

  if (v10)
  {
    v11 = [PKProtobufRemotePaymentResponse alloc];
    v24 = receivedCopy;
    data = [receivedCopy data];
    v13 = [(PKProtobufRemotePaymentResponse *)v11 initWithData:data];

    remotePaymentRequestIdentifier = [(PKProtobufRemotePaymentResponse *)v13 remotePaymentRequestIdentifier];
    v15 = [(PKIDSManager *)self _queue_requestForIdentifier:remotePaymentRequestIdentifier];

    payment = [(PKProtobufRemotePaymentResponse *)v13 payment];
    v17 = [PKPayment paymentWithProtobuf:payment];

    [(PKIDSManager *)self delegates];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    obj = v32 = 0u;
    v18 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v30;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v30 != v20)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v29 + 1) + 8 * i);
          callbackQueue = self->_callbackQueue;
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __72__PKIDSManager__paymentResponseReceived_service_account_fromID_context___block_invoke;
          block[3] = &unk_1E79C4E00;
          block[4] = v22;
          v27 = v17;
          v28 = v15;
          dispatch_async(callbackQueue, block);
        }

        v19 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v19);
    }

    receivedCopy = v24;
  }
}

uint64_t __72__PKIDSManager__paymentResponseReceived_service_account_fromID_context___block_invoke(void *a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = a1[4];
    v4 = a1[5];
    v5 = a1[6];

    return [v3 didReceivePayment:v4 forRemotePaymentRequest:v5];
  }

  return result;
}

- (void)_paymentResultReceived:(id)received service:(id)service account:(id)account fromID:(id)d context:(id)context
{
  v38[2] = *MEMORY[0x1E69E9840];
  receivedCopy = received;
  v10 = [(IDSService *)self->_service deviceForFromID:d];

  if (v10)
  {
    v11 = [PKProtobufPaymentStatus alloc];
    v27 = receivedCopy;
    data = [receivedCopy data];
    v13 = [(PKProtobufPaymentStatus *)v11 initWithData:data];

    remotePaymentRequestIdentifier = [(PKProtobufPaymentStatus *)v13 remotePaymentRequestIdentifier];
    v28 = [(PKIDSManager *)self _queue_requestForIdentifier:remotePaymentRequestIdentifier];

    v15 = objc_alloc_init(PKPaymentAuthorizationResult);
    [(PKPaymentAuthorizationResult *)v15 setStatus:[(PKProtobufPaymentStatus *)v13 status]];
    [(PKPaymentAuthorizationResult *)v15 setResultSource:1];
    if (![(PKProtobufPaymentStatus *)v13 status])
    {
      [(NSMutableArray *)self->_paymentRequests removeObject:v28];
    }

    v37[0] = @"message";
    v37[1] = @"complete";
    v38[0] = @"payment";
    v16 = [MEMORY[0x1E696AD98] numberWithInt:{-[PKProtobufPaymentStatus status](v13, "status", v13) == 0}];
    v38[1] = v16;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:v37 count:2];
    AnalyticsSendEvent();

    selfCopy = self;
    [(PKIDSManager *)self delegates];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v19 = v35 = 0u;
    v20 = [v19 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v33;
      do
      {
        v23 = 0;
        do
        {
          if (*v33 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v32 + 1) + 8 * v23);
          callbackQueue = selfCopy->_callbackQueue;
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __70__PKIDSManager__paymentResultReceived_service_account_fromID_context___block_invoke;
          block[3] = &unk_1E79C4E00;
          block[4] = v24;
          v30 = v15;
          v31 = v28;
          dispatch_async(callbackQueue, block);

          ++v23;
        }

        while (v21 != v23);
        v21 = [v19 countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v21);
    }

    receivedCopy = v27;
  }
}

uint64_t __70__PKIDSManager__paymentResultReceived_service_account_fromID_context___block_invoke(void *a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = a1[4];
    v4 = a1[5];
    v5 = a1[6];

    return [v3 didReceivePaymentResult:v4 forRemotePaymentRequest:v5];
  }

  return result;
}

- (void)_paymentCancellationReceived:(id)received service:(id)service account:(id)account fromID:(id)d context:(id)context
{
  v38 = *MEMORY[0x1E69E9840];
  receivedCopy = received;
  v10 = [(IDSService *)self->_service deviceForFromID:d];

  if (v10)
  {
    AnalyticsSendEvent();
    v11 = [PKProtobufPaymentCancellation alloc];
    v28 = receivedCopy;
    data = [receivedCopy data];
    v13 = [(PKProtobufPaymentCancellation *)v11 initWithData:data];

    remotePaymentRequestIdentifier = [(PKProtobufPaymentCancellation *)v13 remotePaymentRequestIdentifier];
    v15 = [(PKIDSManager *)self _queue_requestForIdentifier:remotePaymentRequestIdentifier];

    v16 = PKLogFacilityTypeGetObject(9uLL);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      remotePaymentRequestIdentifier2 = [(PKProtobufPaymentCancellation *)v13 remotePaymentRequestIdentifier];
      *buf = 138412290;
      v37 = remotePaymentRequestIdentifier2;
      _os_log_impl(&dword_1AD337000, v16, OS_LOG_TYPE_DEFAULT, "Received cancellation for payment request with identifier: %@", buf, 0xCu);
    }

    delegates = [(PKIDSManager *)self delegates];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v19 = [delegates countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v32;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v32 != v21)
          {
            objc_enumerationMutation(delegates);
          }

          v23 = *(*(&v31 + 1) + 8 * i);
          callbackQueue = self->_callbackQueue;
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __76__PKIDSManager__paymentCancellationReceived_service_account_fromID_context___block_invoke;
          block[3] = &unk_1E79C4DD8;
          block[4] = v23;
          v30 = v15;
          dispatch_async(callbackQueue, block);
        }

        v20 = [delegates countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v20);
    }

    if (v15)
    {
      [(NSMutableArray *)self->_paymentRequests removeObject:v15];
      v25 = v13;
      receivedCopy = v28;
    }

    else
    {
      pendingCancellations = self->_pendingCancellations;
      v25 = v13;
      remotePaymentRequestIdentifier3 = [(PKProtobufPaymentCancellation *)v13 remotePaymentRequestIdentifier];
      [(NSMutableArray *)pendingCancellations safelyAddObject:remotePaymentRequestIdentifier3];

      receivedCopy = v28;
    }
  }
}

uint64_t __76__PKIDSManager__paymentCancellationReceived_service_account_fromID_context___block_invoke(uint64_t a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);

    return [v3 didReceiveCancellationForRemotePaymentRequest:v4];
  }

  return result;
}

- (void)_paymentHostUpdateReceived:(id)received service:(id)service account:(id)account fromID:(id)d context:(id)context
{
  v37 = *MEMORY[0x1E69E9840];
  receivedCopy = received;
  v10 = [(IDSService *)self->_service deviceForFromID:d];

  if (v10)
  {
    v11 = [PKProtobufPaymentHostUpdate alloc];
    v25 = receivedCopy;
    data = [receivedCopy data];
    v13 = [(PKProtobufPaymentHostUpdate *)v11 initWithData:data];

    remotePaymentRequestIdentifier = [(PKProtobufPaymentHostUpdate *)v13 remotePaymentRequestIdentifier];
    v15 = [(PKIDSManager *)self _queue_requestForIdentifier:remotePaymentRequestIdentifier];

    v16 = [PKPaymentHostUpdate paymentUpdateWithProtobuf:v13];
    v17 = PKLogFacilityTypeGetObject(9uLL);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [v16 description];
      *buf = 138412290;
      v36 = v18;
      _os_log_impl(&dword_1AD337000, v17, OS_LOG_TYPE_DEFAULT, "Received payment host update: %@", buf, 0xCu);
    }

    [(PKIDSManager *)self delegates];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    obj = v33 = 0u;
    v19 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v31;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v31 != v21)
          {
            objc_enumerationMutation(obj);
          }

          v23 = *(*(&v30 + 1) + 8 * i);
          callbackQueue = self->_callbackQueue;
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __74__PKIDSManager__paymentHostUpdateReceived_service_account_fromID_context___block_invoke;
          block[3] = &unk_1E79C4E00;
          block[4] = v23;
          v28 = v16;
          v29 = v15;
          dispatch_async(callbackQueue, block);
        }

        v20 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v20);
    }

    receivedCopy = v25;
  }
}

uint64_t __74__PKIDSManager__paymentHostUpdateReceived_service_account_fromID_context___block_invoke(void *a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = a1[4];
    v4 = a1[5];
    v5 = a1[6];

    return [v3 didReceivePaymentHostUpdate:v4 forRemotePaymentRequest:v5];
  }

  return result;
}

- (void)_paymentClientUpdateReceived:(id)received service:(id)service account:(id)account fromID:(id)d context:(id)context
{
  v37 = *MEMORY[0x1E69E9840];
  receivedCopy = received;
  v10 = [(IDSService *)self->_service deviceForFromID:d];

  if (v10)
  {
    AnalyticsSendEvent();
    v11 = [PKProtobufPaymentClientUpdate alloc];
    v25 = receivedCopy;
    data = [receivedCopy data];
    v13 = [(PKProtobufPaymentClientUpdate *)v11 initWithData:data];

    remotePaymentRequestIdentifier = [(PKProtobufPaymentClientUpdate *)v13 remotePaymentRequestIdentifier];
    v15 = [(PKIDSManager *)self _queue_requestForIdentifier:remotePaymentRequestIdentifier];

    v16 = [PKPaymentClientUpdate paymentUpdateResponseWithProtobuf:v13];
    v17 = PKLogFacilityTypeGetObject(9uLL);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [v16 description];
      *buf = 138412290;
      v36 = v18;
      _os_log_impl(&dword_1AD337000, v17, OS_LOG_TYPE_DEFAULT, "Received payment client update: %@", buf, 0xCu);
    }

    [(PKIDSManager *)self delegates];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    obj = v33 = 0u;
    v19 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v31;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v31 != v21)
          {
            objc_enumerationMutation(obj);
          }

          v23 = *(*(&v30 + 1) + 8 * i);
          callbackQueue = self->_callbackQueue;
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __76__PKIDSManager__paymentClientUpdateReceived_service_account_fromID_context___block_invoke;
          block[3] = &unk_1E79C4E00;
          block[4] = v23;
          v28 = v16;
          v29 = v15;
          dispatch_async(callbackQueue, block);
        }

        v20 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v20);
    }

    receivedCopy = v25;
  }
}

uint64_t __76__PKIDSManager__paymentClientUpdateReceived_service_account_fromID_context___block_invoke(void *a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = a1[4];
    v4 = a1[5];
    v5 = a1[6];

    return [v3 didReceivePaymentClientUpdate:v4 forRemotePaymentRequest:v5];
  }

  return result;
}

- (void)_thumbnailRequestReceived:(id)received service:(id)service account:(id)account fromID:(id)d context:(id)context
{
  receivedCopy = received;
  serviceCopy = service;
  accountCopy = account;
  dCopy = d;
  contextCopy = context;
  v17 = [(IDSService *)self->_service deviceForFromID:dCopy];

  if (v17)
  {
    v18 = PKLogFacilityTypeGetObject(9uLL);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v18, OS_LOG_TYPE_DEFAULT, "Received thumbnail request", buf, 2u);
    }

    v42 = serviceCopy;

    v19 = objc_autoreleasePoolPush();
    v20 = [PKProtobufPaymentInstrumentThumbnailRequest alloc];
    data = [receivedCopy data];
    v22 = [(PKProtobufPaymentInstrumentThumbnailRequest *)v20 initWithData:data];

    v41 = accountCopy;
    if (objc_opt_respondsToSelector())
    {
      [(PKProtobufPaymentInstrumentThumbnailRequest *)v22 width];
      v24 = v23;
      [(PKProtobufPaymentInstrumentThumbnailRequest *)v22 height];
      v26 = v25;
      dataSource = self->_dataSource;
      passIdentifier = [(PKProtobufPaymentInstrumentThumbnailRequest *)v22 passIdentifier];
      v29 = [(PKIDSManagerDataSource *)dataSource thumbnailImageForPassIdentifier:passIdentifier size:self manager:v24, v26];

      v30 = objc_alloc_init(PKProtobufPaymentInstrumentThumbnailResponse);
      v31 = v30;
      if (v29)
      {
        [(PKProtobufPaymentInstrumentThumbnailResponse *)v30 setStatus:0];
        v32 = [MEMORY[0x1E695DEF0] dataWithCGImage:v29];
        [(PKProtobufPaymentInstrumentThumbnailResponse *)v31 setThumbnailImage:v32];

        manifestHash = [(PKProtobufPaymentInstrumentThumbnailRequest *)v22 manifestHash];
        [(PKProtobufPaymentInstrumentThumbnailResponse *)v31 setManifestHash:manifestHash];

LABEL_9:
        v34 = objc_alloc(MEMORY[0x1E69A5388]);
        data2 = [(PKProtobufPaymentInstrumentThumbnailResponse *)v31 data];
        v36 = [v34 initWithProtobufData:data2 type:8 isResponse:1];

        objc_autoreleasePoolPop(v19);
        service = self->_service;
        v38 = [(IDSService *)service deviceForFromID:dCopy];
        pk_idsDestination = [v38 pk_idsDestination];
        outgoingResponseIdentifier = [contextCopy outgoingResponseIdentifier];
        PKProtobufSend(service, v36, pk_idsDestination, outgoingResponseIdentifier, 0, &__block_literal_global_207);

        accountCopy = v41;
        serviceCopy = v42;
        goto LABEL_10;
      }
    }

    else
    {
      v31 = objc_alloc_init(PKProtobufPaymentInstrumentThumbnailResponse);
    }

    [(PKProtobufPaymentInstrumentThumbnailResponse *)v31 setStatus:1, accountCopy];
    goto LABEL_9;
  }

LABEL_10:
}

void __73__PKIDSManager__thumbnailRequestReceived_service_account_fromID_context___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  if (v5)
  {
    v6 = PKLogFacilityTypeGetObject(9uLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v5 localizedDescription];
      v8 = 138412290;
      v9 = v7;
      _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "Failed to send message: %@", &v8, 0xCu);
    }
  }
}

- (void)_promptDetailsForVirtualCardRequestReceived:(id)received service:(id)service account:(id)account fromID:(id)d context:(id)context
{
  v40 = *MEMORY[0x1E69E9840];
  receivedCopy = received;
  serviceCopy = service;
  accountCopy = account;
  dCopy = d;
  contextCopy = context;
  v17 = PKLogFacilityTypeGetObject(9uLL);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AD337000, v17, OS_LOG_TYPE_DEFAULT, "Received virtual card details request", buf, 2u);
  }

  v18 = [(IDSService *)self->_service deviceForFromID:dCopy];
  if (v18)
  {
    v29 = v18;
    v30 = accountCopy;
    v31 = serviceCopy;
    v19 = [PKProtobufPromptDetailsForVirtualCard alloc];
    data = [receivedCopy data];
    v21 = [(PKProtobufPromptDetailsForVirtualCard *)v19 initWithData:data];

    delegates = [(PKIDSManager *)self delegates];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v23 = [delegates countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v35;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v35 != v25)
          {
            objc_enumerationMutation(delegates);
          }

          v27 = *(*(&v34 + 1) + 8 * i);
          callbackQueue = self->_callbackQueue;
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __91__PKIDSManager__promptDetailsForVirtualCardRequestReceived_service_account_fromID_context___block_invoke;
          block[3] = &unk_1E79C4DD8;
          block[4] = v27;
          v33 = v21;
          dispatch_async(callbackQueue, block);
        }

        v24 = [delegates countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v24);
    }

    serviceCopy = v31;
    accountCopy = v30;
    v18 = v29;
  }
}

void __91__PKIDSManager__promptDetailsForVirtualCardRequestReceived_service_account_fromID_context___block_invoke(uint64_t a1)
{
  if (objc_opt_respondsToSelector())
  {
    v2 = *(a1 + 32);
    v3 = [*(a1 + 40) identifier];
    [v2 didReceivePromptForVirtualCard:v3 showNotification:{objc_msgSend(*(a1 + 40), "showNotification")}];
  }
}

- (void)_paymentDiscoveryResponseReceived:(id)received service:(id)service account:(id)account fromID:(id)d context:(id)context
{
  v93 = *MEMORY[0x1E69E9840];
  receivedCopy = received;
  v10 = [(IDSService *)self->_service deviceForFromID:d];
  v11 = PKLogFacilityTypeGetObject(9uLL);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    name = [v10 name];
    uniqueID = [v10 uniqueID];
    *buf = 138412546;
    v90 = name;
    v91 = 2112;
    v92 = uniqueID;
    _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "Received discovery response from device name:%@; identifier:%@", buf, 0x16u);
  }

  if (v10)
  {
    uniqueID2 = [v10 uniqueID];

    if (uniqueID2)
    {
      oslog = v11;
      selfCopy = self;
      pendingDiscoveries = self->_pendingDiscoveries;
      uniqueID3 = [v10 uniqueID];
      [(NSMutableDictionary *)pendingDiscoveries removeObjectForKey:uniqueID3];

      v59 = v10;
      v61 = [[PKRemoteDevice alloc] initWithIDSDevice:v10];
      v17 = [PKProtobufPaymentDeviceResponse alloc];
      v60 = receivedCopy;
      data = [receivedCopy data];
      v19 = [(PKProtobufPaymentDeviceResponse *)v17 initWithData:data];

      array = [MEMORY[0x1E695DF70] array];
      v81 = 0u;
      v82 = 0u;
      v83 = 0u;
      v84 = 0u;
      v62 = v19;
      obj = [(PKProtobufPaymentDeviceResponse *)v19 paymentInstruments];
      v21 = [obj countByEnumeratingWithState:&v81 objects:v88 count:16];
      v64 = array;
      if (v21)
      {
        v22 = v21;
        v23 = *v82;
        do
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v82 != v23)
            {
              objc_enumerationMutation(obj);
            }

            v25 = [PKRemotePaymentInstrument remotePaymentInstrumentWithProtobuf:*(*(&v81 + 1) + 8 * i)];
            v26 = objc_alloc_init(MEMORY[0x1E695DFA8]);
            v77 = 0u;
            v78 = 0u;
            v79 = 0u;
            v80 = 0u;
            paymentApplications = [v25 paymentApplications];
            v28 = [paymentApplications countByEnumeratingWithState:&v77 objects:v87 count:16];
            if (v28)
            {
              v29 = v28;
              v30 = *v78;
              do
              {
                for (j = 0; j != v29; ++j)
                {
                  if (*v78 != v30)
                  {
                    objc_enumerationMutation(paymentApplications);
                  }

                  v32 = *(*(&v77 + 1) + 8 * j);
                  if ([v32 supportsInAppPayment] && objc_msgSend(v32, "supportsComboCard"))
                  {
                    paymentApplicationsIncludingAuxiliaryPaymentTypes = [v32 paymentApplicationsIncludingAuxiliaryPaymentTypes];
                    [v26 addObjectsFromArray:paymentApplicationsIncludingAuxiliaryPaymentTypes];
                  }

                  else
                  {
                    [v26 addObject:v32];
                  }
                }

                v29 = [paymentApplications countByEnumeratingWithState:&v77 objects:v87 count:16];
              }

              while (v29);
            }

            pk_arrayCopy = [v26 pk_arrayCopy];
            [v25 setPaymentApplications:pk_arrayCopy];

            array = v64;
            [v64 addObject:v25];
          }

          v22 = [obj countByEnumeratingWithState:&v81 objects:v88 count:16];
        }

        while (v22);
      }

      if ([(PKProtobufPaymentDeviceResponse *)v62 hasDefaultPaymentInstrumentIndex])
      {
        v35 = [array objectAtIndex:{-[PKProtobufPaymentDeviceResponse defaultPaymentInstrumentIndex](v62, "defaultPaymentInstrumentIndex")}];
        v36 = v61;
        [(PKRemoteDevice *)v61 setDefaultRemotePaymentInstrument:v35];
        receivedCopy = v60;
        p_isa = &selfCopy->super.isa;
      }

      else
      {
        v35 = oslog;
        receivedCopy = v60;
        v36 = v61;
        p_isa = &selfCopy->super.isa;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1AD337000, oslog, OS_LOG_TYPE_DEFAULT, "No default card was found when parsing discovery response", buf, 2u);
        }
      }

      [(PKRemoteDevice *)v36 setRemotePaymentInstruments:array];
      [(PKRemoteDevice *)v36 setIsLocked:[(PKProtobufPaymentDeviceResponse *)v62 locked]];
      [(PKRemoteDevice *)v36 setUserDisabled:[(PKProtobufPaymentDeviceResponse *)v62 userDisabled]];
      date = [MEMORY[0x1E695DF00] date];
      [(PKRemoteDevice *)v36 setLastSeen:date];

      [(PKRemoteDevice *)v36 setDeviceDisabled:[(PKProtobufPaymentDeviceResponse *)v62 deviceDisabled]];
      [(PKRemoteDevice *)v36 setSupportsFaceID:[(PKProtobufPaymentDeviceResponse *)v62 supportsFaceID]];
      v39 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v73 = 0u;
      v74 = 0u;
      v75 = 0u;
      v76 = 0u;
      supportedSetupFeatures = [(PKProtobufPaymentDeviceResponse *)v62 supportedSetupFeatures];
      v41 = [supportedSetupFeatures countByEnumeratingWithState:&v73 objects:v86 count:16];
      if (v41)
      {
        v42 = v41;
        v43 = *v74;
        do
        {
          for (k = 0; k != v42; ++k)
          {
            if (*v74 != v43)
            {
              objc_enumerationMutation(supportedSetupFeatures);
            }

            v45 = [PKPaymentSetupFeature paymentSetupFeatureWithProtobuf:*(*(&v73 + 1) + 8 * k)];
            [v39 addObject:v45];
          }

          v42 = [supportedSetupFeatures countByEnumeratingWithState:&v73 objects:v86 count:16];
        }

        while (v42);
      }

      v46 = [v39 copy];
      [(PKRemoteDevice *)v61 setSupportedSetupFeatures:v46];

      nearby = [(PKProtobufPaymentDeviceResponse *)v62 nearby];
      if (nearby <= 2)
      {
        [(PKRemoteDevice *)v61 setProximityState:qword_1ADB9B2D8[nearby]];
      }

      v48 = p_isa[1];
      v71[0] = MEMORY[0x1E69E9820];
      v71[1] = 3221225472;
      v71[2] = __81__PKIDSManager__paymentDiscoveryResponseReceived_service_account_fromID_context___block_invoke;
      v71[3] = &unk_1E79CC428;
      v49 = v61;
      v72 = v49;
      v50 = [v48 indexOfObjectPassingTest:v71];
      if (v50 != 0x7FFFFFFFFFFFFFFFLL)
      {
        [p_isa[1] removeObjectAtIndex:v50];
      }

      [p_isa[1] addObject:v49];
      delegates = [p_isa delegates];
      v67 = 0u;
      v68 = 0u;
      v69 = 0u;
      v70 = 0u;
      v52 = [delegates countByEnumeratingWithState:&v67 objects:v85 count:16];
      if (v52)
      {
        v53 = v52;
        v54 = *v68;
        do
        {
          for (m = 0; m != v53; ++m)
          {
            if (*v68 != v54)
            {
              objc_enumerationMutation(delegates);
            }

            v56 = *(*(&v67 + 1) + 8 * m);
            callbackQueue = selfCopy->_callbackQueue;
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            block[2] = __81__PKIDSManager__paymentDiscoveryResponseReceived_service_account_fromID_context___block_invoke_2;
            block[3] = &unk_1E79C4DD8;
            block[4] = v56;
            block[5] = selfCopy;
            dispatch_async(callbackQueue, block);
          }

          v53 = [delegates countByEnumeratingWithState:&v67 objects:v85 count:16];
        }

        while (v53);
      }

      [(PKIDSManager *)selfCopy _archiveDevicesToDisk];

      v10 = v59;
    }
  }
}

uint64_t __81__PKIDSManager__paymentDiscoveryResponseReceived_service_account_fromID_context___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueID];
  v4 = [*(a1 + 32) uniqueID];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

uint64_t __81__PKIDSManager__paymentDiscoveryResponseReceived_service_account_fromID_context___block_invoke_2(uint64_t a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);

    return [v3 managerDevicesDidChange:v4];
  }

  return result;
}

- (void)_thumbnailResponseReceived:(id)received service:(id)service account:(id)account fromID:(id)d context:(id)context
{
  v75 = *MEMORY[0x1E69E9840];
  receivedCopy = received;
  contextCopy = context;
  selfCopy = self;
  v12 = [(IDSService *)self->_service deviceForFromID:d];

  if (!v12)
  {
    goto LABEL_31;
  }

  incomingResponseIdentifier = [contextCopy incomingResponseIdentifier];
  v14 = PKLogFacilityTypeGetObject(9uLL);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v74 = incomingResponseIdentifier;
    _os_log_impl(&dword_1AD337000, v14, OS_LOG_TYPE_DEFAULT, "Received thumbnail response: %@", buf, 0xCu);
  }

  v15 = [PKProtobufPaymentInstrumentThumbnailResponse alloc];
  data = [receivedCopy data];
  v17 = [(PKProtobufPaymentInstrumentThumbnailResponse *)v15 initWithData:data];

  if (![(PKProtobufPaymentInstrumentThumbnailResponse *)v17 status])
  {
    if (![(PKProtobufPaymentInstrumentThumbnailResponse *)v17 hasThumbnailImage]|| ([(PKProtobufPaymentInstrumentThumbnailResponse *)v17 thumbnailImage], v22 = objc_claimAutoreleasedReturnValue(), v23 = PKCreateCGImage(v22), v22, !v23))
    {
      v21 = 0;
      goto LABEL_14;
    }

    Width = CGImageGetWidth(v23);
    Height = CGImageGetHeight(v23);
    manifestHash = [(PKProtobufPaymentInstrumentThumbnailResponse *)v17 manifestHash];
    v25 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"0123456789ABCDEFabcdef"];
    invertedSet = [v25 invertedSet];

    if ([manifestHash rangeOfCharacterFromSet:invertedSet] != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AD337000, v14, OS_LOG_TYPE_DEFAULT, "Manifest hash for thumbnail was not a valid SHA1 hash. Ignoring.", buf, 2u);
      }

      height = v14;
      goto LABEL_41;
    }

    height = [PKRemotePaymentInstrument thumbnailCachePathForManifestHash:manifestHash size:1 planningToWrite:Width, Height];
    v27 = [MEMORY[0x1E695DFF8] fileURLWithPath:height];
    v28 = CGImageDestinationCreateWithURL(v27, [*MEMORY[0x1E6982F28] identifier], 1uLL, 0);
    if (v28)
    {
      v29 = v28;
      v52 = height;
      CGImageDestinationAddImage(v28, v23, 0);
      v30 = CGImageDestinationFinalize(v29);
      CFRelease(v29);
      if (v30)
      {
        height = v52;
LABEL_41:

        CGImageRelease(v23);
        v21 = 0;
        goto LABEL_6;
      }

      height = v52;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v43 = "Error saving thumbnail to disk";
        goto LABEL_39;
      }
    }

    else if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v43 = "Thumbnail destination is nil - this is not expected behavior";
LABEL_39:
      _os_log_impl(&dword_1AD337000, v14, OS_LOG_TYPE_DEFAULT, v43, buf, 2u);
    }

    goto LABEL_41;
  }

  v18 = MEMORY[0x1E696ABC0];
  v71 = *MEMORY[0x1E696A578];
  manifestHash = [(PKProtobufPaymentInstrumentThumbnailResponse *)v17 statusAsString:[(PKProtobufPaymentInstrumentThumbnailResponse *)v17 status]];
  v72 = manifestHash;
  invertedSet = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v72 forKeys:&v71 count:1];
  v21 = [v18 errorWithDomain:@"PKPassKitErrorDomain" code:1 userInfo:invertedSet];
LABEL_6:

LABEL_14:
  thumbnailCompletionHandlers = selfCopy->_thumbnailCompletionHandlers;
  v67[0] = MEMORY[0x1E69E9820];
  v67[1] = 3221225472;
  v67[2] = __74__PKIDSManager__thumbnailResponseReceived_service_account_fromID_context___block_invoke;
  v67[3] = &unk_1E79E0C60;
  v32 = incomingResponseIdentifier;
  v68 = v32;
  v33 = [(NSMutableDictionary *)thumbnailCompletionHandlers keysOfEntriesPassingTest:v67];
  if ([v33 count])
  {
    v45 = v32;
    v46 = contextCopy;
    v47 = receivedCopy;
    v65 = 0u;
    v66 = 0u;
    v64 = 0u;
    v63 = 0u;
    v44 = v33;
    obj = v33;
    v49 = [obj countByEnumeratingWithState:&v63 objects:v70 count:16];
    if (v49)
    {
      v48 = *v64;
      do
      {
        v34 = 0;
        do
        {
          if (*v64 != v48)
          {
            objc_enumerationMutation(obj);
          }

          v53 = v34;
          v35 = [(NSMutableDictionary *)selfCopy->_thumbnailCompletionHandlers objectForKey:*(*(&v63 + 1) + 8 * v34), v44, v45, v46, v47];
          [(PKIDSManager *)selfCopy _queue_removeThumbnailCompletionHandlersForKeys:obj];
          v61 = 0u;
          v62 = 0u;
          v59 = 0u;
          v60 = 0u;
          v36 = v35;
          v37 = [v36 countByEnumeratingWithState:&v59 objects:v69 count:16];
          if (v37)
          {
            v38 = v37;
            v39 = *v60;
            do
            {
              for (i = 0; i != v38; ++i)
              {
                if (*v60 != v39)
                {
                  objc_enumerationMutation(v36);
                }

                v41 = *(*(&v59 + 1) + 8 * i);
                callbackQueue = selfCopy->_callbackQueue;
                block[0] = MEMORY[0x1E69E9820];
                block[1] = 3221225472;
                block[2] = __74__PKIDSManager__thumbnailResponseReceived_service_account_fromID_context___block_invoke_2;
                block[3] = &unk_1E79C44F0;
                v58 = v41;
                v56 = v17;
                v57 = v21;
                dispatch_async(callbackQueue, block);
              }

              v38 = [v36 countByEnumeratingWithState:&v59 objects:v69 count:16];
            }

            while (v38);
          }

          v34 = v53 + 1;
        }

        while (v53 + 1 != v49);
        v49 = [obj countByEnumeratingWithState:&v63 objects:v70 count:16];
      }

      while (v49);
    }

    contextCopy = v46;
    receivedCopy = v47;
    v33 = v44;
    v32 = v45;
  }

LABEL_31:
}

uint64_t __74__PKIDSManager__thumbnailResponseReceived_service_account_fromID_context___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 requestIdentifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

void __74__PKIDSManager__thumbnailResponseReceived_service_account_fromID_context___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) thumbnailImage];
  (*(v2 + 16))(v2, v3, *(a1 + 40));
}

- (int64_t)_paymentAuthorizationStatusForPaymentResult:(id)result forRemotePaymentRequest:(id)request
{
  resultCopy = result;
  status = [resultCopy status];
  errors = [resultCopy errors];

  v7 = [errors count];
  if (v7)
  {
    return 1000;
  }

  else
  {
    return status;
  }
}

- (BOOL)_queue_hasRemoteDevices
{
  v17 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_internalQueue);
  [(IDSService *)self->_service devices];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = v15 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v12 + 1) + 8 * i) pk_isApplePayCapable])
        {
          if (![(NSMutableArray *)self->_remoteDevices count])
          {
            v9 = PKLogFacilityTypeGetObject(9uLL);
            if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
            {
              *v11 = 0;
              _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "IDS service has devices but cache is empty.", v11, 2u);
            }

            [(PKIDSManager *)self _queue_sendDeviceDiscoveryRequestWithProximity:0 devices:v3];
          }

          v8 = 1;
          goto LABEL_15;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v8 = 0;
LABEL_15:

  return v8;
}

- (id)_queue_requestForIdentifier:(id)identifier
{
  v18 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  dispatch_assert_queue_V2(self->_internalQueue);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_paymentRequests;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        identifier = [v9 identifier];
        v11 = [identifier isEqualToString:identifierCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (void)_queue_addThumbnailCompletionHandler:(id)handler forKey:(id)key
{
  keyCopy = key;
  internalQueue = self->_internalQueue;
  handlerCopy = handler;
  dispatch_assert_queue_V2(internalQueue);
  v8 = [(NSMutableDictionary *)self->_thumbnailCompletionHandlers objectForKey:keyCopy];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  v11 = v10;

  v12 = [handlerCopy copy];
  [v11 addObject:v12];

  [(NSMutableDictionary *)self->_thumbnailCompletionHandlers setObject:v11 forKey:keyCopy];
}

- (void)_queue_removeThumbnailCompletionHandlersForKeys:(id)keys
{
  internalQueue = self->_internalQueue;
  keysCopy = keys;
  dispatch_assert_queue_V2(internalQueue);
  thumbnailCompletionHandlers = self->_thumbnailCompletionHandlers;
  allObjects = [keysCopy allObjects];

  [(NSMutableDictionary *)thumbnailCompletionHandlers removeObjectsForKeys:allObjects];
}

- (void)_queue_sendDeviceDiscoveryRequestToAllDevicesWithProximity:(BOOL)proximity
{
  proximityCopy = proximity;
  devices = [(IDSService *)self->_service devices];
  [(PKIDSManager *)self _queue_sendDeviceDiscoveryRequestWithProximity:proximityCopy devices:devices];
}

- (void)_queue_sendDeviceDiscoveryRequestWithProximity:(BOOL)proximity devices:(id)devices
{
  proximityCopy = proximity;
  v65 = *MEMORY[0x1E69E9840];
  devicesCopy = devices;
  dispatch_assert_queue_V2(self->_internalQueue);
  devices = [(IDSService *)self->_service devices];
  remoteDevices = self->_remoteDevices;
  v56[0] = MEMORY[0x1E69E9820];
  v56[1] = 3221225472;
  v56[2] = __71__PKIDSManager__queue_sendDeviceDiscoveryRequestWithProximity_devices___block_invoke;
  v56[3] = &unk_1E79CC428;
  v45 = devices;
  v57 = v45;
  v9 = [(NSMutableArray *)remoteDevices indexesOfObjectsPassingTest:v56];
  if ([v9 count])
  {
    [(NSMutableArray *)self->_remoteDevices removeObjectsAtIndexes:v9];
    [(PKIDSManager *)self _archiveDevicesToDisk];
    v10 = PKLogFacilityTypeGetObject(9uLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v9 count];
      v12 = [(NSMutableArray *)self->_remoteDevices count];
      v13 = [devicesCopy count];
      *buf = 134218496;
      v60 = v11;
      v61 = 2048;
      v62 = v12;
      v63 = 2048;
      v64 = v13;
      _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "PKIDSManager: %lu remote devices disappeared, %lu remote devices remains, %lu IDS devices in total", buf, 0x20u);
    }
  }

  v44 = v9;
  v14 = objc_alloc_init(PKProtobufPaymentDeviceRequest);
  [(PKProtobufPaymentDeviceRequest *)v14 setProtocolVersion:1];
  [(PKProtobufPaymentDeviceRequest *)v14 setShouldAdvertise:proximityCopy];
  v15 = objc_alloc(MEMORY[0x1E69A5388]);
  v43 = v14;
  data = [(PKProtobufPaymentDeviceRequest *)v14 data];
  v42 = [v15 initWithProtobufData:data type:1 isResponse:0];

  v17 = [MEMORY[0x1E695DFA8] set];
  v18 = [MEMORY[0x1E695DFA8] set];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v19 = devicesCopy;
  v20 = v17;
  v21 = v19;
  v22 = [v19 countByEnumeratingWithState:&v52 objects:v58 count:16];
  v46 = v17;
  if (v22)
  {
    v23 = v22;
    v24 = *v53;
    do
    {
      v25 = 0;
      do
      {
        if (*v53 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v52 + 1) + 8 * v25);
        uniqueID = [v26 uniqueID];
        if (uniqueID && [v26 pk_isValidHandoffDevice])
        {
          v28 = [(NSMutableDictionary *)self->_pendingDiscoveries objectForKey:uniqueID];
          if (!v28 || PKForceLocalIDS())
          {
            goto LABEL_20;
          }

          v29 = PKLogFacilityTypeGetObject(9uLL);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v60 = uniqueID;
            v61 = 2112;
            v62 = v28;
            _os_log_impl(&dword_1AD337000, v29, OS_LOG_TYPE_DEFAULT, "Discovery attempt already in-flight for device %@ sent at %@", buf, 0x16u);
          }

          [v28 timeIntervalSinceNow];
          v31 = v30;
          v32 = os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
          if (v31 >= -60.0)
          {
            if (v32)
            {
              *buf = 0;
              _os_log_impl(&dword_1AD337000, v29, OS_LOG_TYPE_DEFAULT, "Previous discovery attempt is less than one minute ago, ignoring", buf, 2u);
            }

            v20 = v46;
          }

          else
          {
            if (v32)
            {
              *buf = 0;
              _os_log_impl(&dword_1AD337000, v29, OS_LOG_TYPE_DEFAULT, "Previous discovery attempt older than one minute, re-trying", buf, 2u);
            }

            v20 = v46;
LABEL_20:
            [v20 addObject:v26];
          }

          goto LABEL_23;
        }

        [v18 addObject:v26];
LABEL_23:

        ++v25;
      }

      while (v23 != v25);
      v33 = [v21 countByEnumeratingWithState:&v52 objects:v58 count:16];
      v23 = v33;
    }

    while (v33);
  }

  if ([v20 count])
  {
    v34 = [v20 pk_setByApplyingBlock:&__block_literal_global_149];
    date = [MEMORY[0x1E695DF00] date];
    v50[0] = MEMORY[0x1E69E9820];
    v50[1] = 3221225472;
    v50[2] = __71__PKIDSManager__queue_sendDeviceDiscoveryRequestWithProximity_devices___block_invoke_2;
    v50[3] = &unk_1E79E0E08;
    v50[4] = self;
    v51 = date;
    v36 = date;
    [v34 enumerateObjectsUsingBlock:v50];
    service = self->_service;
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __71__PKIDSManager__queue_sendDeviceDiscoveryRequestWithProximity_devices___block_invoke_3;
    v47[3] = &unk_1E79E0E30;
    v48 = v34;
    selfCopy = self;
    v38 = v34;
    v39 = v42;
    PKProtobufSendWithOptions(service, v42, v38, 300, 0, 1, 0, v47, 0);

    v20 = v46;
    v40 = v44;
LABEL_31:

    goto LABEL_32;
  }

  v36 = PKLogFacilityTypeGetObject(9uLL);
  v39 = v42;
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AD337000, v36, OS_LOG_TYPE_DEFAULT, "No devices to send discovery requests", buf, 2u);
  }

  v40 = v44;
  if (![v21 count])
  {
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v36, OS_LOG_TYPE_DEFAULT, "IDS device list is empty.", buf, 2u);
    }

    goto LABEL_31;
  }

  if ([v18 count])
  {
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v60 = v18;
      _os_log_impl(&dword_1AD337000, v36, OS_LOG_TYPE_DEFAULT, "Some IDS devices are invalid handoff devices: %@", buf, 0xCu);
    }
  }

  if ([(NSMutableDictionary *)self->_pendingDiscoveries count])
  {
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v41 = [(NSMutableDictionary *)self->_pendingDiscoveries description];
      *buf = 138412290;
      v60 = v41;
      _os_log_impl(&dword_1AD337000, v36, OS_LOG_TYPE_DEFAULT, "Discovery requests pending: %@", buf, 0xCu);

      v20 = v46;
    }

    goto LABEL_31;
  }

LABEL_32:
}

uint64_t __71__PKIDSManager__queue_sendDeviceDiscoveryRequestWithProximity_devices___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = IDSCopyIDForDevice();
        v10 = [v3 uniqueID];
        v11 = [v9 isEqualToString:v10];

        if (v11)
        {
          v12 = 0;
          goto LABEL_11;
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v12 = 1;
LABEL_11:

  return v12;
}

void __71__PKIDSManager__queue_sendDeviceDiscoveryRequestWithProximity_devices___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 96);
  v4 = [a2 deviceIdentifier];
  [v3 setObject:v2 forKey:v4];
}

void __71__PKIDSManager__queue_sendDeviceDiscoveryRequestWithProximity_devices___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = PKLogFacilityTypeGetObject(9uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v6 localizedDescription];
      *buf = 138412290;
      v22 = v8;
      _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "Failed to send message: %@", buf, 0xCu);
    }

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v9 = *(a1 + 32);
    v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v17;
      do
      {
        v13 = 0;
        do
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(a1 + 40) + 96);
          v15 = [*(*(&v16 + 1) + 8 * v13) deviceIdentifier];
          [v14 removeObjectForKey:v15];

          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v11);
    }
  }
}

- (void)_queue_sendDiscoveryResponse:(id)response toDeviceWithFromID:(id)d
{
  responseCopy = response;
  internalQueue = self->_internalQueue;
  dCopy = d;
  dispatch_assert_queue_V2(internalQueue);
  v8 = [(IDSService *)self->_service deviceForFromID:dCopy];

  if (v8)
  {
    v9 = objc_alloc(MEMORY[0x1E69A5388]);
    data = [responseCopy data];
    v11 = [v9 initWithProtobufData:data type:1 isResponse:1];

    service = self->_service;
    pk_idsDestination = [v8 pk_idsDestination];
    PKProtobufSend(service, v11, pk_idsDestination, 0, 0, &__block_literal_global_152);
  }
}

void __64__PKIDSManager__queue_sendDiscoveryResponse_toDeviceWithFromID___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  if (v5)
  {
    v6 = PKLogFacilityTypeGetObject(9uLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v5 localizedDescription];
      v8 = 138412290;
      v9 = v7;
      _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "Failed to send message: %@", &v8, 0xCu);
    }
  }
}

- (id)_queue_cancelRemotePaymentRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__74;
  v26 = __Block_byref_object_dispose__74;
  v27 = 0;
  AnalyticsSendEvent();
  v8 = objc_alloc_init(PKProtobufPaymentCancellation);
  identifier = [requestCopy identifier];
  [(PKProtobufPaymentCancellation *)v8 setRemotePaymentRequestIdentifier:identifier];

  v10 = objc_alloc(MEMORY[0x1E69A5388]);
  data = [(PKProtobufPaymentCancellation *)v8 data];
  v12 = [v10 initWithProtobufData:data type:6 isResponse:0];

  service = self->_service;
  device = [requestCopy device];
  pk_idsDestination = [device pk_idsDestination];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __61__PKIDSManager__queue_cancelRemotePaymentRequest_completion___block_invoke;
  v19[3] = &unk_1E79E0C10;
  v16 = completionCopy;
  v19[4] = self;
  v20 = v16;
  v21 = &v22;
  PKProtobufSend(service, v12, pk_idsDestination, 0, 0, v19);

  [(NSMutableArray *)self->_paymentRequests removeObject:requestCopy];
  v17 = v23[5];

  _Block_object_dispose(&v22, 8);

  return v17;
}

void __61__PKIDSManager__queue_cancelRemotePaymentRequest_completion___block_invoke(void *a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (v7 && (v8 = a1[5]) != 0)
  {
    v9 = *(a1[4] + 64);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __61__PKIDSManager__queue_cancelRemotePaymentRequest_completion___block_invoke_2;
    v13[3] = &unk_1E79C44A0;
    v15 = v8;
    v14 = v7;
    dispatch_async(v9, v13);
  }

  else if (v6)
  {
    v10 = a1[5];
    if (v10)
    {
      v11 = *(a1[4] + 24);
      v12 = [v10 copy];
      [v11 setObject:v12 forKey:v6];

      objc_storeStrong((*(a1[6] + 8) + 40), a2);
    }
  }
}

- (BOOL)_queue_hasRegisteredAccounts
{
  v13 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_internalQueue);
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  accounts = [(IDSService *)self->_service accounts];
  v4 = [accounts countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(accounts);
        }

        if ([*(*(&v8 + 1) + 8 * i) isActive])
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [accounts countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

- (BOOL)_queue_deviceIsRegistered:(id)registered
{
  v22 = *MEMORY[0x1E69E9840];
  registeredCopy = registered;
  dispatch_assert_queue_V2(self->_internalQueue);
  if (registeredCopy)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    devices = [(IDSService *)self->_service devices];
    v6 = [devices countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v6)
    {
      v7 = *v18;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v18 != v7)
          {
            objc_enumerationMutation(devices);
          }

          uniqueID = [*(*(&v17 + 1) + 8 * i) uniqueID];
          uniqueID2 = [registeredCopy uniqueID];
          v11 = uniqueID;
          v12 = uniqueID2;
          v13 = v12;
          if (v11 == v12)
          {

LABEL_20:
            LOBYTE(v6) = 1;
            goto LABEL_21;
          }

          if (v11)
          {
            v14 = v12 == 0;
          }

          else
          {
            v14 = 1;
          }

          if (v14)
          {
          }

          else
          {
            v15 = [v11 isEqualToString:v12];

            if (v15)
            {
              goto LABEL_20;
            }
          }
        }

        v6 = [devices countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_21:
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (void)_queue_logCloudPairingState
{
  v12 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_internalQueue);
  devices = [(IDSService *)self->_service devices];
  v4 = [devices pk_objectsPassingTest:&__block_literal_global_159];

  if ([v4 count])
  {
    v5 = PKLogFacilityTypeGetObject(9uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = v4;
      _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Missing cloud pairing state: %@", buf, 0xCu);
    }
  }

  v6 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v4, "count", @"present"}];
  v9 = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  AnalyticsSendEvent();
}

uint64_t __43__PKIDSManager__queue_logCloudPairingState__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 nsuuid];
  if (v3 || ![v2 supportsHandoff])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v2 supportsApplePay];
  }

  return v4;
}

- (void)_registerCTLMThrottleUncapNotification
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = notify_register_check([@"com.apple.request.hipuncap" UTF8String], &self->_requestCLTMThrottleUncapToken);
  if (v2)
  {
    v3 = v2;
    v4 = PKLogFacilityTypeGetObject(9uLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5[0] = 67109120;
      v5[1] = v3;
      _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "notify_register_check failed: %u", v5, 8u);
    }
  }
}

- (void)_postCTLMThrottleUncapNotification
{
  v3 = PKLogFacilityTypeGetObject(9uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "Posting CLTMThrottleUncapNotification", v4, 2u);
  }

  notify_set_state(self->_requestCLTMThrottleUncapToken, 3uLL);
  notify_post([@"com.apple.request.hipuncap" UTF8String]);
}

- (void)_registerListeners
{
  [(IDSService *)self->_service setProtobufAction:sel__paymentDiscoveryRequestReceived_service_account_fromID_context_ forIncomingRequestsOfType:1];
  [(IDSService *)self->_service setProtobufAction:sel__paymentRequestReceived_service_account_fromID_context_ forIncomingRequestsOfType:2];
  [(IDSService *)self->_service setProtobufAction:sel__paymentResultReceived_service_account_fromID_context_ forIncomingRequestsOfType:5];
  [(IDSService *)self->_service setProtobufAction:sel__paymentCancellationReceived_service_account_fromID_context_ forIncomingRequestsOfType:6];
  [(IDSService *)self->_service setProtobufAction:sel__paymentClientUpdateReceived_service_account_fromID_context_ forIncomingRequestsOfType:3];
  [(IDSService *)self->_service setProtobufAction:sel__paymentSetupRequestReceived_service_account_fromID_context_ forIncomingRequestsOfType:7];
  [(IDSService *)self->_service setProtobufAction:sel__thumbnailRequestReceived_service_account_fromID_context_ forIncomingRequestsOfType:8];
  [(IDSService *)self->_service setProtobufAction:sel__promptDetailsForVirtualCardRequestReceived_service_account_fromID_context_ forIncomingRequestsOfType:9];
  service = self->_service;

  [(IDSService *)service setProtobufAction:sel__paymentCancellationReceived_service_account_fromID_context_ forIncomingRequestsOfType:6];
}

- (id)_preparePaymentDeviceResponseForRequestingDevice:(id)device userDisabled:(BOOL)disabled
{
  disabledCopy = disabled;
  v30 = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  v7 = objc_alloc_init(PKProtobufPaymentDeviceResponse);
  [(PKProtobufPaymentDeviceResponse *)v7 setProtocolVersion:1];
  [(PKProtobufPaymentDeviceResponse *)v7 setUserDisabled:disabledCopy];
  [(PKProtobufPaymentDeviceResponse *)v7 setSupportsFaceID:PKPearlIsAvailable()];
  if (![(PKProtobufPaymentDeviceResponse *)v7 userDisabled])
  {
    if (objc_opt_respondsToSelector())
    {
      v8 = dispatch_group_create();
      dispatch_group_enter(v8);
      dataSource = self->_dataSource;
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __78__PKIDSManager__preparePaymentDeviceResponseForRequestingDevice_userDisabled___block_invoke;
      v25[3] = &unk_1E79CC728;
      v26 = v7;
      v27 = v8;
      v10 = v8;
      [(PKIDSManagerDataSource *)dataSource supportedPaymentSetupFeatures:self completion:v25];
      dispatch_group_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
    }

    if (objc_opt_respondsToSelector())
    {
      [(PKProtobufPaymentDeviceResponse *)v7 setDeviceDisabled:[(PKIDSManagerDataSource *)self->_dataSource deviceAvailableForContinuityPayments:self]^ 1];
    }

    v11 = [(PKIDSManager *)self _fetchPaymentInstrumentsForRequestingDevice:deviceCopy];
    [(PKProtobufPaymentDeviceResponse *)v7 setPaymentInstruments:v11];

    if (objc_opt_respondsToSelector())
    {
      v12 = [(PKIDSManagerDataSource *)self->_dataSource defaultPaymentPassForContinuityDiscovery:self];
    }

    else
    {
      v12 = 0;
    }

    if (objc_opt_respondsToSelector())
    {
      v13 = [(PKIDSManagerDataSource *)self->_dataSource webServiceConfigurationForContinuityPayments:self];
    }

    else
    {
      v13 = 0;
    }

    unsupportedWebPaymentConfigurations = [v13 unsupportedWebPaymentConfigurations];
    if (v12)
    {
      productVersion = [deviceCopy productVersion];
      v16 = [v12 supportsWebPaymentMode:2 withExclusionList:unsupportedWebPaymentConfigurations clientOSVersion:productVersion];

      if (v16)
      {
        v17 = PKLogFacilityTypeGetObject(9uLL);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v29 = v12;
          _os_log_impl(&dword_1AD337000, v17, OS_LOG_TYPE_DEFAULT, "Default pass: %@", buf, 0xCu);
        }

        v18 = [[PKRemotePaymentInstrument alloc] initWithPaymentPass:v12];
        paymentInstruments = [(PKProtobufPaymentDeviceResponse *)v7 paymentInstruments];
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __78__PKIDSManager__preparePaymentDeviceResponseForRequestingDevice_userDisabled___block_invoke_196;
        v23[3] = &unk_1E79E0E78;
        v24 = v18;
        v20 = v18;
        v21 = [paymentInstruments indexOfObjectPassingTest:v23];

        if (v21 == 0x7FFFFFFFFFFFFFFFLL)
        {
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1AD337000, v17, OS_LOG_TYPE_DEFAULT, "Unable to match the default card to provided passes", buf, 2u);
          }
        }

        else
        {
          [(PKProtobufPaymentDeviceResponse *)v7 setDefaultPaymentInstrumentIndex:v21];
        }
      }
    }

    [(PKProtobufPaymentDeviceResponse *)v7 setLocked:MKBGetDeviceLockState() != 0];
  }

  return v7;
}

void __78__PKIDSManager__preparePaymentDeviceResponseForRequestingDevice_userDisabled___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        v9 = [*(a1 + 32) supportedSetupFeatures];
        v10 = [v8 protobuf];
        [v9 addObject:v10];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  dispatch_group_leave(*(a1 + 40));
}

uint64_t __78__PKIDSManager__preparePaymentDeviceResponseForRequestingDevice_userDisabled___block_invoke_196(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 passIdentifier];
  v5 = [v3 passID];

  v6 = [v4 isEqualToString:v5];
  return v6;
}

- (id)_fetchPaymentInstrumentsForRequestingDevice:(id)device
{
  v43 = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  array = [MEMORY[0x1E695DF70] array];
  if (objc_opt_respondsToSelector())
  {
    v5 = [(PKIDSManagerDataSource *)self->_dataSource paymentPassesForContinuityDiscovery:self];
    if ((objc_opt_respondsToSelector() & 1) != 0 && ([(PKIDSManagerDataSource *)self->_dataSource webServiceConfigurationForContinuityPayments:self], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v27 = v6;
      unsupportedWebPaymentConfigurations = [v6 unsupportedWebPaymentConfigurations];
      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = __60__PKIDSManager__fetchPaymentInstrumentsForRequestingDevice___block_invoke;
      v39[3] = &unk_1E79E0EA0;
      v40 = unsupportedWebPaymentConfigurations;
      v41 = deviceCopy;
      v8 = unsupportedWebPaymentConfigurations;
      v9 = [v5 pk_objectsPassingTest:v39];

      v5 = v9;
    }

    else
    {
      v27 = 0;
    }

    group = dispatch_group_create();
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    obj = v5;
    v10 = [obj countByEnumeratingWithState:&v35 objects:v42 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = 0;
      v13 = *v36;
      selfCopy = self;
      v14 = off_1E79C1000;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v36 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v35 + 1) + 8 * i);
          v17 = [objc_alloc(v14[216]) initWithPaymentPass:v16];
          if ([v16 hasAssociatedPeerPaymentAccount])
          {
            v18 = v17;
            v19 = v12;
            v20 = v18;

            dispatch_group_enter(group);
            v21 = v14;
            dataSource = selfCopy->_dataSource;
            v32[0] = MEMORY[0x1E69E9820];
            v32[1] = 3221225472;
            v32[2] = __60__PKIDSManager__fetchPaymentInstrumentsForRequestingDevice___block_invoke_2;
            v32[3] = &unk_1E79E0EC8;
            v12 = v20;
            v33 = v12;
            v34 = group;
            v23 = dataSource;
            v14 = v21;
            [(PKIDSManagerDataSource *)v23 accountForPaymentPass:v16 manager:selfCopy completion:v32];

            protobuf = v33;
          }

          else
          {
            protobuf = [v17 protobuf];
            [array addObject:protobuf];
          }
        }

        v11 = [obj countByEnumeratingWithState:&v35 objects:v42 count:16];
      }

      while (v11);
    }

    else
    {
      v12 = 0;
    }

    dispatch_group_wait(group, 0xFFFFFFFFFFFFFFFFLL);
    if (v12)
    {
      protobuf2 = [v12 protobuf];
      [array addObject:protobuf2];
    }
  }

  return array;
}

uint64_t __60__PKIDSManager__fetchPaymentInstrumentsForRequestingDevice___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 deviceInAppPaymentApplications];
  if (![v4 count])
  {

    goto LABEL_5;
  }

  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) productVersion];
  LODWORD(v5) = [v3 supportsWebPaymentMode:2 withExclusionList:v5 clientOSVersion:v6];

  if (v5)
  {
LABEL_5:
    v8 = [v3 devicePrimaryPaymentApplication];
    v9 = *(a1 + 32);
    v10 = [*(a1 + 40) productVersion];
    v7 = [v8 supportsWebPaymentMode:2 withExclusionList:v9 clientOSVersion:v10];

    goto LABEL_6;
  }

  v7 = 0;
LABEL_6:

  return v7;
}

void __60__PKIDSManager__fetchPaymentInstrumentsForRequestingDevice___block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = a2;
    v5 = [v4 currentBalance];
    [v3 setPeerPaymentAccountBalance:v5];

    v6 = *(a1 + 32);
    v7 = [v4 state];

    [v6 setPeerPaymentAccountState:v7];
  }

  v8 = *(a1 + 40);

  dispatch_group_leave(v8);
}

- (void)service:(id)service activeAccountsChanged:(id)changed
{
  v26 = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  changedCopy = changed;
  v8 = PKLogFacilityTypeGetObject(9uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v23 = "[PKIDSManager service:activeAccountsChanged:]";
    v24 = 2112;
    v25 = changedCopy;
    _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "%s %@", buf, 0x16u);
  }

  delegates = [(PKIDSManager *)self delegates];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = [delegates countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      v13 = 0;
      do
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(delegates);
        }

        v14 = *(*(&v17 + 1) + 8 * v13);
        callbackQueue = self->_callbackQueue;
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __46__PKIDSManager_service_activeAccountsChanged___block_invoke;
        v16[3] = &unk_1E79C4DD8;
        v16[4] = v14;
        v16[5] = self;
        dispatch_async(callbackQueue, v16);
        ++v13;
      }

      while (v11 != v13);
      v11 = [delegates countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }
}

uint64_t __46__PKIDSManager_service_activeAccountsChanged___block_invoke(uint64_t a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);

    return [v3 managerAccountsDidChange:v4];
  }

  return result;
}

- (void)service:(id)service devicesChanged:(id)changed
{
  v26 = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  changedCopy = changed;
  v8 = PKLogFacilityTypeGetObject(9uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v23 = "[PKIDSManager service:devicesChanged:]";
    v24 = 2112;
    v25 = changedCopy;
    _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "%s %@", buf, 0x16u);
  }

  delegates = [(PKIDSManager *)self delegates];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = [delegates countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      v13 = 0;
      do
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(delegates);
        }

        v14 = *(*(&v17 + 1) + 8 * v13);
        callbackQueue = self->_callbackQueue;
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __39__PKIDSManager_service_devicesChanged___block_invoke_207;
        v16[3] = &unk_1E79C4DD8;
        v16[4] = v14;
        v16[5] = self;
        dispatch_async(callbackQueue, v16);
        ++v13;
      }

      while (v11 != v13);
      v11 = [delegates countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }
}

uint64_t __39__PKIDSManager_service_devicesChanged___block_invoke_207(uint64_t a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);

    return [v3 managerDevicesDidChange:v4];
  }

  return result;
}

- (void)service:(id)service account:(id)account identifier:(id)identifier hasBeenDeliveredWithContext:(id)context
{
  v23 = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  accountCopy = account;
  identifierCopy = identifier;
  contextCopy = context;
  v14 = PKLogFacilityTypeGetObject(9uLL);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v20 = identifierCopy;
    v21 = 2112;
    v22 = contextCopy;
    _os_log_impl(&dword_1AD337000, v14, OS_LOG_TYPE_DEFAULT, "IDS Service has delivered message: %@, context: %@", buf, 0x16u);
  }

  v15 = [(NSMutableDictionary *)self->_completionHandlers objectForKey:identifierCopy];
  if (v15)
  {
    [(NSMutableDictionary *)self->_completionHandlers removeObjectForKey:identifierCopy];
    callbackQueue = self->_callbackQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __71__PKIDSManager_service_account_identifier_hasBeenDeliveredWithContext___block_invoke;
    block[3] = &unk_1E79C4428;
    v18 = v15;
    dispatch_async(callbackQueue, block);
  }
}

- (void)service:(id)service account:(id)account incomingUnhandledProtobuf:(id)protobuf fromID:(id)d context:(id)context
{
  v25 = *MEMORY[0x1E69E9840];
  v12 = PKLogFacilityTypeGetObject(9uLL);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136316418;
    v14 = "[PKIDSManager service:account:incomingUnhandledProtobuf:fromID:context:]";
    v15 = 2112;
    serviceCopy = service;
    v17 = 2112;
    accountCopy = account;
    v19 = 2112;
    protobufCopy = protobuf;
    v21 = 2112;
    dCopy = d;
    v23 = 2112;
    contextCopy = context;
    _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, "%s %@ %@ %@ %@ %@", &v13, 0x3Eu);
  }
}

- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error
{
  successCopy = success;
  v66 = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  accountCopy = account;
  identifierCopy = identifier;
  errorCopy = error;
  v16 = PKLogFacilityTypeGetObject(9uLL);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316418;
    v55 = "[PKIDSManager service:account:identifier:didSendWithSuccess:error:]";
    v56 = 2112;
    v57 = serviceCopy;
    v58 = 2112;
    v59 = accountCopy;
    v60 = 2112;
    v61 = identifierCopy;
    v62 = 1024;
    v63 = successCopy;
    v64 = 2112;
    v65 = errorCopy;
    _os_log_impl(&dword_1AD337000, v16, OS_LOG_TYPE_DEFAULT, "%s %@ %@ %@ %d %@", buf, 0x3Au);
  }

  if (!successCopy)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v55 = identifierCopy;
      _os_log_impl(&dword_1AD337000, v16, OS_LOG_TYPE_DEFAULT, "Failed to send with success: %@", buf, 0xCu);
    }

    v17 = [(NSMutableDictionary *)self->_completionHandlers objectForKey:identifierCopy];
    if (v17)
    {
      [(NSMutableDictionary *)self->_completionHandlers removeObjectForKey:identifierCopy];
      callbackQueue = self->_callbackQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __68__PKIDSManager_service_account_identifier_didSendWithSuccess_error___block_invoke;
      block[3] = &unk_1E79C44A0;
      v19 = &v51;
      v51 = v17;
      v50 = errorCopy;
      dispatch_async(callbackQueue, block);
      v20 = v50;
    }

    else
    {
      thumbnailCompletionHandlers = self->_thumbnailCompletionHandlers;
      v47[0] = MEMORY[0x1E69E9820];
      v47[1] = 3221225472;
      v47[2] = __68__PKIDSManager_service_account_identifier_didSendWithSuccess_error___block_invoke_2;
      v47[3] = &unk_1E79E0C60;
      v19 = &v48;
      v48 = identifierCopy;
      v20 = [(NSMutableDictionary *)thumbnailCompletionHandlers keysOfEntriesPassingTest:v47];
      if ([v20 count])
      {
        v31 = serviceCopy;
        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        v20 = v20;
        v34 = [v20 countByEnumeratingWithState:&v43 objects:v53 count:16];
        if (v34)
        {
          v32 = *v44;
          v33 = v20;
          do
          {
            v22 = 0;
            do
            {
              if (*v44 != v32)
              {
                objc_enumerationMutation(v20);
              }

              v35 = v22;
              v23 = [(NSMutableDictionary *)self->_thumbnailCompletionHandlers objectForKey:*(*(&v43 + 1) + 8 * v22)];
              [(PKIDSManager *)self _queue_removeThumbnailCompletionHandlersForKeys:v20];
              v41 = 0u;
              v42 = 0u;
              v39 = 0u;
              v40 = 0u;
              v24 = v23;
              v25 = [v24 countByEnumeratingWithState:&v39 objects:v52 count:16];
              if (v25)
              {
                v26 = v25;
                v27 = *v40;
                do
                {
                  for (i = 0; i != v26; ++i)
                  {
                    if (*v40 != v27)
                    {
                      objc_enumerationMutation(v24);
                    }

                    v29 = *(*(&v39 + 1) + 8 * i);
                    v30 = self->_callbackQueue;
                    v36[0] = MEMORY[0x1E69E9820];
                    v36[1] = 3221225472;
                    v36[2] = __68__PKIDSManager_service_account_identifier_didSendWithSuccess_error___block_invoke_3;
                    v36[3] = &unk_1E79C44A0;
                    v38 = v29;
                    v37 = errorCopy;
                    dispatch_async(v30, v36);
                  }

                  v26 = [v24 countByEnumeratingWithState:&v39 objects:v52 count:16];
                }

                while (v26);
              }

              v22 = v35 + 1;
              v20 = v33;
            }

            while (v35 + 1 != v34);
            v34 = [v33 countByEnumeratingWithState:&v43 objects:v53 count:16];
          }

          while (v34);
        }

        serviceCopy = v31;
        v17 = 0;
        v19 = &v48;
      }
    }
  }
}

uint64_t __68__PKIDSManager_service_account_identifier_didSendWithSuccess_error___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 requestIdentifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (void)deleteArchivedDevices
{
  v3 = PKLogFacilityTypeGetObject(9uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "Deleting IDS device archive", v7, 2u);
  }

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v5 = PKHomeDirectoryPath();
  v6 = [v5 stringByAppendingPathComponent:@"RemoteDevices.archive"];

  [defaultManager removeItemAtPath:v6 error:0];
  PKRemoteInstrumentThumbnailsCacheCreateDirectoryURL(0, &__block_literal_global_210_1);
  [(PKIDSManager *)self _createThumbnailCacheDirectory];
}

void __37__PKIDSManager_deleteArchivedDevices__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AC08];
  v3 = a2;
  v4 = [v2 defaultManager];
  [v4 removeItemAtURL:v3 error:0];
}

- (id)_remoteDevicesWithArchive
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);

  return v2;
}

void __46__PKIDSManager__createThumbnailCacheDirectory__block_invoke(uint64_t a1, char a2, void *a3, void *a4)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ((a2 & 1) == 0)
  {
    v8 = PKLogFacilityTypeGetObject(9uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v6;
      _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Failed to create thumbnail cache: %@", &v9, 0xCu);
    }
  }
}

@end