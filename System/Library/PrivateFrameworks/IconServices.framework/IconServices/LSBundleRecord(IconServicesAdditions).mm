@interface LSBundleRecord(IconServicesAdditions)
- (id)_IS_iconDictionaryForTag:()IconServicesAdditions tagClass:;
- (id)_IS_iconDictionaryForType:()IconServicesAdditions;
- (id)_IS_iconProvidingLineageForRecord:()IconServicesAdditions;
- (uint64_t)_IS_platformToIFPlatform;
@end

@implementation LSBundleRecord(IconServicesAdditions)

- (id)_IS_iconProvidingLineageForRecord:()IconServicesAdditions
{
  v4 = a3;
  v5 = [a1 importedTypeRecords];
  v6 = [a1 exportedTypeRecords];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __75__LSBundleRecord_IconServicesAdditions___IS_iconProvidingLineageForRecord___block_invoke_2;
  v25[3] = &unk_1E77C65C8;
  v7 = v6;
  v26 = v7;
  v8 = v5;
  v27 = v8;
  v9 = MEMORY[0x1AC55B6D0](v25);
  v10 = objc_opt_new();
  v11 = (v9)[2](v9, v4);

  if (v11)
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v24 = 0;
    if (__75__LSBundleRecord_IconServicesAdditions___IS_iconProvidingLineageForRecord___block_invoke([v10 addObject:v11], v11))
    {
      *(v22 + 24) = 1;
    }

    else
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __75__LSBundleRecord_IconServicesAdditions___IS_iconProvidingLineageForRecord___block_invoke_3;
      v15[3] = &unk_1E77C65F0;
      v18 = v9;
      v19 = &__block_literal_global_89;
      v12 = v10;
      v16 = v12;
      v20 = &v21;
      v17 = v11;
      [v17 enumeratePedigreeWithBlock:v15];

      if (!*(v22 + 24))
      {
        [v12 removeAllObjects];
      }
    }

    _Block_object_dispose(&v21, 8);
  }

  v13 = [v10 copy];

  return v13;
}

- (id)_IS_iconDictionaryForTag:()IconServicesAdditions tagClass:
{
  v51 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v33 = a1;
  obj = [a1 claimRecords];
  v36 = [obj countByEnumeratingWithState:&v43 objects:v50 count:16];
  if (v36)
  {
    v37 = 0;
    v35 = *v44;
    do
    {
      for (i = 0; i != v36; ++i)
      {
        if (*v44 != v35)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v43 + 1) + 8 * i);
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v38 = v9;
        v10 = [v9 typeIdentifiers];
        v11 = [v10 countByEnumeratingWithState:&v39 objects:v49 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v40;
LABEL_8:
          v14 = 0;
          while (1)
          {
            if (*v40 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = [MEMORY[0x1E69636B0] typeRecordWithIdentifier:*(*(&v39 + 1) + 8 * v14)];
            v16 = [v15 _ICP_filenameExtensions];
            v17 = [v16 containsObject:v6];

            if (v17)
            {
              break;
            }

            if (v12 == ++v14)
            {
              v12 = [v10 countByEnumeratingWithState:&v39 objects:v49 count:16];
              if (v12)
              {
                goto LABEL_8;
              }

              goto LABEL_14;
            }
          }

          v18 = v38;

          if (v18)
          {
            goto LABEL_22;
          }

          v37 = v15;
        }

        else
        {
LABEL_14:
        }
      }

      v36 = [obj countByEnumeratingWithState:&v43 objects:v50 count:16];
    }

    while (v36);
    v18 = 0;
    v15 = v37;
  }

  else
  {
    v15 = 0;
    v18 = 0;
  }

LABEL_22:

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v19 = [v18 iconDictionary];
    v20 = [v19 _IF_stringForKey:0x1F1A4DBE0];
    if (v20)
    {
      v21 = [v19 mutableCopy];
      [v21 removeObjectForKey:0x1F1A4DBE0];
      [v21 setObject:v20 forKey:0x1F1A4F320];
      v22 = [v21 copy];

      v19 = v22;
    }

    if (![v19 count] && objc_msgSend(v15, "isDeclared"))
    {
      v23 = [v33 _IS_iconProvidingLineageForRecord:v15];
      v24 = [v23 lastObject];
      v25 = v24;
      if (v24)
      {
        v26 = [v24 iconDictionary];

        v19 = v26;
      }
    }

    if (![v19 count])
    {
      v27 = v7;
      v28 = v33;
      if (objc_opt_respondsToSelector())
      {
        v29 = [v28 iconDictionary];

        v47 = 0x1F1A4F340;
        v48 = v6;
        v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
        v19 = [v29 _IF_dictionaryAddingEntriesFromDictionary:v30];
      }

      v7 = v27;
    }
  }

  else
  {
    v19 = 0;
  }

  v31 = *MEMORY[0x1E69E9840];

  return v19;
}

- (id)_IS_iconDictionaryForType:()IconServicesAdditions
{
  v19[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69636B0] typeRecordWithIdentifier:?];
  v3 = [a1 _IS_iconProvidingLineageForRecord:v2];
  v4 = [v3 lastObject];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 iconDictionary];
    v7 = [v6 _IF_stringForKey:0x1F1A4DBE0];
    if (v7)
    {
      v8 = [v6 mutableCopy];
      [v8 removeObjectForKey:0x1F1A4DBE0];
      [v8 setObject:v7 forKey:0x1F1A4F360];
      v9 = [v8 copy];

      v6 = v9;
    }
  }

  else
  {
    v6 = 0;
  }

  if (![v6 count])
  {
    v10 = a1;
    if (objc_opt_respondsToSelector())
    {
      v11 = [v10 iconDictionary];

      v6 = v11;
    }

    v12 = [v2 preferredTagOfClass:*MEMORY[0x1E6963710]];
    v13 = v12;
    if (v12)
    {
      v18 = 0x1F1A4F340;
      v19[0] = v12;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
      v15 = [v6 _IF_dictionaryAddingEntriesFromDictionary:v14];

      v6 = v15;
    }
  }

  v16 = *MEMORY[0x1E69E9840];

  return v6;
}

- (uint64_t)_IS_platformToIFPlatform
{
  if ([a1 platform] == 1)
  {
    return 1;
  }

  if ([a1 platform] == 2 || objc_msgSend(a1, "platform") == 7)
  {
    return 4;
  }

  if ([a1 platform] == 6)
  {
    return 2;
  }

  if ([a1 platform] == 4 || objc_msgSend(a1, "platform") == 9)
  {
    return 8;
  }

  if ([a1 platform] == 11 || objc_msgSend(a1, "platform") == 12)
  {
    return 16;
  }

  if ([a1 platform] == 3)
  {
    return 32;
  }

  return 32 * ([a1 platform] == 8);
}

@end