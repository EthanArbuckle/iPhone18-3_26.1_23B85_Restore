@interface FedStatsCategoricalTypeAssetSpecifier
+ (id)assetSpecifierWithKey:(id)a3 requiredForCollectionKey:(BOOL)a4 error:(id *)a5;
+ (id)mutateParameters:(id)a3 forKey:(id)a4 usingFieldValues:(id)a5 assetURLs:(id)a6 requiredFields:(id *)a7 assetNames:(id *)a8 error:(id *)a9;
- (FedStatsCategoricalTypeAssetSpecifier)initWithAssetSpecifierKey:(id)a3 dynamic:(BOOL)a4 requiredForCollectionKey:(BOOL)a5;
- (id)assetSpecifierValueForDataPoint:(id)a3 error:(id *)a4;
- (id)parameters;
@end

@implementation FedStatsCategoricalTypeAssetSpecifier

- (FedStatsCategoricalTypeAssetSpecifier)initWithAssetSpecifierKey:(id)a3 dynamic:(BOOL)a4 requiredForCollectionKey:(BOOL)a5
{
  v9 = a3;
  v16.receiver = self;
  v16.super_class = FedStatsCategoricalTypeAssetSpecifier;
  v10 = [(FedStatsCategoricalTypeAssetSpecifier *)&v16 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_assetSpecifierKey, a3);
    v11->_isDynamic = a4;
    v11->_isRequiredForCollectionKey = a5;
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"\\{%@+\\}", @"[0-9A-Za-z_]"];
    v13 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:v12 options:16 error:0];
    regex = v11->_regex;
    v11->_regex = v13;
  }

  return v11;
}

+ (id)assetSpecifierWithKey:(id)a3 requiredForCollectionKey:(BOOL)a4 error:(id *)a5
{
  v6 = a4;
  v7 = a3;
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"^(%@*(\\{%@+\\})*)*%@*$", @"[0-9A-Za-z_]", @"[0-9A-Za-z_]", @"[0-9A-Za-z_]"];
  v9 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:v8 options:16 error:0];
  v10 = [v9 firstMatchInString:v7 options:4 range:{0, objc_msgSend(v7, "length")}];
  if (v10)
  {
    v11 = v10;
    v28 = v6;
    v12 = [v10 range];
    v14 = [v7 substringWithRange:{v12, v13}];
    v15 = [v14 isEqualToString:v7];
    v16 = v15;
    if (a5 && (v15 & 1) == 0)
    {
      *a5 = [FedStatsError errorWithCode:302 description:@"The asset provider key is malformed"];
    }

    if (v16)
    {
      v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"^%@+$", @"[0-9A-Za-z_]"];
      v18 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:v17 options:16 error:0];
      v19 = [v18 firstMatchInString:v7 options:4 range:{0, objc_msgSend(v7, "length")}];
      v20 = v19;
      if (v19)
      {
        v21 = [v19 range];
        v23 = [v7 substringWithRange:{v21, v22}];
        v24 = [v7 isEqualToString:v23];

        v25 = v24 ^ 1;
      }

      else
      {
        v25 = 1;
      }

      v26 = [[FedStatsCategoricalTypeAssetSpecifier alloc] initWithAssetSpecifierKey:v7 dynamic:v25 & 1 requiredForCollectionKey:v28];
      goto LABEL_14;
    }
  }

  else
  {
    if (a5)
    {
      *a5 = [FedStatsError errorWithCode:302 description:@"The asset provider key is malformed"];
    }
  }

  v26 = 0;
LABEL_14:

  return v26;
}

