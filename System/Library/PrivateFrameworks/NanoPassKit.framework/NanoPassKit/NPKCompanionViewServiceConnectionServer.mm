@interface NPKCompanionViewServiceConnectionServer
- (NPKCompanionViewServiceConnectionServerDelegate)delegate;
- (id)_checkCompanionViewServiceConnectionEntitlement;
- (void)presentRemotePassItemSelectionViewControllerForRequest:(id)request contact:(id)contact completion:(id)completion;
- (void)presentRemotePassValueEntryViewControllerForRequest:(id)request contact:(id)contact completion:(id)completion;
@end

@implementation NPKCompanionViewServiceConnectionServer

- (void)presentRemotePassValueEntryViewControllerForRequest:(id)request contact:(id)contact completion:(id)completion
{
  v24 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  contactCopy = contact;
  completionCopy = completion;
  v11 = pk_Payment_log();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

  if (v12)
  {
    v13 = pk_Payment_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = _Block_copy(completionCopy);
      v18 = 138412802;
      v19 = requestCopy;
      v20 = 2112;
      v21 = contactCopy;
      v22 = 2112;
      v23 = v14;
      _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_DEFAULT, "Notice: NPKCompanionViewService: Requested present remote pass action entry view controller for request: %@ contact: %@ completion %@", &v18, 0x20u);
    }
  }

  _checkCompanionViewServiceConnectionEntitlement = [(NPKCompanionViewServiceConnectionServer *)self _checkCompanionViewServiceConnectionEntitlement];
  if (_checkCompanionViewServiceConnectionEntitlement)
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }

  else
  {
    delegate = [(NPKCompanionViewServiceConnectionServer *)self delegate];
    [delegate viewServiceConnectionServer:self didRequestPresentRemotePassValueEntryViewControllerForRequest:requestCopy contact:contactCopy completion:completionCopy];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)presentRemotePassItemSelectionViewControllerForRequest:(id)request contact:(id)contact completion:(id)completion
{
  v24 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  contactCopy = contact;
  completionCopy = completion;
  v11 = pk_Payment_log();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

  if (v12)
  {
    v13 = pk_Payment_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = _Block_copy(completionCopy);
      v18 = 138412802;
      v19 = requestCopy;
      v20 = 2112;
      v21 = contactCopy;
      v22 = 2112;
      v23 = v14;
      _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_DEFAULT, "Notice: NPKCompanionViewService: Requested present remote pass action selection view controller for request: %@ contact: %@ completion %@", &v18, 0x20u);
    }
  }

  _checkCompanionViewServiceConnectionEntitlement = [(NPKCompanionViewServiceConnectionServer *)self _checkCompanionViewServiceConnectionEntitlement];
  if (_checkCompanionViewServiceConnectionEntitlement)
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }

  else
  {
    delegate = [(NPKCompanionViewServiceConnectionServer *)self delegate];
    [delegate viewServiceConnectionServer:self didRequestPresentRemotePassItemSelectionViewControllerForRequest:requestCopy contact:contactCopy completion:completionCopy];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (id)_checkCompanionViewServiceConnectionEntitlement
{
  connection = [(PDXPCService *)self connection];
  v3 = [connection valueForEntitlement:@"com.apple.NanoPassbook.NPKCompanionViewService.client"];

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