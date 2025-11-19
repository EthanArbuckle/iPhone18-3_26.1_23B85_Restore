@interface ICFConfigureGlobals
@end

@implementation ICFConfigureGlobals

uint64_t ___ICFConfigureGlobals_block_invoke()
{
  sFilterLock = objc_alloc_init(MEMORY[0x277CCAC60]);
  v0 = MEMORY[0x277D85CD0];

  return MEMORY[0x282173510]("com.apple.incoming-call-filter-server-started", 0, v0, &__block_literal_global_5);
}

uint64_t ___ICFConfigureGlobals_block_invoke_2()
{
  v0 = ICFDefaultLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_254B1F000, v0, OS_LOG_TYPE_DEFAULT, "Server came alive", buf, 2u);
  }

  [sFilterLock lock];
  v1 = [sFilterBlocks count];
  v2 = ICFDefaultLog();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
  if (v1)
  {
    if (v3)
    {
      *v6 = 0;
      _os_log_impl(&dword_254B1F000, v2, OS_LOG_TYPE_DEFAULT, " => We have active filters, connecting", v6, 2u);
    }

    _ICFConnectToServer();
  }

  else if (v3)
  {
    *v5 = 0;
    _os_log_impl(&dword_254B1F000, v2, OS_LOG_TYPE_DEFAULT, " => No active filters, ignoring", v5, 2u);
  }

  return [sFilterLock unlock];
}

@end