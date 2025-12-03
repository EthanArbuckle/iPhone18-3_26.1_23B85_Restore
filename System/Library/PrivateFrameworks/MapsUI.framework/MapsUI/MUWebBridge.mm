@interface MUWebBridge
+ (id)URLByAddingConfiguration:(id)configuration toURL:(id)l additionalQueryItems:(id)items;
+ (id)_operatingSystemVersion;
- (MUWebBridge)initWithWebViewFactoryItem:(id)item;
- (MUWebBridgeDelegate)delegate;
- (void)_consumeCallbackHandlerWithNumber:(id)number result:(id)result errorMessage:(id)message;
- (void)_dispatchCall:(id)call;
- (void)_dispatchCallback:(id)callback;
- (void)_initializeConnection;
- (void)_postMessage:(id)message completionHandler:(id)handler;
- (void)_receiveMessage:(id)message;
- (void)addCallableMethod:(id)method handler:(id)handler;
- (void)callMethod:(id)method arguments:(id)arguments callbackHandler:(id)handler;
- (void)closeConnection;
- (void)userContentController:(id)controller didReceiveScriptMessage:(id)message;
@end

@implementation MUWebBridge

- (MUWebBridgeDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)userContentController:(id)controller didReceiveScriptMessage:(id)message
{
  messageCopy = message;
  frameInfo = [messageCopy frameInfo];
  isMainFrame = [frameInfo isMainFrame];

  if (isMainFrame)
  {
    body = [messageCopy body];
    [(MUWebBridge *)self _receiveMessage:body];
  }
}

