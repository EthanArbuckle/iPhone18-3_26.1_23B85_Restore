@interface PKSharingIDSManager
- (BOOL)_canPerformIDSMessageForSharingGroup:(unint64_t)group handleUserDetails:(id)details currentUserDetails:(id)userDetails error:(id *)error;
- (NSArray)delegates;
- (PKSharingIDSManager)init;
- (PKSharingIDSManager)initWithIDSService:(id)service;
- (PKSharingIDSManager)initWithTargetQueue:(id)queue;
- (PKSharingIDSManagerDataSource)dataSource;
- (id)_handlerConfigurationForInvitation:(id)invitation forHandle:(id)handle;
- (id)_idsIDForHandle:(id)handle;
- (id)_primaryAppleIDSharingDestination:(id)destination;
- (id)_sanitizedHande:(id)hande;
- (id)_sanitizedHandleWithFromID:(id)d;
- (id)_timeoutErrorForIdentifier:(id)identifier;
- (void)_cloudStoreZoneShareInvitationRequestInvitationData:(id)data service:(id)service account:(id)account fromID:(id)d context:(id)context;
- (void)_cloudStoreZoneShareInvitationRequestReceived:(id)received service:(id)service account:(id)account fromID:(id)d context:(id)context;
- (void)_cloudStoreZoneShareInvitationRequestRemoved:(id)removed service:(id)service account:(id)account fromID:(id)d context:(id)context;
- (void)_cloudStoreZoneShareInvitationResponseReceived:(id)received service:(id)service account:(id)account fromID:(id)d context:(id)context;
- (void)_deviceSharingCapabilitiesRequestResultReceived:(id)received service:(id)service account:(id)account fromID:(id)d context:(id)context;
- (void)_deviceSharingCapabiltiesRequestReceived:(id)received service:(id)service account:(id)account fromID:(id)d context:(id)context;
- (void)_queue_callCompletionHandlerForIdentifier:(id)identifier withError:(id)error;
- (void)_registerListeners;
- (void)_remoteRegistrationRequestReceived:(id)received service:(id)service account:(id)account fromID:(id)d context:(id)context;
- (void)_remoteRegistrationRequestResultReceived:(id)received service:(id)service account:(id)account fromID:(id)d context:(id)context;
- (void)_sendCloudStoreInvitationRequest:(id)request handleUserDetails:(id)details currentUserDetails:(id)userDetails type:(unsigned __int16)type completion:(id)completion;
- (void)_sendMessageWithProtobuf:(id)protobuf destination:(id)destination handleUserDetails:(id)details currentUserDetails:(id)userDetails completion:(id)completion;
- (void)_sharingDestinationForHandles:(id)handles completion:(id)completion;
- (void)addDelegate:(id)delegate;
- (void)dealloc;
- (void)removeCloudStoreZoneInvitation:(id)invitation forHandle:(id)handle completion:(id)completion;
- (void)removeDelegate:(id)delegate;
- (void)requestCloudStoreZoneInvitationData:(id)data forHandle:(id)handle completion:(id)completion;
- (void)sendCloudStoreZoneInvitation:(id)invitation forHandle:(id)handle invitationError:(id)error completion:(id)completion;
- (void)sendCloudStoreZoneInvitationResponse:(id)response completion:(id)completion;
- (void)sendDeviceSharingCapabilitiesRequestForHandle:(id)handle completion:(id)completion;
- (void)sendRemoteRegistrationRequest:(id)request forHandle:(id)handle completion:(id)completion;
- (void)sendRemoteRegistrationRequestResult:(unint64_t)result forHandle:(id)handle completion:(id)completion;
- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error;
- (void)service:(id)service account:(id)account identifier:(id)identifier hasBeenDeliveredWithContext:(id)context;
- (void)service:(id)service account:(id)account incomingUnhandledProtobuf:(id)protobuf fromID:(id)d context:(id)context;
@end

@implementation PKSharingIDSManager

- (PKSharingIDSManager)init
{
  v3 = [[PKIDSService alloc] initWithServiceName:@"com.apple.private.alloy.applepay.sharing"];
  v4 = [(PKSharingIDSManager *)self initWithIDSService:v3];
  if (v4)
  {
    v5 = PKLogFacilityTypeGetObject(0xAuLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Initializing IDS Sharing manager", v7, 2u);
    }
  }

  return v4;
}

- (PKSharingIDSManager)initWithTargetQueue:(id)queue
{
  queueCopy = queue;
  v5 = [(PKSharingIDSManager *)self init];
  v6 = v5;
  if (v5)
  {
    dispatch_set_target_queue(v5->_internalQueue, queueCopy);
    dispatch_set_target_queue(v6->_callbackQueue, queueCopy);
  }

  return v6;
}

- (PKSharingIDSManager)initWithIDSService:(id)service
{
  serviceCopy = service;
  v18.receiver = self;
  v18.super_class = PKSharingIDSManager;
  v6 = [(PKSharingIDSManager *)&v18 init];
  if (v6)
  {
    v7 = dispatch_queue_create("com.apple.passd.idssharingmanager.internal", 0);
    internalQueue = v6->_internalQueue;
    v6->_internalQueue = v7;

    v9 = dispatch_queue_create("com.apple.passd.idssharingmanager.callback", 0);
    callbackQueue = v6->_callbackQueue;
    v6->_callbackQueue = v9;

    objc_storeStrong(&v6->_service, service);
    v6->_delegatesLock._os_unfair_lock_opaque = 0;
    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    completionHandlers = v6->_completionHandlers;
    v6->_completionHandlers = v11;

    v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
    sharingDestinations = v6->_sharingDestinations;
    v6->_sharingDestinations = v13;

    v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
    completionTimers = v6->_completionTimers;
    v6->_completionTimers = v15;

    [(PKSharingIDSManager *)v6 _registerListeners];
    [(PKIDSService *)v6->_service addDelegate:v6];
  }

  return v6;
}

- (void)dealloc
{
  [(PKIDSService *)self->_service removeDelegate:self];
  [(PKIDSService *)self->_service unregisterListenersForTarget:self];
  v3.receiver = self;
  v3.super_class = PKSharingIDSManager;
  [(PKSharingIDSManager *)&v3 dealloc];
}

- (void)sendCloudStoreZoneInvitation:(id)invitation forHandle:(id)handle invitationError:(id)error completion:(id)completion
{
  invitationCopy = invitation;
  handleCopy = handle;
  errorCopy = error;
  completionCopy = completion;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __89__PKSharingIDSManager_sendCloudStoreZoneInvitation_forHandle_invitationError_completion___block_invoke;
  block[3] = &unk_1E79CBD70;
  block[4] = self;
  v20 = invitationCopy;
  v22 = errorCopy;
  v23 = completionCopy;
  v21 = handleCopy;
  v15 = errorCopy;
  v16 = completionCopy;
  v17 = handleCopy;
  v18 = invitationCopy;
  dispatch_async(internalQueue, block);
}

void __89__PKSharingIDSManager_sendCloudStoreZoneInvitation_forHandle_invitationError_completion___block_invoke(id *a1)
{
  v2 = [a1[4] _handlerConfigurationForInvitation:a1[5] forHandle:a1[6]];
  v3 = [v2 sharingGroup];
  WeakRetained = objc_loadWeakRetained(a1[4] + 9);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __89__PKSharingIDSManager_sendCloudStoreZoneInvitation_forHandle_invitationError_completion___block_invoke_2;
  v11[3] = &unk_1E79CBD48;
  v15 = v3;
  v10 = a1[4];
  v14 = a1[8];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  *&v8 = v6;
  *(&v8 + 1) = v7;
  *&v9 = v10;
  *(&v9 + 1) = v5;
  v12 = v9;
  v13 = v8;
  [WeakRetained handlerDetailsForConfiguration:v2 completion:v11];
}

void __89__PKSharingIDSManager_sendCloudStoreZoneInvitation_forHandle_invitationError_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(a1 + 72);
  v32[0] = 0;
  v9 = [v7 _canPerformIDSMessageForSharingGroup:v8 handleUserDetails:v5 currentUserDetails:v6 error:v32];
  v10 = v32[0];
  if (!v10 && (v9 & 1) != 0)
  {
    v11 = *(a1 + 32);
    v12 = [v5 allHandles];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __89__PKSharingIDSManager_sendCloudStoreZoneInvitation_forHandle_invitationError_completion___block_invoke_4;
    v23[3] = &unk_1E79CBD20;
    v13 = &v24;
    v14 = &v24 + 1;
    v15 = *(a1 + 40);
    v16 = *(a1 + 48);
    v28 = *(a1 + 64);
    v22 = *(a1 + 32);
    v17 = *(a1 + 56);
    *&v18 = v22;
    *(&v18 + 1) = v17;
    *&v19 = v15;
    *(&v19 + 1) = v16;
    v24 = v19;
    v25 = v18;
    v26 = v5;
    v27 = v6;
    [v11 _sharingDestinationForHandles:v12 completion:v23];

LABEL_6:
    goto LABEL_7;
  }

  v20 = *(a1 + 64);
  if (v20)
  {
    v21 = *(*(a1 + 32) + 24);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __89__PKSharingIDSManager_sendCloudStoreZoneInvitation_forHandle_invitationError_completion___block_invoke_3;
    block[3] = &unk_1E79C44A0;
    v13 = &v31;
    v31 = v20;
    v14 = &v30;
    v30 = v10;
    dispatch_async(v21, block);
    goto LABEL_6;
  }

LABEL_7:
}

void __89__PKSharingIDSManager_sendCloudStoreZoneInvitation_forHandle_invitationError_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32))
  {
    if (v3)
    {
      v5 = objc_alloc_init(PKCloudStoreZoneInvitationRequest);
      [(PKCloudStoreZoneInvitationRequest *)v5 setInvitation:*(a1 + 32)];
      [(PKCloudStoreZoneInvitationRequest *)v5 setDestination:v4];
      [(PKCloudStoreZoneInvitationRequest *)v5 setInvitationError:*(a1 + 56)];
      [*(a1 + 48) _sendCloudStoreInvitationRequest:v5 handleUserDetails:*(a1 + 64) currentUserDetails:*(a1 + 72) type:10 completion:*(a1 + 80)];
      goto LABEL_13;
    }

    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"No IDS destination defined for handle %@. Cannot send message.", *(a1 + 40)];
    v10 = PKLogFacilityTypeGetObject(0xAuLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = v5;
      _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
    }

    v11 = *(a1 + 80);
    if (v11)
    {
      v12 = *(*(a1 + 48) + 24);
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __89__PKSharingIDSManager_sendCloudStoreZoneInvitation_forHandle_invitationError_completion___block_invoke_35;
      v13[3] = &unk_1E79C44A0;
      v15 = v11;
      v14 = v5;
      dispatch_async(v12, v13);

      v9 = v15;
      goto LABEL_12;
    }
  }

  else
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"No invitation defined for handle %@. Cannot send message.", *(a1 + 40)];
    v6 = PKLogFacilityTypeGetObject(0xAuLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = v5;
      _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
    }

    v7 = *(a1 + 80);
    if (v7)
    {
      v8 = *(*(a1 + 48) + 24);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __89__PKSharingIDSManager_sendCloudStoreZoneInvitation_forHandle_invitationError_completion___block_invoke_29;
      block[3] = &unk_1E79C44A0;
      v18 = v7;
      v17 = v5;
      dispatch_async(v8, block);

      v9 = v18;
LABEL_12:
    }
  }

LABEL_13:
}

void __89__PKSharingIDSManager_sendCloudStoreZoneInvitation_forHandle_invitationError_completion___block_invoke_29(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E696ABC0];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6 = *MEMORY[0x1E696A578];
  v7[0] = v2;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v5 = [v1 errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:v4];
  (*(v3 + 16))(v3, v5);
}

void __89__PKSharingIDSManager_sendCloudStoreZoneInvitation_forHandle_invitationError_completion___block_invoke_35(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E696ABC0];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6 = *MEMORY[0x1E696A578];
  v7[0] = v2;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v5 = [v1 errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:v4];
  (*(v3 + 16))(v3, v5);
}

