@interface PKPeerPaymentWebServiceTargetDevice
- (PKPeerPaymentWebServiceTargetDevice)initWithTargetDeviceDelegate:(id)delegate;
- (id)appleAccountInformation;
- (void)_handleAccountChangedNotification:(id)notification;
- (void)_handlePreferencesChangedNotification:(id)notification;
- (void)dealloc;
- (void)peerPaymentReRegisterWithURL:(id)l pushToken:(id)token peerPaymentWebService:(id)service completion:(id)completion;
- (void)provisionPeerPaymentPassWithProvisioningController:(id)controller credential:(id)credential completion:(id)completion;
- (void)provisionPeerPaymentPassWithProvisioningController:(id)controller peerPaymentWebService:(id)service credential:(id)credential completion:(id)completion;
- (void)renewAppleAccountWithCompletionHandler:(id)handler;
- (void)updateAccountWithCompletion:(id)completion;
@end

@implementation PKPeerPaymentWebServiceTargetDevice

- (id)appleAccountInformation
{
  v2 = +[PKAppleAccountManager sharedInstance];
  appleAccountInformation = [v2 appleAccountInformation];

  return appleAccountInformation;
}

- (PKPeerPaymentWebServiceTargetDevice)initWithTargetDeviceDelegate:(id)delegate
{
  delegateCopy = delegate;
  v13.receiver = self;
  v13.super_class = PKPeerPaymentWebServiceTargetDevice;
  v6 = [(PKPeerPaymentWebServiceTargetDevice *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_targetDeviceDelegate, delegate);
    if ((PKRunningInPassd() & 1) == 0)
    {
      v8 = +[PKPeerPaymentService sharedInstance];
      peerPaymentService = v7->_peerPaymentService;
      v7->_peerPaymentService = v8;

      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter addObserver:v7 selector:sel__handleAccountChangedNotification_ name:@"PKPeerPaymentServiceAccountChangedNotification" object:v7->_peerPaymentService];

      defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter2 addObserver:v7 selector:sel__handlePreferencesChangedNotification_ name:@"PKPeerPaymentServicePreferencesChangedNotification" object:v7->_peerPaymentService];
    }
  }

  return v7;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = PKPeerPaymentWebServiceTargetDevice;
  [(PKPeerPaymentWebServiceTargetDevice *)&v4 dealloc];
}

- (void)peerPaymentReRegisterWithURL:(id)l pushToken:(id)token peerPaymentWebService:(id)service completion:(id)completion
{
  completionCopy = completion;
  targetDeviceDelegate = self->_targetDeviceDelegate;
  if (targetDeviceDelegate)
  {
    [(PKPeerPaymentTargetDeviceDelegate *)targetDeviceDelegate registerDeviceWithRegistrationURL:l pushToken:token forceReregister:1 completion:completionCopy];
  }

  else
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __111__PKPeerPaymentWebServiceTargetDevice_peerPaymentReRegisterWithURL_pushToken_peerPaymentWebService_completion___block_invoke;
    v12[3] = &unk_1E79CB6C0;
    v13 = completionCopy;
    [service peerPaymentRegisterWithURL:l pushToken:token completion:v12];
  }
}

uint64_t __111__PKPeerPaymentWebServiceTargetDevice_peerPaymentReRegisterWithURL_pushToken_peerPaymentWebService_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    if (a2)
    {
      v4 = a3 == 0;
    }

    else
    {
      v4 = 0;
    }

    v5 = v4;
    return (*(result + 16))(result, v5);
  }

  return result;
}

- (void)updateAccountWithCompletion:(id)completion
{
  targetDeviceDelegate = self->_targetDeviceDelegate;
  if (!targetDeviceDelegate)
  {
    targetDeviceDelegate = self->_peerPaymentService;
  }

  [targetDeviceDelegate updateAccountWithCompletion:completion];
}

- (void)provisionPeerPaymentPassWithProvisioningController:(id)controller credential:(id)credential completion:(id)completion
{
  completionCopy = completion;
  credentialCopy = credential;
  controllerCopy = controller;
  v11 = +[PKPeerPaymentWebService sharedService];
  [(PKPeerPaymentWebServiceTargetDevice *)self provisionPeerPaymentPassWithProvisioningController:controllerCopy peerPaymentWebService:v11 credential:credentialCopy completion:completionCopy];
}

