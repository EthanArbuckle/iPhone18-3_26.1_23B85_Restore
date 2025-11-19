@interface PKInAppPaymentService
- (BOOL)secureElementStatus:(unint64_t *)a3;
- (PKInAppPaymentService)init;
- (PKInAppPaymentServiceDelegate)delegate;
- (id)paymentHardwareStatusWithType:(unint64_t)a3;
- (int64_t)cardsAvailableForAMPWithCountryCode:(id)a3;
- (void)cardDataForMerchantIdentifier:(id)a3 countryCode:(id)a4 completion:(id)a5;
- (void)cardsAvailableForAMPWithCountryCode:(id)a3 completion:(id)a4;
- (void)enrollPaymentPassWithUniqueIdentifier:(id)a3 merchantSession:(id)a4 completion:(id)a5;
- (void)hasValidSecurityConfigurationWithType:(unint64_t)a3 completion:(id)a4;
- (void)merchantStatusCheck:(id)a3 merchantDomain:(id)a4 sourceApplicationSecondaryIdentifier:(id)a5 completion:(id)a6;
- (void)paymentHardwareStatusWithType:(unint64_t)a3 completion:(id)a4;
- (void)paymentServicesMerchantURLForAPIType:(int64_t)a3 completion:(id)a4;
- (void)presentAdditionalInAppPaymentWithContext:(id)a3 completion:(id)a4;
- (void)presentInAppPaymentInterfaceWithContext:(id)a3 completion:(id)a4;
- (void)registerInterfaceAvailableForAdditionalPaymentRequestWithCompletion:(id)a3;
- (void)registerPaymentListenerEndpoint:(id)a3 forHostIdentifier:(id)a4 completion:(id)a5;
- (void)retrievePaymentListenerEndpointForHostIdentifier:(id)a3 completion:(id)a4;
- (void)secureElementStatusWithCompletion:(id)a3;
- (void)unregisterInterfaceAvailableForAdditionalPaymentRequestWithCompletion:(id)a3;
- (void)validatePayLaterMerchandisingConfiguration:(id)a3 type:(unint64_t)a4 completion:(id)a5;
@end

@implementation PKInAppPaymentService

- (PKInAppPaymentService)init
{
  v9.receiver = self;
  v9.super_class = PKInAppPaymentService;
  v2 = [(PKInAppPaymentService *)&v9 init];
  if (v2)
  {
    v3 = [PKXPCService alloc];
    v4 = PDInAppPaymentServiceInterface();
    v5 = PKInAppPaymentServiceInterface();
    v6 = [(PKXPCService *)v3 initWithMachServiceName:@"com.apple.passd.in-app-payment" remoteObjectInterface:v4 exportedObjectInterface:v5 exportedObject:v2];
    remoteService = v2->_remoteService;
    v2->_remoteService = v6;
  }

  return v2;
}

- (void)presentAdditionalInAppPaymentWithContext:(id)a3 completion:(id)a4
{
  v9 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    v8 = objc_loadWeakRetained(&self->_delegate);
    [v8 presentAdditionalInAppPaymentWithContext:v9 completion:v6];
  }
}

- (void)registerPaymentListenerEndpoint:(id)a3 forHostIdentifier:(id)a4 completion:(id)a5
{
  v9 = a5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __86__PKInAppPaymentService_registerPaymentListenerEndpoint_forHostIdentifier_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v20 = a2;
  v10 = v9;
  aBlock[4] = self;
  v19 = v10;
  v11 = a4;
  v12 = a3;
  v13 = _Block_copy(aBlock);
  v14 = [(PKInAppPaymentService *)self _remoteObjectProxyWithFailureHandler:v13];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __86__PKInAppPaymentService_registerPaymentListenerEndpoint_forHostIdentifier_completion___block_invoke_14;
  v16[3] = &unk_1E79C4888;
  v16[4] = self;
  v17 = v10;
  v15 = v10;
  [v14 registerPaymentListenerEndpoint:v12 forHostIdentifier:v11 handler:v16];
}

