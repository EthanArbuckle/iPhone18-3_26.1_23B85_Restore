@interface MERemoteExtensionContext
+ (id)log;
- (MEExtensionRemoteHostProtocol)remoteHostPoxy;
- (MERemoteExtensionContext)initWithInputItems:(id)a3 listenerEndpoint:(id)a4 contextUUID:(id)a5;
- (NSArray)requiredHeaders;
- (id)_composeSessionInterfaceForSession:(id)a3;
- (id)_contentBlockerInterface;
- (id)_createPrincipalObject;
- (id)_extensionInterface;
- (id)_mailActionInterface;
- (id)_messageSecurityHandlerInterface;
- (id)additionalHeadersForSession:(id)a3;
- (id)contentRulesJSON;
- (id)decodedMessageForMessageData:(id)a3;
- (id)decodedMessageForMessageData:(id)a3 decodeContext:(id)a4;
- (id)extensionViewControllerForMessageContext:(id)a3;
- (id)extensionViewControllerForMessageSigners:(id)a3;
- (id)remoteProxy;
- (id)viewControllerForSession:(id)a3;
- (void)_createPrincipalObject;
- (void)contentRulesJSONWithCompletionHandler:(id)a3;
- (void)dealloc;
- (void)decideActionForMessage:(id)a3 completionHandler:(id)a4;
- (void)decodedMessageForMessageData:(id)a3 decodeContext:(id)a4 withCompletionHandler:(id)a5;
- (void)encodeMessage:(id)a3 composeContext:(id)a4 completionHandler:(id)a5;
- (void)getEncodingStatusForMessage:(id)a3 composeContext:(id)a4 completionHandler:(id)a5;
- (void)mailComposeSessionDidBegin:(id)a3;
- (void)mailComposeSessionDidEnd:(id)a3;
- (void)primaryActionClickedForMessageContext:(id)a3 completionHandler:(id)a4;
- (void)requiredHeadersWithCompletion:(id)a3;
- (void)session:(id)a3 annotateAddressesWithCompletionHandler:(id)a4;
- (void)session:(id)a3 canSendMessageWithCompletionHandler:(id)a4;
- (void)session:(id)a3 getAdditionalHeadersWithCompletion:(id)a4;
- (void)session:(id)a3 hasSendMessageCheckWithCompletion:(id)a4;
@end

@implementation MERemoteExtensionContext

+ (id)log
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__MERemoteExtensionContext_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_4 != -1)
  {
    dispatch_once(&log_onceToken_4, block);
  }

  v2 = log_log_4;

  return v2;
}

void __31__MERemoteExtensionContext_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_4;
  log_log_4 = v1;
}

- (MERemoteExtensionContext)initWithInputItems:(id)a3 listenerEndpoint:(id)a4 contextUUID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v13.receiver = self;
  v13.super_class = MERemoteExtensionContext;
  v11 = [(MERemoteExtensionContext *)&v13 initWithInputItems:v8 listenerEndpoint:v9 contextUUID:v10];
  if (v11)
  {
    NSLog(&cfstr_S.isa, "[MERemoteExtensionContext initWithInputItems:listenerEndpoint:contextUUID:]");
  }

  return v11;
}

- (void)dealloc
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = +[MERemoteExtensionContext log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v7 = self;
    _os_log_impl(&dword_257F67000, v3, OS_LOG_TYPE_DEFAULT, "<MERemoteExtensionContext:%p> deallocated", buf, 0xCu);
  }

  v5.receiver = self;
  v5.super_class = MERemoteExtensionContext;
  [(MERemoteExtensionContext *)&v5 dealloc];
  v4 = *MEMORY[0x277D85DE8];
}

- (id)remoteProxy
{
  v2 = [(MERemoteExtensionContext *)self _auxiliaryConnection];
  v3 = [v2 remoteObjectProxy];

  return v3;
}

