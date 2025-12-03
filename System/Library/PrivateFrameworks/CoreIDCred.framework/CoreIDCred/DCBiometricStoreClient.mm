@interface DCBiometricStoreClient
- (DCBiometricStoreClient)init;
- (id)remoteObjectProxyWithErrorHandler:(id)handler;
- (void)bioBindingUnboundACL:(id)l;
- (void)boundAppletPresentmentACL:(id)l;
- (void)clearProgenitorKeyDesignationsWithCompletion:(id)completion;
- (void)credentialAuthenticationTokenStatus:(id)status;
- (void)dealloc;
- (void)deleteGlobalAuthACLWithCompletion:(id)completion;
- (void)establishPrearmTrustV2:(id)v2 completion:(id)completion;
- (void)generatePhoneTokenWithNonce:(id)nonce keyBlob:(id)blob pairingID:(id)d completion:(id)completion;
- (void)generatePrearmTrustCertificateFromKeyBlob:(id)blob nonce:(id)nonce pairingID:(id)d completion:(id)completion;
- (void)generatePrearmTrustCertificateWithNonce:(id)nonce pairingID:(id)d completion:(id)completion;
- (void)getCASDCertificate:(id)certificate;
- (void)getGlobalProgenitorKeyAttestation:(id)attestation;
- (void)getGlobalThirdPartyProgenitorKeyAttestation:(id)attestation;
- (void)globalAuthACLTemplateUUIDsWithCompletion:(id)completion;
- (void)globalAuthACLWithCompletion:(id)completion;
- (void)init;
- (void)invalidate;
- (void)migratePrearmTrustBlob:(id)blob completion:(id)completion;
- (void)nonceForAuthorizationTokenWithCompletion:(id)completion;
- (void)passcodeBindingUnboundACL:(id)l;
- (void)prearmCredentialWithAuthorizationToken:(id)token completion:(id)completion;
- (void)revokeCredentialAuthorizationToken:(id)token;
- (void)setGlobalAuthACL:(id)l ofType:(unint64_t)type completion:(id)completion;
- (void)setModifiedGlobalAuthACL:(id)l externalizedLAContext:(id)context completion:(id)completion;
@end

@implementation DCBiometricStoreClient

- (DCBiometricStoreClient)init
{
  v3 = DC_LOG_CLIENT();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [DCBiometricStoreClient init];
  }

  v18.receiver = self;
  v18.super_class = DCBiometricStoreClient;
  v4 = [(DCBiometricStoreClient *)&v18 init];
  if (v4)
  {
    v5 = DC_LOG_CLIENT();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [DCBiometricStoreClient init];
    }

    v6 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.idcredd.biometrics.xpc" options:4096];
    [(DCBiometricStoreClient *)v4 setServerConnection:v6];

    v7 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_285872BE0];
    serverConnection = [(DCBiometricStoreClient *)v4 serverConnection];
    [serverConnection setRemoteObjectInterface:v7];

    v9 = MEMORY[0x277CBEB98];
    v10 = objc_opt_class();
    v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
    serverConnection2 = [(DCBiometricStoreClient *)v4 serverConnection];
    remoteObjectInterface = [serverConnection2 remoteObjectInterface];
    [remoteObjectInterface setClasses:v11 forSelector:sel_globalAuthACLTemplateUUIDsWithCompletion_ argumentIndex:0 ofReply:1];

    serverConnection3 = [(DCBiometricStoreClient *)v4 serverConnection];
    remoteObjectInterface2 = [serverConnection3 remoteObjectInterface];
    [remoteObjectInterface2 setClasses:v11 forSelector:sel_setModifiedGlobalAuthACL_externalizedLAContext_completion_ argumentIndex:0 ofReply:1];

    serverConnection4 = [(DCBiometricStoreClient *)v4 serverConnection];
    [serverConnection4 activate];
  }

  return v4;
}

- (void)dealloc
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)bioBindingUnboundACL:(id)l
{
  lCopy = l;
  v5 = DC_LOG_CLIENT();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [DCBiometricStoreClient bioBindingUnboundACL:];
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __47__DCBiometricStoreClient_bioBindingUnboundACL___block_invoke;
  v11[3] = &unk_278E812F0;
  v6 = lCopy;
  v12 = v6;
  v7 = [(DCBiometricStoreClient *)self remoteObjectProxyWithErrorHandler:v11];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __47__DCBiometricStoreClient_bioBindingUnboundACL___block_invoke_2;
  v9[3] = &unk_278E81318;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  [v7 bioBindingUnboundACL:v9];
}

