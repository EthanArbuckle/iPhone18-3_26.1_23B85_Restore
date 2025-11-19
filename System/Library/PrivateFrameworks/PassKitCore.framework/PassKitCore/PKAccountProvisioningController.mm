@interface PKAccountProvisioningController
+ (BOOL)_isPaymentPassActivated:(id)a3 forAccountCredential:(id)a4;
- (PKAccountProvisioningController)initWithAccountCredential:(id)a3 provisioningController:(id)a4 usingRemoteLibrary:(BOOL)a5;
- (PKAccountProvisioningControllerDelegate)delegate;
- (id)_notificationDidChangeNames;
- (void)_handlePassActiviated;
- (void)_informDelegateOfError:(id)a3;
- (void)_informDelegateOfStateUpdate;
- (void)_passLibraryDidChange:(id)a3;
- (void)_processRemainingTasks;
- (void)_setupAccountAndProvisionAccountCredenital:(id)a3 provisioningController:(id)a4 completion:(id)a5;
- (void)_startPassActivationObserver;
- (void)_stopPassActivationObserver;
- (void)addToIDMS;
- (void)dealloc;
- (void)makeAccountPassDefaultOnLocalDevice;
- (void)performAMPEnrollmentShouldEnroll:(BOOL)a3 shouldMakeDefault:(BOOL)a4;
- (void)provisionAccountPassToLocalDevice;
- (void)provisionAccountPassToWatchAsDefault:(BOOL)a3;
@end

@implementation PKAccountProvisioningController

- (PKAccountProvisioningController)initWithAccountCredential:(id)a3 provisioningController:(id)a4 usingRemoteLibrary:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = PKAccountProvisioningController;
  v11 = [(PKAccountProvisioningController *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_provisioningController, a4);
    objc_storeStrong(&v12->_accountCredential, a3);
    v12->_usingRemoteLibrary = a5;
  }

  return v12;
}

- (void)dealloc
{
  [(PKAccountProvisioningController *)self _stopPassActivationObserver];
  v3.receiver = self;
  v3.super_class = PKAccountProvisioningController;
  [(PKAccountProvisioningController *)&v3 dealloc];
}

- (void)provisionAccountPassToLocalDevice
{
  v3 = PKLogFacilityTypeGetObject(0xFuLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "Requesting local device provisioning of credential", buf, 2u);
  }

  if ((self->_provisionLocalPassState & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    *&self->_provisionLocalPassState = vdupq_n_s64(2uLL);
    [(PKAccountProvisioningController *)self _stopPassActivationObserver];
    objc_initWeak(buf, self);
    accountCredential = self->_accountCredential;
    provisioningController = self->_provisioningController;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __68__PKAccountProvisioningController_provisionAccountPassToLocalDevice__block_invoke;
    v6[3] = &unk_1E79D3E50;
    objc_copyWeak(&v7, buf);
    v6[4] = self;
    [(PKAccountProvisioningController *)self _setupAccountAndProvisionAccountCredenital:accountCredential provisioningController:provisioningController completion:v6];
    objc_destroyWeak(&v7);
    objc_destroyWeak(buf);
  }
}

