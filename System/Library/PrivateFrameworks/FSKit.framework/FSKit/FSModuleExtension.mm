@interface FSModuleExtension
+ (id)moduleExtensionForAppex:(id)a3;
- (BOOL)fskitdIsClient:(id)a3;
- (BOOL)shouldAcceptConnection:(id)a3;
- (FSModuleConnector)fskitdCurrentConnection;
- (NSXPCListener)secondaryListener;
- (void)dealloc;
- (void)didFinishLaunching;
- (void)sendConfigureUserClientWithReplyHandler:(id)a3;
- (void)sendIsVolumeUsed:(id)a3 bundle:(id)a4 replyHandler:(id)a5;
- (void)sendWipeResource:(id)a3 replyHandler:(id)a4;
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
  v4 = self;
  objc_sync_enter(v4);
  if (!gSecondaryListener)
  {
    v5 = [MEMORY[0x277CCAE98] anonymousListener];
    v6 = gSecondaryListener;
    gSecondaryListener = v5;

    if (gSecondaryListener)
    {
      [gSecondaryListener setDelegate:v4];
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
  objc_sync_exit(v4);

  objc_autoreleasePoolPop(v3);
  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (FSModuleConnector)fskitdCurrentConnection
{
  WeakRetained = objc_loadWeakRetained(&self->_fskitdCurrentConnection);

  return WeakRetained;
}

+ (id)moduleExtensionForAppex:(id)a3
{
  v4 = a3;
  v5 = [[FSModuleExtension alloc] init];
  p_isa = &v5->super.super.isa;
  if (v5)
  {
    [(_EXExtension *)v5 setDelegate:v4];
    objc_storeStrong(p_isa + 6, a3);
    v7 = fskit_std_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      +[FSModuleExtension(Project) moduleExtensionForAppex:];
    }
  }

  return p_isa;
}

- (BOOL)fskitdIsClient:(id)a3
{
  v3 = a3;
  v4 = v3;
  memset(&v13[1], 0, sizeof(audit_token_t));
  if (v3)
  {
    [v3 auditToken];
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

- (BOOL)shouldAcceptConnection:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  [v5 setOurModule:self];
  [v5 setOurConnection:v4];
  if ([(FSModuleExtension *)self fskitdIsClient:v4])
  {
    objc_storeWeak(&self->_fskitdCurrentConnection, v5);
  }

  [v4 setExportedObject:v5];
  v6 = +[FSKitConstants FSModuleExtensionXPCProtocol];
  [v4 setExportedInterface:v6];

  v7 = +[FSKitConstants FSModuleExtensionHostXPCProtocol];
  [v4 setRemoteObjectInterface:v7];

  [v4 resume];
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

- (void)sendWipeResource:(id)a3 replyHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
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
    v15 = v7;
    [v10 sendWipeResource:v6 replyHandler:v14];

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
    (*(v7 + 2))(v7, v12);
  }
}

- (void)sendIsVolumeUsed:(id)a3 bundle:(id)a4 replyHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
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
    v18 = v10;
    [v13 sendIsVolumeUsed:v8 bundle:v9 replyHandler:v17];

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
    (*(v10 + 2))(v10, 0, v15);
  }
}

- (void)sendConfigureUserClientWithReplyHandler:(id)a3
{
  v4 = a3;
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
    v4[2](v4, v11);
    goto LABEL_15;
  }

  v9 = objc_loadWeakRetained(&self->_fskitdCurrentConnection);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __70__FSModuleExtension_Project__sendConfigureUserClientWithReplyHandler___block_invoke;
  v14[3] = &unk_278FECE20;
  v15 = v4;
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