- (MEExtensionRemoteHostProtocol)remoteHostPoxy
{
  v3 = [(MERemoteExtensionContext *)self _auxiliaryConnection];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__MERemoteExtensionContext_remoteHostPoxy__block_invoke;
  v6[3] = &unk_279858F20;
  v6[4] = self;
  v4 = [v3 remoteObjectProxyWithErrorHandler:v6];

  return v4;
}

void __42__MERemoteExtensionContext_remoteHostPoxy__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[MERemoteExtensionContext log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __42__MERemoteExtensionContext_remoteHostPoxy__block_invoke_cold_1(a1);
  }
}

- (id)_extensionInterface
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = [(MERemoteExtensionContext *)self _principalObject];

  if (v4)
  {
    v5 = [(MERemoteExtensionContext *)self _principalObject];
  }

  else
  {
    v6 = +[MERemoteExtensionContext log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v17 = self;
      v18 = 2112;
      v19 = self;
      _os_log_impl(&dword_257F67000, v6, OS_LOG_TYPE_DEFAULT, "ExtensionContext<%p>: Creating new _principalObject for extension Context:%@", buf, 0x16u);
    }

    v7 = [(MERemoteExtensionContext *)self _createPrincipalObject];
    v8 = [MEMORY[0x277CCAEB0] _sharedExtensionContextVendor];
    v9 = [(MERemoteExtensionContext *)self _UUID];
    [v8 _setPrincipalObject:v7 forUUID:v9];

    v5 = v7;
  }

  if (([v5 conformsToProtocol:&unk_28693AEF8] & 1) == 0)
  {
    v14 = [MEMORY[0x277CCA890] currentHandler];
    v15 = [(MERemoteExtensionContext *)self _principalObject];
    [v14 handleFailureInMethod:a2 object:self file:@"MERemoteExtensionContext.m" lineNumber:82 description:{@"ExtensionContext<%p>: _principalObject %@ does not conform to MEExtension protocol in ExtensionContext :%@", self, v15, self}];
  }

  v10 = +[MERemoteExtensionContext log];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [(MERemoteExtensionContext *)self _principalObject];
    *buf = 134218498;
    v17 = self;
    v18 = 2112;
    v19 = v11;
    v20 = 2112;
    v21 = self;
    _os_log_impl(&dword_257F67000, v10, OS_LOG_TYPE_DEFAULT, "ExtensionContext<%p>: _principalObject is %@ in ExtensionContext :%@", buf, 0x20u);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)_createPrincipalObject
{
  v40 = *MEMORY[0x277D85DE8];
  v27 = [MEMORY[0x277CC1E50] bundleRecordForCurrentProcess];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v16 = [MEMORY[0x277CCA890] currentHandler];
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    [v16 handleFailureInMethod:a2 object:self file:@"MERemoteExtensionContext.m" lineNumber:90 description:{@"Unexpected bunde record class '%@'", v18}];
  }

  v2 = [v27 infoDictionary];
  v26 = [v2 objectForKey:@"NSExtension" ofClass:objc_opt_class()];

  v3 = +[MERemoteExtensionContext log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    v35 = self;
    v36 = 2112;
    v37 = v26;
    v38 = 2112;
    v39 = self;
    _os_log_impl(&dword_257F67000, v3, OS_LOG_TYPE_DEFAULT, "ExtensionContext<%p>: extensionDictionary is %@ for Extension Context :%@", buf, 0x20u);
  }

  aClassName = [v26 objectForKey:@"NSExtensionPrincipalClass"];
  if (![(NSString *)aClassName length])
  {
    v23 = +[MERemoteExtensionContext log];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [MERemoteExtensionContext _createPrincipalObject];
    }

    v4 = 0;
    goto LABEL_32;
  }

  v4 = objc_alloc_init(NSClassFromString(aClassName));
  v5 = +[MERemoteExtensionContext log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    v35 = self;
    v36 = 2112;
    v37 = v4;
    v38 = 2112;
    v39 = self;
    _os_log_impl(&dword_257F67000, v5, OS_LOG_TYPE_DEFAULT, "ExtensionContext<%p>: principalObject is %@ for Extension Context :%@", buf, 0x20u);
  }

  if (v4)
  {
    v23 = [v26 objectForKey:@"NSExtensionAttributes"];
    [v23 objectForKey:@"MEExtensionCapabilities"];
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    obj = v30 = 0u;
    v6 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v6)
    {
      v7 = *v30;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v30 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v29 + 1) + 8 * i);
          if ([v9 isEqualToString:@"MEComposeSessionHandler"] && (objc_opt_respondsToSelector() & 1) == 0)
          {
            v19 = [MEMORY[0x277CCA890] currentHandler];
          }

          if ([v9 isEqualToString:@"MEMessageActionHandler"] && (objc_opt_respondsToSelector() & 1) == 0)
          {
            v20 = [MEMORY[0x277CCA890] currentHandler];
          }

          if ([v9 isEqualToString:@"MEContentBlocker"] && (objc_opt_respondsToSelector() & 1) == 0)
          {
            v21 = [MEMORY[0x277CCA890] currentHandler];
          }

          if ([v9 isEqualToString:@"MEMessageSecurityHandler"] && (objc_opt_respondsToSelector() & 1) == 0)
          {
            v10 = [MEMORY[0x277CCA890] currentHandler];
          }
        }

        v6 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v6);
    }

