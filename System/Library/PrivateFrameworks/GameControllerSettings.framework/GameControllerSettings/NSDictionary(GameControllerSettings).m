@interface NSDictionary(GameControllerSettings)
+ (id)_gcs_jsonObjectForSerializableDictionary:()GameControllerSettings;
+ (id)_gcs_serializableDictionaryForDictionaryJsonObject:()GameControllerSettings;
+ (id)_gcs_serializableDictionaryForJsonObject:()GameControllerSettings withValuesOfClass:;
- (GCSElement)_gcs_gscElementForJSONKey:()GameControllerSettings;
- (GCSProfile)_gcs_gscProfileForJSONKey:()GameControllerSettings;
- (id)_gcs_arrayForJSONKey:()GameControllerSettings;
- (id)_gcs_dateForJSONKey:()GameControllerSettings;
- (id)_gcs_dictionaryForJSONKey:()GameControllerSettings;
- (id)_gcs_numberForJSONKey:()GameControllerSettings;
- (id)_gcs_stringForJSONKey:()GameControllerSettings;
- (id)_gcs_uuidForJSONKey:()GameControllerSettings;
- (id)jsonObject;
- (void)initWithJSONObject:()GameControllerSettings;
@end

@implementation NSDictionary(GameControllerSettings)

- (void)initWithJSONObject:()GameControllerSettings
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20 = v4;
    v5 = v4;
    v6 = objc_opt_new();
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v22;
      do
      {
        v11 = 0;
        do
        {
          if (*v22 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v21 + 1) + 8 * v11);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v13 = v12;
            v14 = [v7 objectForKeyedSubscript:v13];
            if ([v14 conformsToProtocol:&unk_286195E48])
            {
              [v6 setObject:v14 forKeyedSubscript:v13];
            }
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v9);
    }

    v15 = [a1 initWithDictionary:v6];
    a1 = v15;
    if (v15)
    {
      v16 = v15;
    }

    v17 = a1;
    v4 = v20;
  }

  else
  {
    v17 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

- (id)jsonObject
{
  v18 = *MEMORY[0x277D85DE8];
  v12 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = [a1 allKeys];
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v8 = [a1 objectForKey:v7];
          if ([v8 conformsToProtocol:&unk_286195E48])
          {
            v9 = [v8 jsonObject];
            [v12 setObject:v9 forKeyedSubscript:v7];
          }

          else if ([v8 conformsToProtocol:&unk_286197818])
          {
            [v12 setObject:v8 forKeyedSubscript:v7];
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)_gcs_jsonObjectForSerializableDictionary:()GameControllerSettings
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v3, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = v10;
          v12 = [v5 objectForKeyedSubscript:{v11, v16}];
          if ([v12 conformsToProtocol:&unk_286197818])
          {
            [v4 setObject:v12 forKeyedSubscript:v11];
          }

          else
          {
            v13 = [v12 jsonObject];
            if (v13)
            {
              [v4 setObject:v13 forKeyedSubscript:v11];
            }
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)_gcs_serializableDictionaryForJsonObject:()GameControllerSettings withValuesOfClass:
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v29 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v5, "count")}];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v31;
    v10 = 0x277CCA000uLL;
    v11 = &_OBJC_LABEL_PROTOCOL___NSObject;
    v12 = &_OBJC_LABEL_PROTOCOL___NSObject;
    do
    {
      v13 = 0;
      v28 = v8;
      do
      {
        if (*v31 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v14 = *(*(&v30 + 1) + 8 * v13);
        v15 = *(v10 + 3240);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = v14;
          v17 = [v6 objectForKeyedSubscript:v16];
          if ([(objc_class *)a4 conformsToProtocol:v11[254]]&& (objc_opt_isKindOfClass() & 1) != 0)
          {
            [v29 setObject:v17 forKeyedSubscript:v16];
          }

          else if ([(objc_class *)a4 conformsToProtocol:v12[253], v28])
          {
            v18 = [[a4 alloc] initWithJSONObject:v17];
            v19 = a4;
            v20 = v9;
            v21 = v6;
            v22 = v10;
            v23 = v11;
            v24 = v12;
            v25 = v18;
            [v29 setObject:v18 forKeyedSubscript:v16];

            v12 = v24;
            v11 = v23;
            v10 = v22;
            v6 = v21;
            v9 = v20;
            a4 = v19;
            v8 = v28;
          }
        }

        ++v13;
      }

      while (v8 != v13);
      v8 = [v6 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v8);
  }

  v26 = *MEMORY[0x277D85DE8];

  return v29;
}

+ (id)_gcs_serializableDictionaryForDictionaryJsonObject:()GameControllerSettings
{
  if (a3)
  {
    v3 = MEMORY[0x277CBEAC0];
    v4 = a3;
    v5 = [[v3 alloc] initWithJSONObject:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_gcs_stringForJSONKey:()GameControllerSettings
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

  return v2;
}

- (id)_gcs_numberForJSONKey:()GameControllerSettings
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

  return v2;
}

- (id)_gcs_dictionaryForJSONKey:()GameControllerSettings
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

  return v2;
}

- (id)_gcs_arrayForJSONKey:()GameControllerSettings
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

  return v2;
}

- (id)_gcs_dateForJSONKey:()GameControllerSettings
{
  v1 = [a1 objectForKeyedSubscript:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithJSONObject:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)_gcs_uuidForJSONKey:()GameControllerSettings
{
  v1 = [a1 objectForKeyedSubscript:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [objc_alloc(MEMORY[0x277CCAD78]) initWithJSONObject:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (GCSElement)_gcs_gscElementForJSONKey:()GameControllerSettings
{
  v1 = [a1 objectForKeyedSubscript:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [[GCSElement alloc] initWithJSONObject:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (GCSProfile)_gcs_gscProfileForJSONKey:()GameControllerSettings
{
  v1 = [a1 objectForKeyedSubscript:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [[GCSProfile alloc] initWithJSONObject:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end