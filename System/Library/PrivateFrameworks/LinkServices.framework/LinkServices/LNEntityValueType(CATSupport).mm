@interface LNEntityValueType(CATSupport)
- (__CFString)cat_value:()CATSupport;
@end

@implementation LNEntityValueType(CATSupport)

- (__CFString)cat_value:()CATSupport
{
  v24 = *MEMORY[0x1E69E9840];
  value = [a3 value];
  if (value && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v18 = value;
    properties = [value properties];
    v6 = [properties countByEnumeratingWithState:&v19 objects:v23 count:16];
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
            objc_enumerationMutation(properties);
          }

          v10 = *(*(&v19 + 1) + 8 * i);
          value2 = [v10 value];
          valueType = [value2 valueType];
          value3 = [v10 value];
          v14 = [valueType cat_value:value3];
          identifier = [v10 identifier];
          [(__CFString *)dictionary setObject:v14 forKeyedSubscript:identifier];
        }

        v7 = [properties countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v7);
    }
  }

  else
  {

    dictionary = &stru_1F0BBC770;
  }

  v16 = *MEMORY[0x1E69E9840];

  return dictionary;
}

@end