- (void)removeCloudStoreZoneInvitation:(id)invitation forHandle:(id)handle completion:(id)completion
{
  invitationCopy = invitation;
  handleCopy = handle;
  completionCopy = completion;
  internalQueue = self->_internalQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __75__PKSharingIDSManager_removeCloudStoreZoneInvitation_forHandle_completion___block_invoke;
  v15[3] = &unk_1E79C4EF0;
  v15[4] = self;
  v16 = invitationCopy;
  v17 = handleCopy;
  v18 = completionCopy;
  v12 = completionCopy;
  v13 = handleCopy;
  v14 = invitationCopy;
  dispatch_async(internalQueue, v15);
}

void __75__PKSharingIDSManager_removeCloudStoreZoneInvitation_forHandle_completion___block_invoke(id *a1)
{
  v2 = [a1[4] _handlerConfigurationForInvitation:a1[5] forHandle:a1[6]];
  v3 = [v2 sharingGroup];
  WeakRetained = objc_loadWeakRetained(a1[4] + 9);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __75__PKSharingIDSManager_removeCloudStoreZoneInvitation_forHandle_completion___block_invoke_2;
  v10[3] = &unk_1E79CBDC0;
  v13 = v3;
  v9 = a1[4];
  v5 = a1[7];
  v6 = a1[5];
  *&v7 = a1[6];
  *(&v7 + 1) = v5;
  *&v8 = v9;
  *(&v8 + 1) = v6;
  v11 = v8;
  v12 = v7;
  [WeakRetained handlerDetailsForConfiguration:v2 completion:v10];
}

void __75__PKSharingIDSManager_removeCloudStoreZoneInvitation_forHandle_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(a1 + 64);
  v28 = 0;
  v9 = [v7 _canPerformIDSMessageForSharingGroup:v8 handleUserDetails:v5 currentUserDetails:v6 error:&v28];
  v10 = v28;
  if (!v10 && (v9 & 1) != 0)
  {
    v11 = *(a1 + 32);
    v12 = [v5 allHandles];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __75__PKSharingIDSManager_removeCloudStoreZoneInvitation_forHandle_completion___block_invoke_4;
    v19[3] = &unk_1E79CBD98;
    v13 = &v20;
    v20 = *(a1 + 40);
    v14 = v21;
    v21[0] = *(a1 + 48);
    v15 = *(a1 + 56);
    v16 = *(a1 + 32);
    v24 = v15;
    v21[1] = v16;
    v22 = v5;
    v23 = v6;
    [v11 _sharingDestinationForHandles:v12 completion:v19];

LABEL_6:
    goto LABEL_7;
  }

  v17 = *(a1 + 56);
  if (v17)
  {
    v18 = *(*(a1 + 32) + 24);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __75__PKSharingIDSManager_removeCloudStoreZoneInvitation_forHandle_completion___block_invoke_3;
    block[3] = &unk_1E79C44A0;
    v13 = &v27;
    v27 = v17;
    v14 = &v26;
    v26 = v10;
    dispatch_async(v18, block);
    goto LABEL_6;
  }

LABEL_7:
}

void __75__PKSharingIDSManager_removeCloudStoreZoneInvitation_forHandle_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32))
  {
    if (v3)
    {
      v5 = objc_alloc_init(PKCloudStoreZoneInvitationRequest);
      [(PKCloudStoreZoneInvitationRequest *)v5 setInvitation:*(a1 + 32)];
      [(PKCloudStoreZoneInvitationRequest *)v5 setDestination:v4];
      [*(a1 + 48) _sendCloudStoreInvitationRequest:v5 handleUserDetails:*(a1 + 56) currentUserDetails:*(a1 + 64) type:11 completion:*(a1 + 72)];
      goto LABEL_13;
    }

    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"No IDS destination defined for handle %@. Cannot send message.", *(a1 + 40)];
    v10 = PKLogFacilityTypeGetObject(0xAuLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = v5;
      _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
    }

    v11 = *(a1 + 72);
    if (v11)
    {
      v12 = *(*(a1 + 48) + 24);
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __75__PKSharingIDSManager_removeCloudStoreZoneInvitation_forHandle_completion___block_invoke_40;
      v13[3] = &unk_1E79C44A0;
      v15 = v11;
      v14 = v5;
      dispatch_async(v12, v13);

      v9 = v15;
      goto LABEL_12;
    }
  }

  else
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"No invitation defined for handle %@. Cannot send message.", *(a1 + 40)];
    v6 = PKLogFacilityTypeGetObject(0xAuLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = v5;
      _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
    }

    v7 = *(a1 + 72);
    if (v7)
    {
      v8 = *(*(a1 + 48) + 24);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __75__PKSharingIDSManager_removeCloudStoreZoneInvitation_forHandle_completion___block_invoke_39;
      block[3] = &unk_1E79C44A0;
      v18 = v7;
      v17 = v5;
      dispatch_async(v8, block);

      v9 = v18;
LABEL_12:
    }
  }

LABEL_13:
}

void __75__PKSharingIDSManager_removeCloudStoreZoneInvitation_forHandle_completion___block_invoke_39(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E696ABC0];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6 = *MEMORY[0x1E696A578];
  v7[0] = v2;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v5 = [v1 errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:v4];
  (*(v3 + 16))(v3, v5);
}

void __75__PKSharingIDSManager_removeCloudStoreZoneInvitation_forHandle_completion___block_invoke_40(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E696ABC0];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6 = *MEMORY[0x1E696A578];
  v7[0] = v2;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v5 = [v1 errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:v4];
  (*(v3 + 16))(v3, v5);
}

- (void)sendCloudStoreZoneInvitationResponse:(id)response completion:(id)completion
{
  completionCopy = completion;
  responseCopy = response;
  protobuf = [responseCopy protobuf];
  v9 = objc_alloc(MEMORY[0x1E69A5388]);
  data = [protobuf data];
  v11 = [v9 initWithProtobufData:data type:10 isResponse:1];

  destination = [responseCopy destination];
  idsDestination = [destination idsDestination];
  name = [idsDestination name];

  invitation = [responseCopy invitation];

  v16 = [(PKSharingIDSManager *)self _handlerConfigurationForInvitation:invitation forHandle:name];

  sharingGroup = [v16 sharingGroup];
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __71__PKSharingIDSManager_sendCloudStoreZoneInvitationResponse_completion___block_invoke;
  v22[3] = &unk_1E79CBDC0;
  v25 = completionCopy;
  v26 = sharingGroup;
  v22[4] = self;
  v23 = v11;
  v24 = destination;
  v19 = destination;
  v20 = v11;
  v21 = completionCopy;
  [WeakRetained handlerDetailsForConfiguration:v16 completion:v22];
}

void __71__PKSharingIDSManager_sendCloudStoreZoneInvitationResponse_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(a1 + 64);
  v26 = 0;
  v9 = [v7 _canPerformIDSMessageForSharingGroup:v8 handleUserDetails:v5 currentUserDetails:v6 error:&v26];
  v10 = v26;
  if (!v10 && (v9 & 1) != 0)
  {
    v12 = *(a1 + 32);
    v11 = *(a1 + 40);
    v13 = *(v12 + 32);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __71__PKSharingIDSManager_sendCloudStoreZoneInvitationResponse_completion___block_invoke_3;
    block[3] = &unk_1E79C4F40;
    block[4] = v12;
    v18 = v11;
    v19 = *(a1 + 48);
    v20 = v5;
    v21 = v6;
    v22 = *(a1 + 56);
    dispatch_async(v13, block);

    v14 = v18;
LABEL_6:

    goto LABEL_7;
  }

  v15 = *(a1 + 56);
  if (v15)
  {
    v16 = *(*(a1 + 32) + 24);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __71__PKSharingIDSManager_sendCloudStoreZoneInvitationResponse_completion___block_invoke_2;
    v23[3] = &unk_1E79C44A0;
    v25 = v15;
    v24 = v10;
    dispatch_async(v16, v23);

    v14 = v25;
    goto LABEL_6;
  }

LABEL_7:
}

- (void)requestCloudStoreZoneInvitationData:(id)data forHandle:(id)handle completion:(id)completion
{
  dataCopy = data;
  handleCopy = handle;
  completionCopy = completion;
  internalQueue = self->_internalQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __80__PKSharingIDSManager_requestCloudStoreZoneInvitationData_forHandle_completion___block_invoke;
  v15[3] = &unk_1E79C4EF0;
  v15[4] = self;
  v16 = dataCopy;
  v17 = handleCopy;
  v18 = completionCopy;
  v12 = completionCopy;
  v13 = handleCopy;
  v14 = dataCopy;
  dispatch_async(internalQueue, v15);
}

void __80__PKSharingIDSManager_requestCloudStoreZoneInvitationData_forHandle_completion___block_invoke(id *a1)
{
  v2 = [a1[4] _handlerConfigurationForInvitation:a1[5] forHandle:a1[6]];
  v3 = [v2 sharingGroup];
  WeakRetained = objc_loadWeakRetained(a1[4] + 9);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __80__PKSharingIDSManager_requestCloudStoreZoneInvitationData_forHandle_completion___block_invoke_2;
  v10[3] = &unk_1E79CBDC0;
  v13 = v3;
  v9 = a1[4];
  v5 = a1[7];
  v6 = a1[5];
  *&v7 = a1[6];
  *(&v7 + 1) = v5;
  *&v8 = v9;
  *(&v8 + 1) = v6;
  v11 = v8;
  v12 = v7;
  [WeakRetained handlerDetailsForConfiguration:v2 completion:v10];
}

void __80__PKSharingIDSManager_requestCloudStoreZoneInvitationData_forHandle_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(a1 + 64);
  v28 = 0;
  v9 = [v7 _canPerformIDSMessageForSharingGroup:v8 handleUserDetails:v5 currentUserDetails:v6 error:&v28];
  v10 = v28;
  if (!v10 && (v9 & 1) != 0)
  {
    v11 = *(a1 + 32);
    v12 = [v5 allHandles];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __80__PKSharingIDSManager_requestCloudStoreZoneInvitationData_forHandle_completion___block_invoke_4;
    v19[3] = &unk_1E79CBD98;
    v13 = &v20;
    v20 = *(a1 + 40);
    v14 = v21;
    v21[0] = *(a1 + 48);
    v15 = *(a1 + 56);
    v16 = *(a1 + 32);
    v24 = v15;
    v21[1] = v16;
    v22 = v5;
    v23 = v6;
    [v11 _sharingDestinationForHandles:v12 completion:v19];

LABEL_6:
    goto LABEL_7;
  }

  v17 = *(a1 + 56);
  if (v17)
  {
    v18 = *(*(a1 + 32) + 24);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __80__PKSharingIDSManager_requestCloudStoreZoneInvitationData_forHandle_completion___block_invoke_3;
    block[3] = &unk_1E79C44A0;
    v13 = &v27;
    v27 = v17;
    v14 = &v26;
    v26 = v10;
    dispatch_async(v18, block);
    goto LABEL_6;
  }

LABEL_7:
}

void __80__PKSharingIDSManager_requestCloudStoreZoneInvitationData_forHandle_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32))
  {
    if (v3)
    {
      v5 = objc_alloc_init(PKCloudStoreZoneInvitationRequest);
      [(PKCloudStoreZoneInvitationRequest *)v5 setInvitation:*(a1 + 32)];
      [(PKCloudStoreZoneInvitationRequest *)v5 setDestination:v4];
      [*(a1 + 48) _sendCloudStoreInvitationRequest:v5 handleUserDetails:*(a1 + 56) currentUserDetails:*(a1 + 64) type:12 completion:*(a1 + 72)];
      goto LABEL_13;
    }

    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"No IDS destination defined for handle %@. Cannot send message.", *(a1 + 40)];
    v10 = PKLogFacilityTypeGetObject(0xAuLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = v5;
      _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
    }

    v11 = *(a1 + 72);
    if (v11)
    {
      v12 = *(*(a1 + 48) + 24);
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __80__PKSharingIDSManager_requestCloudStoreZoneInvitationData_forHandle_completion___block_invoke_43;
      v13[3] = &unk_1E79C44A0;
      v15 = v11;
      v14 = v5;
      dispatch_async(v12, v13);

      v9 = v15;
      goto LABEL_12;
    }
  }

  else
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"No invitation defined for handle %@. Cannot send message.", *(a1 + 40)];
    v6 = PKLogFacilityTypeGetObject(0xAuLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = v5;
      _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
    }

    v7 = *(a1 + 72);
    if (v7)
    {
      v8 = *(*(a1 + 48) + 24);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __80__PKSharingIDSManager_requestCloudStoreZoneInvitationData_forHandle_completion___block_invoke_42;
      block[3] = &unk_1E79C44A0;
      v18 = v7;
      v17 = v5;
      dispatch_async(v8, block);

      v9 = v18;
LABEL_12:
    }
  }

