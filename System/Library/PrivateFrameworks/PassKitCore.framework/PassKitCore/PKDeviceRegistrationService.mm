@interface PKDeviceRegistrationService
+ (id)sharedInstance;
- (PKDeviceRegistrationService)init;
- (void)dealloc;
- (void)performDeviceRegistrationForReason:(id)reason brokerURL:(id)l actionType:(int64_t)type completion:(id)completion;
- (void)performDeviceRegistrationReturningContextForReason:(id)reason brokerURL:(id)l actionType:(int64_t)type completion:(id)completion;
- (void)performDeviceRegistrationWithCompletion:(id)completion;
- (void)performRegistrationForMemberOfRegions:(id)regions withReason:(id)reason completion:(id)completion;
- (void)performRegistrationForRegion:(id)region withReason:(id)reason completion:(id)completion;
@end

@implementation PKDeviceRegistrationService

+ (id)sharedInstance
{
  if (qword_1ED6D1B10 != -1)
  {
    dispatch_once(&qword_1ED6D1B10, &__block_literal_global_118);
  }

  v3 = _MergedGlobals_228;

  return v3;
}

void __45__PKDeviceRegistrationService_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(PKDeviceRegistrationService);
  v1 = _MergedGlobals_228;
  _MergedGlobals_228 = v0;
}

- (PKDeviceRegistrationService)init
{
  v8.receiver = self;
  v8.super_class = PKDeviceRegistrationService;
  v2 = [(PKDeviceRegistrationService *)&v8 init];
  if (v2)
  {
    v3 = [PKXPCService alloc];
    v4 = PDDeviceRegistrationServiceInterface();
    v5 = [(PKXPCService *)v3 initWithMachServiceName:@"com.apple.passd.device-registration" remoteObjectInterface:v4 exportedObjectInterface:0 exportedObject:v2];
    remoteService = v2->_remoteService;
    v2->_remoteService = v5;
  }

  return v2;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = PKDeviceRegistrationService;
  [(PKDeviceRegistrationService *)&v2 dealloc];
}

- (void)performDeviceRegistrationWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __71__PKDeviceRegistrationService_performDeviceRegistrationWithCompletion___block_invoke;
  v6[3] = &unk_1E79D62F0;
  v7 = completionCopy;
  v5 = completionCopy;
  [(PKDeviceRegistrationService *)self performDeviceRegistrationReturningContextForReason:@"default" brokerURL:0 actionType:0 completion:v6];
}

uint64_t __71__PKDeviceRegistrationService_performDeviceRegistrationWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)performDeviceRegistrationForReason:(id)reason brokerURL:(id)l actionType:(int64_t)type completion:(id)completion
{
  completionCopy = completion;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __98__PKDeviceRegistrationService_performDeviceRegistrationForReason_brokerURL_actionType_completion___block_invoke;
  v12[3] = &unk_1E79D62F0;
  v13 = completionCopy;
  v11 = completionCopy;
  [(PKDeviceRegistrationService *)self performDeviceRegistrationReturningContextForReason:reason brokerURL:l actionType:type completion:v12];
}

uint64_t __98__PKDeviceRegistrationService_performDeviceRegistrationForReason_brokerURL_actionType_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2, a4);
  }

  return result;
}

- (void)performRegistrationForMemberOfRegions:(id)regions withReason:(id)reason completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __91__PKDeviceRegistrationService_performRegistrationForMemberOfRegions_withReason_completion___block_invoke;
  aBlock[3] = &unk_1E79C4EA0;
  v16 = completionCopy;
  v17 = a2;
  aBlock[4] = self;
  v10 = completionCopy;
  reasonCopy = reason;
  regionsCopy = regions;
  v13 = _Block_copy(aBlock);
  v14 = [(PKDeviceRegistrationService *)self _remoteObjectProxyWithFailureHandler:v13];
  [v14 performRegistrationForMemberOfRegions:regionsCopy withReason:reasonCopy completion:v10];
}

void __91__PKDeviceRegistrationService_performRegistrationForMemberOfRegions_withReason_completion___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKDeviceRegistrationService %@];", &v6, 0xCu);
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = PKDisplayableErrorForCommonType(0, 0);
    (*(v4 + 16))(v4, 1, 0, v5);
  }
}

- (void)performRegistrationForRegion:(id)region withReason:(id)reason completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __82__PKDeviceRegistrationService_performRegistrationForRegion_withReason_completion___block_invoke;
  aBlock[3] = &unk_1E79C4EA0;
  v16 = completionCopy;
  v17 = a2;
  aBlock[4] = self;
  v10 = completionCopy;
  reasonCopy = reason;
  regionCopy = region;
  v13 = _Block_copy(aBlock);
  v14 = [(PKDeviceRegistrationService *)self _remoteObjectProxyWithFailureHandler:v13];
  [v14 performRegistrationForRegion:regionCopy withReason:reasonCopy completion:v10];
}

void __82__PKDeviceRegistrationService_performRegistrationForRegion_withReason_completion___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKDeviceRegistrationService %@];", &v6, 0xCu);
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = PKDisplayableErrorForCommonType(0, 0);
    (*(v4 + 16))(v4, 1, 0, v5);
  }
}

- (void)performDeviceRegistrationReturningContextForReason:(id)reason brokerURL:(id)l actionType:(int64_t)type completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __114__PKDeviceRegistrationService_performDeviceRegistrationReturningContextForReason_brokerURL_actionType_completion___block_invoke;
  aBlock[3] = &unk_1E79C4EA0;
  v18 = completionCopy;
  v19 = a2;
  aBlock[4] = self;
  v12 = completionCopy;
  lCopy = l;
  reasonCopy = reason;
  v15 = _Block_copy(aBlock);
  v16 = [(PKDeviceRegistrationService *)self _remoteObjectProxyWithFailureHandler:v15];
  [v16 performDeviceRegistrationReturningContextForReason:reasonCopy brokerURL:lCopy actionType:type completion:v12];
}

void __114__PKDeviceRegistrationService_performDeviceRegistrationReturningContextForReason_brokerURL_actionType_completion___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKDeviceRegistrationService %@];", &v6, 0xCu);
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = PKDisplayableErrorForCommonType(0, 0);
    (*(v4 + 16))(v4, 1, 0, v5);
  }
}

@end