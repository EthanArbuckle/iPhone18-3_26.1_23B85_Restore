@interface FAInvokeMessageHook
- (BOOL)shouldMatchElement:(id)element;
- (BOOL)shouldMatchModel:(id)model;
- (FACircleRemoteUIDelegate)remoteUIDelegate;
- (RUIServerHookDelegate)delegate;
- (id)_stringForCompletionStatus:(unint64_t)status;
- (int64_t)transportWithActionString:(id)string;
- (void)_presentMessagesInviteWithServerAttributes:(id)attributes transport:(int64_t)transport sourceView:(id)view completion:(id)completion;
- (void)dismissWithUserInfo:(id)info;
- (void)inviteController:(id)controller didFinishWithStatus:(unint64_t)status recipients:(id)recipients userInfo:(id)info error:(id)error;
- (void)inviteControllerDidEndAsyncLoading:(id)loading;
- (void)inviteControllerDidStartAsyncLoading:(id)loading;
- (void)processElement:(id)element attributes:(id)attributes objectModel:(id)model completion:(id)completion;
- (void)processObjectModel:(id)model completion:(id)completion;
@end

@implementation FAInvokeMessageHook

- (BOOL)shouldMatchElement:(id)element
{
  name = [element name];
  LOBYTE(self) = [(FAInvokeMessageHook *)self transportWithActionString:name]!= -1;

  return self;
}

- (BOOL)shouldMatchModel:(id)model
{
  clientInfo = [model clientInfo];
  v5 = [clientInfo objectForKeyedSubscript:*MEMORY[0x277CEC988]];

  LOBYTE(self) = [(FAInvokeMessageHook *)self transportWithActionString:v5]!= -1;
  return self;
}

- (int64_t)transportWithActionString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:@"family:iMessageInvite"])
  {
    v4 = 0;
  }

  else if ([stringCopy isEqualToString:@"family:shareSheetInvite"])
  {
    v4 = 1;
  }

  else
  {
    v4 = -1;
  }

  return v4;
}

- (void)processElement:(id)element attributes:(id)attributes objectModel:(id)model completion:(id)completion
{
  elementCopy = element;
  modelCopy = model;
  completionCopy = completion;
  [modelCopy startActivityIndicator];
  identifier = [elementCopy identifier];

  if (identifier)
  {
    visiblePage = [modelCopy visiblePage];
    identifier2 = [elementCopy identifier];
    identifier = [visiblePage viewForElementIdentifier:identifier2];
  }

  clientInfo = [modelCopy clientInfo];
  name = [elementCopy name];
  [(FAInvokeMessageHook *)self _presentMessagesInviteWithServerAttributes:clientInfo transport:[(FAInvokeMessageHook *)self transportWithActionString:name] sourceView:identifier completion:completionCopy];
}

- (void)processObjectModel:(id)model completion:(id)completion
{
  modelCopy = model;
  completionCopy = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__FAInvokeMessageHook_processObjectModel_completion___block_invoke;
  block[3] = &unk_2782F3BA0;
  v11 = modelCopy;
  selfCopy = self;
  v13 = completionCopy;
  v8 = completionCopy;
  v9 = modelCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __53__FAInvokeMessageHook_processObjectModel_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) startActivityIndicator];
  v2 = [*(a1 + 32) clientInfo];
  v3 = [v2 objectForKeyedSubscript:@"sourceElement"];

  if (v3)
  {
    v4 = [*(a1 + 32) visiblePage];
    v10 = [v4 viewForElementIdentifier:v3];
  }

  else
  {
    v10 = 0;
  }

  v5 = *(a1 + 40);
  v6 = [*(a1 + 32) clientInfo];
  v7 = *(a1 + 40);
  v8 = [*(a1 + 32) clientInfo];
  v9 = [v8 objectForKeyedSubscript:*MEMORY[0x277CEC988]];
  [v5 _presentMessagesInviteWithServerAttributes:v6 transport:objc_msgSend(v7 sourceView:"transportWithActionString:" completion:{v9), v10, *(a1 + 48)}];
}