LABEL_13:
}

void __80__PKSharingIDSManager_requestCloudStoreZoneInvitationData_forHandle_completion___block_invoke_42(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E696ABC0];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6 = *MEMORY[0x1E696A578];
  v7[0] = v2;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v5 = [v1 errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:v4];
  (*(v3 + 16))(v3, v5);
}

void __80__PKSharingIDSManager_requestCloudStoreZoneInvitationData_forHandle_completion___block_invoke_43(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E696ABC0];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6 = *MEMORY[0x1E696A578];
  v7[0] = v2;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v5 = [v1 errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:v4];
  (*(v3 + 16))(v3, v5);
}

- (void)_sendCloudStoreInvitationRequest:(id)request handleUserDetails:(id)details currentUserDetails:(id)userDetails type:(unsigned __int16)type completion:(id)completion
{
  typeCopy = type;
  completionCopy = completion;
  userDetailsCopy = userDetails;
  detailsCopy = details;
  requestCopy = request;
  protobuf = [requestCopy protobuf];
  v16 = objc_alloc(MEMORY[0x1E69A5388]);
  data = [protobuf data];
  v18 = [v16 initWithProtobufData:data type:typeCopy isResponse:0];

  destination = [requestCopy destination];

  [(PKSharingIDSManager *)self _sendMessageWithProtobuf:v18 destination:destination handleUserDetails:detailsCopy currentUserDetails:userDetailsCopy completion:completionCopy];
}

- (void)sendRemoteRegistrationRequest:(id)request forHandle:(id)handle completion:(id)completion
{
  requestCopy = request;
  handleCopy = handle;
  completionCopy = completion;
  internalQueue = self->_internalQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __74__PKSharingIDSManager_sendRemoteRegistrationRequest_forHandle_completion___block_invoke;
  v15[3] = &unk_1E79CB4E8;
  v16 = handleCopy;
  selfCopy = self;
  v18 = requestCopy;
  v19 = completionCopy;
  v12 = requestCopy;
  v13 = completionCopy;
  v14 = handleCopy;
  dispatch_async(internalQueue, v15);
}

void __74__PKSharingIDSManager_sendRemoteRegistrationRequest_forHandle_completion___block_invoke(uint64_t a1)
{
  v2 = [[PKSharingIDSManagerHandlerConfiguration alloc] initWithSharingGroup:1];
  [(PKSharingIDSManagerHandlerConfiguration *)v2 setHandle:*(a1 + 32)];
  v3 = [(PKSharingIDSManagerHandlerConfiguration *)v2 sharingGroup];
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 72));
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __74__PKSharingIDSManager_sendRemoteRegistrationRequest_forHandle_completion___block_invoke_2;
  v10[3] = &unk_1E79CBDC0;
  v13 = v3;
  v9 = *(a1 + 40);
  v5 = *(a1 + 56);
  v6 = *(a1 + 48);
  *&v7 = *(a1 + 32);
  *(&v7 + 1) = v5;
  *&v8 = v9;
  *(&v8 + 1) = v6;
  v11 = v8;
  v12 = v7;
  [WeakRetained handlerDetailsForConfiguration:v2 completion:v10];
}

void __74__PKSharingIDSManager_sendRemoteRegistrationRequest_forHandle_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(a1 + 64);
  v28 = 0;
  v9 = [v7 _canPerformIDSMessageForSharingGroup:v8 handleUserDetails:v5 currentUserDetails:v6 error:&v28];
  v10 = v28;
  if (!v10 && (v9 & 1) != 0)
  {
    v11 = *(a1 + 32);
    v12 = [v5 allHandles];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __74__PKSharingIDSManager_sendRemoteRegistrationRequest_forHandle_completion___block_invoke_4;
    v19[3] = &unk_1E79CBD98;
    v13 = &v20;
    v20 = *(a1 + 40);
    v14 = v21;
    v21[0] = *(a1 + 48);
    v15 = *(a1 + 56);
    v16 = *(a1 + 32);
    v24 = v15;
    v21[1] = v16;
    v22 = v5;
    v23 = v6;
    [v11 _sharingDestinationForHandles:v12 completion:v19];

LABEL_6:
    goto LABEL_7;
  }

  v17 = *(a1 + 56);
  if (v17)
  {
    v18 = *(*(a1 + 32) + 24);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __74__PKSharingIDSManager_sendRemoteRegistrationRequest_forHandle_completion___block_invoke_3;
    block[3] = &unk_1E79C44A0;
    v13 = &v27;
    v27 = v17;
    v14 = &v26;
    v26 = v10;
    dispatch_async(v18, block);
    goto LABEL_6;
  }

LABEL_7:
}

void __74__PKSharingIDSManager_sendRemoteRegistrationRequest_forHandle_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    if (v3)
    {
      v5 = [v4 protobuf];
      v6 = objc_alloc(MEMORY[0x1E69A5388]);
      v7 = [v5 data];
      v8 = [v6 initWithProtobufData:v7 type:13 isResponse:0];

      [*(a1 + 48) _sendMessageWithProtobuf:v8 destination:v3 handleUserDetails:*(a1 + 56) currentUserDetails:*(a1 + 64) completion:*(a1 + 72)];
      goto LABEL_13;
    }

    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"No IDS destination defined for handle %@. Cannot send message.", *(a1 + 40)];
    v13 = PKLogFacilityTypeGetObject(0xAuLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = v5;
      _os_log_impl(&dword_1AD337000, v13, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
    }

    v14 = *(a1 + 72);
    if (v14)
    {
      v15 = *(*(a1 + 48) + 24);
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __74__PKSharingIDSManager_sendRemoteRegistrationRequest_forHandle_completion___block_invoke_46;
      v16[3] = &unk_1E79C44A0;
      v18 = v14;
      v17 = v5;
      dispatch_async(v15, v16);

      v12 = v18;
      goto LABEL_12;
    }
  }

  else
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"No invitation defined for handle %@. Cannot send message.", *(a1 + 40)];
    v9 = PKLogFacilityTypeGetObject(0xAuLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = v5;
      _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
    }

    v10 = *(a1 + 72);
    if (v10)
    {
      v11 = *(*(a1 + 48) + 24);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __74__PKSharingIDSManager_sendRemoteRegistrationRequest_forHandle_completion___block_invoke_45;
      block[3] = &unk_1E79C44A0;
      v21 = v10;
      v20 = v5;
      dispatch_async(v11, block);

      v12 = v21;
LABEL_12:
    }
  }

LABEL_13:
}

void __74__PKSharingIDSManager_sendRemoteRegistrationRequest_forHandle_completion___block_invoke_45(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E696ABC0];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6 = *MEMORY[0x1E696A578];
  v7[0] = v2;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v5 = [v1 errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:v4];
  (*(v3 + 16))(v3, v5);
}

void __74__PKSharingIDSManager_sendRemoteRegistrationRequest_forHandle_completion___block_invoke_46(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E696ABC0];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6 = *MEMORY[0x1E696A578];
  v7[0] = v2;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v5 = [v1 errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:v4];
  (*(v3 + 16))(v3, v5);
}

- (void)sendRemoteRegistrationRequestResult:(unint64_t)result forHandle:(id)handle completion:(id)completion
{
  handleCopy = handle;
  completionCopy = completion;
  internalQueue = self->_internalQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __80__PKSharingIDSManager_sendRemoteRegistrationRequestResult_forHandle_completion___block_invoke;
  v13[3] = &unk_1E79C4D88;
  v14 = handleCopy;
  selfCopy = self;
  v16 = completionCopy;
  resultCopy = result;
  v11 = completionCopy;
  v12 = handleCopy;
  dispatch_async(internalQueue, v13);
}

void __80__PKSharingIDSManager_sendRemoteRegistrationRequestResult_forHandle_completion___block_invoke(uint64_t a1)
{
  v2 = [[PKSharingIDSManagerHandlerConfiguration alloc] initWithSharingGroup:1];
  [(PKSharingIDSManagerHandlerConfiguration *)v2 setHandle:*(a1 + 32)];
  v3 = [(PKSharingIDSManagerHandlerConfiguration *)v2 sharingGroup];
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 72));
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __80__PKSharingIDSManager_sendRemoteRegistrationRequestResult_forHandle_completion___block_invoke_2;
  v8[3] = &unk_1E79CBE10;
  v5 = *(a1 + 48);
  v8[4] = *(a1 + 40);
  v11 = v3;
  v10 = v5;
  v6 = *(a1 + 32);
  v7 = *(a1 + 56);
  v9 = v6;
  v12 = v7;
  [WeakRetained handlerDetailsForConfiguration:v2 completion:v8];
}

void __80__PKSharingIDSManager_sendRemoteRegistrationRequestResult_forHandle_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(a1 + 56);
  v27 = 0;
  v9 = [v7 _canPerformIDSMessageForSharingGroup:v8 handleUserDetails:v5 currentUserDetails:v6 error:&v27];
  v10 = v27;
  if (!v10 && (v9 & 1) != 0)
  {
    v11 = *(a1 + 32);
    v12 = [v5 allHandles];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __80__PKSharingIDSManager_sendRemoteRegistrationRequestResult_forHandle_completion___block_invoke_4;
    v19[3] = &unk_1E79CBDE8;
    v13 = v20;
    v20[0] = *(a1 + 40);
    v14 = v23;
    v15 = *(a1 + 48);
    v20[1] = *(a1 + 32);
    v16 = *(a1 + 64);
    v23[0] = v15;
    v23[1] = v16;
    v21 = v5;
    v22 = v6;
    [v11 _sharingDestinationForHandles:v12 completion:v19];

LABEL_6:
    goto LABEL_7;
  }

  v17 = *(a1 + 48);
  if (v17)
  {
    v18 = *(*(a1 + 32) + 24);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __80__PKSharingIDSManager_sendRemoteRegistrationRequestResult_forHandle_completion___block_invoke_3;
    block[3] = &unk_1E79C44A0;
    v13 = &v26;
    v26 = v17;
    v14 = &v25;
    v25 = v10;
    dispatch_async(v18, block);
    goto LABEL_6;
  }

LABEL_7:
}

void __80__PKSharingIDSManager_sendRemoteRegistrationRequestResult_forHandle_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = objc_alloc_init(PKProtobufRemoteRegistrationRequestResult);
    [(PKProtobufRemoteRegistrationRequestResult *)v4 setResult:*(a1 + 72)];
    v5 = objc_alloc(MEMORY[0x1E69A5388]);
    v6 = [(PKProtobufRemoteRegistrationRequestResult *)v4 data];
    v7 = [v5 initWithProtobufData:v6 type:13 isResponse:1];

    [*(a1 + 40) _sendMessageWithProtobuf:v7 destination:v3 handleUserDetails:*(a1 + 48) currentUserDetails:*(a1 + 56) completion:*(a1 + 64)];
  }

  else
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"No IDS destination defined for handle %@. Cannot send message.", *(a1 + 32)];
    v8 = PKLogFacilityTypeGetObject(0xAuLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = v4;
      _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
    }

    v9 = *(a1 + 64);
    if (v9)
    {
      v10 = *(*(a1 + 40) + 24);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __80__PKSharingIDSManager_sendRemoteRegistrationRequestResult_forHandle_completion___block_invoke_47;
      block[3] = &unk_1E79C44A0;
      v13 = v9;
      v12 = v4;
      dispatch_async(v10, block);
    }
  }
}

void __80__PKSharingIDSManager_sendRemoteRegistrationRequestResult_forHandle_completion___block_invoke_47(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E696ABC0];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6 = *MEMORY[0x1E696A578];
  v7[0] = v2;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v5 = [v1 errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:v4];
  (*(v3 + 16))(v3, v5);
}

