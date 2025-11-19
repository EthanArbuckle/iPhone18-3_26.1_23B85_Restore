@interface NSDictionary(HMFoundation)
+ (NSString)shortDescription;
- (id)hmf_UUIDForKey:()HMFoundation;
- (id)hmf_arrayForKey:()HMFoundation ofClasses:;
- (id)hmf_base64EncodedDataForKey:()HMFoundation;
- (id)hmf_copyAsMemoryMappedData;
- (id)hmf_unarchivedObjectForKey:()HMFoundation ofClasses:;
- (id)privateDescription;
- (id)shortDescription;
- (uint64_t)hmf_BOOLForKey:()HMFoundation error:;
- (uint64_t)hmf_BOOLForKey:()HMFoundation isPresent:;
- (uint64_t)hmf_integerForKey:()HMFoundation error:;
- (void)hmf_URLForKey:()HMFoundation;
- (void)hmf_arrayForKey:()HMFoundation;
- (void)hmf_calendarForKey:()HMFoundation;
- (void)hmf_dataForKey:()HMFoundation;
- (void)hmf_dateComponentsForKey:()HMFoundation;
- (void)hmf_dateForKey:()HMFoundation;
- (void)hmf_dictionaryForKey:()HMFoundation;
- (void)hmf_enumerateKeysAndObjectsWithAutoreleasePoolUsingBlock:()HMFoundation;
- (void)hmf_errorForKey:()HMFoundation;
- (void)hmf_fileHandleForKey:()HMFoundation;
- (void)hmf_flowForKey:()HMFoundation;
- (void)hmf_mutableArrayForKey:()HMFoundation;
- (void)hmf_mutableDictionaryForKey:()HMFoundation;
- (void)hmf_mutableSetForKey:()HMFoundation;
- (void)hmf_nullForKey:()HMFoundation;
- (void)hmf_numberForKey:()HMFoundation;
- (void)hmf_setForKey:()HMFoundation;
- (void)hmf_stringForKey:()HMFoundation;
- (void)hmf_timeZoneForKey:()HMFoundation;
- (void)hmf_valueForKey:()HMFoundation;
@end

@implementation NSDictionary(HMFoundation)

+ (NSString)shortDescription
{
  v0 = objc_opt_class();

  return NSStringFromClass(v0);
}

- (id)shortDescription
{
  v2 = [MEMORY[0x277CBEB98] set];
  v3 = [a1 secureDescriptionWithIndent:0 newLine:1 blacklistedKeys:v2];

  return v3;
}

- (id)privateDescription
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(a1, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = [a1 keyEnumerator];
  v3 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v18;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v17 + 1) + 8 * i);
        v8 = [a1 objectForKeyedSubscript:v7];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = v8;
        }

        else
        {
          v9 = 0;
        }

        v10 = v9;
        v11 = v10;
        if (v10)
        {
          [v10 privateDescription];
        }

        else
        {
          [v8 description];
        }
        v12 = ;

        [v2 setObject:v12 forKeyedSubscript:v7];
      }

      v4 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v4);
  }

  v13 = [v2 description];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (void)hmf_arrayForKey:()HMFoundation
{
  v1 = [a1 objectForKeyedSubscript:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;

  return v2;
}

- (id)hmf_arrayForKey:()HMFoundation ofClasses:
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [a1 hmf_arrayForKey:a3];
  v8 = v7;
  if (v7)
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v30;
      v24 = v8;
      while (1)
      {
        v13 = 0;
LABEL_5:
        if (*v30 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v29 + 1) + 8 * v13);
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v15 = v6;
        v16 = [v15 countByEnumeratingWithState:&v25 objects:v33 count:16];
        if (!v16)
        {
          break;
        }

        v17 = v16;
        v18 = *v26;
LABEL_9:
        v19 = 0;
        while (1)
        {
          if (*v26 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v25 + 1) + 8 * v19);
          if (objc_opt_isKindOfClass())
          {
            break;
          }

          if (v17 == ++v19)
          {
            v17 = [v15 countByEnumeratingWithState:&v25 objects:v33 count:16];
            if (v17)
            {
              goto LABEL_9;
            }

            goto LABEL_19;
          }
        }

        if (++v13 != v11)
        {
          goto LABEL_5;
        }

        v11 = [v9 countByEnumeratingWithState:&v29 objects:v34 count:16];
        v8 = v24;
        if (!v11)
        {
          goto LABEL_18;
        }
      }

LABEL_19:

      v21 = 0;
      v8 = v24;
    }

    else
    {
LABEL_18:

      v21 = v9;
    }
  }

  else
  {
    v21 = 0;
  }

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

