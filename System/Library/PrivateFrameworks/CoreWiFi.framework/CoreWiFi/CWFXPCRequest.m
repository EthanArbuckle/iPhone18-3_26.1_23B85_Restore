@interface CWFXPCRequest
- (CWFXPCRequest)init;
- (id)description;
- (id)response;
- (void)cancel;
- (void)setResponse:(id)a3;
@end

@implementation CWFXPCRequest

- (CWFXPCRequest)init
{
  v10.receiver = self;
  v10.super_class = CWFXPCRequest;
  v2 = [(NSBlockOperation *)&v10 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AFB0] UUID];
    UUID = v2->_UUID;
    v2->_UUID = v3;

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
  v2 = self;
  objc_sync_enter(v2);
  v3 = MEMORY[0x1E12EA400](v2->_response);
  objc_sync_exit(v2);

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

- (void)setResponse:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if (v5->_response)
  {
    [(CWFAsyncBlockOperation *)v5 decrementCompletionCounter];
  }

  if (v4)
  {
    [(CWFAsyncBlockOperation *)v5 incrementCompletionCounter];
    objc_initWeak(&location, v5);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1E0CE8CA8;
    v9[3] = &unk_1E86E6E60;
    objc_copyWeak(&v11, &location);
    v10 = v4;
    v6 = MEMORY[0x1E12EA400](v9);
    response = v5->_response;
    v5->_response = v6;

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  else
  {
    v8 = v5->_response;
    v5->_response = 0;
  }

  objc_sync_exit(v5);
}

- (void)cancel
{
  v5.receiver = self;
  v5.super_class = CWFXPCRequest;
  [(CWFXPCRequest *)&v5 cancel];
  v3 = [(CWFXPCRequest *)self cancelationHandler];

  if (v3)
  {
    v4 = [(CWFXPCRequest *)self cancelationHandler];
    v4[2]();
  }
}

@end