uint64_t __86__PKInAppPaymentService_registerPaymentListenerEndpoint_forHostIdentifier_completion___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(8uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(*(a1 + 48));
    v5 = 138412290;
    v6 = v4;
    _os_log_error_impl(&dword_1AD337000, v2, OS_LOG_TYPE_ERROR, "XPC Failure in [PKInAppPaymentService %@];", &v5, 0xCu);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

uint64_t __86__PKInAppPaymentService_registerPaymentListenerEndpoint_forHostIdentifier_completion___block_invoke_14(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)retrievePaymentListenerEndpointForHostIdentifier:(id)a3 completion:(id)a4
{
  v7 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __85__PKInAppPaymentService_retrievePaymentListenerEndpointForHostIdentifier_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v17 = a2;
  v8 = v7;
  aBlock[4] = self;
  v16 = v8;
  v9 = a3;
  v10 = _Block_copy(aBlock);
  v11 = [(PKInAppPaymentService *)self _remoteObjectProxyWithFailureHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __85__PKInAppPaymentService_retrievePaymentListenerEndpointForHostIdentifier_completion___block_invoke_16;
  v13[3] = &unk_1E79CF820;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 retrievePaymentListenerEndpointForHostIdentifier:v9 handler:v13];
}

uint64_t __85__PKInAppPaymentService_retrievePaymentListenerEndpointForHostIdentifier_completion___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(8uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(*(a1 + 48));
    v5 = 138412290;
    v6 = v4;
    _os_log_error_impl(&dword_1AD337000, v2, OS_LOG_TYPE_ERROR, "XPC Failure in [PKInAppPaymentService %@];", &v5, 0xCu);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0, 0);
  }

  return result;
}

uint64_t __85__PKInAppPaymentService_retrievePaymentListenerEndpointForHostIdentifier_completion___block_invoke_16(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)presentInAppPaymentInterfaceWithContext:(id)a3 completion:(id)a4
{
  v7 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __76__PKInAppPaymentService_presentInAppPaymentInterfaceWithContext_completion___block_invoke;
  aBlock[3] = &unk_1E79C9778;
  v17 = a2;
  v8 = v7;
  aBlock[4] = self;
  v16 = v8;
  v9 = a3;
  v10 = _Block_copy(aBlock);
  v11 = [(PKInAppPaymentService *)self _remoteObjectProxyWithErrorHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __76__PKInAppPaymentService_presentInAppPaymentInterfaceWithContext_completion___block_invoke_21;
  v13[3] = &unk_1E79C4A68;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 presentInAppPaymentInterfaceWithContext:v9 completion:v13];
}

void __76__PKInAppPaymentService_presentInAppPaymentInterfaceWithContext_completion___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject(8uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v8 = NSStringFromSelector(*(a1 + 48));
    *buf = 138412290;
    v12 = v8;
    _os_log_error_impl(&dword_1AD337000, v4, OS_LOG_TYPE_ERROR, "XPC Failure in [PKInAppPaymentService %@];", buf, 0xCu);
  }

  if (*(a1 + 40))
  {
    v5 = MEMORY[0x1E696ABC0];
    v9 = *MEMORY[0x1E696AA08];
    v10 = v3;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    v7 = [v5 errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:v6];

    (*(*(a1 + 40) + 16))();
  }
}