- (void)provisionPeerPaymentPassWithProvisioningController:(id)controller peerPaymentWebService:(id)service credential:(id)credential completion:(id)completion
{
  controllerCopy = controller;
  serviceCopy = service;
  credentialCopy = credential;
  completionCopy = completion;
  webService = [controllerCopy webService];
  v14 = webService;
  if (webService)
  {
    v15 = webService;
  }

  else
  {
    v15 = +[PKPaymentWebService sharedService];
  }

  v16 = v15;

  if (!serviceCopy)
  {
    serviceCopy = +[PKPeerPaymentWebService sharedService];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __134__PKPeerPaymentWebServiceTargetDevice_provisionPeerPaymentPassWithProvisioningController_peerPaymentWebService_credential_completion___block_invoke;
  aBlock[3] = &unk_1E79C4E50;
  v17 = completionCopy;
  v32 = v17;
  v18 = _Block_copy(aBlock);
  v19 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentDow.isa, 0);
  v20 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentDow_0.isa, 0);
  v21 = PKDisplayableErrorCustomWithType(-1, v19, v20, 0, 0);

  if (v16 && serviceCopy && ([v16 needsRegistration] & 1) == 0 && !objc_msgSend(serviceCopy, "needsRegistration"))
  {
    v23 = [[PKProvisioningContext alloc] initWithEnvironment:0 provisioningController:controllerCopy groupsController:0];
    [(PKProvisioningContext *)v23 setPeerPaymentWebService:serviceCopy];
    v24 = [[PKProvisioningBackgroundCoordinator alloc] initWithSetupContext:v23 credential:credentialCopy previouslyAcceptedTerms:1];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __134__PKPeerPaymentWebServiceTargetDevice_provisionPeerPaymentPassWithProvisioningController_peerPaymentWebService_credential_completion___block_invoke_52;
    v26[3] = &unk_1E79CB6E8;
    v29 = v18;
    v27 = v21;
    v28 = v24;
    v25 = v24;
    [(PKProvisioningBackgroundCoordinator *)v25 startWithCompletion:v26];
  }

  else
  {
    v22 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v22, OS_LOG_TYPE_DEFAULT, "provisionPeerPaymentPassWithProvisioningController called, but failed to validate preconditions", buf, 2u);
    }

    (*(v18 + 2))(v18, 0, v21);
  }
}

void __134__PKPeerPaymentWebServiceTargetDevice_provisionPeerPaymentPassWithProvisioningController_peerPaymentWebService_credential_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  if (v6)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __134__PKPeerPaymentWebServiceTargetDevice_provisionPeerPaymentPassWithProvisioningController_peerPaymentWebService_credential_completion___block_invoke_2;
    block[3] = &unk_1E79C4540;
    v9 = v6;
    v10 = a2;
    v8 = v5;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __134__PKPeerPaymentWebServiceTargetDevice_provisionPeerPaymentPassWithProvisioningController_peerPaymentWebService_credential_completion___block_invoke_52(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = PKLogFacilityTypeGetObject(0xCuLL);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v5 && !v6)
  {
    if (v8)
    {
      LOWORD(v18) = 0;
      _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "Successfully provisioned peer payment pass!", &v18, 2u);
    }

    (*(*(a1 + 48) + 16))();
    goto LABEL_20;
  }

  if (v8)
  {
    v18 = 138412290;
    v19 = v6;
    _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "Pass provisioning failed with error: %@", &v18, 0xCu);
  }

  if ([v6 hasLocalizedTitleAndMessage])
  {
    v9 = [v6 underlyingError];
    v10 = [v9 domain];
    v11 = v10;
    if (v10 == @"PKPeerPaymentWebServiceErrorDomain")
    {
    }

    else
    {
      if (!v10 || !@"PKPeerPaymentWebServiceErrorDomain")
      {

LABEL_19:
        v16 = *(a1 + 48);
        v17 = [v6 displayableError];
        (*(v16 + 16))(v16, 0, v17);

        goto LABEL_20;
      }

      v12 = [(__CFString *)v10 isEqualToString:@"PKPeerPaymentWebServiceErrorDomain"];

      if ((v12 & 1) == 0)
      {
        goto LABEL_19;
      }
    }
  }

  v13 = *(a1 + 48);
  v14 = [v6 underlyingError];
  v15 = v14;
  if (!v14)
  {
    v15 = *(a1 + 32);
  }

  (*(v13 + 16))(v13, 0, v15);

LABEL_20:
}

- (void)_handleAccountChangedNotification:(id)notification
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"PKPeerPaymentTargetDeviceAccountDidChangeNotification" object:self];
}

- (void)_handlePreferencesChangedNotification:(id)notification
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"PKPeerPaymentTargetDevicePreferencesDidChangeNotification" object:self];
}

- (void)renewAppleAccountWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v4 = +[PKAppleAccountManager sharedInstance];
  [v4 renewAppleAccountWithCompletionHandler:handlerCopy];
}

@end