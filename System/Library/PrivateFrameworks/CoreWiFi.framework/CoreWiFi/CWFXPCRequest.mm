@interface CWFXPCRequest
- (CWFXPCRequest)init;
- (id)description;
- (id)response;
- (void)cancel;
- (void)setResponse:(id)response;
@end

@implementation CWFXPCRequest

- (CWFXPCRequest)init
{
  v10.receiver = self;
  v10.super_class = CWFXPCRequest;
  v2 = [(NSBlockOperation *)&v10 init];
  if (v2)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    UUID = v2->_UUID;
    v2->_UUID = uUID;

    objc_initWeak(&location, v2);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0BC6400;
    v7[3] = &unk_1E86E6190;
    objc_copyWeak(&v8, &location);
    v6.receiver = v2;
    v6.super_class = CWFXPCRequest;
    [(CWFXPCRequest *)&v6 setCompletionBlock:v7];
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (id)response
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = MEMORY[0x1E12EA400](selfCopy->_response);
  objc_sync_exit(selfCopy);

  v4 = MEMORY[0x1E12EA400](v3);

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = sub_1E0BC2FCC(self->_type);
  v5 = [(CWFRequestParameters *)self->_requestParameters description];
  v6 = [v3 stringWithFormat:@"[%@] %@", v4, v5];

  return v6;
}

- (void)setResponse:(id)response
{
  responseCopy = response;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_response)
  {
    [(CWFAsyncBlockOperation *)selfCopy decrementCompletionCounter];
  }

  if (responseCopy)
  {
    [(CWFAsyncBlockOperation *)selfCopy incrementCompletionCounter];
    objc_initWeak(&location, selfCopy);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1E0CE8CA8;
    v9[3] = &unk_1E86E6E60;
    objc_copyWeak(&v11, &location);
    v10 = responseCopy;
    v6 = MEMORY[0x1E12EA400](v9);
    response = selfCopy->_response;
    selfCopy->_response = v6;

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  else
  {
    v8 = selfCopy->_response;
    selfCopy->_response = 0;
  }

  objc_sync_exit(selfCopy);
}

- (void)cancel
{
  v5.receiver = self;
  v5.super_class = CWFXPCRequest;
  [(CWFXPCRequest *)&v5 cancel];
  cancelationHandler = [(CWFXPCRequest *)self cancelationHandler];

  if (cancelationHandler)
  {
    cancelationHandler2 = [(CWFXPCRequest *)self cancelationHandler];
    cancelationHandler2[2]();
  }
}

@end