void __47__DCBiometricStoreClient_bioBindingUnboundACL___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = DC_LOG_CLIENT();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (v5)
  {
    if (v8)
    {
      __47__DCBiometricStoreClient_bioBindingUnboundACL___block_invoke_2_cold_1();
    }
  }

  else
  {
    if (v8)
    {
      __47__DCBiometricStoreClient_bioBindingUnboundACL___block_invoke_2_cold_2();
    }

    v7 = DC_LOG_MILESTONE_LOG();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __47__DCBiometricStoreClient_bioBindingUnboundACL___block_invoke_2_cold_3();
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (void)passcodeBindingUnboundACL:(id)l
{
  lCopy = l;
  v5 = DC_LOG_CLIENT();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [DCBiometricStoreClient passcodeBindingUnboundACL:];
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __52__DCBiometricStoreClient_passcodeBindingUnboundACL___block_invoke;
  v11[3] = &unk_278E812F0;
  v6 = lCopy;
  v12 = v6;
  v7 = [(DCBiometricStoreClient *)self remoteObjectProxyWithErrorHandler:v11];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __52__DCBiometricStoreClient_passcodeBindingUnboundACL___block_invoke_2;
  v9[3] = &unk_278E81318;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  [v7 passcodeBindingUnboundACL:v9];
}

void __52__DCBiometricStoreClient_passcodeBindingUnboundACL___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = DC_LOG_CLIENT();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (v5)
  {
    if (v8)
    {
      __52__DCBiometricStoreClient_passcodeBindingUnboundACL___block_invoke_2_cold_1();
    }
  }

  else
  {
    if (v8)
    {
      __52__DCBiometricStoreClient_passcodeBindingUnboundACL___block_invoke_2_cold_2();
    }

    v7 = DC_LOG_MILESTONE_LOG();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __52__DCBiometricStoreClient_passcodeBindingUnboundACL___block_invoke_2_cold_3();
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (void)setGlobalAuthACL:(id)l ofType:(unint64_t)type completion:(id)completion
{
  completionCopy = completion;
  lCopy = l;
  v10 = DC_LOG_CLIENT();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [DCBiometricStoreClient setGlobalAuthACL:ofType:completion:];
  }

  v11 = [(DCBiometricStoreClient *)self remoteObjectProxyWithErrorHandler:completionCopy];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __61__DCBiometricStoreClient_setGlobalAuthACL_ofType_completion___block_invoke;
  v13[3] = &unk_278E81340;
  v13[4] = self;
  v14 = completionCopy;
  v12 = completionCopy;
  [v11 setGlobalAuthACL:lCopy ofType:type completion:v13];
}

void __61__DCBiometricStoreClient_setGlobalAuthACL_ofType_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = DC_LOG_CLIENT();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
  if (v3)
  {
    if (v5)
    {
      __61__DCBiometricStoreClient_setGlobalAuthACL_ofType_completion___block_invoke_cold_1();
    }
  }

  else
  {
    if (v5)
    {
      __61__DCBiometricStoreClient_setGlobalAuthACL_ofType_completion___block_invoke_cold_2();
    }

    v4 = DC_LOG_MILESTONE_LOG();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __61__DCBiometricStoreClient_setGlobalAuthACL_ofType_completion___block_invoke_cold_3();
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (void)setModifiedGlobalAuthACL:(id)l externalizedLAContext:(id)context completion:(id)completion
{
  completionCopy = completion;
  contextCopy = context;
  lCopy = l;
  v11 = DC_LOG_CLIENT();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [DCBiometricStoreClient setModifiedGlobalAuthACL:externalizedLAContext:completion:];
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __84__DCBiometricStoreClient_setModifiedGlobalAuthACL_externalizedLAContext_completion___block_invoke;
  v17[3] = &unk_278E812F0;
  v12 = completionCopy;
  v18 = v12;
  v13 = [(DCBiometricStoreClient *)self remoteObjectProxyWithErrorHandler:v17];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __84__DCBiometricStoreClient_setModifiedGlobalAuthACL_externalizedLAContext_completion___block_invoke_2;
  v15[3] = &unk_278E81368;
  v15[4] = self;
  v16 = v12;
  v14 = v12;
  [v13 setModifiedGlobalAuthACL:lCopy externalizedLAContext:contextCopy completion:v15];
}

void __84__DCBiometricStoreClient_setModifiedGlobalAuthACL_externalizedLAContext_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = DC_LOG_CLIENT();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (v5)
  {
    if (v8)
    {
      __84__DCBiometricStoreClient_setModifiedGlobalAuthACL_externalizedLAContext_completion___block_invoke_2_cold_1();
    }
  }

  else
  {
    if (v8)
    {
      __84__DCBiometricStoreClient_setModifiedGlobalAuthACL_externalizedLAContext_completion___block_invoke_2_cold_2();
    }

    v7 = DC_LOG_MILESTONE_LOG();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __84__DCBiometricStoreClient_setModifiedGlobalAuthACL_externalizedLAContext_completion___block_invoke_2_cold_3();
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (void)globalAuthACLWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = DC_LOG_CLIENT();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [DCBiometricStoreClient globalAuthACLWithCompletion:];
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __54__DCBiometricStoreClient_globalAuthACLWithCompletion___block_invoke;
  v11[3] = &unk_278E812F0;
  v6 = completionCopy;
  v12 = v6;
  v7 = [(DCBiometricStoreClient *)self remoteObjectProxyWithErrorHandler:v11];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __54__DCBiometricStoreClient_globalAuthACLWithCompletion___block_invoke_2;
  v9[3] = &unk_278E81390;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  [v7 globalAuthACLWithCompletion:v9];
}

void __54__DCBiometricStoreClient_globalAuthACLWithCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = DC_LOG_CLIENT();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (v5)
  {
    if (v8)
    {
      __54__DCBiometricStoreClient_globalAuthACLWithCompletion___block_invoke_2_cold_1();
    }
  }

  else
  {
    if (v8)
    {
      __54__DCBiometricStoreClient_globalAuthACLWithCompletion___block_invoke_2_cold_2();
    }

    v7 = DC_LOG_MILESTONE_LOG();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __54__DCBiometricStoreClient_globalAuthACLWithCompletion___block_invoke_2_cold_3();
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (void)deleteGlobalAuthACLWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = DC_LOG_CLIENT();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [DCBiometricStoreClient deleteGlobalAuthACLWithCompletion:];
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __60__DCBiometricStoreClient_deleteGlobalAuthACLWithCompletion___block_invoke;
  v11[3] = &unk_278E812F0;
  v6 = completionCopy;
  v12 = v6;
  v7 = [(DCBiometricStoreClient *)self remoteObjectProxyWithErrorHandler:v11];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __60__DCBiometricStoreClient_deleteGlobalAuthACLWithCompletion___block_invoke_2;
  v9[3] = &unk_278E813B8;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  [v7 deleteGlobalAuthACLWithCompletion:v9];
}

void __60__DCBiometricStoreClient_deleteGlobalAuthACLWithCompletion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = DC_LOG_CLIENT();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);
  if (v4)
  {
    if (v6)
    {
      __60__DCBiometricStoreClient_deleteGlobalAuthACLWithCompletion___block_invoke_2_cold_1();
    }
  }

  else
  {
    if (v6)
    {
      __60__DCBiometricStoreClient_deleteGlobalAuthACLWithCompletion___block_invoke_2_cold_2();
    }

    v5 = DC_LOG_MILESTONE_LOG();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __60__DCBiometricStoreClient_deleteGlobalAuthACLWithCompletion___block_invoke_2_cold_3();
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (void)globalAuthACLTemplateUUIDsWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = DC_LOG_CLIENT();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [DCBiometricStoreClient globalAuthACLTemplateUUIDsWithCompletion:];
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __67__DCBiometricStoreClient_globalAuthACLTemplateUUIDsWithCompletion___block_invoke;
  v11[3] = &unk_278E812F0;
  v6 = completionCopy;
  v12 = v6;
  v7 = [(DCBiometricStoreClient *)self remoteObjectProxyWithErrorHandler:v11];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __67__DCBiometricStoreClient_globalAuthACLTemplateUUIDsWithCompletion___block_invoke_2;
  v9[3] = &unk_278E813E0;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  [v7 globalAuthACLTemplateUUIDsWithCompletion:v9];
}

void __67__DCBiometricStoreClient_globalAuthACLTemplateUUIDsWithCompletion___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a5;
  v8 = a2;
  v9 = DC_LOG_CLIENT();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);
  if (v7)
  {
    if (v10)
    {
      __67__DCBiometricStoreClient_globalAuthACLTemplateUUIDsWithCompletion___block_invoke_2_cold_1();
    }
  }

  else
  {
    if (v10)
    {
      __67__DCBiometricStoreClient_globalAuthACLTemplateUUIDsWithCompletion___block_invoke_2_cold_2();
    }

    v9 = DC_LOG_MILESTONE_LOG();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      __67__DCBiometricStoreClient_globalAuthACLTemplateUUIDsWithCompletion___block_invoke_2_cold_3();
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (void)nonceForAuthorizationTokenWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = DC_LOG_CLIENT();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [DCBiometricStoreClient nonceForAuthorizationTokenWithCompletion:];
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __67__DCBiometricStoreClient_nonceForAuthorizationTokenWithCompletion___block_invoke;
  v11[3] = &unk_278E812F0;
  v6 = completionCopy;
  v12 = v6;
  v7 = [(DCBiometricStoreClient *)self remoteObjectProxyWithErrorHandler:v11];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __67__DCBiometricStoreClient_nonceForAuthorizationTokenWithCompletion___block_invoke_2;
  v9[3] = &unk_278E81408;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  [v7 nonceForAuthorizationTokenWithCompletion:v9];
}