- (void)_consumeCallbackHandlerWithNumber:(id)number result:(id)result errorMessage:(id)message
{
  v16 = *MEMORY[0x1E69E9840];
  numberCopy = number;
  resultCopy = result;
  messageCopy = message;
  v11 = [(NSMutableDictionary *)self->_pendingCallbackHandlers objectForKeyedSubscript:numberCopy];
  if (v11)
  {
    [(NSMutableDictionary *)self->_pendingCallbackHandlers removeObjectForKey:numberCopy];
    (v11)[2](v11, resultCopy, messageCopy);
  }

  else
  {
    v12 = MUGetMUWebContentLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = 138412290;
      v15 = numberCopy;
      _os_log_impl(&dword_1C5620000, v12, OS_LOG_TYPE_ERROR, "No matching callback handler found for callback %@", &v14, 0xCu);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_dispatchCallback:(id)callback
{
  v17 = *MEMORY[0x1E69E9840];
  callbackCopy = callback;
  v5 = callbackCopy;
  if (self->_connectionState == 1)
  {
    status = [callbackCopy status];
    if ([status isEqualToString:@"success"])
    {
      callNumber = [v5 callNumber];
      result = [v5 result];
      selfCopy2 = self;
      v10 = callNumber;
      v11 = result;
      v12 = 0;
    }

    else
    {
      if (![status isEqualToString:@"error"])
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

      callNumber = [v5 callNumber];
      result = [v5 errorMessage];
      selfCopy2 = self;
      v10 = callNumber;
      v11 = 0;
      v12 = result;
    }

    [(MUWebBridge *)selfCopy2 _consumeCallbackHandlerWithNumber:v10 result:v11 errorMessage:v12];

LABEL_10:
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_dispatchCall:(id)call
{
  callCopy = call;
  v5 = [callCopy copy];
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

    method = [callCopy method];
    v8 = [method isEqualToString:@"init"];

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

  method2 = [callCopy method];
  v10 = [method2 isEqualToString:@"init"];

  if (v10)
  {
    [v5 setStatus:@"error"];
    v11 = @"bridge already initialized";
    goto LABEL_13;
  }

  callHandlers = self->_callHandlers;
  method3 = [callCopy method];
  v14 = [(NSMutableDictionary *)callHandlers objectForKeyedSubscript:method3];

  if (!v14)
  {
    [v5 setStatus:@"error"];
    v11 = @"method not supported";
    goto LABEL_13;
  }

  objc_initWeak(&location, self);
  arguments = [callCopy arguments];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __29__MUWebBridge__dispatchCall___block_invoke;
  v16[3] = &unk_1E82191A8;
  objc_copyWeak(&v18, &location);
  v17 = v5;
  (v14)[2](v14, arguments, v16);

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

- (void)_postMessage:(id)message completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = MEMORY[0x1E696ACB0];
  jSONObject = [message JSONObject];
  v17 = 0;
  v9 = [v7 dataWithJSONObject:jSONObject options:0 error:&v17];
  v10 = v17;

  if (v9)
  {
    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v9 encoding:4];
    v12 = MEMORY[0x1E696AEC0];
    bridgeConfiguration = [(MUWebViewFactoryItem *)self->_webViewFactoryItem bridgeConfiguration];
    webControllerName = [bridgeConfiguration webControllerName];
    v15 = [v12 stringWithFormat:@"window.%@.receiveMessage(%@)", webControllerName, v11];

    webView = [(MUWebViewFactoryItem *)self->_webViewFactoryItem webView];
    [webView evaluateJavaScript:v15 completionHandler:handlerCopy];
  }

  else
  {
    handlerCopy[2](handlerCopy, 0, v10);
  }
}

- (void)_receiveMessage:(id)message
{
  v16 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = [[MUWebMessage alloc] initWithJSONObject:messageCopy]) != 0)
  {
    p_super = &v5->super;
    type = [(MUWebMessage *)v5 type];
    v8 = [type isEqualToString:@"call"];

    if (v8)
    {
      [(MUWebBridge *)self _dispatchCall:p_super];
    }

    else
    {
      type2 = [p_super type];
      v11 = [type2 isEqualToString:@"callback"];

      if (v11)
      {
        [(MUWebBridge *)self _dispatchCallback:p_super];
      }

      else
      {
        v12 = MUGetMUWebContentLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          type3 = [p_super type];
          v14 = 138412290;
          v15 = type3;
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

- (void)addCallableMethod:(id)method handler:(id)handler
{
  methodCopy = method;
  v8 = [handler copy];
  v7 = _Block_copy(v8);
  [(NSMutableDictionary *)self->_callHandlers setObject:v7 forKeyedSubscript:methodCopy];
}

- (void)callMethod:(id)method arguments:(id)arguments callbackHandler:(id)handler
{
  methodCopy = method;
  argumentsCopy = arguments;
  defaultCallbackHandler = handler;
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
      bridgeConfiguration = [(MUWebViewFactoryItem *)self->_webViewFactoryItem bridgeConfiguration];
      nativeControllerName = [bridgeConfiguration nativeControllerName];
      [(MUWebMessage *)v16 setCaller:nativeControllerName];

      bridgeConfiguration2 = [(MUWebViewFactoryItem *)self->_webViewFactoryItem bridgeConfiguration];
      webControllerName = [bridgeConfiguration2 webControllerName];
      [(MUWebMessage *)v16 setCallee:webControllerName];

      [(MUWebMessage *)v16 setMethod:methodCopy];
      v21 = [MEMORY[0x1E696AD98] numberWithInteger:nextCallNumber];
      [(MUWebMessage *)v16 setCallNumber:v21];

      [(MUWebMessage *)v16 setArguments:argumentsCopy];
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
  messageHandlerProxy = [(MUWebViewFactoryItem *)self->_webViewFactoryItem messageHandlerProxy];
  [messageHandlerProxy setTarget:0];
}

- (void)_initializeConnection
{
  if (!self->_connectionState)
  {
    self->_connectionState = 1;
    delegate = [(MUWebBridge *)self delegate];
    [delegate webBridgeDidConnect:self];
  }
}

- (MUWebBridge)initWithWebViewFactoryItem:(id)item
{
  itemCopy = item;
  v15.receiver = self;
  v15.super_class = MUWebBridge;
  v6 = [(MUWebBridge *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_webViewFactoryItem, item);
    messageHandlerProxy = [(MUWebViewFactoryItem *)v7->_webViewFactoryItem messageHandlerProxy];
    [messageHandlerProxy setTarget:v7];

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    callHandlers = v7->_callHandlers;
    v7->_callHandlers = dictionary;

    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    pendingCallbackHandlers = v7->_pendingCallbackHandlers;
    v7->_pendingCallbackHandlers = dictionary2;

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
  processInfo = [MEMORY[0x1E696AE30] processInfo];
  v3 = processInfo;
  if (processInfo)
  {
    [processInfo operatingSystemVersion];
  }

  else
  {
    v6 = 0uLL;
  }

  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d.%d.%d", v6, 0];

  return v4;
}

+ (id)URLByAddingConfiguration:(id)configuration toURL:(id)l additionalQueryItems:(id)items
{
  itemsCopy = items;
  v8 = MEMORY[0x1E696AF20];
  configurationCopy = configuration;
  v10 = [v8 componentsWithURL:l resolvingAgainstBaseURL:0];
  v11 = MEMORY[0x1E695DF70];
  queryItems = [v10 queryItems];
  v13 = [v11 arrayWithArray:queryItems];

  v14 = MEMORY[0x1E696AF60];
  bridgeVersion = [configurationCopy bridgeVersion];

  v16 = [v14 queryItemWithName:@"bridgeVersion" value:bridgeVersion];
  [v13 addObject:v16];

  v17 = MEMORY[0x1E696AF60];
  _operatingSystemName = [objc_opt_class() _operatingSystemName];
  v19 = [v17 queryItemWithName:@"osName" value:_operatingSystemName];
  [v13 addObject:v19];

  v20 = MEMORY[0x1E696AF60];
  _operatingSystemVersion = [objc_opt_class() _operatingSystemVersion];
  v22 = [v20 queryItemWithName:@"osVersion" value:_operatingSystemVersion];
  [v13 addObject:v22];

  if ([itemsCopy count])
  {
    [v13 addObjectsFromArray:itemsCopy];
  }

  [v10 setQueryItems:v13];
  v23 = [v10 URL];

  return v23;
}

@end