- (void)sendDeviceSharingCapabilitiesRequestForHandle:(id)handle completion:(id)completion
{
  v18 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  completionCopy = completion;
  if (completionCopy)
  {
    if (handleCopy)
    {
      v8 = [[PKSharingIDSManagerHandlerConfiguration alloc] initWithSharingGroup:1];
      [(PKSharingIDSManagerHandlerConfiguration *)v8 setHandle:handleCopy];
      sharingGroup = [(PKSharingIDSManagerHandlerConfiguration *)v8 sharingGroup];
      WeakRetained = objc_loadWeakRetained(&self->_dataSource);
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __80__PKSharingIDSManager_sendDeviceSharingCapabilitiesRequestForHandle_completion___block_invoke;
      v12[3] = &unk_1E79CBED8;
      v12[4] = self;
      v15 = sharingGroup;
      v14 = completionCopy;
      v13 = handleCopy;
      [WeakRetained handlerDetailsForConfiguration:v8 completion:v12];
    }

    else
    {
      v11 = PKLogFacilityTypeGetObject(0xCuLL);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v17 = "[PKSharingIDSManager sendDeviceSharingCapabilitiesRequestForHandle:completion:]";
        _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "Error: cannot check apple cash capability for a nil receipient handle %s", buf, 0xCu);
      }

      (*(completionCopy + 2))(completionCopy, 0, 0);
    }
  }
}

void __80__PKSharingIDSManager_sendDeviceSharingCapabilitiesRequestForHandle_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(a1 + 56);
  v27 = 0;
  v9 = [v7 _canPerformIDSMessageForSharingGroup:v8 handleUserDetails:v5 currentUserDetails:v6 error:&v27];
  v10 = v27;
  if (!v10 && (v9 & 1) != 0)
  {
    v11 = *(a1 + 32);
    v12 = [v5 allHandles];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __80__PKSharingIDSManager_sendDeviceSharingCapabilitiesRequestForHandle_completion___block_invoke_3;
    v19[3] = &unk_1E79CBEB0;
    v13 = v20;
    v20[0] = *(a1 + 40);
    v14 = &v23;
    v15 = *(a1 + 48);
    v16 = *(a1 + 32);
    v23 = v15;
    v20[1] = v16;
    v21 = v5;
    v22 = v6;
    [v11 _sharingDestinationForHandles:v12 completion:v19];

LABEL_6:
    goto LABEL_7;
  }

  v17 = *(a1 + 48);
  if (v17)
  {
    v18 = *(*(a1 + 32) + 24);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __80__PKSharingIDSManager_sendDeviceSharingCapabilitiesRequestForHandle_completion___block_invoke_2;
    block[3] = &unk_1E79C44A0;
    v13 = &v26;
    v26 = v17;
    v14 = &v25;
    v25 = v10;
    dispatch_async(v18, block);
    goto LABEL_6;
  }

LABEL_7:
}

void __80__PKSharingIDSManager_sendDeviceSharingCapabilitiesRequestForHandle_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v43 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 idsDestination];
  v5 = [v4 deviceIdentifier];

  if (v5)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v39 = 0x3032000000;
    v40 = __Block_byref_object_copy__14;
    v41 = __Block_byref_object_dispose__14;
    v42 = 0;
    v33[0] = 0;
    v33[1] = v33;
    v33[2] = 0x2020000000;
    v33[3] = 0;
    v6 = dispatch_group_create();
    dispatch_group_enter(v6);
    v7 = [MEMORY[0x1E69A4878] sharedInstance];
    v37 = v5;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v37 count:1];
    v9 = *(*(a1 + 40) + 32);
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __80__PKSharingIDSManager_sendDeviceSharingCapabilitiesRequestForHandle_completion___block_invoke_52;
    v28[3] = &unk_1E79CBE38;
    v29 = v5;
    v32 = v33;
    v30 = *(a1 + 48);
    v10 = v6;
    v31 = v10;
    [v7 currentRemoteDevicesForDestinations:v8 service:@"com.apple.private.alloy.applepay.sharing" listenerID:@"com.apple.private.alloy.applepay.sharing" queue:v9 completionBlock:v28];

    dispatch_group_enter(v10);
    v11 = [objc_alloc(MEMORY[0x1E69A5388]) initWithProtobufData:0 type:14 isResponse:0];
    v12 = *(a1 + 40);
    v13 = *(a1 + 48);
    v14 = *(a1 + 56);
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __80__PKSharingIDSManager_sendDeviceSharingCapabilitiesRequestForHandle_completion___block_invoke_54;
    v25[3] = &unk_1E79CBE60;
    p_buf = &buf;
    v15 = v10;
    v26 = v15;
    [v12 _sendMessageWithProtobuf:v11 destination:v3 handleUserDetails:v13 currentUserDetails:v14 completion:v25];
    v16 = *(*(a1 + 40) + 24);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __80__PKSharingIDSManager_sendDeviceSharingCapabilitiesRequestForHandle_completion___block_invoke_2_56;
    block[3] = &unk_1E79CBE88;
    v22 = *(a1 + 64);
    v23 = v33;
    v24 = &buf;
    dispatch_group_notify(v15, v16, block);

    _Block_object_dispose(v33, 8);
    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"No IDS destination defined for handle %@. Cannot send message.", *(a1 + 32)];
    v18 = PKLogFacilityTypeGetObject(0xAuLL);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v17;
      _os_log_impl(&dword_1AD337000, v18, OS_LOG_TYPE_DEFAULT, "%@", &buf, 0xCu);
    }

    v19 = *(a1 + 64);
    if (v19)
    {
      v20 = *(*(a1 + 40) + 24);
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __80__PKSharingIDSManager_sendDeviceSharingCapabilitiesRequestForHandle_completion___block_invoke_49;
      v34[3] = &unk_1E79C44A0;
      v36 = v19;
      v35 = v17;
      dispatch_async(v20, v34);
    }
  }
}

void __80__PKSharingIDSManager_sendDeviceSharingCapabilitiesRequestForHandle_completion___block_invoke_49(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E696ABC0];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6 = *MEMORY[0x1E696A578];
  v7[0] = v2;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v5 = [v1 errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:v4];
  (*(v3 + 16))(v3, 0, v5);
}

void __80__PKSharingIDSManager_sendDeviceSharingCapabilitiesRequestForHandle_completion___block_invoke_52(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = [a2 objectForKeyedSubscript:*(a1 + 32)];
  *(*(*(a1 + 56) + 8) + 24) = [v3 count];
  v4 = PKLogFacilityTypeGetObject(0xCuLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    v6 = *(*(*(a1 + 56) + 8) + 24);
    v7 = 138412546;
    v8 = v5;
    v9 = 2048;
    v10 = v6;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "Family member %@ has %ld possible devices", &v7, 0x16u);
  }

  dispatch_group_leave(*(a1 + 48));
}

void __80__PKSharingIDSManager_sendDeviceSharingCapabilitiesRequestForHandle_completion___block_invoke_54(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

- (void)_cloudStoreZoneShareInvitationRequestReceived:(id)received service:(id)service account:(id)account fromID:(id)d context:(id)context
{
  dCopy = d;
  receivedCopy = received;
  v11 = [PKProtobufCloudStoreZoneInvitationRequest alloc];
  data = [receivedCopy data];

  v13 = [(PKProtobufCloudStoreZoneInvitationRequest *)v11 initWithData:data];
  invitation = [(PKProtobufCloudStoreZoneInvitationRequest *)v13 invitation];
  v15 = [PKCloudStoreZoneInvitation cloudStoreZoneInvitationWithProtobuf:invitation];

  v16 = [PKCloudStoreZoneInvitationRequest invitationErrorWithProtobuf:v13];
  v17 = [(PKSharingIDSManager *)self _sanitizedHandleWithFromID:dCopy];

  v18 = [(PKSharingIDSManager *)self _handlerConfigurationForInvitation:v15 forHandle:v17];
  sharingGroup = [v18 sharingGroup];
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __100__PKSharingIDSManager__cloudStoreZoneShareInvitationRequestReceived_service_account_fromID_context___block_invoke;
  v23[3] = &unk_1E79CBF00;
  v23[4] = self;
  v24 = v15;
  v25 = v16;
  v26 = sharingGroup;
  v21 = v16;
  v22 = v15;
  [WeakRetained handlerDetailsForConfiguration:v18 completion:v23];
}

void __100__PKSharingIDSManager__cloudStoreZoneShareInvitationRequestReceived_service_account_fromID_context___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = *(a1 + 56);
  v17 = 0;
  v8 = [v6 _canPerformIDSMessageForSharingGroup:v7 handleUserDetails:v5 currentUserDetails:a3 error:&v17];
  v9 = v17;
  if (v9 || (v8 & 1) == 0)
  {
    v12 = PKLogFacilityTypeGetObject(0xAuLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v19 = v9;
      _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, "Cannot perform IDS action %@", buf, 0xCu);
    }
  }

  else
  {
    v10 = *(a1 + 32);
    v11 = *(v10 + 32);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __100__PKSharingIDSManager__cloudStoreZoneShareInvitationRequestReceived_service_account_fromID_context___block_invoke_59;
    block[3] = &unk_1E79C9668;
    block[4] = v10;
    v14 = v5;
    v15 = *(a1 + 40);
    v16 = *(a1 + 48);
    dispatch_async(v11, block);
  }
}

void __100__PKSharingIDSManager__cloudStoreZoneShareInvitationRequestReceived_service_account_fromID_context___block_invoke_59(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _primaryAppleIDSharingDestination:*(a1 + 40)];
  v3 = PKLogFacilityTypeGetObject(0xAuLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);
    *buf = 138412802;
    v23 = v4;
    v24 = 2112;
    v25 = v2;
    v26 = 2112;
    v27 = v5;
    _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "Received cloud zone invitiation: %@, from destination %@, with error %@", buf, 0x20u);
  }

  v6 = [*(a1 + 32) delegates];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      v10 = 0;
      do
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * v10);
        v12 = *(*(a1 + 32) + 24);
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = __100__PKSharingIDSManager__cloudStoreZoneShareInvitationRequestReceived_service_account_fromID_context___block_invoke_60;
        v13[3] = &unk_1E79C9668;
        v13[4] = v11;
        v14 = *(a1 + 48);
        v15 = *(a1 + 56);
        v16 = v2;
        dispatch_async(v12, v13);

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }
}

uint64_t __100__PKSharingIDSManager__cloudStoreZoneShareInvitationRequestReceived_service_account_fromID_context___block_invoke_60(void *a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = a1[4];
    v4 = a1[5];
    v5 = a1[6];
    v6 = a1[7];

    return [v3 didReceiveCloudStoreZoneInvitation:v4 invitationError:v5 fromDestination:v6];
  }

  return result;
}

- (void)_cloudStoreZoneShareInvitationRequestRemoved:(id)removed service:(id)service account:(id)account fromID:(id)d context:(id)context
{
  dCopy = d;
  removedCopy = removed;
  v11 = [PKProtobufCloudStoreZoneInvitationRequest alloc];
  data = [removedCopy data];

  v13 = [(PKProtobufCloudStoreZoneInvitationRequest *)v11 initWithData:data];
  invitation = [(PKProtobufCloudStoreZoneInvitationRequest *)v13 invitation];
  v15 = [PKCloudStoreZoneInvitation cloudStoreZoneInvitationWithProtobuf:invitation];

  v16 = [(PKSharingIDSManager *)self _sanitizedHandleWithFromID:dCopy];

  v17 = [(PKSharingIDSManager *)self _handlerConfigurationForInvitation:v15 forHandle:v16];
  sharingGroup = [v17 sharingGroup];
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __99__PKSharingIDSManager__cloudStoreZoneShareInvitationRequestRemoved_service_account_fromID_context___block_invoke;
  v21[3] = &unk_1E79CBF28;
  v22 = v15;
  v23 = sharingGroup;
  v21[4] = self;
  v20 = v15;
  [WeakRetained handlerDetailsForConfiguration:v17 completion:v21];
}

