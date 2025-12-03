@interface FSModuleExtension
+ (id)moduleExtensionForAppex:(id)appex;
- (BOOL)fskitdIsClient:(id)client;
- (BOOL)shouldAcceptConnection:(id)connection;
- (FSModuleConnector)fskitdCurrentConnection;
- (NSXPCListener)secondaryListener;
- (void)dealloc;
- (void)didFinishLaunching;
- (void)sendConfigureUserClientWithReplyHandler:(id)handler;
- (void)sendIsVolumeUsed:(id)used bundle:(id)bundle replyHandler:(id)handler;
- (void)sendWipeResource:(id)resource replyHandler:(id)handler;
@end

@implementation FSModuleExtension

- (void)dealloc
{
  if (gSecondaryListener)
  {
    [gSecondaryListener invalidate];
    v3 = gSecondaryListener;
    gSecondaryListener = 0;
  }

  v4.receiver = self;
  v4.super_class = FSModuleExtension;
  [(FSModuleExtension *)&v4 dealloc];
}

- (void)didFinishLaunching
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (NSXPCListener)secondaryListener
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!gSecondaryListener)
  {
    anonymousListener = [MEMORY[0x277CCAE98] anonymousListener];
    v6 = gSecondaryListener;
    gSecondaryListener = anonymousListener;

    if (gSecondaryListener)
    {
      [gSecondaryListener setDelegate:selfCopy];
      [gSecondaryListener resume];
    }
  }

  v7 = fskit_std_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = gSecondaryListener;
    _os_log_impl(&dword_24A929000, v7, OS_LOG_TYPE_DEFAULT, "Set secondary listener up %@", &v11, 0xCu);
  }

  v8 = gSecondaryListener;
  objc_sync_exit(selfCopy);

  objc_autoreleasePoolPop(v3);
  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (FSModuleConnector)fskitdCurrentConnection
{
  WeakRetained = objc_loadWeakRetained(&self->_fskitdCurrentConnection);

  return WeakRetained;
}

+ (id)moduleExtensionForAppex:(id)appex
{
  appexCopy = appex;
  v5 = [[FSModuleExtension alloc] init];
  p_isa = &v5->super.super.isa;
  if (v5)
  {
    [(_EXExtension *)v5 setDelegate:appexCopy];
    objc_storeStrong(p_isa + 6, appex);
    v7 = fskit_std_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      +[FSModuleExtension(Project) moduleExtensionForAppex:];
    }
  }

  return p_isa;
}

- (BOOL)fskitdIsClient:(id)client
{
  clientCopy = client;
  v4 = clientCopy;
  memset(&v13[1], 0, sizeof(audit_token_t));
  if (clientCopy)
  {
    [clientCopy auditToken];
  }

  v13[0] = v13[1];
  v5 = SecTaskCreateWithAuditToken(0, v13);
  if (v5)
  {
    v6 = v5;
    v7 = SecTaskCopyValueForEntitlement(v5, @"application-identifier", 0);
    if (v7)
    {
      v8 = v7;
      v9 = CFGetTypeID(v7);
      if (v9 == CFStringGetTypeID())
      {
LABEL_8:
        CFRelease(v6);
        goto LABEL_10;
      }

      CFRelease(v8);
    }

    v8 = &stru_285DEFA28;
    goto LABEL_8;
  }

  v8 = &stru_285DEFA28;
LABEL_10:
  v10 = fskit_std_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [FSModuleExtension(Project) fskitdIsClient:];
  }

  v11 = [(__CFString *)v8 isEqualToString:@"com.apple.fskitd"];
  return v11;
}

