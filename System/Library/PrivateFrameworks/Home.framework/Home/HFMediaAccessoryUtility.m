@interface HFMediaAccessoryUtility
+ (id)sharedInstance;
- (BOOL)checkIfAccessoryisPartofHomeAndHasLanguageSettings:(id)a3;
- (BOOL)checkIfLanguageSetupIsDoneForAccessory:(id)a3;
- (BOOL)isHomePodRestartInitiated:(id)a3;
- (BOOL)isHomePodRestartingCurrently:(id)a3;
- (HFMediaAccessoryUtility)init;
- (void)markUUIDReachableViaRapport:(id)a3;
- (void)markUUIDUnreachableViaRapport:(id)a3;
- (void)updateHomePodAccessoryRestartState:(unint64_t)a3 with:(id)a4;
@end

@implementation HFMediaAccessoryUtility

+ (id)sharedInstance
{
  if (_MergedGlobals_276 != -1)
  {
    dispatch_once(&_MergedGlobals_276, &__block_literal_global_3_20);
  }

  v3 = qword_280E03328;

  return v3;
}

void __41__HFMediaAccessoryUtility_sharedInstance__block_invoke_2()
{
  v0 = objc_alloc_init(HFMediaAccessoryUtility);
  v1 = qword_280E03328;
  qword_280E03328 = v0;
}

- (HFMediaAccessoryUtility)init
{
  v8.receiver = self;
  v8.super_class = HFMediaAccessoryUtility;
  v2 = [(HFMediaAccessoryUtility *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    uuidTrackingList = v2->_uuidTrackingList;
    v2->_uuidTrackingList = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    restartStateList = v2->_restartStateList;
    v2->_restartStateList = v5;
  }

  return v2;
}

- (BOOL)isHomePodRestartInitiated:(id)a3
{
  v4 = a3;
  v5 = [(HFMediaAccessoryUtility *)self restartStateList];
  v6 = [v5 objectForKeyedSubscript:v4];

  LOBYTE(v4) = [v6 integerValue] == 1;
  return v4;
}

- (BOOL)isHomePodRestartingCurrently:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_17;
  }

  v5 = [(HFMediaAccessoryUtility *)self uuidTrackingList];
  if ([v5 count])
  {
  }

  else
  {
    v6 = [(HFMediaAccessoryUtility *)self restartStateList];
    v7 = [v6 objectForKeyedSubscript:v4];

    if (!v7)
    {
      goto LABEL_17;
    }
  }

  v8 = [(HFMediaAccessoryUtility *)self restartStateList];
  v9 = [v8 objectForKeyedSubscript:v4];
  v10 = [v9 integerValue];

  v11 = [(HFMediaAccessoryUtility *)self uuidTrackingList];
  if ([v11 count])
  {
    v12 = [(HFMediaAccessoryUtility *)self uuidTrackingList];
    v13 = [v12 containsObject:v4];

    if ((v13 & 1) == 0 && !v10)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v14 = [(HFMediaAccessoryUtility *)self uuidTrackingList];
  v15 = [v14 containsObject:v4];

  if (!v15 || v10 != 2)
  {
    v17 = [(HFMediaAccessoryUtility *)self uuidTrackingList];
    if ([v17 containsObject:v4])
    {
    }

    else
    {

      if ((v10 - 1) <= 1)
      {
        v16 = [(HFMediaAccessoryUtility *)self checkIfAccessoryisPartofHomeAndHasLanguageSettings:v4];
        goto LABEL_18;
      }
    }

LABEL_17:
    v16 = 0;
    goto LABEL_18;
  }

  v16 = 1;
LABEL_18:

  return v16;
}

