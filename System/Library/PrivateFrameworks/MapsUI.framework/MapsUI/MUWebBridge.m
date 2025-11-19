@interface MUWebBridge
+ (id)URLByAddingConfiguration:(id)a3 toURL:(id)a4 additionalQueryItems:(id)a5;
+ (id)_operatingSystemVersion;
- (MUWebBridge)initWithWebViewFactoryItem:(id)a3;
- (MUWebBridgeDelegate)delegate;
- (void)_consumeCallbackHandlerWithNumber:(id)a3 result:(id)a4 errorMessage:(id)a5;
- (void)_dispatchCall:(id)a3;
- (void)_dispatchCallback:(id)a3;
- (void)_initializeConnection;
- (void)_postMessage:(id)a3 completionHandler:(id)a4;
- (void)_receiveMessage:(id)a3;
- (void)addCallableMethod:(id)a3 handler:(id)a4;
- (void)callMethod:(id)a3 arguments:(id)a4 callbackHandler:(id)a5;
- (void)closeConnection;
- (void)userContentController:(id)a3 didReceiveScriptMessage:(id)a4;
@end

@implementation MUWebBridge

- (MUWebBridgeDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)userContentController:(id)a3 didReceiveScriptMessage:(id)a4
{
  v8 = a4;
  v5 = [v8 frameInfo];
  v6 = [v5 isMainFrame];

  if (v6)
  {
    v7 = [v8 body];
    [(MUWebBridge *)self _receiveMessage:v7];
  }
}

- (void)_consumeCallbackHandlerWithNumber:(id)a3 result:(id)a4 errorMessage:(id)a5
{
  v16 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(NSMutableDictionary *)self->_pendingCallbackHandlers objectForKeyedSubscript:v8];
  if (v11)
  {
    [(NSMutableDictionary *)self->_pendingCallbackHandlers removeObjectForKey:v8];
    (v11)[2](v11, v9, v10);
  }

  else
  {
    v12 = MUGetMUWebContentLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = 138412290;
      v15 = v8;
      _os_log_impl(&dword_1C5620000, v12, OS_LOG_TYPE_ERROR, "No matching callback handler found for callback %@", &v14, 0xCu);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_dispatchCallback:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (self->_connectionState == 1)
  {
    v6 = [v4 status];
    if ([v6 isEqualToString:@"success"])
    {
      v7 = [v5 callNumber];
      v8 = [v5 result];
      v9 = self;
      v10 = v7;
      v11 = v8;
      v12 = 0;
    }

    else
    {
      if (![v6 isEqualToString:@"error"])
      {
        v13 = MUGetMUWebContentLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v15 = 138412290;
          v16 = v5;
          _os_log_impl(&dword_1C5620000, v13, OS_LOG_TYPE_ERROR, "Unknown status in message: %@", &v15, 0xCu);
        }

        goto LABEL_10;
      }

      v7 = [v5 callNumber];
      v8 = [v5 errorMessage];
      v9 = self;
      v10 = v7;
      v11 = 0;
      v12 = v8;
    }

    [(MUWebBridge *)v9 _consumeCallbackHandlerWithNumber:v10 result:v11 errorMessage:v12];

LABEL_10:
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_dispatchCall:(id)a3
{
  v4 = a3;
  v5 = [v4 copy];
  [v5 setType:@"callback"];
  connectionState = self->_connectionState;
  if (connectionState == 2)
  {
    [v5 setStatus:@"error"];
    v11 = @"bridge closed";
    goto LABEL_13;
  }

  if (connectionState != 1)
  {
    if (connectionState)
    {
LABEL_14:
      [(MUWebBridge *)self _postMessage:v5 completionHandler:&__block_literal_global_45];
      goto LABEL_15;
    }

    v7 = [v4 method];
    v8 = [v7 isEqualToString:@"init"];

    if (v8)
    {
      [(MUWebBridge *)self _initializeConnection];
      [v5 setStatus:@"success"];
      goto LABEL_14;
    }

    [v5 setStatus:@"error"];
    v11 = @"bridge not initialized";
LABEL_13:
    [v5 setErrorMessage:v11];
    goto LABEL_14;
  }

  v9 = [v4 method];
  v10 = [v9 isEqualToString:@"init"];

  if (v10)
  {
    [v5 setStatus:@"error"];
    v11 = @"bridge already initialized";
    goto LABEL_13;
  }

  callHandlers = self->_callHandlers;
  v13 = [v4 method];
  v14 = [(NSMutableDictionary *)callHandlers objectForKeyedSubscript:v13];

  if (!v14)
  {
    [v5 setStatus:@"error"];
    v11 = @"method not supported";
    goto LABEL_13;
  }

  objc_initWeak(&location, self);
  v15 = [v4 arguments];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __29__MUWebBridge__dispatchCall___block_invoke;
  v16[3] = &unk_1E82191A8;
  objc_copyWeak(&v18, &location);
  v17 = v5;
  (v14)[2](v14, v15, v16);

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);

LABEL_15:
}

