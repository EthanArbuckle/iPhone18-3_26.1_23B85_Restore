@interface FAHandleFamilyEventPushNotificationRequest
- (FAHandleFamilyEventPushNotificationRequest)initWithPayload:(id)a3;
- (void)startRequestWithCompletionHandler:(id)a3;
@end

@implementation FAHandleFamilyEventPushNotificationRequest

- (FAHandleFamilyEventPushNotificationRequest)initWithPayload:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = FAHandleFamilyEventPushNotificationRequest;
  v6 = [(FAFamilyCircleRequest *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_payload, a3);
    v8 = v7;
  }

  return v7;
}

- (void)startRequestWithCompletionHandler:(id)a3
{
  v4 = a3;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __80__FAHandleFamilyEventPushNotificationRequest_startRequestWithCompletionHandler___block_invoke;
  v12[3] = &unk_1E7CA46D8;
  v5 = v4;
  v13 = v5;
  v6 = [(FAFamilyCircleRequest *)self serviceRemoteObjectWithErrorHandler:v12];
  payload = self->_payload;
  v8 = [(FAFamilyCircleRequest *)self requestOptions];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __80__FAHandleFamilyEventPushNotificationRequest_startRequestWithCompletionHandler___block_invoke_17;
  v10[3] = &unk_1E7CA46D8;
  v11 = v5;
  v9 = v5;
  [v6 didReceiveFamilyEventPushNotificationWithPayload:payload options:v8 replyBlock:v10];
}

void __80__FAHandleFamilyEventPushNotificationRequest_startRequestWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = _FALogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1B70B0000, v4, OS_LOG_TYPE_DEFAULT, "FAHandleFamilyEventPushNotificationRequest: Error from service - %@", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
  v5 = *MEMORY[0x1E69E9840];
}

@end