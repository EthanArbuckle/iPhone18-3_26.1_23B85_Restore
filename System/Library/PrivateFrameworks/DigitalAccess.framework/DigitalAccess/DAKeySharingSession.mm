@interface DAKeySharingSession
- (DAKeySharingSession)initWithCoder:(id)coder;
- (DAKeySharingSession)initWithDelegate:(id)delegate;
- (id)cancelSharingInvitation:(id)invitation;
- (void)acceptCrossPlatformInvitationWithIdentifier:(id)identifier passcode:(id)passcode productPlanIdentifier:(id)planIdentifier completionHandler:(id)handler;
- (void)acceptInvitationWithIdentifier:(id)identifier passcode:(id)passcode completionHandler:(id)handler;
- (void)acceptInvitationWithIdentifier:(id)identifier passcode:(id)passcode sharingFlow:(int64_t)flow completionHandler:(id)handler;
- (void)acceptSharingInvitation:(id)invitation fromMailboxIdentifier:(id)identifier completionHandler:(id)handler;
- (void)acceptSharingInvitation:(id)invitation fromMailboxIdentifier:(id)identifier passcode:(id)passcode completionHandler:(id)handler;
- (void)acceptSharingInvitationWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)acceptSharingInvitationWithIdentifier:(id)identifier passcode:(id)passcode completionHandler:(id)handler;
- (void)acceptSharingInvitationWithIdentifier:(id)identifier passcode:(id)passcode productPlanIdentifier:(id)planIdentifier completionHandler:(id)handler;
- (void)authorizeSharingInvitationIdentifier:(id)identifier auth:(id)auth completionHandler:(id)handler;
- (void)cancelSharingInvitation:(id)invitation completionHandler:(id)handler;
- (void)createSharingInvitationsForKeyIdentifier:(id)identifier friendIdentifier:(id)friendIdentifier auth:(id)auth config:(id)config completionHandler:(id)handler;
- (void)createSharingInvitationsForKeyIdentifier:(id)identifier friendIdentifier:(id)friendIdentifier auth:(id)auth ourBindingAttestation:(id)attestation config:(id)config completionHandler:(id)handler;
- (void)createSilentSharingInvitationWithGroupIdentifier:(id)identifier completionHandler:(id)handler;
- (void)didEnd:(id)end;
- (void)encodeWithCoder:(id)coder;
- (void)getPreTrackRequestForInvitationWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)getPreTrackRequestForKeyWithIdentifier:(id)identifier callback:(id)callback;
- (void)getSecondFactorRequestForConfigs:(id)configs completionHandler:(id)handler;
- (void)handleInitiatorMessage:(id)message forInvitationIdentifier:(id)identifier completionHandler:(id)handler;
- (void)handleRecipientMessage:(id)message forInvitationIdentifier:(id)identifier completionHandler:(id)handler;
- (void)ppidRequestForInvitationWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)ppidRequestForInvitationWithIdentifier:(id)identifier fromMailboxIdentifier:(id)mailboxIdentifier completionHandler:(id)handler;
- (void)readerInformationForInvitationWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)readerInformationForInvitationWithIdentifier:(id)identifier fromMailboxIdentifier:(id)mailboxIdentifier completionHandler:(id)handler;
- (void)requestBindingAttestationDataForKeyWithIdentifier:(id)identifier callback:(id)callback;
- (void)requestInviteWithConfig:(id)config completionHandler:(id)handler;
- (void)retryPasscode:(id)passcode forInvitationIdentifier:(id)identifier completionHandler:(id)handler;
- (void)retryPasscode:(id)passcode forKeyIdentifier:(id)identifier completionHandler:(id)handler;
- (void)sendSharingInvitationForKeyIdentifier:(id)identifier toIdsIdentifier:(id)idsIdentifier auth:(id)auth config:(id)config completionHandler:(id)handler;
- (void)sendSilentSharingInvitationWithKeyIdentifier:(id)identifier config:(id)config groupIdentifier:(id)groupIdentifier completionHandler:(id)handler;
- (void)setBindingAttestation:(id)attestation forKeyWithIdentifier:(id)identifier callback:(id)callback;
- (void)setMailboxIdentifier:(id)identifier forOwnerKeyIdentifier:(id)keyIdentifier forInvitationIdentifier:(id)invitationIdentifier completionHandler:(id)handler;
- (void)setProductPlanIdentifier:(id)identifier forInvitationIdentifier:(id)invitationIdentifier completion:(id)completion;
- (void)startShareAcceptanceFlowWithInvitation:(id)invitation completionHandler:(id)handler;
- (void)startShareAcceptanceFlowWithInvitation:(id)invitation fromMailboxIdentifier:(id)identifier completionHandler:(id)handler;
- (void)updateSharingAnalyticsWithConfig:(id)config completionHandler:(id)handler;
@end

@implementation DAKeySharingSession

- (DAKeySharingSession)initWithDelegate:(id)delegate
{
  v4.receiver = self;
  v4.super_class = DAKeySharingSession;
  return [(DASession *)&v4 initWithDelegate:delegate];
}

- (void)sendSharingInvitationForKeyIdentifier:(id)identifier toIdsIdentifier:(id)idsIdentifier auth:(id)auth config:(id)config completionHandler:(id)handler
{
  v37[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  idsIdentifierCopy = idsIdentifier;
  authCopy = auth;
  configCopy = config;
  handlerCopy = handler;
  v17 = KmlLogger();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "[DAKeySharingSession sendSharingInvitationForKeyIdentifier:toIdsIdentifier:auth:config:completionHandler:]";
    *&buf[12] = 1024;
    *&buf[14] = 54;
    _os_log_impl(&dword_248BF3000, v17, OS_LOG_TYPE_INFO, "%s : %i : IDS based sharing is now deprecated, please use cross platform APIs instead", buf, 0x12u);
  }

  v18 = KmlLogger();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    *&buf[4] = "[DAKeySharingSession sendSharingInvitationForKeyIdentifier:toIdsIdentifier:auth:config:completionHandler:]";
    *&buf[12] = 1024;
    *&buf[14] = 55;
    *&buf[18] = 2112;
    *&buf[20] = identifierCopy;
    *&buf[28] = 2112;
    *&buf[30] = idsIdentifierCopy;
    _os_log_impl(&dword_248BF3000, v18, OS_LOG_TYPE_DEBUG, "%s : %i : KeyIdentifier : %@, remoteIdsId: %@", buf, 0x26u);
  }

  if (identifierCopy && idsIdentifierCopy && authCopy && [configCopy count])
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&buf[24] = __Block_byref_object_copy__4;
    *&buf[32] = __Block_byref_object_dispose__4;
    v35 = 0;
    v28 = 0;
    v29 = &v28;
    v30 = 0x3032000000;
    v31 = __Block_byref_object_copy__4;
    v32 = __Block_byref_object_dispose__4;
    v33 = 0;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __107__DAKeySharingSession_sendSharingInvitationForKeyIdentifier_toIdsIdentifier_auth_config_completionHandler___block_invoke;
    v27[3] = &unk_278F6FB00;
    v27[4] = buf;
    v19 = [(DAKeyPairingSession *)self getKeyPairingProxy:v27];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __107__DAKeySharingSession_sendSharingInvitationForKeyIdentifier_toIdsIdentifier_auth_config_completionHandler___block_invoke_13;
    v26[3] = &unk_278F70308;
    v26[4] = buf;
    v26[5] = &v28;
    [v19 sendSharingInviteForKeyIdentifier:identifierCopy toIdsIdentifier:idsIdentifierCopy auth:authCopy config:configCopy completionHandler:v26];

    handlerCopy[2](handlerCopy, v29[5], *(*&buf[8] + 40));
    _Block_object_dispose(&v28, 8);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v20 = KmlLogger();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[DAKeySharingSession sendSharingInvitationForKeyIdentifier:toIdsIdentifier:auth:config:completionHandler:]";
      *&buf[12] = 1024;
      *&buf[14] = 57;
      _os_log_impl(&dword_248BF3000, v20, OS_LOG_TYPE_ERROR, "%s : %i : Null argument provided", buf, 0x12u);
    }

    v21 = MEMORY[0x277CCA9B8];
    v36 = *MEMORY[0x277CCA450];
    v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:DAErrorString(217)];
    v37[0] = v22;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:&v36 count:1];
    v24 = [v21 errorWithDomain:@"DigitalAccessError" code:217 userInfo:v23];
    (handlerCopy)[2](handlerCopy, 0, v24);
  }

  v25 = *MEMORY[0x277D85DE8];
}

void __107__DAKeySharingSession_sendSharingInvitationForKeyIdentifier_toIdsIdentifier_auth_config_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = KmlLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v15 = "[DAKeySharingSession sendSharingInvitationForKeyIdentifier:toIdsIdentifier:auth:config:completionHandler:]_block_invoke";
    v16 = 1024;
    v17 = 66;
    v18 = 2112;
    v19 = v3;
    _os_log_impl(&dword_248BF3000, v4, OS_LOG_TYPE_ERROR, "%s : %i : XPC Proxy error %@", buf, 0x1Cu);
  }

  v5 = MEMORY[0x277CCA9B8];
  v12 = *MEMORY[0x277CCA450];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:{DAErrorString(216), v12}];
  v13 = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v8 = [v5 errorWithDomain:@"DigitalAccessError" code:216 userInfo:v7];
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = *MEMORY[0x277D85DE8];
}

void __107__DAKeySharingSession_sendSharingInvitationForKeyIdentifier_toIdsIdentifier_auth_config_completionHandler___block_invoke_13(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = kmlErrorToDAError(a3);
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v5;
}

- (void)sendSilentSharingInvitationWithKeyIdentifier:(id)identifier config:(id)config groupIdentifier:(id)groupIdentifier completionHandler:(id)handler
{
  v34[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  configCopy = config;
  groupIdentifierCopy = groupIdentifier;
  handlerCopy = handler;
  v14 = KmlLogger();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "[DAKeySharingSession sendSilentSharingInvitationWithKeyIdentifier:config:groupIdentifier:completionHandler:]";
    *&buf[12] = 1024;
    *&buf[14] = 78;
    _os_log_impl(&dword_248BF3000, v14, OS_LOG_TYPE_INFO, "%s : %i : IDS based sharing is now deprecated, please use cross platform APIs instead", buf, 0x12u);
  }

  v15 = KmlLogger();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    *&buf[4] = "[DAKeySharingSession sendSilentSharingInvitationWithKeyIdentifier:config:groupIdentifier:completionHandler:]";
    *&buf[12] = 1024;
    *&buf[14] = 79;
    *&buf[18] = 2112;
    *&buf[20] = identifierCopy;
    *&buf[28] = 2112;
    *&buf[30] = groupIdentifierCopy;
    _os_log_impl(&dword_248BF3000, v15, OS_LOG_TYPE_DEBUG, "%s : %i : KeyIdentifier : %@, uuid: %@", buf, 0x26u);
  }

  if (identifierCopy && configCopy && groupIdentifierCopy)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&buf[24] = __Block_byref_object_copy__4;
    *&buf[32] = __Block_byref_object_dispose__4;
    v32 = 0;
    v25 = 0;
    v26 = &v25;
    v27 = 0x3032000000;
    v28 = __Block_byref_object_copy__4;
    v29 = __Block_byref_object_dispose__4;
    v30 = 0;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __109__DAKeySharingSession_sendSilentSharingInvitationWithKeyIdentifier_config_groupIdentifier_completionHandler___block_invoke;
    v24[3] = &unk_278F6FB00;
    v24[4] = buf;
    v16 = [(DAKeyPairingSession *)self getKeyPairingProxy:v24];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __109__DAKeySharingSession_sendSilentSharingInvitationWithKeyIdentifier_config_groupIdentifier_completionHandler___block_invoke_15;
    v23[3] = &unk_278F709A0;
    v23[4] = buf;
    v23[5] = &v25;
    [v16 sendSilentSharingInviteForKeyIdentifier:identifierCopy config:configCopy groupIdentifier:groupIdentifierCopy completionHandler:v23];

    handlerCopy[2](handlerCopy, v26[5], *(*&buf[8] + 40));
    _Block_object_dispose(&v25, 8);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v17 = KmlLogger();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[DAKeySharingSession sendSilentSharingInvitationWithKeyIdentifier:config:groupIdentifier:completionHandler:]";
      *&buf[12] = 1024;
      *&buf[14] = 81;
      _os_log_impl(&dword_248BF3000, v17, OS_LOG_TYPE_ERROR, "%s : %i : Null argument provided", buf, 0x12u);
    }

    v18 = MEMORY[0x277CCA9B8];
    v33 = *MEMORY[0x277CCA450];
    v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:DAErrorString(217)];
    v34[0] = v19;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:&v33 count:1];
    v21 = [v18 errorWithDomain:@"DigitalAccessError" code:217 userInfo:v20];
    (handlerCopy)[2](handlerCopy, 0, v21);
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __109__DAKeySharingSession_sendSilentSharingInvitationWithKeyIdentifier_config_groupIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = KmlLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v15 = "[DAKeySharingSession sendSilentSharingInvitationWithKeyIdentifier:config:groupIdentifier:completionHandler:]_block_invoke";
    v16 = 1024;
    v17 = 89;
    v18 = 2112;
    v19 = v3;
    _os_log_impl(&dword_248BF3000, v4, OS_LOG_TYPE_ERROR, "%s : %i : XPC Proxy error %@", buf, 0x1Cu);
  }

  v5 = MEMORY[0x277CCA9B8];
  v12 = *MEMORY[0x277CCA450];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:{DAErrorString(216), v12}];
  v13 = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v8 = [v5 errorWithDomain:@"DigitalAccessError" code:216 userInfo:v7];
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = *MEMORY[0x277D85DE8];
}

void __109__DAKeySharingSession_sendSilentSharingInvitationWithKeyIdentifier_config_groupIdentifier_completionHandler___block_invoke_15(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = kmlErrorToDAError(a3);
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v5;
}

- (void)authorizeSharingInvitationIdentifier:(id)identifier auth:(id)auth completionHandler:(id)handler
{
  v26[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  authCopy = auth;
  handlerCopy = handler;
  v11 = KmlLogger();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "[DAKeySharingSession authorizeSharingInvitationIdentifier:auth:completionHandler:]";
    *&buf[12] = 1024;
    *&buf[14] = 103;
    _os_log_impl(&dword_248BF3000, v11, OS_LOG_TYPE_INFO, "%s : %i : IDS based sharing is now deprecated, please use cross platform APIs instead", buf, 0x12u);
  }

  v12 = KmlLogger();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    *&buf[4] = "[DAKeySharingSession authorizeSharingInvitationIdentifier:auth:completionHandler:]";
    *&buf[12] = 1024;
    *&buf[14] = 104;
    *&buf[18] = 2112;
    *&buf[20] = identifierCopy;
    _os_log_impl(&dword_248BF3000, v12, OS_LOG_TYPE_DEBUG, "%s : %i : InvitationId : %@", buf, 0x1Cu);
  }

  if (identifierCopy)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&buf[24] = __Block_byref_object_copy__4;
    v23 = __Block_byref_object_dispose__4;
    v24 = 0;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __83__DAKeySharingSession_authorizeSharingInvitationIdentifier_auth_completionHandler___block_invoke;
    v21[3] = &unk_278F6FB00;
    v21[4] = buf;
    v13 = [(DAKeyPairingSession *)self getKeyPairingProxy:v21];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __83__DAKeySharingSession_authorizeSharingInvitationIdentifier_auth_completionHandler___block_invoke_17;
    v20[3] = &unk_278F6FB00;
    v20[4] = buf;
    [v13 authorizeSharingInvitationIdentifier:identifierCopy auth:authCopy completionHandler:v20];

    handlerCopy[2](handlerCopy, *(*&buf[8] + 40));
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v14 = KmlLogger();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[DAKeySharingSession authorizeSharingInvitationIdentifier:auth:completionHandler:]";
      *&buf[12] = 1024;
      *&buf[14] = 106;
      _os_log_impl(&dword_248BF3000, v14, OS_LOG_TYPE_ERROR, "%s : %i : Null argument provided", buf, 0x12u);
    }

    v15 = MEMORY[0x277CCA9B8];
    v25 = *MEMORY[0x277CCA450];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:DAErrorString(217)];
    v26[0] = v16;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];
    v18 = [v15 errorWithDomain:@"DigitalAccessError" code:217 userInfo:v17];
    (handlerCopy)[2](handlerCopy, v18);
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __83__DAKeySharingSession_authorizeSharingInvitationIdentifier_auth_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = KmlLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v15 = "[DAKeySharingSession authorizeSharingInvitationIdentifier:auth:completionHandler:]_block_invoke";
    v16 = 1024;
    v17 = 113;
    v18 = 2112;
    v19 = v3;
    _os_log_impl(&dword_248BF3000, v4, OS_LOG_TYPE_ERROR, "%s : %i : XPC Proxy error %@", buf, 0x1Cu);
  }

  v5 = MEMORY[0x277CCA9B8];
  v12 = *MEMORY[0x277CCA450];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:{DAErrorString(216), v12}];
  v13 = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v8 = [v5 errorWithDomain:@"DigitalAccessError" code:216 userInfo:v7];
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t __83__DAKeySharingSession_authorizeSharingInvitationIdentifier_auth_completionHandler___block_invoke_17(uint64_t a1, void *a2)
{
  v3 = kmlErrorToDAError(a2);
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8]();
}