void __68__PKAccountProvisioningController_provisionAccountPassToLocalDevice__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = PKLogFacilityTypeGetObject(0xFuLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"YES";
    if (!v5)
    {
      v8 = @"NO";
    }

    *buf = 138412290;
    v31 = v8;
    _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "Finished provisioning to local device with success: %@", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v10 = WeakRetained;
  if (WeakRetained)
  {
    if (v5 && !v6)
    {
      v11 = [v5 uniqueID];
      v12 = v10[9];
      v10[9] = v11;

      [v10[2] setPaymentPass:v5];
      if ([objc_opt_class() _isPaymentPassActivated:v5 forAccountCredential:v10[2]])
      {
        *(*(a1 + 32) + 49) = 1;
        v10[11] = 3;
      }

      else
      {
        [v10 _startPassActivationObserver];
      }

      v13 = [v10[2] account];
      v14 = [v13 accountIdentifier];
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __68__PKAccountProvisioningController_provisionAccountPassToLocalDevice__block_invoke_39;
      aBlock[3] = &unk_1E79C9D80;
      objc_copyWeak(&v29, (a1 + 40));
      v15 = _Block_copy(aBlock);
      v21 = MEMORY[0x1E69E9820];
      v22 = 3221225472;
      v23 = __68__PKAccountProvisioningController_provisionAccountPassToLocalDevice__block_invoke_3;
      v24 = &unk_1E79D3E28;
      objc_copyWeak(&v27, (a1 + 40));
      v16 = v14;
      v25 = v16;
      v17 = v15;
      v26 = v17;
      v18 = _Block_copy(&v21);
      v19 = [v13 type];
      v20 = v18;
      if ((v19 - 3) >= 2)
      {
        if (v19)
        {
          v20 = v18;
          if (v19 != 1)
          {
            goto LABEL_18;
          }
        }

        else
        {
          v20 = v17;
        }
      }

      v20[2](v20);
LABEL_18:

      objc_destroyWeak(&v27);
      objc_destroyWeak(&v29);

      goto LABEL_19;
    }

    WeakRetained[10] = 0;
    WeakRetained[11] = 0;
    [WeakRetained _informDelegateOfError:v6];
  }

LABEL_19:
}

void __68__PKAccountProvisioningController_provisionAccountPassToLocalDevice__block_invoke_39(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __68__PKAccountProvisioningController_provisionAccountPassToLocalDevice__block_invoke_2;
    block[3] = &unk_1E79C4E28;
    block[4] = WeakRetained;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

uint64_t __68__PKAccountProvisioningController_provisionAccountPassToLocalDevice__block_invoke_2(uint64_t a1)
{
  *(*(a1 + 32) + 80) = 3;
  [*(a1 + 32) _informDelegateOfStateUpdate];
  v2 = *(a1 + 32);

  return [v2 _processRemainingTasks];
}

void __68__PKAccountProvisioningController_provisionAccountPassToLocalDevice__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained[3] webService];
    v5 = [v4 targetDevice];
    if (v5 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __68__PKAccountProvisioningController_provisionAccountPassToLocalDevice__block_invoke_4;
      v9[3] = &unk_1E79D3E00;
      v6 = *(a1 + 32);
      v10 = *(a1 + 40);
      [v5 paymentWebService:v4 updateAccountWithIdentifier:v6 completion:v9];
    }

    else
    {
      v7 = PKLogFacilityTypeGetObject(0xFuLL);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 0;
        _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "Error: Target device does not support updating account", &v8, 2u);
      }

      (*(*(a1 + 40) + 16))();
    }
  }
}

- (void)makeAccountPassDefaultOnLocalDevice
{
  if ((self->_makeAccountPassDefaultOnLocalDeviceState & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    return;
  }

  v15 = v2;
  v16 = v3;
  if (![(NSString *)self->_provisionedPassUniqueID length])
  {
    if (self->_makeAccountPassDefaultOnLocalDeviceState == 1)
    {
      return;
    }

    v8 = PKLogFacilityTypeGetObject(0xFuLL);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_13;
    }

    v14 = 0;
    v9 = "Pass provisioning not complete - queueing work to make it default";
    v10 = &v14;
    goto LABEL_12;
  }

  if (!self->_passIsActivated)
  {
    v8 = PKLogFacilityTypeGetObject(0xFuLL);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
LABEL_13:

      self->_makeAccountPassDefaultOnLocalDeviceState = 1;
      return;
    }

    v12 = 0;
    v9 = "Pass is not yet activated, queuing request";
    v10 = &v12;
LABEL_12:
    _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, v9, v10, 2u);
    goto LABEL_13;
  }

  self->_makeAccountPassDefaultOnLocalDeviceState = 2;
  v5 = [(PKAccountCredential *)self->_accountCredential paymentPass];
  PKEnableAutomaticSelectionForPaymentPass(v5);

  v6 = [(PKPaymentProvisioningController *)self->_provisioningController webService];
  v7 = [v6 targetDevice];
  if (v7 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v7 paymentWebService:v6 setDefaultPaymentPassUniqueIdentifier:self->_provisionedPassUniqueID];
  }

  else
  {
    v11 = PKLogFacilityTypeGetObject(0xFuLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "Error: Target device does not support setting default", buf, 2u);
    }
  }

  self->_makeAccountPassDefaultOnLocalDeviceState = 3;
  [(PKAccountProvisioningController *)self _informDelegateOfStateUpdate];
  [(PKAccountProvisioningController *)self _processRemainingTasks];
}

