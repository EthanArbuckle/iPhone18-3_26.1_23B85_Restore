@interface PSYPlistFilter
+ (BOOL)isPlistObject:(id)object;
+ (id)filteredPlistArray:(id)array;
+ (id)filteredPlistDictionary:(id)dictionary;
@end

@implementation PSYPlistFilter

+ (BOOL)isPlistObject:(id)object
{
  v16 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  if (isPlistObject__onceToken != -1)
  {
    +[PSYPlistFilter isPlistObject:];
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = isPlistObject__plistClasses;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if (objc_opt_isKindOfClass())
        {
          LOBYTE(v5) = 1;
          goto LABEL_13;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  v9 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t __32__PSYPlistFilter_isPlistObject___block_invoke()
{
  v0 = MEMORY[0x277CBEB98];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = [v0 setWithObjects:{v1, v2, v3, v4, v5, v6, objc_opt_class(), 0}];
  v8 = isPlistObject__plistClasses;
  isPlistObject__plistClasses = v7;

  return MEMORY[0x2821F96F8](v7, v8);
}

+ (id)filteredPlistDictionary:(id)dictionary
{
  v26 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  if (dictionaryCopy)
  {
    v4 = objc_opt_new();
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v5 = dictionaryCopy;
    v6 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v6)
    {
      v7 = v6;
      v20 = dictionaryCopy;
      v8 = 0;
      v9 = *v22;
      while (1)
      {
        v10 = 0;
        do
        {
          if (*v22 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v21 + 1) + 8 * v10);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v8 = 1;
            goto LABEL_15;
          }

          v12 = [v5 objectForKeyedSubscript:v11];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v13 = [PSYPlistFilter filteredPlistDictionary:v12];
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              if ([PSYPlistFilter isPlistObject:v12])
              {
                [v4 setObject:v12 forKeyedSubscript:v11];
              }

              else
              {
                v8 = 1;
              }

              goto LABEL_14;
            }

            v13 = [PSYPlistFilter filteredPlistArray:v12];
          }

          v14 = v13;
          v8 |= v13 != v12;
          [v4 setObject:v13 forKeyedSubscript:v11];

LABEL_14:
LABEL_15:
          ++v10;
        }

        while (v7 != v10);
        v15 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
        v7 = v15;
        if (!v15)
        {

          v16 = v4;
          dictionaryCopy = v20;
          if (v8)
          {
            goto LABEL_26;
          }

          goto LABEL_25;
        }
      }
    }
  }

  else
  {
    v4 = 0;
  }

LABEL_25:
  v16 = v4;
  v4 = dictionaryCopy;
LABEL_26:
  v17 = v4;

  v18 = *MEMORY[0x277D85DE8];
  return v4;
}

+ (id)filteredPlistArray:(id)array
{
  v25 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  if (arrayCopy)
  {
    v4 = objc_opt_new();
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v5 = arrayCopy;
    v6 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v6)
    {
      v7 = v6;
      v19 = arrayCopy;
      v8 = 0;
      v9 = *v21;
      while (1)
      {
        v10 = 0;
        do
        {
          if (*v21 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v20 + 1) + 8 * v10);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v12 = [PSYPlistFilter filteredPlistDictionary:v11];
LABEL_11:
            v13 = v12;
            v8 |= v12 != v11;
            [v4 addObject:v12];

            goto LABEL_12;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v12 = [PSYPlistFilter filteredPlistArray:v11];
            goto LABEL_11;
          }

          if ([PSYPlistFilter isPlistObject:v11])
          {
            [v4 addObject:v11];
          }

          else
          {
            v8 = 1;
          }

LABEL_12:
          ++v10;
        }

        while (v7 != v10);
        v14 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
        v7 = v14;
        if (!v14)
        {

          v15 = v4;
          arrayCopy = v19;
          if (v8)
          {
            goto LABEL_23;
          }

          goto LABEL_22;
        }
      }
    }
  }

  else
  {
    v4 = 0;
  }

LABEL_22:
  v15 = v4;
  v4 = arrayCopy;
LABEL_23:
  v16 = v4;

  v17 = *MEMORY[0x277D85DE8];
  return v4;
}

@end