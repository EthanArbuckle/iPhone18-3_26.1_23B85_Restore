@interface PKDeviceRegistrationService
+ (id)sharedInstance;
- (PKDeviceRegistrationService)init;
- (void)dealloc;
- (void)performDeviceRegistrationForReason:(id)a3 brokerURL:(id)a4 actionType:(int64_t)a5 completion:(id)a6;
- (void)performDeviceRegistrationReturningContextForReason:(id)a3 brokerURL:(id)a4 actionType:(int64_t)a5 completion:(id)a6;
- (void)performDeviceRegistrationWithCompletion:(id)a3;
- (void)performRegistrationForMemberOfRegions:(id)a3 withReason:(id)a4 completion:(id)a5;
- (void)performRegistrationForRegion:(id)a3 withReason:(id)a4 completion:(id)a5;
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

- (void)performDeviceRegistrationWithCompletion:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __71__PKDeviceRegistrationService_performDeviceRegistrationWithCompletion___block_invoke;
  v6[3] = &unk_1E79D62F0;
  v7 = v4;
  v5 = v4;
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

- (void)performDeviceRegistrationForReason:(id)a3 brokerURL:(id)a4 actionType:(int64_t)a5 completion:(id)a6
{
  v10 = a6;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __98__PKDeviceRegistrationService_performDeviceRegistrationForReason_brokerURL_actionType_completion___block_invoke;
  v12[3] = &unk_1E79D62F0;
  v13 = v10;
  v11 = v10;
  [(PKDeviceRegistrationService *)self performDeviceRegistrationReturningContextForReason:a3 brokerURL:a4 actionType:a5 completion:v12];
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

- (void)performRegistrationForMemberOfRegions:(id)a3 withReason:(id)a4 completion:(id)a5
{
  v9 = a5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __91__PKDeviceRegistrationService_performRegistrationForMemberOfRegions_withReason_completion___block_invoke;
  aBlock[3] = &unk_1E79C4EA0;
  v16 = v9;
  v17 = a2;
  aBlock[4] = self;
  v10 = v9;
  v11 = a4;
  v12 = a3;
  v13 = _Block_copy(aBlock);
  v14 = [(PKDeviceRegistrationService *)self _remoteObjectProxyWithFailureHandler:v13];
  [v14 performRegistrationForMemberOfRegions:v12 withReason:v11 completion:v10];
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

- (void)performRegistrationForRegion:(id)a3 withReason:(id)a4 completion:(id)a5
{
  v9 = a5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __82__PKDeviceRegistrationService_performRegistrationForRegion_withReason_completion___block_invoke;
  aBlock[3] = &unk_1E79C4EA0;
  v16 = v9;
  v17 = a2;
  aBlock[4] = self;
  v10 = v9;
  v11 = a4;
  v12 = a3;
  v13 = _Block_copy(aBlock);
  v14 = [(PKDeviceRegistrationService *)self _remoteObjectProxyWithFailureHandler:v13];
  [v14 performRegistrationForRegion:v12 withReason:v11 completion:v10];
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

- (void)performDeviceRegistrationReturningContextForReason:(id)a3 brokerURL:(id)a4 actionType:(int64_t)a5 completion:(id)a6
{
  v11 = a6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __114__PKDeviceRegistrationService_performDeviceRegistrationReturningContextForReason_brokerURL_actionType_completion___block_invoke;
  aBlock[3] = &unk_1E79C4EA0;
  v18 = v11;
  v19 = a2;
  aBlock[4] = self;
  v12 = v11;
  v13 = a4;
  v14 = a3;
  v15 = _Block_copy(aBlock);
  v16 = [(PKDeviceRegistrationService *)self _remoteObjectProxyWithFailureHandler:v15];
  [v16 performDeviceRegistrationReturningContextForReason:v14 brokerURL:v13 actionType:a5 completion:v12];
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