- (id)cancelSharingInvitation:(id)invitation
{
  v21[1] = *MEMORY[0x277D85DE8];
  invitationCopy = invitation;
  v5 = KmlLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "[DAKeySharingSession cancelSharingInvitation:]";
    *&buf[12] = 1024;
    *&buf[14] = 124;
    _os_log_impl(&dword_248BF3000, v5, OS_LOG_TYPE_INFO, "%s : %i : This API is deprecated, use cancelSharingInvitation:completionHandler instead", buf, 0x12u);
  }

  v6 = KmlLogger();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    *&buf[4] = "[DAKeySharingSession cancelSharingInvitation:]";
    *&buf[12] = 1024;
    *&buf[14] = 125;
    *&buf[18] = 2112;
    *&buf[20] = invitationCopy;
    _os_log_impl(&dword_248BF3000, v6, OS_LOG_TYPE_DEBUG, "%s : %i : InvitationId : %@", buf, 0x1Cu);
  }

  if (invitationCopy)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&buf[24] = __Block_byref_object_copy__4;
    v18 = __Block_byref_object_dispose__4;
    v19 = 0;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __47__DAKeySharingSession_cancelSharingInvitation___block_invoke;
    v16[3] = &unk_278F6FB00;
    v16[4] = buf;
    v7 = [(DAKeyPairingSession *)self getKeyPairingProxy:v16];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __47__DAKeySharingSession_cancelSharingInvitation___block_invoke_18;
    v15[3] = &unk_278F709C8;
    v15[4] = buf;
    [v7 cancelSharingInvitation:invitationCopy completionHandler:v15];

    v8 = *(*&buf[8] + 40);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v9 = KmlLogger();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[DAKeySharingSession cancelSharingInvitation:]";
      *&buf[12] = 1024;
      *&buf[14] = 127;
      _os_log_impl(&dword_248BF3000, v9, OS_LOG_TYPE_ERROR, "%s : %i : Null argument provided", buf, 0x12u);
    }

    v10 = MEMORY[0x277CCA9B8];
    v20 = *MEMORY[0x277CCA450];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:DAErrorString(217)];
    v21[0] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    v8 = [v10 errorWithDomain:@"DigitalAccessError" code:217 userInfo:v12];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v8;
}

void __47__DAKeySharingSession_cancelSharingInvitation___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = KmlLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v15 = "[DAKeySharingSession cancelSharingInvitation:]_block_invoke";
    v16 = 1024;
    v17 = 134;
    v18 = 2112;
    v19 = v3;
    _os_log_impl(&dword_248BF3000, v4, OS_LOG_TYPE_ERROR, "%s : %i : XPC Proxy error %@", buf, 0x1Cu);
  }

  v5 = MEMORY[0x277CCA9B8];
  v12 = *MEMORY[0x277CCA450];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:{DAErrorString(216), v12}];
  v13 = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v8 = [v5 errorWithDomain:@"DigitalAccessError" code:216 userInfo:v7];
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = *MEMORY[0x277D85DE8];
}

void __47__DAKeySharingSession_cancelSharingInvitation___block_invoke_18(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = KmlLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v2 = [v4 type];
    if (v2 == 3)
    {
      v6 = [v4 error];
    }

    else
    {
      v6 = 0;
    }

    v10 = 136315650;
    v11 = "[DAKeySharingSession cancelSharingInvitation:]_block_invoke";
    v12 = 1024;
    v13 = 137;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&dword_248BF3000, v5, OS_LOG_TYPE_DEBUG, "%s : %i : Result: %@", &v10, 0x1Cu);
    if (v2 == 3)
    {
    }
  }

  v7 = [v4 type];
  if (v7 == 3)
  {
    v2 = [v4 error];
    v8 = kmlErrorToDAError(v2);
  }

  else
  {
    v8 = 0;
  }

  objc_storeStrong((*(*(a1 + 32) + 8) + 40), v8);
  if (v7 == 3)
  {
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)cancelSharingInvitation:(id)invitation completionHandler:(id)handler
{
  v41[1] = *MEMORY[0x277D85DE8];
  invitationCopy = invitation;
  handlerCopy = handler;
  v8 = KmlLogger();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    *&buf[4] = "[DAKeySharingSession cancelSharingInvitation:completionHandler:]";
    *&buf[12] = 1024;
    *&buf[14] = 147;
    *&buf[18] = 2112;
    *&buf[20] = invitationCopy;
    _os_log_impl(&dword_248BF3000, v8, OS_LOG_TYPE_DEBUG, "%s : %i : InvitationId : %@", buf, 0x1Cu);
  }

  if (invitationCopy)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&buf[24] = __Block_byref_object_copy__4;
    v38 = __Block_byref_object_dispose__4;
    v39 = 0;
    v25 = 0;
    v26 = &v25;
    v27 = 0x3032000000;
    v28 = __Block_byref_object_copy__4;
    v29 = __Block_byref_object_dispose__4;
    v30 = 0;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __65__DAKeySharingSession_cancelSharingInvitation_completionHandler___block_invoke;
    v24[3] = &unk_278F6FB00;
    v24[4] = buf;
    v9 = [(DAKeyPairingSession *)self getKeyPairingProxy:v24];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __65__DAKeySharingSession_cancelSharingInvitation_completionHandler___block_invoke_21;
    v23[3] = &unk_278F709C8;
    v23[4] = &v25;
    [v9 cancelSharingInvitation:invitationCopy completionHandler:v23];

    if (*(*&buf[8] + 40))
    {
      v10 = [DAShareRecipientResult alloc];
      v11 = [(DAShareRecipientResult *)v10 initFailureResultWithCredentialIdentifier:0 error:*(*&buf[8] + 40)];
      v12 = v26[5];
      v26[5] = v11;
    }

    v13 = KmlLogger();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v14 = v26[5];
      *v31 = 136315650;
      v32 = "[DAKeySharingSession cancelSharingInvitation:completionHandler:]";
      v33 = 1024;
      v34 = 169;
      v35 = 2112;
      v36 = v14;
      _os_log_impl(&dword_248BF3000, v13, OS_LOG_TYPE_DEBUG, "%s : %i : Result : %@", v31, 0x1Cu);
    }

    handlerCopy[2](handlerCopy, v26[5]);
    _Block_object_dispose(&v25, 8);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v15 = KmlLogger();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[DAKeySharingSession cancelSharingInvitation:completionHandler:]";
      *&buf[12] = 1024;
      *&buf[14] = 149;
      _os_log_impl(&dword_248BF3000, v15, OS_LOG_TYPE_ERROR, "%s : %i : Null argument provided", buf, 0x12u);
    }

    v16 = [DAShareRecipientResult alloc];
    v17 = MEMORY[0x277CCA9B8];
    v40 = *MEMORY[0x277CCA450];
    v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:DAErrorString(217)];
    v41[0] = v18;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:&v40 count:1];
    v20 = [v17 errorWithDomain:@"DigitalAccessError" code:217 userInfo:v19];
    v21 = [(DAShareRecipientResult *)v16 initFailureResultWithCredentialIdentifier:0 error:v20];

    (handlerCopy)[2](handlerCopy, v21);
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __65__DAKeySharingSession_cancelSharingInvitation_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = KmlLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v15 = "[DAKeySharingSession cancelSharingInvitation:completionHandler:]_block_invoke";
    v16 = 1024;
    v17 = 159;
    v18 = 2112;
    v19 = v3;
    _os_log_impl(&dword_248BF3000, v4, OS_LOG_TYPE_ERROR, "%s : %i : XPC Proxy error %@", buf, 0x1Cu);
  }

  v5 = MEMORY[0x277CCA9B8];
  v12 = *MEMORY[0x277CCA450];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:{DAErrorString(216), v12}];
  v13 = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v8 = [v5 errorWithDomain:@"DigitalAccessError" code:216 userInfo:v7];
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = *MEMORY[0x277D85DE8];
}

- (void)acceptSharingInvitationWithIdentifier:(id)identifier completionHandler:(id)handler
{
  v14 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  identifierCopy = identifier;
  v8 = KmlLogger();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v10 = 136315394;
    v11 = "[DAKeySharingSession acceptSharingInvitationWithIdentifier:completionHandler:]";
    v12 = 1024;
    v13 = 176;
    _os_log_impl(&dword_248BF3000, v8, OS_LOG_TYPE_DEBUG, "%s : %i : This method will be deprecated soon. Start using acceptSharingInvitationWithIdentifier:passcode:productPlanIdentifier:completionHandler", &v10, 0x12u);
  }

  [(DAKeySharingSession *)self acceptSharingInvitationWithIdentifier:identifierCopy passcode:0 productPlanIdentifier:0 completionHandler:handlerCopy];
  v9 = *MEMORY[0x277D85DE8];
}

- (void)acceptSharingInvitationWithIdentifier:(id)identifier passcode:(id)passcode completionHandler:(id)handler
{
  v17 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  passcodeCopy = passcode;
  identifierCopy = identifier;
  v11 = KmlLogger();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v13 = 136315394;
    v14 = "[DAKeySharingSession acceptSharingInvitationWithIdentifier:passcode:completionHandler:]";
    v15 = 1024;
    v16 = 184;
    _os_log_impl(&dword_248BF3000, v11, OS_LOG_TYPE_DEBUG, "%s : %i : This method will be deprecated soon. Start using acceptSharingInvitationWithIdentifier:passcode:productPlanIdentifier:completionHandler", &v13, 0x12u);
  }

  [(DAKeySharingSession *)self acceptSharingInvitationWithIdentifier:identifierCopy passcode:passcodeCopy productPlanIdentifier:0 completionHandler:handlerCopy];
  v12 = *MEMORY[0x277D85DE8];
}

- (void)acceptSharingInvitationWithIdentifier:(id)identifier passcode:(id)passcode productPlanIdentifier:(id)planIdentifier completionHandler:(id)handler
{
  v35[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  passcodeCopy = passcode;
  planIdentifierCopy = planIdentifier;
  handlerCopy = handler;
  v14 = KmlLogger();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "[DAKeySharingSession acceptSharingInvitationWithIdentifier:passcode:productPlanIdentifier:completionHandler:]";
    *&buf[12] = 1024;
    *&buf[14] = 193;
    _os_log_impl(&dword_248BF3000, v14, OS_LOG_TYPE_INFO, "%s : %i : IDS based sharing is now deprecated, please use cross platform APIs instead", buf, 0x12u);
  }

  v15 = KmlLogger();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    *&buf[4] = "[DAKeySharingSession acceptSharingInvitationWithIdentifier:passcode:productPlanIdentifier:completionHandler:]";
    *&buf[12] = 1024;
    *&buf[14] = 194;
    *&buf[18] = 2112;
    *&buf[20] = identifierCopy;
    _os_log_impl(&dword_248BF3000, v15, OS_LOG_TYPE_DEBUG, "%s : %i : Invitation Id %@", buf, 0x1Cu);
  }

  if (identifierCopy)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&buf[24] = __Block_byref_object_copy__4;
    v32 = __Block_byref_object_dispose__4;
    v33 = 0;
    v25 = 0;
    v26 = &v25;
    v27 = 0x3032000000;
    v28 = __Block_byref_object_copy__4;
    v29 = __Block_byref_object_dispose__4;
    v30 = 0;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __110__DAKeySharingSession_acceptSharingInvitationWithIdentifier_passcode_productPlanIdentifier_completionHandler___block_invoke;
    v24[3] = &unk_278F6FB00;
    v24[4] = buf;
    v16 = [(DAKeyPairingSession *)self getKeyPairingProxy:v24];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __110__DAKeySharingSession_acceptSharingInvitationWithIdentifier_passcode_productPlanIdentifier_completionHandler___block_invoke_22;
    v23[3] = &unk_278F709F0;
    v23[4] = buf;
    v23[5] = &v25;
    [v16 acceptSharingInvitationWithIdentifier:identifierCopy passcode:passcodeCopy productPlanIdentifier:planIdentifierCopy completionHandler:v23];

    handlerCopy[2](handlerCopy, v26[5], *(*&buf[8] + 40));
    _Block_object_dispose(&v25, 8);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v17 = KmlLogger();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[DAKeySharingSession acceptSharingInvitationWithIdentifier:passcode:productPlanIdentifier:completionHandler:]";
      *&buf[12] = 1024;
      *&buf[14] = 196;
      _os_log_impl(&dword_248BF3000, v17, OS_LOG_TYPE_ERROR, "%s : %i : Null argument provided", buf, 0x12u);
    }

    v18 = MEMORY[0x277CCA9B8];
    v34 = *MEMORY[0x277CCA450];
    v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:DAErrorString(217)];
    v35[0] = v19;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:&v34 count:1];
    v21 = [v18 errorWithDomain:@"DigitalAccessError" code:217 userInfo:v20];
    (handlerCopy)[2](handlerCopy, 0, v21);
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __110__DAKeySharingSession_acceptSharingInvitationWithIdentifier_passcode_productPlanIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = KmlLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v15 = "[DAKeySharingSession acceptSharingInvitationWithIdentifier:passcode:productPlanIdentifier:completionHandler:]_block_invoke";
    v16 = 1024;
    v17 = 205;
    v18 = 2112;
    v19 = v3;
    _os_log_impl(&dword_248BF3000, v4, OS_LOG_TYPE_ERROR, "%s : %i : XPC Proxy error %@", buf, 0x1Cu);
  }

  v5 = MEMORY[0x277CCA9B8];
  v12 = *MEMORY[0x277CCA450];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:{DAErrorString(216), v12}];
  v13 = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v8 = [v5 errorWithDomain:@"DigitalAccessError" code:216 userInfo:v7];
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = *MEMORY[0x277D85DE8];
}

void __110__DAKeySharingSession_acceptSharingInvitationWithIdentifier_passcode_productPlanIdentifier_completionHandler___block_invoke_22(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = kmlErrorToDAError(a3);
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v5;
}

