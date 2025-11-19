@interface OSICLPCInterface
@end

@implementation OSICLPCInterface

uint64_t __35___OSICLPCInterface_sharedInstance__block_invoke()
{
  sharedInstance_instance_2 = objc_alloc_init(_OSICLPCInterface);

  return MEMORY[0x2821F96F8]();
}

void __60___OSICLPCInterface_updatePerformanceControlWithMitigation___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 32))
  {
    if ([*(a1 + 40) level] == 50 && (+[_OSIBLMState sharedInstance](_OSIBLMState, "sharedInstance"), v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "isIBLMCurrentlyEnabled"), v3, v4))
    {
      v5 = [*(a1 + 32) log];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25D171000, v5, OS_LOG_TYPE_DEFAULT, "Engaging into IBLM mitigation for CLPC", buf, 2u);
      }

      v6 = *(*(a1 + 32) + 32);
      v7 = *(a1 + 48);
      v14 = 0;
      v8 = &v14;
      v9 = &v14;
      v10 = 1;
    }

    else
    {
      v11 = [*(a1 + 32) log];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25D171000, v11, OS_LOG_TYPE_DEFAULT, "Disengaging from IBLM mitigation for CLPC", buf, 2u);
      }

      v6 = *(*(a1 + 32) + 32);
      v7 = *(a1 + 48);
      v13 = 0;
      v8 = &v13;
      v9 = &v13;
      v10 = 0;
    }

    [v6 setIntelligentBatteryLifeMode:v10 options:v7 error:{v9, v13, v14}];
    v12 = *v8;
    if (v12)
    {
      if (os_log_type_enabled(*(*(a1 + 32) + 24), OS_LOG_TYPE_ERROR))
      {
        [_OSICLPCInterface stop];
      }
    }
  }

  else if (os_log_type_enabled(*(v1 + 24), OS_LOG_TYPE_ERROR))
  {
    __60___OSICLPCInterface_updatePerformanceControlWithMitigation___block_invoke_cold_2();
  }
}

@end