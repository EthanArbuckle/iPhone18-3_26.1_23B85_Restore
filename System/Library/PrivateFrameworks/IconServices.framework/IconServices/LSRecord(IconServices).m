@interface LSRecord(IconServices)
+ (id)_is_resourceTokenForRecords:()IconServices;
+ (void)_is_getSequenceNumber:()IconServices andUUID:;
- (uint64_t)_is_canProvideIconResources;
- (uint64_t)_is_providesPrecomposedIconResources;
@end

@implementation LSRecord(IconServices)

- (uint64_t)_is_canProvideIconResources
{
  v29 = *MEMORY[0x1E69E9840];
  if (objc_opt_respondsToSelector())
  {
    v2 = [a1 iconDictionary];
    v3 = +[ISDefaults sharedInstance];
    v4 = [v3 isSolariumEnabled];

    if ((v4 & 1) == 0)
    {
      v5 = [v2 mutableCopy];
      [v5 removeObjectForKey:@"ISDocumentIconConfiguration"];
      [v5 removeObjectForKey:@"ISFolderIconConfiguration"];
      v6 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v5];

      v2 = v6;
    }

    if ([v2 count])
    {
      v7 = 1;
      goto LABEL_22;
    }
  }

  else
  {
    v2 = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = legacyResourceNames();
    v9 = expandedNamesFromResourceNames(v8);

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v11)
    {
      v12 = v11;
      v23 = v2;
      v13 = *v25;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v25 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v24 + 1) + 8 * i);
          v16 = [a1 URL];
          v17 = [v16 URLByAppendingPathComponent:v15];

          v18 = [MEMORY[0x1E696AC08] defaultManager];
          v19 = [v17 path];
          v20 = [v18 fileExistsAtPath:v19];

          if (v20)
          {
            v7 = 1;
            goto LABEL_19;
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }

      v7 = 0;
LABEL_19:
      v2 = v23;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

LABEL_22:

  v21 = *MEMORY[0x1E69E9840];
  return v7;
}

+ (void)_is_getSequenceNumber:()IconServices andUUID:
{
  v6 = [MEMORY[0x1E6963648] sharedDatabaseContext];
  if ((objc_opt_respondsToSelector() & 1) != 0 && ![v6 canAccess])
  {
    *a4 = [MEMORY[0x1E696AFB0] _IF_nullUUID];
    v8 = &unk_1F1A652B0;
  }

  else
  {
    v7 = [MEMORY[0x1E6963608] defaultWorkspace];
    v9 = 0;
    [v7 getKnowledgeUUID:a4 andSequenceNumber:&v9];
    v8 = v9;
  }

  *a3 = [v8 unsignedLongLongValue];
}

+ (id)_is_resourceTokenForRecords:()IconServices
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x1E695DF88]) initWithCapacity:{16 * objc_msgSend(v3, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v14 + 1) + 8 * i) persistentIdentifier];
        [v4 appendData:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v11 = [v4 copy];
  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (uint64_t)_is_providesPrecomposedIconResources
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  v2 = [a1 iconDictionary];
  v3 = +[ISDefaults sharedInstance];
  v4 = [v3 defaultToTemplatizedAppIcons];

  v5 = [v2 _IF_BOOLForKeys:&unk_1F1A657D8 defaultValue:v4 ^ 1u];
  return v5;
}

@end