- (void)requestInviteWithConfig:(id)config completionHandler:(id)handler
{
  v24[1] = *MEMORY[0x277D85DE8];
  configCopy = config;
  handlerCopy = handler;
  v8 = KmlLogger();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "[DAKeySharingSession requestInviteWithConfig:completionHandler:]";
    *&buf[12] = 1024;
    *&buf[14] = 220;
    _os_log_impl(&dword_248BF3000, v8, OS_LOG_TYPE_INFO, "%s : %i : IDS based sharing is now deprecated, please use cross platform APIs instead", buf, 0x12u);
  }

  v9 = KmlLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    *&buf[4] = "[DAKeySharingSession requestInviteWithConfig:completionHandler:]";
    *&buf[12] = 1024;
    *&buf[14] = 221;
    _os_log_impl(&dword_248BF3000, v9, OS_LOG_TYPE_DEBUG, "%s : %i : ", buf, 0x12u);
  }

  if (configCopy)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v20 = __Block_byref_object_copy__4;
    v21 = __Block_byref_object_dispose__4;
    v22 = 0;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __65__DAKeySharingSession_requestInviteWithConfig_completionHandler___block_invoke;
    v18[3] = &unk_278F6FB00;
    v18[4] = buf;
    v10 = [(DAKeyPairingSession *)self getKeyPairingProxy:v18];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __65__DAKeySharingSession_requestInviteWithConfig_completionHandler___block_invoke_24;
    v17[3] = &unk_278F6FB00;
    v17[4] = buf;
    [v10 requestInviteWithConfig:configCopy completionHandler:v17];

    handlerCopy[2](handlerCopy, *(*&buf[8] + 40));
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v11 = KmlLogger();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[DAKeySharingSession requestInviteWithConfig:completionHandler:]";
      *&buf[12] = 1024;
      *&buf[14] = 223;
      _os_log_impl(&dword_248BF3000, v11, OS_LOG_TYPE_ERROR, "%s : %i : Null argument provided", buf, 0x12u);
    }

    v12 = MEMORY[0x277CCA9B8];
    v23 = *MEMORY[0x277CCA450];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:DAErrorString(217)];
    v24[0] = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    v15 = [v12 errorWithDomain:@"DigitalAccessError" code:217 userInfo:v14];
    (handlerCopy)[2](handlerCopy, v15);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __65__DAKeySharingSession_requestInviteWithConfig_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = KmlLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v15 = "[DAKeySharingSession requestInviteWithConfig:completionHandler:]_block_invoke";
    v16 = 1024;
    v17 = 231;
    v18 = 2112;
    v19 = v3;
    _os_log_impl(&dword_248BF3000, v4, OS_LOG_TYPE_ERROR, "%s : %i : XPC Proxy error %@", buf, 0x1Cu);
  }

  v5 = MEMORY[0x277CCA9B8];
  v12 = *MEMORY[0x277CCA450];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:{DAErrorString(216), v12}];
  v13 = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v8 = [v5 errorWithDomain:@"DigitalAccessError" code:216 userInfo:v7];
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t __65__DAKeySharingSession_requestInviteWithConfig_completionHandler___block_invoke_24(uint64_t a1, void *a2)
{
  v3 = kmlErrorToDAError(a2);
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8]();
}

- (void)createSharingInvitationsForKeyIdentifier:(id)identifier friendIdentifier:(id)friendIdentifier auth:(id)auth config:(id)config completionHandler:(id)handler
{
  v23 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  configCopy = config;
  authCopy = auth;
  friendIdentifierCopy = friendIdentifier;
  identifierCopy = identifier;
  v17 = KmlLogger();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v19 = 136315394;
    v20 = "[DAKeySharingSession createSharingInvitationsForKeyIdentifier:friendIdentifier:auth:config:completionHandler:]";
    v21 = 1024;
    v22 = 248;
    _os_log_impl(&dword_248BF3000, v17, OS_LOG_TYPE_INFO, "%s : %i : Deprecated function", &v19, 0x12u);
  }

  [(DAKeySharingSession *)self createSharingInvitationsForKeyIdentifier:identifierCopy friendIdentifier:friendIdentifierCopy auth:authCopy ourBindingAttestation:0 config:configCopy completionHandler:handlerCopy];
  v18 = *MEMORY[0x277D85DE8];
}

- (void)createSharingInvitationsForKeyIdentifier:(id)identifier friendIdentifier:(id)friendIdentifier auth:(id)auth ourBindingAttestation:(id)attestation config:(id)config completionHandler:(id)handler
{
  v39[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  friendIdentifierCopy = friendIdentifier;
  authCopy = auth;
  attestationCopy = attestation;
  configCopy = config;
  handlerCopy = handler;
  v20 = KmlLogger();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    *&buf[4] = "[DAKeySharingSession createSharingInvitationsForKeyIdentifier:friendIdentifier:auth:ourBindingAttestation:config:completionHandler:]";
    *&buf[12] = 1024;
    *&buf[14] = 264;
    *&buf[18] = 2112;
    *&buf[20] = identifierCopy;
    *&buf[28] = 2112;
    *&buf[30] = friendIdentifierCopy;
    _os_log_impl(&dword_248BF3000, v20, OS_LOG_TYPE_DEBUG, "%s : %i : KeyIdentifier : %@, friendIdentifier: %@", buf, 0x26u);
  }

  if (identifierCopy && [configCopy count])
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&buf[24] = __Block_byref_object_copy__4;
    *&buf[32] = __Block_byref_object_dispose__4;
    v37 = 0;
    v30 = 0;
    v31 = &v30;
    v32 = 0x3032000000;
    v33 = __Block_byref_object_copy__4;
    v34 = __Block_byref_object_dispose__4;
    v35 = 0;
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __133__DAKeySharingSession_createSharingInvitationsForKeyIdentifier_friendIdentifier_auth_ourBindingAttestation_config_completionHandler___block_invoke;
    v29[3] = &unk_278F6FB00;
    v29[4] = buf;
    v21 = [(DAKeyPairingSession *)self getKeyPairingProxy:v29];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __133__DAKeySharingSession_createSharingInvitationsForKeyIdentifier_friendIdentifier_auth_ourBindingAttestation_config_completionHandler___block_invoke_25;
    v28[3] = &unk_278F70308;
    v28[4] = buf;
    v28[5] = &v30;
    [v21 createSharingInvitationsForKeyIdentifier:identifierCopy friendIdentifier:friendIdentifierCopy auth:authCopy ourBindingAttestation:attestationCopy config:configCopy completionHandler:v28];

    handlerCopy[2](handlerCopy, v31[5], *(*&buf[8] + 40));
    _Block_object_dispose(&v30, 8);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v22 = KmlLogger();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[DAKeySharingSession createSharingInvitationsForKeyIdentifier:friendIdentifier:auth:ourBindingAttestation:config:completionHandler:]";
      *&buf[12] = 1024;
      *&buf[14] = 266;
      _os_log_impl(&dword_248BF3000, v22, OS_LOG_TYPE_ERROR, "%s : %i : Null argument provided", buf, 0x12u);
    }

    v23 = MEMORY[0x277CCA9B8];
    v38 = *MEMORY[0x277CCA450];
    v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:DAErrorString(217)];
    v39[0] = v24;
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:&v38 count:1];
    v26 = [v23 errorWithDomain:@"DigitalAccessError" code:217 userInfo:v25];
    (handlerCopy)[2](handlerCopy, 0, v26);
  }

  v27 = *MEMORY[0x277D85DE8];
}

void __133__DAKeySharingSession_createSharingInvitationsForKeyIdentifier_friendIdentifier_auth_ourBindingAttestation_config_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = KmlLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v15 = "[DAKeySharingSession createSharingInvitationsForKeyIdentifier:friendIdentifier:auth:ourBindingAttestation:config:completionHandler:]_block_invoke";
    v16 = 1024;
    v17 = 275;
    v18 = 2112;
    v19 = v3;
    _os_log_impl(&dword_248BF3000, v4, OS_LOG_TYPE_ERROR, "%s : %i : XPC Proxy error %@", buf, 0x1Cu);
  }

  v5 = MEMORY[0x277CCA9B8];
  v12 = *MEMORY[0x277CCA450];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:{DAErrorString(216), v12}];
  v13 = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v8 = [v5 errorWithDomain:@"DigitalAccessError" code:216 userInfo:v7];
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = *MEMORY[0x277D85DE8];
}

void __133__DAKeySharingSession_createSharingInvitationsForKeyIdentifier_friendIdentifier_auth_ourBindingAttestation_config_completionHandler___block_invoke_25(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = kmlErrorToDAError(a3);
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v5;
}

- (void)createSilentSharingInvitationWithGroupIdentifier:(id)identifier completionHandler:(id)handler
{
  v28[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  handlerCopy = handler;
  v8 = KmlLogger();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    *&buf[4] = "[DAKeySharingSession createSilentSharingInvitationWithGroupIdentifier:completionHandler:]";
    *&buf[12] = 1024;
    *&buf[14] = 293;
    *&buf[18] = 2112;
    *&buf[20] = identifierCopy;
    _os_log_impl(&dword_248BF3000, v8, OS_LOG_TYPE_DEBUG, "%s : %i : groupIdentifier: %@", buf, 0x1Cu);
  }

  if (identifierCopy)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&buf[24] = __Block_byref_object_copy__4;
    v25 = __Block_byref_object_dispose__4;
    v26 = 0;
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy__4;
    v22 = __Block_byref_object_dispose__4;
    v23 = 0;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __90__DAKeySharingSession_createSilentSharingInvitationWithGroupIdentifier_completionHandler___block_invoke;
    v17[3] = &unk_278F6FB00;
    v17[4] = buf;
    v9 = [(DAKeyPairingSession *)self getKeyPairingProxy:v17];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __90__DAKeySharingSession_createSilentSharingInvitationWithGroupIdentifier_completionHandler___block_invoke_26;
    v16[3] = &unk_278F70378;
    v16[4] = buf;
    v16[5] = &v18;
    [v9 createSilentSharingInvitationWithGroupIdentifier:identifierCopy completionHandler:v16];

    handlerCopy[2](handlerCopy, v19[5], *(*&buf[8] + 40));
    _Block_object_dispose(&v18, 8);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v10 = KmlLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[DAKeySharingSession createSilentSharingInvitationWithGroupIdentifier:completionHandler:]";
      *&buf[12] = 1024;
      *&buf[14] = 295;
      _os_log_impl(&dword_248BF3000, v10, OS_LOG_TYPE_ERROR, "%s : %i : Null argument provided", buf, 0x12u);
    }

    v11 = MEMORY[0x277CCA9B8];
    v27 = *MEMORY[0x277CCA450];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:DAErrorString(217)];
    v28[0] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:&v27 count:1];
    v14 = [v11 errorWithDomain:@"DigitalAccessError" code:217 userInfo:v13];
    (handlerCopy)[2](handlerCopy, 0, v14);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __90__DAKeySharingSession_createSilentSharingInvitationWithGroupIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = KmlLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v15 = "[DAKeySharingSession createSilentSharingInvitationWithGroupIdentifier:completionHandler:]_block_invoke";
    v16 = 1024;
    v17 = 304;
    v18 = 2112;
    v19 = v3;
    _os_log_impl(&dword_248BF3000, v4, OS_LOG_TYPE_ERROR, "%s : %i : XPC Proxy error %@", buf, 0x1Cu);
  }

  v5 = MEMORY[0x277CCA9B8];
  v12 = *MEMORY[0x277CCA450];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:{DAErrorString(216), v12}];
  v13 = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v8 = [v5 errorWithDomain:@"DigitalAccessError" code:216 userInfo:v7];
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = *MEMORY[0x277D85DE8];
}

void __90__DAKeySharingSession_createSilentSharingInvitationWithGroupIdentifier_completionHandler___block_invoke_26(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = kmlErrorToDAError(a3);
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v5;
}

- (void)setMailboxIdentifier:(id)identifier forOwnerKeyIdentifier:(id)keyIdentifier forInvitationIdentifier:(id)invitationIdentifier completionHandler:(id)handler
{
  v29[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  keyIdentifierCopy = keyIdentifier;
  invitationIdentifierCopy = invitationIdentifier;
  handlerCopy = handler;
  v14 = KmlLogger();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "[DAKeySharingSession setMailboxIdentifier:forOwnerKeyIdentifier:forInvitationIdentifier:completionHandler:]";
    *&buf[12] = 1024;
    *&buf[14] = 321;
    _os_log_impl(&dword_248BF3000, v14, OS_LOG_TYPE_INFO, "%s : %i : This API is deprecated, please stop use", buf, 0x12u);
  }

  v15 = KmlLogger();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    *&buf[4] = "[DAKeySharingSession setMailboxIdentifier:forOwnerKeyIdentifier:forInvitationIdentifier:completionHandler:]";
    *&buf[12] = 1024;
    *&buf[14] = 322;
    *&buf[18] = 2112;
    *&buf[20] = keyIdentifierCopy;
    *&buf[28] = 2112;
    *&buf[30] = invitationIdentifierCopy;
    _os_log_impl(&dword_248BF3000, v15, OS_LOG_TYPE_DEBUG, "%s : %i : OwnerKeyIdentifier - %@, InvitationIdentifier - %@", buf, 0x26u);
  }

  if (KmlLogIsInternalBuild())
  {
    v16 = KmlLogger();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      *&buf[4] = "[DAKeySharingSession setMailboxIdentifier:forOwnerKeyIdentifier:forInvitationIdentifier:completionHandler:]";
      *&buf[12] = 1024;
      *&buf[14] = 323;
      *&buf[18] = 2112;
      *&buf[20] = identifierCopy;
      _os_log_impl(&dword_248BF3000, v16, OS_LOG_TYPE_DEBUG, "%s : %i : mailboxIdentifier - %@", buf, 0x1Cu);
    }
  }

  if (identifierCopy && keyIdentifierCopy && invitationIdentifierCopy)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&buf[24] = __Block_byref_object_copy__4;
    *&buf[32] = __Block_byref_object_dispose__4;
    v27 = 0;
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __108__DAKeySharingSession_setMailboxIdentifier_forOwnerKeyIdentifier_forInvitationIdentifier_completionHandler___block_invoke;
    v25[3] = &unk_278F6FB00;
    v25[4] = buf;
    v17 = [(DAKeyPairingSession *)self getKeyPairingProxy:v25];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __108__DAKeySharingSession_setMailboxIdentifier_forOwnerKeyIdentifier_forInvitationIdentifier_completionHandler___block_invoke_28;
    v24[3] = &unk_278F6FB00;
    v24[4] = buf;
    [v17 setMailboxIdentifier:identifierCopy forOwnerKeyIdentifier:keyIdentifierCopy forInvitationIdentifier:invitationIdentifierCopy completionHandler:v24];

    handlerCopy[2](handlerCopy, *(*&buf[8] + 40));
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v18 = KmlLogger();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[DAKeySharingSession setMailboxIdentifier:forOwnerKeyIdentifier:forInvitationIdentifier:completionHandler:]";
      *&buf[12] = 1024;
      *&buf[14] = 325;
      _os_log_impl(&dword_248BF3000, v18, OS_LOG_TYPE_ERROR, "%s : %i : Null argument provided", buf, 0x12u);
    }

    v19 = MEMORY[0x277CCA9B8];
    v28 = *MEMORY[0x277CCA450];
    v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:DAErrorString(217)];
    v29[0] = v20;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:&v28 count:1];
    v22 = [v19 errorWithDomain:@"DigitalAccessError" code:217 userInfo:v21];
    (handlerCopy)[2](handlerCopy, v22);
  }

  v23 = *MEMORY[0x277D85DE8];
}

void __108__DAKeySharingSession_setMailboxIdentifier_forOwnerKeyIdentifier_forInvitationIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = KmlLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v15 = "[DAKeySharingSession setMailboxIdentifier:forOwnerKeyIdentifier:forInvitationIdentifier:completionHandler:]_block_invoke";
    v16 = 1024;
    v17 = 333;
    v18 = 2112;
    v19 = v3;
    _os_log_impl(&dword_248BF3000, v4, OS_LOG_TYPE_ERROR, "%s : %i : XPC Proxy error %@", buf, 0x1Cu);
  }

  v5 = MEMORY[0x277CCA9B8];
  v12 = *MEMORY[0x277CCA450];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:{DAErrorString(216), v12}];
  v13 = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v8 = [v5 errorWithDomain:@"DigitalAccessError" code:216 userInfo:v7];
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t __108__DAKeySharingSession_setMailboxIdentifier_forOwnerKeyIdentifier_forInvitationIdentifier_completionHandler___block_invoke_28(uint64_t a1, void *a2)
{
  v3 = kmlErrorToDAError(a2);
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8]();
}

