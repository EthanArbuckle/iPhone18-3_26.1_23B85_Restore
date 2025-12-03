@interface MFAccountLoader
+ (BOOL)loadBundleForAccountClassString:(id)string error:(id *)error;
+ (Class)_accountClassForString:(id)string error:(id *)error;
+ (Class)accountClassForPersistentAccount:(id)account error:(id *)error;
+ (id)_accountClassStringWithPersistentAccount:(id)account error:(id *)error;
+ (id)_bundlePathForAccountClassString:(id)string;
+ (id)accountWithAccountTypeIdentifier:(id)identifier error:(id *)error;
+ (id)accountWithPersistentAccount:(id)account error:(id *)error;
@end

@implementation MFAccountLoader

+ (id)accountWithPersistentAccount:(id)account error:(id *)error
{
  result = [MFAccountLoader accountClassForPersistentAccount:account error:error];
  if (result)
  {
    v6 = [[result alloc] initWithPersistentAccount:account];

    return v6;
  }

  return result;
}

+ (Class)accountClassForPersistentAccount:(id)account error:(id *)error
{
  if (!account)
  {
    return 0;
  }

  v6 = [self _accountClassStringWithPersistentAccount:? error:?];
  if (!v6)
  {
    return 0;
  }

  return [self _accountClassForString:v6 error:error];
}

+ (id)_accountClassStringWithPersistentAccount:(id)account error:(id *)error
{
  if (!account)
  {
    return 0;
  }

  result = [account accountPropertyForKey:@"Class"];
  if (error)
  {
    if (!result)
    {
      v6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MFAccountLoaderErrorDomain" code:1 userInfo:0];
      result = 0;
      *error = v6;
    }
  }

  return result;
}

+ (Class)_accountClassForString:(id)string error:(id *)error
{
  if (!string)
  {
    goto LABEL_6;
  }

  result = NSClassFromString(string);
  if (result)
  {
    return result;
  }

  if ([self loadBundleForAccountClassString:string error:error])
  {
    result = NSClassFromString(string);
    if (!error)
    {
      return result;
    }
  }

  else
  {
LABEL_6:
    result = 0;
    if (!error)
    {
      return result;
    }
  }

  if (!result)
  {
    if (*error)
    {
      return 0;
    }

    else
    {
      v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MFAccountLoaderErrorDomain" code:2 userInfo:0];
      result = 0;
      *error = v8;
    }
  }

  return result;
}

+ (BOOL)loadBundleForAccountClassString:(id)string error:(id *)error
{
  v15 = *MEMORY[0x277D85DE8];
  if (!string)
  {
    goto LABEL_7;
  }

  v6 = [self _bundlePathForAccountClassString:?];
  if (!v6)
  {
    if (error)
    {
      v8 = 0;
      *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"MFAccountLoaderErrorDomain" code:3 userInfo:0];
      goto LABEL_14;
    }

LABEL_7:
    v8 = 0;
    goto LABEL_14;
  }

  v7 = v6;
  objc_sync_enter(self);
  if ([0 containsObject:v7])
  {
    v8 = 1;
  }

  else
  {
    v9 = [MEMORY[0x277CCA8D8] bundleWithPath:v7];
    if (v9 && [v9 loadAndReturnError:error])
    {
      [0 addObject:v7];
      v10 = MFLogGeneral();
      v8 = 1;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v13 = 138412290;
        v14 = v7;
        _os_log_impl(&dword_258BDA000, v10, OS_LOG_TYPE_INFO, "Loaded bundle at %@", &v13, 0xCu);
      }
    }

    else
    {
      v8 = 0;
    }
  }

  objc_sync_exit(self);
LABEL_14:
  v11 = *MEMORY[0x277D85DE8];
  return v8;
}

