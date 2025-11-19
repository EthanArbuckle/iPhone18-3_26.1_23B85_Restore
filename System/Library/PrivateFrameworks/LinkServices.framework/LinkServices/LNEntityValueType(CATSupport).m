@interface LNEntityValueType(CATSupport)
- (__CFString)cat_value:()CATSupport;
@end

@implementation LNEntityValueType(CATSupport)

- (__CFString)cat_value:()CATSupport
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = [a3 value];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [MEMORY[0x1E695DF90] dictionary];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v18 = v3;
    v5 = [v3 properties];
    v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v20;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v20 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v19 + 1) + 8 * i);
          v11 = [v10 value];
          v12 = [v11 valueType];
          v13 = [v10 value];
          v14 = [v12 cat_value:v13];
          v15 = [v10 identifier];
          [(__CFString *)v4 setObject:v14 forKeyedSubscript:v15];
        }

        v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v7);
    }
  }

  else
  {

    v4 = &stru_1F0BBC770;
  }

  v16 = *MEMORY[0x1E69E9840];

  return v4;
}

@end