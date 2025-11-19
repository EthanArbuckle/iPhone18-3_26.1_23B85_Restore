@interface NSError(CloudKitHelpers)
- (id)underlyingCKError;
- (id)updatedServerChangedShare;
@end

@implementation NSError(CloudKitHelpers)

- (id)updatedServerChangedShare
{
  v1 = [a1 underlyingCKError];
  v2 = [v1 domain];
  v3 = [v2 isEqualToString:*MEMORY[0x1E695B740]];

  if (v3 && [v1 code] == 14)
  {
    v4 = [v1 userInfo];
    v5 = [v4 objectForKeyedSubscript:*MEMORY[0x1E695B7C0]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)underlyingCKError
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = [a1 domain];
  v3 = *MEMORY[0x1E695B740];
  v4 = [v2 isEqualToString:*MEMORY[0x1E695B740]];

  if (v4)
  {
LABEL_15:
    v11 = a1;
    goto LABEL_18;
  }

  v5 = [a1 userInfo];
  v6 = [v5 objectForKey:*MEMORY[0x1E696AA08]];

  v7 = [a1 userInfo];
  v8 = [v7 objectForKey:*MEMORY[0x1E696A750]];

  v9 = [v6 domain];
  v10 = [v9 isEqual:v3];

  if (!v10)
  {
    if (v8)
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v21 = v8;
      v12 = v8;
      v13 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v23;
        while (2)
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v23 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v22 + 1) + 8 * i);
            v18 = [v17 domain];
            v19 = [v18 isEqualToString:v3];

            if (v19)
            {
              v11 = v17;

              v8 = v21;
              goto LABEL_17;
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
          if (v14)
          {
            continue;
          }

          break;
        }
      }

      v8 = v21;
    }

    goto LABEL_15;
  }

  v11 = v6;
LABEL_17:

LABEL_18:

  return v11;
}

@end