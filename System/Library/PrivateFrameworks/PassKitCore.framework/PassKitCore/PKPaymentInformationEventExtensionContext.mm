@interface PKPaymentInformationEventExtensionContext
- (void)handleConfigurationRequest:(id)request completion:(id)completion;
- (void)handleInformationRequest:(id)request completion:(id)completion;
- (void)handleSignatureRequest:(id)request completion:(id)completion;
@end

@implementation PKPaymentInformationEventExtensionContext

- (void)handleInformationRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  _principalObject = [(PKPaymentInformationEventExtensionContext *)self _principalObject];
  if ([_principalObject conformsToProtocol:&unk_1F247C968])
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __81__PKPaymentInformationEventExtensionContext_handleInformationRequest_completion___block_invoke;
    v11[3] = &unk_1E79D3FB0;
    v12 = completionCopy;
    [_principalObject handleInformationRequest:requestCopy completion:v11];
  }

  else
  {
    v9 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "handleInformationRequest: principalObject does not conform to PKPaymentInformationRequestHandling", v10, 2u);
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0);
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

- (void)handleSignatureRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  _principalObject = [(PKPaymentInformationEventExtensionContext *)self _principalObject];
  if ([_principalObject conformsToProtocol:&unk_1F247C968])
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __79__PKPaymentInformationEventExtensionContext_handleSignatureRequest_completion___block_invoke;
    v11[3] = &unk_1E79D3FD8;
    v12 = completionCopy;
    [_principalObject handleSignatureRequest:requestCopy completion:v11];
  }

  else
  {
    v9 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "handleSignatureRequest: principalObject does not conform to PKPaymentInformationRequestHandling", v10, 2u);
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0);
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

- (void)handleConfigurationRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  _principalObject = [(PKPaymentInformationEventExtensionContext *)self _principalObject];
  if ([_principalObject conformsToProtocol:&unk_1F247C968])
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __83__PKPaymentInformationEventExtensionContext_handleConfigurationRequest_completion___block_invoke;
    v11[3] = &unk_1E79C4428;
    v12 = completionCopy;
    [_principalObject handleConfigurationRequest:requestCopy completion:v11];
  }

  else
  {
    v9 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "handleConfigurationRequest: principalObject does not conform to PKPaymentInformationRequestHandling", v10, 2u);
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy);
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