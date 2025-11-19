@interface NSDictionary(TextEffects)
- (uint64_t)ck_activeTextEffectFromTypingAttributes;
- (uint64_t)ck_activeTextStylesFromTypingAttributes;
@end

@implementation NSDictionary(TextEffects)

- (uint64_t)ck_activeTextStylesFromTypingAttributes
{
  v2 = [a1 objectForKeyedSubscript:*MEMORY[0x1E69DB758]];
  if (v2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = 4;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = [a1 objectForKeyedSubscript:*MEMORY[0x1E69DB6B8]];

  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 |= 8uLL;
    }
  }

  v5 = [a1 objectForKeyedSubscript:*MEMORY[0x1E69DB648]];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 fontDescriptor];
    v3 |= __rbit32([v7 symbolicTraits]) >> 30;
  }

  return v3;
}

- (uint64_t)ck_activeTextEffectFromTypingAttributes
{
  v1 = [a1 objectForKeyedSubscript:*MEMORY[0x1E69A7CF8]];
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v2 = [v1 unsignedIntegerValue];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end