@interface NPKRemoteInterfacePresenter
- (NPKRemoteInterfacePresenter)init;
- (NPKRemoteInterfacePresenterDelegate)delegate;
- (void)clearInAppInterfaceForSkeletonPeerPaymentQuote:(id)quote withError:(id)error;
- (void)presentContactlessInterfaceForPassWithUniqueIdentifier:(id)identifier fromSource:(int64_t)source completion:(id)completion;
- (void)presentContinuityPaymentInterfaceWithRemotePaymentRequest:(id)request completion:(id)completion;
- (void)presentPasscodeUpgradeRequestWithChangeType:(unint64_t)type completion:(id)completion;
- (void)presentProvisioningContinuityInterfaceForPassWithUniqueIdentifier:(id)identifier continuityType:(id)type transferToken:(id)token completion:(id)completion;
- (void)presentSetupApplePayAlert:(id)alert;
- (void)presentTransitTopUpValueSelectionForPassWithUniqueIdentifier:(id)identifier balanceField:(id)field completion:(id)completion;
- (void)showInAppInterfaceWithSkeletonPeerPaymentQuote:(id)quote completion:(id)completion;
@end

@implementation NPKRemoteInterfacePresenter

- (NPKRemoteInterfacePresenter)init
{
  v14.receiver = self;
  v14.super_class = NPKRemoteInterfacePresenter;
  v2 = [(NPKRemoteInterfacePresenter *)&v14 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.NPKInAppPaymentServer" options:4096];
    v4 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_286D44CE8];
    [(NSXPCConnection *)v3 setRemoteObjectInterface:v4];
    objc_initWeak(&location, v2);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __35__NPKRemoteInterfacePresenter_init__block_invoke;
    v11[3] = &unk_279945030;
    objc_copyWeak(&v12, &location);
    [(NSXPCConnection *)v3 setInterruptionHandler:v11];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __35__NPKRemoteInterfacePresenter_init__block_invoke_85;
    v9[3] = &unk_279945030;
    objc_copyWeak(&v10, &location);
    [(NSXPCConnection *)v3 setInvalidationHandler:v9];
    v5 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v6 = dispatch_queue_create("NPKRemoteInterfacePresenterQueue", v5);
    [(NSXPCConnection *)v3 _setQueue:v6];
    [(NSXPCConnection *)v3 resume];
    xpcConnection = v2->_xpcConnection;
    v2->_xpcConnection = v3;

    objc_destroyWeak(&v10);
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __35__NPKRemoteInterfacePresenter_init__block_invoke(uint64_t a1)
{
  v2 = pk_Payment_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = pk_Payment_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v8[0] = 0;
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_DEFAULT, "Notice: Remote interface presenter connection interrupted", v8, 2u);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = objc_loadWeakRetained(WeakRetained + 1);
    [v7 remoteInterfacePresenterConnectionInterrupted:v6];
  }
}

void __35__NPKRemoteInterfacePresenter_init__block_invoke_85(uint64_t a1)
{
  v2 = pk_Payment_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = pk_Payment_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_DEFAULT, "Notice: Remote interface presenter connection invalidated", buf, 2u);
    }
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__NPKRemoteInterfacePresenter_init__block_invoke_86;
  block[3] = &unk_279945030;
  objc_copyWeak(&v6, (a1 + 32));
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v6);
}

void __35__NPKRemoteInterfacePresenter_init__block_invoke_86(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setXpcConnection:0];
}

void __218__NPKRemoteInterfacePresenter_presentInAppPaymentInterfaceWithPaymentRequest_awaitingRemoteNetworkPaymentRequest_forHostApplicationName_hostBundleIdentifier_hostProcessIdentifier_hostIdentifier_orientation_completion___block_invoke(uint64_t a1, void *a2)
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
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_ERROR, "Error: Remote object proxy error handler for present in-app payment interface invoked: %@", &v9, 0xCu);
    }
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, 0, v3);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)presentContinuityPaymentInterfaceWithRemotePaymentRequest:(id)request completion:(id)completion
{
  v19 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  completionCopy = completion;
  v8 = pk_General_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = pk_General_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = requestCopy;
      _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: Request to present continuity payment interface for remote payment request: %@", buf, 0xCu);
    }
  }

  xpcConnection = self->_xpcConnection;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __100__NPKRemoteInterfacePresenter_presentContinuityPaymentInterfaceWithRemotePaymentRequest_completion___block_invoke;
  v15[3] = &unk_279945218;
  v16 = completionCopy;
  v12 = completionCopy;
  v13 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v15];
  [v13 showInAppInterfaceWithRemotePaymentRequest:requestCopy activationHandler:v12];

  v14 = *MEMORY[0x277D85DE8];
}

void __100__NPKRemoteInterfacePresenter_presentContinuityPaymentInterfaceWithRemotePaymentRequest_completion___block_invoke(uint64_t a1, void *a2)
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
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_ERROR, "Error: Remote object proxy error handler for present continuity payment interface invoked: %@", &v9, 0xCu);
    }
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, 0);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)showInAppInterfaceWithSkeletonPeerPaymentQuote:(id)quote completion:(id)completion
{
  v19 = *MEMORY[0x277D85DE8];
  quoteCopy = quote;
  completionCopy = completion;
  v8 = pk_General_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = pk_General_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = quoteCopy;
      _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: Request to present in-app interface for skeleton peer payment quote: %@", buf, 0xCu);
    }
  }

  xpcConnection = self->_xpcConnection;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __89__NPKRemoteInterfacePresenter_showInAppInterfaceWithSkeletonPeerPaymentQuote_completion___block_invoke;
  v15[3] = &unk_279945218;
  v16 = completionCopy;
  v12 = completionCopy;
  v13 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v15];
  [v13 showInAppInterfaceWithSkeletonPeerPaymentQuote:quoteCopy activationHandler:v12];

  v14 = *MEMORY[0x277D85DE8];
}

