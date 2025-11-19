@interface DKBluetoothMonitor
@end

@implementation DKBluetoothMonitor

void __28___DKBluetoothMonitor_start__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = os_transaction_create();
  v5 = [v3 object];

  v6 = dispatch_time(0, 1000000000);
  v7 = [*(a1 + 32) queue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __28___DKBluetoothMonitor_start__block_invoke_3;
  v9[3] = &unk_27856F0B0;
  v9[4] = *(a1 + 32);
  v10 = v5;
  v8 = v5;
  dispatch_after(v6, v7, v9);
}

void __28___DKBluetoothMonitor_start__block_invoke_3(uint64_t a1)
{
  v43[1] = *MEMORY[0x277D85DE8];
  [*(*(a1 + 32) + 232) lock];
  v2 = *(*(a1 + 32) + 176);
  v3 = [*(a1 + 40) address];
  v4 = [v2 valueForKey:v3];

  if (v4)
  {
    v5 = *(*(a1 + 32) + 232);
    v6 = *MEMORY[0x277D85DE8];

    [v5 unlock];
  }

  else
  {
    if ([*(a1 + 40) isAppleAudioDevice])
    {
      [*(a1 + 32) updateCurrentBatteryLevels];
      v7 = [*(a1 + 32) batteryLevels];
      v8 = *(*(a1 + 32) + 216);
      v9 = dispatch_walltime(0, 300000000000);
      v10 = v7;
      dispatch_source_set_timer(v8, v9, 0x45D964B800uLL, 0x64uLL);
    }

    else
    {
      v10 = 0;
    }

    v11 = [*(a1 + 32) _inEarStatusForDevice:*(a1 + 40)];
    v12 = [*(a1 + 40) connected];
    v13 = [*(a1 + 40) name];
    v14 = [*(a1 + 40) address];
    v15 = [*(a1 + 40) type];
    v16 = [*(a1 + 40) isAppleAudioDevice];
    v42 = v10;
    LODWORD(v39) = [*(a1 + 40) productId];
    v41 = v11;
    v17 = [_DKBluetoothMonitor _eventWithState:v12 name:v13 address:v14 type:v15 isAppleAudioDevice:v16 isUserWearing:v11 productID:v39 accessoryBatteryLevels:v10];

    v18 = [*(a1 + 40) address];
    if (v18)
    {
      v19 = [*(*(a1 + 32) + 184) objectForKeyedSubscript:v18];
      if (v19)
      {
        v20 = [*(a1 + 32) historicalHandler];

        if (v20)
        {
          v21 = [v17 startDate];
          [v19 setEndDate:v21];

          v22 = [*(a1 + 32) historicalHandler];
          v43[0] = v19;
          v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:1];
          (v22)[2](v22, v23);

          [*(*(a1 + 32) + 184) removeObjectForKey:v18];
        }
      }

      [*(*(a1 + 32) + 176) setObject:v17 forKey:v18];
      v24 = *(*(a1 + 32) + 192);
      v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(*(a1 + 40), "vendorId")}];
      [v24 setObject:v25 forKey:v18];
    }

    v26 = *(a1 + 32);
    v27 = objc_opt_class();
    v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(*(a1 + 40), "vendorId")}];
    v29 = [v27 _BMEventFromDKEvent:v17 starting:1 vendorID:v28];

    [*(*(a1 + 32) + 152) sendEvent:v29];
    [*(a1 + 32) saveState];
    [*(*(a1 + 32) + 232) unlock];
    v30 = [*(a1 + 40) connected];
    v31 = [*(a1 + 40) name];
    v32 = [*(a1 + 40) address];
    v33 = [*(a1 + 40) type];
    v34 = [*(a1 + 40) isAppleAudioDevice];
    LODWORD(v40) = [*(a1 + 40) productId];
    v35 = [_DKBluetoothMonitor contextValueForBluetoothConnectionStatus:v30 name:v31 address:v32 deviceType:v33 isAppleAudioDevice:v34 isUserWearing:v41 productID:v40];

    v36 = [MEMORY[0x277CFE318] userContext];
    v37 = [MEMORY[0x277CFE338] keyPathForBluetoothDataDictionary];
    [v36 setObject:v35 forKeyedSubscript:v37];

    v38 = *MEMORY[0x277D85DE8];
  }
}