void __99__PKSharingIDSManager__cloudStoreZoneShareInvitationRequestRemoved_service_account_fromID_context___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  v16 = 0;
  v8 = [v6 _canPerformIDSMessageForSharingGroup:v7 handleUserDetails:v5 currentUserDetails:a3 error:&v16];
  v9 = v16;
  if (v9 || (v8 & 1) == 0)
  {
    v12 = PKLogFacilityTypeGetObject(0xAuLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = v9;
      _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, "Cannot perform IDS action %@", buf, 0xCu);
    }
  }

  else
  {
    v10 = *(a1 + 32);
    v11 = *(v10 + 32);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __99__PKSharingIDSManager__cloudStoreZoneShareInvitationRequestRemoved_service_account_fromID_context___block_invoke_63;
    v13[3] = &unk_1E79C4E00;
    v13[4] = v10;
    v14 = v5;
    v15 = *(a1 + 40);
    dispatch_async(v11, v13);
  }
}

void __99__PKSharingIDSManager__cloudStoreZoneShareInvitationRequestRemoved_service_account_fromID_context___block_invoke_63(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _primaryAppleIDSharingDestination:*(a1 + 40)];
  v3 = PKLogFacilityTypeGetObject(0xAuLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 48);
    *buf = 138412546;
    v21 = v4;
    v22 = 2112;
    v23 = v2;
    _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "Removed from cloud zone share: %@, from destination %@", buf, 0x16u);
  }

  v5 = [*(a1 + 32) delegates];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      v9 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * v9);
        v11 = *(*(a1 + 32) + 24);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __99__PKSharingIDSManager__cloudStoreZoneShareInvitationRequestRemoved_service_account_fromID_context___block_invoke_64;
        block[3] = &unk_1E79C4E00;
        block[4] = v10;
        v13 = *(a1 + 48);
        v14 = v2;
        dispatch_async(v11, block);

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }
}

uint64_t __99__PKSharingIDSManager__cloudStoreZoneShareInvitationRequestRemoved_service_account_fromID_context___block_invoke_64(void *a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = a1[4];
    v4 = a1[5];
    v5 = a1[6];

    return [v3 removedFromCloudStoreZoneInvitation:v4 fromDestination:v5];
  }

  return result;
}

- (void)_cloudStoreZoneShareInvitationResponseReceived:(id)received service:(id)service account:(id)account fromID:(id)d context:(id)context
{
  dCopy = d;
  receivedCopy = received;
  v11 = [PKProtobufCloudStoreZoneInvitationResponse alloc];
  data = [receivedCopy data];

  v13 = [(PKProtobufCloudStoreZoneInvitationResponse *)v11 initWithData:data];
  v14 = [PKCloudStoreZoneInvitationResponse cloudStoreZoneInvitationResponseWithProtobuf:v13];
  v15 = [(PKSharingIDSManager *)self _sanitizedHandleWithFromID:dCopy];

  invitation = [v14 invitation];
  v17 = [(PKSharingIDSManager *)self _handlerConfigurationForInvitation:invitation forHandle:v15];

  sharingGroup = [v17 sharingGroup];
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __101__PKSharingIDSManager__cloudStoreZoneShareInvitationResponseReceived_service_account_fromID_context___block_invoke;
  v21[3] = &unk_1E79CBF28;
  v22 = v14;
  v23 = sharingGroup;
  v21[4] = self;
  v20 = v14;
  [WeakRetained handlerDetailsForConfiguration:v17 completion:v21];
}

void __101__PKSharingIDSManager__cloudStoreZoneShareInvitationResponseReceived_service_account_fromID_context___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  v16 = 0;
  v8 = [v6 _canPerformIDSMessageForSharingGroup:v7 handleUserDetails:v5 currentUserDetails:a3 error:&v16];
  v9 = v16;
  if (v9 || (v8 & 1) == 0)
  {
    v12 = PKLogFacilityTypeGetObject(0xAuLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = v9;
      _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, "Cannot perform IDS action %@", buf, 0xCu);
    }
  }

  else
  {
    v10 = *(a1 + 32);
    v11 = *(v10 + 32);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __101__PKSharingIDSManager__cloudStoreZoneShareInvitationResponseReceived_service_account_fromID_context___block_invoke_69;
    v13[3] = &unk_1E79C4E00;
    v13[4] = v10;
    v14 = v5;
    v15 = *(a1 + 40);
    dispatch_async(v11, v13);
  }
}

void __101__PKSharingIDSManager__cloudStoreZoneShareInvitationResponseReceived_service_account_fromID_context___block_invoke_69(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _primaryAppleIDSharingDestination:*(a1 + 40)];
  v3 = PKLogFacilityTypeGetObject(0xAuLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 48);
    *buf = 138412546;
    v21 = v4;
    v22 = 2112;
    v23 = v2;
    _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "Cloud zone invitation response received: %@, from destination %@", buf, 0x16u);
  }

  v5 = [*(a1 + 32) delegates];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      v9 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * v9);
        v11 = *(*(a1 + 32) + 24);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __101__PKSharingIDSManager__cloudStoreZoneShareInvitationResponseReceived_service_account_fromID_context___block_invoke_70;
        block[3] = &unk_1E79C4E00;
        block[4] = v10;
        v13 = *(a1 + 48);
        v14 = v2;
        dispatch_async(v11, block);

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }
}

void __101__PKSharingIDSManager__cloudStoreZoneShareInvitationResponseReceived_service_account_fromID_context___block_invoke_70(uint64_t a1)
{
  if (objc_opt_respondsToSelector())
  {
    v2 = *(a1 + 32);
    v3 = [*(a1 + 40) status];
    v4 = [*(a1 + 40) invitation];
    [v2 didReceiveCloudStoreZoneInvitationStatus:v3 forInvitation:v4 fromDestination:*(a1 + 48)];
  }
}

- (void)_cloudStoreZoneShareInvitationRequestInvitationData:(id)data service:(id)service account:(id)account fromID:(id)d context:(id)context
{
  dCopy = d;
  dataCopy = data;
  v11 = [PKProtobufCloudStoreZoneInvitationRequest alloc];
  data = [dataCopy data];

  v13 = [(PKProtobufCloudStoreZoneInvitationRequest *)v11 initWithData:data];
  invitation = [(PKProtobufCloudStoreZoneInvitationRequest *)v13 invitation];
  v15 = [PKCloudStoreZoneInvitation cloudStoreZoneInvitationWithProtobuf:invitation];

  v16 = [(PKSharingIDSManager *)self _sanitizedHandleWithFromID:dCopy];

  v17 = [(PKSharingIDSManager *)self _handlerConfigurationForInvitation:v15 forHandle:v16];
  sharingGroup = [v17 sharingGroup];
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __106__PKSharingIDSManager__cloudStoreZoneShareInvitationRequestInvitationData_service_account_fromID_context___block_invoke;
  v21[3] = &unk_1E79CBF28;
  v22 = v15;
  v23 = sharingGroup;
  v21[4] = self;
  v20 = v15;
  [WeakRetained handlerDetailsForConfiguration:v17 completion:v21];
}

void __106__PKSharingIDSManager__cloudStoreZoneShareInvitationRequestInvitationData_service_account_fromID_context___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  v16 = 0;
  v8 = [v6 _canPerformIDSMessageForSharingGroup:v7 handleUserDetails:v5 currentUserDetails:a3 error:&v16];
  v9 = v16;
  if (v9 || (v8 & 1) == 0)
  {
    v12 = PKLogFacilityTypeGetObject(0xAuLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = v9;
      _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, "Cannot perform IDS action %@", buf, 0xCu);
    }
  }

  else
  {
    v10 = *(a1 + 32);
    v11 = *(v10 + 32);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __106__PKSharingIDSManager__cloudStoreZoneShareInvitationRequestInvitationData_service_account_fromID_context___block_invoke_73;
    v13[3] = &unk_1E79C4E00;
    v13[4] = v10;
    v14 = v5;
    v15 = *(a1 + 40);
    dispatch_async(v11, v13);
  }
}

void __106__PKSharingIDSManager__cloudStoreZoneShareInvitationRequestInvitationData_service_account_fromID_context___block_invoke_73(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _primaryAppleIDSharingDestination:*(a1 + 40)];
  v3 = PKLogFacilityTypeGetObject(0xAuLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 48);
    *buf = 138412546;
    v21 = v4;
    v22 = 2112;
    v23 = v2;
    _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "Received request to share invitation data: %@, from destination %@", buf, 0x16u);
  }

  v5 = [*(a1 + 32) delegates];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      v9 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * v9);
        v11 = *(*(a1 + 32) + 24);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __106__PKSharingIDSManager__cloudStoreZoneShareInvitationRequestInvitationData_service_account_fromID_context___block_invoke_74;
        block[3] = &unk_1E79C4E00;
        block[4] = v10;
        v13 = *(a1 + 48);
        v14 = v2;
        dispatch_async(v11, block);

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }
}

uint64_t __106__PKSharingIDSManager__cloudStoreZoneShareInvitationRequestInvitationData_service_account_fromID_context___block_invoke_74(void *a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = a1[4];
    v4 = a1[5];
    v5 = a1[6];

    return [v3 didRequestCloudStoreZoneInvitationData:v4 fromDestination:v5];
  }

  return result;
}

- (void)_remoteRegistrationRequestReceived:(id)received service:(id)service account:(id)account fromID:(id)d context:(id)context
{
  dCopy = d;
  receivedCopy = received;
  v11 = [PKProtobufRemoteRegistrationRequest alloc];
  data = [receivedCopy data];

  v13 = [(PKProtobufRemoteRegistrationRequest *)v11 initWithData:data];
  v14 = [PKRemoteRegistrationRequest remoteRegistrationRequestWithProtobuf:v13];
  v15 = [(PKSharingIDSManager *)self _sanitizedHandleWithFromID:dCopy];

  v16 = [[PKSharingIDSManagerHandlerConfiguration alloc] initWithSharingGroup:1];
  [(PKSharingIDSManagerHandlerConfiguration *)v16 setHandle:v15];
  sharingGroup = [(PKSharingIDSManagerHandlerConfiguration *)v16 sharingGroup];
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __89__PKSharingIDSManager__remoteRegistrationRequestReceived_service_account_fromID_context___block_invoke;
  v20[3] = &unk_1E79CBF28;
  v21 = v14;
  v22 = sharingGroup;
  v20[4] = self;
  v19 = v14;
  [WeakRetained handlerDetailsForConfiguration:v16 completion:v20];
}

void __89__PKSharingIDSManager__remoteRegistrationRequestReceived_service_account_fromID_context___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  v16 = 0;
  v8 = [v6 _canPerformIDSMessageForSharingGroup:v7 handleUserDetails:v5 currentUserDetails:a3 error:&v16];
  v9 = v16;
  if (v9 || (v8 & 1) == 0)
  {
    v12 = PKLogFacilityTypeGetObject(0xAuLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = v9;
      _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, "Cannot perform IDS action %@", buf, 0xCu);
    }
  }

  else
  {
    v10 = *(a1 + 32);
    v11 = *(v10 + 32);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __89__PKSharingIDSManager__remoteRegistrationRequestReceived_service_account_fromID_context___block_invoke_79;
    v13[3] = &unk_1E79C4E00;
    v13[4] = v10;
    v14 = v5;
    v15 = *(a1 + 40);
    dispatch_async(v11, v13);
  }
}

void __89__PKSharingIDSManager__remoteRegistrationRequestReceived_service_account_fromID_context___block_invoke_79(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _primaryAppleIDSharingDestination:*(a1 + 40)];
  v3 = PKLogFacilityTypeGetObject(0xAuLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 48);
    *buf = 138412546;
    v21 = v4;
    v22 = 2112;
    v23 = v2;
    _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "Received request to register: %@, from destination %@", buf, 0x16u);
  }

  v5 = [*(a1 + 32) delegates];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      v9 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * v9);
        v11 = *(*(a1 + 32) + 24);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __89__PKSharingIDSManager__remoteRegistrationRequestReceived_service_account_fromID_context___block_invoke_80;
        block[3] = &unk_1E79C4E00;
        block[4] = v10;
        v13 = *(a1 + 48);
        v14 = v2;
        dispatch_async(v11, block);

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }
}

uint64_t __89__PKSharingIDSManager__remoteRegistrationRequestReceived_service_account_fromID_context___block_invoke_80(void *a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = a1[4];
    v4 = a1[5];
    v5 = a1[6];

    return [v3 didRequestToRegister:v4 fromDestination:v5];
  }

  return result;
}

