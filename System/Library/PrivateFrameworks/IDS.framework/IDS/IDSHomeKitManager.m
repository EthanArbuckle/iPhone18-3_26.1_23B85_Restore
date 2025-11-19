@interface IDSHomeKitManager
+ (id)sharedInstance;
- (IDSHomeKitManager)init;
- (void)adminAccessTokens:(id)a3 error:(id)a4;
- (void)consentTokens:(id)a3 error:(id)a4;
- (void)dealloc;
- (void)getAdminAccessTokensWithWithServiceUserID:(id)a3 accessoryID:(id)a4 pairingToken:(id)a5 completionBlock:(id)a6 queue:(id)a7;
- (void)getConsentTokensWithServiceUserID:(id)a3 accessoryIDs:(id)a4 adminID:(id)a5 completionBlock:(id)a6 queue:(id)a7;
- (void)getServiceUserIDsWithCompletionBlock:(id)a3 queue:(id)a4;
- (void)getUserAccessTokensWithServiceUserID:(id)a3 userID:(id)a4 userHandle:(id)a5 accessoryRequests:(id)a6 completionBlock:(id)a7 queue:(id)a8;
- (void)refreshUserAccessTokens:(id)a3 error:(id)a4;
- (void)refreshUserAccessTokensWithServiceUserID:(id)a3 userID:(id)a4 accessoryRequests:(id)a5 completionBlock:(id)a6 queue:(id)a7;
- (void)serviceUserIDs:(id)a3 error:(id)a4;
- (void)userAccessTokens:(id)a3 error:(id)a4;
@end

@implementation IDSHomeKitManager

+ (id)sharedInstance
{
  if (qword_1ED5DE0C0 != -1)
  {
    sub_195B33CE0();
  }

  v3 = qword_1ED5DE080;

  return v3;
}

- (IDSHomeKitManager)init
{
  v6.receiver = self;
  v6.super_class = IDSHomeKitManager;
  v2 = [(IDSHomeKitManager *)&v6 init];
  if (v2)
  {
    v3 = +[IDSDaemonController sharedInstance];
    v4 = [v3 listener];
    [v4 addHandler:v2];
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[IDSDaemonController sharedInstance];
  v4 = [v3 listener];
  [v4 removeHandler:self];

  v5.receiver = self;
  v5.super_class = IDSHomeKitManager;
  [(IDSHomeKitManager *)&v5 dealloc];
}

- (void)getServiceUserIDsWithCompletionBlock:(id)a3 queue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[IDSInternalQueueController sharedInstance];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_195A9B094;
  v11[3] = &unk_1E743F1D8;
  v13 = self;
  v14 = v6;
  v12 = v7;
  v9 = v7;
  v10 = v6;
  [v8 performBlock:v11];
}

- (void)getAdminAccessTokensWithWithServiceUserID:(id)a3 accessoryID:(id)a4 pairingToken:(id)a5 completionBlock:(id)a6 queue:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = +[IDSInternalQueueController sharedInstance];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = sub_195A9B270;
  v23[3] = &unk_1E7441520;
  v24 = v12;
  v25 = v13;
  v26 = v14;
  v27 = v16;
  v28 = self;
  v29 = v15;
  v18 = v16;
  v19 = v15;
  v20 = v14;
  v21 = v13;
  v22 = v12;
  [v17 performBlock:v23];
}

- (void)getConsentTokensWithServiceUserID:(id)a3 accessoryIDs:(id)a4 adminID:(id)a5 completionBlock:(id)a6 queue:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = +[IDSInternalQueueController sharedInstance];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = sub_195A9B4F0;
  v23[3] = &unk_1E7441520;
  v24 = v12;
  v25 = v13;
  v26 = v14;
  v27 = v16;
  v28 = self;
  v29 = v15;
  v18 = v16;
  v19 = v15;
  v20 = v14;
  v21 = v13;
  v22 = v12;
  [v17 performBlock:v23];
}

