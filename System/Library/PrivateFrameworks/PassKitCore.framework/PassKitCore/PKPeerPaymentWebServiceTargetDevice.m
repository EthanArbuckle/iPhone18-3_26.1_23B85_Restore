@interface PKPeerPaymentWebServiceTargetDevice
- (PKPeerPaymentWebServiceTargetDevice)initWithTargetDeviceDelegate:(id)a3;
- (id)appleAccountInformation;
- (void)_handleAccountChangedNotification:(id)a3;
- (void)_handlePreferencesChangedNotification:(id)a3;
- (void)dealloc;
- (void)peerPaymentReRegisterWithURL:(id)a3 pushToken:(id)a4 peerPaymentWebService:(id)a5 completion:(id)a6;
- (void)provisionPeerPaymentPassWithProvisioningController:(id)a3 credential:(id)a4 completion:(id)a5;
- (void)provisionPeerPaymentPassWithProvisioningController:(id)a3 peerPaymentWebService:(id)a4 credential:(id)a5 completion:(id)a6;
- (void)renewAppleAccountWithCompletionHandler:(id)a3;
- (void)updateAccountWithCompletion:(id)a3;
@end

@implementation PKPeerPaymentWebServiceTargetDevice

- (id)appleAccountInformation
{
  v2 = +[PKAppleAccountManager sharedInstance];
  v3 = [v2 appleAccountInformation];

  return v3;
}

- (PKPeerPaymentWebServiceTargetDevice)initWithTargetDeviceDelegate:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = PKPeerPaymentWebServiceTargetDevice;
  v6 = [(PKPeerPaymentWebServiceTargetDevice *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_targetDeviceDelegate, a3);
    if ((PKRunningInPassd() & 1) == 0)
    {
      v8 = +[PKPeerPaymentService sharedInstance];
      peerPaymentService = v7->_peerPaymentService;
      v7->_peerPaymentService = v8;

      v10 = [MEMORY[0x1E696AD88] defaultCenter];
      [v10 addObserver:v7 selector:sel__handleAccountChangedNotification_ name:@"PKPeerPaymentServiceAccountChangedNotification" object:v7->_peerPaymentService];

      v11 = [MEMORY[0x1E696AD88] defaultCenter];
      [v11 addObserver:v7 selector:sel__handlePreferencesChangedNotification_ name:@"PKPeerPaymentServicePreferencesChangedNotification" object:v7->_peerPaymentService];
    }
  }

  return v7;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = PKPeerPaymentWebServiceTargetDevice;
  [(PKPeerPaymentWebServiceTargetDevice *)&v4 dealloc];
}

- (void)peerPaymentReRegisterWithURL:(id)a3 pushToken:(id)a4 peerPaymentWebService:(id)a5 completion:(id)a6
{
  v10 = a6;
  targetDeviceDelegate = self->_targetDeviceDelegate;
  if (targetDeviceDelegate)
  {
    [(PKPeerPaymentTargetDeviceDelegate *)targetDeviceDelegate registerDeviceWithRegistrationURL:a3 pushToken:a4 forceReregister:1 completion:v10];
  }

  else
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __111__PKPeerPaymentWebServiceTargetDevice_peerPaymentReRegisterWithURL_pushToken_peerPaymentWebService_completion___block_invoke;
    v12[3] = &unk_1E79CB6C0;
    v13 = v10;
    [a5 peerPaymentRegisterWithURL:a3 pushToken:a4 completion:v12];
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

- (void)updateAccountWithCompletion:(id)a3
{
  targetDeviceDelegate = self->_targetDeviceDelegate;
  if (!targetDeviceDelegate)
  {
    targetDeviceDelegate = self->_peerPaymentService;
  }

  [targetDeviceDelegate updateAccountWithCompletion:a3];
}

- (void)provisionPeerPaymentPassWithProvisioningController:(id)a3 credential:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = +[PKPeerPaymentWebService sharedService];
  [(PKPeerPaymentWebServiceTargetDevice *)self provisionPeerPaymentPassWithProvisioningController:v10 peerPaymentWebService:v11 credential:v9 completion:v8];
}

- (void)provisionPeerPaymentPassWithProvisioningController:(id)a3 peerPaymentWebService:(id)a4 credential:(id)a5 completion:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [v9 webService];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = +[PKPaymentWebService sharedService];
  }

  v16 = v15;

  if (!v10)
  {
    v10 = +[PKPeerPaymentWebService sharedService];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __134__PKPeerPaymentWebServiceTargetDevice_provisionPeerPaymentPassWithProvisioningController_peerPaymentWebService_credential_completion___block_invoke;
  aBlock[3] = &unk_1E79C4E50;
  v17 = v12;
  v32 = v17;
  v18 = _Block_copy(aBlock);
  v19 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentDow.isa, 0);
  v20 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentDow_0.isa, 0);
  v21 = PKDisplayableErrorCustomWithType(-1, v19, v20, 0, 0);

  if (v16 && v10 && ([v16 needsRegistration] & 1) == 0 && !objc_msgSend(v10, "needsRegistration"))
  {
    v23 = [[PKProvisioningContext alloc] initWithEnvironment:0 provisioningController:v9 groupsController:0];
    [(PKProvisioningContext *)v23 setPeerPaymentWebService:v10];
    v24 = [[PKProvisioningBackgroundCoordinator alloc] initWithSetupContext:v23 credential:v11 previouslyAcceptedTerms:1];
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

- (void)_handleAccountChangedNotification:(id)a3
{
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 postNotificationName:@"PKPeerPaymentTargetDeviceAccountDidChangeNotification" object:self];
}

- (void)_handlePreferencesChangedNotification:(id)a3
{
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 postNotificationName:@"PKPeerPaymentTargetDevicePreferencesDidChangeNotification" object:self];
}

- (void)renewAppleAccountWithCompletionHandler:(id)a3
{
  v3 = a3;
  v4 = +[PKAppleAccountManager sharedInstance];
  [v4 renewAppleAccountWithCompletionHandler:v3];
}

@end