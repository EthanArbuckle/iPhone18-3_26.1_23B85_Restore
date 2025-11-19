@interface NSMutableSet(HMFMerging)
- (uint64_t)mergeObject:()HMFMerging;
- (uint64_t)shouldMergeObject:()HMFMerging;
@end

@implementation NSMutableSet(HMFMerging)

- (uint64_t)shouldMergeObject:()HMFMerging
{
  v3 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (v3 != 0) & isKindOfClass;
}

- (uint64_t)mergeObject:()HMFMerging
{
  v45 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  v29 = v4;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = [a1 mutableCopy];
  [v7 minusSet:v6];
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v38 objects:v44 count:16];
  v10 = v9 != 0;
  if (v9)
  {
    v11 = v9;
    v12 = *v39;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v39 != v12)
        {
          objc_enumerationMutation(v8);
        }

        [a1 removeObject:*(*(&v38 + 1) + 8 * i)];
      }

      v11 = [v8 countByEnumeratingWithState:&v38 objects:v44 count:16];
    }

    while (v11);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v14 = a1;
  v15 = [v14 countByEnumeratingWithState:&v34 objects:v43 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v35;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v35 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v34 + 1) + 8 * j);
        v20 = [v6 member:v19];
        if (v20 && [v19 conformsToProtocol:&unk_283EDF110] && objc_msgSend(v19, "shouldMergeObject:", v20))
        {
          v10 |= [v19 mergeObject:v20];
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v34 objects:v43 count:16];
    }

    while (v16);
  }

  v21 = [v6 mutableCopy];
  [v21 minusSet:v14];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v22 = v21;
  v23 = [v22 countByEnumeratingWithState:&v30 objects:v42 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v31;
    do
    {
      for (k = 0; k != v24; ++k)
      {
        if (*v31 != v25)
        {
          objc_enumerationMutation(v22);
        }

        [v14 addObject:*(*(&v30 + 1) + 8 * k)];
      }

      v24 = [v22 countByEnumeratingWithState:&v30 objects:v42 count:16];
    }

    while (v24);
    LOBYTE(v10) = 1;
  }

  v27 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

@end