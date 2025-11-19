@interface NSMutableDictionary(MCPayload)
- (id)MCMutableDictionaryContainingValidatedKeysAndClasses:()MCPayload removeKeys:outError:;
- (id)MCValidateAndRemoveArrayOfClass:()MCPayload withKey:isRequired:allowZeroLengthString:outError:;
- (id)MCValidateAndRemoveNonZeroLengthStringWithKey:()MCPayload isRequired:outError:;
- (id)MCValidateAndRemoveObjectOfClass:()MCPayload withKey:isRequired:outError:;
@end

@implementation NSMutableDictionary(MCPayload)

- (id)MCValidateAndRemoveNonZeroLengthStringWithKey:()MCPayload isRequired:outError:
{
  v8 = a3;
  v9 = [a1 objectForKey:v8];
  if (!v9)
  {
    goto LABEL_5;
  }

  [a1 removeObjectForKey:v8];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([v9 length])
    {
      v10 = v9;
      goto LABEL_12;
    }

LABEL_5:
    v10 = 0;
    if (a5 && a4)
    {
      v11 = [MCPayload missingFieldErrorWithField:v8 underlyingError:0];
LABEL_10:
      v10 = 0;
      *a5 = v11;
      goto LABEL_12;
    }

    goto LABEL_12;
  }

  if (a5)
  {
    v11 = [MCPayload badFieldTypeErrorWithField:v8];
    goto LABEL_10;
  }

  v10 = 0;
LABEL_12:

  return v10;
}

- (id)MCValidateAndRemoveObjectOfClass:()MCPayload withKey:isRequired:outError:
{
  v9 = a4;
  v10 = [a1 objectForKey:v9];
  if (v10)
  {
    [a1 removeObjectForKey:v9];
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
      goto LABEL_11;
    }

    if (a6)
    {
      v12 = [MCPayload badFieldTypeErrorWithField:v9];
      goto LABEL_9;
    }

    v11 = 0;
  }

  else
  {
    v11 = 0;
    if (a6 && a5)
    {
      v12 = [MCPayload missingFieldErrorWithField:v9 underlyingError:0];
LABEL_9:
      v11 = 0;
      *a6 = v12;
    }
  }

LABEL_11:

  return v11;
}

- (id)MCValidateAndRemoveArrayOfClass:()MCPayload withKey:isRequired:allowZeroLengthString:outError:
{
  v29 = *MEMORY[0x1E69E9840];
  v11 = a4;
  v12 = [a1 objectForKey:v11];
  if (!v12)
  {
    v19 = 0;
    if (!a7 || !a5)
    {
      goto LABEL_25;
    }

    v20 = [MCPayload missingFieldErrorWithField:v11 underlyingError:0];
LABEL_20:
    v19 = 0;
    *a7 = v20;
    goto LABEL_25;
  }

  [a1 removeObjectForKey:v11];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (!a7)
    {
LABEL_24:
      v19 = 0;
      goto LABEL_25;
    }

    v20 = [MCPayload badFieldTypeErrorWithField:v11];
    goto LABEL_20;
  }

  v23 = a7;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v13 = v12;
  v14 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v25;
    while (2)
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v25 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v24 + 1) + 8 * i);
        if (objc_opt_isKindOfClass())
        {
          if (a6)
          {
            continue;
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0 || [v18 length])
          {
            continue;
          }
        }

        if (v23)
        {
          *v23 = [MCPayload badFieldTypeErrorWithField:v11];
        }

        goto LABEL_24;
      }

      v15 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

  v19 = v13;
LABEL_25:

  v21 = *MEMORY[0x1E69E9840];

  return v19;
}

- (id)MCMutableDictionaryContainingValidatedKeysAndClasses:()MCPayload removeKeys:outError:
{
  v21 = a5;
  v28 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v7, "count")}];
  v22 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v7, "count")}];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v24;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v23 + 1) + 8 * i);
        v15 = [v9 objectForKeyedSubscript:{v14, v21}];
        v16 = [a1 objectForKeyedSubscript:v14];
        if (v16)
        {
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (v21)
            {
              *v21 = [MCPayload badFieldTypeErrorWithField:v14];
            }

            v18 = 0;
            v17 = v22;
            goto LABEL_18;
          }

          [v8 setObject:v16 forKeyedSubscript:v14];
          if (a4)
          {
            [v22 addObject:v14];
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v17 = v22;
  if ([v22 count])
  {
    [a1 removeObjectsForKeys:v22];
  }

  v18 = v8;
LABEL_18:

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

@end