- (void)_remoteRegistrationRequestResultReceived:(id)received service:(id)service account:(id)account fromID:(id)d context:(id)context
{
  dCopy = d;
  receivedCopy = received;
  v11 = [PKProtobufRemoteRegistrationRequestResult alloc];
  data = [receivedCopy data];

  v13 = [(PKProtobufRemoteRegistrationRequestResult *)v11 initWithData:data];
  result = [(PKProtobufRemoteRegistrationRequestResult *)v13 result];
  v15 = [(PKSharingIDSManager *)self _sanitizedHandleWithFromID:dCopy];

  v16 = [[PKSharingIDSManagerHandlerConfiguration alloc] initWithSharingGroup:1];
  [(PKSharingIDSManagerHandlerConfiguration *)v16 setHandle:v15];
  sharingGroup = [(PKSharingIDSManagerHandlerConfiguration *)v16 sharingGroup];
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __95__PKSharingIDSManager__remoteRegistrationRequestResultReceived_service_account_fromID_context___block_invoke;
  v19[3] = &unk_1E79CBF78;
  v19[4] = self;
  v19[5] = sharingGroup;
  v19[6] = result;
  [WeakRetained handlerDetailsForConfiguration:v16 completion:v19];
}

void __95__PKSharingIDSManager__remoteRegistrationRequestResultReceived_service_account_fromID_context___block_invoke(void *a1, void *a2, uint64_t a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a1[4];
  v7 = a1[5];
  v18 = 0;
  v8 = [v6 _canPerformIDSMessageForSharingGroup:v7 handleUserDetails:v5 currentUserDetails:a3 error:&v18];
  v9 = v18;
  if (v9 || (v8 & 1) == 0)
  {
    v14 = PKLogFacilityTypeGetObject(0xAuLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = v9;
      _os_log_impl(&dword_1AD337000, v14, OS_LOG_TYPE_DEFAULT, "Cannot perform IDS action %@", buf, 0xCu);
    }
  }

  else
  {
    v10 = a1[4];
    v11 = *(v10 + 32);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __95__PKSharingIDSManager__remoteRegistrationRequestResultReceived_service_account_fromID_context___block_invoke_83;
    v15[3] = &unk_1E79CBF50;
    v15[4] = v10;
    v12 = v5;
    v13 = a1[6];
    v16 = v12;
    v17 = v13;
    dispatch_async(v11, v15);
  }
}

void __95__PKSharingIDSManager__remoteRegistrationRequestResultReceived_service_account_fromID_context___block_invoke_83(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _primaryAppleIDSharingDestination:*(a1 + 40)];
  v3 = PKLogFacilityTypeGetObject(0xAuLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = PKDeviceRegistrationResultToString(*(a1 + 48));
    *buf = 138412546;
    v22 = v4;
    v23 = 2112;
    v24 = v2;
    _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "Remote registration request result received: %@, from destination %@", buf, 0x16u);
  }

  v5 = [*(a1 + 32) delegates];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      v9 = 0;
      do
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * v9);
        v11 = *(*(a1 + 32) + 24);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __95__PKSharingIDSManager__remoteRegistrationRequestResultReceived_service_account_fromID_context___block_invoke_84;
        block[3] = &unk_1E79CBF50;
        v12 = *(a1 + 48);
        block[4] = v10;
        v15 = v12;
        v14 = v2;
        dispatch_async(v11, block);

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }
}

uint64_t __95__PKSharingIDSManager__remoteRegistrationRequestResultReceived_service_account_fromID_context___block_invoke_84(void *a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v4 = a1[5];
    v3 = a1[6];
    v5 = a1[4];

    return [v5 didReceiveRemoteRegistationResult:v3 fromDestination:v4];
  }

  return result;
}

- (void)_deviceSharingCapabiltiesRequestReceived:(id)received service:(id)service account:(id)account fromID:(id)d context:(id)context
{
  account = [(PKSharingIDSManager *)self _sanitizedHandleWithFromID:d, service, account];
  v9 = [[PKSharingIDSManagerHandlerConfiguration alloc] initWithSharingGroup:1];
  [(PKSharingIDSManagerHandlerConfiguration *)v9 setHandle:account];
  sharingGroup = [(PKSharingIDSManagerHandlerConfiguration *)v9 sharingGroup];
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __95__PKSharingIDSManager__deviceSharingCapabiltiesRequestReceived_service_account_fromID_context___block_invoke;
  v12[3] = &unk_1E79CBFC8;
  v12[4] = self;
  v12[5] = sharingGroup;
  [WeakRetained handlerDetailsForConfiguration:v9 completion:v12];
}

void __95__PKSharingIDSManager__deviceSharingCapabiltiesRequestReceived_service_account_fromID_context___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v21 = 0;
  v9 = [v7 _canPerformIDSMessageForSharingGroup:v8 handleUserDetails:v5 currentUserDetails:v6 error:&v21];
  v10 = v21;
  v11 = PKLogFacilityTypeGetObject(0xAuLL);
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v10 || (v9 & 1) == 0)
  {
    if (v12)
    {
      *buf = 138412290;
      v23 = v10;
      _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "Cannot perform IDS action %@", buf, 0xCu);
    }
  }

  else
  {
    if (v12)
    {
      *buf = 138412290;
      v23 = v5;
      _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "Received request to provided apple cash sharing capabilities from destination %@", buf, 0xCu);
    }

    v13 = *(a1 + 32);
    v14 = [v5 allHandles];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __95__PKSharingIDSManager__deviceSharingCapabiltiesRequestReceived_service_account_fromID_context___block_invoke_87;
    v17[3] = &unk_1E79CBFA0;
    v15 = v6;
    v16 = *(a1 + 32);
    v18 = v15;
    v19 = v16;
    v20 = v5;
    [v13 _sharingDestinationForHandles:v14 completion:v17];

    v11 = v18;
  }
}

void __95__PKSharingIDSManager__deviceSharingCapabiltiesRequestReceived_service_account_fromID_context___block_invoke_87(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_alloc_init(PKDeviceSharingCapabilities);
  v5 = [*(a1 + 32) familyMember];
  v6 = [v5 appleID];
  [(PKDeviceSharingCapabilities *)v4 setHandle:v6];

  v7 = [v5 altDSID];
  [(PKDeviceSharingCapabilities *)v4 setAltDSID:v7];

  [(PKDeviceSharingCapabilities *)v4 setSupportsManatee:PKSupportsManateeForAppleCashForIDS()];
  v8 = PKCurrentRegion();
  [(PKDeviceSharingCapabilities *)v4 setDeviceRegion:v8];

  v9 = +[PKOSVersionRequirement fromDeviceVersion];
  [(PKDeviceSharingCapabilities *)v4 setFromDeviceVersion:v9];

  v10 = PKLogFacilityTypeGetObject(0xAuLL);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v23 = v4;
    _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "Sending apple cash sharing capabilities %@", buf, 0xCu);
  }

  v12 = *(a1 + 40);
  v11 = *(a1 + 48);
  v13 = *(v12 + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __95__PKSharingIDSManager__deviceSharingCapabiltiesRequestReceived_service_account_fromID_context___block_invoke_90;
  block[3] = &unk_1E79C7D80;
  v17 = v4;
  v18 = v12;
  v19 = v3;
  v20 = v11;
  v21 = *(a1 + 32);
  v14 = v3;
  v15 = v4;
  dispatch_async(v13, block);
}

void __95__PKSharingIDSManager__deviceSharingCapabiltiesRequestReceived_service_account_fromID_context___block_invoke_90(uint64_t a1)
{
  v5 = [*(a1 + 32) protobuf];
  v2 = objc_alloc(MEMORY[0x1E69A5388]);
  v3 = [v5 data];
  v4 = [v2 initWithProtobufData:v3 type:14 isResponse:1];

  [*(a1 + 40) _sendMessageWithProtobuf:v4 destination:*(a1 + 48) handleUserDetails:*(a1 + 56) currentUserDetails:*(a1 + 64) completion:0];
}

- (void)_deviceSharingCapabilitiesRequestResultReceived:(id)received service:(id)service account:(id)account fromID:(id)d context:(id)context
{
  dCopy = d;
  data = [received data];
  if (data)
  {
    v11 = [[PKProtobufDeviceSharingCapabilities alloc] initWithData:data];
    v12 = [PKDeviceSharingCapabilities deviceSharingCapbilitesRequestWithProtobuf:v11];
  }

  else
  {
    v12 = 0;
  }

  v13 = [(PKSharingIDSManager *)self _sanitizedHandleWithFromID:dCopy];
  v14 = [[PKSharingIDSManagerHandlerConfiguration alloc] initWithSharingGroup:1];
  [(PKSharingIDSManagerHandlerConfiguration *)v14 setHandle:v13];
  sharingGroup = [(PKSharingIDSManagerHandlerConfiguration *)v14 sharingGroup];
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __102__PKSharingIDSManager__deviceSharingCapabilitiesRequestResultReceived_service_account_fromID_context___block_invoke;
  v19[3] = &unk_1E79CBF00;
  v19[4] = self;
  v20 = v12;
  v21 = v13;
  v22 = sharingGroup;
  v17 = v13;
  v18 = v12;
  [WeakRetained handlerDetailsForConfiguration:v14 completion:v19];
}

void __102__PKSharingIDSManager__deviceSharingCapabilitiesRequestResultReceived_service_account_fromID_context___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = *(a1 + 56);
  v17 = 0;
  v8 = [v6 _canPerformIDSMessageForSharingGroup:v7 handleUserDetails:v5 currentUserDetails:a3 error:&v17];
  v9 = v17;
  if (v9 || (v8 & 1) == 0)
  {
    v12 = PKLogFacilityTypeGetObject(0xAuLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v19 = v9;
      _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, "Cannot perform IDS action %@", buf, 0xCu);
    }
  }

  else
  {
    v10 = *(a1 + 32);
    v11 = *(v10 + 32);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __102__PKSharingIDSManager__deviceSharingCapabilitiesRequestResultReceived_service_account_fromID_context___block_invoke_92;
    block[3] = &unk_1E79C9668;
    block[4] = v10;
    v14 = v5;
    v15 = *(a1 + 40);
    v16 = *(a1 + 48);
    dispatch_async(v11, block);
  }
}

void __102__PKSharingIDSManager__deviceSharingCapabilitiesRequestResultReceived_service_account_fromID_context___block_invoke_92(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _primaryAppleIDSharingDestination:*(a1 + 40)];
  v3 = PKLogFacilityTypeGetObject(0xAuLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 48);
    *buf = 138412546;
    v21 = v4;
    v22 = 2112;
    v23 = v2;
    _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "Device sharing capabilities received: %@, from destination %@", buf, 0x16u);
  }

  v5 = [*(a1 + 32) delegates];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      v9 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * v9);
        v11 = *(*(a1 + 32) + 24);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __102__PKSharingIDSManager__deviceSharingCapabilitiesRequestResultReceived_service_account_fromID_context___block_invoke_93;
        block[3] = &unk_1E79C4E00;
        block[4] = v10;
        v13 = *(a1 + 48);
        v14 = *(a1 + 56);
        dispatch_async(v11, block);

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }
}

uint64_t __102__PKSharingIDSManager__deviceSharingCapabilitiesRequestResultReceived_service_account_fromID_context___block_invoke_93(void *a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = a1[4];
    v4 = a1[5];
    v5 = a1[6];

    return [v3 didReceiveDeviceSharingCapabilities:v4 forHandle:v5];
  }

  return result;
}

- (NSArray)delegates
{
  os_unfair_lock_lock(&self->_delegatesLock);
  allObjects = [(NSHashTable *)self->_delegates allObjects];
  v4 = [allObjects copy];

  os_unfair_lock_unlock(&self->_delegatesLock);

  return v4;
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

- (void)service:(id)service account:(id)account identifier:(id)identifier hasBeenDeliveredWithContext:(id)context
{
  v19 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  contextCopy = context;
  v10 = PKLogFacilityTypeGetObject(0xAuLL);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v16 = identifierCopy;
    v17 = 2112;
    v18 = contextCopy;
    _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "IDS Service has delivered message: %@, context: %@", buf, 0x16u);
  }

  internalQueue = self->_internalQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __78__PKSharingIDSManager_service_account_identifier_hasBeenDeliveredWithContext___block_invoke;
  v13[3] = &unk_1E79C4DD8;
  v13[4] = self;
  v14 = identifierCopy;
  v12 = identifierCopy;
  dispatch_async(internalQueue, v13);
}