- (void)_presentMessagesInviteWithServerAttributes:(id)attributes transport:(int64_t)transport sourceView:(id)view completion:(id)completion
{
  v28 = *MEMORY[0x277D85DE8];
  attributesCopy = attributes;
  completionCopy = completion;
  v11 = _FALogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21BB35000, v11, OS_LOG_TYPE_DEFAULT, "Present messsage invite triggered", buf, 2u);
  }

  v12 = _FALogSystem();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v27 = attributesCopy;
    _os_log_impl(&dword_21BB35000, v12, OS_LOG_TYPE_DEFAULT, "Attributes - %@", buf, 0xCu);
  }

  v13 = [objc_alloc(MEMORY[0x277D082B0]) initWithResults:attributesCopy];
  v14 = [completionCopy copy];
  completion = self->_completion;
  self->_completion = v14;

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __98__FAInvokeMessageHook__presentMessagesInviteWithServerAttributes_transport_sourceView_completion___block_invoke;
  block[3] = &unk_2782F40E0;
  v24 = completionCopy;
  transportCopy = transport;
  v21 = v13;
  selfCopy = self;
  v23 = attributesCopy;
  v16 = completionCopy;
  v17 = attributesCopy;
  v18 = v13;
  dispatch_async(MEMORY[0x277D85CD0], block);

  v19 = *MEMORY[0x277D85DE8];
}

void __98__FAInvokeMessageHook__presentMessagesInviteWithServerAttributes_transport_sourceView_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 64);
  switch(v2)
  {
    case -1:
      v19 = _FALogSystem();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v20 = "Device unknown transport messages";
LABEL_11:
        _os_log_impl(&dword_21BB35000, v19, OS_LOG_TYPE_DEFAULT, v20, buf, 2u);
      }

LABEL_12:

      v21 = *(a1 + 56);
      v22 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D080B8] code:-1000 userInfo:0];
      (*(v21 + 16))(v21, 0, v22);

      break;
    case 0:
      if (+[FAMessagesInviteConfigurationController isAvailable])
      {
        v12 = [FAMessagesInviteConfigurationController alloc];
        v13 = *(a1 + 32);
        WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 40));
        v15 = [WeakRetained presentationContextForHook:*(a1 + 40)];
        v16 = [(FAMessagesInviteConfigurationController *)v12 initWithInviteContext:v13 presentingController:v15];
        v17 = *(a1 + 40);
        v18 = *(v17 + 8);
        *(v17 + 8) = v16;

        break;
      }

      v19 = _FALogSystem();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v20 = "Device cannot send messages";
        goto LABEL_11;
      }

      goto LABEL_12;
    case 1:
      v3 = +[_TtC14FamilyCircleUI21FamilyInviteAnalytics shared];
      [v3 sendTapInviteOthersEvent];

      v4 = [FAShareSheetInviteConfigurationController alloc];
      v5 = *(a1 + 32);
      v6 = objc_loadWeakRetained((*(a1 + 40) + 40));
      v7 = [v6 presentationContextForHook:*(a1 + 40)];
      v8 = [(FAShareSheetInviteConfigurationController *)v4 initWithInviteContext:v5 presentingController:v7];

      v9 = [*(a1 + 48) objectForKeyedSubscript:@"alwaysNotifyServer"];
      -[FAShareSheetInviteConfigurationController setAlwaysNotifyServer:](v8, "setAlwaysNotifyServer:", [v9 BOOLValue]);

      v10 = *(a1 + 40);
      v11 = *(v10 + 8);
      *(v10 + 8) = v8;

      break;
  }

  [*(*(a1 + 40) + 8) setDelegate:?];
  v23 = *(a1 + 40);
  v24 = *(v23 + 8);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __98__FAInvokeMessageHook__presentMessagesInviteWithServerAttributes_transport_sourceView_completion___block_invoke_45;
  v25[3] = &unk_2782F3D08;
  v25[4] = v23;
  v26 = *(a1 + 56);
  [v24 presentWhenReadyWithCompletion:v25];
}