- (void)performAMPEnrollmentShouldEnroll:(BOOL)a3 shouldMakeDefault:(BOOL)a4
{
  if ((self->_addToAMPState & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    self->_enrollInAMP = a3;
    self->_makeDefaultInAMP = a3 && a4;
    if ([(NSString *)self->_provisionedPassUniqueID length])
    {
      self->_addToAMPState = 2;
      v6 = +[PKAMPEnrollmentManager sharedManager];
      v7 = [(PKAccountCredential *)self->_accountCredential paymentPass];
      v8 = PKDismissedKeyForPass(@"AMPEnrollmentDismissed", v7);
      objc_initWeak(location, self);
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __86__PKAccountProvisioningController_performAMPEnrollmentShouldEnroll_shouldMakeDefault___block_invoke;
      aBlock[3] = &unk_1E79D3EA0;
      v9 = v8;
      v20 = v9;
      objc_copyWeak(&v21, location);
      v10 = _Block_copy(aBlock);
      if (a3)
      {
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = __86__PKAccountProvisioningController_performAMPEnrollmentShouldEnroll_shouldMakeDefault___block_invoke_48;
        v13[3] = &unk_1E79D3EC8;
        v14 = v6;
        v15 = v7;
        v16 = self;
        v17 = v10;
        [v14 enrollmentStatusForPaymentPass:v15 completion:v13 progress:v17];
      }

      else
      {
        v12 = PKLogFacilityTypeGetObject(0xFuLL);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, "Skipping making card non default in AMP", buf, 2u);
        }

        (*(v10 + 2))(v10, 0, 0);
      }

      objc_destroyWeak(&v21);
      objc_destroyWeak(location);
    }

    else if (self->_addToAMPState != 1)
    {
      v11 = PKLogFacilityTypeGetObject(0xFuLL);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(location[0]) = 0;
        _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "Pass provisioning not complete - queueing work to add to AMP", location, 2u);
      }

      self->_addToAMPState = 1;
    }
  }
}

void __86__PKAccountProvisioningController_performAMPEnrollmentShouldEnroll_shouldMakeDefault___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __86__PKAccountProvisioningController_performAMPEnrollmentShouldEnroll_shouldMakeDefault___block_invoke_2;
  v7[3] = &unk_1E79D3E78;
  v11 = a2;
  v8 = v5;
  v9 = *(a1 + 32);
  v6 = v5;
  objc_copyWeak(&v10, (a1 + 40));
  dispatch_async(MEMORY[0x1E69E96A0], v7);
  objc_destroyWeak(&v10);
}

void __86__PKAccountProvisioningController_performAMPEnrollmentShouldEnroll_shouldMakeDefault___block_invoke_2(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(0xFuLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 56);
    v4 = *(a1 + 32);
    v7[0] = 67109378;
    v7[1] = v3;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "AMP enrollment completed:%d (%@)", v7, 0x12u);
  }

  PKSharedCacheSetBoolForKey(*(a1 + 56), *(a1 + 40));
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v6 = WeakRetained;
  if (WeakRetained && *(WeakRetained + 15) == 2)
  {
    *(WeakRetained + 50) = *(a1 + 56);
    *(WeakRetained + 15) = 3;
    [WeakRetained _informDelegateOfStateUpdate];
    [v6 _processRemainingTasks];
  }
}