void __29__MUWebBridge__dispatchCall___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (WeakRetained && [WeakRetained connectionState] == 1)
  {
    v8 = *(a1 + 32);
    if (v5)
    {
      [v8 setStatus:@"error"];
      [*(a1 + 32) setErrorMessage:v5];
    }

    else
    {
      [v8 setStatus:@"success"];
      [*(a1 + 32) setResult:v9];
    }

    [v7 _postMessage:*(a1 + 32) completionHandler:&__block_literal_global_36];
  }
}

void __29__MUWebBridge__dispatchCall___block_invoke_43(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (v3)
  {
    v4 = MUGetMUWebContentLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 138412290;
      v7 = v3;
      _os_log_impl(&dword_1C5620000, v4, OS_LOG_TYPE_ERROR, "Error evaluating JavaScript: %@", &v6, 0xCu);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

void __29__MUWebBridge__dispatchCall___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (v3)
  {
    v4 = MUGetMUWebContentLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 138412290;
      v7 = v3;
      _os_log_impl(&dword_1C5620000, v4, OS_LOG_TYPE_ERROR, "Error evaluating JavaScript: %@", &v6, 0xCu);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)_postMessage:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = MEMORY[0x1E696ACB0];
  v8 = [a3 JSONObject];
  v17 = 0;
  v9 = [v7 dataWithJSONObject:v8 options:0 error:&v17];
  v10 = v17;

  if (v9)
  {
    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v9 encoding:4];
    v12 = MEMORY[0x1E696AEC0];
    v13 = [(MUWebViewFactoryItem *)self->_webViewFactoryItem bridgeConfiguration];
    v14 = [v13 webControllerName];
    v15 = [v12 stringWithFormat:@"window.%@.receiveMessage(%@)", v14, v11];

    v16 = [(MUWebViewFactoryItem *)self->_webViewFactoryItem webView];
    [v16 evaluateJavaScript:v15 completionHandler:v6];
  }

  else
  {
    v6[2](v6, 0, v10);
  }
}

- (void)_receiveMessage:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = [[MUWebMessage alloc] initWithJSONObject:v4]) != 0)
  {
    p_super = &v5->super;
    v7 = [(MUWebMessage *)v5 type];
    v8 = [v7 isEqualToString:@"call"];

    if (v8)
    {
      [(MUWebBridge *)self _dispatchCall:p_super];
    }

    else
    {
      v10 = [p_super type];
      v11 = [v10 isEqualToString:@"callback"];

      if (v11)
      {
        [(MUWebBridge *)self _dispatchCallback:p_super];
      }

      else
      {
        v12 = MUGetMUWebContentLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v13 = [p_super type];
          v14 = 138412290;
          v15 = v13;
          _os_log_impl(&dword_1C5620000, v12, OS_LOG_TYPE_ERROR, "Unknown message type: %@", &v14, 0xCu);
        }
      }
    }
  }

  else
  {
    p_super = MUGetMUWebContentLog();
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&dword_1C5620000, p_super, OS_LOG_TYPE_ERROR, "Invalid message", &v14, 2u);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)addCallableMethod:(id)a3 handler:(id)a4
{
  v6 = a3;
  v8 = [a4 copy];
  v7 = _Block_copy(v8);
  [(NSMutableDictionary *)self->_callHandlers setObject:v7 forKeyedSubscript:v6];
}

- (void)callMethod:(id)a3 arguments:(id)a4 callbackHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  defaultCallbackHandler = a5;
  v11 = defaultCallbackHandler;
  if (self->_connectionState == 1)
  {
    nextCallNumber = self->_nextCallNumber;
    self->_nextCallNumber = nextCallNumber + 1;
    if (nextCallNumber < 0)
    {
      v16 = MUGetMUWebContentLog();
      if (os_log_type_enabled(&v16->super, OS_LOG_TYPE_ERROR))
      {
        LOWORD(location[0]) = 0;
        _os_log_impl(&dword_1C5620000, &v16->super, OS_LOG_TYPE_ERROR, "Call limit exceeded", location, 2u);
      }
    }

    else
    {
      if (!defaultCallbackHandler)
      {
        defaultCallbackHandler = self->_defaultCallbackHandler;
      }

      v13 = _Block_copy(defaultCallbackHandler);
      pendingCallbackHandlers = self->_pendingCallbackHandlers;
      v15 = [MEMORY[0x1E696AD98] numberWithInteger:nextCallNumber];
      [(NSMutableDictionary *)pendingCallbackHandlers setObject:v13 forKeyedSubscript:v15];

      v16 = objc_alloc_init(MUWebMessage);
      [(MUWebMessage *)v16 setType:@"call"];
      v17 = [(MUWebViewFactoryItem *)self->_webViewFactoryItem bridgeConfiguration];
      v18 = [v17 nativeControllerName];
      [(MUWebMessage *)v16 setCaller:v18];

      v19 = [(MUWebViewFactoryItem *)self->_webViewFactoryItem bridgeConfiguration];
      v20 = [v19 webControllerName];
      [(MUWebMessage *)v16 setCallee:v20];

      [(MUWebMessage *)v16 setMethod:v8];
      v21 = [MEMORY[0x1E696AD98] numberWithInteger:nextCallNumber];
      [(MUWebMessage *)v16 setCallNumber:v21];

      [(MUWebMessage *)v16 setArguments:v9];
      objc_initWeak(location, self);
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __52__MUWebBridge_callMethod_arguments_callbackHandler___block_invoke;
      v22[3] = &unk_1E8219160;
      objc_copyWeak(&v23, location);
      [(MUWebBridge *)self _postMessage:v16 completionHandler:v22];
      objc_destroyWeak(&v23);
      objc_destroyWeak(location);
    }
  }
}

