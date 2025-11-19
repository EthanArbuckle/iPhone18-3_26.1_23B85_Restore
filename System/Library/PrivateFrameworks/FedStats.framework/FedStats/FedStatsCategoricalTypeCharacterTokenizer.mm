@interface FedStatsCategoricalTypeCharacterTokenizer
+ (id)instanceWithParameters:(id)a3 error:(id *)a4;
- (id)tokenize:(id)a3;
@end

@implementation FedStatsCategoricalTypeCharacterTokenizer

+ (id)instanceWithParameters:(id)a3 error:(id *)a4
{
  v4 = objc_alloc_init(a1);

  return v4;
}

- (id)tokenize:(id)a3
{
  if (a3)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", a3];
    v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "length")}];
    v5 = [MEMORY[0x277CCA900] URLPathAllowedCharacterSet];
    v6 = [v5 mutableCopy];

    [v6 addCharactersInString:@"%"];
    if ([v3 length])
    {
      v7 = 0;
      do
      {
        v8 = [v3 substringWithRange:{v7, 1}];
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

      while (v7 < [v3 length]);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end