- (void)startShareAcceptanceFlowWithInvitation:(id)invitation completionHandler:(id)handler
{
  v23[1] = *MEMORY[0x277D85DE8];
  invitationCopy = invitation;
  handlerCopy = handler;
  v8 = KmlLogger();
  v9 = v8;
  if (invitationCopy)
  {
    [DAKeySharingSession startShareAcceptanceFlowWithInvitation:v8 completionHandler:invitationCopy];

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v19 = __Block_byref_object_copy__4;
    v20 = __Block_byref_object_dispose__4;
    v21 = 0;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __80__DAKeySharingSession_startShareAcceptanceFlowWithInvitation_completionHandler___block_invoke;
    v17[3] = &unk_278F6FB00;
    v17[4] = buf;
    v10 = [(DAKeyPairingSession *)self getKeyPairingProxy:v17];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __80__DAKeySharingSession_startShareAcceptanceFlowWithInvitation_completionHandler___block_invoke_29;
    v16[3] = &unk_278F6FB00;
    v16[4] = buf;
    [v10 startShareAcceptanceFlowWithInvitation:invitationCopy completionHandler:v16];

    handlerCopy[2](handlerCopy, *(*&buf[8] + 40));
    _Block_object_dispose(buf, 8);
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[DAKeySharingSession startShareAcceptanceFlowWithInvitation:completionHandler:]";
      *&buf[12] = 1024;
      *&buf[14] = 346;
      _os_log_impl(&dword_248BF3000, v9, OS_LOG_TYPE_ERROR, "%s : %i : Null argument provided", buf, 0x12u);
    }

    v11 = MEMORY[0x277CCA9B8];
    v22 = *MEMORY[0x277CCA450];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:DAErrorString(217)];
    v23[0] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    v14 = [v11 errorWithDomain:@"DigitalAccessError" code:217 userInfo:v13];
    (handlerCopy)[2](handlerCopy, v14);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __80__DAKeySharingSession_startShareAcceptanceFlowWithInvitation_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = KmlLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v15 = "[DAKeySharingSession startShareAcceptanceFlowWithInvitation:completionHandler:]_block_invoke";
    v16 = 1024;
    v17 = 356;
    v18 = 2112;
    v19 = v3;
    _os_log_impl(&dword_248BF3000, v4, OS_LOG_TYPE_ERROR, "%s : %i : XPC Proxy error %@", buf, 0x1Cu);
  }

  v5 = MEMORY[0x277CCA9B8];
  v12 = *MEMORY[0x277CCA450];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:{DAErrorString(216), v12}];
  v13 = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v8 = [v5 errorWithDomain:@"DigitalAccessError" code:216 userInfo:v7];
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t __80__DAKeySharingSession_startShareAcceptanceFlowWithInvitation_completionHandler___block_invoke_29(uint64_t a1, void *a2)
{
  v3 = kmlErrorToDAError(a2);
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8]();
}

- (void)startShareAcceptanceFlowWithInvitation:(id)invitation fromMailboxIdentifier:(id)identifier completionHandler:(id)handler
{
  v26[1] = *MEMORY[0x277D85DE8];
  invitationCopy = invitation;
  identifierCopy = identifier;
  handlerCopy = handler;
  v11 = KmlLogger();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "[DAKeySharingSession startShareAcceptanceFlowWithInvitation:fromMailboxIdentifier:completionHandler:]";
    *&buf[12] = 1024;
    *&buf[14] = 369;
    _os_log_impl(&dword_248BF3000, v11, OS_LOG_TYPE_INFO, "%s : %i : This function is deprecated, please use startShareAcceptanceFlowWithInvitation:completionHandler instead", buf, 0x12u);
  }

  if (KmlLogIsInternalBuild())
  {
    v12 = KmlLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      *&buf[4] = "[DAKeySharingSession startShareAcceptanceFlowWithInvitation:fromMailboxIdentifier:completionHandler:]";
      *&buf[12] = 1024;
      *&buf[14] = 370;
      *&buf[18] = 2112;
      *&buf[20] = identifierCopy;
      _os_log_impl(&dword_248BF3000, v12, OS_LOG_TYPE_DEBUG, "%s : %i : MailboxIdentifier - %@", buf, 0x1Cu);
    }
  }

  if (invitationCopy && identifierCopy)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&buf[24] = __Block_byref_object_copy__4;
    v23 = __Block_byref_object_dispose__4;
    v24 = 0;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __102__DAKeySharingSession_startShareAcceptanceFlowWithInvitation_fromMailboxIdentifier_completionHandler___block_invoke;
    v21[3] = &unk_278F6FB00;
    v21[4] = buf;
    v13 = [(DAKeyPairingSession *)self getKeyPairingProxy:v21];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __102__DAKeySharingSession_startShareAcceptanceFlowWithInvitation_fromMailboxIdentifier_completionHandler___block_invoke_30;
    v20[3] = &unk_278F6FB00;
    v20[4] = buf;
    [v13 startShareAcceptanceFlowWithInvitation:invitationCopy fromMailboxIdentifier:identifierCopy completionHandler:v20];

    handlerCopy[2](handlerCopy, *(*&buf[8] + 40));
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v14 = KmlLogger();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[DAKeySharingSession startShareAcceptanceFlowWithInvitation:fromMailboxIdentifier:completionHandler:]";
      *&buf[12] = 1024;
      *&buf[14] = 372;
      _os_log_impl(&dword_248BF3000, v14, OS_LOG_TYPE_ERROR, "%s : %i : Null argument provided", buf, 0x12u);
    }

    v15 = MEMORY[0x277CCA9B8];
    v25 = *MEMORY[0x277CCA450];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:DAErrorString(217)];
    v26[0] = v16;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];
    v18 = [v15 errorWithDomain:@"DigitalAccessError" code:217 userInfo:v17];
    (handlerCopy)[2](handlerCopy, v18);
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __102__DAKeySharingSession_startShareAcceptanceFlowWithInvitation_fromMailboxIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = KmlLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v15 = "[DAKeySharingSession startShareAcceptanceFlowWithInvitation:fromMailboxIdentifier:completionHandler:]_block_invoke";
    v16 = 1024;
    v17 = 380;
    v18 = 2112;
    v19 = v3;
    _os_log_impl(&dword_248BF3000, v4, OS_LOG_TYPE_ERROR, "%s : %i : XPC Proxy error %@", buf, 0x1Cu);
  }

  v5 = MEMORY[0x277CCA9B8];
  v12 = *MEMORY[0x277CCA450];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:{DAErrorString(216), v12}];
  v13 = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v8 = [v5 errorWithDomain:@"DigitalAccessError" code:216 userInfo:v7];
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t __102__DAKeySharingSession_startShareAcceptanceFlowWithInvitation_fromMailboxIdentifier_completionHandler___block_invoke_30(uint64_t a1, void *a2)
{
  v3 = kmlErrorToDAError(a2);
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8]();
}

- (void)acceptSharingInvitation:(id)invitation fromMailboxIdentifier:(id)identifier completionHandler:(id)handler
{
  v17 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  identifierCopy = identifier;
  invitationCopy = invitation;
  v11 = KmlLogger();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v13 = 136315394;
    v14 = "[DAKeySharingSession acceptSharingInvitation:fromMailboxIdentifier:completionHandler:]";
    v15 = 1024;
    v16 = 393;
    _os_log_impl(&dword_248BF3000, v11, OS_LOG_TYPE_INFO, "%s : %i : This method will be deprecated soon. Start using acceptCrossPlatformInvitationWithIdentifier:passcode:productPlanIdentifier:completionHandler", &v13, 0x12u);
  }

  [(DAKeySharingSession *)self acceptSharingInvitation:invitationCopy fromMailboxIdentifier:identifierCopy passcode:0 completionHandler:handlerCopy];
  v12 = *MEMORY[0x277D85DE8];
}

- (void)acceptSharingInvitation:(id)invitation fromMailboxIdentifier:(id)identifier passcode:(id)passcode completionHandler:(id)handler
{
  v37[1] = *MEMORY[0x277D85DE8];
  invitationCopy = invitation;
  identifierCopy = identifier;
  passcodeCopy = passcode;
  handlerCopy = handler;
  v14 = KmlLogger();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "[DAKeySharingSession acceptSharingInvitation:fromMailboxIdentifier:passcode:completionHandler:]";
    *&buf[12] = 1024;
    *&buf[14] = 402;
    _os_log_impl(&dword_248BF3000, v14, OS_LOG_TYPE_INFO, "%s : %i : This method will be deprecated soon. Start using acceptCrossPlatformInvitationWithIdentifier:passcode:productPlanIdentifier:completionHandler", buf, 0x12u);
  }

  if (KmlLogIsInternalBuild())
  {
    v15 = KmlLogger();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      *&buf[4] = "[DAKeySharingSession acceptSharingInvitation:fromMailboxIdentifier:passcode:completionHandler:]";
      *&buf[12] = 1024;
      *&buf[14] = 404;
      *&buf[18] = 2112;
      *&buf[20] = identifierCopy;
      _os_log_impl(&dword_248BF3000, v15, OS_LOG_TYPE_DEBUG, "%s : %i : MailboxIdentifier - %@", buf, 0x1Cu);
    }
  }

  if (invitationCopy && identifierCopy)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&buf[24] = __Block_byref_object_copy__4;
    v34 = __Block_byref_object_dispose__4;
    v35 = 0;
    v27 = 0;
    v28 = &v27;
    v29 = 0x3032000000;
    v30 = __Block_byref_object_copy__4;
    v31 = __Block_byref_object_dispose__4;
    v32 = 0;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __96__DAKeySharingSession_acceptSharingInvitation_fromMailboxIdentifier_passcode_completionHandler___block_invoke;
    v26[3] = &unk_278F6FB00;
    v26[4] = buf;
    v16 = [(DAKeyPairingSession *)self getKeyPairingProxy:v26];
    genericData = [invitationCopy genericData];
    sharingIdentifier = [genericData sharingIdentifier];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __96__DAKeySharingSession_acceptSharingInvitation_fromMailboxIdentifier_passcode_completionHandler___block_invoke_31;
    v25[3] = &unk_278F70A18;
    v25[4] = &v27;
    v25[5] = buf;
    [v16 acceptSharingInvitation:invitationCopy withIdentifier:sharingIdentifier fromMailboxIdentifier:identifierCopy passcode:passcodeCopy productPlanIdentifier:0 completionHandler:v25];

    handlerCopy[2](handlerCopy, v28[5], *(*&buf[8] + 40));
    _Block_object_dispose(&v27, 8);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v19 = KmlLogger();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[DAKeySharingSession acceptSharingInvitation:fromMailboxIdentifier:passcode:completionHandler:]";
      *&buf[12] = 1024;
      *&buf[14] = 406;
      _os_log_impl(&dword_248BF3000, v19, OS_LOG_TYPE_ERROR, "%s : %i : Null argument provided", buf, 0x12u);
    }

    v20 = MEMORY[0x277CCA9B8];
    v36 = *MEMORY[0x277CCA450];
    v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:DAErrorString(217)];
    v37[0] = v21;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:&v36 count:1];
    v23 = [v20 errorWithDomain:@"DigitalAccessError" code:217 userInfo:v22];
    (handlerCopy)[2](handlerCopy, 0, v23);
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __96__DAKeySharingSession_acceptSharingInvitation_fromMailboxIdentifier_passcode_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = KmlLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v15 = "[DAKeySharingSession acceptSharingInvitation:fromMailboxIdentifier:passcode:completionHandler:]_block_invoke";
    v16 = 1024;
    v17 = 414;
    v18 = 2112;
    v19 = v3;
    _os_log_impl(&dword_248BF3000, v4, OS_LOG_TYPE_ERROR, "%s : %i : XPC Proxy error %@", buf, 0x1Cu);
  }

  v5 = MEMORY[0x277CCA9B8];
  v12 = *MEMORY[0x277CCA450];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:{DAErrorString(216), v12}];
  v13 = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v8 = [v5 errorWithDomain:@"DigitalAccessError" code:216 userInfo:v7];
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = *MEMORY[0x277D85DE8];
}

void __96__DAKeySharingSession_acceptSharingInvitation_fromMailboxIdentifier_passcode_completionHandler___block_invoke_31(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v11 = a2;
  v7 = a4;
  v8 = kmlErrorToDAError(v7);

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

- (void)acceptCrossPlatformInvitationWithIdentifier:(id)identifier passcode:(id)passcode productPlanIdentifier:(id)planIdentifier completionHandler:(id)handler
{
  v35[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  passcodeCopy = passcode;
  planIdentifierCopy = planIdentifier;
  handlerCopy = handler;
  v14 = KmlLogger();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "[DAKeySharingSession acceptCrossPlatformInvitationWithIdentifier:passcode:productPlanIdentifier:completionHandler:]";
    *&buf[12] = 1024;
    *&buf[14] = 434;
    _os_log_impl(&dword_248BF3000, v14, OS_LOG_TYPE_INFO, "%s : %i : This function is deprecated, please use acceptInvitationWithIdentifier:passcode:completionHandler instead", buf, 0x12u);
  }

  v15 = KmlLogger();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    *&buf[4] = "[DAKeySharingSession acceptCrossPlatformInvitationWithIdentifier:passcode:productPlanIdentifier:completionHandler:]";
    *&buf[12] = 1024;
    *&buf[14] = 435;
    *&buf[18] = 2112;
    *&buf[20] = identifierCopy;
    _os_log_impl(&dword_248BF3000, v15, OS_LOG_TYPE_DEBUG, "%s : %i : InvitationIdentifier - %@", buf, 0x1Cu);
  }

  if (identifierCopy)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&buf[24] = __Block_byref_object_copy__4;
    v32 = __Block_byref_object_dispose__4;
    v33 = 0;
    v25 = 0;
    v26 = &v25;
    v27 = 0x3032000000;
    v28 = __Block_byref_object_copy__4;
    v29 = __Block_byref_object_dispose__4;
    v30 = 0;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __116__DAKeySharingSession_acceptCrossPlatformInvitationWithIdentifier_passcode_productPlanIdentifier_completionHandler___block_invoke;
    v24[3] = &unk_278F6FB00;
    v24[4] = buf;
    v16 = [(DAKeyPairingSession *)self getKeyPairingProxy:v24];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __116__DAKeySharingSession_acceptCrossPlatformInvitationWithIdentifier_passcode_productPlanIdentifier_completionHandler___block_invoke_33;
    v23[3] = &unk_278F70A18;
    v23[4] = &v25;
    v23[5] = buf;
    [v16 acceptSharingInvitation:0 withIdentifier:identifierCopy fromMailboxIdentifier:0 passcode:passcodeCopy productPlanIdentifier:planIdentifierCopy completionHandler:v23];

    handlerCopy[2](handlerCopy, v26[5], *(*&buf[8] + 40));
    _Block_object_dispose(&v25, 8);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v17 = KmlLogger();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[DAKeySharingSession acceptCrossPlatformInvitationWithIdentifier:passcode:productPlanIdentifier:completionHandler:]";
      *&buf[12] = 1024;
      *&buf[14] = 437;
      _os_log_impl(&dword_248BF3000, v17, OS_LOG_TYPE_ERROR, "%s : %i : Null argument provided", buf, 0x12u);
    }

    v18 = MEMORY[0x277CCA9B8];
    v34 = *MEMORY[0x277CCA450];
    v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:DAErrorString(217)];
    v35[0] = v19;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:&v34 count:1];
    v21 = [v18 errorWithDomain:@"DigitalAccessError" code:217 userInfo:v20];
    (handlerCopy)[2](handlerCopy, 0, v21);
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __116__DAKeySharingSession_acceptCrossPlatformInvitationWithIdentifier_passcode_productPlanIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = KmlLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v15 = "[DAKeySharingSession acceptCrossPlatformInvitationWithIdentifier:passcode:productPlanIdentifier:completionHandler:]_block_invoke";
    v16 = 1024;
    v17 = 445;
    v18 = 2112;
    v19 = v3;
    _os_log_impl(&dword_248BF3000, v4, OS_LOG_TYPE_ERROR, "%s : %i : XPC Proxy error %@", buf, 0x1Cu);
  }

  v5 = MEMORY[0x277CCA9B8];
  v12 = *MEMORY[0x277CCA450];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:{DAErrorString(216), v12}];
  v13 = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v8 = [v5 errorWithDomain:@"DigitalAccessError" code:216 userInfo:v7];
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = *MEMORY[0x277D85DE8];
}

