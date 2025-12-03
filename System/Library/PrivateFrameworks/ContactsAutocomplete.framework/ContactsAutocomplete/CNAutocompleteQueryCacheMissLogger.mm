@interface CNAutocompleteQueryCacheMissLogger
- (CNAutocompleteQueryCacheMissLogger)init;
- (CNAutocompleteQueryCacheMissLogger)initWithLoggers:(id)loggers;
- (void)didReturnCacheFalseNegatives:(id)negatives;
- (void)didReturnCacheFalsePositives:(id)positives;
@end

@implementation CNAutocompleteQueryCacheMissLogger

- (CNAutocompleteQueryCacheMissLogger)init
{
  v9[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(_CNAutocompleteQueryCacheMissOSLogging);
  v4 = objc_alloc_init(_CNAutocompleteQueryCacheMissAggdLogging);
  v9[0] = v3;
  v9[1] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2];
  v6 = [(CNAutocompleteQueryCacheMissLogger *)self initWithLoggers:v5];

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

- (CNAutocompleteQueryCacheMissLogger)initWithLoggers:(id)loggers
{
  loggersCopy = loggers;
  v10.receiver = self;
  v10.super_class = CNAutocompleteQueryCacheMissLogger;
  v5 = [(CNAutocompleteQueryCacheMissLogger *)&v10 init];
  if (v5)
  {
    v6 = [loggersCopy copy];
    loggers = v5->_loggers;
    v5->_loggers = v6;

    v8 = v5;
  }

  return v5;
}

- (void)didReturnCacheFalseNegatives:(id)negatives
{
  v16 = *MEMORY[0x277D85DE8];
  negativesCopy = negatives;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  loggers = [(CNAutocompleteQueryCacheMissLogger *)self loggers];
  v6 = [loggers countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(loggers);
        }

        [*(*(&v11 + 1) + 8 * v9++) didReturnCacheFalseNegatives:negativesCopy];
      }

      while (v7 != v9);
      v7 = [loggers countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)didReturnCacheFalsePositives:(id)positives
{
  v16 = *MEMORY[0x277D85DE8];
  positivesCopy = positives;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  loggers = [(CNAutocompleteQueryCacheMissLogger *)self loggers];
  v6 = [loggers countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(loggers);
        }

        [*(*(&v11 + 1) + 8 * v9++) didReturnCacheFalsePositives:positivesCopy];
      }

      while (v7 != v9);
      v7 = [loggers countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

@end