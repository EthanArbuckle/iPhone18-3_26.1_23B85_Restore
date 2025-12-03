@interface PKContinuityPaymentCoordinator
- (BOOL)isAwaitingReply;
- (PKContinuityPaymentCoordinator)initWithContinuityPaymentService:(id)service;
- (PKContinuityPaymentCoordinatorDelegate)delegate;
- (PKRemotePaymentRequest)currentRemotePaymentRequest;
- (double)updatePaymentDeviceTimeout;
- (void)_deviceUpdateTimerDidTimeout;
- (void)_deviceUpdateTotalTimerDidTimeout;
- (void)_queue_sendPaymentResult:(id)result completion:(id)completion;
- (void)_resetRequest;
- (void)_send_didReceiveCancellation;
- (void)_send_didReceivePayment:(id)payment;
- (void)_send_didReceiveUpdatedPaymentDevice:(id)device;
- (void)_send_didTimeoutTotalUpdatePaymentDevices;
- (void)_send_didTimeoutUpdatePaymentDevices;
- (void)cancelRemotePaymentRequestWithCompletion:(id)completion;
- (void)dealloc;
- (void)didReceiveCancellationForRemotePaymentRequest:(id)request;
- (void)didReceivePayment:(id)payment forRemotePaymentRequest:(id)request;
- (void)didReceiveUpdatedPaymentDevices:(id)devices;
- (void)sendPaymentClientUpdate:(id)update completion:(id)completion;
- (void)sendPaymentResult:(id)result completion:(id)completion;
- (void)sendRemotePaymentRequest:(id)request completion:(id)completion;
- (void)setDelegate:(id)delegate;
- (void)setUpdatePaymentDeviceTimeout:(double)timeout;
- (void)updatePaymentDevices;
@end

@implementation PKContinuityPaymentCoordinator

- (PKContinuityPaymentCoordinator)initWithContinuityPaymentService:(id)service
{
  serviceCopy = service;
  v25.receiver = self;
  v25.super_class = PKContinuityPaymentCoordinator;
  v6 = [(PKContinuityPaymentCoordinator *)&v25 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_continuityPaymentService, service);
    [(PKContinuityPaymentService *)v7->_continuityPaymentService setDelegate:v7];
    v8 = dispatch_queue_create("com.apple.PassKit.PKContinuityPaymentCoordinator.internal", 0);
    internalQueue = v7->_internalQueue;
    v7->_internalQueue = v8;

    v10 = dispatch_queue_create("com.apple.PassKit.PKContinuityPaymentCoordinator.callback", 0);
    callbackQueue = v7->_callbackQueue;
    v7->_callbackQueue = v10;

    v12 = MEMORY[0x1E69E9710];
    v13 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v7->_internalQueue);
    deviceUpdateTimeoutTimer = v7->_deviceUpdateTimeoutTimer;
    v7->_deviceUpdateTimeoutTimer = v13;

    v15 = dispatch_source_create(v12, 0, 0, v7->_internalQueue);
    deviceTotalUpdateTimeoutTimer = v7->_deviceTotalUpdateTimeoutTimer;
    v7->_deviceTotalUpdateTimeoutTimer = v15;

    v7->_updatePaymentDeviceTimeout = 10.0;
    objc_initWeak(&location, v7);
    v17 = v7->_deviceUpdateTimeoutTimer;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __67__PKContinuityPaymentCoordinator_initWithContinuityPaymentService___block_invoke;
    handler[3] = &unk_1E79C9D80;
    objc_copyWeak(&v23, &location);
    dispatch_source_set_event_handler(v17, handler);
    v18 = v7->_deviceTotalUpdateTimeoutTimer;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __67__PKContinuityPaymentCoordinator_initWithContinuityPaymentService___block_invoke_2;
    v20[3] = &unk_1E79C9D80;
    objc_copyWeak(&v21, &location);
    dispatch_source_set_event_handler(v18, v20);
    dispatch_resume(v7->_deviceUpdateTimeoutTimer);
    dispatch_resume(v7->_deviceTotalUpdateTimeoutTimer);
    objc_destroyWeak(&v21);
    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
  }

  return v7;
}

