@interface FAInvokeMessageHook
- (BOOL)shouldMatchElement:(id)a3;
- (BOOL)shouldMatchModel:(id)a3;
- (FACircleRemoteUIDelegate)remoteUIDelegate;
- (RUIServerHookDelegate)delegate;
- (id)_stringForCompletionStatus:(unint64_t)a3;
- (int64_t)transportWithActionString:(id)a3;
- (void)_presentMessagesInviteWithServerAttributes:(id)a3 transport:(int64_t)a4 sourceView:(id)a5 completion:(id)a6;
- (void)dismissWithUserInfo:(id)a3;
- (void)inviteController:(id)a3 didFinishWithStatus:(unint64_t)a4 recipients:(id)a5 userInfo:(id)a6 error:(id)a7;
- (void)inviteControllerDidEndAsyncLoading:(id)a3;
- (void)inviteControllerDidStartAsyncLoading:(id)a3;
- (void)processElement:(id)a3 attributes:(id)a4 objectModel:(id)a5 completion:(id)a6;
- (void)processObjectModel:(id)a3 completion:(id)a4;
@end

@implementation FAInvokeMessageHook

- (BOOL)shouldMatchElement:(id)a3
{
  v4 = [a3 name];
  LOBYTE(self) = [(FAInvokeMessageHook *)self transportWithActionString:v4]!= -1;

  return self;
}

- (BOOL)shouldMatchModel:(id)a3
{
  v4 = [a3 clientInfo];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277CEC988]];

  LOBYTE(self) = [(FAInvokeMessageHook *)self transportWithActionString:v5]!= -1;
  return self;
}

- (int64_t)transportWithActionString:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"family:iMessageInvite"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"family:shareSheetInvite"])
  {
    v4 = 1;
  }

  else
  {
    v4 = -1;
  }

  return v4;
}

- (void)processElement:(id)a3 attributes:(id)a4 objectModel:(id)a5 completion:(id)a6
{
  v16 = a3;
  v9 = a5;
  v10 = a6;
  [v9 startActivityIndicator];
  v11 = [v16 identifier];

  if (v11)
  {
    v12 = [v9 visiblePage];
    v13 = [v16 identifier];
    v11 = [v12 viewForElementIdentifier:v13];
  }

  v14 = [v9 clientInfo];
  v15 = [v16 name];
  [(FAInvokeMessageHook *)self _presentMessagesInviteWithServerAttributes:v14 transport:[(FAInvokeMessageHook *)self transportWithActionString:v15] sourceView:v11 completion:v10];
}

- (void)processObjectModel:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__FAInvokeMessageHook_processObjectModel_completion___block_invoke;
  block[3] = &unk_2782F3BA0;
  v11 = v6;
  v12 = self;
  v13 = v7;
  v8 = v7;
  v9 = v6;
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

- (void)_presentMessagesInviteWithServerAttributes:(id)a3 transport:(int64_t)a4 sourceView:(id)a5 completion:(id)a6
{
  v28 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a6;
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
    v27 = v9;
    _os_log_impl(&dword_21BB35000, v12, OS_LOG_TYPE_DEFAULT, "Attributes - %@", buf, 0xCu);
  }

  v13 = [objc_alloc(MEMORY[0x277D082B0]) initWithResults:v9];
  v14 = [v10 copy];
  completion = self->_completion;
  self->_completion = v14;

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __98__FAInvokeMessageHook__presentMessagesInviteWithServerAttributes_transport_sourceView_completion___block_invoke;
  block[3] = &unk_2782F40E0;
  v24 = v10;
  v25 = a4;
  v21 = v13;
  v22 = self;
  v23 = v9;
  v16 = v10;
  v17 = v9;
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

- (id)_stringForCompletionStatus:(unint64_t)a3
{
  if (a3 > 2)
  {
    return 0;
  }

  else
  {
    return off_2782F4100[a3];
  }
}

- (void)inviteController:(id)a3 didFinishWithStatus:(unint64_t)a4 recipients:(id)a5 userInfo:(id)a6 error:(id)a7
{
  v29 = *MEMORY[0x277D85DE8];
  v11 = a5;
  v12 = a6;
  v13 = a7;
  v14 = _FALogSystem();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v27 = 134217984;
    v28 = a4;
    _os_log_impl(&dword_21BB35000, v14, OS_LOG_TYPE_DEFAULT, "Message Invite Controller did finish with status: %lu", &v27, 0xCu);
  }

  v15 = _FALogSystem();
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
  if (v11)
  {
    if (v16)
    {
      v27 = 138412290;
      v28 = v11;
      _os_log_impl(&dword_21BB35000, v15, OS_LOG_TYPE_DEFAULT, "Recipient key is not nil %@", &v27, 0xCu);
    }

    v17 = +[_TtC14FamilyCircleUI21FamilyInviteAnalytics shared];
    v18 = [v12 objectForKeyedSubscript:*MEMORY[0x277D080F8]];
    [v17 sendOtherContactInvitedEventWithInviteTransport:v18 inviteCompletionStatus:a4];

    v19 = [MEMORY[0x277CBEB38] dictionary];
    v15 = v19;
    if (v12)
    {
      [v19 addEntriesFromDictionary:v12];
    }

    v20 = [(FAInvokeMessageHook *)self _stringForCompletionStatus:a4];
    [v15 setObject:v20 forKeyedSubscript:*MEMORY[0x277D080F0]];

    [v15 setObject:v11 forKeyedSubscript:*MEMORY[0x277D080E8]];
    v21 = objc_alloc_init(MEMORY[0x277D46208]);
    serverHookResponse = self->_serverHookResponse;
    self->_serverHookResponse = v21;

    v23 = [v15 copy];
    [(RUIServerHookResponse *)self->_serverHookResponse setAdditionalPayload:v23];

    completion = self->_completion;
    if (completion)
    {
      completion[2](completion, a4 == 1, v13);
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

- (void)inviteControllerDidStartAsyncLoading:(id)a3
{
  v3 = [(FAInvokeMessageHook *)self objectModel];
  [v3 startActivityIndicator];
}

- (void)inviteControllerDidEndAsyncLoading:(id)a3
{
  v3 = [(FAInvokeMessageHook *)self objectModel];
  [v3 stopActivityIndicator];
}

- (void)dismissWithUserInfo:(id)a3
{
  v4 = a3;
  v5 = [(FAInvokeMessageHook *)self remoteUIDelegate];
  [v5 setDismissInfo:v4];

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