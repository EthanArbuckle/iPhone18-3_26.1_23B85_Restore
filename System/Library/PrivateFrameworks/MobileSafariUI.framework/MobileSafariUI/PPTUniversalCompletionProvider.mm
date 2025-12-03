@interface PPTUniversalCompletionProvider
- (id)_generateResultsForString:(id)string;
- (id)_generateSingleResult;
- (void)setQueryToComplete:(id)complete;
@end

@implementation PPTUniversalCompletionProvider

- (void)setQueryToComplete:(id)complete
{
  completeCopy = complete;
  queryString = [completeCopy queryString];
  v6 = [queryString isEqualToString:self->querySimulated];

  if ((v6 & 1) == 0)
  {
    queryString2 = [completeCopy queryString];
    v8 = [queryString2 copy];
    querySimulated = self->querySimulated;
    self->querySimulated = v8;

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __53__PPTUniversalCompletionProvider_setQueryToComplete___block_invoke;
    v12[3] = &unk_2781D9530;
    v12[4] = self;
    v10 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:0 repeats:v12 block:0.1];
    networkDelaySimulatorTimer = self->networkDelaySimulatorTimer;
    self->networkDelaySimulatorTimer = v10;
  }
}

void __53__PPTUniversalCompletionProvider_setQueryToComplete___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 _generateResultsForString:v2[17]];
  [v2 setCompletions:v3 forString:*(*(a1 + 32) + 136)];
}

- (id)_generateResultsForString:(id)string
{
  stringCopy = string;
  array = [MEMORY[0x277CBEB18] array];
  if ([stringCopy length])
  {
    v6 = 0;
    do
    {
      _generateSingleResult = [(PPTUniversalCompletionProvider *)self _generateSingleResult];
      [array addObject:_generateSingleResult];

      ++v6;
    }

    while (v6 < [stringCopy length]);
  }

  return array;
}

- (id)_generateSingleResult
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277D4C5D0]);
  [v2 setPlacement:1];
  v3 = objc_alloc_init(MEMORY[0x277D4C690]);
  [v3 setText:@"This is a test title"];
  [v3 setMaxLines:2];
  [v2 setTitle:v3];
  [v2 setSectionHeader:@"Test Header"];
  v4 = objc_alloc_init(MEMORY[0x277D4C598]);
  [v4 setText:@"This is a test"];
  v7[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  [v2 setDescriptions:v5];

  return v2;
}

@end