void __86__PKAccountProvisioningController_performAMPEnrollmentShouldEnroll_shouldMakeDefault___block_invoke_48(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2 != 2)
  {
    v7 = v5;
    if (a2 == 1)
    {
      [*(a1 + 32) enrollPaymentPass:*(a1 + 40) isDefault:*(*(a1 + 48) + 33) completion:*(a1 + 56)];
    }

    else
    {
      (*(*(a1 + 56) + 16))();
    }

    v6 = v7;
  }
}

- (void)addToIDMS
{
  if ((self->_addToIDMSState & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    self->_addToIDMSState = 2;
    v3 = [(PKAccountCredential *)self->_accountCredential account];
    v4 = objc_alloc_init(PKAccountWebServiceAccountActionRequest);
    v5 = [v3 accountIdentifier];
    [(PKAccountWebServiceAccountActionRequest *)v4 setAccountIdentifier:v5];

    v6 = [v3 accountBaseURL];
    [(PKAccountWebServiceAccountActionRequest *)v4 setBaseURL:v6];

    v7 = objc_alloc_init(PKAccountAction);
    [(PKAccountAction *)v7 setActionType:1];
    [(PKAccountWebServiceAccountActionRequest *)v4 setAction:v7];
    objc_initWeak(&location, self);
    v8 = [(PKPaymentProvisioningController *)self->_provisioningController webService];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __44__PKAccountProvisioningController_addToIDMS__block_invoke;
    v9[3] = &unk_1E79D3EF0;
    objc_copyWeak(&v10, &location);
    [v8 accountActionWithRequest:v4 completion:v9];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

void __44__PKAccountProvisioningController_addToIDMS__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __44__PKAccountProvisioningController_addToIDMS__block_invoke_2;
    block[3] = &unk_1E79C4E28;
    block[4] = WeakRetained;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

uint64_t __44__PKAccountProvisioningController_addToIDMS__block_invoke_2(uint64_t a1)
{
  v2 = PKLogFacilityTypeGetObject(0xFuLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "Completed account pass default in IDMS", v4, 2u);
  }

  *(*(a1 + 32) + 104) = 3;
  [*(a1 + 32) _informDelegateOfStateUpdate];
  return [*(a1 + 32) _processRemainingTasks];
}

- (void)provisionAccountPassToWatchAsDefault:(BOOL)a3
{
  v3 = a3;
  if (PKIsPairedWithWatch())
  {
    if ((self->_provisionWatchPassState & 0xFFFFFFFFFFFFFFFELL) != 2)
    {
      self->_provisionWatchPassState = 2;
      v5 = PKLogFacilityTypeGetObject(0xFuLL);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Requesting watch provisioning of credential", buf, 2u);
      }

      objc_initWeak(buf, self);
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __72__PKAccountProvisioningController_provisionAccountPassToWatchAsDefault___block_invoke;
      aBlock[3] = &unk_1E79C9D80;
      objc_copyWeak(&v19, buf);
      v6 = _Block_copy(aBlock);
      if (!self->_watchConnection)
      {
        v7 = objc_alloc_init(getNPKCompanionAgentConnectionClass_1[0]());
        watchConnection = self->_watchConnection;
        self->_watchConnection = v7;
      }

      v9 = [(PKAccountCredential *)self->_accountCredential account];
      v10 = [v9 accountIdentifier];

      v11 = self->_watchConnection;
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __72__PKAccountProvisioningController_provisionAccountPassToWatchAsDefault___block_invoke_3;
      v15[3] = &unk_1E79C4568;
      v12 = v10;
      v16 = v12;
      v13 = v6;
      v17 = v13;
      [(NPKCompanionAgentConnection *)v11 provisionPassForAccountIdentifier:v12 makeDefault:v3 completion:v15];

      objc_destroyWeak(&v19);
      objc_destroyWeak(buf);
    }
  }

  else
  {
    v14 = PKLogFacilityTypeGetObject(0xFuLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_1AD337000, v14, OS_LOG_TYPE_DEFAULT, "No watch paired for provisioning of credential", buf, 2u);
    }
  }
}

