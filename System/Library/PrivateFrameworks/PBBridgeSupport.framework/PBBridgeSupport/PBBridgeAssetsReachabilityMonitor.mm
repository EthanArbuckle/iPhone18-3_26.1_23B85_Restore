@interface PBBridgeAssetsReachabilityMonitor
+ (void)checkServerReachabilityWithCompletion:(id)a3;
@end

@implementation PBBridgeAssetsReachabilityMonitor

+ (void)checkServerReachabilityWithCompletion:(id)a3
{
  v3 = a3;
  if (checkServerReachabilityWithCompletion__onceToken != -1)
  {
    +[PBBridgeAssetsReachabilityMonitor checkServerReachabilityWithCompletion:];
  }

  v4 = _responseQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__PBBridgeAssetsReachabilityMonitor_checkServerReachabilityWithCompletion___block_invoke_2;
  block[3] = &unk_2799F3E90;
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, block);
}

uint64_t __75__PBBridgeAssetsReachabilityMonitor_checkServerReachabilityWithCompletion___block_invoke()
{
  _responseQueue = dispatch_queue_create("com.apple.ReachabilityResponse", 0);

  return MEMORY[0x2821F96F8]();
}

void __75__PBBridgeAssetsReachabilityMonitor_checkServerReachabilityWithCompletion___block_invoke_2(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v24 = 0;
  v2 = ASServerURLForAssetType();
  v3 = 0;
  if (v3)
  {
    v4 = pbb_setup_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v26 = v3;
      v5 = "Asset Server Lookup Failed with Error (%@): Returning Vacuously True";
      v6 = v4;
      v7 = 12;
LABEL_14:
      _os_log_impl(&dword_25DE64000, v6, OS_LOG_TYPE_DEFAULT, v5, buf, v7);
    }
  }

  else
  {
    v8 = *MEMORY[0x277CBECE8];
    v9 = [v2 host];
    v10 = SCNetworkReachabilityCreateWithName(v8, [v9 UTF8String]);

    if (v10)
    {
      flags = 0;
      if (SCNetworkReachabilityGetFlags(v10, &flags))
      {
        v11 = flags;
        v12 = pbb_mobileasset_log();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = [v2 host];
          *buf = 138412546;
          v26 = v13;
          v27 = 1024;
          v28 = (v11 >> 1) & 1;
          _os_log_impl(&dword_25DE64000, v12, OS_LOG_TYPE_DEFAULT, "Network Reachable (%@): %d", buf, 0x12u);
        }

        CFRelease(v10);
        if ((v11 & 2) != 0)
        {
          v14 = [objc_alloc(MEMORY[0x277CCAD20]) initWithURL:v2 cachePolicy:1 timeoutInterval:1.0];
          v15 = MEMORY[0x277CCAD30];
          v16 = [MEMORY[0x277CCAD38] defaultSessionConfiguration];
          v17 = [v15 sessionWithConfiguration:v16];
          v21[0] = MEMORY[0x277D85DD0];
          v21[1] = 3221225472;
          v21[2] = __75__PBBridgeAssetsReachabilityMonitor_checkServerReachabilityWithCompletion___block_invoke_284;
          v21[3] = &unk_2799F4490;
          v22 = *(a1 + 32);
          v18 = [v17 dataTaskWithRequest:v14 completionHandler:v21];

          [v18 resume];
          goto LABEL_17;
        }
      }

      else
      {
        CFRelease(v10);
      }
    }

    v4 = pbb_mobileasset_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v5 = "Network Unreachable: Returning Vacuously True";
      v6 = v4;
      v7 = 2;
      goto LABEL_14;
    }
  }

  v19 = *(a1 + 32);
  if (v19)
  {
    (*(v19 + 16))(v19, 1);
  }

LABEL_17:

  v20 = *MEMORY[0x277D85DE8];
}

uint64_t __75__PBBridgeAssetsReachabilityMonitor_checkServerReachabilityWithCompletion___block_invoke_284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a4 == 0);
  }

  return result;
}

@end