@interface PKContinuityPaymentService
+ (id)sharedService;
- (BOOL)canMakePaymentsWithRemoteDevices;
- (BOOL)hasRemoteDevices;
- (NSArray)remoteDevices;
- (PKContinuityPaymentService)init;
- (PKContinuityPaymentServiceDelegate)delegate;
- (void)cancelRemotePaymentRequest:(id)request completion:(id)completion;
- (void)didReceiveCancellationForRemotePaymentRequest:(id)request;
- (void)didReceivePayment:(id)payment forRemotePaymentRequest:(id)request;
- (void)didReceivePaymentClientUpdate:(id)update forRemotePaymentRequest:(id)request;
- (void)didReceivePaymentHostUpdate:(id)update forRemotePaymentRequest:(id)request;
- (void)didReceivePaymentResult:(id)result forRemotePaymentRequest:(id)request;
- (void)didReceiveUpdatedPaymentDevices:(id)devices;
- (void)presentContinuityPaymentInterfaceWithRequestIdentifier:(id)identifier completion:(id)completion;
- (void)promptDetailsForVirtualCard:(id)card showNotification:(BOOL)notification completion:(id)completion;
- (void)requestInstrumentThumbnail:(id)thumbnail forRemoteDevice:(id)device size:(CGSize)size completion:(id)completion;
- (void)sendPayment:(id)payment forRemotePaymentRequest:(id)request completion:(id)completion;
- (void)sendPaymentClientUpdate:(id)update forRemotePaymentRequest:(id)request completion:(id)completion;
- (void)sendPaymentHostUpdate:(id)update forRemotePaymentRequest:(id)request completion:(id)completion;
- (void)sendPaymentResult:(id)result forRemotePaymentRequest:(id)request completion:(id)completion;
- (void)sendPaymentSetupRequest:(id)request appDisplayName:(id)name completion:(id)completion;
- (void)sendPaymentStatus:(int64_t)status forRemotePaymentRequest:(id)request completion:(id)completion;
- (void)sendRemotePaymentRequest:(id)request completion:(id)completion;
- (void)setRemoteDevices:(id)devices;
- (void)updatePaymentDevices;
@end

@implementation PKContinuityPaymentService

+ (id)sharedService
{
  if (qword_1ED6D1B20 != -1)
  {
    dispatch_once(&qword_1ED6D1B20, &__block_literal_global_119);
  }

  v3 = _MergedGlobals_229;

  return v3;
}

void __43__PKContinuityPaymentService_sharedService__block_invoke()
{
  v0 = objc_alloc_init(PKContinuityPaymentService);
  v1 = _MergedGlobals_229;
  _MergedGlobals_229 = v0;
}

- (PKContinuityPaymentService)init
{
  v11.receiver = self;
  v11.super_class = PKContinuityPaymentService;
  v2 = [(PKContinuityPaymentService *)&v11 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.passd.paymentcontinuityservice.delegate", 0);
    delegateQueue = v2->_delegateQueue;
    v2->_delegateQueue = v3;

    v2->_remoteDeviceLock._os_unfair_lock_opaque = 0;
    v5 = [PKXPCService alloc];
    v6 = PDContinuityPaymentServiceInterface();
    v7 = PKContinuityPaymentServiceInterface();
    v8 = [(PKXPCService *)v5 initWithMachServiceName:@"com.apple.passd.payment-continuity" remoteObjectInterface:v6 exportedObjectInterface:v7 exportedObject:v2];
    remoteService = v2->_remoteService;
    v2->_remoteService = v8;
  }

  return v2;
}

- (void)updatePaymentDevices
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __50__PKContinuityPaymentService_updatePaymentDevices__block_invoke;
  v2[3] = &unk_1E79CAED8;
  v2[4] = self;
  v2[5] = a2;
  _os_activity_initiate(&dword_1AD337000, "refresh remote payment devices", OS_ACTIVITY_FLAG_DEFAULT, v2);
}

void __50__PKContinuityPaymentService_updatePaymentDevices__block_invoke(uint64_t a1)
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __50__PKContinuityPaymentService_updatePaymentDevices__block_invoke_2;
  aBlock[3] = &unk_1E79CAED8;
  v6 = *(a1 + 32);
  v2 = _Block_copy(aBlock);
  v3 = [*(a1 + 32) _remoteObjectProxyWithFailureHandler:v2];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __50__PKContinuityPaymentService_updatePaymentDevices__block_invoke_16;
  v4[3] = &unk_1E79C7D08;
  v4[4] = *(a1 + 32);
  [v3 updatePaymentDevicesWithHandler:v4];
}

