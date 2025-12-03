@interface HMDMatterCommandActionUtilities
+ (id)commandsInMemoryRepresentation:(id)representation;
+ (id)commandsInStoreRepresentation:(id)representation;
@end

@implementation HMDMatterCommandActionUtilities

+ (id)commandsInMemoryRepresentation:(id)representation
{
  v29 = *MEMORY[0x277D85DE8];
  representationCopy = representation;
  array = [MEMORY[0x277CBEB18] array];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = representationCopy;
  v5 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v25;
    v8 = *MEMORY[0x277CCFC20];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v24 + 1) + 8 * i);
        v11 = [v10 mutableCopy];
        v12 = [v11 objectForKey:v8];
        v13 = [v12 mutableCopy];

        if (v13)
        {
          v14 = [v13 mutableCopy];
          v22[0] = MEMORY[0x277D85DD0];
          v22[1] = 3221225472;
          v22[2] = __66__HMDMatterCommandActionUtilities_commandsInMemoryRepresentation___block_invoke;
          v22[3] = &unk_27866F4E0;
          v23 = v14;
          v15 = v14;
          [v15 hmf_enumerateWithAutoreleasePoolUsingBlock:v22];
          v16 = [v15 copy];
          [v11 setObject:v16 forKey:v8];

          v17 = [v11 copy];
          [array addObject:v17];
        }

        else
        {
          [array addObject:v10];
        }
      }

      v6 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v6);
  }

  v18 = [array copy];
  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

void __66__HMDMatterCommandActionUtilities_commandsInMemoryRepresentation___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v36 = a2;
  v4 = [v36 mutableCopy];
  v5 = *MEMORY[0x277CD50B8];
  v6 = [v36 objectForKey:*MEMORY[0x277CD50B8]];
  v7 = v6;
  v8 = MEMORY[0x277CCFD10];
  v9 = MEMORY[0x277CCFC08];
  if (v6)
  {
    v10 = MEMORY[0x277CD51C0];
    v11 = [v6 hmf_numberForKey:*MEMORY[0x277CCFD10]];
    v12 = [v7 hmf_numberForKey:*v9];
    v13 = [v7 hmf_numberForKey:*MEMORY[0x277CCF2D8]];
    v14 = [v10 attributePathWithEndpointID:v11 clusterID:v12 attributeID:v13];

    [v4 setObject:v14 forKey:v5];
  }

  v15 = *MEMORY[0x277CD50C8];
  v16 = [v36 objectForKey:{*MEMORY[0x277CD50C8], a3}];
  v17 = v16;
  if (v16)
  {
    v18 = MEMORY[0x277CD52F0];
    v19 = [v16 hmf_numberForKey:*v8];
    v20 = [v17 hmf_numberForKey:*v9];
    [v17 hmf_numberForKey:*MEMORY[0x277CCFC30]];
    v22 = v21 = v9;
    v23 = [v18 commandPathWithEndpointID:v19 clusterID:v20 commandID:v22];

    v9 = v21;
    v8 = MEMORY[0x277CCFD10];

    [v4 setObject:v23 forKey:v15];
  }

  v24 = *MEMORY[0x277CD5140];
  v25 = [v36 objectForKey:*MEMORY[0x277CD5140]];
  v26 = v25;
  if (v25)
  {
    v27 = MEMORY[0x277CD5408];
    v28 = [v25 hmf_numberForKey:*v8];
    v29 = [v26 hmf_numberForKey:*v9];
    v30 = [v26 hmf_numberForKey:*MEMORY[0x277CCFD30]];
    v31 = [v27 eventPathWithEndpointID:v28 clusterID:v29 eventID:v30];

    [v4 setObject:v31 forKey:v24];
  }

  v32 = *(a1 + 32);
  v33 = [v4 copy];
  [v32 replaceObjectAtIndex:v35 withObject:v33];
}

+ (id)commandsInStoreRepresentation:(id)representation
{
  v29 = *MEMORY[0x277D85DE8];
  representationCopy = representation;
  array = [MEMORY[0x277CBEB18] array];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = representationCopy;
  v5 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v25;
    v8 = *MEMORY[0x277CCFC20];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v24 + 1) + 8 * i);
        v11 = [v10 mutableCopy];
        v12 = [v11 objectForKey:v8];
        v13 = [v12 mutableCopy];

        if (v13)
        {
          v14 = [v13 mutableCopy];
          v22[0] = MEMORY[0x277D85DD0];
          v22[1] = 3221225472;
          v22[2] = __65__HMDMatterCommandActionUtilities_commandsInStoreRepresentation___block_invoke;
          v22[3] = &unk_27866F4E0;
          v23 = v14;
          v15 = v14;
          [v15 hmf_enumerateWithAutoreleasePoolUsingBlock:v22];
          v16 = [v15 copy];
          [v11 setObject:v16 forKey:v8];

          v17 = [v11 copy];
          [array addObject:v17];
        }

        else
        {
          [array addObject:v10];
        }
      }

      v6 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v6);
  }

  v18 = [array copy];
  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

void __65__HMDMatterCommandActionUtilities_commandsInStoreRepresentation___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v48[3] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 mutableCopy];
  v5 = *MEMORY[0x277CD50B8];
  v6 = [v3 objectForKeyedSubscript:*MEMORY[0x277CD50B8]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v9 = MEMORY[0x277CCFC08];
  v10 = MEMORY[0x277CCFD10];
  if (v8)
  {
    v47[0] = *MEMORY[0x277CCF2D8];
    v11 = [v8 attribute];
    v48[0] = v11;
    v47[1] = *v9;
    v12 = [v8 cluster];
    v48[1] = v12;
    v47[2] = *v10;
    v13 = [v8 endpoint];
    v48[2] = v13;
    [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:v47 count:3];
    v15 = v14 = v10;

    [v4 setObject:v15 forKey:v5];
    v10 = v14;
  }

  v16 = *MEMORY[0x277CD50C8];
  v17 = [v3 objectForKeyedSubscript:{*MEMORY[0x277CD50C8], a1}];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  v19 = v18;

  if (v19)
  {
    v45[0] = *MEMORY[0x277CCFC30];
    v20 = [v19 command];
    v46[0] = v20;
    v45[1] = *v9;
    v21 = [v19 cluster];
    v46[1] = v21;
    v45[2] = *v10;
    [v19 endpoint];
    v22 = v19;
    v23 = v3;
    v24 = v8;
    v25 = v4;
    v27 = v26 = v10;
    v46[2] = v27;
    v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:v45 count:3];

    v10 = v26;
    v4 = v25;
    v8 = v24;
    v3 = v23;
    v19 = v22;

    v9 = MEMORY[0x277CCFC08];
    [v4 setObject:v28 forKey:v16];
  }

  v29 = *MEMORY[0x277CD5140];
  v30 = [v3 objectForKeyedSubscript:*MEMORY[0x277CD5140]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v31 = v30;
  }

  else
  {
    v31 = 0;
  }

  v32 = v31;

  if (v32)
  {
    v43[0] = *MEMORY[0x277CCFD30];
    v33 = [v32 event];
    v44[0] = v33;
    v43[1] = *v9;
    v34 = [v32 cluster];
    v44[1] = v34;
    v43[2] = *v10;
    v35 = [v32 endpoint];
    v44[2] = v35;
    v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:v43 count:3];

    [v4 setObject:v36 forKey:v29];
  }

  v37 = *(v41 + 32);
  v38 = [v4 copy];
  [v37 replaceObjectAtIndex:a3 withObject:v38];

  v39 = *MEMORY[0x277D85DE8];
}

@end