void __67__DCBiometricStoreClient_nonceForAuthorizationTokenWithCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = DC_LOG_CLIENT();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (v5)
  {
    if (v8)
    {
      __67__DCBiometricStoreClient_nonceForAuthorizationTokenWithCompletion___block_invoke_2_cold_1();
    }
  }

  else
  {
    if (v8)
    {
      __67__DCBiometricStoreClient_nonceForAuthorizationTokenWithCompletion___block_invoke_2_cold_2();
    }

    v7 = DC_LOG_MILESTONE_LOG();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __67__DCBiometricStoreClient_nonceForAuthorizationTokenWithCompletion___block_invoke_2_cold_3();
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (void)prearmCredentialWithAuthorizationToken:(id)token completion:(id)completion
{
  completionCopy = completion;
  tokenCopy = token;
  v8 = DC_LOG_CLIENT();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [DCBiometricStoreClient prearmCredentialWithAuthorizationToken:completion:];
  }

  v9 = [(DCBiometricStoreClient *)self remoteObjectProxyWithErrorHandler:completionCopy];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __76__DCBiometricStoreClient_prearmCredentialWithAuthorizationToken_completion___block_invoke;
  v11[3] = &unk_278E81340;
  v11[4] = self;
  v12 = completionCopy;
  v10 = completionCopy;
  [v9 prearmCredentialWithAuthorizationToken:tokenCopy completion:v11];
}