void __28___DKBluetoothMonitor_start__block_invoke_4(uint64_t a1, void *a2)
{
  v52[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v50 = os_transaction_create();
  v4 = [v3 object];

  v49 = v4;
  v5 = [v4 objectForKeyedSubscript:@"device"];
  [*(a1 + 32) updateCurrentBatteryLevels];
  v6 = [*(a1 + 32) batteryLevels];
  v7 = [*(a1 + 32) _inEarStatusForDevice:v5];
  v8 = [v5 connected];
  v9 = [v5 name];
  v10 = [v5 address];
  v11 = [v5 type];
  v12 = [v5 isAppleAudioDevice];
  v48 = v6;
  LODWORD(v46) = [v5 productId];
  v47 = [_DKBluetoothMonitor _eventWithState:v8 name:v9 address:v10 type:v11 isAppleAudioDevice:v12 isUserWearing:v7 productID:v46 accessoryBatteryLevels:v6];

  [*(*(a1 + 32) + 232) lock];
  v13 = *(*(a1 + 32) + 176);
  v14 = [v5 address];
  v15 = [v13 objectForKeyedSubscript:v14];

  v16 = [v15 metadata];
  v17 = [MEMORY[0x277CFE198] isUserWearing];
  v18 = [v16 valueForKey:v17];
  v51 = v15;
  if (!v18)
  {

    goto LABEL_8;
  }

  v19 = v18;
  v20 = [v15 metadata];
  v21 = [MEMORY[0x277CFE198] isUserWearing];
  v22 = [v20 valueForKey:v21];
  v23 = [MEMORY[0x277CCABB0] numberWithBool:v7];
  v24 = [v22 isEqual:v23];

  if (v24)
  {
LABEL_8:
    [*(*(a1 + 32) + 232) unlock];
    v25 = v47;
    goto LABEL_9;
  }

  v25 = v47;
  if (v51)
  {
    v26 = [*(a1 + 32) historicalHandler];

    if (v26)
    {
      v27 = [v47 startDate];
      [v51 setEndDate:v27];

      v28 = *(a1 + 32);
      v29 = objc_opt_class();
      v30 = *(*(a1 + 32) + 192);
      v31 = [v5 address];
      v32 = [v30 objectForKeyedSubscript:v31];
      v33 = [v29 _BMEventFromDKEvent:v51 starting:0 vendorID:v32];

      [*(*(a1 + 32) + 152) sendEvent:v33];
      v34 = [*(a1 + 32) historicalHandler];
      v52[0] = v51;
      v35 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:1];
      (v34)[2](v34, v35);
    }
  }

  v36 = *(*(a1 + 32) + 176);
  v37 = [v5 address];
  [v36 setObject:v47 forKey:v37];

  v38 = *(*(a1 + 32) + 192);
  v39 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v5, "vendorId")}];
  v40 = [v5 address];
  [v38 setObject:v39 forKey:v40];

  v41 = *(a1 + 32);
  v42 = objc_opt_class();
  v43 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v5, "vendorId")}];
  v44 = [v42 _BMEventFromDKEvent:v47 starting:1 vendorID:v43];

  [*(*(a1 + 32) + 152) sendEvent:v44];
  [*(a1 + 32) saveState];
  [*(*(a1 + 32) + 232) unlock];

LABEL_9:
  v45 = *MEMORY[0x277D85DE8];
}

