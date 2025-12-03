@interface NSError(NanoPassKit)
- (id)npk_errorWithDomain:()NanoPassKit code:;
@end

@implementation NSError(NanoPassKit)

- (id)npk_errorWithDomain:()NanoPassKit code:
{
  v6 = a3;
  selfCopy = self;
  if (selfCopy)
  {
    v8 = *MEMORY[0x277CCA7E8];
    do
    {
      domain = [selfCopy domain];
      if ([domain isEqualToString:v6])
      {
        code = [selfCopy code];

        if (code == a4)
        {
          break;
        }
      }

      else
      {
      }

      userInfo = [selfCopy userInfo];
      v12 = [userInfo objectForKeyedSubscript:v8];

      selfCopy = v12;
    }

    while (v12);
  }

  return selfCopy;
}

@end