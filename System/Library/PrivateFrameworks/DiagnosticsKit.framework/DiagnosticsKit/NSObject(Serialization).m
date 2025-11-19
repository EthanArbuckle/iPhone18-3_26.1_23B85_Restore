@interface NSObject(Serialization)
- (id)dropNonSerializableDataWithError:()Serialization;
@end

@implementation NSObject(Serialization)

- (id)dropNonSerializableDataWithError:()Serialization
{
  v53 = *MEMORY[0x277D85DE8];
  if ([a1 isJSONSerializable])
  {
    goto LABEL_2;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [MEMORY[0x277CBEB18] array];
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v7 = a1;
    v8 = [v7 countByEnumeratingWithState:&v44 objects:v52 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v45;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v45 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v44 + 1) + 8 * i) dropNonSerializableDataWithError:a3];
          if (v12)
          {
            [v6 addObject:v12];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v44 objects:v52 count:16];
      }

      while (v9);
    }

LABEL_13:

    if ([v6 count])
    {
      v13 = v6;
    }

    else
    {
      v13 = 0;
    }

    v5 = v13;
LABEL_29:

    goto LABEL_30;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = a1;
    v14 = [MEMORY[0x277CBEB38] dictionary];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v15 = [v6 allKeys];
    v16 = [v15 countByEnumeratingWithState:&v40 objects:v51 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v41;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v41 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v40 + 1) + 8 * j);
          v21 = [v6 objectForKeyedSubscript:v20];
          v22 = [v21 dropNonSerializableDataWithError:a3];
          [v14 setObject:v22 forKeyedSubscript:v20];
        }

        v17 = [v15 countByEnumeratingWithState:&v40 objects:v51 count:16];
      }

      while (v17);
    }

    if ([v14 count])
    {
      v23 = v14;
    }

    else
    {
      v23 = 0;
    }

    v5 = v23;

    goto LABEL_29;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [MEMORY[0x277CBEB58] set];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v7 = a1;
    v26 = [v7 countByEnumeratingWithState:&v36 objects:v50 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v37;
      do
      {
        for (k = 0; k != v27; ++k)
        {
          if (*v37 != v28)
          {
            objc_enumerationMutation(v7);
          }

          v30 = [*(*(&v36 + 1) + 8 * k) dropNonSerializableDataWithError:a3];
          if (v30)
          {
            [v6 addObject:v30];
          }
        }

        v27 = [v7 countByEnumeratingWithState:&v36 objects:v50 count:16];
      }

      while (v27);
    }

    goto LABEL_13;
  }

  if ([a1 isSecureCodable])
  {
LABEL_2:
    v5 = a1;
    goto LABEL_30;
  }

  v31 = MEMORY[0x277CCACA8];
  v32 = DKErrorLocalizedDescriptionForCode(-1009);
  v33 = [v31 stringWithFormat:v32, a1];

  if (a3)
  {
    v34 = MEMORY[0x277CCA9B8];
    v48 = *MEMORY[0x277CCA450];
    v49 = v33;
    v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
    *a3 = [v34 errorWithDomain:@"DKErrorDomain" code:-1009 userInfo:v35];
  }

  v5 = 0;
LABEL_30:
  v24 = *MEMORY[0x277D85DE8];

  return v5;
}

@end