void __76__DCBiometricStoreClient_prearmCredentialWithAuthorizationToken_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = DC_LOG_CLIENT();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
  if (v3)
  {
    if (v5)
    {
      __76__DCBiometricStoreClient_prearmCredentialWithAuthorizationToken_completion___block_invoke_cold_1();
    }
  }

  else
  {
    if (v5)
    {
      __76__DCBiometricStoreClient_prearmCredentialWithAuthorizationToken_completion___block_invoke_cold_2();
    }

    v4 = DC_LOG_MILESTONE_LOG();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __76__DCBiometricStoreClient_prearmCredentialWithAuthorizationToken_completion___block_invoke_cold_3();
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (void)establishPrearmTrustV2:(id)v2 completion:(id)completion
{
  completionCopy = completion;
  v2Copy = v2;
  v8 = DC_LOG_CLIENT();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [DCBiometricStoreClient establishPrearmTrustV2:completion:];
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __60__DCBiometricStoreClient_establishPrearmTrustV2_completion___block_invoke;
  v14[3] = &unk_278E812F0;
  v9 = completionCopy;
  v15 = v9;
  v10 = [(DCBiometricStoreClient *)self remoteObjectProxyWithErrorHandler:v14];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __60__DCBiometricStoreClient_establishPrearmTrustV2_completion___block_invoke_2;
  v12[3] = &unk_278E81430;
  v12[4] = self;
  v13 = v9;
  v11 = v9;
  [v10 establishPrearmTrustV2:v2Copy completion:v12];
}

void __60__DCBiometricStoreClient_establishPrearmTrustV2_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = DC_LOG_CLIENT();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (v5)
  {
    if (v8)
    {
      __60__DCBiometricStoreClient_establishPrearmTrustV2_completion___block_invoke_2_cold_1();
    }
  }

  else
  {
    if (v8)
    {
      __60__DCBiometricStoreClient_establishPrearmTrustV2_completion___block_invoke_2_cold_2();
    }

    v7 = DC_LOG_MILESTONE_LOG();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __60__DCBiometricStoreClient_establishPrearmTrustV2_completion___block_invoke_2_cold_3();
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (void)revokeCredentialAuthorizationToken:(id)token
{
  tokenCopy = token;
  v5 = DC_LOG_CLIENT();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [DCBiometricStoreClient revokeCredentialAuthorizationToken:];
  }

  v6 = [(DCBiometricStoreClient *)self remoteObjectProxyWithErrorHandler:tokenCopy];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __61__DCBiometricStoreClient_revokeCredentialAuthorizationToken___block_invoke;
  v8[3] = &unk_278E81340;
  v8[4] = self;
  v9 = tokenCopy;
  v7 = tokenCopy;
  [v6 revokeCredentialAuthorizationToken:v8];
}

void __61__DCBiometricStoreClient_revokeCredentialAuthorizationToken___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = DC_LOG_CLIENT();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
  if (v3)
  {
    if (v5)
    {
      __61__DCBiometricStoreClient_revokeCredentialAuthorizationToken___block_invoke_cold_1();
    }
  }

  else
  {
    if (v5)
    {
      __61__DCBiometricStoreClient_revokeCredentialAuthorizationToken___block_invoke_cold_2();
    }

    v4 = DC_LOG_MILESTONE_LOG();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __61__DCBiometricStoreClient_revokeCredentialAuthorizationToken___block_invoke_cold_3();
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (void)generatePhoneTokenWithNonce:(id)nonce keyBlob:(id)blob pairingID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  blobCopy = blob;
  nonceCopy = nonce;
  v14 = DC_LOG_CLIENT();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [DCBiometricStoreClient generatePhoneTokenWithNonce:keyBlob:pairingID:completion:];
  }

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __83__DCBiometricStoreClient_generatePhoneTokenWithNonce_keyBlob_pairingID_completion___block_invoke;
  v20[3] = &unk_278E812F0;
  v15 = completionCopy;
  v21 = v15;
  v16 = [(DCBiometricStoreClient *)self remoteObjectProxyWithErrorHandler:v20];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __83__DCBiometricStoreClient_generatePhoneTokenWithNonce_keyBlob_pairingID_completion___block_invoke_2;
  v18[3] = &unk_278E81458;
  v18[4] = self;
  v19 = v15;
  v17 = v15;
  [v16 generatePhoneTokenWithNonce:nonceCopy keyBlob:blobCopy pairingID:dCopy completion:v18];
}

