@interface NSDictionary(DMCUtilities)
+ (id)DMCDictionaryFromFile:()DMCUtilities;
+ (id)DMCShortenedArray:()DMCUtilities;
+ (id)DMCShortenedData:()DMCUtilities;
+ (id)DMCShortenedDictionary:()DMCUtilities;
+ (id)DMCShortenedObject:()DMCUtilities;
+ (id)dmc_jsonDictionaryFromData:()DMCUtilities;
- (id)DMCShortenedPlistDescription;
- (uint64_t)DMCWriteToBinaryFile:()DMCUtilities protectionType:;
- (uint64_t)_writingOptionsFromProtectionType:()DMCUtilities;
- (void)dmc_valueOfClass:()DMCUtilities forKey:;
@end

@implementation NSDictionary(DMCUtilities)

+ (id)DMCDictionaryFromFile:()DMCUtilities
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DFF8] fileURLWithPath:v3];
  v13 = 0;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:v4 error:&v13];
  v6 = v13;
  v7 = v6;
  if (!v5)
  {
    domain = [v6 domain];
    if ([domain isEqualToString:*MEMORY[0x1E696A250]])
    {
      code = [v7 code];

      if (code != 4)
      {
        goto LABEL_2;
      }
    }

    else
    {
    }

    v12 = *DMCLogObjects();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v15 = v3;
      v16 = 2114;
      v17 = v7;
      _os_log_impl(&dword_1B1630000, v12, OS_LOG_TYPE_ERROR, "Failed to make dictionary from file at path: %{public}@ with error: %{public}@", buf, 0x16u);
    }
  }

LABEL_2:

  v8 = *MEMORY[0x1E69E9840];

  return v5;
}

- (uint64_t)DMCWriteToBinaryFile:()DMCUtilities protectionType:
{
  v6 = a4;
  v7 = a3;
  v8 = [DMCDictionaryWriter alloc];
  v9 = [self _writingOptionsFromProtectionType:v6];

  v10 = [(DMCDictionaryWriter *)v8 initWithDictionary:self path:v7 writeOptions:v9];
  write = [(DMCDictionaryWriter *)v10 write];

  return write;
}

- (void)dmc_valueOfClass:()DMCUtilities forKey:
{
  v4 = [self objectForKeyedSubscript:a4];
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

+ (id)dmc_jsonDictionaryFromData:()DMCUtilities
{
  v16 = *MEMORY[0x1E69E9840];
  v13 = 0;
  v3 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v13];
  v4 = v13;
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v3;
      goto LABEL_11;
    }
  }

  v6 = *DMCLogObjects();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
  if (v4)
  {
    if (v7)
    {
      *buf = 138543362;
      v15 = v4;
      v8 = "Failed to serialize data with error: %{public}@";
      v9 = v6;
      v10 = 12;
LABEL_9:
      _os_log_impl(&dword_1B1630000, v9, OS_LOG_TYPE_ERROR, v8, buf, v10);
    }
  }

  else if (v7)
  {
    *buf = 0;
    v8 = "JSON Dict from response data is not valid.";
    v9 = v6;
    v10 = 2;
    goto LABEL_9;
  }

  v5 = 0;
LABEL_11:

  v11 = *MEMORY[0x1E69E9840];

  return v5;
}

- (uint64_t)_writingOptionsFromProtectionType:()DMCUtilities
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    if ([v3 isEqualToString:*MEMORY[0x1E696A3A8]])
    {
      v5 = 0x10000000;
    }

    else if ([v4 isEqualToString:*MEMORY[0x1E696A378]])
    {
      v5 = 0x20000000;
    }

    else if ([v4 isEqualToString:*MEMORY[0x1E696A380]])
    {
      v5 = 805306368;
    }

    else if ([v4 isEqualToString:*MEMORY[0x1E696A388]])
    {
      v5 = 0x40000000;
    }

    else if ([v4 isEqualToString:*MEMORY[0x1E696A398]])
    {
      v5 = 1342177280;
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

- (id)DMCShortenedPlistDescription
{
  v1 = [objc_opt_class() DMCShortenedDictionary:self];
  v2 = [v1 description];

  return v2;
}

+ (id)DMCShortenedObject:()DMCUtilities
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [self DMCShortenedArray:v4];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [self DMCShortenedDictionary:v4];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5 = [self DMCShortenedData:v4];
      }

      else
      {
        v5 = v4;
      }
    }
  }

  v6 = v5;

  return v6;
}

+ (id)DMCShortenedDictionary:()DMCUtilities
{
  v4 = MEMORY[0x1E695DF90];
  v5 = a3;
  v6 = [v4 dictionaryWithCapacity:{objc_msgSend(v5, "count")}];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __53__NSDictionary_DMCUtilities__DMCShortenedDictionary___block_invoke;
  v9[3] = &unk_1E7ADC630;
  v7 = v6;
  v10 = v7;
  selfCopy = self;
  [v5 enumerateKeysAndObjectsUsingBlock:v9];

  return v7;
}

+ (id)DMCShortenedArray:()DMCUtilities
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [self DMCShortenedObject:{*(*(&v14 + 1) + 8 * i), v14}];
        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)DMCShortenedData:()DMCUtilities
{
  v3 = a3;
  if ([v3 length])
  {
    v4 = [v3 length];
    v5 = MEMORY[0x1E696AEC0];
    if (v4 > 0x10)
    {
      dMCHexString3 = [v3 subdataWithRange:{0, 8}];
      dMCHexString = [dMCHexString3 DMCHexString];
      v9 = [v3 subdataWithRange:{objc_msgSend(v3, "length") - 8, 8}];
      dMCHexString2 = [v9 DMCHexString];
      v7 = [v5 stringWithFormat:@"0x%@ ... 0x%@", dMCHexString, dMCHexString2];
    }

    else
    {
      dMCHexString3 = [v3 DMCHexString];
      v7 = [v5 stringWithFormat:@"0x%@", dMCHexString3];
    }
  }

  else
  {
    v7 = @"<empty>";
  }

  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Data { length = %lu, bytes = %@ }", objc_msgSend(v3, "length"), v7];

  return v11;
}

@end