LABEL_32:
    v11 = v4;
    goto LABEL_34;
  }

  v11 = 0;
LABEL_34:
  v12 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
  composeSessionToHandlerMap = self->_composeSessionToHandlerMap;
  self->_composeSessionToHandlerMap = v12;

  v14 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)_contentBlockerInterface
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [(MERemoteExtensionContext *)self _extensionInterface];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(MERemoteExtensionContext *)self _extensionInterface];
    v6 = [v5 handlerForContentBlocker];
  }

  else
  {
    v7 = +[MERemoteExtensionContext log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(MERemoteExtensionContext *)self _extensionInterface];
      v11 = 138412546;
      v12 = v8;
      v13 = 2112;
      v14 = @"handlerForContentBlocker";
      _os_log_impl(&dword_257F67000, v7, OS_LOG_TYPE_DEFAULT, "ExtensionContext:%@ does not implement %@", &v11, 0x16u);
    }

    v6 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)contentRulesJSON
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = +[MERemoteExtensionContext log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(a2);
    v10 = 138412546;
    v11 = self;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&dword_257F67000, v4, OS_LOG_TYPE_DEFAULT, "ExtensionContext:%@ Forwarding invocation [%@]", &v10, 0x16u);
  }

  v6 = [(MERemoteExtensionContext *)self _contentBlockerInterface];
  v7 = [v6 contentRulesJSON];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)contentRulesJSONWithCompletionHandler:(id)a3
{
  v5 = a3;
  v4 = [(MERemoteExtensionContext *)self contentRulesJSON];
  v5[2](v5, v4);
}

- (id)_mailActionInterface
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [(MERemoteExtensionContext *)self _extensionInterface];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(MERemoteExtensionContext *)self _extensionInterface];
    v6 = [v5 handlerForMessageActions];
  }

  else
  {
    v7 = +[MERemoteExtensionContext log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(MERemoteExtensionContext *)self _extensionInterface];
      v11 = 138412546;
      v12 = v8;
      v13 = 2112;
      v14 = @"handlerForMessageActions";
      _os_log_impl(&dword_257F67000, v7, OS_LOG_TYPE_DEFAULT, "ExtensionContext:%@ does not implement %@", &v11, 0x16u);
    }

    v6 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)decideActionForMessage:(id)a3 completionHandler:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = +[MERemoteExtensionContext log];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = NSStringFromSelector(a2);
    v13 = 138412546;
    v14 = self;
    v15 = 2112;
    v16 = v10;
    _os_log_impl(&dword_257F67000, v9, OS_LOG_TYPE_DEFAULT, "ExtensionContext:%@ Forwarding invocation [%@]", &v13, 0x16u);
  }

  v11 = [(MERemoteExtensionContext *)self _mailActionInterface];
  [v11 decideActionForMessage:v7 completionHandler:v8];

  v12 = *MEMORY[0x277D85DE8];
}