- (BOOL)shouldAcceptConnection:(id)connection
{
  v13 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  v5 = objc_opt_new();
  [v5 setOurModule:self];
  [v5 setOurConnection:connectionCopy];
  if ([(FSModuleExtension *)self fskitdIsClient:connectionCopy])
  {
    objc_storeWeak(&self->_fskitdCurrentConnection, v5);
  }

  [connectionCopy setExportedObject:v5];
  v6 = +[FSKitConstants FSModuleExtensionXPCProtocol];
  [connectionCopy setExportedInterface:v6];

  v7 = +[FSKitConstants FSModuleExtensionHostXPCProtocol];
  [connectionCopy setRemoteObjectInterface:v7];

  [connectionCopy resume];
  [(NSMutableArray *)self->_connectors addObject:v5];
  v8 = fskit_std_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315138;
    v12 = "[FSModuleExtension(Project) shouldAcceptConnection:]";
    _os_log_impl(&dword_24A929000, v8, OS_LOG_TYPE_DEFAULT, "%s returning YES", &v11, 0xCu);
  }

  v9 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)sendWipeResource:(id)resource replyHandler:(id)handler
{
  resourceCopy = resource;
  handlerCopy = handler;
  v8 = fskit_std_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [FSModuleExtension(Project) sendWipeResource:replyHandler:];
  }

  WeakRetained = objc_loadWeakRetained(&self->_fskitdCurrentConnection);
  if (WeakRetained)
  {
    v10 = objc_loadWeakRetained(&self->_fskitdCurrentConnection);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __60__FSModuleExtension_Project__sendWipeResource_replyHandler___block_invoke;
    v14[3] = &unk_278FECE20;
    v15 = handlerCopy;
    [v10 sendWipeResource:resourceCopy replyHandler:v14];

    v11 = fskit_std_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [FSModuleExtension(Project) sendWipeResource:replyHandler:];
    }

    v12 = v15;
  }

  else
  {
    v13 = fskit_std_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [FSModuleExtension(Project) sendWipeResource:? replyHandler:?];
    }

    v12 = fs_errorForPOSIXError(45);
    (*(handlerCopy + 2))(handlerCopy, v12);
  }
}

- (void)sendIsVolumeUsed:(id)used bundle:(id)bundle replyHandler:(id)handler
{
  usedCopy = used;
  bundleCopy = bundle;
  handlerCopy = handler;
  v11 = fskit_std_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [FSModuleExtension(Project) sendIsVolumeUsed:bundle:replyHandler:];
  }

  WeakRetained = objc_loadWeakRetained(&self->_fskitdCurrentConnection);
  if (WeakRetained)
  {
    v13 = objc_loadWeakRetained(&self->_fskitdCurrentConnection);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __67__FSModuleExtension_Project__sendIsVolumeUsed_bundle_replyHandler___block_invoke;
    v17[3] = &unk_278FECE48;
    v18 = handlerCopy;
    [v13 sendIsVolumeUsed:usedCopy bundle:bundleCopy replyHandler:v17];

    v14 = fskit_std_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [FSModuleExtension(Project) sendIsVolumeUsed:bundle:replyHandler:];
    }

    v15 = v18;
  }

  else
  {
    v16 = fskit_std_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [FSModuleExtension(Project) sendIsVolumeUsed:? bundle:? replyHandler:?];
    }

    v15 = fs_errorForPOSIXError(45);
    (*(handlerCopy + 2))(handlerCopy, 0, v15);
  }
}

- (void)sendConfigureUserClientWithReplyHandler:(id)handler
{
  handlerCopy = handler;
  v5 = self->_fsMachPort;
  v6 = fskit_std_log();
  v7 = v6;
  if (!v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [FSModuleExtension(Project) sendConfigureUserClientWithReplyHandler:?];
    }

    v12 = 6;
    goto LABEL_14;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [FSModuleExtension(Project) sendConfigureUserClientWithReplyHandler:];
  }

  WeakRetained = objc_loadWeakRetained(&self->_fskitdCurrentConnection);
  if (!WeakRetained)
  {
    v13 = fskit_std_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [FSModuleExtension(Project) sendConfigureUserClientWithReplyHandler:?];
    }

    v12 = 45;
LABEL_14:
    v11 = fs_errorForPOSIXError(v12);
    handlerCopy[2](handlerCopy, v11);
    goto LABEL_15;
  }

  v9 = objc_loadWeakRetained(&self->_fskitdCurrentConnection);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __70__FSModuleExtension_Project__sendConfigureUserClientWithReplyHandler___block_invoke;
  v14[3] = &unk_278FECE20;
  v15 = handlerCopy;
  [v9 sendConfigureUserClient:v5 replyHandler:v14];

  v10 = fskit_std_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [FSModuleExtension(Project) sendConfigureUserClientWithReplyHandler:];
  }

  v11 = v15;
LABEL_15:
}

@end