void __89__NPKRemoteInterfacePresenter_showInAppInterfaceWithSkeletonPeerPaymentQuote_completion___block_invoke(uint64_t a1, void *a2)
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
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_ERROR, "Error: Remote object proxy error handler for present in-app interface for skeleton peer payment quote invoked: %@", &v9, 0xCu);
    }
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, 0);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)clearInAppInterfaceForSkeletonPeerPaymentQuote:(id)quote withError:(id)error
{
  v17 = *MEMORY[0x277D85DE8];
  quoteCopy = quote;
  errorCopy = error;
  v8 = pk_General_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = pk_General_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412546;
      v14 = quoteCopy;
      v15 = 2112;
      v16 = errorCopy;
      _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: Request to clear skeleton peer payment quote: %@ error: %@", &v13, 0x16u);
    }
  }

  v11 = [(NSXPCConnection *)self->_xpcConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_16];
  [v11 clearInAppInterfaceForSkeletonPeerPaymentQuote:quoteCopy withError:errorCopy];

  v12 = *MEMORY[0x277D85DE8];
}

void __88__NPKRemoteInterfacePresenter_clearInAppInterfaceForSkeletonPeerPaymentQuote_withError___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = pk_Payment_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);

  if (v4)
  {
    v5 = pk_Payment_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412290;
      v8 = v2;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_ERROR, "Error: Remote object proxy error handler for clear peer payment quote invoked: %@", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)presentSetupApplePayAlert:(id)alert
{
  v13 = *MEMORY[0x277D85DE8];
  alertCopy = alert;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v5 = dictionary;
  if (alertCopy)
  {
    [dictionary setObject:alertCopy forKey:@"AppName"];
  }

  v6 = pk_General_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v8 = pk_General_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = alertCopy;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: Request to present set up Apple Pay alert for %@", &v11, 0xCu);
    }
  }

  defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
  [defaultCenter postNotificationName:@"com.apple.NanoPassKit.PresentApplePaySetupAlert" object:0 userInfo:v5];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)presentPasscodeUpgradeRequestWithChangeType:(unint64_t)type completion:(id)completion
{
  xpcConnection = self->_xpcConnection;
  completionCopy = completion;
  v7 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_92_0];
  [v7 presentPasscodeUpgradeRequestWithChangeType:type completion:completionCopy];
}

void __86__NPKRemoteInterfacePresenter_presentPasscodeUpgradeRequestWithChangeType_completion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = pk_Payment_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);

  if (v4)
  {
    v5 = pk_Payment_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412290;
      v8 = v2;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_ERROR, "Error: Remote object proxy error handler for present passcode upgrade request invoked: %@", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __87__NPKRemoteInterfacePresenter_tearDownPasscodeUpgradeRequestWithPasscodeChanged_error___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = pk_Payment_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);

  if (v4)
  {
    v5 = pk_Payment_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412290;
      v8 = v2;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_ERROR, "Error: Remote object proxy error handler for tear down passcode upgrade request invoked: %@", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)presentContactlessInterfaceForPassWithUniqueIdentifier:(id)identifier fromSource:(int64_t)source completion:(id)completion
{
  xpcConnection = self->_xpcConnection;
  completionCopy = completion;
  identifierCopy = identifier;
  v10 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_96];
  [v10 presentContactlessInterfaceForPassWithUniqueIdentifier:identifierCopy fromSource:source completion:completionCopy];
}

void __108__NPKRemoteInterfacePresenter_presentContactlessInterfaceForPassWithUniqueIdentifier_fromSource_completion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = pk_Payment_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);

  if (v4)
  {
    v5 = pk_Payment_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412290;
      v8 = v2;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_ERROR, "Error: Remote object proxy error handler for present contactless interface upgrade request invoked: %@", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)presentProvisioningContinuityInterfaceForPassWithUniqueIdentifier:(id)identifier continuityType:(id)type transferToken:(id)token completion:(id)completion
{
  xpcConnection = self->_xpcConnection;
  completionCopy = completion;
  tokenCopy = token;
  typeCopy = type;
  identifierCopy = identifier;
  v14 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_98];
  [v14 presentProvisioningContinuityInterfaceForPassWithUniqueIdentifier:identifierCopy continuityType:typeCopy transferToken:tokenCopy completion:completionCopy];
}

void __137__NPKRemoteInterfacePresenter_presentProvisioningContinuityInterfaceForPassWithUniqueIdentifier_continuityType_transferToken_completion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = pk_Payment_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);

  if (v4)
  {
    v5 = pk_Payment_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412290;
      v8 = v2;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_ERROR, "Error: Remote object proxy error handler for present provisioning continuity car key interface invoked: %@", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)presentTransitTopUpValueSelectionForPassWithUniqueIdentifier:(id)identifier balanceField:(id)field completion:(id)completion
{
  xpcConnection = self->_xpcConnection;
  completionCopy = completion;
  fieldCopy = field;
  identifierCopy = identifier;
  v11 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_100];
  [v11 presentTransitTopUpValueSelectionForPassWithUniqueIdentifier:identifierCopy balanceField:fieldCopy completion:completionCopy];
}

void __116__NPKRemoteInterfacePresenter_presentTransitTopUpValueSelectionForPassWithUniqueIdentifier_balanceField_completion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = pk_Payment_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);

  if (v4)
  {
    v5 = pk_Payment_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412290;
      v8 = v2;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_ERROR, "Error: Remote object proxy error handler for present top up value selection interface invoked: %@", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (NPKRemoteInterfacePresenterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end