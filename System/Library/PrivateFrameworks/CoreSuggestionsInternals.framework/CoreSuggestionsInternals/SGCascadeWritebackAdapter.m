@interface SGCascadeWritebackAdapter
+ (id)_loggingIdentifiersFromEvents:(id)a3;
- (id)_cascadeEntityItemsFromEvents:(id)a3;
- (void)addEvent:(id)a3;
- (void)addEvents:(id)a3;
@end

@implementation SGCascadeWritebackAdapter

- (id)_cascadeEntityItemsFromEvents:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) cascadeEntityItemForEvent];
        if (v10)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)addEvents:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v35 objects:v42 count:16];
  if (v5)
  {
    v6 = v5;
    v25 = self;
    obj = v4;
    v7 = 0;
    v8 = *v36;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v36 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v35 + 1) + 8 * i);
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v11 = [v10 tags];
        v12 = [v11 countByEnumeratingWithState:&v31 objects:v41 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v32;
          do
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v32 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v31 + 1) + 8 * j);
              if ([v16 isCascadeEntitySetVersion])
              {
                v17 = [v16 value];
                v18 = [v17 longLongValue];

                if (v18 <= v7)
                {
                  v19 = v7;
                }

                else
                {
                  v19 = v18;
                }

                if (v7)
                {
                  v7 = v19;
                }

                else
                {
                  v7 = v18;
                }
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v31 objects:v41 count:16];
          }

          while (v13);
        }
      }

      v6 = [obj countByEnumeratingWithState:&v35 objects:v42 count:16];
    }

    while (v6);
    v4 = obj;
    if (v7)
    {
      v20 = [(SGCascadeWritebackAdapter *)v25 _cascadeEntityItemsFromEvents:obj];
      if ([v20 count])
      {
        v21 = MEMORY[0x277CF9508];
        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __39__SGCascadeWritebackAdapter_addEvents___block_invoke;
        v27[3] = &unk_27894BE80;
        v28 = obj;
        v29 = v20;
        v30 = v7;
        [v21 incrementalSetDonationWithItemType:27325 descriptors:MEMORY[0x277CBEBF8] version:v7 validity:@"v1.0" completion:v27];

        v22 = v28;
      }

      else
      {
        v22 = sgLogHandle();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = [SGCascadeWritebackAdapter _loggingIdentifiersFromEvents:obj];
          *buf = 138412290;
          v40 = v23;
          _os_log_impl(&dword_231E60000, v22, OS_LOG_TYPE_DEFAULT, "addEvents:[SGEvent ids: %@] bailing because events do not contain eligible cascade items.", buf, 0xCu);
        }
      }

      goto LABEL_29;
    }
  }

  v20 = sgLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    v22 = [SGCascadeWritebackAdapter _loggingIdentifiersFromEvents:v4];
    *buf = 138412290;
    v40 = v22;
    _os_log_error_impl(&dword_231E60000, v20, OS_LOG_TYPE_ERROR, "addEvents:[SGEvent ids: %@] bailing because events do not contain a cascade set version.", buf, 0xCu);
LABEL_29:
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __39__SGCascadeWritebackAdapter_addEvents___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v58 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v5;
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      v11 = *(a1 + 40);
      v12 = [v11 countByEnumeratingWithState:&v46 objects:v57 count:16];
      if (v12)
      {
        v13 = v12;
        v38 = a1;
        v7 = 0;
        v14 = *v47;
LABEL_8:
        v15 = 0;
        v16 = v7;
        while (1)
        {
          if (*v47 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v17 = *(*(&v46 + 1) + 8 * v15);
          v45 = v16;
          v18 = [v8 addOrUpdateItem:v17 error:&v45];
          v7 = v45;

          if ((v18 & 1) == 0)
          {
            break;
          }

          ++v15;
          v16 = v7;
          if (v13 == v15)
          {
            v13 = [v11 countByEnumeratingWithState:&v46 objects:v57 count:16];
            if (v13)
            {
              goto LABEL_8;
            }

            goto LABEL_26;
          }
        }

        v28 = sgLogHandle();
        if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_38;
        }

        v29 = [SGCascadeWritebackAdapter _loggingIdentifiersFromEvents:*(v38 + 32)];
        v30 = [v17 metaContent];
        v31 = [v30 sourceItemIdentifier];
        *buf = 138412802;
        v52 = v29;
        v53 = 2112;
        v54 = v31;
        v55 = 2112;
        v56 = v7;
        v32 = "addEvents:[SGEvent ids: %@] cascade donation failed to add or update item with id: %@ error: %@";
LABEL_42:
        _os_log_error_impl(&dword_231E60000, v28, OS_LOG_TYPE_ERROR, v32, buf, 0x20u);

LABEL_38:
        goto LABEL_39;
      }
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v7 = 0;
LABEL_32:
        v33 = v7;
        v39 = v7;
        v34 = [v5 finish:&v39];
        v7 = v39;

        v35 = sgLogHandle();
        v8 = v35;
        if ((v34 & 1) == 0)
        {
          if (!os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_40;
          }

          v9 = [SGCascadeWritebackAdapter _loggingIdentifiersFromEvents:*(a1 + 32)];
          *buf = 138412546;
          v52 = v9;
          v53 = 2112;
          v54 = v7;
          v10 = "addEvents:[SGEvent ids: %@] failed to finish cascade donation with error: %@";
          goto LABEL_4;
        }

        if (!os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_40;
        }

        v11 = [SGCascadeWritebackAdapter _loggingIdentifiersFromEvents:*(a1 + 32)];
        v36 = *(a1 + 48);
        *buf = 138412546;
        v52 = v11;
        v53 = 2048;
        v54 = v36;
        _os_log_impl(&dword_231E60000, v8, OS_LOG_TYPE_DEFAULT, "addEvents:[SGEvent ids: %@] finished donating version: %llu", buf, 0x16u);