void __52__MUWebBridge_callMethod_arguments_callbackHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    WeakRetained = MUGetMUWebContentLog();
    if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412290;
      v10 = v6;
      _os_log_impl(&dword_1C5620000, WeakRetained, OS_LOG_TYPE_ERROR, "Error evaluating JavaScript: %@", &v9, 0xCu);
    }

    goto LABEL_6;
  }

  if (v5)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _receiveMessage:v5];
LABEL_6:
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)closeConnection
{
  self->_connectionState = 2;
  v2 = [(MUWebViewFactoryItem *)self->_webViewFactoryItem messageHandlerProxy];
  [v2 setTarget:0];
}

- (void)_initializeConnection
{
  if (!self->_connectionState)
  {
    self->_connectionState = 1;
    v4 = [(MUWebBridge *)self delegate];
    [v4 webBridgeDidConnect:self];
  }
}

- (MUWebBridge)initWithWebViewFactoryItem:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = MUWebBridge;
  v6 = [(MUWebBridge *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_webViewFactoryItem, a3);
    v8 = [(MUWebViewFactoryItem *)v7->_webViewFactoryItem messageHandlerProxy];
    [v8 setTarget:v7];

    v9 = [MEMORY[0x1E695DF90] dictionary];
    callHandlers = v7->_callHandlers;
    v7->_callHandlers = v9;

    v11 = [MEMORY[0x1E695DF90] dictionary];
    pendingCallbackHandlers = v7->_pendingCallbackHandlers;
    v7->_pendingCallbackHandlers = v11;

    defaultCallbackHandler = v7->_defaultCallbackHandler;
    v7->_defaultCallbackHandler = &__block_literal_global_7489;
  }

  return v7;
}

void __42__MUWebBridge_initWithWebViewFactoryItem___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (v3)
  {
    v4 = MUGetMUWebContentLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 138412290;
      v7 = v3;
      _os_log_impl(&dword_1C5620000, v4, OS_LOG_TYPE_ERROR, "Bad message response: %@", &v6, 0xCu);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

+ (id)_operatingSystemVersion
{
  v6 = 0uLL;
  v2 = [MEMORY[0x1E696AE30] processInfo];
  v3 = v2;
  if (v2)
  {
    [v2 operatingSystemVersion];
  }

  else
  {
    v6 = 0uLL;
  }

  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d.%d.%d", v6, 0];

  return v4;
}

+ (id)URLByAddingConfiguration:(id)a3 toURL:(id)a4 additionalQueryItems:(id)a5
{
  v7 = a5;
  v8 = MEMORY[0x1E696AF20];
  v9 = a3;
  v10 = [v8 componentsWithURL:a4 resolvingAgainstBaseURL:0];
  v11 = MEMORY[0x1E695DF70];
  v12 = [v10 queryItems];
  v13 = [v11 arrayWithArray:v12];

  v14 = MEMORY[0x1E696AF60];
  v15 = [v9 bridgeVersion];

  v16 = [v14 queryItemWithName:@"bridgeVersion" value:v15];
  [v13 addObject:v16];

  v17 = MEMORY[0x1E696AF60];
  v18 = [objc_opt_class() _operatingSystemName];
  v19 = [v17 queryItemWithName:@"osName" value:v18];
  [v13 addObject:v19];

  v20 = MEMORY[0x1E696AF60];
  v21 = [objc_opt_class() _operatingSystemVersion];
  v22 = [v20 queryItemWithName:@"osVersion" value:v21];
  [v13 addObject:v22];

  if ([v7 count])
  {
    [v13 addObjectsFromArray:v7];
  }

  [v10 setQueryItems:v13];
  v23 = [v10 URL];

  return v23;
}

@end