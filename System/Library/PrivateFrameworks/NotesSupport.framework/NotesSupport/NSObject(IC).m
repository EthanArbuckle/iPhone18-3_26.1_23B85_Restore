@interface NSObject(IC)
- (uint64_t)ic_didAddObserverForContext:()IC inScope:;
- (uint64_t)ic_shouldIgnoreObserveValue:()IC ofObject:forKeyPath:;
- (void)ic_removeObserver:()IC forKeyPath:context:;
@end

@implementation NSObject(IC)

- (uint64_t)ic_didAddObserverForContext:()IC inScope:
{
  if (a3)
  {
    v4 = a4;
    if (*a3)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
      if (!v4)
      {
LABEL_5:
        v6 = [v5 isEqualToString:v4];

        return v6;
      }
    }

    else
    {
      v5 = 0;
      if (!a4)
      {
        goto LABEL_5;
      }
    }

    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v4];
    goto LABEL_5;
  }

  return 0;
}

- (void)ic_removeObserver:()IC forKeyPath:context:
{
  v8 = a3;
  v9 = a4;
  [a1 removeObserver:v8 forKeyPath:v9 context:a5];
}

- (uint64_t)ic_shouldIgnoreObserveValue:()IC ofObject:forKeyPath:
{
  v48 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v7 objectForKeyedSubscript:*MEMORY[0x1E696A500]];
  v11 = [v7 objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];
  v12 = v11;
  if (v10)
  {
    v13 = v11 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    goto LABEL_11;
  }

  v14 = [MEMORY[0x1E695DFB0] null];
  if (v10 == v14)
  {
    goto LABEL_10;
  }

  v15 = [MEMORY[0x1E695DFB0] null];
  v16 = v15;
  if (v12 == v15)
  {

LABEL_10:
    goto LABEL_11;
  }

  v17 = [v10 isEqual:v12];

  if (v17)
  {
    v18 = 1;
    goto LABEL_35;
  }

LABEL_11:
  v35 = v12;
  v36 = v10;
  v19 = [MEMORY[0x1E695DF70] array];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v19 addObject:v8];
  }

  v20 = v7;
  v37 = v9;
  v21 = [v9 componentsSeparatedByString:@"."];
  v22 = v8;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v23 = [v21 countByEnumeratingWithState:&v42 objects:v47 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v43;
    do
    {
      v26 = 0;
      v27 = v22;
      do
      {
        if (*v43 != v25)
        {
          objc_enumerationMutation(v21);
        }

        v22 = [v27 valueForKey:*(*(&v42 + 1) + 8 * v26)];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v19 addObject:v22];
        }

        ++v26;
        v27 = v22;
      }

      while (v24 != v26);
      v24 = [v21 countByEnumeratingWithState:&v42 objects:v47 count:16];
    }

    while (v24);
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v28 = v19;
  v29 = [v28 countByEnumeratingWithState:&v38 objects:v46 count:16];
  v7 = v20;
  if (v29)
  {
    v30 = v29;
    v31 = *v39;
    v12 = v35;
    while (2)
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v39 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v33 = *(*(&v38 + 1) + 8 * i);
        if (([v33 isFault] & 1) != 0 || objc_msgSend(v33, "faultingState"))
        {
          v18 = 1;
          goto LABEL_34;
        }
      }

      v30 = [v28 countByEnumeratingWithState:&v38 objects:v46 count:16];
      v18 = 0;
      if (v30)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v18 = 0;
    v12 = v35;
  }

LABEL_34:

  v10 = v36;
  v9 = v37;
LABEL_35:

  return v18;
}

- (void)ic_removeObserver:()IC forKeyPath:context:.cold.1(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *MEMORY[0x1E69E9840];
  objc_begin_catch(a1);
  v4 = os_log_create("com.apple.notes", "SimulatedCrash");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    v5 = 138412290;
    v6 = a3;
    _os_log_fault_impl(&dword_1D4576000, v4, OS_LOG_TYPE_FAULT, "Attempting to remove a non-existent observer for key path '%@'", &v5, 0xCu);
  }

  objc_end_catch();
}

@end