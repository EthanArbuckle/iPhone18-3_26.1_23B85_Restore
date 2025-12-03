@interface FAUpdateFamilyMemberFlagRequest
- (FAUpdateFamilyMemberFlagRequest)initWithFamilyMemberDSID:(id)d ephemeralAuthResults:(id)results flag:(id)flag enabled:(BOOL)enabled;
- (void)startRequestWithCompletionHandler:(id)handler;
@end

@implementation FAUpdateFamilyMemberFlagRequest

- (FAUpdateFamilyMemberFlagRequest)initWithFamilyMemberDSID:(id)d ephemeralAuthResults:(id)results flag:(id)flag enabled:(BOOL)enabled
{
  dCopy = d;
  resultsCopy = results;
  flagCopy = flag;
  v17.receiver = self;
  v17.super_class = FAUpdateFamilyMemberFlagRequest;
  v14 = [(FAFamilyCircleRequest *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_dsid, d);
    objc_storeStrong(&v15->_ephemeralAuthResults, results);
    objc_storeStrong(&v15->_flag, flag);
    v15->_enabled = enabled;
  }

  return v15;
}

- (void)startRequestWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __69__FAUpdateFamilyMemberFlagRequest_startRequestWithCompletionHandler___block_invoke;
  v15[3] = &unk_1E7CA46D8;
  v5 = handlerCopy;
  v16 = v5;
  v6 = [(FAFamilyCircleRequest *)self serviceRemoteObjectWithErrorHandler:v15];
  v7 = _FALogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [(FAUpdateFamilyMemberFlagRequest *)self startRequestWithCompletionHandler:v7];
  }

  dsid = self->_dsid;
  ephemeralAuthResults = [(FAUpdateFamilyMemberFlagRequest *)self ephemeralAuthResults];
  flag = self->_flag;
  enabled = self->_enabled;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __69__FAUpdateFamilyMemberFlagRequest_startRequestWithCompletionHandler___block_invoke_20;
  v13[3] = &unk_1E7CA49A0;
  v13[4] = self;
  v14 = v5;
  v12 = v5;
  [v6 updateFamilyMemberFlagWithDSID:dsid ephemeralAuthResults:ephemeralAuthResults flag:flag enabled:enabled replyBlock:v13];
}

void __69__FAUpdateFamilyMemberFlagRequest_startRequestWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = _FALogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_1B70B0000, v4, OS_LOG_TYPE_DEFAULT, "FARegisterPushTokenRequest: Error from service - %@", &v7, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __69__FAUpdateFamilyMemberFlagRequest_startRequestWithCompletionHandler___block_invoke_20(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _FALogSystem();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
  if (v3)
  {
    if (v5)
    {
      __69__FAUpdateFamilyMemberFlagRequest_startRequestWithCompletionHandler___block_invoke_20_cold_1(a1, v3, v4);
    }
  }

  else if (v5)
  {
    __69__FAUpdateFamilyMemberFlagRequest_startRequestWithCompletionHandler___block_invoke_20_cold_2(v4);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v3);
  }
}

- (void)startRequestWithCompletionHandler:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AD98];
  v5 = [a1 ephemeralAuthResults];
  v6 = [v4 numberWithInt:v5 != 0];
  v8 = 138412546;
  v9 = a1;
  v10 = 2112;
  v11 = v6;
  _os_log_debug_impl(&dword_1B70B0000, a2, OS_LOG_TYPE_DEBUG, "Starting family update member flag request: %@, ephemeralAuth: (%@)", &v8, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

void __69__FAUpdateFamilyMemberFlagRequest_startRequestWithCompletionHandler___block_invoke_20_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = *(*(a1 + 32) + 40);
  v5 = 136315650;
  v6 = "[FAUpdateFamilyMemberFlagRequest startRequestWithCompletionHandler:]_block_invoke";
  v7 = 2112;
  v8 = v3;
  v9 = 2112;
  v10 = a2;
  _os_log_debug_impl(&dword_1B70B0000, log, OS_LOG_TYPE_DEBUG, "%s Error updating Family member flag %@ completed %@", &v5, 0x20u);
  v4 = *MEMORY[0x1E69E9840];
}

void __69__FAUpdateFamilyMemberFlagRequest_startRequestWithCompletionHandler___block_invoke_20_cold_2(os_log_t log)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 136315138;
  v3 = "[FAUpdateFamilyMemberFlagRequest startRequestWithCompletionHandler:]_block_invoke";
  _os_log_debug_impl(&dword_1B70B0000, log, OS_LOG_TYPE_DEBUG, "%s Family update member flag completed.", &v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

@end