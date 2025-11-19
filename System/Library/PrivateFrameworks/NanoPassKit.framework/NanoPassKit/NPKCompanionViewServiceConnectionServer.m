@interface NPKCompanionViewServiceConnectionServer
- (NPKCompanionViewServiceConnectionServerDelegate)delegate;
- (id)_checkCompanionViewServiceConnectionEntitlement;
- (void)presentRemotePassItemSelectionViewControllerForRequest:(id)a3 contact:(id)a4 completion:(id)a5;
- (void)presentRemotePassValueEntryViewControllerForRequest:(id)a3 contact:(id)a4 completion:(id)a5;
@end

@implementation NPKCompanionViewServiceConnectionServer

- (void)presentRemotePassValueEntryViewControllerForRequest:(id)a3 contact:(id)a4 completion:(id)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = pk_Payment_log();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

  if (v12)
  {
    v13 = pk_Payment_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = _Block_copy(v10);
      v18 = 138412802;
      v19 = v8;
      v20 = 2112;
      v21 = v9;
      v22 = 2112;
      v23 = v14;
      _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_DEFAULT, "Notice: NPKCompanionViewService: Requested present remote pass action entry view controller for request: %@ contact: %@ completion %@", &v18, 0x20u);
    }
  }

  v15 = [(NPKCompanionViewServiceConnectionServer *)self _checkCompanionViewServiceConnectionEntitlement];
  if (v15)
  {
    (*(v10 + 2))(v10, 0);
  }

  else
  {
    v16 = [(NPKCompanionViewServiceConnectionServer *)self delegate];
    [v16 viewServiceConnectionServer:self didRequestPresentRemotePassValueEntryViewControllerForRequest:v8 contact:v9 completion:v10];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)presentRemotePassItemSelectionViewControllerForRequest:(id)a3 contact:(id)a4 completion:(id)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = pk_Payment_log();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

  if (v12)
  {
    v13 = pk_Payment_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = _Block_copy(v10);
      v18 = 138412802;
      v19 = v8;
      v20 = 2112;
      v21 = v9;
      v22 = 2112;
      v23 = v14;
      _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_DEFAULT, "Notice: NPKCompanionViewService: Requested present remote pass action selection view controller for request: %@ contact: %@ completion %@", &v18, 0x20u);
    }
  }

  v15 = [(NPKCompanionViewServiceConnectionServer *)self _checkCompanionViewServiceConnectionEntitlement];
  if (v15)
  {
    (*(v10 + 2))(v10, 0);
  }

  else
  {
    v16 = [(NPKCompanionViewServiceConnectionServer *)self delegate];
    [v16 viewServiceConnectionServer:self didRequestPresentRemotePassItemSelectionViewControllerForRequest:v8 contact:v9 completion:v10];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (id)_checkCompanionViewServiceConnectionEntitlement
{
  v2 = [(PDXPCService *)self connection];
  v3 = [v2 valueForEntitlement:@"com.apple.NanoPassbook.NPKCompanionViewService.client"];

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([v3 BOOLValue])
  {
    v4 = 0;
  }

  else
  {
    v4 = NPKCompanionViewServiceError(-1000, 0);
  }

  return v4;
}

- (NPKCompanionViewServiceConnectionServerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end