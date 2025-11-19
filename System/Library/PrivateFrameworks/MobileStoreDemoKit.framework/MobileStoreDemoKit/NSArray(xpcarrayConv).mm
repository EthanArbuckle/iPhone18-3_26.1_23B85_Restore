@interface NSArray(xpcarrayConv)
+ (id)arrayWithXPCArray:()xpcarrayConv;
- (id)_convertObjectToNSData:()xpcarrayConv;
- (id)initWithXPCArray:()xpcarrayConv;
- (id)xpcArrayFromArray;
- (id)xpcSafeArrayFromArray;
@end

@implementation NSArray(xpcarrayConv)

+ (id)arrayWithXPCArray:()xpcarrayConv
{
  v3 = MEMORY[0x277CBEA60];
  v4 = a3;
  v5 = [[v3 alloc] initWithXPCArray:v4];

  return v5;
}

- (id)initWithXPCArray:()xpcarrayConv
{
  v4 = a3;
  v15 = 0;
  v16[0] = &v15;
  v16[1] = 0x3032000000;
  v16[2] = __Block_byref_object_copy_;
  v16[3] = __Block_byref_object_dispose_;
  v17 = [MEMORY[0x277CBEB18] array];
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __42__NSArray_xpcarrayConv__initWithXPCArray___block_invoke;
  v12 = &unk_2798EF348;
  v14 = &v15;
  v5 = a1;
  v13 = v5;
  if (xpc_array_apply(v4, &v9))
  {
    v6 = defaultLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [(NSArray(xpcarrayConv) *)v16 initWithXPCArray:v6];
    }

    v5 = [v5 initWithArray:{*(v16[0] + 40), v9, v10, v11, v12}];
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  _Block_object_dispose(&v15, 8);
  return v7;
}

- (id)xpcArrayFromArray
{
  v2 = xpc_array_create(0, 0);
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 1;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__NSArray_xpcarrayConv__xpcArrayFromArray__block_invoke;
  v6[3] = &unk_2798EF370;
  v3 = v2;
  v7 = v3;
  v8 = &v9;
  [a1 enumerateObjectsUsingBlock:v6];
  if (v10[3])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  _Block_object_dispose(&v9, 8);

  return v4;
}

- (id)xpcSafeArrayFromArray
{
  v44 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v31 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    obj = a1;
    v2 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
    if (!v2)
    {
      goto LABEL_32;
    }

    v3 = v2;
    v4 = 0x277CBE000uLL;
    v5 = *v39;
    v6 = 0x277CCA000uLL;
    v7 = 0x277CBE000uLL;
    v29 = *v39;
    while (1)
    {
      v8 = 0;
      v30 = v3;
      do
      {
        if (*v39 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v38 + 1) + 8 * v8);
        v10 = *(v4 + 2752);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v32 = v8;
          v11 = v9;
          v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
          v34 = 0u;
          v35 = 0u;
          v36 = 0u;
          v37 = 0u;
          v13 = v11;
          v14 = [v13 countByEnumeratingWithState:&v34 objects:v42 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v35;
            do
            {
              v17 = 0;
              do
              {
                if (*v35 != v16)
                {
                  objc_enumerationMutation(v13);
                }

                v18 = *(*(&v34 + 1) + 8 * v17);
                v19 = [v13 objectForKeyedSubscript:v18];
                objc_opt_class();
                if (objc_opt_isKindOfClass() & 1) != 0 || (v20 = *(v6 + 2992), objc_opt_class(), (objc_opt_isKindOfClass()) || (v21 = *(v7 + 2728), objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
                {
                  [v12 setObject:v19 forKeyedSubscript:v18];
                }

                else
                {
                  v22 = v7;
                  if (v19)
                  {
                    [obj _convertObjectToNSData:v19];
                  }

                  else
                  {
                    [MEMORY[0x277CBEB68] null];
                  }
                  v23 = ;
                  [v12 setObject:v23 forKeyedSubscript:v18];

                  v7 = v22;
                  v6 = 0x277CCA000;
                }

                ++v17;
              }

              while (v15 != v17);
              v24 = [v13 countByEnumeratingWithState:&v34 objects:v42 count:16];
              v15 = v24;
            }

            while (v24);
          }

          v25 = [v12 copy];
          [v31 addObject:v25];

          v4 = 0x277CBE000;
          v5 = v29;
          v3 = v30;
          v8 = v32;
        }

        else
        {
          if (!v9)
          {
            goto LABEL_30;
          }

          v13 = [v9 description];
          [v31 addObject:v13];
        }

LABEL_30:
        ++v8;
      }

      while (v8 != v3);
      v3 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
      if (!v3)
      {
LABEL_32:

        v26 = [v31 copy];
        goto LABEL_34;
      }
    }
  }

  v26 = MEMORY[0x277CBEBF8];
LABEL_34:
  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

- (id)_convertObjectToNSData:()xpcarrayConv
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    if (![v3 conformsToProtocol:&unk_286AE26D0] || (objc_msgSend(MEMORY[0x277CCAAB0], "archivedDataWithRootObject:requiringSecureCoding:error:", v4, 0, 0), (v5 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      if (![MEMORY[0x277CCAC58] propertyList:v4 isValidForFormat:200] || (objc_msgSend(MEMORY[0x277CCAC58], "dataWithPropertyList:format:options:error:", v4, 200, 0, 0), (v5 = objc_claimAutoreleasedReturnValue()) == 0))
      {
        v5 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v4 options:0 error:0];
        if (!v5)
        {
          v6 = [v4 description];
          v5 = [v6 dataUsingEncoding:4];
        }
      }
    }
  }

  else
  {
    v5 = [MEMORY[0x277CBEA90] data];
  }

  v7 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)initWithXPCArray:()xpcarrayConv .cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(*a1 + 40);
  v4 = 138543362;
  v5 = v2;
  _os_log_debug_impl(&dword_259B7D000, a2, OS_LOG_TYPE_DEBUG, "Converted from xpc to NSArray: %{public}@", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

@end