void __50__PKContinuityPaymentService_updatePaymentDevices__block_invoke_2(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(9uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKContinuityService %@];", &v4, 0xCu);
  }
}

void __50__PKContinuityPaymentService_updatePaymentDevices__block_invoke_16(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = PKLogFacilityTypeGetObject(9uLL);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "Failed to discover remote payment devices", v4, 2u);
    }
  }
}

- (void)sendRemotePaymentRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __66__PKContinuityPaymentService_sendRemotePaymentRequest_completion___block_invoke;
  v11[3] = &unk_1E79C4D88;
  v11[4] = self;
  v12 = requestCopy;
  v13 = completionCopy;
  v14 = a2;
  v9 = completionCopy;
  v10 = requestCopy;
  _os_activity_initiate(&dword_1AD337000, "send remote payment request", OS_ACTIVITY_FLAG_DEFAULT, v11);
}

void __66__PKContinuityPaymentService_sendRemotePaymentRequest_completion___block_invoke(uint64_t a1)
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __66__PKContinuityPaymentService_sendRemotePaymentRequest_completion___block_invoke_2;
  aBlock[3] = &unk_1E79CAED8;
  v2 = *(a1 + 56);
  aBlock[4] = *(a1 + 32);
  aBlock[5] = v2;
  v3 = _Block_copy(aBlock);
  v4 = [*(a1 + 32) _remoteObjectProxyWithFailureHandler:v3];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__PKContinuityPaymentService_sendRemotePaymentRequest_completion___block_invoke_18;
  v7[3] = &unk_1E79C4860;
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7[4] = *(a1 + 32);
  v8 = v6;
  [v4 sendRemotePaymentRequest:v5 handler:v7];
}

void __66__PKContinuityPaymentService_sendRemotePaymentRequest_completion___block_invoke_2(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(9uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKContinuityService %@];", &v4, 0xCu);
  }
}

void __66__PKContinuityPaymentService_sendRemotePaymentRequest_completion___block_invoke_18(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = PKLogFacilityTypeGetObject(9uLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "Failed to send payment request", v6, 2u);
    }
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

- (void)sendPaymentHostUpdate:(id)update forRemotePaymentRequest:(id)request completion:(id)completion
{
  updateCopy = update;
  requestCopy = request;
  completionCopy = completion;
  activity_block[0] = MEMORY[0x1E69E9820];
  activity_block[1] = 3221225472;
  activity_block[2] = __87__PKContinuityPaymentService_sendPaymentHostUpdate_forRemotePaymentRequest_completion___block_invoke;
  activity_block[3] = &unk_1E79D1F80;
  v18 = completionCopy;
  v19 = a2;
  activity_block[4] = self;
  v16 = updateCopy;
  v17 = requestCopy;
  v12 = completionCopy;
  v13 = requestCopy;
  v14 = updateCopy;
  _os_activity_initiate(&dword_1AD337000, "send remote payment request update", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

void __87__PKContinuityPaymentService_sendPaymentHostUpdate_forRemotePaymentRequest_completion___block_invoke(uint64_t a1)
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __87__PKContinuityPaymentService_sendPaymentHostUpdate_forRemotePaymentRequest_completion___block_invoke_2;
  aBlock[3] = &unk_1E79CAED8;
  v2 = *(a1 + 64);
  aBlock[4] = *(a1 + 32);
  aBlock[5] = v2;
  v3 = _Block_copy(aBlock);
  v4 = [*(a1 + 32) _remoteObjectProxyWithFailureHandler:v3];
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __87__PKContinuityPaymentService_sendPaymentHostUpdate_forRemotePaymentRequest_completion___block_invoke_19;
  v8[3] = &unk_1E79C4860;
  v7 = *(a1 + 56);
  v8[4] = *(a1 + 32);
  v9 = v7;
  [v4 sendPaymentHostUpdate:v5 forRemotePaymentRequest:v6 handler:v8];
}

void __87__PKContinuityPaymentService_sendPaymentHostUpdate_forRemotePaymentRequest_completion___block_invoke_2(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(9uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKContinuityService %@];", &v4, 0xCu);
  }
}