- (void)getUserAccessTokensWithServiceUserID:(id)a3 userID:(id)a4 userHandle:(id)a5 accessoryRequests:(id)a6 completionBlock:(id)a7 queue:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = +[IDSInternalQueueController sharedInstance];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = sub_195A9B814;
  v27[3] = &unk_1E7441548;
  v28 = v14;
  v29 = v15;
  v30 = v16;
  v31 = v17;
  v33 = self;
  v34 = v18;
  v32 = v19;
  v21 = v19;
  v22 = v18;
  v23 = v17;
  v24 = v16;
  v25 = v15;
  v26 = v14;
  [v20 performBlock:v27];
}

- (void)refreshUserAccessTokensWithServiceUserID:(id)a3 userID:(id)a4 accessoryRequests:(id)a5 completionBlock:(id)a6 queue:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = +[IDSInternalQueueController sharedInstance];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = sub_195A9BAA4;
  v23[3] = &unk_1E7441570;
  v24 = v16;
  v25 = self;
  v26 = v12;
  v27 = v13;
  v28 = v14;
  v29 = v15;
  v18 = v14;
  v19 = v13;
  v20 = v12;
  v21 = v16;
  v22 = v15;
  [v17 performBlock:v23];
}

- (void)serviceUserIDs:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  getServiceUserIDsCompletion = self->_getServiceUserIDsCompletion;
  if (getServiceUserIDsCompletion)
  {
    v9 = getServiceUserIDsCompletion;
    v10 = self->_getServiceUserIDsCompletion;
    self->_getServiceUserIDsCompletion = 0;

    v11 = [(IDSDelegateInfo *)v9 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_195A9BC3C;
    block[3] = &unk_1E743E620;
    v14 = v9;
    v15 = v6;
    v16 = v7;
    v12 = v9;
    dispatch_async(v11, block);
  }
}

- (void)adminAccessTokens:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  getAdminAccessTokensCompletion = self->_getAdminAccessTokensCompletion;
  if (getAdminAccessTokensCompletion)
  {
    v9 = getAdminAccessTokensCompletion;
    v10 = self->_getAdminAccessTokensCompletion;
    self->_getAdminAccessTokensCompletion = 0;

    v11 = [(IDSDelegateInfo *)v9 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_195A9BD9C;
    block[3] = &unk_1E743E620;
    v14 = v9;
    v15 = v6;
    v16 = v7;
    v12 = v9;
    dispatch_async(v11, block);
  }
}

- (void)consentTokens:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  getConsentTokensCompletion = self->_getConsentTokensCompletion;
  if (getConsentTokensCompletion)
  {
    v9 = getConsentTokensCompletion;
    v10 = self->_getConsentTokensCompletion;
    self->_getConsentTokensCompletion = 0;

    v11 = [(IDSDelegateInfo *)v9 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_195A9BEFC;
    block[3] = &unk_1E743E620;
    v14 = v9;
    v15 = v6;
    v16 = v7;
    v12 = v9;
    dispatch_async(v11, block);
  }
}

- (void)userAccessTokens:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  getUserAccessTokensCompletion = self->_getUserAccessTokensCompletion;
  if (getUserAccessTokensCompletion)
  {
    v9 = getUserAccessTokensCompletion;
    v10 = self->_getUserAccessTokensCompletion;
    self->_getUserAccessTokensCompletion = 0;

    v11 = [(IDSDelegateInfo *)v9 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_195A9C05C;
    block[3] = &unk_1E743E620;
    v14 = v9;
    v15 = v6;
    v16 = v7;
    v12 = v9;
    dispatch_async(v11, block);
  }
}

- (void)refreshUserAccessTokens:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  refreshUserAccessTokensCompletion = self->_refreshUserAccessTokensCompletion;
  if (refreshUserAccessTokensCompletion)
  {
    v9 = refreshUserAccessTokensCompletion;
    v10 = self->_refreshUserAccessTokensCompletion;
    self->_refreshUserAccessTokensCompletion = 0;

    v11 = [(IDSDelegateInfo *)v9 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_195A9C1BC;
    block[3] = &unk_1E743E620;
    v14 = v9;
    v15 = v6;
    v16 = v7;
    v12 = v9;
    dispatch_async(v11, block);
  }
}

@end