@interface NSArray(SuggestionsExtensions)
- (id)hv_firstHeaderForKey:()SuggestionsExtensions;
@end

@implementation NSArray(SuggestionsExtensions)

- (id)hv_firstHeaderForKey:()SuggestionsExtensions
{
  v5 = a3;
  v6 = [a1 count];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    while (1)
    {
      v9 = [a1 objectAtIndexedSubscript:v8];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v12 = [MEMORY[0x277CCA890] currentHandler];
        [v12 handleFailureInMethod:a2 object:a1 file:@"SGSimpleMailMessage.m" lineNumber:67 description:{@"Invalid parameter not satisfying: %@", @"[header isKindOfClass:[SGSimpleMailHeaderKeyValue class]]"}];
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

    v13 = [v9 value];
  }

  else
  {
LABEL_7:
    v13 = 0;
  }

  return v13;
}

@end