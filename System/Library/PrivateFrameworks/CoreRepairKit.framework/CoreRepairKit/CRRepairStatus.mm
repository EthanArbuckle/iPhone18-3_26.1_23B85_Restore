@interface CRRepairStatus
+ (id)_wasRepairedWithSysCfg:(id)cfg;
+ (id)getVeridianFWVersionInfo;
@end

@implementation CRRepairStatus

+ (id)_wasRepairedWithSysCfg:(id)cfg
{
  cfgCopy = cfg;
  cf = 0;
  v4 = ZhuGeCopyValue();
  if (v4)
  {
    v5 = cf == 0;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v19 = 0;
    v6 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v4 options:4 error:&v19];
    v10 = v19;
    if (v6)
    {
      v9 = [v6 objectForKeyedSubscript:cfgCopy];
      if (v9)
      {
        v11 = MGCopyAnswer();
        v12 = v11;
        if (v11)
        {
          sHA256DigestString = [v11 SHA256DigestString];
        }

        else
        {
          v13 = [MEMORY[0x277CBEA90] dataWithBytes:&stru_285976CC0 length:0];
          sHA256DigestString = [v13 SHA256DigestString];
        }

        v14 = handleForCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          [(CRRepairStatus *)sHA256DigestString _wasRepairedWithSysCfg:v9, v14];
        }

        v7 = [sHA256DigestString isEqual:v9];
        if (v7)
        {
          v15 = handleForCategory();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *v18 = 0;
            _os_log_impl(&dword_24785F000, v15, OS_LOG_TYPE_DEFAULT, "Repair status exist and digest match current", v18, 2u);
          }
        }
      }

      else
      {
        [CRRepairStatus _wasRepairedWithSysCfg:cfgCopy];
        v7 = 0;
        sHA256DigestString = 0;
      }
    }

    else
    {
      v6 = handleForCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [CRRepairStatus _wasRepairedWithSysCfg:v6];
      }

      v7 = 0;
      sHA256DigestString = 0;
      v9 = 0;
    }
  }

  else
  {
    v6 = handleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(CRRepairStatus *)&cf _wasRepairedWithSysCfg:v6];
    }

    v7 = 0;
    sHA256DigestString = 0;
    v9 = 0;
    v10 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  v16 = [MEMORY[0x277CCABB0] numberWithBool:v7];

  return v16;
}

+ (id)getVeridianFWVersionInfo
{
  v16 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  if (!MEMORY[0x28223BE78] || BC__getInfo())
  {
    v7 = handleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      +[(CRRepairStatus *)v7];
    }

    v2 = 0;
  }

  else
  {
    v2 = objc_opt_new();
    v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v12];
    [v2 setObject:v3 forKeyedSubscript:@"Firmware"];

    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:DWORD1(v12)];
    [v2 setObject:v4 forKeyedSubscript:@"Configuration"];

    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:DWORD2(v12)];
    [v2 setObject:v5 forKeyedSubscript:@"DNVDSector1"];

    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:HIDWORD(v12)];
    [v2 setObject:v6 forKeyedSubscript:@"DNVDSector2"];

    v7 = handleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v2;
      _os_log_impl(&dword_24785F000, v7, OS_LOG_TYPE_DEFAULT, " versiondict is:%@", &v10, 0xCu);
    }
  }

  v8 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (void)_wasRepairedWithSysCfg:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_debug_impl(&dword_24785F000, log, OS_LOG_TYPE_DEBUG, "SpTS:\n %@\n %@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

+ (void)_wasRepairedWithSysCfg:(uint64_t)a1 .cold.2(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = handleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v4 = 138412290;
    v5 = a1;
    _os_log_error_impl(&dword_24785F000, v2, OS_LOG_TYPE_ERROR, "%@ not in repair status", &v4, 0xCu);
  }

  v3 = *MEMORY[0x277D85DE8];
}

+ (void)_wasRepairedWithSysCfg:(uint64_t *)a1 .cold.4(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v4 = 138412290;
  v5 = v2;
  _os_log_error_impl(&dword_24785F000, a2, OS_LOG_TYPE_ERROR, "Failed to copy key RepairStatus, error: %@", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

@end