void __83__DCBiometricStoreClient_generatePhoneTokenWithNonce_keyBlob_pairingID_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = DC_LOG_CLIENT();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (v5)
  {
    if (v8)
    {
      __83__DCBiometricStoreClient_generatePhoneTokenWithNonce_keyBlob_pairingID_completion___block_invoke_2_cold_1();
    }
  }

  else
  {
    if (v8)
    {
      __83__DCBiometricStoreClient_generatePhoneTokenWithNonce_keyBlob_pairingID_completion___block_invoke_2_cold_2();
    }

    v7 = DC_LOG_MILESTONE_LOG();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __83__DCBiometricStoreClient_generatePhoneTokenWithNonce_keyBlob_pairingID_completion___block_invoke_2_cold_3();
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (void)generatePrearmTrustCertificateWithNonce:(id)nonce pairingID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  nonceCopy = nonce;
  v11 = DC_LOG_CLIENT();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [DCBiometricStoreClient generatePrearmTrustCertificateWithNonce:pairingID:completion:];
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __87__DCBiometricStoreClient_generatePrearmTrustCertificateWithNonce_pairingID_completion___block_invoke;
  v17[3] = &unk_278E812F0;
  v12 = completionCopy;
  v18 = v12;
  v13 = [(DCBiometricStoreClient *)self remoteObjectProxyWithErrorHandler:v17];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __87__DCBiometricStoreClient_generatePrearmTrustCertificateWithNonce_pairingID_completion___block_invoke_2;
  v15[3] = &unk_278E81480;
  v15[4] = self;
  v16 = v12;
  v14 = v12;
  [v13 generatePrearmTrustCertificateWithNonce:nonceCopy pairingID:dCopy completion:v15];
}

void __87__DCBiometricStoreClient_generatePrearmTrustCertificateWithNonce_pairingID_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = DC_LOG_CLIENT();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (v5)
  {
    if (v8)
    {
      __87__DCBiometricStoreClient_generatePrearmTrustCertificateWithNonce_pairingID_completion___block_invoke_2_cold_1();
    }
  }

  else if (v8)
  {
    __87__DCBiometricStoreClient_generatePrearmTrustCertificateWithNonce_pairingID_completion___block_invoke_2_cold_2();
  }

  (*(*(a1 + 40) + 16))();
}

- (void)generatePrearmTrustCertificateFromKeyBlob:(id)blob nonce:(id)nonce pairingID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  nonceCopy = nonce;
  blobCopy = blob;
  v14 = DC_LOG_CLIENT();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [DCBiometricStoreClient generatePrearmTrustCertificateFromKeyBlob:nonce:pairingID:completion:];
  }

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __95__DCBiometricStoreClient_generatePrearmTrustCertificateFromKeyBlob_nonce_pairingID_completion___block_invoke;
  v20[3] = &unk_278E812F0;
  v15 = completionCopy;
  v21 = v15;
  v16 = [(DCBiometricStoreClient *)self remoteObjectProxyWithErrorHandler:v20];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __95__DCBiometricStoreClient_generatePrearmTrustCertificateFromKeyBlob_nonce_pairingID_completion___block_invoke_2;
  v18[3] = &unk_278E81480;
  v18[4] = self;
  v19 = v15;
  v17 = v15;
  [v16 generatePrearmTrustCertificateFromKeyBlob:blobCopy nonce:nonceCopy pairingID:dCopy completion:v18];
}

void __95__DCBiometricStoreClient_generatePrearmTrustCertificateFromKeyBlob_nonce_pairingID_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = DC_LOG_CLIENT();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (v5)
  {
    if (v8)
    {
      __95__DCBiometricStoreClient_generatePrearmTrustCertificateFromKeyBlob_nonce_pairingID_completion___block_invoke_2_cold_1();
    }
  }

  else if (v8)
  {
    __95__DCBiometricStoreClient_generatePrearmTrustCertificateFromKeyBlob_nonce_pairingID_completion___block_invoke_2_cold_2();
  }

  (*(*(a1 + 40) + 16))();
}

- (void)migratePrearmTrustBlob:(id)blob completion:(id)completion
{
  completionCopy = completion;
  blobCopy = blob;
  v8 = DC_LOG_CLIENT();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [DCBiometricStoreClient migratePrearmTrustBlob:completion:];
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __60__DCBiometricStoreClient_migratePrearmTrustBlob_completion___block_invoke;
  v14[3] = &unk_278E812F0;
  v9 = completionCopy;
  v15 = v9;
  v10 = [(DCBiometricStoreClient *)self remoteObjectProxyWithErrorHandler:v14];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __60__DCBiometricStoreClient_migratePrearmTrustBlob_completion___block_invoke_2;
  v12[3] = &unk_278E81318;
  v12[4] = self;
  v13 = v9;
  v11 = v9;
  [v10 migratePrearmTrustBlob:blobCopy completion:v12];
}

void __60__DCBiometricStoreClient_migratePrearmTrustBlob_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = DC_LOG_CLIENT();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (v5)
  {
    if (v8)
    {
      __60__DCBiometricStoreClient_migratePrearmTrustBlob_completion___block_invoke_2_cold_1();
    }
  }

  else if (v8)
  {
    __60__DCBiometricStoreClient_migratePrearmTrustBlob_completion___block_invoke_2_cold_2();
  }

  (*(*(a1 + 40) + 16))();
}

- (void)credentialAuthenticationTokenStatus:(id)status
{
  statusCopy = status;
  v5 = DC_LOG_CLIENT();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [DCBiometricStoreClient credentialAuthenticationTokenStatus:];
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __62__DCBiometricStoreClient_credentialAuthenticationTokenStatus___block_invoke;
  v11[3] = &unk_278E812F0;
  v6 = statusCopy;
  v12 = v6;
  v7 = [(DCBiometricStoreClient *)self remoteObjectProxyWithErrorHandler:v11];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __62__DCBiometricStoreClient_credentialAuthenticationTokenStatus___block_invoke_2;
  v9[3] = &unk_278E814A8;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  [v7 credentialAuthenticationTokenStatus:v9];
}

