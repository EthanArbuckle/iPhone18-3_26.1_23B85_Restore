@interface FACancelInvitationRequest
- (FACancelInvitationRequest)initWith:(id)a3 familyID:(id)a4;
- (void)startRequestWithCompletionHandler:(id)a3;
@end

@implementation FACancelInvitationRequest

- (FACancelInvitationRequest)initWith:(id)a3 familyID:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = FACancelInvitationRequest;
  v9 = [(FAFamilyCircleRequest *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_email, a3);
    objc_storeStrong(&v10->_familyID, a4);
  }

  return v10;
}

- (void)startRequestWithCompletionHandler:(id)a3
{
  v4 = a3;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __63__FACancelInvitationRequest_startRequestWithCompletionHandler___block_invoke;
  v12[3] = &unk_1E7CA46D8;
  v5 = v4;
  v13 = v5;
  v6 = [(FAFamilyCircleRequest *)self serviceRemoteObjectWithErrorHandler:v12];
  email = self->_email;
  familyID = self->_familyID;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __63__FACancelInvitationRequest_startRequestWithCompletionHandler___block_invoke_1;
  v10[3] = &unk_1E7CA56C0;
  v11 = v5;
  v9 = v5;
  [v6 cancelInvitationWith:email familyID:familyID options:0 replyBlock:v10];
}

void __63__FACancelInvitationRequest_startRequestWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = _FALogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1B70B0000, v4, OS_LOG_TYPE_DEFAULT, "FACancelInvitationRequest: Error from service - %@", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
  v5 = *MEMORY[0x1E69E9840];
}

@end