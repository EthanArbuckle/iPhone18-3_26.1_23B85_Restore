@interface CIContext
@end

@implementation CIContext

void __67__CIContext_IconServicesAdditions___MI_sharedIconCompositorContext__block_invoke()
{
  v11[4] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CBF910];
  v10[0] = *MEMORY[0x277CBF918];
  v10[1] = v0;
  v11[0] = MEMORY[0x277CBEC38];
  v11[1] = MEMORY[0x277CBEC28];
  v1 = *MEMORY[0x277CBF928];
  v10[2] = *MEMORY[0x277CBF920];
  v10[3] = v1;
  v11[2] = &unk_286AC05F0;
  v11[3] = @"MobileIcons-Scaler";
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:4];
  v3 = [objc_alloc(MEMORY[0x277CBF740]) initWithOptions:v2];
  v4 = getenv("HOLD_OS_TRANSACTION_UNTIL_CICONTEXT_CACHE_CLEAR");
  if (v4 && atoi(v4))
  {
    if (_LIDefaultLog_onceToken_0 != -1)
    {
      __31__LICacheClearScheduler_object__block_invoke_cold_5();
    }

    v5 = _LIDefaultLog_log_0;
    v6 = 1;
    if (os_log_type_enabled(_LIDefaultLog_log_0, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&dword_259AA3000, v5, OS_LOG_TYPE_INFO, "iconservicesagent will hold an os_transaction while the scheduled CIContext cache clear is pending.", v9, 2u);
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = [[LICacheClearScheduler alloc] initWithObject:v3 delay:v6 holdTransaction:&__block_literal_global_86 clearHandler:5.0];
  v8 = _MI_sharedIconCompositorContext_contextCacheClearScheduler;
  _MI_sharedIconCompositorContext_contextCacheClearScheduler = v7;
}

@end