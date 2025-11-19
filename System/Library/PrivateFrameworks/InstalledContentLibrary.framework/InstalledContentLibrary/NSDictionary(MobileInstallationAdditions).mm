@interface NSDictionary(MobileInstallationAdditions)
+ (id)MI_dictionaryByMergingDictionaries:()MobileInstallationAdditions;
+ (id)MI_dictionaryWithContentsOfURL:()MobileInstallationAdditions options:error:;
- (uint64_t)MI_writeAtomicallyToURLMatchingCurrentFileMetadata:()MobileInstallationAdditions format:error:;
- (uint64_t)MI_writeToURL:()MobileInstallationAdditions format:options:error:;
@end

@implementation NSDictionary(MobileInstallationAdditions)

+ (id)MI_dictionaryWithContentsOfURL:()MobileInstallationAdditions options:error:
{
  v17 = 0;
  v7 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:a3 options:2 error:&v17];
  v8 = v17;
  if (v7)
  {
    v16 = 0;
    v9 = [MEMORY[0x1E696AE40] propertyListWithData:v7 options:a4 format:0 error:&v16];
    v10 = v16;

    objc_opt_class();
    v11 = v9;
    v12 = 0;
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    if (v12)
    {
      v13 = v11;
      v8 = v10;
      v11 = v13;
      if (!a5)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v8 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:2048 userInfo:0];

      v13 = 0;
      if (!a5)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
    v13 = 0;
    v11 = 0;
    if (!a5)
    {
      goto LABEL_12;
    }
  }

  if (!v13)
  {
    v14 = v8;
    *a5 = v8;
  }

LABEL_12:

  return v13;
}

+ (id)MI_dictionaryByMergingDictionaries:()MobileInstallationAdditions
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [v4 addEntriesFromDictionary:{*(*(&v12 + 1) + 8 * i), v12}];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v10 = [v4 copy];

  return v10;
}

- (uint64_t)MI_writeToURL:()MobileInstallationAdditions format:options:error:
{
  v10 = a3;
  v19 = 0;
  v11 = [MEMORY[0x1E696AE40] dataWithPropertyList:a1 format:a4 options:0 error:&v19];
  v12 = v19;
  v13 = v12;
  if (v11)
  {
    v18 = v12;
    v14 = [v11 writeToURL:v10 options:a5 error:&v18];
    v15 = v18;

    v13 = v15;
    if (!a6)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v14 = 0;
    if (!a6)
    {
      goto LABEL_7;
    }
  }

  if ((v14 & 1) == 0)
  {
    v16 = v13;
    *a6 = v13;
  }

LABEL_7:

  return v14;
}

- (uint64_t)MI_writeAtomicallyToURLMatchingCurrentFileMetadata:()MobileInstallationAdditions format:error:
{
  v8 = a3;
  v17 = 0;
  v9 = [MEMORY[0x1E696AE40] dataWithPropertyList:a1 format:a4 options:0 error:&v17];
  v10 = v17;
  v11 = v10;
  if (v9)
  {
    v16 = v10;
    v12 = [v9 MI_writeAtomicallyToURLMatchingCurrentFileMetadata:v8 error:&v16];
    v13 = v16;

    v11 = v13;
    if (!a5)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v12 = 0;
    if (!a5)
    {
      goto LABEL_7;
    }
  }

  if ((v12 & 1) == 0)
  {
    v14 = v11;
    *a5 = v11;
  }

LABEL_7:

  return v12;
}

@end