LABEL_39:

        goto LABEL_40;
      }

      v19 = sgLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = [SGCascadeWritebackAdapter _loggingIdentifiersFromEvents:*(a1 + 32)];
        *buf = 138412290;
        v52 = v20;
        _os_log_impl(&dword_231E60000, v19, OS_LOG_TYPE_DEFAULT, "addEvents:[SGEvent ids: %@] fallback to a full set donation of cascade items.", buf, 0xCu);
      }

      v8 = v5;
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v11 = *(a1 + 40);
      v21 = [v11 countByEnumeratingWithState:&v41 objects:v50 count:16];
      if (v21)
      {
        v22 = v21;
        v38 = a1;
        v7 = 0;
        v23 = *v42;
LABEL_20:
        v24 = 0;
        v25 = v7;
        while (1)
        {
          if (*v42 != v23)
          {
            objc_enumerationMutation(v11);
          }

          v26 = *(*(&v41 + 1) + 8 * v24);
          v40 = v25;
          v27 = [v8 registerItem:v26 error:&v40];
          v7 = v40;

          if ((v27 & 1) == 0)
          {
            break;
          }

          ++v24;
          v25 = v7;
          if (v22 == v24)
          {
            v22 = [v11 countByEnumeratingWithState:&v41 objects:v50 count:16];
            if (v22)
            {
              goto LABEL_20;
            }

LABEL_26:
            a1 = v38;
            goto LABEL_30;
          }
        }

        v28 = sgLogHandle();
        if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_38;
        }

        v29 = [SGCascadeWritebackAdapter _loggingIdentifiersFromEvents:*(v38 + 32)];
        v30 = [v26 metaContent];
        v31 = [v30 sourceItemIdentifier];
        *buf = 138412802;
        v52 = v29;
        v53 = 2112;
        v54 = v31;
        v55 = 2112;
        v56 = v7;
        v32 = "addEvents:[SGEvent ids: %@] cascade donation failed to register item with id: %@ error: %@";
        goto LABEL_42;
      }
    }

    v7 = 0;
LABEL_30:

    goto LABEL_32;
  }

  v7 = v6;
  v8 = sgLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = [SGCascadeWritebackAdapter _loggingIdentifiersFromEvents:*(a1 + 32)];
    *buf = 138412546;
    v52 = v9;
    v53 = 2112;
    v54 = v7;
    v10 = "addEvents:[SGEvent ids: %@] cascade donation failed with error %@";
LABEL_4:
    _os_log_error_impl(&dword_231E60000, v8, OS_LOG_TYPE_ERROR, v10, buf, 0x16u);
  }

LABEL_40:

  v37 = *MEMORY[0x277D85DE8];
}

- (void)addEvent:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v4 = MEMORY[0x277CBEA60];
  v5 = a3;
  v6 = [v4 arrayWithObjects:&v8 count:1];

  [(SGCascadeWritebackAdapter *)self addEvents:v6, v8, v9];
  v7 = *MEMORY[0x277D85DE8];
}

+ (id)_loggingIdentifiersFromEvents:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) loggingIdentifier];
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v4;
}

@end