void __62__DCBiometricStoreClient_credentialAuthenticationTokenStatus___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = DC_LOG_CLIENT();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);
  if (v4)
  {
    if (v6)
    {
      __62__DCBiometricStoreClient_credentialAuthenticationTokenStatus___block_invoke_2_cold_1();
    }
  }

  else if (v6)
  {
    __62__DCBiometricStoreClient_credentialAuthenticationTokenStatus___block_invoke_2_cold_2();
  }

  (*(*(a1 + 40) + 16))();
}

- (void)getCASDCertificate:(id)certificate
{
  certificateCopy = certificate;
  v5 = DC_LOG_CLIENT();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [DCBiometricStoreClient getCASDCertificate:];
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __45__DCBiometricStoreClient_getCASDCertificate___block_invoke;
  v11[3] = &unk_278E812F0;
  v6 = certificateCopy;
  v12 = v6;
  v7 = [(DCBiometricStoreClient *)self remoteObjectProxyWithErrorHandler:v11];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __45__DCBiometricStoreClient_getCASDCertificate___block_invoke_2;
  v9[3] = &unk_278E81318;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  [v7 getCASDCertificate:v9];
}

void __45__DCBiometricStoreClient_getCASDCertificate___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = DC_LOG_CLIENT();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (v5)
  {
    if (v8)
    {
      __45__DCBiometricStoreClient_getCASDCertificate___block_invoke_2_cold_1();
    }
  }

  else if (v8)
  {
    __45__DCBiometricStoreClient_getCASDCertificate___block_invoke_2_cold_2();
  }

  (*(*(a1 + 40) + 16))();
}

- (void)getGlobalProgenitorKeyAttestation:(id)attestation
{
  attestationCopy = attestation;
  v5 = DC_LOG_CLIENT();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [DCBiometricStoreClient getGlobalProgenitorKeyAttestation:];
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __60__DCBiometricStoreClient_getGlobalProgenitorKeyAttestation___block_invoke;
  v11[3] = &unk_278E812F0;
  v6 = attestationCopy;
  v12 = v6;
  v7 = [(DCBiometricStoreClient *)self remoteObjectProxyWithErrorHandler:v11];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __60__DCBiometricStoreClient_getGlobalProgenitorKeyAttestation___block_invoke_2;
  v9[3] = &unk_278E81430;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  [v7 getGlobalProgenitorKeyAttestation:v9];
}

void __60__DCBiometricStoreClient_getGlobalProgenitorKeyAttestation___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = DC_LOG_CLIENT();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (v5)
  {
    if (v8)
    {
      __60__DCBiometricStoreClient_getGlobalProgenitorKeyAttestation___block_invoke_2_cold_1();
    }
  }

  else if (v8)
  {
    __60__DCBiometricStoreClient_getGlobalProgenitorKeyAttestation___block_invoke_2_cold_2();
  }

  (*(*(a1 + 40) + 16))();
}

- (void)getGlobalThirdPartyProgenitorKeyAttestation:(id)attestation
{
  attestationCopy = attestation;
  v5 = DC_LOG_CLIENT();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [DCBiometricStoreClient getGlobalThirdPartyProgenitorKeyAttestation:];
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __70__DCBiometricStoreClient_getGlobalThirdPartyProgenitorKeyAttestation___block_invoke;
  v11[3] = &unk_278E812F0;
  v6 = attestationCopy;
  v12 = v6;
  v7 = [(DCBiometricStoreClient *)self remoteObjectProxyWithErrorHandler:v11];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __70__DCBiometricStoreClient_getGlobalThirdPartyProgenitorKeyAttestation___block_invoke_2;
  v9[3] = &unk_278E81430;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  [v7 getGlobalThirdPartyProgenitorKeyAttestation:v9];
}

void __70__DCBiometricStoreClient_getGlobalThirdPartyProgenitorKeyAttestation___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = DC_LOG_CLIENT();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (v5)
  {
    if (v8)
    {
      __70__DCBiometricStoreClient_getGlobalThirdPartyProgenitorKeyAttestation___block_invoke_2_cold_1();
    }
  }

  else if (v8)
  {
    __70__DCBiometricStoreClient_getGlobalThirdPartyProgenitorKeyAttestation___block_invoke_2_cold_2();
  }

  (*(*(a1 + 40) + 16))();
}

- (void)boundAppletPresentmentACL:(id)l
{
  lCopy = l;
  v5 = DC_LOG_CLIENT();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [DCBiometricStoreClient boundAppletPresentmentACL:];
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __52__DCBiometricStoreClient_boundAppletPresentmentACL___block_invoke;
  v11[3] = &unk_278E812F0;
  v6 = lCopy;
  v12 = v6;
  v7 = [(DCBiometricStoreClient *)self remoteObjectProxyWithErrorHandler:v11];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __52__DCBiometricStoreClient_boundAppletPresentmentACL___block_invoke_2;
  v9[3] = &unk_278E81318;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  [v7 boundAppletPresentmentACL:v9];
}