void __87__PKContinuityPaymentService_sendPaymentHostUpdate_forRemotePaymentRequest_completion___block_invoke_19(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = PKLogFacilityTypeGetObject(9uLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "Failed to send update payment request", v6, 2u);
    }
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

- (void)sendPaymentClientUpdate:(id)update forRemotePaymentRequest:(id)request completion:(id)completion
{
  updateCopy = update;
  requestCopy = request;
  completionCopy = completion;
  activity_block[0] = MEMORY[0x1E69E9820];
  activity_block[1] = 3221225472;
  activity_block[2] = __89__PKContinuityPaymentService_sendPaymentClientUpdate_forRemotePaymentRequest_completion___block_invoke;
  activity_block[3] = &unk_1E79D1F80;
  v18 = completionCopy;
  v19 = a2;
  activity_block[4] = self;
  v16 = updateCopy;
  v17 = requestCopy;
  v12 = completionCopy;
  v13 = requestCopy;
  v14 = updateCopy;
  _os_activity_initiate(&dword_1AD337000, "send remote payment request update response", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

void __89__PKContinuityPaymentService_sendPaymentClientUpdate_forRemotePaymentRequest_completion___block_invoke(uint64_t a1)
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __89__PKContinuityPaymentService_sendPaymentClientUpdate_forRemotePaymentRequest_completion___block_invoke_2;
  aBlock[3] = &unk_1E79CAED8;
  v2 = *(a1 + 64);
  aBlock[4] = *(a1 + 32);
  aBlock[5] = v2;
  v3 = _Block_copy(aBlock);
  v4 = [*(a1 + 32) _remoteObjectProxyWithFailureHandler:v3];
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __89__PKContinuityPaymentService_sendPaymentClientUpdate_forRemotePaymentRequest_completion___block_invoke_20;
  v8[3] = &unk_1E79C4860;
  v7 = *(a1 + 56);
  v8[4] = *(a1 + 32);
  v9 = v7;
  [v4 sendPaymentClientUpdate:v5 forRemotePaymentRequest:v6 handler:v8];
}

void __89__PKContinuityPaymentService_sendPaymentClientUpdate_forRemotePaymentRequest_completion___block_invoke_2(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(9uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKContinuityService %@];", &v4, 0xCu);
  }
}

uint64_t __89__PKContinuityPaymentService_sendPaymentClientUpdate_forRemotePaymentRequest_completion___block_invoke_20(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)sendPayment:(id)payment forRemotePaymentRequest:(id)request completion:(id)completion
{
  paymentCopy = payment;
  requestCopy = request;
  completionCopy = completion;
  activity_block[0] = MEMORY[0x1E69E9820];
  activity_block[1] = 3221225472;
  activity_block[2] = __77__PKContinuityPaymentService_sendPayment_forRemotePaymentRequest_completion___block_invoke;
  activity_block[3] = &unk_1E79D1F80;
  v18 = completionCopy;
  v19 = a2;
  activity_block[4] = self;
  v16 = paymentCopy;
  v17 = requestCopy;
  v12 = completionCopy;
  v13 = requestCopy;
  v14 = paymentCopy;
  _os_activity_initiate(&dword_1AD337000, "send remote payment", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

void __77__PKContinuityPaymentService_sendPayment_forRemotePaymentRequest_completion___block_invoke(uint64_t a1)
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __77__PKContinuityPaymentService_sendPayment_forRemotePaymentRequest_completion___block_invoke_2;
  aBlock[3] = &unk_1E79CAED8;
  v2 = *(a1 + 64);
  aBlock[4] = *(a1 + 32);
  aBlock[5] = v2;
  v3 = _Block_copy(aBlock);
  v4 = [*(a1 + 32) _remoteObjectProxyWithFailureHandler:v3];
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __77__PKContinuityPaymentService_sendPayment_forRemotePaymentRequest_completion___block_invoke_21;
  v8[3] = &unk_1E79C4860;
  v7 = *(a1 + 56);
  v8[4] = *(a1 + 32);
  v9 = v7;
  [v4 sendPayment:v5 forRemotePaymentRequest:v6 handler:v8];
}

void __77__PKContinuityPaymentService_sendPayment_forRemotePaymentRequest_completion___block_invoke_2(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(9uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKContinuityService %@];", &v4, 0xCu);
  }
}