+ (id)_bundlePathForAccountClassString:(id)string
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__MFAccountLoader__bundlePathForAccountClassString___block_invoke;
  block[3] = &unk_2798B61C0;
  block[4] = self;
  if (_bundlePathForAccountClassString__onceToken == -1)
  {
    if (string)
    {
      return [_bundlePathForAccountClassString__sAccountClassToBundlePathMap objectForKey:string];
    }
  }

  else
  {
    dispatch_once(&_bundlePathForAccountClassString__onceToken, block);
    if (string)
    {
      return [_bundlePathForAccountClassString__sAccountClassToBundlePathMap objectForKey:string];
    }
  }

  return 0;
}

uint64_t __52__MFAccountLoader__bundlePathForAccountClassString___block_invoke(uint64_t a1)
{
  v36 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v20 = [objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{*(a1 + 32)), "bundlePath"), "stringByAppendingPathComponent:", @"MailServices"}];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = [objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];
  result = [obj countByEnumeratingWithState:&v26 objects:v35 count:16];
  v21 = result;
  if (result)
  {
    v19 = *v27;
    do
    {
      v4 = 0;
      do
      {
        if (*v27 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v26 + 1) + 8 * v4);
        v6 = [v20 stringByAppendingPathComponent:v5];
        v7 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:{objc_msgSend(v6, "stringByAppendingPathComponent:", @"Info.plist"}];
        if (v7)
        {
          v8 = [MEMORY[0x277CCAC58] propertyListWithData:v7 options:0 format:0 error:0];
          if (v8)
          {
            v9 = v8;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v10 = [v9 objectForKey:@"InstantiableMailAccountClasses"];
              v22 = 0u;
              v23 = 0u;
              v24 = 0u;
              v25 = 0u;
              v11 = [v10 countByEnumeratingWithState:&v22 objects:v34 count:16];
              if (v11)
              {
                v12 = v11;
                v13 = *v23;
                do
                {
                  for (i = 0; i != v12; ++i)
                  {
                    if (*v23 != v13)
                    {
                      objc_enumerationMutation(v10);
                    }

                    v15 = *(*(&v22 + 1) + 8 * i);
                    if ([v2 objectForKey:v15])
                    {
                      v16 = MFLogGeneral();
                      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 138412546;
                        v31 = v5;
                        v32 = 2112;
                        v33 = v15;
                        _os_log_error_impl(&dword_258BDA000, v16, OS_LOG_TYPE_ERROR, "Ignoring MailServices bundle %@ for %@", buf, 0x16u);
                      }
                    }

                    else
                    {
                      [v2 setObject:v6 forKey:v15];
                    }
                  }

                  v12 = [v10 countByEnumeratingWithState:&v22 objects:v34 count:16];
                }

                while (v12);
              }
            }
          }
        }

        ++v4;
      }

      while (v4 != v21);
      result = [obj countByEnumeratingWithState:&v26 objects:v35 count:16];
      v21 = result;
    }

    while (result);
  }

  _bundlePathForAccountClassString__sAccountClassToBundlePathMap = v2;
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

+ (id)accountWithAccountTypeIdentifier:(id)identifier error:(id *)error
{
  v13[6] = *MEMORY[0x277D85DE8];
  v6 = *MEMORY[0x277CB8C40];
  v12[0] = *MEMORY[0x277CB8B98];
  v12[1] = v6;
  v13[0] = @"AOLAccount";
  v13[1] = @"GmailAccount";
  v7 = *MEMORY[0x277CB8C60];
  v12[2] = *MEMORY[0x277CB8D38];
  v12[3] = v7;
  v13[2] = @"YahooAccount";
  v13[3] = @"IMAPAccount";
  v8 = *MEMORY[0x277CB8CF8];
  v12[4] = *MEMORY[0x277CB8CD8];
  v12[5] = v8;
  v13[4] = @"POPAccount";
  v13[5] = @"SMTPAccount";
  v9 = [objc_msgSend(MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:{6), "objectForKeyedSubscript:", identifier}];
  if (v9)
  {
    v9 = [self _accountClassForString:v9 error:error];
    if (v9)
    {
      v9 = objc_alloc_init(v9);
    }
  }

  result = v9;
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

@end