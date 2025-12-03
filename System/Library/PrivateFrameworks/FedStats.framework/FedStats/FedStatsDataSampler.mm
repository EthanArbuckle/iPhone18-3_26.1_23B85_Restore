@interface FedStatsDataSampler
+ (id)pickSamplesFrom:(id)from length:(unint64_t)length;
+ (id)samplerWithCount:(unint64_t)count;
- (void)addItem:(id)item;
- (void)addItems:(id)items;
@end

@implementation FedStatsDataSampler

+ (id)samplerWithCount:(unint64_t)count
{
  v4 = objc_alloc_init(FedStatsDataSampler);
  [(FedStatsDataSampler *)v4 setTotal:0];
  [(FedStatsDataSampler *)v4 setCount:count];
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:count];
  [(FedStatsDataSampler *)v4 setResults:v5];

  return v4;
}

- (void)addItem:(id)item
{
  itemCopy = item;
  if (itemCopy)
  {
    v4 = [(FedStatsDataSampler *)self total]+ 1;
    [(FedStatsDataSampler *)self setTotal:v4];
    if (v4 <= [(FedStatsDataSampler *)self count])
    {
      results = [(FedStatsDataSampler *)self results];
      [results addObject:itemCopy];
    }

    else
    {
      v5 = arc4random_uniform([(FedStatsDataSampler *)self total]);
      if ([(FedStatsDataSampler *)self count]<= v5)
      {
        goto LABEL_7;
      }

      results = [(FedStatsDataSampler *)self results];
      [results replaceObjectAtIndex:v5 withObject:itemCopy];
    }
  }

LABEL_7:
}

- (void)addItems:(id)items
{
  v15 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [itemsCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(itemsCopy);
        }

        [(FedStatsDataSampler *)self addItem:*(*(&v10 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [itemsCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

+ (id)pickSamplesFrom:(id)from length:(unint64_t)length
{
  fromCopy = from;
  v6 = [FedStatsDataSampler samplerWithCount:length];
  [v6 addItems:fromCopy];

  getResults = [v6 getResults];

  return getResults;
}

@end