void __67__PKContinuityPaymentCoordinator_initWithContinuityPaymentService___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _deviceUpdateTimerDidTimeout];

  objc_autoreleasePoolPop(v2);
}

void __67__PKContinuityPaymentCoordinator_initWithContinuityPaymentService___block_invoke_2(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _deviceUpdateTotalTimerDidTimeout];

  objc_autoreleasePoolPop(v2);
}

- (void)dealloc
{
  dispatch_source_cancel(self->_deviceUpdateTimeoutTimer);
  dispatch_source_cancel(self->_deviceTotalUpdateTimeoutTimer);
  [(PKContinuityPaymentService *)self->_continuityPaymentService setDelegate:0];
  v3.receiver = self;
  v3.super_class = PKContinuityPaymentCoordinator;
  [(PKContinuityPaymentCoordinator *)&v3 dealloc];
}

- (PKContinuityPaymentCoordinatorDelegate)delegate
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__76;
  v10 = __Block_byref_object_dispose__76;
  v11 = 0;
  internalQueue = self->_internalQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __42__PKContinuityPaymentCoordinator_delegate__block_invoke;
  v5[3] = &unk_1E79C8A88;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(internalQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __42__PKContinuityPaymentCoordinator_delegate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 80));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = WeakRetained;
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__PKContinuityPaymentCoordinator_setDelegate___block_invoke;
  v7[3] = &unk_1E79C4DD8;
  v7[4] = self;
  v8 = delegateCopy;
  v6 = delegateCopy;
  dispatch_sync(internalQueue, v7);
}

- (double)updatePaymentDeviceTimeout
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  internalQueue = self->_internalQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __60__PKContinuityPaymentCoordinator_updatePaymentDeviceTimeout__block_invoke;
  v5[3] = &unk_1E79C8A88;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(internalQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

double __60__PKContinuityPaymentCoordinator_updatePaymentDeviceTimeout__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 88);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)setUpdatePaymentDeviceTimeout:(double)timeout
{
  internalQueue = self->_internalQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __64__PKContinuityPaymentCoordinator_setUpdatePaymentDeviceTimeout___block_invoke;
  v4[3] = &unk_1E79CAED8;
  v4[4] = self;
  *&v4[5] = timeout;
  dispatch_sync(internalQueue, v4);
}

double __64__PKContinuityPaymentCoordinator_setUpdatePaymentDeviceTimeout___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  *(*(a1 + 32) + 88) = result;
  return result;
}

- (PKRemotePaymentRequest)currentRemotePaymentRequest
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__76;
  v10 = __Block_byref_object_dispose__76;
  v11 = 0;
  internalQueue = self->_internalQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __61__PKContinuityPaymentCoordinator_currentRemotePaymentRequest__block_invoke;
  v5[3] = &unk_1E79C8A88;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(internalQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (BOOL)isAwaitingReply
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  internalQueue = self->_internalQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49__PKContinuityPaymentCoordinator_isAwaitingReply__block_invoke;
  v5[3] = &unk_1E79C8A88;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(internalQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)updatePaymentDevices
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__PKContinuityPaymentCoordinator_updatePaymentDevices__block_invoke;
  block[3] = &unk_1E79C4E28;
  block[4] = self;
  dispatch_sync(internalQueue, block);
}

uint64_t __54__PKContinuityPaymentCoordinator_updatePaymentDevices__block_invoke(uint64_t result)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = *(result + 32);
  if ((*(v1 + 48) & 1) == 0)
  {
    v2 = result;
    *(v1 + 48) = 1;
    v3 = *(*(result + 32) + 88);
    v4 = PKLogFacilityTypeGetObject(9uLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 134217984;
      v10 = v3;
      _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "Updating remote payment devices with timeout: %g", &v9, 0xCu);
    }

    v5 = *(*(v2 + 32) + 32);
    v6 = dispatch_time(0, (v3 * 1000000000.0));
    dispatch_source_set_timer(v5, v6, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
    v7 = *(*(v2 + 32) + 40);
    v8 = dispatch_time(0, (v3 * 1000000000.0));
    dispatch_source_set_timer(v7, v8, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
    return [*(*(v2 + 32) + 8) updatePaymentDevices];
  }

  return result;
}

