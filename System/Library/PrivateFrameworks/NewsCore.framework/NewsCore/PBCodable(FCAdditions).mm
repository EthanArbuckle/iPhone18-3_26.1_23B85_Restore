@interface PBCodable(FCAdditions)
- (__CFString)hexStringFromData:()FCAdditions;
- (id)logMessage;
- (id)logMessageDictionaryFromProtobufDictionary:()FCAdditions;
@end

@implementation PBCodable(FCAdditions)

- (id)logMessage
{
  dictionaryRepresentation = [self dictionaryRepresentation];
  v3 = [self logMessageDictionaryFromProtobufDictionary:dictionaryRepresentation];
  v4 = [v3 description];

  return v4;
}

- (id)logMessageDictionaryFromProtobufDictionary:()FCAdditions
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:?];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  allKeys = [v2 allKeys];
  v4 = [allKeys countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(allKeys);
        }

        v8 = *(*(&v17 + 1) + 8 * i);
        v9 = [v2 objectForKeyedSubscript:v8];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        v11 = [v2 objectForKeyedSubscript:v8];
        if (isKindOfClass)
        {
          v12 = [self hexStringFromData:v11];
        }

        else
        {
          objc_opt_class();
          v13 = objc_opt_isKindOfClass();

          if ((v13 & 1) == 0)
          {
            continue;
          }

          v11 = [v2 objectForKeyedSubscript:v8];
          v12 = [self logMessageDictionaryFromProtobufDictionary:v11];
        }

        v14 = v12;
        [v2 setObject:v12 forKeyedSubscript:v8];
      }

      v5 = [allKeys countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v5);
  }

  v15 = *MEMORY[0x1E69E9840];

  return v2;
}

- (__CFString)hexStringFromData:()FCAdditions
{
  v3 = a3;
  v4 = [v3 length];
  if (v4)
  {
    v5 = v4;
    bytes = [v3 bytes];
    v7 = malloc_type_malloc((2 * v5) | 1, 0x100004077774924uLL);
    if (v7)
    {
      v8 = v7;
      v9 = 2 * v5;
      v10 = v7 + 1;
      do
      {
        v11 = *bytes++;
        *(v10 - 1) = a0123456789abcd[v11 >> 4];
        *v10 = a0123456789abcd[v11 & 0xF];
        v10 += 2;
        --v5;
      }

      while (v5);
      v7[v9] = 0;
      v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v7];
      free(v8);
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = &stru_1F2DC7DC0;
  }

  return v12;
}

@end