@interface PKSpotlightBaseDocumentProcessor
- (id)convertPkPassToDictionary:(id)dictionary;
- (id)extractAttributeByExactMatch:(id)match attributeKeyMap:(id)map;
- (id)normalize:(id)normalize;
- (id)processDocument:(id)document;
- (void)populateResults:(id)results matchDocumentResults:(id)documentResults;
- (void)processFieldBuckets:(id)buckets intoDictionary:(id)dictionary duplicateKeys:(id)keys;
@end

@implementation PKSpotlightBaseDocumentProcessor

- (void)populateResults:(id)results matchDocumentResults:(id)documentResults
{
  v26 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  documentResultsCopy = documentResults;
  multiValuedSearchableAttributes = [(PKSpotlightBaseDocumentProcessor *)self multiValuedSearchableAttributes];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = documentResultsCopy;
  v10 = [v9 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v21;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        matchingValue = [v14 matchingValue];

        if (matchingValue)
        {
          matchingValue2 = [v14 matchingValue];
          mdSearchableItemAttribute = [v14 mdSearchableItemAttribute];
          if (multiValuedSearchableAttributes && [multiValuedSearchableAttributes containsObject:mdSearchableItemAttribute])
          {
            value = [matchingValue2 value];
            v24 = value;
            mdSearchableItemAttribute2 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:1];
            [resultsCopy setObject:mdSearchableItemAttribute2 forKey:mdSearchableItemAttribute];
          }

          else
          {
            value = [matchingValue2 value];
            mdSearchableItemAttribute2 = [v14 mdSearchableItemAttribute];
            [resultsCopy safelySetObject:value forKey:mdSearchableItemAttribute2];
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v11);
  }
}

- (id)normalize:(id)normalize
{
  if (normalize)
  {
    lowercaseString = [normalize lowercaseString];
  }

  else
  {
    lowercaseString = 0;
  }

  return lowercaseString;
}

- (void)processFieldBuckets:(id)buckets intoDictionary:(id)dictionary duplicateKeys:(id)keys
{
  v39 = *MEMORY[0x1E69E9840];
  bucketsCopy = buckets;
  dictionaryCopy = dictionary;
  keysCopy = keys;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = bucketsCopy;
  v26 = [bucketsCopy countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v26)
  {
    v25 = *v34;
    do
    {
      v10 = 0;
      do
      {
        if (*v34 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v27 = v10;
        v11 = *(*(&v33 + 1) + 8 * v10);
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v12 = v11;
        v13 = [v12 countByEnumeratingWithState:&v29 objects:v37 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v30;
          do
          {
            for (i = 0; i != v14; ++i)
            {
              if (*v30 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = *(*(&v29 + 1) + 8 * i);
              label = [v17 label];
              v19 = [(PKSpotlightBaseDocumentProcessor *)self normalize:label];

              if ([v19 length])
              {
                v20 = [dictionaryCopy objectForKeyedSubscript:v19];

                if (v20)
                {
                  [keysCopy addObject:v19];
                }

                else
                {
                  [dictionaryCopy setObject:v17 forKeyedSubscript:v19];
                }
              }

              v21 = [v17 key];
              v22 = [(PKSpotlightBaseDocumentProcessor *)self normalize:v21];

              if ([v22 length])
              {
                v23 = [dictionaryCopy objectForKeyedSubscript:v22];

                if (v23)
                {
                  [keysCopy addObject:v22];
                }

                else
                {
                  [dictionaryCopy setObject:v17 forKeyedSubscript:v22];
                }
              }
            }

            v14 = [v12 countByEnumeratingWithState:&v29 objects:v37 count:16];
          }

          while (v14);
        }

        v10 = v27 + 1;
      }

      while (v27 + 1 != v26);
      v26 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v26);
  }
}

- (id)convertPkPassToDictionary:(id)dictionary
{
  v4 = MEMORY[0x1E695DF90];
  dictionaryCopy = dictionary;
  v6 = objc_alloc_init(v4);
  v7 = objc_opt_new();
  frontFieldBuckets = [dictionaryCopy frontFieldBuckets];
  [(PKSpotlightBaseDocumentProcessor *)self processFieldBuckets:frontFieldBuckets intoDictionary:v6 duplicateKeys:v7];

  backFieldBuckets = [dictionaryCopy backFieldBuckets];

  [(PKSpotlightBaseDocumentProcessor *)self processFieldBuckets:backFieldBuckets intoDictionary:v6 duplicateKeys:v7];
  if ([v7 count])
  {
    allObjects = [v7 allObjects];
    [v6 removeObjectsForKeys:allObjects];
  }

  return v6;
}

- (id)extractAttributeByExactMatch:(id)match attributeKeyMap:(id)map
{
  v40 = *MEMORY[0x1E69E9840];
  matchCopy = match;
  mapCopy = map;
  v26 = objc_opt_new();
  v7 = objc_opt_new();
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v8 = mapCopy;
  v9 = [v8 countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v35;
    v27 = *v35;
    v28 = v8;
    do
    {
      v12 = 0;
      v29 = v10;
      do
      {
        if (*v35 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v34 + 1) + 8 * v12);
        if (([v7 containsObject:{v13, v26}] & 1) == 0)
        {
          v32 = 0u;
          v33 = 0u;
          v30 = 0u;
          v31 = 0u;
          v14 = [v8 objectForKeyedSubscript:v13];
          v15 = [v14 countByEnumeratingWithState:&v30 objects:v38 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v31;
            while (2)
            {
              v18 = v7;
              for (i = 0; i != v16; ++i)
              {
                if (*v31 != v17)
                {
                  objc_enumerationMutation(v14);
                }

                v20 = *(*(&v30 + 1) + 8 * i);
                v21 = [matchCopy valueForKey:v20];

                if (v21)
                {
                  v22 = [PKSpotlightDocumentMatchingResult alloc];
                  v23 = [matchCopy objectForKeyedSubscript:v20];
                  v24 = [(PKSpotlightDocumentMatchingResult *)v22 initWithMatchingInfos:v20 matchingValue:v23 mdSearchableItemAttribute:v13 statusCode:0];

                  [v26 addObject:v24];
                  v7 = v18;
                  [v18 addObject:v13];

                  goto LABEL_17;
                }
              }

              v16 = [v14 countByEnumeratingWithState:&v30 objects:v38 count:16];
              v7 = v18;
              if (v16)
              {
                continue;
              }

              break;
            }
          }

LABEL_17:

          v11 = v27;
          v8 = v28;
          v10 = v29;
        }

        ++v12;
      }

      while (v12 != v10);
      v10 = [v8 countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v10);
  }

  return v26;
}

- (id)processDocument:(id)document
{
  documentCopy = document;
  v5 = objc_opt_new();
  v6 = [(PKSpotlightBaseDocumentProcessor *)self extractAttributesFromPKPass:documentCopy];
  [v5 addEntriesFromDictionary:v6];

  v7 = [(PKSpotlightBaseDocumentProcessor *)self attributeKeyMapForDonation:documentCopy];
  v8 = v7;
  if (v7 && [v7 count])
  {
    v9 = objc_opt_new();
    v10 = [(PKSpotlightBaseDocumentProcessor *)self convertPkPassToDictionary:documentCopy];
    v11 = [(PKSpotlightBaseDocumentProcessor *)self extractAttributeByExactMatch:v10 attributeKeyMap:v8];
    [v9 addObjectsFromArray:v11];

    [(PKSpotlightBaseDocumentProcessor *)self populateResults:v5 matchDocumentResults:v9];
  }

  return v5;
}

@end