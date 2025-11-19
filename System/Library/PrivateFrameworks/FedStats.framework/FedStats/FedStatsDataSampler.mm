@interface FedStatsDataSampler
+ (id)pickSamplesFrom:(id)a3 length:(unint64_t)a4;
+ (id)samplerWithCount:(unint64_t)a3;
- (void)addItem:(id)a3;
- (void)addItems:(id)a3;
@end

@implementation FedStatsDataSampler

+ (id)samplerWithCount:(unint64_t)a3
{
  v4 = objc_alloc_init(FedStatsDataSampler);
  [(FedStatsDataSampler *)v4 setTotal:0];
  [(FedStatsDataSampler *)v4 setCount:a3];
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:a3];
  [(FedStatsDataSampler *)v4 setResults:v5];

  return v4;
}

- (void)addItem:(id)a3
{
  v7 = a3;
  if (v7)
  {
    v4 = [(FedStatsDataSampler *)self total]+ 1;
    [(FedStatsDataSampler *)self setTotal:v4];
    if (v4 <= [(FedStatsDataSampler *)self count])
    {
      v6 = [(FedStatsDataSampler *)self results];
      [v6 addObject:v7];
    }

    else
    {
      v5 = arc4random_uniform([(FedStatsDataSampler *)self total]);
      if ([(FedStatsDataSampler *)self count]<= v5)
      {
        goto LABEL_7;
      }

      v6 = [(FedStatsDataSampler *)self results];
      [v6 replaceObjectAtIndex:v5 withObject:v7];
    }
  }

LABEL_7:
}

- (void)addItems:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v4);
        }

        [(FedStatsDataSampler *)self addItem:*(*(&v10 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

+ (id)pickSamplesFrom:(id)a3 length:(unint64_t)a4
{
  v5 = a3;
  v6 = [FedStatsDataSampler samplerWithCount:a4];
  [v6 addItems:v5];

  v7 = [v6 getResults];

  return v7;
}

@end