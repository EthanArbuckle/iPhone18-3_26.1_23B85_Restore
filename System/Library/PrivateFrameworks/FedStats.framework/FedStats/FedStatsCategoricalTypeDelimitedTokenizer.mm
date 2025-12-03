@interface FedStatsCategoricalTypeDelimitedTokenizer
+ (id)instanceWithParameters:(id)parameters error:(id *)error;
- (FedStatsCategoricalTypeDelimitedTokenizer)initWithDelimiter:(id)delimiter;
- (id)tokenize:(id)tokenize;
@end

@implementation FedStatsCategoricalTypeDelimitedTokenizer

- (FedStatsCategoricalTypeDelimitedTokenizer)initWithDelimiter:(id)delimiter
{
  delimiterCopy = delimiter;
  v9.receiver = self;
  v9.super_class = FedStatsCategoricalTypeDelimitedTokenizer;
  v6 = [(FedStatsCategoricalTypeDelimitedTokenizer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_delimiter, delimiter);
  }

  return v7;
}

+ (id)instanceWithParameters:(id)parameters error:(id *)error
{
  v6 = [parameters objectForKey:@"delimiter"];
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
    error = [[self alloc] initWithDelimiter:v7];
  }

  else if (error)
    v8 = {;
    *error = [FedStatsError errorWithCode:101 description:v8];

    error = 0;
  }

  return error;
}

- (id)tokenize:(id)tokenize
{
  if (tokenize)
  {
    tokenize = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", tokenize];
    delimiter = [(FedStatsCategoricalTypeDelimitedTokenizer *)self delimiter];
    v6 = [tokenize componentsSeparatedByString:delimiter];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end