@interface FedStatsCategoricalTypeURLTokenizer
+ (id)instanceWithParameters:(id)parameters error:(id *)error;
- (id)tokenize:(id)tokenize;
@end

@implementation FedStatsCategoricalTypeURLTokenizer

+ (id)instanceWithParameters:(id)parameters error:(id *)error
{
  v4 = objc_alloc_init(FedStatsCategoricalTypeURLTokenizer);

  return v4;
}

- (id)tokenize:(id)tokenize
{
  v16[1] = *MEMORY[0x277D85DE8];
  if (tokenize)
  {
    v3 = MEMORY[0x277CBEBC0];
    tokenize = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", tokenize];
    v5 = [v3 URLWithString:tokenize];

    if (v5)
    {
      host = [v5 host];
      path = [v5 path];
      v8 = path;
      if (host)
      {
        v9 = path == 0;
      }

      else
      {
        v9 = 1;
      }

      if (v9)
      {
        v13 = 0;
      }

      else
      {
        v10 = [FedStatsCategoricalTypeCharacterTokenizer instanceWithParameters:MEMORY[0x277CBEC10] error:0];
        v11 = [v10 tokenize:v8];
        v16[0] = host;
        v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
        v13 = [v12 arrayByAddingObjectsFromArray:v11];
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

@end