- (void)sendRemotePaymentRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x2020000000;
  v25 = 0;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x3032000000;
  v22[3] = __Block_byref_object_copy__76;
  v22[4] = __Block_byref_object_dispose__76;
  v23 = 0;
  v8 = dispatch_group_create();
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__PKContinuityPaymentCoordinator_sendRemotePaymentRequest_completion___block_invoke;
  block[3] = &unk_1E79E12D8;
  block[4] = self;
  v10 = requestCopy;
  v18 = v10;
  v11 = v8;
  v19 = v11;
  v20 = v22;
  v21 = v24;
  dispatch_sync(internalQueue, block);
  if (completionCopy)
  {
    callbackQueue = self->_callbackQueue;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __70__PKContinuityPaymentCoordinator_sendRemotePaymentRequest_completion___block_invoke_23;
    v13[3] = &unk_1E79CBE88;
    v14 = completionCopy;
    v15 = v24;
    v16 = v22;
    dispatch_group_notify(v11, callbackQueue, v13);
  }

  _Block_object_dispose(v22, 8);
  _Block_object_dispose(v24, 8);
}

void __70__PKContinuityPaymentCoordinator_sendRemotePaymentRequest_completion___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 32) + 56))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Request already sent"];
  }

  v2 = [*(a1 + 40) identifier];
  v3 = [*(a1 + 40) device];
  v4 = [v3 deviceName];

  v5 = PKLogFacilityTypeGetObject(9uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [*(a1 + 40) identifier];
    *buf = 138412546;
    v21 = v4;
    v22 = 2112;
    v23 = v6;
    _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Sending remote payment request to '%@' with identifier: %@", buf, 0x16u);
  }

  objc_storeStrong((*(a1 + 32) + 56), *(a1 + 40));
  ++*(*(a1 + 32) + 64);
  dispatch_group_enter(*(a1 + 48));
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(v7 + 8);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __70__PKContinuityPaymentCoordinator_sendRemotePaymentRequest_completion___block_invoke_21;
  v15[3] = &unk_1E79E12B0;
  v15[4] = v7;
  v16 = v2;
  v10 = v8;
  v11 = *(a1 + 64);
  v17 = v10;
  v19 = v11;
  v14 = *(a1 + 48);
  v12 = v14;
  v18 = v14;
  v13 = v2;
  [v9 sendRemotePaymentRequest:v10 completion:v15];
}

void __70__PKContinuityPaymentCoordinator_sendRemotePaymentRequest_completion___block_invoke_21(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 16);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __70__PKContinuityPaymentCoordinator_sendRemotePaymentRequest_completion___block_invoke_2;
  v8[3] = &unk_1E79E1288;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v9 = v5;
  v10 = v6;
  v11 = *(a1 + 48);
  v12 = v3;
  v13 = *(a1 + 64);
  v7 = v3;
  dispatch_sync(v4, v8);
  dispatch_group_leave(*(a1 + 56));
}

void __70__PKContinuityPaymentCoordinator_sendRemotePaymentRequest_completion___block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = [*(*(a1 + 40) + 56) identifier];
  v4 = [v2 isEqualToString:v3];

  v5 = PKLogFacilityTypeGetObject(9uLL);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      v7 = [*(a1 + 48) identifier];
      v8 = *(a1 + 56);
      v11 = 138412546;
      v12 = v7;
      v13 = 2112;
      v14 = v8;
      _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Received sendRemotePaymentRequest identifier %@ completion with error: %@", &v11, 0x16u);
    }

    if (*(a1 + 56))
    {
      [*(a1 + 40) _resetRequest];
    }

    else
    {
      v9 = *(*(a1 + 64) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = 0;

      ++*(*(a1 + 40) + 72);
    }
  }

  else
  {
    if (v6)
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Received sendRemotePaymentRequest completion, discarding", &v11, 2u);
    }

    *(*(*(a1 + 72) + 8) + 24) = 1;
  }
}