uint64_t __76__PKInAppPaymentService_presentInAppPaymentInterfaceWithContext_completion___block_invoke_21(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)merchantStatusCheck:(id)a3 merchantDomain:(id)a4 sourceApplicationSecondaryIdentifier:(id)a5 completion:(id)a6
{
  v37 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __108__PKInAppPaymentService_merchantStatusCheck_merchantDomain_sourceApplicationSecondaryIdentifier_completion___block_invoke;
  aBlock[3] = &unk_1E79C9778;
  v34 = a2;
  v15 = v14;
  aBlock[4] = self;
  v33 = v15;
  v29 = _Block_copy(aBlock);
  v16 = [(PKInAppPaymentService *)self _remoteObjectProxyWithErrorHandler:?];
  if (v12)
  {
    v17 = [v12 length] == 0;
  }

  else
  {
    v17 = 1;
  }

  v18 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v19 = v11;
  v20 = [v11 stringByTrimmingCharactersInSet:v18];

  v21 = [v20 lowercaseString];

  if (v21)
  {
    v22 = [v21 length] == 0;
  }

  else
  {
    v22 = 1;
  }

  if ([v21 isEqualToString:@"null"] & 1) != 0 || (objc_msgSend(v21, "isEqualToString:", @"undefined") & 1) != 0 || (objc_msgSend(v21, "isEqualToString:", @"example.com.store"))
  {
    v23 = 1;
  }

  else
  {
    v28 = [v21 rangeOfString:@"^[A-Za-z0-9~_+&@$!| options:{.;-]+$", 1024}];
    v23 = v28 == 0x7FFFFFFFFFFFFFFFLL;
    if (!v17 && !v22 && v28 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __108__PKInAppPaymentService_merchantStatusCheck_merchantDomain_sourceApplicationSecondaryIdentifier_completion___block_invoke_36;
      v30[3] = &unk_1E79C4A68;
      v30[4] = self;
      v31 = v15;
      [v16 merchantStatusCheck:v19 merchantDomain:v12 sourceApplicationSecondaryIdentifier:v13 handler:v30];
      v27 = v31;
      goto LABEL_24;
    }
  }

  if (v17)
  {
    v24 = PKLogFacilityTypeGetObject(8uLL);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = NSStringFromSelector(a2);
      *buf = 138412290;
      v36 = v25;
      v26 = "%@ called with empty domainName";
LABEL_20:
      _os_log_impl(&dword_1AD337000, v24, OS_LOG_TYPE_DEFAULT, v26, buf, 0xCu);
    }
  }

  else if (v22)
  {
    v24 = PKLogFacilityTypeGetObject(8uLL);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = NSStringFromSelector(a2);
      *buf = 138412290;
      v36 = v25;
      v26 = "%@ called with empty merchantIdentifier";
      goto LABEL_20;
    }
  }

  else
  {
    if (!v23)
    {
      goto LABEL_22;
    }

    v24 = PKLogFacilityTypeGetObject(8uLL);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = NSStringFromSelector(a2);
      *buf = 138412290;
      v36 = v25;
      v26 = "%@ called with invalid merchantIdentifier";
      goto LABEL_20;
    }
  }

LABEL_22:
  if (v15)
  {
    v27 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:1 userInfo:0];
    (*(v15 + 2))(v15, 0, v27);
LABEL_24:
  }
}

void __108__PKInAppPaymentService_merchantStatusCheck_merchantDomain_sourceApplicationSecondaryIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject(8uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v9 = NSStringFromSelector(*(a1 + 48));
    *buf = 138412290;
    v13 = v9;
    _os_log_error_impl(&dword_1AD337000, v4, OS_LOG_TYPE_ERROR, "XPC Failure in [PKInAppPaymentService %@];", buf, 0xCu);
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x1E696ABC0]);
    v10 = *MEMORY[0x1E696AA08];
    v11 = v3;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
    v8 = [v6 initWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:v7];
    (*(v5 + 16))(v5, 0, v8);
  }
}

