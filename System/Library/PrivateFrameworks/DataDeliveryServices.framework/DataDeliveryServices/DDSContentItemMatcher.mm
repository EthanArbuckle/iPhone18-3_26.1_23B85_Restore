@interface DDSContentItemMatcher
+ (BOOL)_anyDictionaryIn:(id)in matches:(id)matches shouldLenientlyMatch:(id)match;
+ (BOOL)_dictionary:(id)_dictionary matches:(id)matches acceptUnspecifiedAttribute:(BOOL)attribute lenientMatch:(BOOL)match;
+ (BOOL)_string:(id)_string matches:(id)matches acceptUnspecifiedValue:(BOOL)value;
+ (BOOL)shouldLenientlyMatchWithContentItemsForRegion:(id)region;
+ (id)assetContentItemsMatching:(id)matching contentItems:(id)items parentAsset:(id)asset;
@end

@implementation DDSContentItemMatcher

+ (id)assetContentItemsMatching:(id)matching contentItems:(id)items parentAsset:(id)asset
{
  v49 = *MEMORY[0x1E69E9840];
  matchingCopy = matching;
  itemsCopy = items;
  assetCopy = asset;
  attributes = [assetCopy attributes];
  array = [MEMORY[0x1E695DF70] array];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = itemsCopy;
  v10 = [obj countByEnumeratingWithState:&v44 objects:v48 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v45;
    selfCopy = self;
    v37 = matchingCopy;
    do
    {
      v13 = 0;
      v33 = v11;
      do
      {
        if (*v45 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v44 + 1) + 8 * v13);
        v42 = [v14 objectForKey:@"ContentType"];
        v41 = [matchingCopy objectForKeyedSubscript:@"ContentType"];
        v15 = [v14 objectForKey:@"Locale"];
        v16 = v15;
        if (v15)
        {
          v17 = v15;
        }

        else
        {
          v17 = [attributes objectForKeyedSubscript:@"AssetLocale"];
        }

        v40 = v17;

        v39 = [matchingCopy objectForKeyedSubscript:@"Locale"];
        v18 = [v14 objectForKey:@"AssetRegion"];
        v19 = v18;
        if (v18)
        {
          v20 = v18;
        }

        else
        {
          v20 = [attributes objectForKeyedSubscript:@"AssetRegion"];
        }

        v38 = v20;

        v21 = [matchingCopy objectForKeyedSubscript:@"AssetRegion"];
        allObjects = [v21 allObjects];

        v43[0] = MEMORY[0x1E69E9820];
        v43[1] = 3221225472;
        v43[2] = __76__DDSContentItemMatcher_assetContentItemsMatching_contentItems_parentAsset___block_invoke;
        v43[3] = &__block_descriptor_40_e22_B16__0__NSDictionary_8l;
        v43[4] = self;
        v23 = MEMORY[0x1E12DF5E0](v43);
        v24 = objc_opt_class();
        allObjects2 = [v41 allObjects];
        if ([v24 _anyStringIn:allObjects2 matches:v42 acceptUnspecifiedValue:1])
        {
          v26 = objc_opt_class();
          allObjects3 = [v39 allObjects];
          if ([v26 _anyStringIn:allObjects3 matches:v40 acceptUnspecifiedValue:1])
          {
            v28 = [objc_opt_class() _anyDictionaryIn:allObjects matches:v38 shouldLenientlyMatch:v23];

            v11 = v33;
            if (!v28)
            {
              goto LABEL_18;
            }

            allObjects2 = [[DDSContentItem alloc] initWithParentAsset:assetCopy contents:v14];
            [array addObject:allObjects2];
          }

          else
          {

            v11 = v33;
          }
        }

LABEL_18:
        ++v13;
        self = selfCopy;
        matchingCopy = v37;
      }

      while (v11 != v13);
      v11 = [obj countByEnumeratingWithState:&v44 objects:v48 count:16];
    }

    while (v11);
  }

  v29 = *MEMORY[0x1E69E9840];

  return array;
}

uint64_t __76__DDSContentItemMatcher_assetContentItemsMatching_contentItems_parentAsset___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [objc_opt_class() shouldLenientlyMatchWithContentItemsForRegion:v3];

  return v4;
}

