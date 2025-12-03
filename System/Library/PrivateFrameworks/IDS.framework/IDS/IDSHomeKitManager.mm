@interface IDSHomeKitManager
+ (id)sharedInstance;
- (IDSHomeKitManager)init;
- (void)adminAccessTokens:(id)tokens error:(id)error;
- (void)consentTokens:(id)tokens error:(id)error;
- (void)dealloc;
- (void)getAdminAccessTokensWithWithServiceUserID:(id)d accessoryID:(id)iD pairingToken:(id)token completionBlock:(id)block queue:(id)queue;
- (void)getConsentTokensWithServiceUserID:(id)d accessoryIDs:(id)ds adminID:(id)iD completionBlock:(id)block queue:(id)queue;
- (void)getServiceUserIDsWithCompletionBlock:(id)block queue:(id)queue;
- (void)getUserAccessTokensWithServiceUserID:(id)d userID:(id)iD userHandle:(id)handle accessoryRequests:(id)requests completionBlock:(id)block queue:(id)queue;
- (void)refreshUserAccessTokens:(id)tokens error:(id)error;
- (void)refreshUserAccessTokensWithServiceUserID:(id)d userID:(id)iD accessoryRequests:(id)requests completionBlock:(id)block queue:(id)queue;
- (void)serviceUserIDs:(id)ds error:(id)error;
- (void)userAccessTokens:(id)tokens error:(id)error;
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
    listener = [v3 listener];
    [listener addHandler:v2];
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[IDSDaemonController sharedInstance];
  listener = [v3 listener];
  [listener removeHandler:self];

  v5.receiver = self;
  v5.super_class = IDSHomeKitManager;
  [(IDSHomeKitManager *)&v5 dealloc];
}

- (void)getServiceUserIDsWithCompletionBlock:(id)block queue:(id)queue
{
  blockCopy = block;
  queueCopy = queue;
  v8 = +[IDSInternalQueueController sharedInstance];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_195A9B094;
  v11[3] = &unk_1E743F1D8;
  selfCopy = self;
  v14 = blockCopy;
  v12 = queueCopy;
  v9 = queueCopy;
  v10 = blockCopy;
  [v8 performBlock:v11];
}

- (void)getAdminAccessTokensWithWithServiceUserID:(id)d accessoryID:(id)iD pairingToken:(id)token completionBlock:(id)block queue:(id)queue
{
  dCopy = d;
  iDCopy = iD;
  tokenCopy = token;
  blockCopy = block;
  queueCopy = queue;
  v17 = +[IDSInternalQueueController sharedInstance];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = sub_195A9B270;
  v23[3] = &unk_1E7441520;
  v24 = dCopy;
  v25 = iDCopy;
  v26 = tokenCopy;
  v27 = queueCopy;
  selfCopy = self;
  v29 = blockCopy;
  v18 = queueCopy;
  v19 = blockCopy;
  v20 = tokenCopy;
  v21 = iDCopy;
  v22 = dCopy;
  [v17 performBlock:v23];
}

- (void)getConsentTokensWithServiceUserID:(id)d accessoryIDs:(id)ds adminID:(id)iD completionBlock:(id)block queue:(id)queue
{
  dCopy = d;
  dsCopy = ds;
  iDCopy = iD;
  blockCopy = block;
  queueCopy = queue;
  v17 = +[IDSInternalQueueController sharedInstance];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = sub_195A9B4F0;
  v23[3] = &unk_1E7441520;
  v24 = dCopy;
  v25 = dsCopy;
  v26 = iDCopy;
  v27 = queueCopy;
  selfCopy = self;
  v29 = blockCopy;
  v18 = queueCopy;
  v19 = blockCopy;
  v20 = iDCopy;
  v21 = dsCopy;
  v22 = dCopy;
  [v17 performBlock:v23];
}

- (void)getUserAccessTokensWithServiceUserID:(id)d userID:(id)iD userHandle:(id)handle accessoryRequests:(id)requests completionBlock:(id)block queue:(id)queue
{
  dCopy = d;
  iDCopy = iD;
  handleCopy = handle;
  requestsCopy = requests;
  blockCopy = block;
  queueCopy = queue;
  v20 = +[IDSInternalQueueController sharedInstance];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = sub_195A9B814;
  v27[3] = &unk_1E7441548;
  v28 = dCopy;
  v29 = iDCopy;
  v30 = handleCopy;
  v31 = requestsCopy;
  selfCopy = self;
  v34 = blockCopy;
  v32 = queueCopy;
  v21 = queueCopy;
  v22 = blockCopy;
  v23 = requestsCopy;
  v24 = handleCopy;
  v25 = iDCopy;
  v26 = dCopy;
  [v20 performBlock:v27];
}