+ (id)mutateParameters:(id)a3 forKey:(id)a4 usingFieldValues:(id)a5 assetURLs:(id)a6 requiredFields:(id *)a7 assetNames:(id *)a8 error:(id *)a9
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = [v14 objectForKey:v15];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v19 = v14;
    goto LABEL_32;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v36 = 0;
    v20 = [FedStatsCategoricalTypeAssetSpecifier assetSpecifierWithKey:v18 requiredForCollectionKey:0 error:&v36];
    v21 = v36;
    v22 = v21;
    if (v20)
    {
      if (v16)
      {
        v34 = v20;
        v35 = v21;
        v23 = [v20 assetSpecifierValueForDataPoint:v16 error:&v35];
        v24 = v35;

        if (v23)
        {
          if (v17)
          {
            v25 = v23;
            v26 = [v17 objectForKey:v23];
            if (v26)
            {
              v19 = [v14 mutableCopy];
              [v19 setObject:v26 forKey:v15];
            }

            else
            {
              if (a9)
              {
                v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"Missing asset URL for '%@'", v18];
                *a9 = [FedStatsError errorWithCode:300 description:v32];
              }

              v19 = 0;
            }

            v23 = v25;
          }

          else
          {
            if (a8)
            {
              *a8 = [*a8 arrayByAddingObject:v23];
            }

            v19 = v14;
          }
        }

        else
        {
          if (a9)
          {
            v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot process asset specifier '%@'", v18];
            *a9 = [FedStatsError errorWithCode:300 underlyingError:v24 description:v31];

            v23 = 0;
          }

          v19 = 0;
        }

        v20 = v34;
        goto LABEL_31;
      }

      if (a7)
      {
        v29 = *a7;
        v30 = [v20 parameters];
        *a7 = [v29 arrayByAddingObjectsFromArray:v30];
      }

      v19 = v14;
    }

    else
    {
      if (a9)
      {
        v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot process asset specifier '%@'", v18];
        *a9 = [FedStatsError errorWithCode:300 underlyingError:v22 description:v28];
      }

      v19 = 0;
    }

    v24 = v22;
LABEL_31:

    goto LABEL_32;
  }

  if (a9)
  {
    v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"Value for '%@' must be either a string or URL", v15];
    *a9 = [FedStatsError errorWithCode:302 description:v27];
  }

  v19 = 0;
LABEL_32:

  return v19;
}

- (id)assetSpecifierValueForDataPoint:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(FedStatsCategoricalTypeAssetSpecifier *)self assetSpecifierKey];
  v7 = [v6 mutableCopy];

  v8 = [v7 length];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    do
    {
      v11 = [(FedStatsCategoricalTypeAssetSpecifier *)self regex];
      v12 = [v11 firstMatchInString:v7 options:16 range:{v10, v9}];

      if (!v12)
      {
        break;
      }

      v13 = [v12 range];
      v15 = [v7 substringWithRange:{v13 + 1, v14 - 2}];
      v16 = [v5 objectForKey:v15];
      if (!v16)
      {
        if (a4)
        {
          *a4 = [FedStatsError errorWithCode:601 description:@"No value in data to insert into asset specifier"];
        }

        v22 = 0;
        goto LABEL_10;
      }

      v17 = v16;
      v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v16];
      v19 = [v12 range];
      [v7 replaceCharactersInRange:v19 withString:{v20, v18}];
      v21 = [v12 range];
      v10 = v21 + [v18 length];
      v9 = [v7 length] - v10;
    }

    while (v9);
  }

  v22 = v7;
LABEL_10:

  return v22;
}

- (id)parameters
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = [(FedStatsCategoricalTypeAssetSpecifier *)self regex];
  v4 = [(FedStatsCategoricalTypeAssetSpecifier *)self assetSpecifierKey];
  v5 = [(FedStatsCategoricalTypeAssetSpecifier *)self assetSpecifierKey];
  v6 = [v3 matchesInString:v4 options:16 range:{0, objc_msgSend(v5, "length")}];

  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v6, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        v14 = [(FedStatsCategoricalTypeAssetSpecifier *)self assetSpecifierKey];
        v15 = [v13 range];
        v17 = [v14 substringWithRange:{v15 + 1, v16 - 2}];
        [v7 addObject:v17];
      }

      v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  v18 = *MEMORY[0x277D85DE8];

  return v7;
}

@end