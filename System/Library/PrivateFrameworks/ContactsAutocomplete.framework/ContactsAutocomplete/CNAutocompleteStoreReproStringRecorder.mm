@interface CNAutocompleteStoreReproStringRecorder
- (CNAutocompleteStoreReproStringRecorder)init;
- (CNAutocompleteStoreReproStringRecorder)initWithTimeProvider:(id)provider;
- (NSString)reproString;
- (id)description;
- (id)stringForIntervalSinceLastTimestamp:(double)timestamp;
- (id)stringForKeystrokesSinceLastString:(id)string;
- (void)clear;
- (void)recordString:(id)string;
@end

@implementation CNAutocompleteStoreReproStringRecorder

- (CNAutocompleteStoreReproStringRecorder)init
{
  defaultProvider = [MEMORY[0x277CFBED0] defaultProvider];
  v4 = [(CNAutocompleteStoreReproStringRecorder *)self initWithTimeProvider:defaultProvider];

  return v4;
}

- (CNAutocompleteStoreReproStringRecorder)initWithTimeProvider:(id)provider
{
  providerCopy = provider;
  v14.receiver = self;
  v14.super_class = CNAutocompleteStoreReproStringRecorder;
  v6 = [(CNAutocompleteStoreReproStringRecorder *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_timeProvider, provider);
    v8 = objc_alloc_init(MEMORY[0x277CCAB68]);
    reproStringStorage = v7->_reproStringStorage;
    v7->_reproStringStorage = v8;

    lastString = v7->_lastString;
    v7->_lastString = &stru_282787720;

    lastTimestamp = v7->_lastTimestamp;
    v7->_lastTimestamp = 0;

    v12 = v7;
  }

  return v7;
}

- (id)description
{
  v3 = [MEMORY[0x277CFBDF0] descriptionBuilderWithObject:self];
  reproStringStorage = [(CNAutocompleteStoreReproStringRecorder *)self reproStringStorage];
  v5 = [v3 appendName:@"reproString" object:reproStringStorage];

  build = [v3 build];

  return build;
}

- (void)clear
{
  reproStringStorage = [(CNAutocompleteStoreReproStringRecorder *)self reproStringStorage];
  [reproStringStorage setString:&stru_282787720];

  [(CNAutocompleteStoreReproStringRecorder *)self setLastString:&stru_282787720];
}

- (NSString)reproString
{
  reproStringStorage = [(CNAutocompleteStoreReproStringRecorder *)self reproStringStorage];
  v3 = [reproStringStorage copy];

  return v3;
}

- (void)recordString:(id)string
{
  stringCopy = string;
  if ((*(*MEMORY[0x277CFBD30] + 16))())
  {
    [(CNAutocompleteStoreReproStringRecorder *)self clear];
  }

  else
  {
    timeProvider = [(CNAutocompleteStoreReproStringRecorder *)self timeProvider];
    [timeProvider timestamp];
    v6 = v5;

    v7 = [(CNAutocompleteStoreReproStringRecorder *)self stringForIntervalSinceLastTimestamp:v6];
    reproStringStorage = [(CNAutocompleteStoreReproStringRecorder *)self reproStringStorage];
    v9 = [reproStringStorage length];

    if (v9 && v7)
    {
      reproStringStorage2 = [(CNAutocompleteStoreReproStringRecorder *)self reproStringStorage];
      [reproStringStorage2 appendFormat:@"~%@~", v7];
    }

    v11 = [(CNAutocompleteStoreReproStringRecorder *)self stringForKeystrokesSinceLastString:stringCopy];
    reproStringStorage3 = [(CNAutocompleteStoreReproStringRecorder *)self reproStringStorage];
    [reproStringStorage3 appendString:v11];

    v13 = [MEMORY[0x277CCABB0] numberWithDouble:v6];
    [(CNAutocompleteStoreReproStringRecorder *)self setLastTimestamp:v13];

    [(CNAutocompleteStoreReproStringRecorder *)self setLastString:stringCopy];
  }
}

- (id)stringForIntervalSinceLastTimestamp:(double)timestamp
{
  lastTimestamp = [(CNAutocompleteStoreReproStringRecorder *)self lastTimestamp];

  if (lastTimestamp)
  {
    v6 = MEMORY[0x277CCACA8];
    lastTimestamp2 = [(CNAutocompleteStoreReproStringRecorder *)self lastTimestamp];
    [lastTimestamp2 doubleValue];
    v9 = [v6 stringWithFormat:@"%lu", ((timestamp - v8) * 1000.0)];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)stringForKeystrokesSinceLastString:(id)string
{
  stringCopy = string;
  lastString = [(CNAutocompleteStoreReproStringRecorder *)self lastString];
  [stringCopy _cn_rangeOfCommonPrefixWithString:lastString];
  v7 = v6;

  lastString2 = [(CNAutocompleteStoreReproStringRecorder *)self lastString];
  v9 = [lastString2 substringFromIndex:v7];

  v10 = [stringCopy substringFromIndex:v7];

  v11 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v12 = [v9 _cn_flatMap:&__block_literal_global_3];
  [v11 appendString:v12];

  [v11 appendString:v10];

  return v11;
}

@end