- (void)service:(id)service account:(id)account incomingUnhandledProtobuf:(id)protobuf fromID:(id)d context:(id)context
{
  v25 = *MEMORY[0x1E69E9840];
  v12 = PKLogFacilityTypeGetObject(0xAuLL);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136316418;
    v14 = "[PKSharingIDSManager service:account:incomingUnhandledProtobuf:fromID:context:]";
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
  v33 = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  accountCopy = account;
  identifierCopy = identifier;
  errorCopy = error;
  v16 = PKLogFacilityTypeGetObject(0xAuLL);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316418;
    v22 = "[PKSharingIDSManager service:account:identifier:didSendWithSuccess:error:]";
    v23 = 2112;
    v24 = serviceCopy;
    v25 = 2112;
    v26 = accountCopy;
    v27 = 2112;
    v28 = identifierCopy;
    v29 = 1024;
    v30 = successCopy;
    v31 = 2112;
    v32 = errorCopy;
    _os_log_impl(&dword_1AD337000, v16, OS_LOG_TYPE_DEFAULT, "%s %@ %@ %@ %d %@", buf, 0x3Au);
  }

  if (!successCopy)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v22 = identifierCopy;
      _os_log_impl(&dword_1AD337000, v16, OS_LOG_TYPE_DEFAULT, "Failed to send with success: %@", buf, 0xCu);
    }

    internalQueue = self->_internalQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __75__PKSharingIDSManager_service_account_identifier_didSendWithSuccess_error___block_invoke;
    block[3] = &unk_1E79C4E00;
    block[4] = self;
    v19 = identifierCopy;
    v20 = errorCopy;
    dispatch_async(internalQueue, block);
  }
}

- (id)_handlerConfigurationForInvitation:(id)invitation forHandle:(id)handle
{
  v16 = 0;
  handleCopy = handle;
  zoneName = [invitation zoneName];
  v14 = 0;
  v15 = 0;
  [PKCloudStoreZone zoneValueForZoneName:zoneName outZoneType:&v16 outAccountIdentifier:&v15 altDSID:&v14];
  v7 = v15;
  v8 = v14;

  v9 = 0;
  v10 = 0;
  v11 = v16 - 2;
  if ((v16 - 2) <= 4)
  {
    v9 = qword_1ADB996D8[v11];
    v10 = qword_1ADB99700[v11];
  }

  v12 = [[PKSharingIDSManagerHandlerConfiguration alloc] initWithSharingGroup:v10];
  [(PKSharingIDSManagerHandlerConfiguration *)v12 setAccountIdentifier:v7];

  [(PKSharingIDSManagerHandlerConfiguration *)v12 setHandle:handleCopy];
  [(PKSharingIDSManagerHandlerConfiguration *)v12 setAccessLevel:v9];

  return v12;
}

- (BOOL)_canPerformIDSMessageForSharingGroup:(unint64_t)group handleUserDetails:(id)details currentUserDetails:(id)userDetails error:(id *)error
{
  v25[1] = *MEMORY[0x1E69E9840];
  detailsCopy = details;
  userDetailsCopy = userDetails;
  if (!group)
  {
    v17 = MEMORY[0x1E696AEC0];
    v18 = @"Error: cannot send IDS message because for an unknown account type";
    goto LABEL_15;
  }

  if (group == 2)
  {
    accountUser = [detailsCopy accountUser];

    if (!accountUser)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"Error: cannot send IDS message because %@ does not have an account user defined", detailsCopy];
      goto LABEL_16;
    }

    accountUser2 = [userDetailsCopy accountUser];

    if (accountUser2)
    {
LABEL_9:
      v15 = 0;
      v16 = 1;
      goto LABEL_19;
    }

    v17 = MEMORY[0x1E696AEC0];
    v23 = userDetailsCopy;
    v18 = @"Error: cannot send IDS message because the current user %@ does not have an account user defined";
LABEL_15:
    [v17 stringWithFormat:v18, v23];
    goto LABEL_16;
  }

  if (group != 1)
  {
    v16 = 0;
    v15 = 0;
    goto LABEL_19;
  }

  familyMember = [detailsCopy familyMember];

  if (!familyMember)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"Error: cannot send IDS message because %@ is not in the family circle", detailsCopy];
    goto LABEL_16;
  }

  familyMember2 = [userDetailsCopy familyMember];

  if (familyMember2)
  {
    goto LABEL_9;
  }

  [MEMORY[0x1E696AEC0] stringWithFormat:@"Error: cannot send IDS message because the current user %@ is not in the family circle", userDetailsCopy];
  v19 = LABEL_16:;
  v15 = v19;
  v16 = 0;
  if (error && v19)
  {
    v20 = MEMORY[0x1E696ABC0];
    v24 = *MEMORY[0x1E696A578];
    v25[0] = v19;
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    *error = [v20 errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:v21];

    v16 = 0;
  }

LABEL_19:

  return v16;
}

- (void)_sendMessageWithProtobuf:(id)protobuf destination:(id)destination handleUserDetails:(id)details currentUserDetails:(id)userDetails completion:(id)completion
{
  v58[1] = *MEMORY[0x1E69E9840];
  protobufCopy = protobuf;
  destinationCopy = destination;
  userDetailsCopy = userDetails;
  completionCopy = completion;
  underlyingService = [(PKIDSService *)self->_service underlyingService];
  iCloudAccount = [underlyingService iCloudAccount];

  if ([iCloudAccount isActive])
  {
    v43 = completionCopy;
    v16 = destinationCopy;
    v17 = MEMORY[0x1E695DFD8];
    registeredURIs = [iCloudAccount registeredURIs];
    v19 = [v17 setWithArray:registeredURIs];
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = __108__PKSharingIDSManager__sendMessageWithProtobuf_destination_handleUserDetails_currentUserDetails_completion___block_invoke;
    v48[3] = &unk_1E79CBFF0;
    v48[4] = self;
    v20 = [v19 pk_setByApplyingBlock:v48];

    primaryAppleID = [userDetailsCopy primaryAppleID];
    v40 = primaryAppleID;
    if ([v20 count] && !objc_msgSend(v20, "containsObject:", primaryAppleID) || (anyObject = primaryAppleID) == 0)
    {
      aliases = [userDetailsCopy aliases];
      v24 = [aliases mutableCopy];
      [v24 intersectSet:v20];
      v25 = PKLogFacilityTypeGetObject(0xAuLL);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v52 = aliases;
        v53 = 2112;
        v54 = v20;
        v55 = 2112;
        v56 = v24;
        _os_log_impl(&dword_1AD337000, v25, OS_LOG_TYPE_DEFAULT, "The family member appleID is not in the list of registeredURIs with IDS. Checking the family members aliases %@ against the IDS registeredURIs %@. The overlapping appleIDs are %@", buf, 0x20u);
      }

      anyObject = [v24 anyObject];
    }

    v44 = userDetailsCopy;
    v26 = [(PKSharingIDSManager *)self _idsIDForHandle:anyObject];
    v27 = v26;
    v41 = v20;
    v42 = iCloudAccount;
    if (v26)
    {
      v49 = *MEMORY[0x1E69A47B0];
      v50 = v26;
      v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
      v29 = PKLogFacilityTypeGetObject(0xAuLL);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v52 = v27;
        v53 = 2112;
        v30 = protobufCopy;
        v54 = protobufCopy;
        _os_log_impl(&dword_1AD337000, v29, OS_LOG_TYPE_DEFAULT, "Using IDS fromID as %@ for request protobuf %@", buf, 0x16u);
LABEL_20:

        underlyingService2 = [(PKIDSService *)self->_service underlyingService];
        v36 = MEMORY[0x1E695DFD8];
        v37 = v16;
        idsDestination = [v16 idsDestination];
        v39 = [v36 setWithObject:idsDestination];
        v46[0] = MEMORY[0x1E69E9820];
        v46[1] = 3221225472;
        v46[2] = __108__PKSharingIDSManager__sendMessageWithProtobuf_destination_handleUserDetails_currentUserDetails_completion___block_invoke_118;
        v46[3] = &unk_1E79C5508;
        completionCopy = v43;
        v46[4] = self;
        v47 = v43;
        PKProtobufSendWithOptions(underlyingService2, v30, v39, 300, 0, 0, 1, v46, v28);

        destinationCopy = v37;
        userDetailsCopy = v44;
        iCloudAccount = v42;
        goto LABEL_21;
      }
    }

    else
    {
      v29 = PKLogFacilityTypeGetObject(0xAuLL);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v52 = 0;
        v53 = 2112;
        v30 = protobufCopy;
        v54 = protobufCopy;
        _os_log_impl(&dword_1AD337000, v29, OS_LOG_TYPE_DEFAULT, "Not defining IDS fromID as %@ for request protobuf %@", buf, 0x16u);
        v28 = 0;
        goto LABEL_20;
      }

      v28 = 0;
    }

    v30 = protobufCopy;
    goto LABEL_20;
  }

  anyObject = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error: cannot sent IDS message since the Apple Account is not active %@", iCloudAccount];
  v31 = PKLogFacilityTypeGetObject(0xAuLL);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v52 = anyObject;
    _os_log_impl(&dword_1AD337000, v31, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }

  if (completionCopy)
  {
    v32 = MEMORY[0x1E696ABC0];
    v57 = *MEMORY[0x1E696A578];
    v58[0] = anyObject;
    v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v58 forKeys:&v57 count:1];
    v34 = [v32 errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:v33];
    (*(completionCopy + 2))(completionCopy, v34);
  }

  v30 = protobufCopy;
LABEL_21:
}

void __108__PKSharingIDSManager__sendMessageWithProtobuf_destination_handleUserDetails_currentUserDetails_completion___block_invoke_118(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = *(a1 + 40);
    if (v7)
    {
      v8 = *(*(a1 + 32) + 24);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __108__PKSharingIDSManager__sendMessageWithProtobuf_destination_handleUserDetails_currentUserDetails_completion___block_invoke_2;
      block[3] = &unk_1E79C44A0;
      v28 = v7;
      v27 = v6;
      dispatch_async(v8, block);

      v9 = v28;
LABEL_7:

      goto LABEL_8;
    }
  }

  if (v5 && *(a1 + 40))
  {
    v9 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(*(a1 + 32) + 32));
    v10 = dispatch_time(0, 15000000000);
    dispatch_source_set_timer(v9, v10, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __108__PKSharingIDSManager__sendMessageWithProtobuf_destination_handleUserDetails_currentUserDetails_completion___block_invoke_3;
    handler[3] = &unk_1E79C4DD8;
    v11 = v5;
    v12 = *(a1 + 32);
    v24 = v11;
    v25 = v12;
    dispatch_source_set_event_handler(v9, handler);
    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __108__PKSharingIDSManager__sendMessageWithProtobuf_destination_handleUserDetails_currentUserDetails_completion___block_invoke_119;
    v20 = &unk_1E79C4DD8;
    v21 = *(a1 + 32);
    v13 = v11;
    v22 = v13;
    dispatch_source_set_cancel_handler(v9, &v17);
    v14 = *(*(a1 + 32) + 40);
    v15 = [*(a1 + 40) copy];
    v16 = _Block_copy(v15);
    [v14 setObject:v16 forKey:v13];

    [*(*(a1 + 32) + 56) setObject:v9 forKey:v13];
    dispatch_resume(v9);

    goto LABEL_7;
  }

LABEL_8:
}

void __108__PKSharingIDSManager__sendMessageWithProtobuf_destination_handleUserDetails_currentUserDetails_completion___block_invoke_3(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(0xAuLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "PKSharingIDSManager request timer has fired for %@", &v8, 0xCu);
  }

  v6 = a1 + 32;
  v4 = *(a1 + 32);
  v5 = *(v6 + 8);
  v7 = [v5 _timeoutErrorForIdentifier:v4];
  [v5 _queue_callCompletionHandlerForIdentifier:v4 withError:v7];
}