void __77__PKContinuityPaymentService_sendPayment_forRemotePaymentRequest_completion___block_invoke_21(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = PKLogFacilityTypeGetObject(9uLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "Failed to send payment", v6, 2u);
    }
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

- (void)sendPaymentResult:(id)result forRemotePaymentRequest:(id)request completion:(id)completion
{
  resultCopy = result;
  requestCopy = request;
  completionCopy = completion;
  activity_block[0] = MEMORY[0x1E69E9820];
  activity_block[1] = 3221225472;
  activity_block[2] = __83__PKContinuityPaymentService_sendPaymentResult_forRemotePaymentRequest_completion___block_invoke;
  activity_block[3] = &unk_1E79D1F80;
  v18 = completionCopy;
  v19 = a2;
  activity_block[4] = self;
  v16 = resultCopy;
  v17 = requestCopy;
  v12 = completionCopy;
  v13 = requestCopy;
  v14 = resultCopy;
  _os_activity_initiate(&dword_1AD337000, "send payment result", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

void __83__PKContinuityPaymentService_sendPaymentResult_forRemotePaymentRequest_completion___block_invoke(uint64_t a1)
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __83__PKContinuityPaymentService_sendPaymentResult_forRemotePaymentRequest_completion___block_invoke_2;
  aBlock[3] = &unk_1E79CAED8;
  v2 = *(a1 + 64);
  aBlock[4] = *(a1 + 32);
  aBlock[5] = v2;
  v3 = _Block_copy(aBlock);
  v4 = [*(a1 + 32) _remoteObjectProxyWithFailureHandler:v3];
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __83__PKContinuityPaymentService_sendPaymentResult_forRemotePaymentRequest_completion___block_invoke_22;
  v8[3] = &unk_1E79C4860;
  v7 = *(a1 + 56);
  v8[4] = *(a1 + 32);
  v9 = v7;
  [v4 sendPaymentResult:v5 forRemotePaymentRequest:v6 handler:v8];
}

void __83__PKContinuityPaymentService_sendPaymentResult_forRemotePaymentRequest_completion___block_invoke_2(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(9uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKContinuityService %@];", &v4, 0xCu);
  }
}

uint64_t __83__PKContinuityPaymentService_sendPaymentResult_forRemotePaymentRequest_completion___block_invoke_22(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)sendPaymentStatus:(int64_t)status forRemotePaymentRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  v10 = objc_alloc_init(PKPaymentAuthorizationResult);
  [(PKPaymentAuthorizationResult *)v10 setStatus:status];
  [(PKContinuityPaymentService *)self sendPaymentResult:v10 forRemotePaymentRequest:requestCopy completion:completionCopy];
}

- (void)requestInstrumentThumbnail:(id)thumbnail forRemoteDevice:(id)device size:(CGSize)size completion:(id)completion
{
  height = size.height;
  width = size.width;
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __89__PKContinuityPaymentService_requestInstrumentThumbnail_forRemoteDevice_size_completion___block_invoke;
  aBlock[3] = &unk_1E79CAED8;
  aBlock[4] = self;
  aBlock[5] = a2;
  deviceCopy = device;
  thumbnailCopy = thumbnail;
  v15 = _Block_copy(aBlock);
  v16 = [(PKContinuityPaymentService *)self _remoteObjectProxyWithFailureHandler:v15];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __89__PKContinuityPaymentService_requestInstrumentThumbnail_forRemoteDevice_size_completion___block_invoke_24;
  v18[3] = &unk_1E79CB0B0;
  v18[4] = self;
  v19 = completionCopy;
  v17 = completionCopy;
  [v16 requestInstrumentThumbnail:thumbnailCopy forRemoteDevice:deviceCopy size:v18 handler:{width, height}];
}

void __89__PKContinuityPaymentService_requestInstrumentThumbnail_forRemoteDevice_size_completion___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(9uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKContinuityService %@];", &v4, 0xCu);
  }
}