- (NSArray)requiredHeaders
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = +[MERemoteExtensionContext log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(a2);
    v10 = 138412546;
    v11 = self;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&dword_257F67000, v4, OS_LOG_TYPE_DEFAULT, "ExtensionContext:%@ Forwarding invocation [%@]", &v10, 0x16u);
  }

  v6 = [(MERemoteExtensionContext *)self _mailActionInterface];
  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 requiredHeaders];
  }

  else
  {
    v7 = MEMORY[0x277CBEBF8];
  }

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)requiredHeadersWithCompletion:(id)a3
{
  v5 = a3;
  v4 = [(MERemoteExtensionContext *)self requiredHeaders];
  v5[2](v5, v4);
}

- (id)_composeSessionInterfaceForSession:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(MERemoteExtensionContext *)self remoteHostPoxy];
  [v4 setRemoteHostContext:v5];

  v6 = [(NSMapTable *)self->_composeSessionToHandlerMap objectForKey:v4];
  if (!v6)
  {
    v7 = [(MERemoteExtensionContext *)self _extensionInterface];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = [(MERemoteExtensionContext *)self _extensionInterface];
      v6 = [v9 handlerForComposeSession:v4];

      [(NSMapTable *)self->_composeSessionToHandlerMap setObject:v6 forKey:v4];
    }

    else
    {
      v10 = +[MERemoteExtensionContext log];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [(MERemoteExtensionContext *)self _extensionInterface];
        v14 = 138412546;
        v15 = v11;
        v16 = 2112;
        v17 = @"handlerForComposeSession:";
        _os_log_impl(&dword_257F67000, v10, OS_LOG_TYPE_DEFAULT, "ExtensionContext:%@ does not implement %@", &v14, 0x16u);
      }

      v6 = 0;
    }
  }

  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)mailComposeSessionDidBegin:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = +[MERemoteExtensionContext log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    v10 = 138412546;
    v11 = self;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&dword_257F67000, v6, OS_LOG_TYPE_DEFAULT, "ExtensionContext:%@ Forwarding invocation [%@]", &v10, 0x16u);
  }

  v8 = [(MERemoteExtensionContext *)self _composeSessionInterfaceForSession:v5];
  [v8 mailComposeSessionDidBegin:v5];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)mailComposeSessionDidEnd:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = +[MERemoteExtensionContext log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    v10 = 138412546;
    v11 = self;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&dword_257F67000, v6, OS_LOG_TYPE_DEFAULT, "ExtensionContext:%@ Forwarding invocation [%@]", &v10, 0x16u);
  }

  v8 = [(MERemoteExtensionContext *)self _composeSessionInterfaceForSession:v5];
  [v8 mailComposeSessionDidEnd:v5];

  [(NSMapTable *)self->_composeSessionToHandlerMap removeObjectForKey:v5];
  v9 = *MEMORY[0x277D85DE8];
}