void __116__DAKeySharingSession_acceptCrossPlatformInvitationWithIdentifier_passcode_productPlanIdentifier_completionHandler___block_invoke_33(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v11 = a2;
  v7 = a4;
  v8 = kmlErrorToDAError(v7);

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

- (void)acceptInvitationWithIdentifier:(id)identifier passcode:(id)passcode sharingFlow:(int64_t)flow completionHandler:(id)handler
{
  v18 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  passcodeCopy = passcode;
  identifierCopy = identifier;
  v12 = KmlLogger();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v14 = 136315394;
    v15 = "[DAKeySharingSession acceptInvitationWithIdentifier:passcode:sharingFlow:completionHandler:]";
    v16 = 1024;
    v17 = 466;
    _os_log_impl(&dword_248BF3000, v12, OS_LOG_TYPE_INFO, "%s : %i : This function is deprecated, please use acceptInvitationWithIdentifier:passcode:completionHandler instead", &v14, 0x12u);
  }

  [(DAKeySharingSession *)self acceptInvitationWithIdentifier:identifierCopy passcode:passcodeCopy completionHandler:handlerCopy];
  v13 = *MEMORY[0x277D85DE8];
}

- (void)acceptInvitationWithIdentifier:(id)identifier passcode:(id)passcode completionHandler:(id)handler
{
  v58[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  passcodeCopy = passcode;
  handlerCopy = handler;
  v11 = KmlLogger();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    *&buf[4] = "[DAKeySharingSession acceptInvitationWithIdentifier:passcode:completionHandler:]";
    *&buf[12] = 1024;
    *&buf[14] = 474;
    *&buf[18] = 2112;
    *&buf[20] = identifierCopy;
    _os_log_impl(&dword_248BF3000, v11, OS_LOG_TYPE_DEBUG, "%s : %i : InvitationIdentifier - %@", buf, 0x1Cu);
  }

  if (identifierCopy)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&buf[24] = __Block_byref_object_copy__4;
    v55 = __Block_byref_object_dispose__4;
    v56 = 0;
    v40 = 0;
    v41 = &v40;
    v42 = 0x3032000000;
    v43 = __Block_byref_object_copy__4;
    v44 = __Block_byref_object_dispose__4;
    v45 = 0;
    v34 = 0;
    v35 = &v34;
    v36 = 0x3032000000;
    v37 = __Block_byref_object_copy__4;
    v38 = __Block_byref_object_dispose__4;
    v39 = 0;
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __81__DAKeySharingSession_acceptInvitationWithIdentifier_passcode_completionHandler___block_invoke;
    v33[3] = &unk_278F6FB00;
    v33[4] = buf;
    v12 = [(DAKeyPairingSession *)self getKeyPairingProxy:v33];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __81__DAKeySharingSession_acceptInvitationWithIdentifier_passcode_completionHandler___block_invoke_34;
    v32[3] = &unk_278F70A40;
    v32[4] = &v40;
    v32[5] = buf;
    v32[6] = &v34;
    [v12 acceptSharingInvitation:0 withIdentifier:identifierCopy fromMailboxIdentifier:0 passcode:passcodeCopy productPlanIdentifier:0 completionHandler:v32];

    if (v41[5])
    {
      v13 = [DAShareRecipientResult alloc];
      publicKeyIdentifier = [v35[5] publicKeyIdentifier];
      v15 = [(DAShareRecipientResult *)v13 initDataRequiredResultWithCredentialIdentifier:publicKeyIdentifier response:v41[5] keyInformation:v35[5]];
    }

    else
    {
      if (!*(*&buf[8] + 40))
      {
        v23 = MEMORY[0x277CCA9B8];
        v52 = *MEMORY[0x277CCA450];
        v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:DAErrorString(109)];
        v53 = v24;
        v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
        v26 = [v23 errorWithDomain:@"DigitalAccessError" code:109 userInfo:v25];
        v27 = *(*&buf[8] + 40);
        *(*&buf[8] + 40) = v26;
      }

      v28 = [DAShareRecipientResult alloc];
      publicKeyIdentifier = [v35[5] publicKeyIdentifier];
      v15 = [(DAShareRecipientResult *)v28 initFailureResultWithCredentialIdentifier:publicKeyIdentifier error:*(*&buf[8] + 40)];
    }

    v29 = v15;

    v30 = KmlLogger();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      *v46 = 136315650;
      v47 = "[DAKeySharingSession acceptInvitationWithIdentifier:passcode:completionHandler:]";
      v48 = 1024;
      v49 = 510;
      v50 = 2112;
      v51 = v29;
      _os_log_impl(&dword_248BF3000, v30, OS_LOG_TYPE_DEBUG, "%s : %i : Result : %@", v46, 0x1Cu);
    }

    handlerCopy[2](handlerCopy, v29);
    _Block_object_dispose(&v34, 8);

    _Block_object_dispose(&v40, 8);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v16 = KmlLogger();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[DAKeySharingSession acceptInvitationWithIdentifier:passcode:completionHandler:]";
      *&buf[12] = 1024;
      *&buf[14] = 476;
      _os_log_impl(&dword_248BF3000, v16, OS_LOG_TYPE_ERROR, "%s : %i : Null argument provided", buf, 0x12u);
    }

    v17 = [DAShareRecipientResult alloc];
    v18 = MEMORY[0x277CCA9B8];
    v57 = *MEMORY[0x277CCA450];
    v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:DAErrorString(217)];
    v58[0] = v19;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v58 forKeys:&v57 count:1];
    v21 = [v18 errorWithDomain:@"DigitalAccessError" code:217 userInfo:v20];
    v22 = [(DAShareRecipientResult *)v17 initFailureResultWithCredentialIdentifier:0 error:v21];

    handlerCopy[2](handlerCopy, v22);
  }

  v31 = *MEMORY[0x277D85DE8];
}

void __81__DAKeySharingSession_acceptInvitationWithIdentifier_passcode_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = KmlLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v15 = "[DAKeySharingSession acceptInvitationWithIdentifier:passcode:completionHandler:]_block_invoke";
    v16 = 1024;
    v17 = 486;
    v18 = 2112;
    v19 = v3;
    _os_log_impl(&dword_248BF3000, v4, OS_LOG_TYPE_ERROR, "%s : %i : XPC Proxy error %@", buf, 0x1Cu);
  }

  v5 = MEMORY[0x277CCA9B8];
  v12 = *MEMORY[0x277CCA450];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:{DAErrorString(216), v12}];
  v13 = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v8 = [v5 errorWithDomain:@"DigitalAccessError" code:216 userInfo:v7];
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = *MEMORY[0x277D85DE8];
}

void __81__DAKeySharingSession_acceptInvitationWithIdentifier_passcode_completionHandler___block_invoke_34(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = *(a1[4] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v7;
  v17 = v7;
  v11 = a4;

  v12 = kmlErrorToDAError(v11);

  v13 = *(a1[5] + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;

  v15 = *(a1[6] + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v8;
}

- (void)handleRecipientMessage:(id)message forInvitationIdentifier:(id)identifier completionHandler:(id)handler
{
  v35[1] = *MEMORY[0x277D85DE8];
  messageCopy = message;
  identifierCopy = identifier;
  handlerCopy = handler;
  v11 = KmlLogger();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    *&buf[4] = "[DAKeySharingSession handleRecipientMessage:forInvitationIdentifier:completionHandler:]";
    *&buf[12] = 1024;
    *&buf[14] = 519;
    *&buf[18] = 2112;
    *&buf[20] = identifierCopy;
    _os_log_impl(&dword_248BF3000, v11, OS_LOG_TYPE_DEBUG, "%s : %i : InvitationIdentifier - %@", buf, 0x1Cu);
  }

  if (identifierCopy)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&buf[24] = __Block_byref_object_copy__4;
    v32 = __Block_byref_object_dispose__4;
    v33 = 0;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __88__DAKeySharingSession_handleRecipientMessage_forInvitationIdentifier_completionHandler___block_invoke;
    v24[3] = &unk_278F6FB00;
    v24[4] = buf;
    v12 = [(DAKeyPairingSession *)self getKeyPairingProxy:v24];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __88__DAKeySharingSession_handleRecipientMessage_forInvitationIdentifier_completionHandler___block_invoke_35;
    v23[3] = &unk_278F709C8;
    v23[4] = buf;
    [v12 handleRecipientMessage:messageCopy forInvitationIdentifier:identifierCopy completionHandler:v23];

    v13 = KmlLogger();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v14 = *(*&buf[8] + 40);
      *v25 = 136315650;
      v26 = "[DAKeySharingSession handleRecipientMessage:forInvitationIdentifier:completionHandler:]";
      v27 = 1024;
      v28 = 538;
      v29 = 2112;
      v30 = v14;
      _os_log_impl(&dword_248BF3000, v13, OS_LOG_TYPE_DEBUG, "%s : %i : Result : %@", v25, 0x1Cu);
    }

    handlerCopy[2](handlerCopy, *(*&buf[8] + 40));
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v15 = KmlLogger();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[DAKeySharingSession handleRecipientMessage:forInvitationIdentifier:completionHandler:]";
      *&buf[12] = 1024;
      *&buf[14] = 521;
      _os_log_impl(&dword_248BF3000, v15, OS_LOG_TYPE_ERROR, "%s : %i : Null argument provided", buf, 0x12u);
    }

    v16 = [DAShareRecipientResult alloc];
    v17 = MEMORY[0x277CCA9B8];
    v34 = *MEMORY[0x277CCA450];
    v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:DAErrorString(217)];
    v35[0] = v18;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:&v34 count:1];
    v20 = [v17 errorWithDomain:@"DigitalAccessError" code:217 userInfo:v19];
    v21 = [(DAShareRecipientResult *)v16 initFailureResultWithCredentialIdentifier:0 error:v20];

    (handlerCopy)[2](handlerCopy, v21);
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __88__DAKeySharingSession_handleRecipientMessage_forInvitationIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = KmlLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v17 = "[DAKeySharingSession handleRecipientMessage:forInvitationIdentifier:completionHandler:]_block_invoke";
    v18 = 1024;
    v19 = 530;
    v20 = 2112;
    v21 = v3;
    _os_log_impl(&dword_248BF3000, v4, OS_LOG_TYPE_ERROR, "%s : %i : XPC Proxy error %@", buf, 0x1Cu);
  }

  v5 = [DAShareRecipientResult alloc];
  v6 = MEMORY[0x277CCA9B8];
  v14 = *MEMORY[0x277CCA450];
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:{DAErrorString(216), v14}];
  v15 = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  v9 = [v6 errorWithDomain:@"DigitalAccessError" code:216 userInfo:v8];
  v10 = [(DAShareRecipientResult *)v5 initFailureResultWithCredentialIdentifier:0 error:v9];
  v11 = *(*(a1 + 32) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  v13 = *MEMORY[0x277D85DE8];
}

- (void)handleInitiatorMessage:(id)message forInvitationIdentifier:(id)identifier completionHandler:(id)handler
{
  v35[1] = *MEMORY[0x277D85DE8];
  messageCopy = message;
  identifierCopy = identifier;
  handlerCopy = handler;
  v11 = KmlLogger();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    *&buf[4] = "[DAKeySharingSession handleInitiatorMessage:forInvitationIdentifier:completionHandler:]";
    *&buf[12] = 1024;
    *&buf[14] = 546;
    *&buf[18] = 2112;
    *&buf[20] = identifierCopy;
    _os_log_impl(&dword_248BF3000, v11, OS_LOG_TYPE_DEBUG, "%s : %i : InvitationIdentifier - %@", buf, 0x1Cu);
  }

  if (identifierCopy)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&buf[24] = __Block_byref_object_copy__4;
    v32 = __Block_byref_object_dispose__4;
    v33 = 0;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __88__DAKeySharingSession_handleInitiatorMessage_forInvitationIdentifier_completionHandler___block_invoke;
    v24[3] = &unk_278F6FB00;
    v24[4] = buf;
    v12 = [(DAKeyPairingSession *)self getKeyPairingProxy:v24];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __88__DAKeySharingSession_handleInitiatorMessage_forInvitationIdentifier_completionHandler___block_invoke_37;
    v23[3] = &unk_278F70A68;
    v23[4] = buf;
    [v12 handleInitiatorMessage:messageCopy forInvitationIdentifier:identifierCopy completionHandler:v23];

    v13 = KmlLogger();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v14 = *(*&buf[8] + 40);
      *v25 = 136315650;
      v26 = "[DAKeySharingSession handleInitiatorMessage:forInvitationIdentifier:completionHandler:]";
      v27 = 1024;
      v28 = 566;
      v29 = 2112;
      v30 = v14;
      _os_log_impl(&dword_248BF3000, v13, OS_LOG_TYPE_DEBUG, "%s : %i : Result : %@", v25, 0x1Cu);
    }

    handlerCopy[2](handlerCopy, *(*&buf[8] + 40));
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v15 = KmlLogger();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[DAKeySharingSession handleInitiatorMessage:forInvitationIdentifier:completionHandler:]";
      *&buf[12] = 1024;
      *&buf[14] = 548;
      _os_log_impl(&dword_248BF3000, v15, OS_LOG_TYPE_ERROR, "%s : %i : Null argument provided", buf, 0x12u);
    }

    v16 = [DAShareInitiatorResult alloc];
    v17 = MEMORY[0x277CCA9B8];
    v34 = *MEMORY[0x277CCA450];
    v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:DAErrorString(217)];
    v35[0] = v18;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:&v34 count:1];
    v20 = [v17 errorWithDomain:@"DigitalAccessError" code:217 userInfo:v19];
    v21 = [(DAShareInitiatorResult *)v16 initFailureResultWithResponse:0 error:v20];

    (handlerCopy)[2](handlerCopy, v21);
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __88__DAKeySharingSession_handleInitiatorMessage_forInvitationIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = KmlLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v17 = "[DAKeySharingSession handleInitiatorMessage:forInvitationIdentifier:completionHandler:]_block_invoke";
    v18 = 1024;
    v19 = 558;
    v20 = 2112;
    v21 = v3;
    _os_log_impl(&dword_248BF3000, v4, OS_LOG_TYPE_ERROR, "%s : %i : XPC Proxy error %@", buf, 0x1Cu);
  }

  v5 = [DAShareInitiatorResult alloc];
  v6 = MEMORY[0x277CCA9B8];
  v14 = *MEMORY[0x277CCA450];
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:{DAErrorString(216), v14}];
  v15 = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  v9 = [v6 errorWithDomain:@"DigitalAccessError" code:216 userInfo:v8];
  v10 = [(DAShareInitiatorResult *)v5 initFailureResultWithResponse:0 error:v9];
  v11 = *(*(a1 + 32) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  v13 = *MEMORY[0x277D85DE8];
}

void __79__DAKeySharingSession_retryPasscode_forInvitationIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = KmlLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v15 = "[DAKeySharingSession retryPasscode:forInvitationIdentifier:completionHandler:]_block_invoke";
    v16 = 1024;
    v17 = 582;
    v18 = 2112;
    v19 = v3;
    _os_log_impl(&dword_248BF3000, v4, OS_LOG_TYPE_ERROR, "%s : %i : XPC Proxy error %@", buf, 0x1Cu);
  }

  v5 = MEMORY[0x277CCA9B8];
  v12 = *MEMORY[0x277CCA450];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:{DAErrorString(216), v12}];
  v13 = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v8 = [v5 errorWithDomain:@"DigitalAccessError" code:216 userInfo:v7];
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = *MEMORY[0x277D85DE8];
}

void __79__DAKeySharingSession_retryPasscode_forInvitationIdentifier_completionHandler___block_invoke_39(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = *(a1[4] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v7;
  v17 = v7;
  v11 = a4;

  v12 = kmlErrorToDAError(v11);

  v13 = *(a1[5] + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;

  v15 = *(a1[6] + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v8;
}

void __72__DAKeySharingSession_retryPasscode_forKeyIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = KmlLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v15 = "[DAKeySharingSession retryPasscode:forKeyIdentifier:completionHandler:]_block_invoke";
    v16 = 1024;
    v17 = 614;
    v18 = 2112;
    v19 = v3;
    _os_log_impl(&dword_248BF3000, v4, OS_LOG_TYPE_ERROR, "%s : %i : XPC Proxy error %@", buf, 0x1Cu);
  }

  v5 = MEMORY[0x277CCA9B8];
  v12 = *MEMORY[0x277CCA450];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:{DAErrorString(216), v12}];
  v13 = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v8 = [v5 errorWithDomain:@"DigitalAccessError" code:216 userInfo:v7];
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t __72__DAKeySharingSession_retryPasscode_forKeyIdentifier_completionHandler___block_invoke_40(uint64_t a1, void *a2)
{
  v3 = kmlErrorToDAError(a2);
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8]();
}

