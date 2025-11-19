@interface PKProvisioningBackgroundCoordinator
+ (void)provisionPaymentCredential:(id)a3 forPairedWatch:(BOOL)a4 completion:(id)a5;
- (PKProvisioningBackgroundCoordinator)initWithSetupContext:(id)a3 credential:(id)a4 previouslyAcceptedTerms:(BOOL)a5;
@end

@implementation PKProvisioningBackgroundCoordinator

- (PKProvisioningBackgroundCoordinator)initWithSetupContext:(id)a3 credential:(id)a4 previouslyAcceptedTerms:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v14.receiver = self;
  v14.super_class = PKProvisioningBackgroundCoordinator;
  v10 = [(PKProvisioningBackgroundCoordinator *)&v14 init];
  if (v10)
  {
    v11 = [[_PKProvisioningBackgroundCoordinator alloc] initWithPkContext:v8 credential:v9 previouslyAcceptedTerms:v5];
    coordinator = v10->_coordinator;
    v10->_coordinator = v11;
  }

  return v10;
}

+ (void)provisionPaymentCredential:(id)a3 forPairedWatch:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v30 = *MEMORY[0x1E69E9840];
  v7 = a5;
  v8 = a3;
  v9 = [v8 state];
  v10 = [v9 sid];

  v11 = PKLogFacilityTypeGetObject(0x28uLL);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v27 = v10;
    v28 = 1024;
    v29 = v5;
    _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "[%@] Provisioning payment credential; on watch device: %d", buf, 0x12u);
  }

  if (v5)
  {
    v12 = +[PKPaymentProvisioningController watchWebServiceForIssuerProvisioning];
    v13 = 4;
  }

  else
  {
    v12 = +[PKPaymentWebService sharedService];
    v13 = 0;
  }

  v14 = [[PKPaymentProvisioningController alloc] initWithWebService:v12 localPaymentService:0];
  v15 = [PKProvisioningContext alloc];
  v16 = +[PKPaymentWebService sharedService];
  v17 = [(PKProvisioningContext *)v15 initWithEnvironment:v13 provisioningController:v14 groupsController:0 managingDeviceWebService:v16 destinationDeviceWebService:v12];

  v18 = [[PKProvisioningBackgroundCoordinator alloc] initWithSetupContext:v17 credential:v8 previouslyAcceptedTerms:1];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __92__PKProvisioningBackgroundCoordinator_provisionPaymentCredential_forPairedWatch_completion___block_invoke;
  v22[3] = &unk_1E79E2328;
  v24 = v18;
  v25 = v7;
  v23 = v10;
  v19 = v18;
  v20 = v7;
  v21 = v10;
  [(PKProvisioningBackgroundCoordinator *)v19 startWithCompletion:v22];
}

void __92__PKProvisioningBackgroundCoordinator_provisionPaymentCredential_forPairedWatch_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [a2 firstObject];
  v7 = [v6 secureElementPass];
  v8 = [v7 paymentPass];

  v9 = PKLogFacilityTypeGetObject(0x28uLL);
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v10)
    {
      v11 = *(a1 + 32);
      v12 = [v8 passTypeIdentifier];
      v14 = 138412546;
      v15 = v11;
      v16 = 2112;
      v17 = v12;
      _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "[%@] PDPaymentService successfully provisioned pass %@", &v14, 0x16u);
    }
  }

  else if (v10)
  {
    v13 = *(a1 + 32);
    v14 = 138412546;
    v15 = v13;
    v16 = 2112;
    v17 = v5;
    _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "[%@] PDPaymentService failed to provision payment credential with error: %@", &v14, 0x16u);
  }

  (*(*(a1 + 48) + 16))();
}

@end