- (id)viewControllerForSession:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(MERemoteExtensionContext *)self _composeSessionInterfaceForSession:v4];
  v6 = [v5 viewControllerForSession:v4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = +[MERemoteExtensionContext log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412546;
      v13 = self;
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&dword_257F67000, v7, OS_LOG_TYPE_DEFAULT, "ExtensionContext:%@ returned view controller: %@", &v12, 0x16u);
    }

    v8 = v6;
  }

  else
  {
    v9 = +[MERemoteExtensionContext log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [MERemoteExtensionContext viewControllerForSession:];
    }

    v8 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)session:(id)a3 annotateAddressesWithCompletionHandler:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [(MERemoteExtensionContext *)self _composeSessionInterfaceForSession:v7];
  if (objc_opt_respondsToSelector())
  {
    v10 = +[MERemoteExtensionContext log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = NSStringFromSelector(a2);
      v15 = 138412546;
      v16 = self;
      v17 = 2112;
      v18 = v11;
      _os_log_impl(&dword_257F67000, v10, OS_LOG_TYPE_DEFAULT, "ExtensionContext:%@ Forwarding invocation [%@]", &v15, 0x16u);
    }

    [v9 session:v7 annotateAddressesWithCompletionHandler:v8];
  }

  else
  {
    v12 = +[MERemoteExtensionContext log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = NSStringFromSelector(a2);
      v15 = 138412546;
      v16 = self;
      v17 = 2112;
      v18 = v13;
      _os_log_impl(&dword_257F67000, v12, OS_LOG_TYPE_DEFAULT, "ExtensionContext:%@ Does not implement selector [%@]", &v15, 0x16u);
    }

    v8[2](v8, MEMORY[0x277CBEC10]);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)session:(id)a3 canSendMessageWithCompletionHandler:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [(MERemoteExtensionContext *)self _composeSessionInterfaceForSession:v7];
  if (objc_opt_respondsToSelector())
  {
    v10 = +[MERemoteExtensionContext log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = NSStringFromSelector(a2);
      v15 = 138412546;
      v16 = self;
      v17 = 2112;
      v18 = v11;
      _os_log_impl(&dword_257F67000, v10, OS_LOG_TYPE_DEFAULT, "ExtensionContext:%@ Forwarding invocation [%@]", &v15, 0x16u);
    }

    [v9 session:v7 canSendMessageWithCompletionHandler:v8];
  }

  else
  {
    v12 = +[MERemoteExtensionContext log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = NSStringFromSelector(a2);
      v15 = 138412546;
      v16 = self;
      v17 = 2112;
      v18 = v13;
      _os_log_impl(&dword_257F67000, v12, OS_LOG_TYPE_DEFAULT, "ExtensionContext:%@ Does not implement selector [%@]", &v15, 0x16u);
    }

    v8[2](v8, 0);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)session:(id)a3 hasSendMessageCheckWithCompletion:(id)a4
{
  v8 = a4;
  v6 = [(MERemoteExtensionContext *)self _composeSessionInterfaceForSession:a3];
  v7 = objc_opt_respondsToSelector();
  v8[2](v8, v7 & 1);
}

- (id)additionalHeadersForSession:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [(MERemoteExtensionContext *)self _composeSessionInterfaceForSession:v5];
  if (objc_opt_respondsToSelector())
  {
    v7 = +[MERemoteExtensionContext log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = NSStringFromSelector(a2);
      v14 = 138412546;
      v15 = self;
      v16 = 2112;
      v17 = v8;
      _os_log_impl(&dword_257F67000, v7, OS_LOG_TYPE_DEFAULT, "ExtensionContext:%@ Forwarding invocation [%@]", &v14, 0x16u);
    }

    v9 = [v6 additionalHeadersForSession:v5];
  }

  else
  {
    v10 = +[MERemoteExtensionContext log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = NSStringFromSelector(a2);
      v14 = 138412546;
      v15 = self;
      v16 = 2112;
      v17 = v11;
      _os_log_impl(&dword_257F67000, v10, OS_LOG_TYPE_DEFAULT, "ExtensionContext:%@ Does not implement selector [%@]", &v14, 0x16u);
    }

    v9 = MEMORY[0x277CBEC10];
  }

  v12 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)session:(id)a3 getAdditionalHeadersWithCompletion:(id)a4
{
  v7 = a4;
  v6 = [(MERemoteExtensionContext *)self additionalHeadersForSession:a3];
  v7[2](v7, v6);
}

