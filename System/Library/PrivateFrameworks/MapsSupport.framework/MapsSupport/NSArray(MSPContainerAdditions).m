@interface NSArray(MSPContainerAdditions)
- (id)_maps_arrayWithObjectsConformingToProtocols:()MSPContainerAdditions;
- (id)_maps_indexesOfObjectsCorrespondingToIdentifiableObjects:()MSPContainerAdditions;
- (uint64_t)_maps_indexOfObjectCorrespondingToIdentifiableObject:()MSPContainerAdditions;
@end

@implementation NSArray(MSPContainerAdditions)

- (id)_maps_indexesOfObjectsCorrespondingToIdentifiableObjects:()MSPContainerAdditions
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB98];
  v5 = [a3 valueForKey:@"storageIdentifier"];
  v6 = [v4 setWithArray:v5];

  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = a1;
  v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v22;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v21 + 1) + 8 * i);
        v15 = [v14 storageIdentifier];
        v16 = [v6 containsObject:v15];

        if (v16)
        {
          v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v11];
          v18 = [v14 storageIdentifier];
          [v7 setObject:v17 forKeyedSubscript:v18];
        }

        ++v11;
      }

      v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v10);
  }

  v19 = *MEMORY[0x277D85DE8];

  return v7;
}

- (uint64_t)_maps_indexOfObjectCorrespondingToIdentifiableObject:()MSPContainerAdditions
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = a1;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v18;
LABEL_3:
    v10 = 0;
    v11 = v8;
    v8 += v7;
    while (1)
    {
      if (*v18 != v9)
      {
        objc_enumerationMutation(v5);
      }

      v12 = [*(*(&v17 + 1) + 8 * v10) storageIdentifier];
      v13 = [v4 storageIdentifier];
      v14 = [v12 isEqual:v13];

      if (v14)
      {
        break;
      }

      ++v11;
      if (v7 == ++v10)
      {
        v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v11 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v11;
}

- (id)_maps_arrayWithObjectsConformingToProtocols:()MSPContainerAdditions
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = a1;
  v6 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v23 + 1) + 8 * i);
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v11 = v4;
        v12 = [v11 countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v20;
          do
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v20 != v14)
              {
                objc_enumerationMutation(v11);
              }

              if ([v10 conformsToProtocol:*(*(&v19 + 1) + 8 * j)])
              {
                [v5 addObject:v10];
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v19 objects:v27 count:16];
          }

          while (v13);
        }
      }

      v7 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v7);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v5;
}

@end