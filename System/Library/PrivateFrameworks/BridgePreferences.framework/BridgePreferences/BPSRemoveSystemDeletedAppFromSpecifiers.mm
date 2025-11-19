@interface BPSRemoveSystemDeletedAppFromSpecifiers
@end

@implementation BPSRemoveSystemDeletedAppFromSpecifiers

void ___BPSRemoveSystemDeletedAppFromSpecifiers_block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = (*(*(a1 + 40) + 16))();
  v7 = v6;
  if (v6)
  {
    v8 = v6;
    [v8 rangeOfString:@"com.apple." options:9];
    if (v9)
    {
      v10 = +[BPSBridgeAppContext shared];
      v11 = [v10 watchAppInstallStates];
      v12 = [v11 objectForKey:v8];
      v13 = [v12 integerValue];

      if (v13 != 2)
      {
        [*(a1 + 32) addIndex:a3];
      }
    }
  }

  else
  {
    v8 = [v5 identifier];
    [v8 rangeOfString:@"com.apple." options:9];
    if (v14)
    {
      v15 = bps_utility_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138412290;
        v17 = v8;
        _os_log_impl(&dword_241E74000, v15, OS_LOG_TYPE_DEFAULT, "Unable to check removal of %@: because there is no bundle ID mapping", &v16, 0xCu);
      }
    }
  }
}

@end