@interface CalculateKeys
+ (id)keysWithOptions:(uint64_t)options;
- (id)initWithOptions:(id *)options;
- (id)locales;
- (id)numberFormatter;
- (id)variables;
- (uint64_t)allowPartialExpressions;
- (uint64_t)assumeDegrees;
- (uint64_t)autoScientificNotation;
- (uint64_t)engine;
- (uint64_t)flexibleFractionDigits;
- (uint64_t)format;
- (uint64_t)scientificNotationFormat;
@end

@implementation CalculateKeys

- (uint64_t)assumeDegrees
{
  if (!self)
  {
    return 0;
  }

  v1 = [*(self + 8) objectForKeyedSubscript:@"CalculateKeyAssumeDegrees"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bOOLValue = [v1 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (uint64_t)allowPartialExpressions
{
  if (result)
  {
    v1 = [*(result + 8) objectForKeyedSubscript:@"CalculateKeyAllowPartialExpressions"];
    bOOLValue = [v1 BOOLValue];

    return bOOLValue;
  }

  return result;
}

- (uint64_t)flexibleFractionDigits
{
  if (!self)
  {
    return 0;
  }

  v1 = [*(self + 8) objectForKeyedSubscript:@"CalculateKeyFlexibleFractionDigits"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bOOLValue = [v1 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

- (uint64_t)engine
{
  if (!self)
  {
    return 0;
  }

  v1 = [*(self + 8) objectForKeyedSubscript:@"CalculateKeyEngine"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    intValue = [v1 intValue];
  }

  else
  {
    intValue = 0;
  }

  return intValue;
}

- (uint64_t)format
{
  if (!self)
  {
    return 0;
  }

  v1 = [*(self + 8) objectForKeyedSubscript:@"CalculateKeyFormat"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    intValue = [v1 intValue];
  }

  else
  {
    intValue = 0;
  }

  return intValue;
}

- (id)numberFormatter
{
  if (self)
  {
    v1 = [*(self + 8) objectForKeyedSubscript:@"CalculateKeyNumberFormatter"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v2 = v1;
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)variables
{
  if (self)
  {
    v1 = [*(self + 8) objectForKeyedSubscript:@"CalculateKeyVariables"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v2 = v1;
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)locales
{
  v8[1] = *MEMORY[0x1E69E9840];
  if (self)
  {
    v1 = [*(self + 8) objectForKeyedSubscript:@"CalculateKeyLocales"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v2 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:v1];
      v8[0] = v2;
      v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = v1;
        v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v7 count:1];
        goto LABEL_10;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v4 = 0;
        goto LABEL_10;
      }

      v2 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global];
      v3 = [v1 filteredArrayUsingPredicate:v2];
    }

    v4 = v3;

LABEL_10:
    goto LABEL_11;
  }

  v4 = 0;
LABEL_11:
  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)keysWithOptions:(uint64_t)options
{
  v2 = a2;
  objc_opt_self();
  v3 = [[CalculateKeys alloc] initWithOptions:v2];

  return v3;
}

- (id)initWithOptions:(id *)options
{
  v4 = a2;
  if (options)
  {
    v7.receiver = options;
    v7.super_class = CalculateKeys;
    v5 = objc_msgSendSuper2(&v7, sel_init);
    options = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 1, a2);
    }
  }

  return options;
}

uint64_t __24__CalculateKeys_locales__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (uint64_t)autoScientificNotation
{
  if (!self)
  {
    return 0;
  }

  v1 = [*(self + 8) objectForKeyedSubscript:@"CalculateKeyAutoScientificNotation"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bOOLValue = [v1 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

- (uint64_t)scientificNotationFormat
{
  if (!self)
  {
    return 0;
  }

  v1 = [*(self + 8) objectForKeyedSubscript:@"CalculateKeyScientificNotationFormat"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    intValue = [v1 intValue];
  }

  else
  {
    intValue = 1;
  }

  return intValue;
}

uint64_t __34__CalculateKeys_expectedUnitTypes__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end