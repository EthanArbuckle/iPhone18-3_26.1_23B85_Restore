@interface UIFocusTreeLockItem
@end

@implementation UIFocusTreeLockItem

uint64_t __63___UIFocusTreeLockItem_initWithEnvironment_finalUnlockHandler___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2[8])
  {
    v3 = logger();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      v5 = *(*(a1 + 32) + 56);
      Current = CFAbsoluteTimeGetCurrent();
      v7 = *(a1 + 32);
      v8 = Current - *(v7 + 72);
      v9 = 138412802;
      v10 = v5;
      v11 = 2048;
      v12 = v8;
      v13 = 2112;
      v14 = v7;
      _os_log_fault_impl(&dword_24B885000, v3, OS_LOG_TYPE_FAULT, "Locked environment %@ was deallocated after being locked for %.2f seconds. This should never happen. Additional info:\n%@", &v9, 0x20u);
    }

    v2 = *(a1 + 32);
  }

  return [v2 _cleanup:1];
}

@end