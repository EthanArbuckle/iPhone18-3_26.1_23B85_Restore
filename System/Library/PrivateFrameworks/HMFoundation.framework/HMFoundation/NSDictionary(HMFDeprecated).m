@interface NSDictionary(HMFDeprecated)
- (id)arrayOfDateComponentsFromDataForKey:()HMFDeprecated;
- (id)calendarFromDataForKey:()HMFDeprecated;
- (id)dateComponentsForKey:()HMFDeprecated;
- (id)dateComponentsFromDataForKey:()HMFDeprecated;
- (id)errorFromDataForKey:()HMFDeprecated;
- (id)predicateFromDataForKey:()HMFDeprecated;
- (id)secureDescriptionWithIndent:()HMFDeprecated newLine:blacklistedKeys:;
- (id)timeZoneFromDataForKey:()HMFDeprecated;
- (id)uuidFromStringForKey:()HMFDeprecated;
@end

@implementation NSDictionary(HMFDeprecated)

- (id)secureDescriptionWithIndent:()HMFDeprecated newLine:blacklistedKeys:
{
  v46 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  v9 = [MEMORY[0x277CCAB68] string];
  v10 = @"\n";
  if (!a4)
  {
    v10 = &stru_283EBDA30;
  }

  v11 = v10;
  v33 = v11;
  if (v7)
  {
    [v9 appendFormat:@"%@%@{\n", v11, v7];
    [(__CFString *)v7 indentationByLevels:1];
  }

  else
  {
    [v9 appendFormat:@"%@{\n", v11];
    +[HMFStringIndentation indentation];
  }
  v12 = ;
  v34 = v7;
  [a1 allKeys];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v13 = v43 = 0u;
  v14 = [v13 countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v41;
    while (2)
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v41 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v40 + 1) + 8 * i);
        if ((objc_opt_respondsToSelector() & 1) == 0)
        {
          v19 = v13;
          goto LABEL_17;
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v40 objects:v45 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

  v19 = [v13 sortedArrayUsingSelector:sel_compare_];
LABEL_17:

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v20 = v19;
  v21 = [v20 countByEnumeratingWithState:&v36 objects:v44 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v37;
    do
    {
      v24 = 0;
      do
      {
        if (*v37 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v36 + 1) + 8 * v24);
        if (([v8 containsObject:v25] & 1) == 0)
        {
          [v9 appendFormat:@"%@%@ = ", v12, v25];
          v26 = [a1 objectForKeyedSubscript:v25];
          objc_opt_class();
          if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
          {
            v27 = [v26 secureDescriptionWithIndent:v12 newLine:1 blacklistedKeys:v8];
          }

          else if ([v26 conformsToProtocol:&unk_283ED27D0] || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v27 = [v26 shortDescription];
          }

          else
          {
            v27 = [v26 description];
          }

          v28 = v27;
          [v9 appendString:v27];

          [v9 appendString:{@", \n"}];
        }

        ++v24;
      }

      while (v22 != v24);
      v29 = [v20 countByEnumeratingWithState:&v36 objects:v44 count:16];
      v22 = v29;
    }

    while (v29);
  }

  v30 = &stru_283EBDA30;
  if (v34)
  {
    v30 = v34;
  }

  [v9 appendFormat:@"%@}", v30];

  v31 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)uuidFromStringForKey:()HMFDeprecated
{
  v1 = [a1 hmf_stringForKey:?];
  if (v1)
  {
    v2 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)timeZoneFromDataForKey:()HMFDeprecated
{
  v1 = [a1 hmf_dataForKey:?];
  v2 = [v1 decodeTimeZone];

  return v2;
}

- (id)dateComponentsForKey:()HMFDeprecated
{
  v4 = a3;
  v5 = [a1 hmf_dateComponentsForKey:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [a1 dateComponentsFromDataForKey:v4];
  }

  v8 = v7;

  return v8;
}

- (id)dateComponentsFromDataForKey:()HMFDeprecated
{
  v1 = [a1 hmf_dataForKey:?];
  v2 = [v1 decodeDateComponents];

  return v2;
}

- (id)errorFromDataForKey:()HMFDeprecated
{
  v1 = [a1 hmf_dataForKey:?];
  if (v1)
  {
    v2 = MEMORY[0x277CCAAC8];
    v3 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
    v4 = [v2 deserializeObjectWithData:v1 allowedClasses:v3];

    if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)calendarFromDataForKey:()HMFDeprecated
{
  v1 = [a1 hmf_dataForKey:?];
  v2 = [v1 decodeCalendar];

  return v2;
}

- (id)predicateFromDataForKey:()HMFDeprecated
{
  v10[2] = *MEMORY[0x277D85DE8];
  v1 = [a1 hmf_dataForKey:?];
  if (v1)
  {
    v2 = MEMORY[0x277CCAAC8];
    v3 = MEMORY[0x277CBEB98];
    v10[0] = objc_opt_class();
    v10[1] = objc_opt_class();
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
    v5 = [v3 setWithArray:v4];
    v6 = [v2 deserializeObjectWithData:v1 allowedClasses:v5];

    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)arrayOfDateComponentsFromDataForKey:()HMFDeprecated
{
  v1 = [a1 hmf_dataForKey:?];
  v2 = [v1 decodeArrayOfDateComponents];

  return v2;
}

@end