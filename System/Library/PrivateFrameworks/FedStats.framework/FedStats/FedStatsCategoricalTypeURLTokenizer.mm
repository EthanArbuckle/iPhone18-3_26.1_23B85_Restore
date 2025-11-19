@interface FedStatsCategoricalTypeURLTokenizer
+ (id)instanceWithParameters:(id)a3 error:(id *)a4;
- (id)tokenize:(id)a3;
@end

@implementation FedStatsCategoricalTypeURLTokenizer

+ (id)instanceWithParameters:(id)a3 error:(id *)a4
{
  v4 = objc_alloc_init(FedStatsCategoricalTypeURLTokenizer);

  return v4;
}

- (id)tokenize:(id)a3
{
  v16[1] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v3 = MEMORY[0x277CBEBC0];
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", a3];
    v5 = [v3 URLWithString:v4];

    if (v5)
    {
      v6 = [v5 host];
      v7 = [v5 path];
      v8 = v7;
      if (v6)
      {
        v9 = v7 == 0;
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
        v16[0] = v6;
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