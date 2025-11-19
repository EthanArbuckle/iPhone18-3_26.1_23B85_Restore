@interface NSError(NanoPassKit)
- (id)npk_errorWithDomain:()NanoPassKit code:;
@end

@implementation NSError(NanoPassKit)

- (id)npk_errorWithDomain:()NanoPassKit code:
{
  v6 = a3;
  v7 = a1;
  if (v7)
  {
    v8 = *MEMORY[0x277CCA7E8];
    do
    {
      v9 = [v7 domain];
      if ([v9 isEqualToString:v6])
      {
        v10 = [v7 code];

        if (v10 == a4)
        {
          break;
        }
      }

      else
      {
      }

      v11 = [v7 userInfo];
      v12 = [v11 objectForKeyedSubscript:v8];

      v7 = v12;
    }

    while (v12);
  }

  return v7;
}

@end