- (void)sendPaymentClientUpdate:(id)update completion:(id)completion
{
  updateCopy = update;
  completionCopy = completion;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x2020000000;
  v25 = 0;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x3032000000;
  v22[3] = __Block_byref_object_copy__76;
  v22[4] = __Block_byref_object_dispose__76;
  v23 = 0;
  v8 = dispatch_group_create();
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__PKContinuityPaymentCoordinator_sendPaymentClientUpdate_completion___block_invoke;
  block[3] = &unk_1E79E12D8;
  block[4] = self;
  v10 = v8;
  v18 = v10;
  v11 = updateCopy;
  v19 = v11;
  v20 = v22;
  v21 = v24;
  dispatch_sync(internalQueue, block);
  if (completionCopy)
  {
    callbackQueue = self->_callbackQueue;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __69__PKContinuityPaymentCoordinator_sendPaymentClientUpdate_completion___block_invoke_25;
    v13[3] = &unk_1E79CBE88;
    v14 = completionCopy;
    v15 = v24;
    v16 = v22;
    dispatch_group_notify(v10, callbackQueue, v13);
  }

  _Block_object_dispose(v22, 8);
  _Block_object_dispose(v24, 8);
}

void __69__PKContinuityPaymentCoordinator_sendPaymentClientUpdate_completion___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 56) device];
  v3 = [v2 deviceName];

  v4 = PKLogFacilityTypeGetObject(9uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(*(a1 + 32) + 56) identifier];
    *buf = 138412546;
    v18 = v3;
    v19 = 2112;
    v20 = v5;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "Sending payment client update to '%@' with identifier: %@", buf, 0x16u);
  }

  ++*(*(a1 + 32) + 64);
  v6 = [*(*(a1 + 32) + 56) identifier];
  dispatch_group_enter(*(a1 + 40));
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(v8 + 8);
  v10 = *(a1 + 48);
  v11 = *(v8 + 56);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __69__PKContinuityPaymentCoordinator_sendPaymentClientUpdate_completion___block_invoke_24;
  v13[3] = &unk_1E79E1300;
  v13[4] = v8;
  v14 = v6;
  v16 = *(a1 + 56);
  v15 = v7;
  v12 = v6;
  [v9 sendPaymentClientUpdate:v10 forRemotePaymentRequest:v11 completion:v13];
}

void __69__PKContinuityPaymentCoordinator_sendPaymentClientUpdate_completion___block_invoke_24(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__PKContinuityPaymentCoordinator_sendPaymentClientUpdate_completion___block_invoke_2;
  block[3] = &unk_1E79E12D8;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v9 = v5;
  v10 = v6;
  v11 = v3;
  v12 = *(a1 + 56);
  v7 = v3;
  dispatch_sync(v4, block);
  dispatch_group_leave(*(a1 + 48));
}

void __69__PKContinuityPaymentCoordinator_sendPaymentClientUpdate_completion___block_invoke_2(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = [*(*(a1 + 40) + 56) identifier];
  v4 = [v2 isEqualToString:v3];

  v5 = PKLogFacilityTypeGetObject(9uLL);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      v7 = *(a1 + 48);
      v8 = 138412290;
      v9 = v7;
      _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Received sendPaymentClientUpdate complete with error: %@", &v8, 0xCu);
    }

    objc_storeStrong((*(*(a1 + 56) + 8) + 40), *(a1 + 48));
    ++*(*(a1 + 40) + 72);
  }

  else
  {
    if (v6)
    {
      LOWORD(v8) = 0;
      _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Received sendPaymentClientUpdate completion, discarding", &v8, 2u);
    }

    *(*(*(a1 + 64) + 8) + 24) = 1;
  }
}

- (void)sendPaymentResult:(id)result completion:(id)completion
{
  resultCopy = result;
  completionCopy = completion;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__PKContinuityPaymentCoordinator_sendPaymentResult_completion___block_invoke;
  block[3] = &unk_1E79C4D60;
  block[4] = self;
  v12 = resultCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = resultCopy;
  dispatch_sync(internalQueue, block);
}

- (void)cancelRemotePaymentRequestWithCompletion:(id)completion
{
  completionCopy = completion;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __75__PKContinuityPaymentCoordinator_cancelRemotePaymentRequestWithCompletion___block_invoke;
  v7[3] = &unk_1E79C4A40;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_sync(internalQueue, v7);
}

