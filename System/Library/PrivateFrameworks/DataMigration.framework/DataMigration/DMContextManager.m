@interface DMContextManager
- (id)_entriesHavingBoolValue;
- (id)_entriesHavingStringValue;
- (id)contextFromArguments:(char *)a3 withCount:(int)a4;
- (id)contextFromXPCDictionary:(id)a3;
- (void)addContext:(id)a3 toXPCDictionary:(id)a4;
@end

@implementation DMContextManager

- (id)_entriesHavingBoolValue
{
  v7[8] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7[0] = @"DidRestoreFromBackup";
  v7[1] = @"DidMigrateBackupFromDifferentDevice";
  v7[2] = @"ShouldPreserveSettingsAfterRestore";
  v7[3] = @"WasPasscodeSetInBackup";
  v7[4] = @"RestoreFromBackupSourceiTunes";
  v7[5] = @"RestoreFromBackupSourceDeviceToDevice";
  v7[6] = @"DidRestoreFromCloudBackup";
  v7[7] = @"RestoredBackupIsMegaBackup";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:8];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)_entriesHavingStringValue
{
  v7[4] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7[0] = @"RestoredBackupBuildVersion";
  v7[1] = @"RestoredBackupProductType";
  v7[2] = @"BackupDeviceUUID";
  v7[3] = @"RestoredBackupDeviceName";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:4];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)contextFromXPCDictionary:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v6 = [(DMContextManager *)self _entriesHavingBoolValue];
  v7 = [v6 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v29;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v29 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v28 + 1) + 8 * i);
        v12 = [MEMORY[0x277CCABB0] numberWithBool:{xpc_dictionary_get_BOOL(v4, objc_msgSend(v11, "UTF8String"))}];
        [v5 setObject:v12 forKeyedSubscript:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v8);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v13 = [(DMContextManager *)self _entriesHavingStringValue];
  v14 = [v13 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v25;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v25 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v24 + 1) + 8 * j);
        string = xpc_dictionary_get_string(v4, [v18 UTF8String]);
        if (string)
        {
          v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:string];
          [v5 setObject:v20 forKeyedSubscript:v18];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v15);
  }

  v21 = [v5 copy];
  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

- (void)addContext:(id)a3 toXPCDictionary:(id)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v8 = [(DMContextManager *)self _entriesHavingBoolValue];
  v9 = [v8 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v28;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v28 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v27 + 1) + 8 * i);
        v14 = [v6 objectForKeyedSubscript:v13];
        if (v14)
        {
          xpc_dictionary_set_BOOL(v7, [v13 UTF8String], objc_msgSend(v14, "BOOLValue"));
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v10);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v15 = [(DMContextManager *)self _entriesHavingStringValue];
  v16 = [v15 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v24;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v24 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v23 + 1) + 8 * j);
        v21 = [v6 objectForKeyedSubscript:v20];
        if (v21)
        {
          xpc_dictionary_set_string(v7, [v20 UTF8String], objc_msgSend(v21, "UTF8String"));
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v17);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (id)contextFromArguments:(char *)a3 withCount:(int)a4
{
  v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v16 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"DidRestoreFromBackup"];
  v7 = [(DMContextManager *)self _entriesHavingBoolValue];
  v8 = [(DMContextManager *)self _entriesHavingStringValue];
  if (a4 >= 1)
  {
    v9 = 0;
    v10 = MEMORY[0x277CBEC38];
    do
    {
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:a3[v9]];
      if ([v7 containsObject:v11])
      {
        [v16 setObject:v10 forKeyedSubscript:v11];
      }

      else
      {
        v12 = v9;
        if ([v8 containsObject:v11])
        {
          if (v9 + 1 >= a4)
          {
            fprintf(*MEMORY[0x277D85DF8], "Context argument '%s' lacks value\n", a3[v9]);
          }

          else
          {
            v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:a3[v9 + 1]];
            [v16 setObject:v13 forKeyedSubscript:v11];

            v9 = v12 + 1;
          }
        }

        else
        {
          fprintf(*MEMORY[0x277D85DF8], "Context argument '%s' unrecognized\n", a3[v9]);
        }
      }

      ++v9;
    }

    while (v9 < a4);
  }

  v14 = [v16 copy];

  return v14;
}

@end