void __52__DCBiometricStoreClient_boundAppletPresentmentACL___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = DC_LOG_CLIENT();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (v5)
  {
    if (v8)
    {
      __52__DCBiometricStoreClient_boundAppletPresentmentACL___block_invoke_2_cold_1();
    }
  }

  else if (v8)
  {
    __52__DCBiometricStoreClient_boundAppletPresentmentACL___block_invoke_2_cold_2();
  }

  (*(*(a1 + 40) + 16))();
}

void __106__DCBiometricStoreClient_refreshProgenitorKeyDesignationsWithSessionHandoffToken_onlyIfNeeded_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = DC_LOG_CLIENT();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
  if (v3)
  {
    if (v5)
    {
      __106__DCBiometricStoreClient_refreshProgenitorKeyDesignationsWithSessionHandoffToken_onlyIfNeeded_completion___block_invoke_2_cold_1();
    }
  }

  else if (v5)
  {
    __106__DCBiometricStoreClient_refreshProgenitorKeyDesignationsWithSessionHandoffToken_onlyIfNeeded_completion___block_invoke_2_cold_2();
  }

  (*(*(a1 + 40) + 16))();
}

- (void)clearProgenitorKeyDesignationsWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = DC_LOG_CLIENT();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [DCBiometricStoreClient clearProgenitorKeyDesignationsWithCompletion:];
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __71__DCBiometricStoreClient_clearProgenitorKeyDesignationsWithCompletion___block_invoke;
  v11[3] = &unk_278E812F0;
  v6 = completionCopy;
  v12 = v6;
  v7 = [(DCBiometricStoreClient *)self remoteObjectProxyWithErrorHandler:v11];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __71__DCBiometricStoreClient_clearProgenitorKeyDesignationsWithCompletion___block_invoke_2;
  v9[3] = &unk_278E81340;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  [v7 clearProgenitorKeyDesignationsWithCompletion:v9];
}

void __71__DCBiometricStoreClient_clearProgenitorKeyDesignationsWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = DC_LOG_CLIENT();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
  if (v3)
  {
    if (v5)
    {
      __71__DCBiometricStoreClient_clearProgenitorKeyDesignationsWithCompletion___block_invoke_2_cold_1();
    }
  }

  else if (v5)
  {
    __71__DCBiometricStoreClient_clearProgenitorKeyDesignationsWithCompletion___block_invoke_2_cold_2();
  }

  (*(*(a1 + 40) + 16))();
}

- (void)invalidate
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (id)remoteObjectProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  serverConnection = [(DCBiometricStoreClient *)self serverConnection];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __60__DCBiometricStoreClient_remoteObjectProxyWithErrorHandler___block_invoke;
  v9[3] = &unk_278E81340;
  v9[4] = self;
  v10 = handlerCopy;
  v6 = handlerCopy;
  v7 = [serverConnection remoteObjectProxyWithErrorHandler:v9];

  return v7;
}

void __60__DCBiometricStoreClient_remoteObjectProxyWithErrorHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = DC_LOG_CLIENT();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __60__DCBiometricStoreClient_remoteObjectProxyWithErrorHandler___block_invoke_cold_1();
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    v6 = [*(a1 + 32) createDaemonDisconnectedError];
    (*(v5 + 16))(v5, v6);
  }
}

