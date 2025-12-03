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
  [self enumerateKeysAndObjectsUsingBlock:v5];

  return v3;
}

+ (id)dictionaryWithCodableMetadata:()HKCodingSupport
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a3;
  keyValuePairsCount = [v3 keyValuePairsCount];
  v5 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:keyValuePairsCount];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  keyValuePairs = [v3 keyValuePairs];
  v7 = [keyValuePairs countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(keyValuePairs);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = [v11 key];
        if ([v11 hasNumberIntValue])
        {
          stringValue = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v11, "numberIntValue")}];
        }

        else
        {
          if (![v11 hasStringValue])
          {
            v14 = 0;
            goto LABEL_16;
          }

          stringValue = [v11 stringValue];
        }

        v14 = stringValue;
        if (v12)
        {
          v15 = stringValue == 0;
        }

        else
        {
          v15 = 1;
        }

        if (!v15)
        {
          [v5 setObject:stringValue forKeyedSubscript:v12];
        }

LABEL_16:
      }

      v8 = [keyValuePairs countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  return v5;
}

@end