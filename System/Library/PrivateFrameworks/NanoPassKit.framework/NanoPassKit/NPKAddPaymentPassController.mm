@interface NPKAddPaymentPassController
- (NPKAddPaymentPassController)initWithRequestConfiguration:(id)configuration delegate:(id)delegate;
- (void)_sendDidFinishWithPass:(id)pass error:(id)error;
- (void)didFinishWithPass:(id)pass error:(id)error;
- (void)dismissWithCompletion:(id)completion;
- (void)generateRequestWithCertificateChain:(id)chain nonce:(id)nonce nonceSignature:(id)signature completionHandler:(id)handler;
- (void)presentWithCompletion:(id)completion;
- (void)remoteService:(id)service didInterruptConnection:(id)connection;
@end

@implementation NPKAddPaymentPassController

- (NPKAddPaymentPassController)initWithRequestConfiguration:(id)configuration delegate:(id)delegate
{
  configurationCopy = configuration;
  v15.receiver = self;
  v15.super_class = NPKAddPaymentPassController;
  v8 = [(PKAddPaymentPassController *)&v15 initWithRequestConfiguration:configurationCopy delegate:delegate];
  if (v8)
  {
    v9 = objc_alloc(MEMORY[0x277D38348]);
    v10 = NPKAddPaymentPassControllerServerExportedInterface();
    v11 = NPKAddPaymentPassControllerClientExportedInterface();
    v12 = [v9 initWithMachServiceName:@"com.apple.NanoPassKit.AddPaymentPass" remoteObjectInterface:v10 exportedObjectInterface:v11 exportedObject:v8];
    remoteService = v8->_remoteService;
    v8->_remoteService = v12;

    objc_storeStrong(&v8->_configuration, configuration);
    [(PKXPCService *)v8->_remoteService setDelegate:v8];
  }

  return v8;
}

- (void)presentWithCompletion:(id)completion
{
  completionCopy = completion;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __53__NPKAddPaymentPassController_presentWithCompletion___block_invoke;
  v11[3] = &unk_279945218;
  v5 = completionCopy;
  v12 = v5;
  v6 = [(NPKAddPaymentPassController *)self _remoteObjectProxyWithErrorHandler:v11];
  configuration = self->_configuration;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __53__NPKAddPaymentPassController_presentWithCompletion___block_invoke_56;
  v9[3] = &unk_279945530;
  v9[4] = self;
  v10 = v5;
  v8 = v5;
  [v6 setConfiguration:configuration completionHandler:v9];
}

void __53__NPKAddPaymentPassController_presentWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = pk_Payment_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

  if (v5)
  {
    v6 = pk_Payment_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412290;
      v10 = v3;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_ERROR, "Error: Remote object proxy error handler for set configuration invoked: %@", &v9, 0xCu);
    }
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, 0);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __53__NPKAddPaymentPassController_presentWithCompletion___block_invoke_56(uint64_t a1)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53__NPKAddPaymentPassController_presentWithCompletion___block_invoke_2;
  v6[3] = &unk_279945218;
  v2 = *(a1 + 32);
  v7 = *(a1 + 40);
  v3 = [v2 _remoteObjectProxyWithErrorHandler:v6];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __53__NPKAddPaymentPassController_presentWithCompletion___block_invoke_57;
  v4[3] = &unk_2799467D0;
  v5 = *(a1 + 40);
  [v3 presentWithCompletion:v4];
}

void __53__NPKAddPaymentPassController_presentWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = pk_Payment_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

  if (v5)
  {
    v6 = pk_Payment_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412290;
      v10 = v3;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_ERROR, "Error: Remote object proxy error handler for present add payment pass invoked: %@", &v9, 0xCu);
    }
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, 0);
  }

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t __53__NPKAddPaymentPassController_presentWithCompletion___block_invoke_57(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)dismissWithCompletion:(id)completion
{
  completionCopy = completion;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __53__NPKAddPaymentPassController_dismissWithCompletion___block_invoke;
  v10[3] = &unk_279945218;
  v5 = completionCopy;
  v11 = v5;
  v6 = [(NPKAddPaymentPassController *)self _remoteObjectProxyWithErrorHandler:v10];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __53__NPKAddPaymentPassController_dismissWithCompletion___block_invoke_60;
  v8[3] = &unk_279945198;
  v9 = v5;
  v7 = v5;
  [v6 dismissWithCompletion:v8];
}

void __53__NPKAddPaymentPassController_dismissWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = pk_Payment_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

  if (v5)
  {
    v6 = pk_Payment_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412290;
      v10 = v3;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_ERROR, "Error: Remote object proxy error handler for dismiss add payment pass invoked: %@", &v9, 0xCu);
    }
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))();
  }

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t __53__NPKAddPaymentPassController_dismissWithCompletion___block_invoke_60(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)remoteService:(id)service didInterruptConnection:(id)connection
{
  connectionCopy = connection;
  v5 = PKDisplayableErrorForCommonType();
  [(NPKAddPaymentPassController *)self _sendDidFinishWithPass:0 error:v5];

  [connectionCopy invalidate];
}

- (void)generateRequestWithCertificateChain:(id)chain nonce:(id)nonce nonceSignature:(id)signature completionHandler:(id)handler
{
  chainCopy = chain;
  nonceCopy = nonce;
  signatureCopy = signature;
  handlerCopy = handler;
  v14 = pk_Payment_log();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

  if (v15)
  {
    v16 = pk_Payment_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B300000, v16, OS_LOG_TYPE_DEFAULT, "Notice: Forwarding generate request to delegate", buf, 2u);
    }
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __106__NPKAddPaymentPassController_generateRequestWithCertificateChain_nonce_nonceSignature_completionHandler___block_invoke;
  block[3] = &unk_2799467F8;
  block[4] = self;
  v22 = chainCopy;
  v23 = nonceCopy;
  v24 = signatureCopy;
  v25 = handlerCopy;
  v17 = handlerCopy;
  v18 = signatureCopy;
  v19 = nonceCopy;
  v20 = chainCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __106__NPKAddPaymentPassController_generateRequestWithCertificateChain_nonce_nonceSignature_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 addPaymentPassController:*(a1 + 32) generateRequestWithCertificateChain:*(a1 + 40) nonce:*(a1 + 48) nonceSignature:*(a1 + 56) completionHandler:*(a1 + 64)];
}

- (void)didFinishWithPass:(id)pass error:(id)error
{
  passCopy = pass;
  errorCopy = error;
  v8 = pk_Payment_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = pk_Payment_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: Forwarding did finish to delegate", v11, 2u);
    }
  }

  [(NPKAddPaymentPassController *)self _sendDidFinishWithPass:passCopy error:errorCopy];
}

- (void)_sendDidFinishWithPass:(id)pass error:(id)error
{
  passCopy = pass;
  errorCopy = error;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__NPKAddPaymentPassController__sendDidFinishWithPass_error___block_invoke;
  block[3] = &unk_279945880;
  block[4] = self;
  v11 = passCopy;
  v12 = errorCopy;
  v8 = errorCopy;
  v9 = passCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __60__NPKAddPaymentPassController__sendDidFinishWithPass_error___block_invoke(void *a1)
{
  v2 = a1[4];
  if ((v2[24] & 1) == 0)
  {
    v3 = [v2 delegate];
    [v3 addPaymentPassController:a1[4] didFinishAddingPaymentPass:a1[5] error:a1[6]];
  }
}

@end