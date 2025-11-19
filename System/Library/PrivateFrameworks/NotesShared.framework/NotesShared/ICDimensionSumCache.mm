@interface ICDimensionSumCache
- (ICDimensionSumCache)init;
- (ICDimensionSumCache)initWithKeys:(id)a3 andEstimateDimension:(double)a4;
- (double)dimensionForKey:(id)a3;
- (unint64_t)count;
- (void)removeDimensionForKey:(id)a3;
- (void)setDimension:(double)a3 forKey:(id)a4;
@end

@implementation ICDimensionSumCache

- (unint64_t)count
{
  v2 = [(ICDimensionSumCache *)self dimensions];
  v3 = [v2 count];

  return v3;
}

- (ICDimensionSumCache)init
{
  [(ICDimensionSumCache *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (ICDimensionSumCache)initWithKeys:(id)a3 andEstimateDimension:(double)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v23.receiver = self;
  v23.super_class = ICDimensionSumCache;
  v7 = [(ICDimensionSumCache *)&v23 init];
  v8 = v7;
  if (v7)
  {
    v7->_estimateDimension = a4;
    v9 = [v6 count];
    v10 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:v9];
    dimensions = v8->_dimensions;
    v8->_dimensions = v10;

    v12 = [MEMORY[0x277CCABB0] numberWithDouble:a4];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v13 = v6;
    v14 = [v13 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v20;
      do
      {
        v17 = 0;
        do
        {
          if (*v20 != v16)
          {
            objc_enumerationMutation(v13);
          }

          [(NSMutableDictionary *)v8->_dimensions setObject:v12 forKey:*(*(&v19 + 1) + 8 * v17++), v19];
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v15);
    }

    [(ICDimensionSumCache *)v8 setSum:v9 * a4];
  }

  return v8;
}

- (double)dimensionForKey:(id)a3
{
  v4 = a3;
  v5 = [(ICDimensionSumCache *)self dimensions];
  v6 = [v5 objectForKeyedSubscript:v4];

  [v6 doubleValue];
  v8 = v7;

  return v8;
}

- (void)setDimension:(double)a3 forKey:(id)a4
{
  v6 = a4;
  [(ICDimensionSumCache *)self dimensionForKey:v6];
  v8 = a3 - v7;
  [(ICDimensionSumCache *)self sum];
  [(ICDimensionSumCache *)self setSum:v9 + v8];
  v11 = [(ICDimensionSumCache *)self dimensions];
  v10 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  [v11 setObject:v10 forKey:v6];
}

- (void)removeDimensionForKey:(id)a3
{
  v10 = a3;
  v4 = [(ICDimensionSumCache *)self dimensions];
  v5 = [v4 objectForKey:v10];

  if (v5)
  {
    [(ICDimensionSumCache *)self dimensionForKey:v10];
    v7 = v6;
    [(ICDimensionSumCache *)self sum];
    [(ICDimensionSumCache *)self setSum:v8 - v7];
    v9 = [(ICDimensionSumCache *)self dimensions];
    [v9 removeObjectForKey:v10];
  }
}

@end