void __75__PKContinuityPaymentCoordinator_cancelRemotePaymentRequestWithCompletion___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 56);
  v3 = [v2 device];
  v4 = [v3 deviceName];

  if (v2)
  {
    v5 = PKLogFacilityTypeGetObject(9uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [v2 identifier];
      *buf = 138412546;
      v14 = v4;
      v15 = 2112;
      v16 = v6;
      _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Sending cancel remote payment request to '%@' with identifier: %@", buf, 0x16u);
    }

    [*(a1 + 32) _resetRequest];
    v7 = *(*(a1 + 32) + 8);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __75__PKContinuityPaymentCoordinator_cancelRemotePaymentRequestWithCompletion___block_invoke_26;
    v9[3] = &unk_1E79E0050;
    v10 = v2;
    v8 = *(a1 + 40);
    v11 = *(a1 + 32);
    v12 = v8;
    [v7 cancelRemotePaymentRequest:v10 completion:v9];
  }
}

void __75__PKContinuityPaymentCoordinator_cancelRemotePaymentRequestWithCompletion___block_invoke_26(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject(9uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) identifier];
    *buf = 138412546;
    v12 = v5;
    v13 = 2112;
    v14 = v3;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "Canceled remote payment request with identifier: %@; error: %@", buf, 0x16u);
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    v7 = *(*(a1 + 40) + 24);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __75__PKContinuityPaymentCoordinator_cancelRemotePaymentRequestWithCompletion___block_invoke_27;
    v8[3] = &unk_1E79C44A0;
    v10 = v6;
    v9 = v3;
    dispatch_async(v7, v8);
  }
}

- (void)didReceiveUpdatedPaymentDevices:(id)devices
{
  devicesCopy = devices;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__PKContinuityPaymentCoordinator_didReceiveUpdatedPaymentDevices___block_invoke;
  v7[3] = &unk_1E79C4DD8;
  v7[4] = self;
  v8 = devicesCopy;
  v6 = devicesCopy;
  dispatch_sync(internalQueue, v7);
}

uint64_t __66__PKContinuityPaymentCoordinator_didReceiveUpdatedPaymentDevices___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  dispatch_source_set_timer(*(*(a1 + 32) + 32), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
  v2 = PKLogFacilityTypeGetObject(9uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 40) count];
    v4 = *(a1 + 40);
    v6 = 134218242;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "Received device update with %tu payment devices: %@", &v6, 0x16u);
  }

  return [*(a1 + 32) _send_didReceiveUpdatedPaymentDevice:*(a1 + 40)];
}

- (void)didReceivePayment:(id)payment forRemotePaymentRequest:(id)request
{
  paymentCopy = payment;
  requestCopy = request;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__PKContinuityPaymentCoordinator_didReceivePayment_forRemotePaymentRequest___block_invoke;
  block[3] = &unk_1E79C4E00;
  block[4] = self;
  v12 = requestCopy;
  v13 = paymentCopy;
  v9 = paymentCopy;
  v10 = requestCopy;
  dispatch_sync(internalQueue, block);
}

void __76__PKContinuityPaymentCoordinator_didReceivePayment_forRemotePaymentRequest___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 56) identifier];
  v3 = [*(a1 + 40) identifier];
  v4 = [v2 isEqualToString:v3];

  if (!v4)
  {
    v11 = PKLogFacilityTypeGetObject(9uLL);
    if (os_log_type_enabled(&v11->super, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [*(a1 + 40) identifier];
      v14 = 138412290;
      v15 = v12;
      _os_log_impl(&dword_1AD337000, &v11->super, OS_LOG_TYPE_DEFAULT, "Received payment for unknown payment request with identifier: %@, discarding", &v14, 0xCu);
    }

    goto LABEL_11;
  }

  v5 = *(a1 + 32);
  v6 = *(v5 + 64);
  v7 = *(v5 + 72);
  v8 = PKLogFacilityTypeGetObject(9uLL);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v6 != v7)
  {
    if (v9)
    {
      v13 = [*(a1 + 40) identifier];
      v14 = 138412290;
      v15 = v13;
      _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Received unexpected payment for request with identifier: %@, try again", &v14, 0xCu);
    }

    v11 = objc_alloc_init(PKPaymentAuthorizationResult);
    [(PKPaymentAuthorizationResult *)v11 setStatus:1000];
    [*(a1 + 32) _queue_sendPaymentResult:v11 completion:0];
LABEL_11:

    return;
  }

  if (v9)
  {
    v10 = [*(a1 + 40) identifier];
    v14 = 138412290;
    v15 = v10;
    _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Received payment for request with identifier: %@", &v14, 0xCu);
  }

  [*(a1 + 32) _send_didReceivePayment:*(a1 + 48)];
}

