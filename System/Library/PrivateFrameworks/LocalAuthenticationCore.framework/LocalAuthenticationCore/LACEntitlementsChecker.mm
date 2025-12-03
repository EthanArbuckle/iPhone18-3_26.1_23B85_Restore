@interface LACEntitlementsChecker
- (BOOL)checkHasEntitlements:(id)entitlements error:(id *)error;
@end

@implementation LACEntitlementsChecker

- (BOOL)checkHasEntitlements:(id)entitlements error:(id *)error
{
  v32 = *MEMORY[0x1E69E9840];
  entitlementsCopy = entitlements;
  if ([(__CFArray *)entitlementsCopy count])
  {
    v6 = SecTaskCreateFromSelf(*MEMORY[0x1E695E480]);
    if (v6)
    {
      v7 = v6;
      error = 0;
      v8 = SecTaskCopyValuesForEntitlements(v6, entitlementsCopy, &error);
      CFRelease(v7);
      if (v8)
      {
        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        error = entitlementsCopy;
        v10 = [(__CFArray *)error countByEnumeratingWithState:&v26 objects:v31 count:16];
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
                objc_enumerationMutation(error);
              }

              v14 = *(*(&v26 + 1) + 8 * i);
              v15 = [(__CFDictionary *)v8 objectForKeyedSubscript:v14];
              bOOLValue = [v15 BOOLValue];

              if ((bOOLValue & 1) == 0)
              {
                v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing required entitlement %@", v14];
                v20 = [LACError errorWithCode:-1007 debugDescription:v19];
                if (error)
                {
                  v20 = v20;
                  *error = v20;
                }

                goto LABEL_22;
              }
            }

            v11 = [(__CFArray *)error countByEnumeratingWithState:&v26 objects:v31 count:16];
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
        errorCopy = error;
        error = [MEMORY[0x1E696AEC0] stringWithFormat:@"Could not query entitlements %@", error];

        v22 = [LACError errorWithCode:-1008 debugDescription:error];
        v19 = v22;
        if (error)
        {
          v23 = v22;
          *error = v19;
        }

LABEL_22:

        v17 = 0;
      }
    }

    else
    {
      v18 = [LACError errorWithCode:-1008 debugDescription:@"Could not create SecTask"];
      if (error)
      {
        v18 = v18;
        *error = v18;
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