void __72__PKAccountProvisioningController_provisionAccountPassToWatchAsDefault___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __72__PKAccountProvisioningController_provisionAccountPassToWatchAsDefault___block_invoke_2;
    block[3] = &unk_1E79C4E28;
    block[4] = WeakRetained;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

uint64_t __72__PKAccountProvisioningController_provisionAccountPassToWatchAsDefault___block_invoke_2(uint64_t a1)
{
  *(*(a1 + 32) + 96) = 3;
  [*(a1 + 32) _informDelegateOfStateUpdate];
  v2 = *(a1 + 32);

  return [v2 _processRemainingTasks];
}

void __72__PKAccountProvisioningController_provisionAccountPassToWatchAsDefault___block_invoke_3(uint64_t a1, int a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = PKLogFacilityTypeGetObject(0xFuLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (a2)
    {
      v7 = @"YES";
    }

    v9 = 138412546;
    v10 = v7;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "Finished provisioning to watch with success: %@ error: %@", &v9, 0x16u);
  }

  if (a2)
  {
    v8 = +[PKPassLibrary sharedInstanceWithRemoteLibrary];
    [v8 paymentPassWithAssociatedAccountIdentifier:*(a1 + 32) completion:&__block_literal_global_97];
  }

  (*(*(a1 + 40) + 16))();
}

- (void)_processRemainingTasks
{
  if (self->_addToIDMSState == 1)
  {
    [(PKAccountProvisioningController *)self addToIDMS];
  }

  if (self->_makeAccountPassDefaultOnLocalDeviceState == 1)
  {
    [(PKAccountProvisioningController *)self makeAccountPassDefaultOnLocalDevice];
  }

  if (self->_addToAMPState == 1)
  {
    enrollInAMP = self->_enrollInAMP;
    makeDefaultInAMP = self->_makeDefaultInAMP;

    [(PKAccountProvisioningController *)self performAMPEnrollmentShouldEnroll:enrollInAMP shouldMakeDefault:makeDefaultInAMP];
  }
}

- (void)_setupAccountAndProvisionAccountCredenital:(id)a3 provisioningController:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __112__PKAccountProvisioningController__setupAccountAndProvisionAccountCredenital_provisioningController_completion___block_invoke;
  aBlock[3] = &unk_1E79C4A68;
  v11 = v10;
  aBlock[4] = self;
  v23 = v11;
  v12 = _Block_copy(aBlock);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __112__PKAccountProvisioningController__setupAccountAndProvisionAccountCredenital_provisioningController_completion___block_invoke_2;
  v17[3] = &unk_1E79D3F60;
  v18 = v9;
  v19 = v8;
  v20 = v12;
  v21 = v11;
  v13 = v11;
  v14 = v8;
  v15 = v9;
  v16 = v12;
  [v15 validatePreconditionsAndRegister:v17];
}

void __112__PKAccountProvisioningController__setupAccountAndProvisionAccountCredenital_provisioningController_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  if (*(a1 + 40))
  {
    v5 = *(*(a1 + 32) + 24);
    v6 = a3;
    v7 = [v5 provisionedPasses];
    v8 = [v7 lastObject];
    v9 = [v8 secureElementPass];
    v11 = [v9 paymentPass];

    v10 = v11;
    if (!a2)
    {
      v10 = 0;
    }

    (*(*(a1 + 40) + 16))(*(a1 + 40), v10, v6);
  }
}