- (void)didReceiveCancellationForRemotePaymentRequest:(id)request
{
  requestCopy = request;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __80__PKContinuityPaymentCoordinator_didReceiveCancellationForRemotePaymentRequest___block_invoke;
  v7[3] = &unk_1E79C4DD8;
  v7[4] = self;
  v8 = requestCopy;
  v6 = requestCopy;
  dispatch_sync(internalQueue, v7);
}

void __80__PKContinuityPaymentCoordinator_didReceiveCancellationForRemotePaymentRequest___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 56) identifier];
  v3 = [*(a1 + 40) identifier];
  v4 = [v2 isEqualToString:v3];

  v5 = PKLogFacilityTypeGetObject(9uLL);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      v7 = *(a1 + 32);
      v8 = 134349056;
      v9 = v7;
      _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "PKContinuityPaymentCoordinator (%{public}p): Received cancel for current payment request; will cancel", &v8, 0xCu);
    }

    [*(a1 + 32) _send_didReceiveCancellation];
  }

  else
  {
    if (v6)
    {
      LOWORD(v8) = 0;
      _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Received cancellation for unknown payment request, discarding", &v8, 2u);
    }
  }
}

- (void)_queue_sendPaymentResult:(id)result completion:(id)completion
{
  v38 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  completionCopy = completion;
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x2020000000;
  v31 = 0;
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x3032000000;
  v28[3] = __Block_byref_object_copy__76;
  v28[4] = __Block_byref_object_dispose__76;
  v29 = 0;
  v8 = dispatch_group_create();
  v9 = PKLogFacilityTypeGetObject(9uLL);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    status = [resultCopy status];
    device = [(PKRemotePaymentRequest *)self->_currentRemotePaymentRequest device];
    deviceName = [device deviceName];
    identifier = [(PKRemotePaymentRequest *)self->_currentRemotePaymentRequest identifier];
    *buf = 134218498;
    v33 = status;
    v34 = 2112;
    v35 = deviceName;
    v36 = 2112;
    v37 = identifier;
    _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "Sending payment status %ld to '%@' for request with identifier: %@", buf, 0x20u);
  }

  currentRemotePaymentRequest = self->_currentRemotePaymentRequest;
  ++self->_messageSendCount;
  identifier2 = [(PKRemotePaymentRequest *)currentRemotePaymentRequest identifier];
  continuityPaymentService = self->_continuityPaymentService;
  v17 = self->_currentRemotePaymentRequest;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __70__PKContinuityPaymentCoordinator__queue_sendPaymentResult_completion___block_invoke;
  v24[3] = &unk_1E79E1328;
  v24[4] = self;
  v18 = identifier2;
  v25 = v18;
  v26 = v28;
  v27 = v30;
  [(PKContinuityPaymentService *)continuityPaymentService sendPaymentResult:resultCopy forRemotePaymentRequest:v17 completion:v24];
  if (completionCopy)
  {
    callbackQueue = self->_callbackQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __70__PKContinuityPaymentCoordinator__queue_sendPaymentResult_completion___block_invoke_29;
    block[3] = &unk_1E79CBE88;
    v21 = completionCopy;
    v22 = v30;
    v23 = v28;
    dispatch_group_notify(v8, callbackQueue, block);
  }

  _Block_object_dispose(v28, 8);
  _Block_object_dispose(v30, 8);
}

void __70__PKContinuityPaymentCoordinator__queue_sendPaymentResult_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__PKContinuityPaymentCoordinator__queue_sendPaymentResult_completion___block_invoke_2;
  block[3] = &unk_1E79E12D8;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v9 = v5;
  v10 = v6;
  v11 = v3;
  v12 = *(a1 + 48);
  v7 = v3;
  dispatch_sync(v4, block);
}

