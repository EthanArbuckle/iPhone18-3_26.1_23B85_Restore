@interface FedStatsCategoricalTypeAssetSpecifier
+ (id)assetSpecifierWithKey:(id)key requiredForCollectionKey:(BOOL)collectionKey error:(id *)error;
+ (id)mutateParameters:(id)parameters forKey:(id)key usingFieldValues:(id)values assetURLs:(id)ls requiredFields:(id *)fields assetNames:(id *)names error:(id *)error;
- (FedStatsCategoricalTypeAssetSpecifier)initWithAssetSpecifierKey:(id)key dynamic:(BOOL)dynamic requiredForCollectionKey:(BOOL)collectionKey;
- (id)assetSpecifierValueForDataPoint:(id)point error:(id *)error;
- (id)parameters;
@end

@implementation FedStatsCategoricalTypeAssetSpecifier

- (FedStatsCategoricalTypeAssetSpecifier)initWithAssetSpecifierKey:(id)key dynamic:(BOOL)dynamic requiredForCollectionKey:(BOOL)collectionKey
{
  keyCopy = key;
  v16.receiver = self;
  v16.super_class = FedStatsCategoricalTypeAssetSpecifier;
  v10 = [(FedStatsCategoricalTypeAssetSpecifier *)&v16 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_assetSpecifierKey, key);
    v11->_isDynamic = dynamic;
    v11->_isRequiredForCollectionKey = collectionKey;
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"\\{%@+\\}", @"[0-9A-Za-z_]"];
    v13 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:v12 options:16 error:0];
    regex = v11->_regex;
    v11->_regex = v13;
  }

  return v11;
}

+ (id)assetSpecifierWithKey:(id)key requiredForCollectionKey:(BOOL)collectionKey error:(id *)error
{
  collectionKeyCopy = collectionKey;
  keyCopy = key;
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"^(%@*(\\{%@+\\})*)*%@*$", @"[0-9A-Za-z_]", @"[0-9A-Za-z_]", @"[0-9A-Za-z_]"];
  v9 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:v8 options:16 error:0];
  v10 = [v9 firstMatchInString:keyCopy options:4 range:{0, objc_msgSend(keyCopy, "length")}];
  if (v10)
  {
    v11 = v10;
    v28 = collectionKeyCopy;
    range = [v10 range];
    v14 = [keyCopy substringWithRange:{range, v13}];
    v15 = [v14 isEqualToString:keyCopy];
    v16 = v15;
    if (error && (v15 & 1) == 0)
    {
      *error = [FedStatsError errorWithCode:302 description:@"The asset provider key is malformed"];
    }

    if (v16)
    {
      v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"^%@+$", @"[0-9A-Za-z_]"];
      v18 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:v17 options:16 error:0];
      v19 = [v18 firstMatchInString:keyCopy options:4 range:{0, objc_msgSend(keyCopy, "length")}];
      v20 = v19;
      if (v19)
      {
        range2 = [v19 range];
        v23 = [keyCopy substringWithRange:{range2, v22}];
        v24 = [keyCopy isEqualToString:v23];

        v25 = v24 ^ 1;
      }

      else
      {
        v25 = 1;
      }

      v26 = [[FedStatsCategoricalTypeAssetSpecifier alloc] initWithAssetSpecifierKey:keyCopy dynamic:v25 & 1 requiredForCollectionKey:v28];
      goto LABEL_14;
    }
  }

  else
  {
    if (error)
    {
      *error = [FedStatsError errorWithCode:302 description:@"The asset provider key is malformed"];
    }
  }

  v26 = 0;
LABEL_14:

  return v26;
}