- (void)updateSharingAnalyticsWithConfig:(id)config completionHandler:(id)handler
{
  v50[1] = *MEMORY[0x277D85DE8];
  configCopy = config;
  handlerCopy = handler;
  v8 = KmlLogger();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    *&buf[4] = "[DAKeySharingSession updateSharingAnalyticsWithConfig:completionHandler:]";
    *&buf[12] = 1024;
    *&buf[14] = 626;
    *&buf[18] = 2112;
    *&buf[20] = configCopy;
    _os_log_impl(&dword_248BF3000, v8, OS_LOG_TYPE_DEBUG, "%s : %i : Config: %@", buf, 0x1Cu);
  }

  if (configCopy)
  {
    invitationIdentifiers = [configCopy invitationIdentifiers];
    if (!invitationIdentifiers || ([configCopy invitationIdentifiers], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "count") == 0, v10, invitationIdentifiers, v11))
    {
      v12 = KmlLogger();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "[DAKeySharingSession updateSharingAnalyticsWithConfig:completionHandler:]";
        *&buf[12] = 1024;
        *&buf[14] = 634;
        _os_log_impl(&dword_248BF3000, v12, OS_LOG_TYPE_ERROR, "%s : %i : No invitation identifiers supplied to update config", buf, 0x12u);
      }

      v13 = MEMORY[0x277CCA9B8];
      v47 = *MEMORY[0x277CCA450];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:DAErrorString(217)];
      v48 = v14;
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
      v16 = [v13 errorWithDomain:@"DigitalAccessError" code:217 userInfo:v15];
      handlerCopy[2](handlerCopy, v16);
    }

    analyticsData = [configCopy analyticsData];
    v18 = analyticsData == 0;

    if (v18)
    {
      v19 = KmlLogger();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "[DAKeySharingSession updateSharingAnalyticsWithConfig:completionHandler:]";
        *&buf[12] = 1024;
        *&buf[14] = 639;
        _os_log_impl(&dword_248BF3000, v19, OS_LOG_TYPE_ERROR, "%s : %i : Missing analytics data in update config", buf, 0x12u);
      }

      v20 = MEMORY[0x277CCA9B8];
      v45 = *MEMORY[0x277CCA450];
      v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:DAErrorString(217)];
      v46 = v21;
      v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
      v23 = [v20 errorWithDomain:@"DigitalAccessError" code:217 userInfo:v22];
      handlerCopy[2](handlerCopy, v23);
    }

    if (([configCopy recipientFlow] & 1) == 0 && (objc_msgSend(configCopy, "keyIdentifier"), v24 = objc_claimAutoreleasedReturnValue(), v25 = v24 == 0, v24, v25))
    {
      v32 = KmlLogger();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "[DAKeySharingSession updateSharingAnalyticsWithConfig:completionHandler:]";
        *&buf[12] = 1024;
        *&buf[14] = 645;
        _os_log_impl(&dword_248BF3000, v32, OS_LOG_TYPE_ERROR, "%s : %i : Key identifier required for share initiator", buf, 0x12u);
      }

      v33 = MEMORY[0x277CCA9B8];
      v43 = *MEMORY[0x277CCA450];
      v34 = [MEMORY[0x277CCACA8] stringWithUTF8String:DAErrorString(217)];
      v44 = v34;
      v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
      v36 = [v33 errorWithDomain:@"DigitalAccessError" code:217 userInfo:v35];
      handlerCopy[2](handlerCopy, v36);
    }

    else
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      *&buf[24] = __Block_byref_object_copy__4;
      v41 = __Block_byref_object_dispose__4;
      v42 = 0;
      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 3221225472;
      v39[2] = __74__DAKeySharingSession_updateSharingAnalyticsWithConfig_completionHandler___block_invoke;
      v39[3] = &unk_278F6FB00;
      v39[4] = buf;
      v26 = [(DAKeyPairingSession *)self getKeyPairingProxy:v39];
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = __74__DAKeySharingSession_updateSharingAnalyticsWithConfig_completionHandler___block_invoke_41;
      v38[3] = &unk_278F6FB00;
      v38[4] = buf;
      [v26 updateSharingAnalyticsWithConfig:configCopy completionHandler:v38];

      handlerCopy[2](handlerCopy, *(*&buf[8] + 40));
      _Block_object_dispose(buf, 8);
    }
  }

  else
  {
    v27 = KmlLogger();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[DAKeySharingSession updateSharingAnalyticsWithConfig:completionHandler:]";
      *&buf[12] = 1024;
      *&buf[14] = 628;
      _os_log_impl(&dword_248BF3000, v27, OS_LOG_TYPE_ERROR, "%s : %i : Missing Update config", buf, 0x12u);
    }

    v28 = MEMORY[0x277CCA9B8];
    v49 = *MEMORY[0x277CCA450];
    v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:DAErrorString(217)];
    v50[0] = v29;
    v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:&v49 count:1];
    v31 = [v28 errorWithDomain:@"DigitalAccessError" code:217 userInfo:v30];
    handlerCopy[2](handlerCopy, v31);
  }

  v37 = *MEMORY[0x277D85DE8];
}

void __74__DAKeySharingSession_updateSharingAnalyticsWithConfig_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = KmlLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v15 = "[DAKeySharingSession updateSharingAnalyticsWithConfig:completionHandler:]_block_invoke";
    v16 = 1024;
    v17 = 653;
    v18 = 2112;
    v19 = v3;
    _os_log_impl(&dword_248BF3000, v4, OS_LOG_TYPE_ERROR, "%s : %i : XPC Proxy error %@", buf, 0x1Cu);
  }

  v5 = MEMORY[0x277CCA9B8];
  v12 = *MEMORY[0x277CCA450];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:{DAErrorString(216), v12}];
  v13 = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v8 = [v5 errorWithDomain:@"DigitalAccessError" code:216 userInfo:v7];
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t __74__DAKeySharingSession_updateSharingAnalyticsWithConfig_completionHandler___block_invoke_41(uint64_t a1, void *a2)
{
  v3 = kmlErrorToDAError(a2);
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8]();
}

- (void)requestBindingAttestationDataForKeyWithIdentifier:(id)identifier callback:(id)callback
{
  v28[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  callbackCopy = callback;
  v8 = KmlLogger();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    *&buf[4] = "[DAKeySharingSession requestBindingAttestationDataForKeyWithIdentifier:callback:]";
    *&buf[12] = 1024;
    *&buf[14] = 666;
    *&buf[18] = 2112;
    *&buf[20] = identifierCopy;
    _os_log_impl(&dword_248BF3000, v8, OS_LOG_TYPE_DEBUG, "%s : %i : keyIdentifier: %@", buf, 0x1Cu);
  }

  if (identifierCopy)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&buf[24] = __Block_byref_object_copy__4;
    v25 = __Block_byref_object_dispose__4;
    v26 = 0;
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy__4;
    v22 = __Block_byref_object_dispose__4;
    v23 = 0;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __82__DAKeySharingSession_requestBindingAttestationDataForKeyWithIdentifier_callback___block_invoke;
    v17[3] = &unk_278F6FB00;
    v17[4] = buf;
    v9 = [(DAKeyPairingSession *)self getKeyPairingProxy:v17];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __82__DAKeySharingSession_requestBindingAttestationDataForKeyWithIdentifier_callback___block_invoke_42;
    v16[3] = &unk_278F703F0;
    v16[4] = buf;
    v16[5] = &v18;
    [v9 requestBindingAttestationDataForKeyWithIdentifier:identifierCopy callback:v16];

    callbackCopy[2](callbackCopy, v19[5], *(*&buf[8] + 40));
    _Block_object_dispose(&v18, 8);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v10 = KmlLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[DAKeySharingSession requestBindingAttestationDataForKeyWithIdentifier:callback:]";
      *&buf[12] = 1024;
      *&buf[14] = 668;
      _os_log_impl(&dword_248BF3000, v10, OS_LOG_TYPE_ERROR, "%s : %i : Null argument provided", buf, 0x12u);
    }

    v11 = MEMORY[0x277CCA9B8];
    v27 = *MEMORY[0x277CCA450];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:DAErrorString(217)];
    v28[0] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:&v27 count:1];
    v14 = [v11 errorWithDomain:@"DigitalAccessError" code:217 userInfo:v13];
    (callbackCopy)[2](callbackCopy, 0, v14);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __82__DAKeySharingSession_requestBindingAttestationDataForKeyWithIdentifier_callback___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = KmlLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v15 = "[DAKeySharingSession requestBindingAttestationDataForKeyWithIdentifier:callback:]_block_invoke";
    v16 = 1024;
    v17 = 677;
    v18 = 2112;
    v19 = v3;
    _os_log_impl(&dword_248BF3000, v4, OS_LOG_TYPE_ERROR, "%s : %i : XPC Proxy error %@", buf, 0x1Cu);
  }

  v5 = MEMORY[0x277CCA9B8];
  v12 = *MEMORY[0x277CCA450];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:{DAErrorString(216), v12}];
  v13 = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v8 = [v5 errorWithDomain:@"DigitalAccessError" code:216 userInfo:v7];
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = *MEMORY[0x277D85DE8];
}

void __82__DAKeySharingSession_requestBindingAttestationDataForKeyWithIdentifier_callback___block_invoke_42(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = kmlErrorToDAError(a3);
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v5;
}

- (void)setBindingAttestation:(id)attestation forKeyWithIdentifier:(id)identifier callback:(id)callback
{
  v25[1] = *MEMORY[0x277D85DE8];
  attestationCopy = attestation;
  identifierCopy = identifier;
  callbackCopy = callback;
  v11 = KmlLogger();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    *&buf[4] = "[DAKeySharingSession setBindingAttestation:forKeyWithIdentifier:callback:]";
    *&buf[12] = 1024;
    *&buf[14] = 689;
    *&buf[18] = 2112;
    *&buf[20] = identifierCopy;
    _os_log_impl(&dword_248BF3000, v11, OS_LOG_TYPE_DEBUG, "%s : %i : keyIdentifier: %@", buf, 0x1Cu);
  }

  if (attestationCopy && identifierCopy)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&buf[24] = __Block_byref_object_copy__4;
    v22 = __Block_byref_object_dispose__4;
    v23 = 0;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __75__DAKeySharingSession_setBindingAttestation_forKeyWithIdentifier_callback___block_invoke;
    v20[3] = &unk_278F6FB00;
    v20[4] = buf;
    v12 = [(DAKeyPairingSession *)self getKeyPairingProxy:v20];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __75__DAKeySharingSession_setBindingAttestation_forKeyWithIdentifier_callback___block_invoke_44;
    v19[3] = &unk_278F6FB00;
    v19[4] = buf;
    [v12 setBindingAttestation:attestationCopy forKeyWithIdentifier:identifierCopy callback:v19];

    callbackCopy[2](callbackCopy, *(*&buf[8] + 40));
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v13 = KmlLogger();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[DAKeySharingSession setBindingAttestation:forKeyWithIdentifier:callback:]";
      *&buf[12] = 1024;
      *&buf[14] = 691;
      _os_log_impl(&dword_248BF3000, v13, OS_LOG_TYPE_ERROR, "%s : %i : Null argument provided", buf, 0x12u);
    }

    v14 = MEMORY[0x277CCA9B8];
    v24 = *MEMORY[0x277CCA450];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:DAErrorString(217)];
    v25[0] = v15;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    v17 = [v14 errorWithDomain:@"DigitalAccessError" code:217 userInfo:v16];
    (callbackCopy)[2](callbackCopy, v17);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __75__DAKeySharingSession_setBindingAttestation_forKeyWithIdentifier_callback___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = KmlLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v15 = "[DAKeySharingSession setBindingAttestation:forKeyWithIdentifier:callback:]_block_invoke";
    v16 = 1024;
    v17 = 698;
    v18 = 2112;
    v19 = v3;
    _os_log_impl(&dword_248BF3000, v4, OS_LOG_TYPE_ERROR, "%s : %i : XPC Proxy error %@", buf, 0x1Cu);
  }

  v5 = MEMORY[0x277CCA9B8];
  v12 = *MEMORY[0x277CCA450];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:{DAErrorString(216), v12}];
  v13 = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v8 = [v5 errorWithDomain:@"DigitalAccessError" code:216 userInfo:v7];
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t __75__DAKeySharingSession_setBindingAttestation_forKeyWithIdentifier_callback___block_invoke_44(uint64_t a1, void *a2)
{
  v3 = kmlErrorToDAError(a2);
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8]();
}

- (void)getPreTrackRequestForInvitationWithIdentifier:(id)identifier completionHandler:(id)handler
{
  v28[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  handlerCopy = handler;
  v8 = KmlLogger();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    *&buf[4] = "[DAKeySharingSession getPreTrackRequestForInvitationWithIdentifier:completionHandler:]";
    *&buf[12] = 1024;
    *&buf[14] = 710;
    *&buf[18] = 2112;
    *&buf[20] = identifierCopy;
    _os_log_impl(&dword_248BF3000, v8, OS_LOG_TYPE_DEBUG, "%s : %i : invitationIdentifier: %@", buf, 0x1Cu);
  }

  if ([identifierCopy length])
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&buf[24] = __Block_byref_object_copy__4;
    v25 = __Block_byref_object_dispose__4;
    v26 = 0;
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy__4;
    v22 = __Block_byref_object_dispose__4;
    v23 = 0;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __87__DAKeySharingSession_getPreTrackRequestForInvitationWithIdentifier_completionHandler___block_invoke;
    v17[3] = &unk_278F6FB00;
    v17[4] = buf;
    v9 = [(DAKeyPairingSession *)self getKeyPairingProxy:v17];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __87__DAKeySharingSession_getPreTrackRequestForInvitationWithIdentifier_completionHandler___block_invoke_45;
    v16[3] = &unk_278F703A0;
    v16[4] = &v18;
    v16[5] = buf;
    [v9 getPreTrackRequestForInvitationWithIdentifier:identifierCopy completionHandler:v16];

    handlerCopy[2](handlerCopy, v19[5], *(*&buf[8] + 40));
    _Block_object_dispose(&v18, 8);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v10 = KmlLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[DAKeySharingSession getPreTrackRequestForInvitationWithIdentifier:completionHandler:]";
      *&buf[12] = 1024;
      *&buf[14] = 712;
      _os_log_impl(&dword_248BF3000, v10, OS_LOG_TYPE_ERROR, "%s : %i : Null argument provided", buf, 0x12u);
    }

    v11 = MEMORY[0x277CCA9B8];
    v27 = *MEMORY[0x277CCA450];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:DAErrorString(217)];
    v28[0] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:&v27 count:1];
    v14 = [v11 errorWithDomain:@"DigitalAccessError" code:217 userInfo:v13];
    (handlerCopy)[2](handlerCopy, 0, v14);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __87__DAKeySharingSession_getPreTrackRequestForInvitationWithIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = KmlLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v15 = "[DAKeySharingSession getPreTrackRequestForInvitationWithIdentifier:completionHandler:]_block_invoke";
    v16 = 1024;
    v17 = 721;
    v18 = 2112;
    v19 = v3;
    _os_log_impl(&dword_248BF3000, v4, OS_LOG_TYPE_ERROR, "%s : %i : XPC Proxy error %@", buf, 0x1Cu);
  }

  v5 = MEMORY[0x277CCA9B8];
  v12 = *MEMORY[0x277CCA450];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:{DAErrorString(216), v12}];
  v13 = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v8 = [v5 errorWithDomain:@"DigitalAccessError" code:216 userInfo:v7];
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = *MEMORY[0x277D85DE8];
}

void __87__DAKeySharingSession_getPreTrackRequestForInvitationWithIdentifier_completionHandler___block_invoke_45(uint64_t a1, void *a2, void *a3)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v10 = a2;
  v6 = a3;
  v7 = kmlErrorToDAError(v6);

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