- (void)init
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)bioBindingUnboundACL:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __47__DCBiometricStoreClient_bioBindingUnboundACL___block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __47__DCBiometricStoreClient_bioBindingUnboundACL___block_invoke_2_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __47__DCBiometricStoreClient_bioBindingUnboundACL___block_invoke_2_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)passcodeBindingUnboundACL:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __52__DCBiometricStoreClient_passcodeBindingUnboundACL___block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __52__DCBiometricStoreClient_passcodeBindingUnboundACL___block_invoke_2_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __52__DCBiometricStoreClient_passcodeBindingUnboundACL___block_invoke_2_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)setGlobalAuthACL:ofType:completion:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __61__DCBiometricStoreClient_setGlobalAuthACL_ofType_completion___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __61__DCBiometricStoreClient_setGlobalAuthACL_ofType_completion___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __61__DCBiometricStoreClient_setGlobalAuthACL_ofType_completion___block_invoke_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)setModifiedGlobalAuthACL:externalizedLAContext:completion:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __84__DCBiometricStoreClient_setModifiedGlobalAuthACL_externalizedLAContext_completion___block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __84__DCBiometricStoreClient_setModifiedGlobalAuthACL_externalizedLAContext_completion___block_invoke_2_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __84__DCBiometricStoreClient_setModifiedGlobalAuthACL_externalizedLAContext_completion___block_invoke_2_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)globalAuthACLWithCompletion:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __54__DCBiometricStoreClient_globalAuthACLWithCompletion___block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __54__DCBiometricStoreClient_globalAuthACLWithCompletion___block_invoke_2_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __54__DCBiometricStoreClient_globalAuthACLWithCompletion___block_invoke_2_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)deleteGlobalAuthACLWithCompletion:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __60__DCBiometricStoreClient_deleteGlobalAuthACLWithCompletion___block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __60__DCBiometricStoreClient_deleteGlobalAuthACLWithCompletion___block_invoke_2_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __60__DCBiometricStoreClient_deleteGlobalAuthACLWithCompletion___block_invoke_2_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)globalAuthACLTemplateUUIDsWithCompletion:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __67__DCBiometricStoreClient_globalAuthACLTemplateUUIDsWithCompletion___block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __67__DCBiometricStoreClient_globalAuthACLTemplateUUIDsWithCompletion___block_invoke_2_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __67__DCBiometricStoreClient_globalAuthACLTemplateUUIDsWithCompletion___block_invoke_2_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)nonceForAuthorizationTokenWithCompletion:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __67__DCBiometricStoreClient_nonceForAuthorizationTokenWithCompletion___block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __67__DCBiometricStoreClient_nonceForAuthorizationTokenWithCompletion___block_invoke_2_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __67__DCBiometricStoreClient_nonceForAuthorizationTokenWithCompletion___block_invoke_2_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)prearmCredentialWithAuthorizationToken:completion:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __76__DCBiometricStoreClient_prearmCredentialWithAuthorizationToken_completion___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __76__DCBiometricStoreClient_prearmCredentialWithAuthorizationToken_completion___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __76__DCBiometricStoreClient_prearmCredentialWithAuthorizationToken_completion___block_invoke_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)establishPrearmTrustV2:completion:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __60__DCBiometricStoreClient_establishPrearmTrustV2_completion___block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __60__DCBiometricStoreClient_establishPrearmTrustV2_completion___block_invoke_2_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __60__DCBiometricStoreClient_establishPrearmTrustV2_completion___block_invoke_2_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)revokeCredentialAuthorizationToken:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __61__DCBiometricStoreClient_revokeCredentialAuthorizationToken___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __61__DCBiometricStoreClient_revokeCredentialAuthorizationToken___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __61__DCBiometricStoreClient_revokeCredentialAuthorizationToken___block_invoke_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)generatePhoneTokenWithNonce:keyBlob:pairingID:completion:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __83__DCBiometricStoreClient_generatePhoneTokenWithNonce_keyBlob_pairingID_completion___block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __83__DCBiometricStoreClient_generatePhoneTokenWithNonce_keyBlob_pairingID_completion___block_invoke_2_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __83__DCBiometricStoreClient_generatePhoneTokenWithNonce_keyBlob_pairingID_completion___block_invoke_2_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)generatePrearmTrustCertificateWithNonce:pairingID:completion:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __87__DCBiometricStoreClient_generatePrearmTrustCertificateWithNonce_pairingID_completion___block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __87__DCBiometricStoreClient_generatePrearmTrustCertificateWithNonce_pairingID_completion___block_invoke_2_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)generatePrearmTrustCertificateFromKeyBlob:nonce:pairingID:completion:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __95__DCBiometricStoreClient_generatePrearmTrustCertificateFromKeyBlob_nonce_pairingID_completion___block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __95__DCBiometricStoreClient_generatePrearmTrustCertificateFromKeyBlob_nonce_pairingID_completion___block_invoke_2_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)migratePrearmTrustBlob:completion:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __60__DCBiometricStoreClient_migratePrearmTrustBlob_completion___block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __60__DCBiometricStoreClient_migratePrearmTrustBlob_completion___block_invoke_2_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)credentialAuthenticationTokenStatus:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __62__DCBiometricStoreClient_credentialAuthenticationTokenStatus___block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __62__DCBiometricStoreClient_credentialAuthenticationTokenStatus___block_invoke_2_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)getCASDCertificate:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __45__DCBiometricStoreClient_getCASDCertificate___block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

void __45__DCBiometricStoreClient_getCASDCertificate___block_invoke_2_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)getGlobalProgenitorKeyAttestation:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __60__DCBiometricStoreClient_getGlobalProgenitorKeyAttestation___block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

void __60__DCBiometricStoreClient_getGlobalProgenitorKeyAttestation___block_invoke_2_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)getGlobalThirdPartyProgenitorKeyAttestation:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __70__DCBiometricStoreClient_getGlobalThirdPartyProgenitorKeyAttestation___block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

void __70__DCBiometricStoreClient_getGlobalThirdPartyProgenitorKeyAttestation___block_invoke_2_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)boundAppletPresentmentACL:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __52__DCBiometricStoreClient_boundAppletPresentmentACL___block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

void __52__DCBiometricStoreClient_boundAppletPresentmentACL___block_invoke_2_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)refreshProgenitorKeyDesignationsWithSessionHandoffToken:onlyIfNeeded:completion:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __106__DCBiometricStoreClient_refreshProgenitorKeyDesignationsWithSessionHandoffToken_onlyIfNeeded_completion___block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __106__DCBiometricStoreClient_refreshProgenitorKeyDesignationsWithSessionHandoffToken_onlyIfNeeded_completion___block_invoke_2_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)clearProgenitorKeyDesignationsWithCompletion:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __71__DCBiometricStoreClient_clearProgenitorKeyDesignationsWithCompletion___block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __71__DCBiometricStoreClient_clearProgenitorKeyDesignationsWithCompletion___block_invoke_2_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __60__DCBiometricStoreClient_remoteObjectProxyWithErrorHandler___block_invoke_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(&dword_24560F000, v0, OS_LOG_TYPE_ERROR, "DCBiometricStoreClient remote object proxy error: %{public}@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end