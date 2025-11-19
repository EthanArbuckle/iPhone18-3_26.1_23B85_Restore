@interface NSDictionary(HKCodingSupport)
+ (id)dictionaryWithCodableMetadata:()HKCodingSupport;
- (HKCodableMetadataDictionary)codableMetadata;
@end

@implementation NSDictionary(HKCodingSupport)

- (HKCodableMetadataDictionary)codableMetadata
{
  v2 = objc_alloc_init(HKCodableMetadataDictionary);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __48__NSDictionary_HKCodingSupport__codableMetadata__block_invoke;
  v5[3] = &unk_1E81BC908;
  v3 = v2;
  v6 = v3;
  [a1 enumerateKeysAndObjectsUsingBlock:v5];

  return v3;
}

+ (id)dictionaryWithCodableMetadata:()HKCodingSupport
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 keyValuePairsCount];
  v5 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:v4];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [v3 keyValuePairs];
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = [v11 key];
        if ([v11 hasNumberIntValue])
        {
          v13 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v11, "numberIntValue")}];
        }

        else
        {
          if (![v11 hasStringValue])
          {
            v14 = 0;
            goto LABEL_16;
          }

          v13 = [v11 stringValue];
        }

        v14 = v13;
        if (v12)
        {
          v15 = v13 == 0;
        }

        else
        {
          v15 = 1;
        }

        if (!v15)
        {
          [v5 setObject:v13 forKeyedSubscript:v12];
        }

LABEL_16:
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  return v5;
}

@end