+ (BOOL)shouldLenientlyMatchWithContentItemsForRegion:(id)region
{
  regionCopy = region;
  v4 = [regionCopy objectForKeyedSubscript:@"City"];
  if ([v4 length])
  {
    v5 = [regionCopy objectForKeyedSubscript:@"Province"];
    if ([v5 length])
    {
      v6 = [regionCopy objectForKeyedSubscript:@"Country"];
      v7 = [v6 length] == 0;
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (BOOL)_string:(id)_string matches:(id)matches acceptUnspecifiedValue:(BOOL)value
{
  valueCopy = value;
  _stringCopy = _string;
  matchesCopy = &stru_1F5ABCB80;
  if (matches)
  {
    matchesCopy = matches;
  }

  v9 = matchesCopy;
  v10 = v9;
  if (!valueCopy)
  {
    if (!_stringCopy)
    {
      v12 = 1;
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  v11 = [(__CFString *)v9 length];
  v12 = 1;
  if (_stringCopy && v11)
  {
LABEL_8:
    v12 = [_stringCopy caseInsensitiveCompare:v10] == 0;
  }

LABEL_10:

  return v12;
}

+ (BOOL)_dictionary:(id)_dictionary matches:(id)matches acceptUnspecifiedAttribute:(BOOL)attribute lenientMatch:(BOOL)match
{
  matchCopy = match;
  attributeCopy = attribute;
  v30 = *MEMORY[0x1E69E9840];
  _dictionaryCopy = _dictionary;
  matchesCopy = matches;
  v10 = matchesCopy;
  if (_dictionaryCopy && [matchesCopy count])
  {
    if ([_dictionaryCopy count])
    {
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      obj = [_dictionaryCopy allKeys];
      v11 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v26;
        while (2)
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v26 != v13)
            {
              objc_enumerationMutation(obj);
            }

            v15 = *(*(&v25 + 1) + 8 * i);
            v16 = [_dictionaryCopy objectForKeyedSubscript:v15];
            v17 = v16;
            if (!matchCopy || [v16 length])
            {
              v18 = [v10 objectForKeyedSubscript:v15];
              v19 = [objc_opt_class() _string:v17 matches:v18 acceptUnspecifiedValue:attributeCopy];

              if ((v19 & 1) == 0)
              {

                v20 = 0;
                goto LABEL_17;
              }
            }
          }

          v12 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
          if (v12)
          {
            continue;
          }

          break;
        }
      }

      v20 = 1;
LABEL_17:
    }

    else
    {
      v20 = [v10 count] == 0;
    }
  }

  else
  {
    v20 = 1;
  }

  v21 = *MEMORY[0x1E69E9840];
  return v20;
}

+ (BOOL)_anyDictionaryIn:(id)in matches:(id)matches shouldLenientlyMatch:(id)match
{
  v26 = *MEMORY[0x1E69E9840];
  inCopy = in;
  matchesCopy = matches;
  matchCopy = match;
  if (inCopy)
  {
    if ([inCopy count])
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v20 = inCopy;
      v10 = inCopy;
      v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v22;
        while (2)
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v22 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v21 + 1) + 8 * i);
            if (matchCopy)
            {
              v16 = matchCopy[2](matchCopy, *(*(&v21 + 1) + 8 * i));
            }

            else
            {
              v16 = 0;
            }

            if ([objc_opt_class() _dictionary:v15 matches:matchesCopy acceptUnspecifiedAttribute:v16 ^ 1 lenientMatch:v16])
            {

              v17 = 1;
              goto LABEL_17;
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
          if (v12)
          {
            continue;
          }

          break;
        }
      }

      v17 = 0;
LABEL_17:
      inCopy = v20;
    }

    else
    {
      v17 = [objc_opt_class() _dictionary:MEMORY[0x1E695E0F8] matches:matchesCopy acceptUnspecifiedAttribute:1 lenientMatch:0];
    }
  }

  else
  {
    v17 = 1;
  }

  v18 = *MEMORY[0x1E69E9840];
  return v17;
}

@end