void __112__PKAccountProvisioningController__setupAccountAndProvisionAccountCredenital_provisioningController_completion___block_invoke_2(uint64_t a1, char a2, uint64_t a3)
{
  if (a3 || (a2 & 1) == 0)
  {
    v8 = *(*(a1 + 48) + 16);

    v8();
  }

  else
  {
    v4 = [[PKProvisioningContext alloc] initWithEnvironment:0 provisioningController:*(a1 + 32) groupsController:0];
    v5 = [[PKProvisioningBackgroundCoordinator alloc] initWithSetupContext:v4 credential:*(a1 + 40) previouslyAcceptedTerms:1];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __112__PKAccountProvisioningController__setupAccountAndProvisionAccountCredenital_provisioningController_completion___block_invoke_3;
    v9[3] = &unk_1E79D3F38;
    v6 = *(a1 + 56);
    v10 = v5;
    v11 = v6;
    v7 = v5;
    [(PKProvisioningBackgroundCoordinator *)v7 startWithCompletion:v9];
  }
}

void __112__PKAccountProvisioningController__setupAccountAndProvisionAccountCredenital_provisioningController_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [a2 firstObject];
  v7 = [v6 secureElementPass];
  v8 = [v7 paymentPass];

  v9 = PKLogFacilityTypeGetObject(0xFuLL);
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v10)
    {
      v11 = [v8 uniqueID];
      v14 = 138412290;
      v15 = v11;
      _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "Sucessfully provisioned pass %@", &v14, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (v10)
    {
      v14 = 138412290;
      v15 = v5;
      _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "Pass provisioning failed with error: %@", &v14, 0xCu);
    }

    v12 = *(a1 + 40);
    if ([v5 hasLocalizedTitleAndMessage])
    {
      v13 = [v5 displayableError];
      (*(v12 + 16))(v12, 0, v13);
    }

    else
    {
      (*(v12 + 16))(v12, 0, 0);
    }
  }
}

+ (BOOL)_isPaymentPassActivated:(id)a3 forAccountCredential:(id)a4
{
  v5 = a3;
  v6 = [a4 passDetailsResponse];
  v7 = [v6 status];

  v8 = (v7 + 1) <= 6 && (((1 << (v7 + 1)) & 0x47) == 0 || ![v5 activationState]);
  return v8;
}

- (id)_notificationDidChangeNames
{
  if (self->_usingRemoteLibrary)
  {
    [MEMORY[0x1E695DFD8] setWithObjects:{@"PKPassLibraryRemotePaymentPassesDidChange", @"PKPassLibraryDidChangeNotification", 0}];
  }

  else
  {
    [MEMORY[0x1E695DFD8] setWithObject:@"PKPassLibraryDidChangeNotification"];
  }
  v2 = ;

  return v2;
}

- (void)_startPassActivationObserver
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = PKLogFacilityTypeGetObject(0xFuLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "Starting pass activiation observer", buf, 2u);
  }

  v4 = [(PKAccountProvisioningController *)self _notificationDidChangeNames];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        v10 = [MEMORY[0x1E696AD88] defaultCenter];
        [v10 addObserver:self selector:sel__passLibraryDidChange_ name:v9 object:0];
      }

      v6 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  if (self->_passActivationTimeout > 0.0 && !self->_activationTimer)
  {
    v11 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, MEMORY[0x1E69E96A0]);
    activationTimer = self->_activationTimer;
    self->_activationTimer = v11;

    v13 = dispatch_time(0, (self->_passActivationTimeout * 1000000000.0));
    dispatch_source_set_timer(self->_activationTimer, v13, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
    objc_initWeak(buf, self);
    v14 = self->_activationTimer;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __63__PKAccountProvisioningController__startPassActivationObserver__block_invoke;
    handler[3] = &unk_1E79C9D80;
    objc_copyWeak(&v16, buf);
    dispatch_source_set_event_handler(v14, handler);
    dispatch_resume(self->_activationTimer);
    objc_destroyWeak(&v16);
    objc_destroyWeak(buf);
  }
}