- (void)updateHomePodAccessoryRestartState:(unint64_t)a3 with:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = HFLogForCategory(0);
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v18 = [(HFMediaAccessoryUtility *)self uuidTrackingList];
      v19 = [(HFMediaAccessoryUtility *)self restartStateList];
      v22 = 136316162;
      v23 = "[HFMediaAccessoryUtility updateHomePodAccessoryRestartState:with:]";
      v24 = 2048;
      v25 = a3;
      v26 = 2112;
      v27 = v6;
      v28 = 2112;
      v29 = v18;
      v30 = 2112;
      v31 = v19;
      _os_log_debug_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_DEBUG, "%s Requesting RestartState %lu Device UUID %@ uuidTrackingList..%@ Restart Tracking List ..%@", &v22, 0x34u);
    }

    if (a3 == 1)
    {
      v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:1];
      v9 = [(HFMediaAccessoryUtility *)self restartStateList];
      [v9 setObject:v8 forKeyedSubscript:v6];

      goto LABEL_19;
    }

    v10 = [(HFMediaAccessoryUtility *)self restartStateList];
    v11 = [v10 objectForKeyedSubscript:v6];
    v12 = [v11 integerValue];

    if (a3 == 3)
    {
      v15 = [(HFMediaAccessoryUtility *)self uuidTrackingList];
      if (![v15 containsObject:v6])
      {
LABEL_16:

        goto LABEL_17;
      }

      if ((v12 - 1) > 1)
      {
        goto LABEL_17;
      }
    }

    else if (a3 != 2 || (-[HFMediaAccessoryUtility uuidTrackingList](self, "uuidTrackingList"), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v13 containsObject:v6], v13, (v14 & 1) != 0) || v12 != 1)
    {
LABEL_17:
      v8 = HFLogForCategory(0);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v20 = [(HFMediaAccessoryUtility *)self uuidTrackingList];
        v21 = [(HFMediaAccessoryUtility *)self restartStateList];
        v22 = 136316162;
        v23 = "[HFMediaAccessoryUtility updateHomePodAccessoryRestartState:with:]";
        v24 = 2048;
        v25 = a3;
        v26 = 2112;
        v27 = v6;
        v28 = 2112;
        v29 = v20;
        v30 = 2112;
        v31 = v21;
        _os_log_debug_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_DEBUG, "%s After Requesting RestartState %lu Device UUID %@ uuidTrackingList..%@ Restart Tracking List ..%@", &v22, 0x34u);
      }

      goto LABEL_19;
    }

    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    v16 = [(HFMediaAccessoryUtility *)self restartStateList];
    [v16 setObject:v15 forKeyedSubscript:v6];

    goto LABEL_16;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v22 = 136315138;
    v23 = "[HFMediaAccessoryUtility updateHomePodAccessoryRestartState:with:]";
    _os_log_error_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_ERROR, "%s UUID Parameter cant be NIL", &v22, 0xCu);
  }

LABEL_19:

  v17 = *MEMORY[0x277D85DE8];
}

- (BOOL)checkIfAccessoryisPartofHomeAndHasLanguageSettings:(id)a3
{
  v62 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = +[HFHomeKitDispatcher sharedDispatcher];
  v5 = [v4 home];
  v6 = [v5 hf_allHomePodProfileContainers];

  v7 = [v6 count];
  v8 = HFLogForCategory(0);
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v57 = "[HFMediaAccessoryUtility checkIfAccessoryisPartofHomeAndHasLanguageSettings:]";
      v58 = 2112;
      v59 = v6;
      v60 = 2112;
      v61 = v3;
      _os_log_debug_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_DEBUG, "%s HomePod Profiles %@, requesting uuid %@", buf, 0x20u);
    }

    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v44 = v6;
    v10 = v6;
    v11 = [v10 countByEnumeratingWithState:&v50 objects:v55 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v51;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v51 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v50 + 1) + 8 * i);
          v16 = [v15 hf_backingAccessory];
          v17 = [v16 uniqueIdentifier];
          v18 = [v17 UUIDString];
          v19 = [v18 isEqualToString:v3];

          if (v19)
          {
            v20 = HFLogForCategory(0);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              v21 = [v15 hf_backingAccessory];
              v22 = [v21 uniqueIdentifier];
              v23 = [v22 UUIDString];
              *buf = 136315650;
              v57 = "[HFMediaAccessoryUtility checkIfAccessoryisPartofHomeAndHasLanguageSettings:]";
              v58 = 2112;
              v59 = v23;
              v60 = 2112;
              v61 = v3;
              _os_log_impl(&dword_20D9BF000, v20, OS_LOG_TYPE_DEFAULT, "%s Media Profile Containers uuid %@ match against requesting uuid %@", buf, 0x20u);
            }

            v24 = [v15 hf_backingAccessory];
            v25 = [(HFMediaAccessoryUtility *)self checkIfLanguageSetupIsDoneForAccessory:v24];

            if (v25)
            {
              v35 = HFLogForCategory(0);
              if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
              {
                v36 = [v15 hf_backingAccessory];
                v37 = [v36 uniqueIdentifier];
                v38 = [v37 UUIDString];
                *buf = 136315650;
                v57 = "[HFMediaAccessoryUtility checkIfAccessoryisPartofHomeAndHasLanguageSettings:]";
                v58 = 2112;
                v59 = v38;
                v60 = 2112;
                v61 = v3;
                _os_log_impl(&dword_20D9BF000, v35, OS_LOG_TYPE_DEFAULT, "%s Solo Media Profile Containers uuid %@ match against requesting uuid %@ and language settings is available", buf, 0x20u);
              }

              v34 = 1;
              v6 = v44;
              v9 = v10;
              goto LABEL_34;
            }
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v50 objects:v55 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v9 = v10;
    v26 = [v9 countByEnumeratingWithState:&v46 objects:v54 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v47;
      while (2)
      {
        for (j = 0; j != v27; ++j)
        {
          if (*v47 != v28)
          {
            objc_enumerationMutation(v9);
          }

          v30 = *(*(&v46 + 1) + 8 * j);
          v31 = [v30 uniqueIdentifier];
          v32 = [v31 UUIDString];
          v33 = [v32 isEqualToString:v3];

          if (v33)
          {
            v39 = HFLogForCategory(0);
            if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
            {
              v42 = [v30 uniqueIdentifier];
              v43 = [v42 UUIDString];
              *buf = 136315650;
              v57 = "[HFMediaAccessoryUtility checkIfAccessoryisPartofHomeAndHasLanguageSettings:]";
              v58 = 2112;
              v59 = v43;
              v60 = 2112;
              v61 = v3;
              _os_log_debug_impl(&dword_20D9BF000, v39, OS_LOG_TYPE_DEBUG, "%s Grouped Media Profile Containers uuid %@ match against requesting uuid %@", buf, 0x20u);
            }

            v34 = 1;
            goto LABEL_33;
          }
        }

        v27 = [v9 countByEnumeratingWithState:&v46 objects:v54 count:16];
        if (v27)
        {
          continue;
        }

        break;
      }
    }

    v34 = 0;
