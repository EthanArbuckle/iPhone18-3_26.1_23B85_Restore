@interface LACEntitlementsChecker
- (BOOL)checkHasEntitlements:(id)a3 error:(id *)a4;
@end

@implementation LACEntitlementsChecker

- (BOOL)checkHasEntitlements:(id)a3 error:(id *)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ([(__CFArray *)v5 count])
  {
    v6 = SecTaskCreateFromSelf(*MEMORY[0x1E695E480]);
    if (v6)
    {
      v7 = v6;
      error = 0;
      v8 = SecTaskCopyValuesForEntitlements(v6, v5, &error);
      CFRelease(v7);
      if (v8)
      {
        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        v9 = v5;
        v10 = [(__CFArray *)v9 countByEnumeratingWithState:&v26 objects:v31 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v27;
          while (2)
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v27 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v26 + 1) + 8 * i);
              v15 = [(__CFDictionary *)v8 objectForKeyedSubscript:v14];
              v16 = [v15 BOOLValue];

              if ((v16 & 1) == 0)
              {
                v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing required entitlement %@", v14];
                v20 = [LACError errorWithCode:-1007 debugDescription:v19];
                if (a4)
                {
                  v20 = v20;
                  *a4 = v20;
                }

                goto LABEL_22;
              }
            }

            v11 = [(__CFArray *)v9 countByEnumeratingWithState:&v26 objects:v31 count:16];
            v17 = 1;
            if (v11)
            {
              continue;
            }

            break;
          }
        }

        else
        {
          v17 = 1;
        }
      }

      else
      {
        v21 = error;
        v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Could not query entitlements %@", error];

        v22 = [LACError errorWithCode:-1008 debugDescription:v9];
        v19 = v22;
        if (a4)
        {
          v23 = v22;
          *a4 = v19;
        }

LABEL_22:

        v17 = 0;
      }
    }

    else
    {
      v18 = [LACError errorWithCode:-1008 debugDescription:@"Could not create SecTask"];
      if (a4)
      {
        v18 = v18;
        *a4 = v18;
      }

      v17 = 0;
    }
  }

  else
  {
    v17 = 1;
  }

  v24 = *MEMORY[0x1E69E9840];
  return v17;
}

@end