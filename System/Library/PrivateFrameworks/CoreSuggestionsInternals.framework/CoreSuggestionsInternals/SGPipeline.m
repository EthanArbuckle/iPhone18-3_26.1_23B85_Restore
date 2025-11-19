@interface SGPipeline
+ (void)_delayedResetCachesAndModels;
@end

@implementation SGPipeline

+ (void)_delayedResetCachesAndModels
{
  v11 = *MEMORY[0x277D85DE8];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__SGPipeline__delayedResetCachesAndModels__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (_delayedResetCachesAndModels__pasOnceToken4 != -1)
  {
    dispatch_once(&_delayedResetCachesAndModels__pasOnceToken4, block);
  }

  v2 = _delayedResetCachesAndModels__pasExprOnceResult;
  dispatch_suspend(v2);
  data = dispatch_source_get_data(memoryPressureSource);
  if (data > 15)
  {
    if (data != 32)
    {
      if (data == 16)
      {
        v4 = 0.1;
        goto LABEL_13;
      }

      goto LABEL_11;
    }

LABEL_10:
    v4 = 0.0;
    goto LABEL_13;
  }

  if (data != 2)
  {
    if (data != 4)
    {
LABEL_11:
      v4 = 10.0;
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  v4 = 1.0;
LABEL_13:
  v5 = sgLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    v10 = v4;
    _os_log_debug_impl(&dword_231E60000, v5, OS_LOG_TYPE_DEBUG, "Setting a timer to reset DDNL caches in %f seconds", buf, 0xCu);
  }

  if (v4 <= 0.0)
  {
    v6 = 0;
  }

  else
  {
    v6 = dispatch_time(0, (v4 * 1000000000.0));
  }

  dispatch_source_set_timer(v2, v6, 0xFFFFFFFFFFFFFFFFLL, 1000000000 * (v4 / 10.0));
  dispatch_resume(v2);

  v7 = *MEMORY[0x277D85DE8];
}

@end