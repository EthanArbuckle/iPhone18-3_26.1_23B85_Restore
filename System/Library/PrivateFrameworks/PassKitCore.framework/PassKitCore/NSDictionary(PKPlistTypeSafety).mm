@interface NSDictionary(PKPlistTypeSafety)
- (PKCurrencyAmount)PKCurrencyAmountForKey:()PKPlistTypeSafety;
- (double)PKDoubleForKey:()PKPlistTypeSafety;
- (id)PKArrayContaining:()PKPlistTypeSafety forKey:;
- (id)PKColorForKey:()PKPlistTypeSafety;
- (id)PKDateComponentsForKey:()PKPlistTypeSafety;
- (id)PKDateForKey:()PKPlistTypeSafety;
- (id)PKDecimalNumberForKey:()PKPlistTypeSafety;
- (id)PKDecimalNumberFromStringForKey:()PKPlistTypeSafety;
- (id)PKDictionaryOfKeyClass:()PKPlistTypeSafety valueClass:ForKey:;
- (id)PKSetContaining:()PKPlistTypeSafety forKey:;
- (id)PKSetForKey:()PKPlistTypeSafety;
- (id)PKURLForKey:()PKPlistTypeSafety;
- (id)PKUUIDForKey:()PKPlistTypeSafety;
- (uint64_t)PKBoolForKey:()PKPlistTypeSafety;
- (uint64_t)PKIntegerForKey:()PKPlistTypeSafety;
- (void)PKArrayForKey:()PKPlistTypeSafety;
- (void)PKDataForKey:()PKPlistTypeSafety;
- (void)PKDictionaryForKey:()PKPlistTypeSafety;
- (void)PKNumberForKey:()PKPlistTypeSafety;
- (void)PKStringForKey:()PKPlistTypeSafety;
@end

@implementation NSDictionary(PKPlistTypeSafety)

- (void)PKNumberForKey:()PKPlistTypeSafety
{
  v1 = [a1 objectForKey:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;

  return v2;
}

- (id)PKDecimalNumberFromStringForKey:()PKPlistTypeSafety
{
  v1 = [a1 objectForKey:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [MEMORY[0x1E696AB90] decimalNumberWithString:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)PKDecimalNumberForKey:()PKPlistTypeSafety
{
  v1 = [a1 objectForKey:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = MEMORY[0x1E696AB90];
    if (v1)
    {
      [v1 decimalValue];
    }

    else
    {
      v5[0] = 0;
      v5[1] = 0;
      v6 = 0;
    }

    v3 = [v2 decimalNumberWithDecimal:v5];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)PKDateForKey:()PKPlistTypeSafety
{
  v1 = [a1 objectForKey:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = _PKParseW3CDTSCompleteDatePlusHoursMinutesAndOptionalSeconds(v1, 0, 0);
LABEL_5:
    v3 = v2;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
    goto LABEL_5;
  }

  v3 = 0;
LABEL_7:

  return v3;
}

- (id)PKDateComponentsForKey:()PKPlistTypeSafety
{
  v1 = [a1 objectForKey:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)PKStringForKey:()PKPlistTypeSafety
{
  v1 = [a1 objectForKey:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;

  return v2;
}

- (id)PKURLForKey:()PKPlistTypeSafety
{
  v1 = [a1 PKStringForKey:?];
  if (v1)
  {
    v2 = [MEMORY[0x1E695DFF8] URLWithString:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)PKUUIDForKey:()PKPlistTypeSafety
{
  v1 = [a1 PKStringForKey:?];
  if (v1)
  {
    v2 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)PKColorForKey:()PKPlistTypeSafety
{
  v1 = [a1 PKStringForKey:?];
  if (v1)
  {
    v2 = [PKColor colorFromString:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (uint64_t)PKIntegerForKey:()PKPlistTypeSafety
{
  v1 = [a1 PKNumberForKey:?];
  v2 = [v1 integerValue];

  return v2;
}

- (double)PKDoubleForKey:()PKPlistTypeSafety
{
  v1 = [a1 PKNumberForKey:?];
  [v1 doubleValue];
  v3 = v2;

  return v3;
}

- (uint64_t)PKBoolForKey:()PKPlistTypeSafety
{
  v1 = [a1 PKNumberForKey:?];
  v2 = [v1 BOOLValue];

  return v2;
}

- (void)PKDataForKey:()PKPlistTypeSafety
{
  v1 = [a1 objectForKeyedSubscript:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;

  return v2;
}

- (void)PKDictionaryForKey:()PKPlistTypeSafety
{
  v1 = [a1 objectForKey:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;

  return v2;
}

- (id)PKDictionaryOfKeyClass:()PKPlistTypeSafety valueClass:ForKey:
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = [a1 PKDictionaryForKey:a5];
  v6 = v5;
  if (v5)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [v7 objectForKeyedSubscript:{*(*(&v15 + 1) + 8 * i), v15}];
          if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_isKindOfClass() & 1) == 0)
          {

            v13 = 0;
            goto LABEL_14;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }
  }

  v13 = v6;
LABEL_14:

  return v13;
}

- (void)PKArrayForKey:()PKPlistTypeSafety
{
  v1 = [a1 objectForKey:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;

  return v2;
}

- (id)PKArrayContaining:()PKPlistTypeSafety forKey:
{
  v16 = *MEMORY[0x1E69E9840];
  [a1 PKArrayForKey:a4];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if ((objc_opt_isKindOfClass() & 1) == 0)
        {

          v9 = 0;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = v4;
LABEL_11:

  return v9;
}

- (id)PKSetForKey:()PKPlistTypeSafety
{
  v1 = [a1 objectForKey:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
LABEL_5:
    v3 = v2;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [MEMORY[0x1E695DFD8] setWithArray:v1];
    goto LABEL_5;
  }

  v3 = 0;
LABEL_7:

  return v3;
}

- (PKCurrencyAmount)PKCurrencyAmountForKey:()PKPlistTypeSafety
{
  v1 = [a1 PKDictionaryForKey:?];
  v2 = [[PKCurrencyAmount alloc] initWithDictionary:v1];

  return v2;
}

- (id)PKSetContaining:()PKPlistTypeSafety forKey:
{
  v16 = *MEMORY[0x1E69E9840];
  [a1 PKSetForKey:a4];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if ((objc_opt_isKindOfClass() & 1) == 0)
        {

          v9 = 0;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = v4;
LABEL_11:

  return v9;
}

@end