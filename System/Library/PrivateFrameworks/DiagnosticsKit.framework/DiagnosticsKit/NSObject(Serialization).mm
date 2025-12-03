@interface NSObject(Serialization)
- (id)dropNonSerializableDataWithError:()Serialization;
@end

@implementation NSObject(Serialization)

- (id)dropNonSerializableDataWithError:()Serialization
{
  v53 = *MEMORY[0x277D85DE8];
  if ([self isJSONSerializable])
  {
    goto LABEL_2;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy2 = [MEMORY[0x277CBEB18] array];
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    selfCopy3 = self;
    v8 = [selfCopy3 countByEnumeratingWithState:&v44 objects:v52 count:16];
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
            objc_enumerationMutation(selfCopy3);
          }

          v12 = [*(*(&v44 + 1) + 8 * i) dropNonSerializableDataWithError:a3];
          if (v12)
          {
            [selfCopy2 addObject:v12];
          }
        }

        v9 = [selfCopy3 countByEnumeratingWithState:&v44 objects:v52 count:16];
      }

      while (v9);
    }

LABEL_13:

    if ([selfCopy2 count])
    {
      v13 = selfCopy2;
    }

    else
    {
      v13 = 0;
    }

    selfCopy4 = v13;
LABEL_29:

    goto LABEL_30;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy2 = self;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    allKeys = [selfCopy2 allKeys];
    v16 = [allKeys countByEnumeratingWithState:&v40 objects:v51 count:16];
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
            objc_enumerationMutation(allKeys);
          }

          v20 = *(*(&v40 + 1) + 8 * j);
          v21 = [selfCopy2 objectForKeyedSubscript:v20];
          v22 = [v21 dropNonSerializableDataWithError:a3];
          [dictionary setObject:v22 forKeyedSubscript:v20];
        }

        v17 = [allKeys countByEnumeratingWithState:&v40 objects:v51 count:16];
      }

      while (v17);
    }

    if ([dictionary count])
    {
      v23 = dictionary;
    }

    else
    {
      v23 = 0;
    }

    selfCopy4 = v23;

    goto LABEL_29;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy2 = [MEMORY[0x277CBEB58] set];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    selfCopy3 = self;
    v26 = [selfCopy3 countByEnumeratingWithState:&v36 objects:v50 count:16];
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
            objc_enumerationMutation(selfCopy3);
          }

          v30 = [*(*(&v36 + 1) + 8 * k) dropNonSerializableDataWithError:a3];
          if (v30)
          {
            [selfCopy2 addObject:v30];
          }
        }

        v27 = [selfCopy3 countByEnumeratingWithState:&v36 objects:v50 count:16];
      }

      while (v27);
    }

    goto LABEL_13;
  }

  if ([self isSecureCodable])
  {
LABEL_2:
    selfCopy4 = self;
    goto LABEL_30;
  }

  v31 = MEMORY[0x277CCACA8];
  v32 = DKErrorLocalizedDescriptionForCode(-1009);
  v33 = [v31 stringWithFormat:v32, self];

  if (a3)
  {
    v34 = MEMORY[0x277CCA9B8];
    v48 = *MEMORY[0x277CCA450];
    v49 = v33;
    v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
    *a3 = [v34 errorWithDomain:@"DKErrorDomain" code:-1009 userInfo:v35];
  }

  selfCopy4 = 0;
LABEL_30:
  v24 = *MEMORY[0x277D85DE8];

  return selfCopy4;
}

@end