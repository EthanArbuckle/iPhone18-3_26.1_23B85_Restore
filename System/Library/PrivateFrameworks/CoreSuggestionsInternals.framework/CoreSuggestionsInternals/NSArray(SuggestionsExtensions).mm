@interface NSArray(SuggestionsExtensions)
- (id)hv_firstHeaderForKey:()SuggestionsExtensions;
@end

@implementation NSArray(SuggestionsExtensions)

- (id)hv_firstHeaderForKey:()SuggestionsExtensions
{
  v5 = a3;
  v6 = [self count];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    while (1)
    {
      v9 = [self objectAtIndexedSubscript:v8];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"SGSimpleMailMessage.m" lineNumber:67 description:{@"Invalid parameter not satisfying: %@", @"[header isKindOfClass:[SGSimpleMailHeaderKeyValue class]]"}];
      }

      v10 = [v9 key];
      v11 = [v10 caseInsensitiveCompare:v5];

      if (!v11)
      {
        break;
      }

      if (v7 == ++v8)
      {
        goto LABEL_7;
      }
    }

    value = [v9 value];
  }

  else
  {
LABEL_7:
    value = 0;
  }

  return value;
}

@end