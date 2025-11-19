@interface PKPaymentInformationEventExtensionContext
- (void)handleConfigurationRequest:(id)a3 completion:(id)a4;
- (void)handleInformationRequest:(id)a3 completion:(id)a4;
- (void)handleSignatureRequest:(id)a3 completion:(id)a4;
@end

@implementation PKPaymentInformationEventExtensionContext

- (void)handleInformationRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PKPaymentInformationEventExtensionContext *)self _principalObject];
  if ([v8 conformsToProtocol:&unk_1F247C968])
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __81__PKPaymentInformationEventExtensionContext_handleInformationRequest_completion___block_invoke;
    v11[3] = &unk_1E79D3FB0;
    v12 = v7;
    [v8 handleInformationRequest:v6 completion:v11];
  }

  else
  {
    v9 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "handleInformationRequest: principalObject does not conform to PKPaymentInformationRequestHandling", v10, 2u);
    }

    if (v7)
    {
      (*(v7 + 2))(v7, 0);
    }
  }
}

uint64_t __81__PKPaymentInformationEventExtensionContext_handleInformationRequest_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)handleSignatureRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PKPaymentInformationEventExtensionContext *)self _principalObject];
  if ([v8 conformsToProtocol:&unk_1F247C968])
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __79__PKPaymentInformationEventExtensionContext_handleSignatureRequest_completion___block_invoke;
    v11[3] = &unk_1E79D3FD8;
    v12 = v7;
    [v8 handleSignatureRequest:v6 completion:v11];
  }

  else
  {
    v9 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "handleSignatureRequest: principalObject does not conform to PKPaymentInformationRequestHandling", v10, 2u);
    }

    if (v7)
    {
      (*(v7 + 2))(v7, 0);
    }
  }
}

uint64_t __79__PKPaymentInformationEventExtensionContext_handleSignatureRequest_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)handleConfigurationRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PKPaymentInformationEventExtensionContext *)self _principalObject];
  if ([v8 conformsToProtocol:&unk_1F247C968])
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __83__PKPaymentInformationEventExtensionContext_handleConfigurationRequest_completion___block_invoke;
    v11[3] = &unk_1E79C4428;
    v12 = v7;
    [v8 handleConfigurationRequest:v6 completion:v11];
  }

  else
  {
    v9 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "handleConfigurationRequest: principalObject does not conform to PKPaymentInformationRequestHandling", v10, 2u);
    }

    if (v7)
    {
      v7[2](v7);
    }
  }
}

uint64_t __83__PKPaymentInformationEventExtensionContext_handleConfigurationRequest_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

@end