@interface FedStatsCategoricalTypeDelimitedTokenizer
+ (id)instanceWithParameters:(id)a3 error:(id *)a4;
- (FedStatsCategoricalTypeDelimitedTokenizer)initWithDelimiter:(id)a3;
- (id)tokenize:(id)a3;
@end

@implementation FedStatsCategoricalTypeDelimitedTokenizer

- (FedStatsCategoricalTypeDelimitedTokenizer)initWithDelimiter:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = FedStatsCategoricalTypeDelimitedTokenizer;
  v6 = [(FedStatsCategoricalTypeDelimitedTokenizer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_delimiter, a3);
  }

  return v7;
}

+ (id)instanceWithParameters:(id)a3 error:(id *)a4
{
  v6 = [a3 objectForKey:@"delimiter"];
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = @" ";
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    a4 = [[a1 alloc] initWithDelimiter:v7];
  }

  else if (a4)
    v8 = {;
    *a4 = [FedStatsError errorWithCode:101 description:v8];

    a4 = 0;
  }

  return a4;
}

- (id)tokenize:(id)a3
{
  if (a3)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", a3];
    v5 = [(FedStatsCategoricalTypeDelimitedTokenizer *)self delimiter];
    v6 = [v4 componentsSeparatedByString:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end