void __89__PKContinuityPaymentService_requestInstrumentThumbnail_forRemoteDevice_size_completion___block_invoke_24(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if (*(a1 + 40))
  {
    v6 = PKCreateCGImage(v9);
    if (v6)
    {
      v7 = v6;
      (*(*(a1 + 40) + 16))();
      CFRelease(v7);
    }

    else
    {
      v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:0];
      (*(*(a1 + 40) + 16))();
    }
  }
}

- (void)presentContinuityPaymentInterfaceWithRequestIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __96__PKContinuityPaymentService_presentContinuityPaymentInterfaceWithRequestIdentifier_completion___block_invoke;
  v11[3] = &unk_1E79C4D88;
  v11[4] = self;
  v12 = identifierCopy;
  v13 = completionCopy;
  v14 = a2;
  v9 = completionCopy;
  v10 = identifierCopy;
  _os_activity_initiate(&dword_1AD337000, "present remote payment interface", OS_ACTIVITY_FLAG_DEFAULT, v11);
}

void __96__PKContinuityPaymentService_presentContinuityPaymentInterfaceWithRequestIdentifier_completion___block_invoke(uint64_t a1)
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __96__PKContinuityPaymentService_presentContinuityPaymentInterfaceWithRequestIdentifier_completion___block_invoke_2;
  aBlock[3] = &unk_1E79CAED8;
  v2 = *(a1 + 56);
  aBlock[4] = *(a1 + 32);
  aBlock[5] = v2;
  v3 = _Block_copy(aBlock);
  v4 = [*(a1 + 32) _remoteObjectProxyWithFailureHandler:v3];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __96__PKContinuityPaymentService_presentContinuityPaymentInterfaceWithRequestIdentifier_completion___block_invoke_27;
  v7[3] = &unk_1E79C4860;
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7[4] = *(a1 + 32);
  v8 = v6;
  [v4 presentContinuityPaymentInterfaceWithRequestIdentifier:v5 handler:v7];
}

void __96__PKContinuityPaymentService_presentContinuityPaymentInterfaceWithRequestIdentifier_completion___block_invoke_2(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(9uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKContinuityService %@];", &v4, 0xCu);
  }
}

void __96__PKContinuityPaymentService_presentContinuityPaymentInterfaceWithRequestIdentifier_completion___block_invoke_27(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = PKLogFacilityTypeGetObject(9uLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "Failed to present interface", v6, 2u);
    }
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

- (void)cancelRemotePaymentRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __68__PKContinuityPaymentService_cancelRemotePaymentRequest_completion___block_invoke;
  v11[3] = &unk_1E79C4D88;
  v11[4] = self;
  v12 = requestCopy;
  v13 = completionCopy;
  v14 = a2;
  v9 = completionCopy;
  v10 = requestCopy;
  _os_activity_initiate(&dword_1AD337000, "cancel remote payment request", OS_ACTIVITY_FLAG_DEFAULT, v11);
}

void __68__PKContinuityPaymentService_cancelRemotePaymentRequest_completion___block_invoke(uint64_t a1)
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __68__PKContinuityPaymentService_cancelRemotePaymentRequest_completion___block_invoke_2;
  aBlock[3] = &unk_1E79CAED8;
  v2 = *(a1 + 56);
  aBlock[4] = *(a1 + 32);
  aBlock[5] = v2;
  v3 = _Block_copy(aBlock);
  v4 = [*(a1 + 32) _remoteObjectProxyWithFailureHandler:v3];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __68__PKContinuityPaymentService_cancelRemotePaymentRequest_completion___block_invoke_28;
  v7[3] = &unk_1E79C4860;
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7[4] = *(a1 + 32);
  v8 = v6;
  [v4 cancelRemotePaymentRequest:v5 handler:v7];
}

void __68__PKContinuityPaymentService_cancelRemotePaymentRequest_completion___block_invoke_2(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(9uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKContinuityService %@];", &v4, 0xCu);
  }
}

void __68__PKContinuityPaymentService_cancelRemotePaymentRequest_completion___block_invoke_28(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = PKLogFacilityTypeGetObject(9uLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "Failed to cancel request", v6, 2u);
    }
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

- (BOOL)hasRemoteDevices
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(PKContinuityPaymentService *)self _synchronousRemoteObjectProxyWithErrorHandler:0];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __46__PKContinuityPaymentService_hasRemoteDevices__block_invoke;
  v5[3] = &unk_1E79D64E8;
  v5[4] = selfCopy;
  v5[5] = &v6;
  [v3 hasRemoteDevicesWithHandler:v5];
  LOBYTE(selfCopy) = *(v7 + 24);

  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