uint64_t __108__PKInAppPaymentService_merchantStatusCheck_merchantDomain_sourceApplicationSecondaryIdentifier_completion___block_invoke_36(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)paymentServicesMerchantURLForAPIType:(int64_t)a3 completion:(id)a4
{
  v7 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __73__PKInAppPaymentService_paymentServicesMerchantURLForAPIType_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v16 = a2;
  v8 = v7;
  aBlock[4] = self;
  v15 = v8;
  v9 = _Block_copy(aBlock);
  v10 = [(PKInAppPaymentService *)self _remoteObjectProxyWithFailureHandler:v9];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __73__PKInAppPaymentService_paymentServicesMerchantURLForAPIType_completion___block_invoke_37;
  v12[3] = &unk_1E79CF848;
  v12[4] = self;
  v13 = v8;
  v11 = v8;
  [v10 paymentServicesMerchantURLForAPIType:a3 handler:v12];
}

uint64_t __73__PKInAppPaymentService_paymentServicesMerchantURLForAPIType_completion___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(8uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(*(a1 + 48));
    v5 = 138412290;
    v6 = v4;
    _os_log_error_impl(&dword_1AD337000, v2, OS_LOG_TYPE_ERROR, "XPC Failure in [PKInAppPaymentService %@];", &v5, 0xCu);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0, 0);
  }

  return result;
}

void __73__PKInAppPaymentService_paymentServicesMerchantURLForAPIType_completion___block_invoke_37(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = PKLogFacilityTypeGetObject(8uLL);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      v8 = [v5 description];
      v10 = 138412290;
      v11 = v8;
      _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "Returned payment services merchant URL: %@", &v10, 0xCu);
    }
  }

  else if (v7)
  {
    LOWORD(v10) = 0;
    _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "Received no payment services merchant URL. This is an error.", &v10, 2u);
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    (*(v9 + 16))(v9, a2, v5);
  }
}

- (BOOL)secureElementStatus:(unint64_t *)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v4 = [(PKInAppPaymentService *)self _synchronousRemoteObjectProxyWithErrorHandler:0];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __45__PKInAppPaymentService_secureElementStatus___block_invoke;
  v6[3] = &unk_1E79CF870;
  v6[4] = &v7;
  v6[5] = a3;
  [v4 secureElementStatusWithCompletion:v6];
  LOBYTE(a3) = *(v8 + 24);

  _Block_object_dispose(&v7, 8);
  return a3;
}

uint64_t __45__PKInAppPaymentService_secureElementStatus___block_invoke(uint64_t result, char a2, uint64_t a3)
{
  v3 = *(result + 40);
  *(*(*(result + 32) + 8) + 24) = a2;
  if (v3)
  {
    *v3 = a3;
  }

  return result;
}

- (void)secureElementStatusWithCompletion:(id)a3
{
  v5 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __59__PKInAppPaymentService_secureElementStatusWithCompletion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v14 = a2;
  v6 = v5;
  aBlock[4] = self;
  v13 = v6;
  v7 = _Block_copy(aBlock);
  v8 = [(PKInAppPaymentService *)self _remoteObjectProxyWithFailureHandler:v7];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __59__PKInAppPaymentService_secureElementStatusWithCompletion___block_invoke_40;
  v10[3] = &unk_1E79CF898;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  [v8 secureElementStatusWithCompletion:v10];
}

uint64_t __59__PKInAppPaymentService_secureElementStatusWithCompletion___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(8uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(*(a1 + 48));
    v5 = 138412290;
    v6 = v4;
    _os_log_error_impl(&dword_1AD337000, v2, OS_LOG_TYPE_ERROR, "XPC Failure in [PKInAppPaymentService %@];", &v5, 0xCu);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0, 0);
  }

  return result;
}

uint64_t __59__PKInAppPaymentService_secureElementStatusWithCompletion___block_invoke_40(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (id)paymentHardwareStatusWithType:(unint64_t)a3
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__21;
  v12 = __Block_byref_object_dispose__21;
  v13 = 0;
  v4 = [(PKInAppPaymentService *)self _synchronousRemoteObjectProxyWithErrorHandler:0];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__PKInAppPaymentService_paymentHardwareStatusWithType___block_invoke;
  v7[3] = &unk_1E79CF8C0;
  v7[4] = &v8;
  [v4 paymentHardwareStatusWithType:a3 completion:v7];
  v5 = v9[5];

  _Block_object_dispose(&v8, 8);

  return v5;
}

