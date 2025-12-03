@interface NSDictionary(DiffBuilding)
- (void)diffAgainstObject:()DiffBuilding usingDiffBuilder:withDescription:;
@end

@implementation NSDictionary(DiffBuilding)

- (void)diffAgainstObject:()DiffBuilding usingDiffBuilder:withDescription:
{
  v62 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v6;
  v9 = MEMORY[0x277CBEB98];
  allKeys = [self allKeys];
  v11 = [v9 setWithArray:allKeys];

  v12 = MEMORY[0x277CBEB98];
  allKeys2 = [v8 allKeys];
  v14 = [v12 setWithArray:allKeys2];

  v15 = [v14 mutableCopy];
  [v15 minusSet:v11];
  v16 = [v11 mutableCopy];
  [v16 minusSet:v14];
  v43 = v11;
  v44 = [v11 mutableCopy];
  v42 = v14;
  [v44 intersectSet:v14];
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = v15;
  v17 = [obj countByEnumeratingWithState:&v55 objects:v61 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v56;
    do
    {
      v20 = 0;
      do
      {
        if (*v56 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v55 + 1) + 8 * v20);
        if (objc_opt_respondsToSelector())
        {
          [v21 diffDescription];
        }

        else
        {
          [v21 description];
        }
        v22 = ;
        v23 = [v8 objectForKeyedSubscript:v21];
        [v7 diffObject:0 againstObject:v23 withDescription:v22];

        ++v20;
      }

      while (v18 != v20);
      v18 = [obj countByEnumeratingWithState:&v55 objects:v61 count:16];
    }

    while (v18);
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v24 = v16;
  v25 = [v24 countByEnumeratingWithState:&v51 objects:v60 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v52;
    do
    {
      v28 = 0;
      do
      {
        if (*v52 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = *(*(&v51 + 1) + 8 * v28);
        if (objc_opt_respondsToSelector())
        {
          [v29 diffDescription];
        }

        else
        {
          [v29 description];
        }
        v30 = ;
        v31 = [self objectForKeyedSubscript:v29];
        [v7 diffObject:v31 againstObject:0 withDescription:v30];

        ++v28;
      }

      while (v26 != v28);
      v26 = [v24 countByEnumeratingWithState:&v51 objects:v60 count:16];
    }

    while (v26);
  }

  v41 = v24;

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = v44;
  v32 = [v45 countByEnumeratingWithState:&v47 objects:v59 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v48;
    do
    {
      v35 = 0;
      do
      {
        if (*v48 != v34)
        {
          objc_enumerationMutation(v45);
        }

        v36 = *(*(&v47 + 1) + 8 * v35);
        if (objc_opt_respondsToSelector())
        {
          [v36 diffDescription];
        }

        else
        {
          [v36 description];
        }
        v37 = ;
        v38 = [self objectForKeyedSubscript:v36];
        v39 = [v8 objectForKeyedSubscript:v36];
        [v7 diffObject:v38 againstObject:v39 withDescription:v37];

        ++v35;
      }

      while (v33 != v35);
      v33 = [v45 countByEnumeratingWithState:&v47 objects:v59 count:16];
    }

    while (v33);
  }

  v40 = *MEMORY[0x277D85DE8];
}

@end