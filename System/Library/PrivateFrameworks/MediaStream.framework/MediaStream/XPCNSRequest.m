@interface XPCNSRequest
- (XPCNSRequest)initWithXPCRequest:(id)a3;
- (void)sendReply:(id)a3;
@end

@implementation XPCNSRequest

- (void)sendReply:(id)a3
{
  request = self->_request;
  v5 = a3;
  v6 = [(XPCRequest *)request reply];
  inserted = _insertMessage(v6, v5, 0, 0, 0);

  if (inserted)
  {
    v8 = self->_request;

    [(XPCRequest *)v8 sendReply];
  }

  else if (_shouldLogBlock && (*(_shouldLogBlock + 16))())
  {
    _XPCLog(3, @"%@: Cannot send reply.", v9, v10, v11, v12, v13, v14, self);
  }
}

- (XPCNSRequest)initWithXPCRequest:(id)a3
{
  v5 = a3;
  v23.receiver = self;
  v23.super_class = XPCNSRequest;
  v6 = [(XPCNSRequest *)&v23 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_request, a3);
    v8 = [v5 message];
    v21 = 0;
    v22 = 0;
    v9 = _unpack(v8, &v22, &v21);
    v10 = v22;
    v11 = v22;
    v12 = v21;
    v13 = v21;

    if (v9)
    {
      objc_storeStrong(&v7->_message, v10);
      objc_storeStrong(&v7->_data, v12);
    }

    else
    {
      if (_shouldLogBlock && (*(_shouldLogBlock + 16))())
      {
        _XPCLog(3, @"%@: Could not initialize object.", v14, v15, v16, v17, v18, v19, v7);
      }

      v7 = 0;
    }
  }

  return v7;
}

@end