- (void)hmf_mutableArrayForKey:()HMFoundation
{
  v1 = [a1 objectForKeyedSubscript:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;

  return v2;
}

- (id)hmf_base64EncodedDataForKey:()HMFoundation
{
  v1 = [a1 hmf_stringForKey:?];
  if (v1)
  {
    v2 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v1 options:1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (uint64_t)hmf_BOOLForKey:()HMFoundation isPresent:
{
  v5 = [a1 hmf_numberForKey:?];
  v6 = v5;
  if (a4)
  {
    *a4 = v5 != 0;
  }

  if (v5)
  {
    v7 = [v5 BOOLValue];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (uint64_t)hmf_BOOLForKey:()HMFoundation error:
{
  v5 = [a1 objectForKeyedSubscript:?];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;
    v8 = v7;
    if (v7)
    {
      v9 = [v7 BOOLValue];
    }

    else if (a4)
    {
      [MEMORY[0x277CCA9B8] hmfErrorWithCode:3];
      *a4 = v9 = 0;
    }

    else
    {
      v9 = 0;
    }
  }

  else if (a4)
  {
    [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
    *a4 = v9 = 0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)hmf_calendarForKey:()HMFoundation
{
  v1 = [a1 objectForKeyedSubscript:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;

  return v2;
}

- (void)hmf_dataForKey:()HMFoundation
{
  v1 = [a1 objectForKeyedSubscript:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;

  return v2;
}

- (void)hmf_dateForKey:()HMFoundation
{
  v1 = [a1 objectForKeyedSubscript:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;

  return v2;
}

- (void)hmf_dateComponentsForKey:()HMFoundation
{
  v1 = [a1 objectForKeyedSubscript:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;

  return v2;
}

- (void)hmf_dictionaryForKey:()HMFoundation
{
  v1 = [a1 objectForKeyedSubscript:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;

  return v2;
}

- (void)hmf_mutableDictionaryForKey:()HMFoundation
{
  v1 = [a1 objectForKeyedSubscript:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;

  return v2;
}

- (void)hmf_errorForKey:()HMFoundation
{
  v1 = [a1 objectForKeyedSubscript:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;

  return v2;
}

- (void)hmf_flowForKey:()HMFoundation
{
  v8[1] = *MEMORY[0x277D85DE8];
  v8[0] = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  v3 = [a1 hmf_unarchivedObjectForKey:@"HMFMessageFlowKey" ofClasses:v2];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = *MEMORY[0x277D85DE8];
  return v4;
}

- (void)hmf_nullForKey:()HMFoundation
{
  v1 = [a1 objectForKeyedSubscript:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;

  return v2;
}

- (uint64_t)hmf_integerForKey:()HMFoundation error:
{
  v5 = [a1 objectForKeyedSubscript:?];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;
    v8 = v7;
    if (v7)
    {
      v9 = [v7 integerValue];
    }

    else if (a4)
    {
      [MEMORY[0x277CCA9B8] hmfErrorWithCode:3];
      *a4 = v9 = 0;
    }

    else
    {
      v9 = 0;
    }
  }

  else if (a4)
  {
    [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
    *a4 = v9 = 0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)hmf_numberForKey:()HMFoundation
{
  v1 = [a1 objectForKeyedSubscript:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;

  return v2;
}

- (void)hmf_setForKey:()HMFoundation
{
  v1 = [a1 objectForKeyedSubscript:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;

  return v2;
}

- (void)hmf_mutableSetForKey:()HMFoundation
{
  v1 = [a1 objectForKeyedSubscript:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;

  return v2;
}

- (void)hmf_stringForKey:()HMFoundation
{
  v1 = [a1 objectForKeyedSubscript:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;

  return v2;
}

- (void)hmf_timeZoneForKey:()HMFoundation
{
  v1 = [a1 objectForKeyedSubscript:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;

  return v2;
}

- (void)hmf_URLForKey:()HMFoundation
{
  v1 = [a1 objectForKeyedSubscript:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;

  return v2;
}

- (id)hmf_UUIDForKey:()HMFoundation
{
  v1 = [a1 objectForKeyedSubscript:?];
  if (v1)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v3 = v1;
    }

    else
    {
      v3 = 0;
    }

    v4 = v3;
    if (isKindOfClass)
    {
      v5 = v1;
    }

    else
    {
      v6 = v1;
      objc_opt_class();
      v7 = objc_opt_isKindOfClass();
      if (v7)
      {
        v8 = v6;
      }

      else
      {
        v8 = 0;
      }

      v9 = v8;

      v5 = 0;
      if (v7)
      {
        v5 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v6];
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)hmf_valueForKey:()HMFoundation
{
  v1 = [a1 objectForKeyedSubscript:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;

  return v2;
}

- (id)hmf_unarchivedObjectForKey:()HMFoundation ofClasses:
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CBEB98] setWithArray:v7];
  v9 = [a1 hmf_dataForKey:v6];
  if (v9)
  {
    v19 = 0;
    v10 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v8 fromData:v9 error:&v19];
    v11 = v19;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v13 = objc_autoreleasePoolPush();
      v14 = a1;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = HMFGetLogIdentifier(v14);
        *buf = 138544130;
        v21 = v16;
        v22 = 2112;
        v23 = v8;
        v24 = 2112;
        v25 = v9;
        v26 = 2112;
        v27 = v11;
        _os_log_impl(&dword_22ADEC000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to deserialize object of classes: %@, from data %@, with error: %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v13);
    }
  }

  else
  {
    v10 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)hmf_fileHandleForKey:()HMFoundation
{
  v1 = [a1 objectForKeyedSubscript:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;

  return v2;
}

- (void)hmf_enumerateKeysAndObjectsWithAutoreleasePoolUsingBlock:()HMFoundation
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __87__NSDictionary_HMFoundation__hmf_enumerateKeysAndObjectsWithAutoreleasePoolUsingBlock___block_invoke;
  v6[3] = &unk_2786E7418;
  v7 = v4;
  v5 = v4;
  [a1 enumerateKeysAndObjectsUsingBlock:v6];
}

- (id)hmf_copyAsMemoryMappedData
{
  v2 = [MEMORY[0x277CBEB28] data];
  [v2 hmf_appendObject:a1];
  v3 = [v2 hmf_copyAsMemoryMappedData];

  return v3;
}

@end