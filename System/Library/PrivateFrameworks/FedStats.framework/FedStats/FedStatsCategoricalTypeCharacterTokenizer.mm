@interface FedStatsCategoricalTypeCharacterTokenizer
+ (id)instanceWithParameters:(id)parameters error:(id *)error;
- (id)tokenize:(id)tokenize;
@end

@implementation FedStatsCategoricalTypeCharacterTokenizer

+ (id)instanceWithParameters:(id)parameters error:(id *)error
{
  v4 = objc_alloc_init(self);

  return v4;
}

- (id)tokenize:(id)tokenize
{
  if (tokenize)
  {
    tokenize = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", tokenize];
    v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(tokenize, "length")}];
    uRLPathAllowedCharacterSet = [MEMORY[0x277CCA900] URLPathAllowedCharacterSet];
    v6 = [uRLPathAllowedCharacterSet mutableCopy];

    [v6 addCharactersInString:@"%"];
    if ([tokenize length])
    {
      v7 = 0;
      do
      {
        v8 = [tokenize substringWithRange:{v7, 1}];
        v9 = [v8 stringByAddingPercentEncodingWithAllowedCharacters:v6];

        if (v9)
        {
          v10 = v9;
        }

        else
        {
          v10 = &stru_285E0CF98;
        }

        [v4 addObject:v10];

        ++v7;
      }

      while (v7 < [tokenize length]);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end