+ (id)mutateParameters:(id)parameters forKey:(id)key usingFieldValues:(id)values assetURLs:(id)ls requiredFields:(id *)fields assetNames:(id *)names error:(id *)error
{
  parametersCopy = parameters;
  keyCopy = key;
  valuesCopy = values;
  lsCopy = ls;
  v18 = [parametersCopy objectForKey:keyCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v19 = parametersCopy;
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
      if (valuesCopy)
      {
        v34 = v20;
        v35 = v21;
        v23 = [v20 assetSpecifierValueForDataPoint:valuesCopy error:&v35];
        v24 = v35;

        if (v23)
        {
          if (lsCopy)
          {
            v25 = v23;
            v26 = [lsCopy objectForKey:v23];
            if (v26)
            {
              v19 = [parametersCopy mutableCopy];
              [v19 setObject:v26 forKey:keyCopy];
            }

            else
            {
              if (error)
              {
                v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"Missing asset URL for '%@'", v18];
                *error = [FedStatsError errorWithCode:300 description:v32];
              }

              v19 = 0;
            }

            v23 = v25;
          }

          else
          {
            if (names)
            {
              *names = [*names arrayByAddingObject:v23];
            }

            v19 = parametersCopy;
          }
        }

        else
        {
          if (error)
          {
            v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot process asset specifier '%@'", v18];
            *error = [FedStatsError errorWithCode:300 underlyingError:v24 description:v31];

            v23 = 0;
          }

          v19 = 0;
        }

        v20 = v34;
        goto LABEL_31;
      }

      if (fields)
      {
        v29 = *fields;
        parameters = [v20 parameters];
        *fields = [v29 arrayByAddingObjectsFromArray:parameters];
      }

      v19 = parametersCopy;
    }

    else
    {
      if (error)
      {
        v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot process asset specifier '%@'", v18];
        *error = [FedStatsError errorWithCode:300 underlyingError:v22 description:v28];
      }

      v19 = 0;
    }

    v24 = v22;
LABEL_31:

    goto LABEL_32;
  }

  if (error)
  {
    keyCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Value for '%@' must be either a string or URL", keyCopy];
    *error = [FedStatsError errorWithCode:302 description:keyCopy];
  }

  v19 = 0;
LABEL_32:

  return v19;
}

- (id)assetSpecifierValueForDataPoint:(id)point error:(id *)error
{
  pointCopy = point;
  assetSpecifierKey = [(FedStatsCategoricalTypeAssetSpecifier *)self assetSpecifierKey];
  v7 = [assetSpecifierKey mutableCopy];

  v8 = [v7 length];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    do
    {
      regex = [(FedStatsCategoricalTypeAssetSpecifier *)self regex];
      v12 = [regex firstMatchInString:v7 options:16 range:{v10, v9}];

      if (!v12)
      {
        break;
      }

      range = [v12 range];
      v15 = [v7 substringWithRange:{range + 1, v14 - 2}];
      v16 = [pointCopy objectForKey:v15];
      if (!v16)
      {
        if (error)
        {
          *error = [FedStatsError errorWithCode:601 description:@"No value in data to insert into asset specifier"];
        }

        v22 = 0;
        goto LABEL_10;
      }

      v17 = v16;
      v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v16];
      range2 = [v12 range];
      [v7 replaceCharactersInRange:range2 withString:{v20, v18}];
      range3 = [v12 range];
      v10 = range3 + [v18 length];
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
  regex = [(FedStatsCategoricalTypeAssetSpecifier *)self regex];
  assetSpecifierKey = [(FedStatsCategoricalTypeAssetSpecifier *)self assetSpecifierKey];
  assetSpecifierKey2 = [(FedStatsCategoricalTypeAssetSpecifier *)self assetSpecifierKey];
  v6 = [regex matchesInString:assetSpecifierKey options:16 range:{0, objc_msgSend(assetSpecifierKey2, "length")}];

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
        assetSpecifierKey3 = [(FedStatsCategoricalTypeAssetSpecifier *)self assetSpecifierKey];
        range = [v13 range];
        v17 = [assetSpecifierKey3 substringWithRange:{range + 1, v16 - 2}];
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