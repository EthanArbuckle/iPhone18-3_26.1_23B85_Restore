@interface ACCAppLinksIconInfo
+ (id)sharedManager;
- (ACCAppLinksIconInfo)init;
- (id)_init;
- (void)getIconDataForBundleID:(id)a3 forIconSize:(double)a4 withReply:(id)a5;
@end

@implementation ACCAppLinksIconInfo

+ (id)sharedManager
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__ACCAppLinksIconInfo_sharedManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedManager_once_0 != -1)
  {
    dispatch_once(&sharedManager_once_0, block);
  }

  v2 = sharedManager_sharedInstance_0;

  return v2;
}

uint64_t __36__ACCAppLinksIconInfo_sharedManager__block_invoke(uint64_t a1)
{
  sharedManager_sharedInstance_0 = [objc_alloc(*(a1 + 32)) _init];

  return MEMORY[0x2821F96F8]();
}

- (ACCAppLinksIconInfo)init
{
  v4 = MEMORY[0x277CBEAD8];
  v5 = *MEMORY[0x277CBE658];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = NSStringFromSelector(sel_sharedManager);
  v9 = NSStringFromSelector(a2);
  [v4 raise:v5 format:{@"Use +[%@ %@] instead of -%@.", v7, v8, v9}];

  return 0;
}

- (id)_init
{
  init_logging();
  v8.receiver = self;
  v8.super_class = ACCAppLinksIconInfo;
  v3 = [(ACCAppLinksIconInfo *)&v8 init];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x277CCAE80]) initWithServiceName:@"com.apple.coreaccessories.ACCAppLinksIconService"];
    xpcConnection = v3->_xpcConnection;
    v3->_xpcConnection = v4;

    v6 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_283537620];
    [(NSXPCConnection *)v3->_xpcConnection setRemoteObjectInterface:v6];

    [(NSXPCConnection *)v3->_xpcConnection resume];
  }

  return v3;
}

- (void)getIconDataForBundleID:(id)a3 forIconSize:(double)a4 withReply:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (v9)
  {
    v10 = [(ACCAppLinksIconInfo *)self xpcConnection];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __68__ACCAppLinksIconInfo_getIconDataForBundleID_forIconSize_withReply___block_invoke;
    v18[3] = &unk_278486CA8;
    v11 = v9;
    v19 = v11;
    v12 = [v10 remoteObjectProxyWithErrorHandler:v18];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __68__ACCAppLinksIconInfo_getIconDataForBundleID_forIconSize_withReply___block_invoke_13;
    v16[3] = &unk_278486F88;
    v17 = v11;
    [v12 getIconDataForBundleID:v8 forIconSize:v16 withReply:a4];

    v13 = v19;
  }

  else
  {
    if (gLogObjects)
    {
      v14 = gNumLogObjects < 5;
    }

    else
    {
      v14 = 1;
    }

    if (v14)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCAppLinksIconInfo getIconDataForBundleID:forIconSize:withReply:];
      }

      v13 = MEMORY[0x277D86220];
      v15 = MEMORY[0x277D86220];
    }

    else
    {
      v13 = *(gLogObjects + 32);
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [ACCAppLinksIconInfo getIconDataForBundleID:v13 forIconSize:? withReply:?];
    }
  }
}

void __68__ACCAppLinksIconInfo_getIconDataForBundleID_forIconSize_withReply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 5;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCAppLinksIconInfo getIconDataForBundleID:forIconSize:withReply:];
    }

    v6 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  else
  {
    v6 = *(gLogObjects + 32);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
  {
    __68__ACCAppLinksIconInfo_getIconDataForBundleID_forIconSize_withReply___block_invoke_cold_2(v3, v6);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)getIconDataForBundleID:forIconSize:withReply:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_221CB0000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v1, 0x12u);
  v0 = *MEMORY[0x277D85DE8];
}

void __68__ACCAppLinksIconInfo_getIconDataForBundleID_forIconSize_withReply___block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_fault_impl(&dword_221CB0000, a2, OS_LOG_TYPE_FAULT, "can't invoke remote object %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end