- (void)getPreTrackRequestForKeyWithIdentifier:(id)identifier callback:(id)callback
{
  v29[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  callbackCopy = callback;
  v8 = KmlLogger();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "[DAKeySharingSession getPreTrackRequestForKeyWithIdentifier:callback:]";
    *&buf[12] = 1024;
    *&buf[14] = 739;
    _os_log_impl(&dword_248BF3000, v8, OS_LOG_TYPE_INFO, "%s : %i : This API is deprecated, use getPreTrackRequestForInvitationWithIdentifier: instead", buf, 0x12u);
  }

  v9 = KmlLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    *&buf[4] = "[DAKeySharingSession getPreTrackRequestForKeyWithIdentifier:callback:]";
    *&buf[12] = 1024;
    *&buf[14] = 740;
    *&buf[18] = 2112;
    *&buf[20] = identifierCopy;
    _os_log_impl(&dword_248BF3000, v9, OS_LOG_TYPE_DEBUG, "%s : %i : keyIdentifier: %@", buf, 0x1Cu);
  }

  if (identifierCopy)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&buf[24] = __Block_byref_object_copy__4;
    v26 = __Block_byref_object_dispose__4;
    v27 = 0;
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = __Block_byref_object_copy__4;
    v23 = __Block_byref_object_dispose__4;
    v24 = 0;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __71__DAKeySharingSession_getPreTrackRequestForKeyWithIdentifier_callback___block_invoke;
    v18[3] = &unk_278F6FB00;
    v18[4] = buf;
    v10 = [(DAKeyPairingSession *)self getKeyPairingProxy:v18];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __71__DAKeySharingSession_getPreTrackRequestForKeyWithIdentifier_callback___block_invoke_47;
    v17[3] = &unk_278F703A0;
    v17[4] = &v19;
    v17[5] = buf;
    [v10 getPreTrackRequestForKeyWithIdentifier:identifierCopy callback:v17];

    callbackCopy[2](callbackCopy, v20[5], *(*&buf[8] + 40));
    _Block_object_dispose(&v19, 8);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v11 = KmlLogger();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[DAKeySharingSession getPreTrackRequestForKeyWithIdentifier:callback:]";
      *&buf[12] = 1024;
      *&buf[14] = 742;
      _os_log_impl(&dword_248BF3000, v11, OS_LOG_TYPE_ERROR, "%s : %i : Null argument provided", buf, 0x12u);
    }

    v12 = MEMORY[0x277CCA9B8];
    v28 = *MEMORY[0x277CCA450];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:DAErrorString(217)];
    v29[0] = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:&v28 count:1];
    v15 = [v12 errorWithDomain:@"DigitalAccessError" code:217 userInfo:v14];
    (callbackCopy)[2](callbackCopy, 0, v15);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __71__DAKeySharingSession_getPreTrackRequestForKeyWithIdentifier_callback___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = KmlLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v15 = "[DAKeySharingSession getPreTrackRequestForKeyWithIdentifier:callback:]_block_invoke";
    v16 = 1024;
    v17 = 751;
    v18 = 2112;
    v19 = v3;
    _os_log_impl(&dword_248BF3000, v4, OS_LOG_TYPE_ERROR, "%s : %i : XPC Proxy error %@", buf, 0x1Cu);
  }

  v5 = MEMORY[0x277CCA9B8];
  v12 = *MEMORY[0x277CCA450];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:{DAErrorString(216), v12}];
  v13 = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v8 = [v5 errorWithDomain:@"DigitalAccessError" code:216 userInfo:v7];
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = *MEMORY[0x277D85DE8];
}

void __71__DAKeySharingSession_getPreTrackRequestForKeyWithIdentifier_callback___block_invoke_47(uint64_t a1, void *a2, void *a3)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v10 = a2;
  v6 = a3;
  v7 = kmlErrorToDAError(v6);

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

- (void)ppidRequestForInvitationWithIdentifier:(id)identifier fromMailboxIdentifier:(id)mailboxIdentifier completionHandler:(id)handler
{
  v32[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  mailboxIdentifierCopy = mailboxIdentifier;
  handlerCopy = handler;
  v11 = KmlLogger();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "[DAKeySharingSession ppidRequestForInvitationWithIdentifier:fromMailboxIdentifier:completionHandler:]";
    *&buf[12] = 1024;
    *&buf[14] = 765;
    _os_log_impl(&dword_248BF3000, v11, OS_LOG_TYPE_INFO, "%s : %i : This method is deprecated, please use ppidRequestForInvitationWithIdentifier:completionHandler: instead", buf, 0x12u);
  }

  v12 = KmlLogger();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    *&buf[4] = "[DAKeySharingSession ppidRequestForInvitationWithIdentifier:fromMailboxIdentifier:completionHandler:]";
    *&buf[12] = 1024;
    *&buf[14] = 766;
    *&buf[18] = 2112;
    *&buf[20] = identifierCopy;
    _os_log_impl(&dword_248BF3000, v12, OS_LOG_TYPE_DEBUG, "%s : %i : invitationIdentifier: %@", buf, 0x1Cu);
  }

  if (identifierCopy | mailboxIdentifierCopy)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&buf[24] = __Block_byref_object_copy__4;
    v29 = __Block_byref_object_dispose__4;
    v30 = 0;
    v22 = 0;
    v23 = &v22;
    v24 = 0x3032000000;
    v25 = __Block_byref_object_copy__4;
    v26 = __Block_byref_object_dispose__4;
    v27 = 0;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __102__DAKeySharingSession_ppidRequestForInvitationWithIdentifier_fromMailboxIdentifier_completionHandler___block_invoke;
    v21[3] = &unk_278F6FB00;
    v21[4] = buf;
    v18 = [(DAKeyPairingSession *)self getKeyPairingProxy:v21];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __102__DAKeySharingSession_ppidRequestForInvitationWithIdentifier_fromMailboxIdentifier_completionHandler___block_invoke_48;
    v20[3] = &unk_278F703A0;
    v20[4] = &v22;
    v20[5] = buf;
    [v18 ppidRequestForInvitationWithIdentifier:identifierCopy fromMailboxIdentifier:mailboxIdentifierCopy completionHandler:v20];

    handlerCopy[2](handlerCopy, v23[5], *(*&buf[8] + 40));
    _Block_object_dispose(&v22, 8);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v13 = KmlLogger();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[DAKeySharingSession ppidRequestForInvitationWithIdentifier:fromMailboxIdentifier:completionHandler:]";
      *&buf[12] = 1024;
      *&buf[14] = 768;
      _os_log_impl(&dword_248BF3000, v13, OS_LOG_TYPE_ERROR, "%s : %i : Null arguments provided", buf, 0x12u);
    }

    v14 = MEMORY[0x277CCA9B8];
    v31 = *MEMORY[0x277CCA450];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:DAErrorString(217)];
    v32[0] = v15;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:&v31 count:1];
    v17 = [v14 errorWithDomain:@"DigitalAccessError" code:217 userInfo:v16];
    (handlerCopy)[2](handlerCopy, 0, v17);
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __102__DAKeySharingSession_ppidRequestForInvitationWithIdentifier_fromMailboxIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = KmlLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v15 = "[DAKeySharingSession ppidRequestForInvitationWithIdentifier:fromMailboxIdentifier:completionHandler:]_block_invoke";
    v16 = 1024;
    v17 = 777;
    v18 = 2112;
    v19 = v3;
    _os_log_impl(&dword_248BF3000, v4, OS_LOG_TYPE_ERROR, "%s : %i : XPC Proxy error %@", buf, 0x1Cu);
  }

  v5 = MEMORY[0x277CCA9B8];
  v12 = *MEMORY[0x277CCA450];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:{DAErrorString(216), v12}];
  v13 = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v8 = [v5 errorWithDomain:@"DigitalAccessError" code:216 userInfo:v7];
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = *MEMORY[0x277D85DE8];
}

void __102__DAKeySharingSession_ppidRequestForInvitationWithIdentifier_fromMailboxIdentifier_completionHandler___block_invoke_48(uint64_t a1, void *a2, void *a3)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v10 = a2;
  v6 = a3;
  v7 = kmlErrorToDAError(v6);

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

- (void)readerInformationForInvitationWithIdentifier:(id)identifier fromMailboxIdentifier:(id)mailboxIdentifier completionHandler:(id)handler
{
  v32[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  mailboxIdentifierCopy = mailboxIdentifier;
  handlerCopy = handler;
  v11 = KmlLogger();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "[DAKeySharingSession readerInformationForInvitationWithIdentifier:fromMailboxIdentifier:completionHandler:]";
    *&buf[12] = 1024;
    *&buf[14] = 791;
    _os_log_impl(&dword_248BF3000, v11, OS_LOG_TYPE_INFO, "%s : %i : This method is deprecated, please use readerInformationForInvitationWithIdentifier:completionHandler: instead", buf, 0x12u);
  }

  v12 = KmlLogger();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    *&buf[4] = "[DAKeySharingSession readerInformationForInvitationWithIdentifier:fromMailboxIdentifier:completionHandler:]";
    *&buf[12] = 1024;
    *&buf[14] = 792;
    *&buf[18] = 2112;
    *&buf[20] = identifierCopy;
    _os_log_impl(&dword_248BF3000, v12, OS_LOG_TYPE_DEBUG, "%s : %i : invitationIdentifier: %@", buf, 0x1Cu);
  }

  if (identifierCopy | mailboxIdentifierCopy)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&buf[24] = __Block_byref_object_copy__4;
    v29 = __Block_byref_object_dispose__4;
    v30 = 0;
    v22 = 0;
    v23 = &v22;
    v24 = 0x3032000000;
    v25 = __Block_byref_object_copy__4;
    v26 = __Block_byref_object_dispose__4;
    v27 = 0;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __108__DAKeySharingSession_readerInformationForInvitationWithIdentifier_fromMailboxIdentifier_completionHandler___block_invoke;
    v21[3] = &unk_278F6FB00;
    v21[4] = buf;
    v18 = [(DAKeyPairingSession *)self getKeyPairingProxy:v21];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __108__DAKeySharingSession_readerInformationForInvitationWithIdentifier_fromMailboxIdentifier_completionHandler___block_invoke_49;
    v20[3] = &unk_278F70418;
    v20[4] = &v22;
    v20[5] = buf;
    [v18 readerInformationForInvitationWithIdentifier:identifierCopy fromMailboxIdentifier:mailboxIdentifierCopy completionHandler:v20];

    handlerCopy[2](handlerCopy, v23[5], *(*&buf[8] + 40));
    _Block_object_dispose(&v22, 8);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v13 = KmlLogger();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[DAKeySharingSession readerInformationForInvitationWithIdentifier:fromMailboxIdentifier:completionHandler:]";
      *&buf[12] = 1024;
      *&buf[14] = 794;
      _os_log_impl(&dword_248BF3000, v13, OS_LOG_TYPE_ERROR, "%s : %i : Null arguments provided", buf, 0x12u);
    }

    v14 = MEMORY[0x277CCA9B8];
    v31 = *MEMORY[0x277CCA450];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:DAErrorString(217)];
    v32[0] = v15;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:&v31 count:1];
    v17 = [v14 errorWithDomain:@"DigitalAccessError" code:217 userInfo:v16];
    (handlerCopy)[2](handlerCopy, 0, v17);
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __108__DAKeySharingSession_readerInformationForInvitationWithIdentifier_fromMailboxIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = KmlLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v15 = "[DAKeySharingSession readerInformationForInvitationWithIdentifier:fromMailboxIdentifier:completionHandler:]_block_invoke";
    v16 = 1024;
    v17 = 803;
    v18 = 2112;
    v19 = v3;
    _os_log_impl(&dword_248BF3000, v4, OS_LOG_TYPE_ERROR, "%s : %i : XPC Proxy error %@", buf, 0x1Cu);
  }

  v5 = MEMORY[0x277CCA9B8];
  v12 = *MEMORY[0x277CCA450];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:{DAErrorString(216), v12}];
  v13 = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v8 = [v5 errorWithDomain:@"DigitalAccessError" code:216 userInfo:v7];
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = *MEMORY[0x277D85DE8];
}

void __108__DAKeySharingSession_readerInformationForInvitationWithIdentifier_fromMailboxIdentifier_completionHandler___block_invoke_49(uint64_t a1, void *a2, void *a3)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v10 = a2;
  v6 = a3;
  v7 = kmlErrorToDAError(v6);

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

- (void)ppidRequestForInvitationWithIdentifier:(id)identifier completionHandler:(id)handler
{
  v28[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  handlerCopy = handler;
  v8 = KmlLogger();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    *&buf[4] = "[DAKeySharingSession ppidRequestForInvitationWithIdentifier:completionHandler:]";
    *&buf[12] = 1024;
    *&buf[14] = 818;
    *&buf[18] = 2112;
    *&buf[20] = identifierCopy;
    _os_log_impl(&dword_248BF3000, v8, OS_LOG_TYPE_DEBUG, "%s : %i : invitationIdentifier: %@", buf, 0x1Cu);
  }

  if ([identifierCopy length])
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&buf[24] = __Block_byref_object_copy__4;
    v25 = __Block_byref_object_dispose__4;
    v26 = 0;
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy__4;
    v22 = __Block_byref_object_dispose__4;
    v23 = 0;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __80__DAKeySharingSession_ppidRequestForInvitationWithIdentifier_completionHandler___block_invoke;
    v17[3] = &unk_278F6FB00;
    v17[4] = buf;
    v9 = [(DAKeyPairingSession *)self getKeyPairingProxy:v17];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __80__DAKeySharingSession_ppidRequestForInvitationWithIdentifier_completionHandler___block_invoke_51;
    v16[3] = &unk_278F703A0;
    v16[4] = &v18;
    v16[5] = buf;
    [v9 ppidRequestForInvitationWithIdentifier:identifierCopy fromMailboxIdentifier:0 completionHandler:v16];

    handlerCopy[2](handlerCopy, v19[5], *(*&buf[8] + 40));
    _Block_object_dispose(&v18, 8);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v10 = KmlLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[DAKeySharingSession ppidRequestForInvitationWithIdentifier:completionHandler:]";
      *&buf[12] = 1024;
      *&buf[14] = 820;
      _os_log_impl(&dword_248BF3000, v10, OS_LOG_TYPE_ERROR, "%s : %i : Null arguments provided", buf, 0x12u);
    }

    v11 = MEMORY[0x277CCA9B8];
    v27 = *MEMORY[0x277CCA450];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:DAErrorString(217)];
    v28[0] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:&v27 count:1];
    v14 = [v11 errorWithDomain:@"DigitalAccessError" code:217 userInfo:v13];
    (handlerCopy)[2](handlerCopy, 0, v14);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __80__DAKeySharingSession_ppidRequestForInvitationWithIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = KmlLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v15 = "[DAKeySharingSession ppidRequestForInvitationWithIdentifier:completionHandler:]_block_invoke";
    v16 = 1024;
    v17 = 829;
    v18 = 2112;
    v19 = v3;
    _os_log_impl(&dword_248BF3000, v4, OS_LOG_TYPE_ERROR, "%s : %i : XPC Proxy error %@", buf, 0x1Cu);
  }

  v5 = MEMORY[0x277CCA9B8];
  v12 = *MEMORY[0x277CCA450];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:{DAErrorString(216), v12}];
  v13 = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v8 = [v5 errorWithDomain:@"DigitalAccessError" code:216 userInfo:v7];
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = *MEMORY[0x277D85DE8];
}

void __80__DAKeySharingSession_ppidRequestForInvitationWithIdentifier_completionHandler___block_invoke_51(uint64_t a1, void *a2, void *a3)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v10 = a2;
  v6 = a3;
  v7 = kmlErrorToDAError(v6);

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