void __70__PKContinuityPaymentCoordinator__queue_sendPaymentResult_completion___block_invoke_2(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = [*(*(a1 + 40) + 56) identifier];
  v4 = [v2 isEqualToString:v3];

  v5 = PKLogFacilityTypeGetObject(9uLL);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      v7 = *(a1 + 48);
      v8 = 138412290;
      v9 = v7;
      _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Received sendPaymentStatus complete with error: %@", &v8, 0xCu);
    }

    ++*(*(a1 + 40) + 72);
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), *(a1 + 48));
  }

  else
  {
    if (v6)
    {
      LOWORD(v8) = 0;
      _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Received sendPaymentStatus completion, discarding", &v8, 2u);
    }

    *(*(*(a1 + 64) + 8) + 24) = 1;
  }
}

- (void)_resetRequest
{
  currentRemotePaymentRequest = self->_currentRemotePaymentRequest;
  self->_currentRemotePaymentRequest = 0;

  self->_messageSendCount = 0;
  self->_messageSendCompleteCount = 0;
}

- (void)_deviceUpdateTimerDidTimeout
{
  v3 = PKLogFacilityTypeGetObject(9uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "Continuity payment service timed out", v4, 2u);
  }

  [(PKContinuityPaymentCoordinator *)self _send_didTimeoutUpdatePaymentDevices];
}

- (void)_deviceUpdateTotalTimerDidTimeout
{
  v3 = PKLogFacilityTypeGetObject(9uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "Continuity payment service timed out - total", v4, 2u);
  }

  [(PKContinuityPaymentCoordinator *)self _send_didTimeoutTotalUpdatePaymentDevices];
}

- (void)_send_didTimeoutUpdatePaymentDevices
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  callbackQueue = self->_callbackQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __70__PKContinuityPaymentCoordinator__send_didTimeoutUpdatePaymentDevices__block_invoke;
  v6[3] = &unk_1E79C4DD8;
  v7 = WeakRetained;
  selfCopy = self;
  v5 = WeakRetained;
  dispatch_async(callbackQueue, v6);
}

- (void)_send_didTimeoutTotalUpdatePaymentDevices
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  callbackQueue = self->_callbackQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __75__PKContinuityPaymentCoordinator__send_didTimeoutTotalUpdatePaymentDevices__block_invoke;
  v6[3] = &unk_1E79C4DD8;
  v7 = WeakRetained;
  selfCopy = self;
  v5 = WeakRetained;
  dispatch_async(callbackQueue, v6);
}

void __75__PKContinuityPaymentCoordinator__send_didTimeoutTotalUpdatePaymentDevices__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [*(v2 + 8) remoteDevices];
  [v1 continuityPaymentCoordinator:v2 didTimeoutTotalWithPaymentDevices:v3];
}

- (void)_send_didReceiveUpdatedPaymentDevice:(id)device
{
  deviceCopy = device;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  callbackQueue = self->_callbackQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__PKContinuityPaymentCoordinator__send_didReceiveUpdatedPaymentDevice___block_invoke;
  block[3] = &unk_1E79C4E00;
  v10 = WeakRetained;
  selfCopy = self;
  v12 = deviceCopy;
  v7 = deviceCopy;
  v8 = WeakRetained;
  dispatch_async(callbackQueue, block);
}

- (void)_send_didReceivePayment:(id)payment
{
  paymentCopy = payment;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  callbackQueue = self->_callbackQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__PKContinuityPaymentCoordinator__send_didReceivePayment___block_invoke;
  block[3] = &unk_1E79C4E00;
  v10 = WeakRetained;
  selfCopy = self;
  v12 = paymentCopy;
  v7 = paymentCopy;
  v8 = WeakRetained;
  dispatch_async(callbackQueue, block);
}

- (void)_send_didReceiveCancellation
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  callbackQueue = self->_callbackQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __62__PKContinuityPaymentCoordinator__send_didReceiveCancellation__block_invoke;
  v6[3] = &unk_1E79C4DD8;
  v7 = WeakRetained;
  selfCopy = self;
  v5 = WeakRetained;
  dispatch_async(callbackQueue, v6);
}

@end