@interface MCPayloadUserPromptUtilities
+ (id)prioritizeUserInput:(id)a3 key:(id)a4 overField:(id)a5;
+ (id)promptDictionaryForKey:(id)a3 title:(id)a4 description:(id)a5 retypeDescription:(id)a6 finePrint:(id)a7 defaultValue:(id)a8 placeholderValue:(id)a9 minimumLength:(unint64_t)a10 fieldType:(int)a11 flags:(int)a12;
@end

@implementation MCPayloadUserPromptUtilities

+ (id)promptDictionaryForKey:(id)a3 title:(id)a4 description:(id)a5 retypeDescription:(id)a6 finePrint:(id)a7 defaultValue:(id)a8 placeholderValue:(id)a9 minimumLength:(unint64_t)a10 fieldType:(int)a11 flags:(int)a12
{
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v22 = a8;
  v23 = a9;
  v24 = [MEMORY[0x1E695DF90] dictionary];
  if ([v17 length])
  {
    [v24 setObject:v17 forKey:@"UUID"];
  }

  if ([v18 length])
  {
    [v24 setObject:v18 forKey:@"title"];
  }

  if ([v19 length])
  {
    [v24 setObject:v19 forKey:@"description"];
  }

  if ([v20 length])
  {
    [v24 setObject:v20 forKey:@"retryDescription"];
  }

  if ([v21 length])
  {
    [v24 setObject:v21 forKey:@"finePrint"];
  }

  if ([v22 length])
  {
    [v24 setObject:v22 forKey:@"defaultValue"];
  }

  if ([v23 length])
  {
    [v24 setObject:v23 forKey:@"placeholderValue"];
  }

  if (a10)
  {
    v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a10];
    [v24 setObject:v25 forKey:@"minimumLength"];
  }

  v26 = [MEMORY[0x1E696AD98] numberWithInt:a11];
  [v24 setObject:v26 forKey:@"fieldType"];

  v27 = [MEMORY[0x1E696AD98] numberWithInt:a12];
  [v24 setObject:v27 forKey:@"flags"];

  return v24;
}

+ (id)prioritizeUserInput:(id)a3 key:(id)a4 overField:(id)a5
{
  v28 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (v7)
  {
    v22 = v9;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v11 = v7;
    v12 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v24;
LABEL_4:
      v15 = 0;
      while (1)
      {
        if (*v24 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v23 + 1) + 8 * v15);
        v17 = [v16 objectForKey:@"UUID"];
        v18 = [v17 isEqualToString:v8];

        if (v18)
        {
          break;
        }

        if (v13 == ++v15)
        {
          v13 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
          if (v13)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }

      v19 = [v16 objectForKey:@"response"];

      v10 = v22;
      if (v19)
      {
        goto LABEL_13;
      }
    }

    else
    {
LABEL_10:

      v10 = v22;
    }
  }

  v19 = v10;
LABEL_13:

  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

@end