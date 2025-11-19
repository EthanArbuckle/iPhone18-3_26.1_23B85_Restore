@interface CNAutocompleteStoreReproStringRecorder
- (CNAutocompleteStoreReproStringRecorder)init;
- (CNAutocompleteStoreReproStringRecorder)initWithTimeProvider:(id)a3;
- (NSString)reproString;
- (id)description;
- (id)stringForIntervalSinceLastTimestamp:(double)a3;
- (id)stringForKeystrokesSinceLastString:(id)a3;
- (void)clear;
- (void)recordString:(id)a3;
@end

@implementation CNAutocompleteStoreReproStringRecorder

- (CNAutocompleteStoreReproStringRecorder)init
{
  v3 = [MEMORY[0x277CFBED0] defaultProvider];
  v4 = [(CNAutocompleteStoreReproStringRecorder *)self initWithTimeProvider:v3];

  return v4;
}

- (CNAutocompleteStoreReproStringRecorder)initWithTimeProvider:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = CNAutocompleteStoreReproStringRecorder;
  v6 = [(CNAutocompleteStoreReproStringRecorder *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_timeProvider, a3);
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
  v4 = [(CNAutocompleteStoreReproStringRecorder *)self reproStringStorage];
  v5 = [v3 appendName:@"reproString" object:v4];

  v6 = [v3 build];

  return v6;
}

- (void)clear
{
  v3 = [(CNAutocompleteStoreReproStringRecorder *)self reproStringStorage];
  [v3 setString:&stru_282787720];

  [(CNAutocompleteStoreReproStringRecorder *)self setLastString:&stru_282787720];
}

- (NSString)reproString
{
  v2 = [(CNAutocompleteStoreReproStringRecorder *)self reproStringStorage];
  v3 = [v2 copy];

  return v3;
}

- (void)recordString:(id)a3
{
  v14 = a3;
  if ((*(*MEMORY[0x277CFBD30] + 16))())
  {
    [(CNAutocompleteStoreReproStringRecorder *)self clear];
  }

  else
  {
    v4 = [(CNAutocompleteStoreReproStringRecorder *)self timeProvider];
    [v4 timestamp];
    v6 = v5;

    v7 = [(CNAutocompleteStoreReproStringRecorder *)self stringForIntervalSinceLastTimestamp:v6];
    v8 = [(CNAutocompleteStoreReproStringRecorder *)self reproStringStorage];
    v9 = [v8 length];

    if (v9 && v7)
    {
      v10 = [(CNAutocompleteStoreReproStringRecorder *)self reproStringStorage];
      [v10 appendFormat:@"~%@~", v7];
    }

    v11 = [(CNAutocompleteStoreReproStringRecorder *)self stringForKeystrokesSinceLastString:v14];
    v12 = [(CNAutocompleteStoreReproStringRecorder *)self reproStringStorage];
    [v12 appendString:v11];

    v13 = [MEMORY[0x277CCABB0] numberWithDouble:v6];
    [(CNAutocompleteStoreReproStringRecorder *)self setLastTimestamp:v13];

    [(CNAutocompleteStoreReproStringRecorder *)self setLastString:v14];
  }
}

- (id)stringForIntervalSinceLastTimestamp:(double)a3
{
  v5 = [(CNAutocompleteStoreReproStringRecorder *)self lastTimestamp];

  if (v5)
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = [(CNAutocompleteStoreReproStringRecorder *)self lastTimestamp];
    [v7 doubleValue];
    v9 = [v6 stringWithFormat:@"%lu", ((a3 - v8) * 1000.0)];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)stringForKeystrokesSinceLastString:(id)a3
{
  v4 = a3;
  v5 = [(CNAutocompleteStoreReproStringRecorder *)self lastString];
  [v4 _cn_rangeOfCommonPrefixWithString:v5];
  v7 = v6;

  v8 = [(CNAutocompleteStoreReproStringRecorder *)self lastString];
  v9 = [v8 substringFromIndex:v7];

  v10 = [v4 substringFromIndex:v7];

  v11 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v12 = [v9 _cn_flatMap:&__block_literal_global_3];
  [v11 appendString:v12];

  [v11 appendString:v10];

  return v11;
}

@end