- (void)setProductPlanIdentifier:(id)identifier forInvitationIdentifier:(id)invitationIdentifier completion:(id)completion
{
  v25[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  invitationIdentifierCopy = invitationIdentifier;
  completionCopy = completion;
  v11 = KmlLogger();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    *&buf[4] = "[DAKeySharingSession setProductPlanIdentifier:forInvitationIdentifier:completion:]";
    *&buf[12] = 1024;
    *&buf[14] = 844;
    *&buf[18] = 2112;
    *&buf[20] = invitationIdentifierCopy;
    _os_log_impl(&dword_248BF3000, v11, OS_LOG_TYPE_DEBUG, "%s : %i : invitationIdentifier: %@", buf, 0x1Cu);
  }

  if ([invitationIdentifierCopy length])
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&buf[24] = __Block_byref_object_copy__4;
    v22 = __Block_byref_object_dispose__4;
    v23 = 0;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __83__DAKeySharingSession_setProductPlanIdentifier_forInvitationIdentifier_completion___block_invoke;
    v20[3] = &unk_278F6FB00;
    v20[4] = buf;
    v12 = [(DAKeyPairingSession *)self getKeyPairingProxy:v20];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __83__DAKeySharingSession_setProductPlanIdentifier_forInvitationIdentifier_completion___block_invoke_52;
    v19[3] = &unk_278F6FB00;
    v19[4] = buf;
    [v12 setProductPlanIdentifier:identifierCopy forInvitationIdentifier:invitationIdentifierCopy completion:v19];

    completionCopy[2](completionCopy, *(*&buf[8] + 40));
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v13 = KmlLogger();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[DAKeySharingSession setProductPlanIdentifier:forInvitationIdentifier:completion:]";
      *&buf[12] = 1024;
      *&buf[14] = 846;
      _os_log_impl(&dword_248BF3000, v13, OS_LOG_TYPE_ERROR, "%s : %i : Null arguments provided", buf, 0x12u);
    }

    v14 = MEMORY[0x277CCA9B8];
    v24 = *MEMORY[0x277CCA450];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:DAErrorString(217)];
    v25[0] = v15;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    v17 = [v14 errorWithDomain:@"DigitalAccessError" code:217 userInfo:v16];
    (completionCopy)[2](completionCopy, v17);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __83__DAKeySharingSession_setProductPlanIdentifier_forInvitationIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = KmlLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v15 = "[DAKeySharingSession setProductPlanIdentifier:forInvitationIdentifier:completion:]_block_invoke";
    v16 = 1024;
    v17 = 855;
    v18 = 2112;
    v19 = v3;
    _os_log_impl(&dword_248BF3000, v4, OS_LOG_TYPE_ERROR, "%s : %i : XPC Proxy error %@", buf, 0x1Cu);
  }

  v5 = MEMORY[0x277CCA9B8];
  v12 = *MEMORY[0x277CCA450];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:{DAErrorString(216), v12}];
  v13 = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v8 = [v5 errorWithDomain:@"DigitalAccessError" code:216 userInfo:v7];
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t __83__DAKeySharingSession_setProductPlanIdentifier_forInvitationIdentifier_completion___block_invoke_52(uint64_t a1, void *a2)
{
  v3 = kmlErrorToDAError(a2);
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8]();
}

- (void)readerInformationForInvitationWithIdentifier:(id)identifier completionHandler:(id)handler
{
  v28[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  handlerCopy = handler;
  v8 = KmlLogger();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    *&buf[4] = "[DAKeySharingSession readerInformationForInvitationWithIdentifier:completionHandler:]";
    *&buf[12] = 1024;
    *&buf[14] = 867;
    *&buf[18] = 2112;
    *&buf[20] = identifierCopy;
    _os_log_impl(&dword_248BF3000, v8, OS_LOG_TYPE_DEBUG, "%s : %i : invitationIdentifier: %@", buf, 0x1Cu);
  }

  if ([identifierCopy length])
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&buf[24] = __Block_byref_object_copy__4;
    v25 = __Block_byref_object_dispose__4;
    v26 = 0;
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy__4;
    v22 = __Block_byref_object_dispose__4;
    v23 = 0;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __86__DAKeySharingSession_readerInformationForInvitationWithIdentifier_completionHandler___block_invoke;
    v17[3] = &unk_278F6FB00;
    v17[4] = buf;
    v9 = [(DAKeyPairingSession *)self getKeyPairingProxy:v17];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __86__DAKeySharingSession_readerInformationForInvitationWithIdentifier_completionHandler___block_invoke_53;
    v16[3] = &unk_278F70418;
    v16[4] = &v18;
    v16[5] = buf;
    [v9 readerInformationForInvitationWithIdentifier:identifierCopy fromMailboxIdentifier:0 completionHandler:v16];

    handlerCopy[2](handlerCopy, v19[5], *(*&buf[8] + 40));
    _Block_object_dispose(&v18, 8);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v10 = KmlLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[DAKeySharingSession readerInformationForInvitationWithIdentifier:completionHandler:]";
      *&buf[12] = 1024;
      *&buf[14] = 869;
      _os_log_impl(&dword_248BF3000, v10, OS_LOG_TYPE_ERROR, "%s : %i : Null argument provided", buf, 0x12u);
    }

    v11 = MEMORY[0x277CCA9B8];
    v27 = *MEMORY[0x277CCA450];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:DAErrorString(217)];
    v28[0] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:&v27 count:1];
    v14 = [v11 errorWithDomain:@"DigitalAccessError" code:217 userInfo:v13];
    (handlerCopy)[2](handlerCopy, 0, v14);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __86__DAKeySharingSession_readerInformationForInvitationWithIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = KmlLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v15 = "[DAKeySharingSession readerInformationForInvitationWithIdentifier:completionHandler:]_block_invoke";
    v16 = 1024;
    v17 = 878;
    v18 = 2112;
    v19 = v3;
    _os_log_impl(&dword_248BF3000, v4, OS_LOG_TYPE_ERROR, "%s : %i : XPC Proxy error %@", buf, 0x1Cu);
  }

  v5 = MEMORY[0x277CCA9B8];
  v12 = *MEMORY[0x277CCA450];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:{DAErrorString(216), v12}];
  v13 = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v8 = [v5 errorWithDomain:@"DigitalAccessError" code:216 userInfo:v7];
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = *MEMORY[0x277D85DE8];
}

void __86__DAKeySharingSession_readerInformationForInvitationWithIdentifier_completionHandler___block_invoke_53(uint64_t a1, void *a2, void *a3)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v10 = a2;
  v6 = a3;
  v7 = kmlErrorToDAError(v6);

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

- (void)getSecondFactorRequestForConfigs:(id)configs completionHandler:(id)handler
{
  v29[1] = *MEMORY[0x277D85DE8];
  configsCopy = configs;
  handlerCopy = handler;
  v8 = KmlLogger();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    *&buf[4] = "[DAKeySharingSession getSecondFactorRequestForConfigs:completionHandler:]";
    *&buf[12] = 1024;
    *&buf[14] = 891;
    _os_log_impl(&dword_248BF3000, v8, OS_LOG_TYPE_DEBUG, "%s : %i : ", buf, 0x12u);
  }

  if ([configsCopy count])
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v25 = __Block_byref_object_copy__4;
    v26 = __Block_byref_object_dispose__4;
    v27 = 0;
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy__4;
    v22 = __Block_byref_object_dispose__4;
    v23 = 0;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __74__DAKeySharingSession_getSecondFactorRequestForConfigs_completionHandler___block_invoke;
    v17[3] = &unk_278F6FB00;
    v17[4] = buf;
    v9 = [(DAKeyPairingSession *)self getKeyPairingProxy:v17];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __74__DAKeySharingSession_getSecondFactorRequestForConfigs_completionHandler___block_invoke_54;
    v16[3] = &unk_278F70308;
    v16[4] = buf;
    v16[5] = &v18;
    [v9 getSecondFactorRequestForConfigs:configsCopy completionHandler:v16];

    handlerCopy[2](handlerCopy, v19[5], *(*&buf[8] + 40));
    _Block_object_dispose(&v18, 8);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v10 = KmlLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[DAKeySharingSession getSecondFactorRequestForConfigs:completionHandler:]";
      *&buf[12] = 1024;
      *&buf[14] = 893;
      _os_log_impl(&dword_248BF3000, v10, OS_LOG_TYPE_ERROR, "%s : %i : Null arguments provided", buf, 0x12u);
    }

    v11 = MEMORY[0x277CCA9B8];
    v28 = *MEMORY[0x277CCA450];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:DAErrorString(217)];
    v29[0] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:&v28 count:1];
    v14 = [v11 errorWithDomain:@"DigitalAccessError" code:217 userInfo:v13];
    (handlerCopy)[2](handlerCopy, 0, v14);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __74__DAKeySharingSession_getSecondFactorRequestForConfigs_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = KmlLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v15 = "[DAKeySharingSession getSecondFactorRequestForConfigs:completionHandler:]_block_invoke";
    v16 = 1024;
    v17 = 902;
    v18 = 2112;
    v19 = v3;
    _os_log_impl(&dword_248BF3000, v4, OS_LOG_TYPE_ERROR, "%s : %i : XPC Proxy error %@", buf, 0x1Cu);
  }

  v5 = MEMORY[0x277CCA9B8];
  v12 = *MEMORY[0x277CCA450];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:{DAErrorString(216), v12}];
  v13 = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v8 = [v5 errorWithDomain:@"DigitalAccessError" code:216 userInfo:v7];
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = *MEMORY[0x277D85DE8];
}

void __74__DAKeySharingSession_getSecondFactorRequestForConfigs_completionHandler___block_invoke_54(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = kmlErrorToDAError(a3);
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v5;
}

- (void)didEnd:(id)end
{
  v12 = *MEMORY[0x277D85DE8];
  endCopy = end;
  v5 = KmlLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v9 = "[DAKeySharingSession didEnd:]";
    v10 = 1024;
    v11 = 921;
    _os_log_impl(&dword_248BF3000, v5, OS_LOG_TYPE_DEBUG, "%s : %i : ", buf, 0x12u);
  }

  v7.receiver = self;
  v7.super_class = DAKeySharingSession;
  [(DASession *)&v7 didEnd:endCopy];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = DAKeySharingSession;
  [(DASession *)&v3 encodeWithCoder:coder];
}

- (DAKeySharingSession)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = DAKeySharingSession;
  return [(DASession *)&v4 initWithCoder:coder];
}

- (void)retryPasscode:(id)passcode forInvitationIdentifier:(id)identifier completionHandler:(id)handler
{
  v57 = *MEMORY[0x277D85DE8];
  passcodeCopy = passcode;
  identifierCopy = identifier;
  handlerCopy = handler;
  v11 = KmlLogger();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *v54 = 136315650;
    *&v54[4] = "[DAKeySharingSession retryPasscode:forInvitationIdentifier:completionHandler:]";
    *&v54[12] = 1024;
    *&v54[14] = 576;
    *&v54[18] = 2112;
    *&v54[20] = identifierCopy;
    OUTLINED_FUNCTION_3_2(&dword_248BF3000, v12, v13, "%s : %i : Invitation Identifier : %@", v54);
  }

  *v54 = 0;
  *&v54[8] = v54;
  *&v54[16] = 0x3032000000;
  OUTLINED_FUNCTION_2_3();
  *&v54[24] = v14;
  OUTLINED_FUNCTION_1_2();
  v55 = v15;
  v56 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = v16;
  v43 = __Block_byref_object_copy__4;
  v44 = __Block_byref_object_dispose__4;
  v45 = 0;
  v34 = 0;
  v35 = &v34;
  v36 = v16;
  v37 = __Block_byref_object_copy__4;
  v38 = __Block_byref_object_dispose__4;
  v39 = 0;
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __79__DAKeySharingSession_retryPasscode_forInvitationIdentifier_completionHandler___block_invoke;
  v33[3] = &unk_278F6FB00;
  v33[4] = v54;
  [(DAKeyPairingSession *)self getKeyPairingProxy:v33];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_0_2();
  v32[2] = __79__DAKeySharingSession_retryPasscode_forInvitationIdentifier_completionHandler___block_invoke_39;
  v32[3] = &unk_278F70A40;
  v32[4] = &v40;
  v32[5] = v54;
  v32[6] = &v34;
  [v17 retryPasscode:passcodeCopy forInvitationIdentifier:identifierCopy completionHandler:v32];

  if (v41[5])
  {
    v18 = [DAShareRecipientResult alloc];
    publicKeyIdentifier = [v35[5] publicKeyIdentifier];
    v20 = [(DAShareRecipientResult *)v18 initDataRequiredResultWithCredentialIdentifier:publicKeyIdentifier response:v41[5] keyInformation:v35[5]];
  }

  else
  {
    if (!*(*&v54[8] + 40))
    {
      v21 = MEMORY[0x277CCA9B8];
      v52 = *MEMORY[0x277CCA450];
      v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:DAErrorString(114)];
      v53 = v22;
      v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
      v24 = [v21 errorWithDomain:@"DigitalAccessError" code:114 userInfo:v23];
      v25 = *(*&v54[8] + 40);
      *(*&v54[8] + 40) = v24;
    }

    v26 = [DAShareRecipientResult alloc];
    publicKeyIdentifier = [v35[5] publicKeyIdentifier];
    v20 = [(DAShareRecipientResult *)v26 initFailureResultWithCredentialIdentifier:publicKeyIdentifier error:*(*&v54[8] + 40)];
  }

  v27 = v20;

  v28 = KmlLogger();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
  {
    v46 = 136315650;
    v47 = "[DAKeySharingSession retryPasscode:forInvitationIdentifier:completionHandler:]";
    v48 = 1024;
    v49 = 601;
    v50 = 2112;
    v51 = v27;
    OUTLINED_FUNCTION_3_2(&dword_248BF3000, v29, v30, "%s : %i : Result: %@", &v46);
  }

  handlerCopy[2](handlerCopy, v27);
  _Block_object_dispose(&v34, 8);

  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(v54, 8);

  v31 = *MEMORY[0x277D85DE8];
}

- (void)retryPasscode:(id)passcode forKeyIdentifier:(id)identifier completionHandler:(id)handler
{
  v25 = *MEMORY[0x277D85DE8];
  passcodeCopy = passcode;
  identifierCopy = identifier;
  handlerCopy = handler;
  v11 = KmlLogger();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_4_2();
    *&v22[6] = 609;
    _os_log_impl(&dword_248BF3000, v11, OS_LOG_TYPE_INFO, "%s : %i : This API is deprecated, use retryPasscode:forInvitationIdentifier:completionHandler: instead", buf, 0x12u);
  }

  v12 = KmlLogger();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    OUTLINED_FUNCTION_4_2();
    *&v22[6] = 610;
    *&v22[10] = 2112;
    *&v22[12] = identifierCopy;
    OUTLINED_FUNCTION_3_2(&dword_248BF3000, v13, v14, "%s : %i : KeyIdentifier: %@", buf);
  }

  *buf = 0;
  *v22 = buf;
  *&v22[8] = 0x3032000000;
  OUTLINED_FUNCTION_2_3();
  *&v22[16] = v15;
  OUTLINED_FUNCTION_1_2();
  v23 = v16;
  v24 = 0;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __72__DAKeySharingSession_retryPasscode_forKeyIdentifier_completionHandler___block_invoke;
  v20[3] = &unk_278F6FB00;
  v20[4] = buf;
  [(DAKeyPairingSession *)self getKeyPairingProxy:v20];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_0_2();
  v19[2] = __72__DAKeySharingSession_retryPasscode_forKeyIdentifier_completionHandler___block_invoke_40;
  v19[3] = &unk_278F6FB00;
  v19[4] = buf;
  [v17 retryPasscode:passcodeCopy forKeyIdentifier:identifierCopy completionHandler:v19];

  handlerCopy[2](handlerCopy, *(*v22 + 40));
  _Block_object_dispose(buf, 8);

  v18 = *MEMORY[0x277D85DE8];
}

- (void)startShareAcceptanceFlowWithInvitation:(NSObject *)a1 completionHandler:(void *)a2 .cold.1(NSObject *a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(a1, OS_LOG_TYPE_DEBUG))
  {
    v4 = [a2 genericData];
    v5 = [v4 sharingIdentifier];
    v7 = 136315650;
    v8 = "[DAKeySharingSession startShareAcceptanceFlowWithInvitation:completionHandler:]";
    v9 = 1024;
    v10 = 351;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_248BF3000, a1, OS_LOG_TYPE_DEBUG, "%s : %i : InvitationIdentifier - %@", &v7, 0x1Cu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

@end