void __46__PKContinuityPaymentService_hasRemoteDevices__block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = PKLogFacilityTypeGetObject(9uLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "Failed to retrieve registered host device status", v7, 2u);
    }
  }

  *(*(*(a1 + 40) + 8) + 24) = a2;
}

- (BOOL)canMakePaymentsWithRemoteDevices
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = [(PKContinuityPaymentService *)self _synchronousRemoteObjectProxyWithErrorHandler:0];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __62__PKContinuityPaymentService_canMakePaymentsWithRemoteDevices__block_invoke;
  v5[3] = &unk_1E79D6510;
  v5[4] = &v6;
  [v2 canMakePaymentsWithRemoteDevicesWithHandler:v5];
  v3 = *(v7 + 24);

  _Block_object_dispose(&v6, 8);
  return v3;
}

void __62__PKContinuityPaymentService_canMakePaymentsWithRemoteDevices__block_invoke(uint64_t a1, char a2, void *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = PKLogFacilityTypeGetObject(9uLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "Failed to retrieve registered host device status: %@", &v7, 0xCu);
    }
  }

  *(*(*(a1 + 32) + 8) + 24) = a2;
}

- (NSArray)remoteDevices
{
  os_unfair_lock_lock(&self->_remoteDeviceLock);
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__38;
  v12 = __Block_byref_object_dispose__38;
  v13 = [(NSArray *)self->_remoteDevices copy];
  os_unfair_lock_unlock(&self->_remoteDeviceLock);
  v3 = v9[5];
  if (!v3)
  {
    v4 = [(PKContinuityPaymentService *)self _synchronousRemoteObjectProxyWithErrorHandler:0];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __43__PKContinuityPaymentService_remoteDevices__block_invoke;
    v7[3] = &unk_1E79D6538;
    v7[4] = self;
    v7[5] = &v8;
    [v4 fetchRemoteDevicesWithHandler:v7];
    [(PKContinuityPaymentService *)self setRemoteDevices:v9[5]];

    v3 = v9[5];
  }

  v5 = v3;
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __43__PKContinuityPaymentService_remoteDevices__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = PKLogFacilityTypeGetObject(9uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "Failed to retrieve remote devices", v10, 2u);
    }
  }

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;
}

- (void)setRemoteDevices:(id)devices
{
  devicesCopy = devices;
  os_unfair_lock_lock(&self->_remoteDeviceLock);
  v5 = [devicesCopy copy];

  remoteDevices = self->_remoteDevices;
  self->_remoteDevices = v5;

  os_unfair_lock_unlock(&self->_remoteDeviceLock);
}

- (void)sendPaymentSetupRequest:(id)request appDisplayName:(id)name completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __80__PKContinuityPaymentService_sendPaymentSetupRequest_appDisplayName_completion___block_invoke;
  aBlock[3] = &unk_1E79CAED8;
  aBlock[4] = self;
  aBlock[5] = a2;
  nameCopy = name;
  requestCopy = request;
  v12 = _Block_copy(aBlock);
  v13 = [(PKContinuityPaymentService *)self _remoteObjectProxyWithFailureHandler:v12];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __80__PKContinuityPaymentService_sendPaymentSetupRequest_appDisplayName_completion___block_invoke_31;
  v15[3] = &unk_1E79C4860;
  v15[4] = self;
  v16 = completionCopy;
  v14 = completionCopy;
  [v13 sendPaymentSetupRequest:requestCopy appDisplayName:nameCopy handler:v15];
}

void __80__PKContinuityPaymentService_sendPaymentSetupRequest_appDisplayName_completion___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(9uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKContinuityService %@];", &v4, 0xCu);
  }
}

void __80__PKContinuityPaymentService_sendPaymentSetupRequest_appDisplayName_completion___block_invoke_31(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = PKLogFacilityTypeGetObject(9uLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [v3 description];
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "Failed to send payment setup request: %@", &v7, 0xCu);
    }
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v3);
  }
}