- (void)_queue_callCompletionHandlerForIdentifier:(id)identifier withError:(id)error
{
  v21 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  errorCopy = error;
  if (identifierCopy)
  {
    v8 = PKLogFacilityTypeGetObject(0xAuLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v18 = identifierCopy;
      v19 = 2112;
      v20 = errorCopy;
      _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Requesting to call completion block for %@ with error %@", buf, 0x16u);
    }

    v9 = [(NSMutableDictionary *)self->_completionHandlers objectForKey:identifierCopy];
    v10 = [(NSMutableDictionary *)self->_completionTimers objectForKey:identifierCopy];
    v11 = v10;
    if (v10)
    {
      dispatch_source_cancel(v10);
      [(NSMutableDictionary *)self->_completionTimers removeObjectForKey:identifierCopy];
    }

    if (v9)
    {
      [(NSMutableDictionary *)self->_completionHandlers removeObjectForKey:identifierCopy];
      callbackQueue = self->_callbackQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __75__PKSharingIDSManager__queue_callCompletionHandlerForIdentifier_withError___block_invoke;
      block[3] = &unk_1E79C4D60;
      v14 = identifierCopy;
      v15 = errorCopy;
      v16 = v9;
      dispatch_async(callbackQueue, block);
    }
  }
}

uint64_t __75__PKSharingIDSManager__queue_callCompletionHandlerForIdentifier_withError___block_invoke(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(0xAuLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = a1[5];
    v6 = 138412546;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "Calling completion block for %@ with error %@", &v6, 0x16u);
  }

  return (*(a1[6] + 16))();
}

- (id)_timeoutErrorForIdentifier:(id)identifier
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696ABC0];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"IDS request timed out for identifier %@", identifier, *MEMORY[0x1E696A578]];
  v9[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v6 = [v3 errorWithDomain:@"PKPassKitErrorDomain" code:-8000 userInfo:v5];

  return v6;
}

- (void)_registerListeners
{
  [(PKIDSService *)self->_service setProtobufAction:sel__cloudStoreZoneShareInvitationRequestReceived_service_account_fromID_context_ target:self forIncomingRequestsOfType:10 queue:self->_internalQueue];
  [(PKIDSService *)self->_service setProtobufAction:sel__cloudStoreZoneShareInvitationRequestRemoved_service_account_fromID_context_ target:self forIncomingRequestsOfType:11 queue:self->_internalQueue];
  [(PKIDSService *)self->_service setProtobufAction:sel__cloudStoreZoneShareInvitationRequestInvitationData_service_account_fromID_context_ target:self forIncomingRequestsOfType:12 queue:self->_internalQueue];
  [(PKIDSService *)self->_service setProtobufAction:sel__remoteRegistrationRequestReceived_service_account_fromID_context_ target:self forIncomingRequestsOfType:13 queue:self->_internalQueue];
  [(PKIDSService *)self->_service setProtobufAction:sel__deviceSharingCapabiltiesRequestReceived_service_account_fromID_context_ target:self forIncomingRequestsOfType:14 queue:self->_internalQueue];
  [(PKIDSService *)self->_service setProtobufAction:sel__cloudStoreZoneShareInvitationResponseReceived_service_account_fromID_context_ target:self forIncomingResponsesOfType:10 queue:self->_internalQueue];
  [(PKIDSService *)self->_service setProtobufAction:sel__remoteRegistrationRequestResultReceived_service_account_fromID_context_ target:self forIncomingResponsesOfType:13 queue:self->_internalQueue];
  service = self->_service;
  internalQueue = self->_internalQueue;

  [(PKIDSService *)service setProtobufAction:sel__deviceSharingCapabilitiesRequestResultReceived_service_account_fromID_context_ target:self forIncomingResponsesOfType:14 queue:internalQueue];
}

- (id)_sanitizedHandleWithFromID:(id)d
{
  v4 = IDSCopyAddressDestinationForDestination();
  v5 = [(PKSharingIDSManager *)self _sanitizedHande:v4];

  return v5;
}

- (id)_sanitizedHande:(id)hande
{
  handeCopy = hande;
  v4 = @"mailto:";
  if (([handeCopy hasPrefix:@"mailto:"] & 1) != 0 || (v4 = @"tel:", objc_msgSend(handeCopy, "hasPrefix:", @"tel:")))
  {
    v5 = [handeCopy rangeOfString:v4];
    v7 = [handeCopy stringByReplacingOccurrencesOfString:v4 withString:&stru_1F227FD28 options:0 range:{v5, v6}];

    handeCopy = v7;
  }

  return handeCopy;
}

- (id)_idsIDForHandle:(id)handle
{
  handleCopy = handle;
  if ([handleCopy _appearsToBeEmail])
  {
    v4 = _IDSCopyIDForEmailAddress();
LABEL_5:
    v5 = v4;
    goto LABEL_7;
  }

  if ([handleCopy _appearsToBePhoneNumber])
  {
    v4 = _IDSCopyIDForPhoneNumberWithOptions();
    goto LABEL_5;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

- (id)_primaryAppleIDSharingDestination:(id)destination
{
  primaryAppleID = [destination primaryAppleID];
  if (primaryAppleID)
  {
    v5 = [(PKSharingIDSManager *)self _idsIDForHandle:primaryAppleID];
    if (v5)
    {
      v6 = [[PKSharingDestination alloc] initWithDestinationIdentifier:v5];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_sharingDestinationForHandles:(id)handles completion:(id)completion
{
  handlesCopy = handles;
  completionCopy = completion;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__PKSharingIDSManager__sharingDestinationForHandles_completion___block_invoke;
  block[3] = &unk_1E79C44F0;
  selfCopy = self;
  v14 = completionCopy;
  v12 = handlesCopy;
  v9 = handlesCopy;
  v10 = completionCopy;
  dispatch_async(internalQueue, block);
}

void __64__PKSharingIDSManager__sharingDestinationForHandles_completion___block_invoke(uint64_t a1)
{
  v44 = *MEMORY[0x1E69E9840];
  if (*(a1 + 48))
  {
    if (![*(a1 + 32) count])
    {
      v2 = PKLogFacilityTypeGetObject(0xAuLL);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "Cannot get sharing handle for undefined handles", buf, 2u);
      }

      (*(*(a1 + 48) + 16))();
    }

    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __64__PKSharingIDSManager__sharingDestinationForHandles_completion___block_invoke_144;
    v41[3] = &unk_1E79CBFF0;
    v20 = a1;
    v3 = *(a1 + 32);
    v41[4] = *(a1 + 40);
    v4 = [v3 pk_arrayByApplyingBlock:v41];
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    obj = v4;
    v5 = [obj countByEnumeratingWithState:&v37 objects:v43 count:16];
    if (v5)
    {
      v6 = *v38;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v38 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v8 = [*(a1 + 40) _idsIDForHandle:*(*(&v37 + 1) + 8 * i)];
          v9 = [*(*(a1 + 40) + 48) objectForKey:v8];
          if (v9)
          {
            (*(*(a1 + 48) + 16))();

            v10 = obj;
            goto LABEL_23;
          }
        }

        v5 = [obj countByEnumeratingWithState:&v37 objects:v43 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

    v10 = [MEMORY[0x1E69A4878] sharedInstance];
    v8 = objc_alloc_init(PKAsyncUnaryOperationComposer);
    *buf = 0;
    v32 = buf;
    v33 = 0x3032000000;
    v34 = __Block_byref_object_copy__14;
    v35 = __Block_byref_object_dispose__14;
    v36 = 0;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v11 = obj;
    v12 = [v11 countByEnumeratingWithState:&v27 objects:v42 count:16];
    if (v12)
    {
      v13 = *v28;
      do
      {
        for (j = 0; j != v12; ++j)
        {
          if (*v28 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v27 + 1) + 8 * j);
          v24[0] = MEMORY[0x1E69E9820];
          v24[1] = 3221225472;
          v24[2] = __64__PKSharingIDSManager__sharingDestinationForHandles_completion___block_invoke_2;
          v24[3] = &unk_1E79CC040;
          v24[4] = *(v20 + 40);
          v24[5] = v15;
          v25 = v10;
          v26 = buf;
          [(PKAsyncUnaryOperationComposer *)v8 addOperation:v24];
        }

        v12 = [v11 countByEnumeratingWithState:&v27 objects:v42 count:16];
      }

      while (v12);
    }

    v16 = [MEMORY[0x1E695DFB0] null];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __64__PKSharingIDSManager__sharingDestinationForHandles_completion___block_invoke_150;
    v21[3] = &unk_1E79CC090;
    v17 = *(v20 + 48);
    v21[4] = *(v20 + 40);
    v23 = buf;
    v22 = v17;
    v18 = [(PKAsyncUnaryOperationComposer *)v8 evaluateWithInput:v16 completion:v21];

    _Block_object_dispose(buf, 8);
LABEL_23:
  }
}

void __64__PKSharingIDSManager__sharingDestinationForHandles_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [*(a1 + 32) _idsIDForHandle:*(a1 + 40)];
  v9 = PKLogFacilityTypeGetObject(0xAuLL);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v23 = v8;
    _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "Checking IDS status for %@", buf, 0xCu);
  }

  v10 = *(*(a1 + 32) + 32);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __64__PKSharingIDSManager__sharingDestinationForHandles_completion___block_invoke_146;
  v17[3] = &unk_1E79CC018;
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v13 = *(a1 + 56);
  v20 = v7;
  v21 = v13;
  v17[4] = v11;
  v18 = v8;
  v19 = v6;
  v14 = v6;
  v15 = v7;
  v16 = v8;
  [v12 refreshIDStatusForDestination:v16 service:@"com.apple.private.alloy.applepay.sharing" listenerID:@"com.apple.private.alloy.applepay.sharing" queue:v10 completionBlock:v17];
}

uint64_t __64__PKSharingIDSManager__sharingDestinationForHandles_completion___block_invoke_146(uint64_t result, uint64_t a2)
{
  v2 = result;
  v13 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    v7 = PKLogFacilityTypeGetObject(0xAuLL);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    v10 = *(v2 + 32);
    v11 = 138412290;
    v12 = v10;
    v9 = "IDS status for %@ is unknown";
    goto LABEL_11;
  }

  if (a2 == 2)
  {
    v7 = PKLogFacilityTypeGetObject(0xAuLL);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    v8 = *(v2 + 32);
    v11 = 138412290;
    v12 = v8;
    v9 = "IDS status for %@ is invalid";
LABEL_11:
    _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, v9, &v11, 0xCu);
    goto LABEL_12;
  }

  if (a2 != 1)
  {
    return result;
  }

  v3 = PKLogFacilityTypeGetObject(0xAuLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(v2 + 32);
    v11 = 138412290;
    v12 = v4;
    _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "IDS status for %@ is valid", &v11, 0xCu);
  }

  v5 = *(*(v2 + 64) + 8);
  v6 = *(v2 + 40);
  v7 = *(v5 + 40);
  *(v5 + 40) = v6;
LABEL_12:

  return (*(*(v2 + 56) + 16))();
}

void __64__PKSharingIDSManager__sharingDestinationForHandles_completion___block_invoke_150(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__PKSharingIDSManager__sharingDestinationForHandles_completion___block_invoke_2_151;
  block[3] = &unk_1E79CC068;
  v4 = *(a1 + 40);
  v3 = v4;
  v6 = v4;
  block[4] = *(a1 + 32);
  dispatch_async(v2, block);
}

void __64__PKSharingIDSManager__sharingDestinationForHandles_completion___block_invoke_2_151(void *a1)
{
  if (*(*(a1[6] + 8) + 40))
  {
    v3 = [[PKSharingDestination alloc] initWithDestinationIdentifier:*(*(a1[6] + 8) + 40)];
    [*(a1[4] + 48) setObject:v3 forKey:*(*(a1[6] + 8) + 40)];
    (*(a1[5] + 16))();
  }

  else
  {
    v2 = PKLogFacilityTypeGetObject(0xAuLL);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "There is no handle registered with IDS to send a message", buf, 2u);
    }

    (*(a1[5] + 16))();
  }
}

- (PKSharingIDSManagerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

@end