void __28___DKBluetoothMonitor_start__block_invoke_5(uint64_t a1, void *a2)
{
  v46[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = os_transaction_create();
  v5 = [v3 object];

  [*(*(a1 + 32) + 232) lock];
  v6 = *(*(a1 + 32) + 184);
  v7 = [v5 address];
  v8 = [v6 valueForKey:v7];

  v9 = *(a1 + 32);
  if (v8)
  {
    [v9[29] unlock];
  }

  else
  {
    v45 = v4;
    v10 = [v9 batteryLevels];
    v11 = [v5 name];
    v12 = [v5 address];
    v13 = [v5 type];
    v14 = [v5 isAppleAudioDevice];
    LODWORD(v43) = [v5 productId];
    v15 = [_DKBluetoothMonitor _eventWithState:0 name:v11 address:v12 type:v13 isAppleAudioDevice:v14 isUserWearing:0 productID:v43 accessoryBatteryLevels:v10];

    v16 = *(*(a1 + 32) + 176);
    v17 = [v5 address];
    v18 = [v16 objectForKeyedSubscript:v17];

    if (v18)
    {
      v19 = [*(a1 + 32) historicalHandler];

      if (v19)
      {
        v20 = [v15 startDate];
        [v18 setEndDate:v20];

        v21 = *(a1 + 32);
        v22 = objc_opt_class();
        v23 = *(*(a1 + 32) + 192);
        v24 = [v5 address];
        v25 = [v23 objectForKeyedSubscript:v24];
        v26 = [v22 _BMEventFromDKEvent:v18 starting:0 vendorID:v25];

        [*(*(a1 + 32) + 152) sendEvent:v26];
        v27 = [*(a1 + 32) historicalHandler];
        v46[0] = v18;
        v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:1];
        (v27)[2](v27, v28);

        v29 = *(*(a1 + 32) + 176);
        v30 = [v5 address];
        [v29 removeObjectForKey:v30];

        v31 = *(*(a1 + 32) + 192);
        v32 = [v5 address];
        [v31 removeObjectForKey:v32];
      }
    }

    v33 = *(*(a1 + 32) + 184);
    v34 = [v5 address];
    [v33 setObject:v15 forKey:v34];

    if ([v5 isAppleAudioDevice] && !objc_msgSend(*(*(a1 + 32) + 176), "count"))
    {
      dispatch_source_set_timer(*(*(a1 + 32) + 216), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
      [*(a1 + 32) setBatteryLevels:MEMORY[0x277CBEC10]];
    }

    [*(a1 + 32) saveState];
    [*(*(a1 + 32) + 232) unlock];
    v35 = [v5 name];
    v36 = [v5 address];
    v37 = [v5 type];
    v38 = [v5 isAppleAudioDevice];
    LODWORD(v44) = [v5 productId];
    v39 = [_DKBluetoothMonitor contextValueForBluetoothConnectionStatus:0 name:v35 address:v36 deviceType:v37 isAppleAudioDevice:v38 isUserWearing:0 productID:v44];

    v40 = [MEMORY[0x277CFE318] userContext];
    v41 = [MEMORY[0x277CFE338] keyPathForBluetoothDataDictionary];
    [v40 setObject:v39 forKeyedSubscript:v41];

    v4 = v45;
  }

  v42 = *MEMORY[0x277D85DE8];
}

uint64_t __26___DKBluetoothMonitor_log__block_invoke()
{
  v0 = os_log_create("com.apple.coreduet.monitors", "_DKBluetoothMonitor");
  v1 = log_log_2;
  log_log_2 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void __32___DKBluetoothMonitor_saveState__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CFE108] sharedInstance];
  v3 = *(*(*(a1 + 40) + 8) + 40);
  v18 = 0;
  v4 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v3 requiringSecureCoding:1 error:&v18];
  v5 = v18;
  if (v5)
  {
    v6 = +[_DKBluetoothMonitor log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __32___DKBluetoothMonitor_saveState__block_invoke_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  v14 = *(a1 + 32);
  v13 = (a1 + 32);
  v15 = objc_opt_class();
  v16 = NSStringFromClass(v15);
  [v2 setData:v4 forKey:v16];

  v17 = +[_DKBluetoothMonitor log];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    __32___DKBluetoothMonitor_saveState__block_invoke_cold_2(v13, v17);
  }
}