- (id)_messageSecurityHandlerInterface
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [(MERemoteExtensionContext *)self _extensionInterface];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(MERemoteExtensionContext *)self _extensionInterface];
    v6 = [v5 handlerForMessageSecurity];
  }

  else
  {
    v7 = +[MERemoteExtensionContext log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(MERemoteExtensionContext *)self _extensionInterface];
      v11 = 138412546;
      v12 = v8;
      v13 = 2112;
      v14 = @"handlerForMessageSecurity";
      _os_log_impl(&dword_257F67000, v7, OS_LOG_TYPE_DEFAULT, "ExtensionContext:%@ does not implement %@", &v11, 0x16u);
    }

    v6 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)getEncodingStatusForMessage:(id)a3 composeContext:(id)a4 completionHandler:(id)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = +[MERemoteExtensionContext log];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = NSStringFromSelector(a2);
    v16 = 138412546;
    v17 = self;
    v18 = 2112;
    v19 = v13;
    _os_log_impl(&dword_257F67000, v12, OS_LOG_TYPE_DEFAULT, "ExtensionContext:%@ Forwarding invocation [%@]", &v16, 0x16u);
  }

  v14 = [(MERemoteExtensionContext *)self _messageSecurityHandlerInterface];
  [v14 getEncodingStatusForMessage:v9 composeContext:v10 completionHandler:v11];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)encodeMessage:(id)a3 composeContext:(id)a4 completionHandler:(id)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = +[MERemoteExtensionContext log];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = NSStringFromSelector(a2);
    v16 = 138412546;
    v17 = self;
    v18 = 2112;
    v19 = v13;
    _os_log_impl(&dword_257F67000, v12, OS_LOG_TYPE_DEFAULT, "ExtensionContext:%@ Forwarding invocation [%@]", &v16, 0x16u);
  }

  v14 = [(MERemoteExtensionContext *)self _messageSecurityHandlerInterface];
  [v14 encodeMessage:v9 composeContext:v10 completionHandler:v11];

  v15 = *MEMORY[0x277D85DE8];
}

- (id)decodedMessageForMessageData:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = +[MERemoteExtensionContext log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = NSStringFromSelector(a2);
    [(MERemoteExtensionContext *)self decodedMessageForMessageData:v6, v9, v5];
  }

  v7 = *MEMORY[0x277D85DE8];
  return 0;
}

- (id)decodedMessageForMessageData:(id)a3 decodeContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MERemoteExtensionContext *)self _messageSecurityHandlerInterface];
  v9 = objc_opt_respondsToSelector();

  v10 = [(MERemoteExtensionContext *)self _messageSecurityHandlerInterface];
  if (v9)
  {
    [v10 performSelector:sel_decodedMessageForMessageData_decodeContext_ withObject:v6 withObject:v7];
  }

  else
  {
    [v10 decodedMessageForMessageData:v6];
  }
  v11 = ;

  return v11;
}

- (void)decodedMessageForMessageData:(id)a3 decodeContext:(id)a4 withCompletionHandler:(id)a5
{
  v9 = a5;
  v8 = [(MERemoteExtensionContext *)self decodedMessageForMessageData:a3 decodeContext:a4];
  v9[2](v9, v8);
}