void __63__PKAccountProvisioningController__startPassActivationObserver__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = PKLogFacilityTypeGetObject(0xFuLL);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "Pass activation timeout occured. Forcing activiation callback", v5, 2u);
    }

    v3 = WeakRetained[5];
    if (v3)
    {
      dispatch_source_cancel(v3);
      v4 = WeakRetained[5];
      WeakRetained[5] = 0;
    }

    [WeakRetained _handlePassActiviated];
  }
}

- (void)_stopPassActivationObserver
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = PKLogFacilityTypeGetObject(0xFuLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "Stopping pass activiation observer", buf, 2u);
  }

  v4 = [(PKAccountProvisioningController *)self _notificationDidChangeNames];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        v10 = [MEMORY[0x1E696AD88] defaultCenter];
        [v10 removeObserver:self name:v9 object:0];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v6);
  }

  activationTimer = self->_activationTimer;
  if (activationTimer)
  {
    dispatch_source_cancel(activationTimer);
    v12 = self->_activationTimer;
    self->_activationTimer = 0;
  }
}

- (void)_passLibraryDidChange:(id)a3
{
  v4 = a3;
  v5 = PKLogFacilityTypeGetObject(0xFuLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Pass activiation observer - library did change", buf, 2u);
  }

  v6 = [v4 userInfo];
  v7 = [v6 objectForKeyedSubscript:@"PKPassLibraryReplacementPassesUserInfo"];

  if (v7)
  {
    *buf = 0;
    v11 = buf;
    v12 = 0x2020000000;
    v13 = 0;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __57__PKAccountProvisioningController__passLibraryDidChange___block_invoke;
    v9[3] = &unk_1E79D3F88;
    v9[4] = self;
    v9[5] = buf;
    [v7 enumerateObjectsUsingBlock:v9];
    if (v11[24] == 1)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __57__PKAccountProvisioningController__passLibraryDidChange___block_invoke_2;
      block[3] = &unk_1E79C4E28;
      block[4] = self;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }

    _Block_object_dispose(buf, 8);
  }
}

void __57__PKAccountProvisioningController__passLibraryDidChange___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = [a2 paymentPass];
  v6 = [v8 uniqueID];
  v7 = [v6 isEqualToString:*(*(a1 + 32) + 72)];

  if (v7)
  {
    *a4 = 1;
    *(*(*(a1 + 40) + 8) + 24) = [objc_opt_class() _isPaymentPassActivated:v8 forAccountCredential:*(*(a1 + 32) + 16)];
  }
}

uint64_t __57__PKAccountProvisioningController__passLibraryDidChange___block_invoke_2(uint64_t a1)
{
  v2 = PKLogFacilityTypeGetObject(0xFuLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "Pass activation change detected", v4, 2u);
  }

  return [*(a1 + 32) _handlePassActiviated];
}

- (void)_handlePassActiviated
{
  if (self->_localPassActivationState != 3)
  {
    v7 = v2;
    v8 = v3;
    v5 = PKLogFacilityTypeGetObject(0xFuLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Pass activated", v6, 2u);
    }

    self->_passIsActivated = 1;
    self->_localPassActivationState = 3;
    [(PKAccountProvisioningController *)self _stopPassActivationObserver];
    [(PKAccountProvisioningController *)self _informDelegateOfStateUpdate];
    [(PKAccountProvisioningController *)self _processRemainingTasks];
  }
}

- (void)_informDelegateOfError:(id)a3
{
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 accountProvisioningController:self displayableError:v7];
  }
}

- (void)_informDelegateOfStateUpdate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    [v5 accountProvisioningControllerUpdatedState:self];
  }
}

- (PKAccountProvisioningControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end