- (void)refreshUserAccessTokensWithServiceUserID:(id)d userID:(id)iD accessoryRequests:(id)requests completionBlock:(id)block queue:(id)queue
{
  dCopy = d;
  iDCopy = iD;
  requestsCopy = requests;
  blockCopy = block;
  queueCopy = queue;
  v17 = +[IDSInternalQueueController sharedInstance];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = sub_195A9BAA4;
  v23[3] = &unk_1E7441570;
  v24 = queueCopy;
  selfCopy = self;
  v26 = dCopy;
  v27 = iDCopy;
  v28 = requestsCopy;
  v29 = blockCopy;
  v18 = requestsCopy;
  v19 = iDCopy;
  v20 = dCopy;
  v21 = queueCopy;
  v22 = blockCopy;
  [v17 performBlock:v23];
}

- (void)serviceUserIDs:(id)ds error:(id)error
{
  dsCopy = ds;
  errorCopy = error;
  getServiceUserIDsCompletion = self->_getServiceUserIDsCompletion;
  if (getServiceUserIDsCompletion)
  {
    v9 = getServiceUserIDsCompletion;
    v10 = self->_getServiceUserIDsCompletion;
    self->_getServiceUserIDsCompletion = 0;

    queue = [(IDSDelegateInfo *)v9 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_195A9BC3C;
    block[3] = &unk_1E743E620;
    v14 = v9;
    v15 = dsCopy;
    v16 = errorCopy;
    v12 = v9;
    dispatch_async(queue, block);
  }
}

- (void)adminAccessTokens:(id)tokens error:(id)error
{
  tokensCopy = tokens;
  errorCopy = error;
  getAdminAccessTokensCompletion = self->_getAdminAccessTokensCompletion;
  if (getAdminAccessTokensCompletion)
  {
    v9 = getAdminAccessTokensCompletion;
    v10 = self->_getAdminAccessTokensCompletion;
    self->_getAdminAccessTokensCompletion = 0;

    queue = [(IDSDelegateInfo *)v9 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_195A9BD9C;
    block[3] = &unk_1E743E620;
    v14 = v9;
    v15 = tokensCopy;
    v16 = errorCopy;
    v12 = v9;
    dispatch_async(queue, block);
  }
}

- (void)consentTokens:(id)tokens error:(id)error
{
  tokensCopy = tokens;
  errorCopy = error;
  getConsentTokensCompletion = self->_getConsentTokensCompletion;
  if (getConsentTokensCompletion)
  {
    v9 = getConsentTokensCompletion;
    v10 = self->_getConsentTokensCompletion;
    self->_getConsentTokensCompletion = 0;

    queue = [(IDSDelegateInfo *)v9 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_195A9BEFC;
    block[3] = &unk_1E743E620;
    v14 = v9;
    v15 = tokensCopy;
    v16 = errorCopy;
    v12 = v9;
    dispatch_async(queue, block);
  }
}

- (void)userAccessTokens:(id)tokens error:(id)error
{
  tokensCopy = tokens;
  errorCopy = error;
  getUserAccessTokensCompletion = self->_getUserAccessTokensCompletion;
  if (getUserAccessTokensCompletion)
  {
    v9 = getUserAccessTokensCompletion;
    v10 = self->_getUserAccessTokensCompletion;
    self->_getUserAccessTokensCompletion = 0;

    queue = [(IDSDelegateInfo *)v9 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_195A9C05C;
    block[3] = &unk_1E743E620;
    v14 = v9;
    v15 = tokensCopy;
    v16 = errorCopy;
    v12 = v9;
    dispatch_async(queue, block);
  }
}

- (void)refreshUserAccessTokens:(id)tokens error:(id)error
{
  tokensCopy = tokens;
  errorCopy = error;
  refreshUserAccessTokensCompletion = self->_refreshUserAccessTokensCompletion;
  if (refreshUserAccessTokensCompletion)
  {
    v9 = refreshUserAccessTokensCompletion;
    v10 = self->_refreshUserAccessTokensCompletion;
    self->_refreshUserAccessTokensCompletion = 0;

    queue = [(IDSDelegateInfo *)v9 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_195A9C1BC;
    block[3] = &unk_1E743E620;
    v14 = v9;
    v15 = tokensCopy;
    v16 = errorCopy;
    v12 = v9;
    dispatch_async(queue, block);
  }
}

@end