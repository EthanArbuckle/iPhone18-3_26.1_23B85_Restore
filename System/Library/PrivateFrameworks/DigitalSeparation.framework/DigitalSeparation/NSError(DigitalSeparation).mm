@interface NSError(DigitalSeparation)
+ (id)ds_errorFromIgnorableError:()DigitalSeparation sourceName:;
- (id)ds_localizedAppNames;
- (id)ds_localizedPermissionNames;
- (id)ds_sourcesByPresentableError;
- (id)ds_underlyingErrorsBySource;
@end

@implementation NSError(DigitalSeparation)

+ (id)ds_errorFromIgnorableError:()DigitalSeparation sourceName:
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    v6 = [DSSourceDescriptor sourceDescriptorForSource:a4];
    if ([v6 shouldIgnoreError:v5])
    {
      if (DSLogNSError_onceToken != -1)
      {
        +[NSError(DigitalSeparation) ds_errorFromIgnorableError:sourceName:];
      }

      v7 = DSLogNSError_log;
      if (os_log_type_enabled(DSLogNSError_log, OS_LOG_TYPE_INFO))
      {
        v11 = 138543362;
        v12 = v5;
        _os_log_impl(&dword_248C40000, v7, OS_LOG_TYPE_INFO, "Ignoring returned error %{public}@", &v11, 0xCu);
      }

      v8 = 0;
    }

    else
    {
      v8 = v5;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)ds_underlyingErrorsBySource
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v3 = [a1 userInfo];
  v4 = [v3 objectForKeyedSubscript:@"DSErrorKeySourceName"];

  if (v4)
  {
    [v2 setObject:a1 forKeyedSubscript:v4];
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [a1 underlyingErrors];
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      v9 = 0;
      v10 = v4;
      do
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v16 + 1) + 8 * v9);
        v12 = [v11 userInfo];
        v4 = [v12 objectForKeyedSubscript:@"DSErrorKeySourceName"];

        if (v4)
        {
          [v2 setObject:v11 forKeyedSubscript:v4];
        }

        ++v9;
        v10 = v4;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v13 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v2];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)ds_sourcesByPresentableError
{
  v46 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v3 = [a1 underlyingErrors];
  v4 = [v3 countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v41;
    v31 = *MEMORY[0x277CCA578];
    v32 = *v41;
    v33 = v3;
    do
    {
      v7 = 0;
      v34 = v5;
      do
      {
        if (*v41 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v40 + 1) + 8 * v7);
        v9 = [v8 userInfo];
        v10 = [v9 objectForKeyedSubscript:@"DSErrorKeySourceName"];

        if ([v10 length])
        {
          if ([v8 code] == 6)
          {
            v11 = v7;
            v12 = [v2 objectForKey:v8];
            v13 = v12;
            if (v12)
            {
              v14 = v12;
            }

            else
            {
              v14 = [MEMORY[0x277CBEB18] array];
            }

            v17 = v14;

            [v17 addObject:v10];
            [v2 setObject:v17 forKey:v8];
            v7 = v11;
LABEL_27:

            goto LABEL_28;
          }

          if ([v8 code] == 1 || objc_msgSend(v8, "code") == 2)
          {
            v35 = v7;
            v15 = [v8 userInfo];
            v16 = [v15 objectForKeyedSubscript:v31];

            v38 = 0u;
            v39 = 0u;
            v36 = 0u;
            v37 = 0u;
            v17 = v16;
            v18 = [v17 countByEnumeratingWithState:&v36 objects:v44 count:16];
            if (v18)
            {
              v19 = v18;
              v20 = *v37;
              do
              {
                for (i = 0; i != v19; ++i)
                {
                  if (*v37 != v20)
                  {
                    objc_enumerationMutation(v17);
                  }

                  v22 = *(*(&v36 + 1) + 8 * i);
                  v23 = [v22 domain];
                  v24 = [v23 isEqualToString:@"com.apple.DigitalSeparation.DSSourceErrorDomain"];

                  if (v24)
                  {
                    v25 = [v2 objectForKey:v22];
                    v26 = v25;
                    if (v25)
                    {
                      v27 = v25;
                    }

                    else
                    {
                      v27 = [MEMORY[0x277CBEB18] array];
                    }

                    v28 = v27;

                    [v28 addObject:v10];
                    [v2 setObject:v28 forKey:v22];
                  }
                }

                v19 = [v17 countByEnumeratingWithState:&v36 objects:v44 count:16];
              }

              while (v19);
            }

            v6 = v32;
            v3 = v33;
            v5 = v34;
            v7 = v35;
            goto LABEL_27;
          }
        }

LABEL_28:

        ++v7;
      }

      while (v7 != v5);
      v5 = [v3 countByEnumeratingWithState:&v40 objects:v45 count:16];
    }

    while (v5);
  }

  v29 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)ds_localizedAppNames
{
  v18 = *MEMORY[0x277D85DE8];
  v1 = [a1 ds_underlyingErrorsBySource];
  v2 = [MEMORY[0x277CBEB18] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [DSSourceDescriptor sourceDescriptorForSource:*(*(&v13 + 1) + 8 * i), v13];
        v9 = [v8 localizedAppName];
        [v2 addObject:v9];
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  v10 = [MEMORY[0x277CBEA60] arrayWithArray:v2];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)ds_localizedPermissionNames
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB58] set];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = [a1 underlyingErrors];
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v14 + 1) + 8 * i) userInfo];
        v9 = [v8 objectForKeyedSubscript:@"DSErrorKeyServiceName"];

        if (v9)
        {
          v10 = [DSAppPermissionsDescriptor localizedNameForPermission:v9];
          v11 = DSLocStringForKey(v10);
          [v2 addObject:v11];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v2;
}

@end