LABEL_33:
    v6 = v44;
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v57 = "[HFMediaAccessoryUtility checkIfAccessoryisPartofHomeAndHasLanguageSettings:]";
      _os_log_error_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_ERROR, "%s Empty Profiles", buf, 0xCu);
    }

    v34 = 0;
  }

LABEL_34:

  v40 = *MEMORY[0x277D85DE8];
  return v34;
}

- (BOOL)checkIfLanguageSetupIsDoneForAccessory:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 settings];
  v5 = [v4 hf_accessorySettingAtKeyPath:@"root.siri.language"];

  v6 = HFLogForCategory(0);
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v10 = 136315394;
      v11 = "[HFMediaAccessoryUtility checkIfLanguageSetupIsDoneForAccessory:]";
      v12 = 2112;
      v13 = v3;
      _os_log_debug_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_DEBUG, "%s Language Settings available %@", &v10, 0x16u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315394;
    v11 = "[HFMediaAccessoryUtility checkIfLanguageSetupIsDoneForAccessory:]";
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_DEFAULT, "%s Language Settings NOT available %@", &v10, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5 != 0;
}

- (void)markUUIDReachableViaRapport:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HFLogForCategory(0);
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v12 = [(HFMediaAccessoryUtility *)self uuidTrackingList];
      v13 = 138412546;
      v14 = v12;
      v15 = 2112;
      v16 = v4;
      _os_log_debug_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_DEBUG, "Devices UUID list that are reachable over Rapport prior to adding to list %@. UUID requested to be added..%@", &v13, 0x16u);
    }

    v7 = [(HFMediaAccessoryUtility *)self uuidTrackingList];
    v8 = [v7 containsObject:v4];

    if ((v8 & 1) == 0)
    {
      v9 = [(HFMediaAccessoryUtility *)self uuidTrackingList];
      [v9 addObject:v4];
    }

    v6 = HFLogForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v10 = [(HFMediaAccessoryUtility *)self uuidTrackingList];
      v13 = 138412546;
      v14 = v10;
      v15 = 2112;
      v16 = v4;
      _os_log_debug_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_DEBUG, "Devices UUID list that are reachable over Rapport after adding to list %@. UUID requested to be added..%@", &v13, 0x16u);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v13 = 136315138;
    v14 = "[HFMediaAccessoryUtility markUUIDReachableViaRapport:]";
    _os_log_error_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_ERROR, "%s UUID Parameter cant be NIL", &v13, 0xCu);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)markUUIDUnreachableViaRapport:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HFLogForCategory(0);
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v11 = [(HFMediaAccessoryUtility *)self uuidTrackingList];
      v14 = 138412546;
      v15 = v11;
      v16 = 2112;
      v17 = v4;
      _os_log_debug_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_DEBUG, "Devices UUID list that are reachable over Rapport prior to removal from list %@. UUID requested to be removed..%@", &v14, 0x16u);
    }

    v7 = [(HFMediaAccessoryUtility *)self uuidTrackingList];
    v8 = [v7 containsObject:v4];

    if (v8)
    {
      v9 = [(HFMediaAccessoryUtility *)self uuidTrackingList];
      [v9 removeObject:v4];
    }

    else
    {
      v9 = HFLogForCategory(0);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v13 = [(HFMediaAccessoryUtility *)self uuidTrackingList];
        v14 = 136315650;
        v15 = "[HFMediaAccessoryUtility markUUIDUnreachableViaRapport:]";
        v16 = 2112;
        v17 = v4;
        v18 = 2112;
        v19 = v13;
        _os_log_error_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_ERROR, "%s Trying to remove the UUID %@ of accessory which is not there in the list %@", &v14, 0x20u);
      }
    }

    v6 = HFLogForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v12 = [(HFMediaAccessoryUtility *)self uuidTrackingList];
      v14 = 138412546;
      v15 = v12;
      v16 = 2112;
      v17 = v4;
      _os_log_debug_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_DEBUG, "Devices UUID list that are reachable over Rapport after removal from list %@. UUID requested to be removed..%@", &v14, 0x16u);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v14 = 136315138;
    v15 = "[HFMediaAccessoryUtility markUUIDUnreachableViaRapport:]";
    _os_log_error_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_ERROR, "%s UUID Parameter cant be NIL", &v14, 0xCu);
  }

  v10 = *MEMORY[0x277D85DE8];
}

@end