- (void)paymentHardwareStatusWithType:(unint64_t)a3 completion:(id)a4
{
  v7 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __66__PKInAppPaymentService_paymentHardwareStatusWithType_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v16 = a2;
  v8 = v7;
  aBlock[4] = self;
  v15 = v8;
  v9 = _Block_copy(aBlock);
  v10 = [(PKInAppPaymentService *)self _remoteObjectProxyWithFailureHandler:v9];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __66__PKInAppPaymentService_paymentHardwareStatusWithType_completion___block_invoke_42;
  v12[3] = &unk_1E79CF8E8;
  v12[4] = self;
  v13 = v8;
  v11 = v8;
  [v10 paymentHardwareStatusWithType:a3 completion:v12];
}

uint64_t __66__PKInAppPaymentService_paymentHardwareStatusWithType_completion___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(8uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(*(a1 + 48));
    v5 = 138412290;
    v6 = v4;
    _os_log_error_impl(&dword_1AD337000, v2, OS_LOG_TYPE_ERROR, "XPC Failure in [PKInAppPaymentService %@];", &v5, 0xCu);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

uint64_t __66__PKInAppPaymentService_paymentHardwareStatusWithType_completion___block_invoke_42(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)hasValidSecurityConfigurationWithType:(unint64_t)a3 completion:(id)a4
{
  v6 = a4;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2020000000;
  v15[3] = 0;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2020000000;
  v14 = 0;
  v7 = [(PKInAppPaymentService *)self _synchronousRemoteObjectProxyWithErrorHandler:0];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __74__PKInAppPaymentService_hasValidSecurityConfigurationWithType_completion___block_invoke;
  v9[3] = &unk_1E79CF938;
  v11 = v13;
  v12 = v15;
  v8 = v6;
  v10 = v8;
  [v7 paymentHardwareStatusWithType:a3 completion:v9];

  _Block_object_dispose(v13, 8);
  _Block_object_dispose(v15, 8);
}

void __74__PKInAppPaymentService_hasValidSecurityConfigurationWithType_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__PKInAppPaymentService_hasValidSecurityConfigurationWithType_completion___block_invoke_2;
  block[3] = &unk_1E79CF910;
  v4 = *(a1 + 48);
  v9 = v3;
  v11 = v4;
  v7 = *(a1 + 32);
  v5 = v7;
  v10 = v7;
  v6 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __74__PKInAppPaymentService_hasValidSecurityConfigurationWithType_completion___block_invoke_2(void *a1)
{
  *(*(a1[6] + 8) + 24) = 1;
  *(*(a1[7] + 8) + 24) = 0;
  return (*(a1[5] + 16))(a1[5], *(*(a1[7] + 8) + 24), *(*(a1[6] + 8) + 24));
}

- (void)cardsAvailableForAMPWithCountryCode:(id)a3 completion:(id)a4
{
  v7 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __72__PKInAppPaymentService_cardsAvailableForAMPWithCountryCode_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v17 = a2;
  v8 = v7;
  aBlock[4] = self;
  v16 = v8;
  v9 = a3;
  v10 = _Block_copy(aBlock);
  v11 = [(PKInAppPaymentService *)self _remoteObjectProxyWithFailureHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __72__PKInAppPaymentService_cardsAvailableForAMPWithCountryCode_completion___block_invoke_43;
  v13[3] = &unk_1E79CA9B8;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 cardsAvailableForAMPWithCountryCode:v9 completion:v13];
}

uint64_t __72__PKInAppPaymentService_cardsAvailableForAMPWithCountryCode_completion___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(8uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(*(a1 + 48));
    v5 = 138412290;
    v6 = v4;
    _os_log_error_impl(&dword_1AD337000, v2, OS_LOG_TYPE_ERROR, "XPC Failure in [PKInAppPaymentService %@];", &v5, 0xCu);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

uint64_t __72__PKInAppPaymentService_cardsAvailableForAMPWithCountryCode_completion___block_invoke_43(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (int64_t)cardsAvailableForAMPWithCountryCode:(id)a3
{
  v4 = a3;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v5 = [(PKInAppPaymentService *)self _synchronousRemoteObjectProxyWithErrorHandler:0];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __61__PKInAppPaymentService_cardsAvailableForAMPWithCountryCode___block_invoke;
  v8[3] = &unk_1E79CF960;
  v8[4] = &v9;
  [v5 cardsAvailableForAMPWithCountryCode:v4 completion:v8];
  v6 = v10[3];

  _Block_object_dispose(&v9, 8);
  return v6;
}

- (void)cardDataForMerchantIdentifier:(id)a3 countryCode:(id)a4 completion:(id)a5
{
  v9 = a5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __78__PKInAppPaymentService_cardDataForMerchantIdentifier_countryCode_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v20 = a2;
  v10 = v9;
  aBlock[4] = self;
  v19 = v10;
  v11 = a4;
  v12 = a3;
  v13 = _Block_copy(aBlock);
  v14 = [(PKInAppPaymentService *)self _remoteObjectProxyWithFailureHandler:v13];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __78__PKInAppPaymentService_cardDataForMerchantIdentifier_countryCode_completion___block_invoke_45;
  v16[3] = &unk_1E79CF988;
  v16[4] = self;
  v17 = v10;
  v15 = v10;
  [v14 cardDataForMerchantIdentifier:v12 countryCode:v11 completion:v16];
}

uint64_t __78__PKInAppPaymentService_cardDataForMerchantIdentifier_countryCode_completion___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(8uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(*(a1 + 48));
    v5 = 138412290;
    v6 = v4;
    _os_log_error_impl(&dword_1AD337000, v2, OS_LOG_TYPE_ERROR, "XPC Failure in [PKInAppPaymentService %@];", &v5, 0xCu);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

uint64_t __78__PKInAppPaymentService_cardDataForMerchantIdentifier_countryCode_completion___block_invoke_45(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)enrollPaymentPassWithUniqueIdentifier:(id)a3 merchantSession:(id)a4 completion:(id)a5
{
  v9 = a5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __90__PKInAppPaymentService_enrollPaymentPassWithUniqueIdentifier_merchantSession_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v20 = a2;
  v10 = v9;
  aBlock[4] = self;
  v19 = v10;
  v11 = a4;
  v12 = a3;
  v13 = _Block_copy(aBlock);
  v14 = [(PKInAppPaymentService *)self _remoteObjectProxyWithFailureHandler:v13];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __90__PKInAppPaymentService_enrollPaymentPassWithUniqueIdentifier_merchantSession_completion___block_invoke_47;
  v16[3] = &unk_1E79CF9B0;
  v16[4] = self;
  v17 = v10;
  v15 = v10;
  [v14 enrollPaymentPassWithUniqueIdentifier:v12 merchantSession:v11 completion:v16];
}

uint64_t __90__PKInAppPaymentService_enrollPaymentPassWithUniqueIdentifier_merchantSession_completion___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(8uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(*(a1 + 48));
    v5 = 138412290;
    v6 = v4;
    _os_log_error_impl(&dword_1AD337000, v2, OS_LOG_TYPE_ERROR, "XPC Failure in [PKInAppPaymentService %@];", &v5, 0xCu);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0, 0);
  }

  return result;
}

uint64_t __90__PKInAppPaymentService_enrollPaymentPassWithUniqueIdentifier_merchantSession_completion___block_invoke_47(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)validatePayLaterMerchandisingConfiguration:(id)a3 type:(unint64_t)a4 completion:(id)a5
{
  v9 = a5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __84__PKInAppPaymentService_validatePayLaterMerchandisingConfiguration_type_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v19 = a2;
  v10 = v9;
  aBlock[4] = self;
  v18 = v10;
  v11 = a3;
  v12 = _Block_copy(aBlock);
  v13 = [(PKInAppPaymentService *)self _remoteObjectProxyWithFailureHandler:v12];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __84__PKInAppPaymentService_validatePayLaterMerchandisingConfiguration_type_completion___block_invoke_49;
  v15[3] = &unk_1E79CF9D8;
  v15[4] = self;
  v16 = v10;
  v14 = v10;
  [v13 validatePayLaterMerchandisingConfiguration:v11 type:a4 completion:v15];
}

uint64_t __84__PKInAppPaymentService_validatePayLaterMerchandisingConfiguration_type_completion___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(8uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(*(a1 + 48));
    v5 = 138412290;
    v6 = v4;
    _os_log_error_impl(&dword_1AD337000, v2, OS_LOG_TYPE_ERROR, "XPC Failure in [PKInAppPaymentService %@];", &v5, 0xCu);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0, 0);
  }

  return result;
}