void __98__FAInvokeMessageHook__presentMessagesInviteWithServerAttributes_transport_sourceView_completion___block_invoke_45(uint64_t a1, char a2, void *a3)
{
  v6 = a3;
  v5 = [*(a1 + 32) objectModel];
  [v5 stopActivityIndicator];

  if ((a2 & 1) == 0)
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (id)_stringForCompletionStatus:(unint64_t)status
{
  if (status > 2)
  {
    return 0;
  }

  else
  {
    return off_2782F4100[status];
  }
}

- (void)inviteController:(id)controller didFinishWithStatus:(unint64_t)status recipients:(id)recipients userInfo:(id)info error:(id)error
{
  v29 = *MEMORY[0x277D85DE8];
  recipientsCopy = recipients;
  infoCopy = info;
  errorCopy = error;
  v14 = _FALogSystem();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v27 = 134217984;
    statusCopy = status;
    _os_log_impl(&dword_21BB35000, v14, OS_LOG_TYPE_DEFAULT, "Message Invite Controller did finish with status: %lu", &v27, 0xCu);
  }

  v15 = _FALogSystem();
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
  if (recipientsCopy)
  {
    if (v16)
    {
      v27 = 138412290;
      statusCopy = recipientsCopy;
      _os_log_impl(&dword_21BB35000, v15, OS_LOG_TYPE_DEFAULT, "Recipient key is not nil %@", &v27, 0xCu);
    }

    v17 = +[_TtC14FamilyCircleUI21FamilyInviteAnalytics shared];
    v18 = [infoCopy objectForKeyedSubscript:*MEMORY[0x277D080F8]];
    [v17 sendOtherContactInvitedEventWithInviteTransport:v18 inviteCompletionStatus:status];

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v15 = dictionary;
    if (infoCopy)
    {
      [dictionary addEntriesFromDictionary:infoCopy];
    }

    v20 = [(FAInvokeMessageHook *)self _stringForCompletionStatus:status];
    [v15 setObject:v20 forKeyedSubscript:*MEMORY[0x277D080F0]];

    [v15 setObject:recipientsCopy forKeyedSubscript:*MEMORY[0x277D080E8]];
    v21 = objc_alloc_init(MEMORY[0x277D46208]);
    serverHookResponse = self->_serverHookResponse;
    self->_serverHookResponse = v21;

    v23 = [v15 copy];
    [(RUIServerHookResponse *)self->_serverHookResponse setAdditionalPayload:v23];

    completion = self->_completion;
    if (completion)
    {
      completion[2](completion, status == 1, errorCopy);
      v25 = self->_completion;
      self->_completion = 0;
    }
  }

  else if (v16)
  {
    LOWORD(v27) = 0;
    _os_log_impl(&dword_21BB35000, v15, OS_LOG_TYPE_DEFAULT, "Recipient key is nil, not sending the invite details to the server", &v27, 2u);
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)inviteControllerDidStartAsyncLoading:(id)loading
{
  objectModel = [(FAInvokeMessageHook *)self objectModel];
  [objectModel startActivityIndicator];
}

- (void)inviteControllerDidEndAsyncLoading:(id)loading
{
  objectModel = [(FAInvokeMessageHook *)self objectModel];
  [objectModel stopActivityIndicator];
}

- (void)dismissWithUserInfo:(id)info
{
  infoCopy = info;
  remoteUIDelegate = [(FAInvokeMessageHook *)self remoteUIDelegate];
  [remoteUIDelegate setDismissInfo:infoCopy];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = [WeakRetained presentationContextForHook:self];
  [v6 dismissViewControllerAnimated:1 completion:0];
}

- (RUIServerHookDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (FACircleRemoteUIDelegate)remoteUIDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_remoteUIDelegate);

  return WeakRetained;
}

@end