- (id)extensionViewControllerForMessageSigners:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(MERemoteExtensionContext *)self _messageSecurityHandlerInterface];
  v6 = [v5 extensionViewControllerForMessageSigners:v4];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = +[MERemoteExtensionContext log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412546;
      v13 = self;
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&dword_257F67000, v7, OS_LOG_TYPE_DEFAULT, "ExtensionContext:%@ returned view controller: %@", &v12, 0x16u);
    }

    v8 = v6;
  }

  else
  {
    v9 = +[MERemoteExtensionContext log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [MERemoteExtensionContext extensionViewControllerForMessageSigners:];
    }

    v8 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)extensionViewControllerForMessageContext:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(MERemoteExtensionContext *)self _messageSecurityHandlerInterface];
  v6 = [v5 extensionViewControllerForMessageContext:v4];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = +[MERemoteExtensionContext log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412546;
      v13 = self;
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&dword_257F67000, v7, OS_LOG_TYPE_DEFAULT, "ExtensionContext:%@ returned view controller: %@", &v12, 0x16u);
    }

    v8 = v6;
  }

  else
  {
    v9 = +[MERemoteExtensionContext log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [MERemoteExtensionContext extensionViewControllerForMessageSigners:];
    }

    v8 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)primaryActionClickedForMessageContext:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MERemoteExtensionContext *)self _messageSecurityHandlerInterface];

  if (v8)
  {
    v9 = [(MERemoteExtensionContext *)self _messageSecurityHandlerInterface];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __84__MERemoteExtensionContext_primaryActionClickedForMessageContext_completionHandler___block_invoke;
    v10[3] = &unk_279859380;
    v10[4] = self;
    v11 = v7;
    [v9 primaryActionClickedForMessageContext:v6 completionHandler:v10];
  }

  else
  {
    (*(v7 + 2))(v7, 0);
  }
}

void __84__MERemoteExtensionContext_primaryActionClickedForMessageContext_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v4 = +[MERemoteExtensionContext log];
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        __84__MERemoteExtensionContext_primaryActionClickedForMessageContext_completionHandler___block_invoke_cold_1(a1);
      }

      goto LABEL_11;
    }
  }

  else
  {
    v5 = +[MERemoteExtensionContext log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v9 = 138412290;
      v10 = v6;
      _os_log_impl(&dword_257F67000, v5, OS_LOG_TYPE_DEFAULT, "ExtensionContext:%@ did not return a view controller for primary action clicked", &v9, 0xCu);
    }
  }

  v4 = +[MERemoteExtensionContext log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v9 = 138412546;
    v10 = v7;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_257F67000, v4, OS_LOG_TYPE_DEFAULT, "ExtensionContext:%@ returned view controller for primary action clicked : %@", &v9, 0x16u);
  }

LABEL_11:

  (*(*(a1 + 40) + 16))();
  v8 = *MEMORY[0x277D85DE8];
}

void __42__MERemoteExtensionContext_remoteHostPoxy__block_invoke_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  LODWORD(v4) = 138412546;
  *(&v4 + 4) = *(a1 + 32);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_257F67000, v1, v2, "Fetching extension's remote host proxy %@ failed with error %@", v4, DWORD2(v4));
  v3 = *MEMORY[0x277D85DE8];
}

- (void)_createPrincipalObject
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(&dword_257F67000, v0, OS_LOG_TYPE_ERROR, "ExtensionContext<%p>: principalObject can not be nil.", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)viewControllerForSession:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_fault_impl(&dword_257F67000, v0, OS_LOG_TYPE_FAULT, "ExtensionContext:%@ Returned an invalid view controller: %@", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)decodedMessageForMessageData:(uint8_t *)buf .cold.1(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_257F67000, log, OS_LOG_TYPE_ERROR, "ExtensionContext:%@ should not invoke method [%@]", buf, 0x16u);
}

- (void)extensionViewControllerForMessageSigners:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_257F67000, v0, v1, "ExtensionContext:%@ returned an invalid view controller: %@");
  v2 = *MEMORY[0x277D85DE8];
}

void __84__MERemoteExtensionContext_primaryActionClickedForMessageContext_completionHandler___block_invoke_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  LODWORD(v4) = 138412546;
  *(&v4 + 4) = *(a1 + 32);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_257F67000, v1, v2, "ExtensionContext:%@ returned an invalid view controller for primary action clicked: %@", v4, DWORD2(v4));
  v3 = *MEMORY[0x277D85DE8];
}

@end