uint64_t __84__PKInAppPaymentService_validatePayLaterMerchandisingConfiguration_type_completion___block_invoke_49(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)registerInterfaceAvailableForAdditionalPaymentRequestWithCompletion:(id)a3
{
  v5 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __93__PKInAppPaymentService_registerInterfaceAvailableForAdditionalPaymentRequestWithCompletion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v14 = a2;
  v6 = v5;
  aBlock[4] = self;
  v13 = v6;
  v7 = _Block_copy(aBlock);
  v8 = [(PKInAppPaymentService *)self _remoteObjectProxyWithFailureHandler:v7];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __93__PKInAppPaymentService_registerInterfaceAvailableForAdditionalPaymentRequestWithCompletion___block_invoke_51;
  v10[3] = &unk_1E79C4888;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  [v8 registerInterfaceAvailableForAdditionalPaymentRequestWithCompletion:v10];
}

uint64_t __93__PKInAppPaymentService_registerInterfaceAvailableForAdditionalPaymentRequestWithCompletion___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(8uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(*(a1 + 48));
    v5 = 138412290;
    v6 = v4;
    _os_log_error_impl(&dword_1AD337000, v2, OS_LOG_TYPE_ERROR, "XPC Failure in [PKInAppPaymentService %@];", &v5, 0xCu);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

uint64_t __93__PKInAppPaymentService_registerInterfaceAvailableForAdditionalPaymentRequestWithCompletion___block_invoke_51(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)unregisterInterfaceAvailableForAdditionalPaymentRequestWithCompletion:(id)a3
{
  v5 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __95__PKInAppPaymentService_unregisterInterfaceAvailableForAdditionalPaymentRequestWithCompletion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v14 = a2;
  v6 = v5;
  aBlock[4] = self;
  v13 = v6;
  v7 = _Block_copy(aBlock);
  v8 = [(PKInAppPaymentService *)self _remoteObjectProxyWithFailureHandler:v7];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __95__PKInAppPaymentService_unregisterInterfaceAvailableForAdditionalPaymentRequestWithCompletion___block_invoke_52;
  v10[3] = &unk_1E79C4888;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  [v8 unregisterInterfaceAvailableForAdditionalPaymentRequestWithCompletion:v10];
}

uint64_t __95__PKInAppPaymentService_unregisterInterfaceAvailableForAdditionalPaymentRequestWithCompletion___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(8uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(*(a1 + 48));
    v5 = 138412290;
    v6 = v4;
    _os_log_error_impl(&dword_1AD337000, v2, OS_LOG_TYPE_ERROR, "XPC Failure in [PKInAppPaymentService %@];", &v5, 0xCu);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

uint64_t __95__PKInAppPaymentService_unregisterInterfaceAvailableForAdditionalPaymentRequestWithCompletion___block_invoke_52(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (PKInAppPaymentServiceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end