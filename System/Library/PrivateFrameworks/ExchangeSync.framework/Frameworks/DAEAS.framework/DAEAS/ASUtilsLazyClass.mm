@interface ASUtilsLazyClass
+ (void)fillOutASDeviceID;
@end

@implementation ASUtilsLazyClass

+ (void)fillOutASDeviceID
{
  v33 = *MEMORY[0x277D85DE8];
  v2 = _serialNumber();
  if (v2)
  {
    v3 = v2;
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Appl%@", v2];

    if (v4)
    {
      v5 = objc_opt_new();
      v6 = objc_opt_new();
      v7 = [v5 accountTypeWithAccountTypeIdentifier:*MEMORY[0x277CB8C00]];
      v8 = [v5 accountsWithAccountType:v7];

      if ([v8 count])
      {
        [v6 addObjectsFromArray:v8];
      }

      v9 = [v5 accountTypeWithAccountTypeIdentifier:*MEMORY[0x277CB8C50]];
      v10 = [v5 accountsWithAccountType:v9];

      if ([v10 count])
      {
        [v6 addObjectsFromArray:v10];
      }

      v25 = v10;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v11 = v6;
      v12 = [v11 countByEnumeratingWithState:&v26 objects:v32 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v27;
        while (2)
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v27 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = [MEMORY[0x277D079E8] esAccountSubclassWithBackingAccountInfo:*(*(&v26 + 1) + 8 * i)];
            v17 = [v16 folderHierarchy];
            v18 = [v17 _deviceIdInCache];
            if (v18 && [v4 isEqualToString:v18])
            {
              v20 = DALoggingwithCategory();
              v21 = *(MEMORY[0x277D03988] + 6);
              if (os_log_type_enabled(v20, v21))
              {
                *buf = 138412290;
                v31 = v16;
                _os_log_impl(&dword_24A0AC000, v20, v21, "Account %@ cares about the old serial number id, keeping it around", buf, 0xCu);
              }

              v22 = _serialNumber();
              v23 = asDeviceIDWithHintedID(v22);

              goto LABEL_21;
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v26 objects:v32 count:16];
          if (v13)
          {
            continue;
          }

          break;
        }
      }
    }
  }

  v19 = asDeviceIDWithHintedID(0);
LABEL_21:
  v24 = *MEMORY[0x277D85DE8];
}

@end