- (void)promptDetailsForVirtualCard:(id)card showNotification:(BOOL)notification completion:(id)completion
{
  cardCopy = card;
  completionCopy = completion;
  activity_block[0] = MEMORY[0x1E69E9820];
  activity_block[1] = 3221225472;
  activity_block[2] = __86__PKContinuityPaymentService_promptDetailsForVirtualCard_showNotification_completion___block_invoke;
  activity_block[3] = &unk_1E79CB2B8;
  activity_block[4] = self;
  v14 = cardCopy;
  notificationCopy = notification;
  v15 = completionCopy;
  v16 = a2;
  v11 = completionCopy;
  v12 = cardCopy;
  _os_activity_initiate(&dword_1AD337000, "prompt details for virtual card", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

void __86__PKContinuityPaymentService_promptDetailsForVirtualCard_showNotification_completion___block_invoke(uint64_t a1)
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __86__PKContinuityPaymentService_promptDetailsForVirtualCard_showNotification_completion___block_invoke_2;
  aBlock[3] = &unk_1E79CAED8;
  v2 = *(a1 + 56);
  aBlock[4] = *(a1 + 32);
  aBlock[5] = v2;
  v3 = _Block_copy(aBlock);
  v4 = [*(a1 + 32) _remoteObjectProxyWithFailureHandler:v3];
  v5 = *(a1 + 64);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __86__PKContinuityPaymentService_promptDetailsForVirtualCard_showNotification_completion___block_invoke_32;
  v8[3] = &unk_1E79C4860;
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8[4] = *(a1 + 32);
  v9 = v7;
  [v4 promptDetailsForVirtualCard:v6 showNotification:v5 handler:v8];
}

void __86__PKContinuityPaymentService_promptDetailsForVirtualCard_showNotification_completion___block_invoke_2(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(9uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKContinuityService %@];", &v4, 0xCu);
  }
}

void __86__PKContinuityPaymentService_promptDetailsForVirtualCard_showNotification_completion___block_invoke_32(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = PKLogFacilityTypeGetObject(9uLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [v3 description];
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "Failed to prompt details for virtual card: %@", &v7, 0xCu);
    }
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v3);
  }
}

- (void)didReceiveUpdatedPaymentDevices:(id)devices
{
  devicesCopy = devices;
  [(PKContinuityPaymentService *)self setRemoteDevices:?];
  delegate = [(PKContinuityPaymentService *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(PKContinuityPaymentService *)self delegate];
    [delegate2 didReceiveUpdatedPaymentDevices:devicesCopy];
  }
}

- (void)didReceivePaymentHostUpdate:(id)update forRemotePaymentRequest:(id)request
{
  updateCopy = update;
  requestCopy = request;
  delegate = [(PKContinuityPaymentService *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(PKContinuityPaymentService *)self delegate];
    [delegate2 didReceivePaymentHostUpdate:updateCopy forRemotePaymentRequest:requestCopy];
  }
}

- (void)didReceivePaymentClientUpdate:(id)update forRemotePaymentRequest:(id)request
{
  updateCopy = update;
  requestCopy = request;
  delegate = [(PKContinuityPaymentService *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(PKContinuityPaymentService *)self delegate];
    [delegate2 didReceivePaymentClientUpdate:updateCopy forRemotePaymentRequest:requestCopy];
  }
}

- (void)didReceivePayment:(id)payment forRemotePaymentRequest:(id)request
{
  paymentCopy = payment;
  requestCopy = request;
  delegate = [(PKContinuityPaymentService *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(PKContinuityPaymentService *)self delegate];
    [delegate2 didReceivePayment:paymentCopy forRemotePaymentRequest:requestCopy];
  }
}

- (void)didReceivePaymentResult:(id)result forRemotePaymentRequest:(id)request
{
  resultCopy = result;
  requestCopy = request;
  delegate = [(PKContinuityPaymentService *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(PKContinuityPaymentService *)self delegate];
    [delegate2 didReceivePaymentResult:resultCopy forRemotePaymentRequest:requestCopy];
  }
}

- (void)didReceiveCancellationForRemotePaymentRequest:(id)request
{
  requestCopy = request;
  delegate = [(PKContinuityPaymentService *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(PKContinuityPaymentService *)self delegate];
    [delegate2 didReceiveCancellationForRemotePaymentRequest:requestCopy];
  }
}

- (PKContinuityPaymentServiceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end