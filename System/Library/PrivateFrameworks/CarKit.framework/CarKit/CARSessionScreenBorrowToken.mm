@interface CARSessionScreenBorrowToken
- (CARSession)session;
- (CARSessionScreenBorrowToken)initWithSession:(id)session client:(id)client reason:(id)reason;
- (void)dealloc;
- (void)unborrowToken;
@end

@implementation CARSessionScreenBorrowToken

- (void)dealloc
{
  [(CARSessionScreenBorrowToken *)self unborrowToken];
  v3.receiver = self;
  v3.super_class = CARSessionScreenBorrowToken;
  [(CARSessionScreenBorrowToken *)&v3 dealloc];
}

- (void)unborrowToken
{
  client = [(CARSessionScreenBorrowToken *)self client];
  reason = [(CARSessionScreenBorrowToken *)self reason];
  session = [(CARSessionScreenBorrowToken *)self session];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __44__CARSessionScreenBorrowToken_unborrowToken__block_invoke;
  v8[3] = &unk_1E82FD850;
  v9 = client;
  v10 = reason;
  v6 = reason;
  v7 = client;
  [session _performExtendedEndpointAction:v8];
}

- (CARSession)session
{
  WeakRetained = objc_loadWeakRetained(&self->_session);

  return WeakRetained;
}

uint64_t __44__CARSessionScreenBorrowToken_unborrowToken__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  VTable = CMBaseObjectGetVTable();
  v7 = *(VTable + 24);
  result = VTable + 24;
  v8 = *(v7 + 24);
  if (v8)
  {

    return v8(a2, v3, v4);
  }

  return result;
}

- (CARSessionScreenBorrowToken)initWithSession:(id)session client:(id)client reason:(id)reason
{
  sessionCopy = session;
  clientCopy = client;
  reasonCopy = reason;
  v17.receiver = self;
  v17.super_class = CARSessionScreenBorrowToken;
  v11 = [(CARSessionScreenBorrowToken *)&v17 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_session, sessionCopy);
    objc_storeStrong(&v12->_client, client);
    objc_storeStrong(&v12->_reason, reason);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __61__CARSessionScreenBorrowToken_initWithSession_client_reason___block_invoke;
    v14[3] = &unk_1E82FD850;
    v15 = clientCopy;
    v16 = reasonCopy;
    [sessionCopy _performExtendedEndpointAction:v14];
  }

  return v12;
}

uint64_t __61__CARSessionScreenBorrowToken_initWithSession_client_reason___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  VTable = CMBaseObjectGetVTable();
  v7 = *(VTable + 24);
  result = VTable + 24;
  v8 = *(v7 + 16);
  if (v8)
  {

    return v8(a2, v3, v4);
  }

  return result;
}

@end