void __32___DKBluetoothMonitor_loadState__block_invoke(uint64_t a1)
{
  v89[2] = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  v65 = [MEMORY[0x277CFE108] sharedInstance];
  v1 = *(a1 + 32);
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v66 = [v65 dataForKey:v3];

  if (v66)
  {
    v4 = MEMORY[0x277CBEB98];
    v5 = objc_opt_class();
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = [v4 setWithObjects:{v5, v6, v7, v8, v9, objc_opt_class(), 0}];
    v11 = [*(a1 + 32) classesForSecureStateDecoding];
    v12 = [v10 setByAddingObjectsFromSet:v11];

    v80 = 0;
    v13 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v12 fromData:v66 error:&v80];
    v14 = v80;
    v15 = *(*(a1 + 40) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v13;

    if (v14)
    {
      v17 = +[_DKBluetoothMonitor log];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        __32___DKBluetoothMonitor_loadState__block_invoke_cold_1(v14, v17, v18, v19, v20, v21, v22, v23);
      }
    }
  }

  v24 = *(a1 + 40);
  if (*(*(v24 + 8) + 40))
  {
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v25 = [*(*(v24 + 8) + 40) allKeys];
    v26 = [v25 countByEnumeratingWithState:&v76 objects:v87 count:16];
    if (v26)
    {
      v27 = *v77;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v77 != v27)
          {
            objc_enumerationMutation(v25);
          }

          v29 = *(*(&v76 + 1) + 8 * i);
          v30 = +[_DKBluetoothMonitor log];
          if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
          {
            v31 = [*(*(*(a1 + 40) + 8) + 40) objectForKeyedSubscript:v29];
            *buf = 138412546;
            v84 = v29;
            v85 = 2112;
            v86 = v31;
            _os_log_impl(&dword_22595A000, v30, OS_LOG_TYPE_INFO, "savedState key: %@ value: %@", buf, 0x16u);
          }
        }

        v26 = [v25 countByEnumeratingWithState:&v76 objects:v87 count:16];
      }

      while (v26);
    }

    v32 = [*(*(*(a1 + 40) + 8) + 40) objectForKeyedSubscript:@"_DKBluetoothMonitor-activeConnections"];

    if (v32)
    {
      v33 = [*(*(*(a1 + 40) + 8) + 40) objectForKeyedSubscript:@"_DKBluetoothMonitor-activeConnections"];
      v34 = *(a1 + 32);
      v35 = *(v34 + 176);
      *(v34 + 176) = v33;

      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      v36 = [*(*(a1 + 32) + 176) allKeys];
      v37 = [v36 countByEnumeratingWithState:&v72 objects:v82 count:16];
      if (v37)
      {
        v38 = *v73;
        do
        {
          for (j = 0; j != v37; ++j)
          {
            if (*v73 != v38)
            {
              objc_enumerationMutation(v36);
            }

            v40 = *(*(&v72 + 1) + 8 * j);
            v41 = +[_DKBluetoothMonitor log];
            if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
            {
              v42 = [*(*(a1 + 32) + 176) objectForKeyedSubscript:v40];
              *buf = 138412546;
              v84 = v40;
              v85 = 2112;
              v86 = v42;
              _os_log_impl(&dword_22595A000, v41, OS_LOG_TYPE_INFO, "load key: %@ value: %@", buf, 0x16u);
            }
          }

          v37 = [v36 countByEnumeratingWithState:&v72 objects:v82 count:16];
        }

        while (v37);
      }
    }

    else
    {
      v36 = +[_DKBluetoothMonitor log];
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22595A000, v36, OS_LOG_TYPE_INFO, "No active connections to load", buf, 2u);
      }
    }

    v53 = [*(*(*(a1 + 40) + 8) + 40) objectForKeyedSubscript:@"_DKBluetoothMonitor-inactiveConnections"];

    if (v53)
    {
      v54 = [*(*(*(a1 + 40) + 8) + 40) objectForKeyedSubscript:@"_DKBluetoothMonitor-inactiveConnections"];
      v55 = *(a1 + 32);
      v56 = *(v55 + 184);
      *(v55 + 184) = v54;

      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      v52 = [*(*(a1 + 32) + 184) allKeys];
      v57 = [v52 countByEnumeratingWithState:&v68 objects:v81 count:16];
      if (v57)
      {
        v58 = *v69;
        do
        {
          for (k = 0; k != v57; ++k)
          {
            if (*v69 != v58)
            {
              objc_enumerationMutation(v52);
            }

            v60 = *(*(&v68 + 1) + 8 * k);
            v61 = +[_DKBluetoothMonitor log];
            if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
            {
              v62 = [*(*(a1 + 32) + 184) objectForKeyedSubscript:v60];
              *buf = 138412546;
              v84 = v60;
              v85 = 2112;
              v86 = v62;
              _os_log_impl(&dword_22595A000, v61, OS_LOG_TYPE_INFO, "load key: %@ value: %@", buf, 0x16u);
            }
          }

          v57 = [v52 countByEnumeratingWithState:&v68 objects:v81 count:16];
        }

        while (v57);
      }
    }

    else
    {
      v52 = +[_DKBluetoothMonitor log];
      if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22595A000, v52, OS_LOG_TYPE_INFO, "No inactive connections to load", buf, 2u);
      }
    }
  }

  else
  {
    v43 = +[_DKBluetoothMonitor log];
    if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22595A000, v43, OS_LOG_TYPE_INFO, "saved state is nil", buf, 2u);
    }

    v44 = MEMORY[0x277CBEAC0];
    v45 = [MEMORY[0x277CBEB38] dictionary];
    v89[0] = v45;
    v46 = [MEMORY[0x277CBEB38] dictionary];
    v89[1] = v46;
    v47 = [MEMORY[0x277CBEA60] arrayWithObjects:v89 count:2];
    v88[0] = @"_DKBluetoothMonitor-activeConnections";
    v88[1] = @"_DKBluetoothMonitor-inactiveConnections";
    v48 = [MEMORY[0x277CBEA60] arrayWithObjects:v88 count:2];
    v49 = [v44 dictionaryWithObjects:v47 forKeys:v48];
    v50 = *(*(a1 + 40) + 8);
    v51 = *(v50 + 40);
    *(v50 + 40) = v49;

    v52 = v45;
  }

  objc_autoreleasePoolPop(context);
  v63 = *MEMORY[0x277D85DE8];
}

BOOL __44___DKBluetoothMonitor_handleUnpairingEvent___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 eventBody];
  v4 = *(a1 + 32);
  v5 = [v3 address];
  if ([v4 isEqualToString:v5])
  {
    v6 = 1;
  }

  else
  {
    v7 = [v3 address];
    v6 = v7 == 0;
  }

  return v6;
}

void __32___DKBluetoothMonitor_saveState__block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_5(&dword_22595A000, a2, a3, "Error serializing activeConnection data: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __32___DKBluetoothMonitor_saveState__block_invoke_cold_2(uint64_t *a1, NSObject *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v6 = 136446466;
  v7 = "[_DKBluetoothMonitor saveState]_block_invoke";
  v8 = 2114;
  v9 = objc_opt_class();
  v4 = v9;
  _os_log_debug_impl(&dword_22595A000, a2, OS_LOG_TYPE_DEBUG, "%{public}s did _CDSharedMemoryKeyValueStore for %{public}@.", &v6, 0x16u);

  v5 = *MEMORY[0x277D85DE8];
}

void __32___DKBluetoothMonitor_loadState__block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_5(&dword_22595A000, a2, a3, "Error unarchiving state: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end