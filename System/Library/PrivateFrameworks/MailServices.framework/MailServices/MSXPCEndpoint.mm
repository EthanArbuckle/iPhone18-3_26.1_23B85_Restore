@interface MSXPCEndpoint
- (MSXPCEndpoint)init;
- (void)connectionForProtocol:(id)protocol completionHandler:(id)handler;
@end

@implementation MSXPCEndpoint

- (MSXPCEndpoint)init
{
  v6.receiver = self;
  v6.super_class = MSXPCEndpoint;
  v2 = [(MSMailDefaultService *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(MSMailDefaultService *)v2 setShouldLaunchMobileMail:1];
    v4 = v3;
  }

  return v3;
}

- (void)connectionForProtocol:(id)protocol completionHandler:(id)handler
{
  v15[1] = *MEMORY[0x1E69E9840];
  protocolCopy = protocol;
  handlerCopy = handler;
  v14 = @"protocol";
  v8 = NSStringFromProtocol(protocolCopy);
  v15[0] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __57__MSXPCEndpoint_connectionForProtocol_completionHandler___block_invoke;
  v12[3] = &unk_1E855F090;
  v10 = handlerCopy;
  v13 = v10;
  [(MSService *)self _callServicesMethod:@"xpc-endpoint" arguments:v9 replyHandler:v12];

  v11 = *MEMORY[0x1E69E9840];
}

void __57__MSXPCEndpoint_connectionForProtocol_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  xdict = a2;
  v5 = a3;
  if (xdict)
  {
    v6 = xpc_dictionary_get_value(xdict, "endpoint");
    if (v6)
    {
      v7 = objc_alloc_init(MEMORY[0x1E696B0E0]);
      [v7 _setEndpoint:v6];
      v8 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithListenerEndpoint:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  (*(*(a1 + 32) + 16))();
}

@end