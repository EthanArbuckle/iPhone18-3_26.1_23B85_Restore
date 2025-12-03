@interface ICDimensionSumCache
- (ICDimensionSumCache)init;
- (ICDimensionSumCache)initWithKeys:(id)keys andEstimateDimension:(double)dimension;
- (double)dimensionForKey:(id)key;
- (unint64_t)count;
- (void)removeDimensionForKey:(id)key;
- (void)setDimension:(double)dimension forKey:(id)key;
@end

@implementation ICDimensionSumCache

- (unint64_t)count
{
  dimensions = [(ICDimensionSumCache *)self dimensions];
  v3 = [dimensions count];

  return v3;
}

- (ICDimensionSumCache)init
{
  [(ICDimensionSumCache *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (ICDimensionSumCache)initWithKeys:(id)keys andEstimateDimension:(double)dimension
{
  v25 = *MEMORY[0x277D85DE8];
  keysCopy = keys;
  v23.receiver = self;
  v23.super_class = ICDimensionSumCache;
  v7 = [(ICDimensionSumCache *)&v23 init];
  v8 = v7;
  if (v7)
  {
    v7->_estimateDimension = dimension;
    v9 = [keysCopy count];
    v10 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:v9];
    dimensions = v8->_dimensions;
    v8->_dimensions = v10;

    v12 = [MEMORY[0x277CCABB0] numberWithDouble:dimension];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v13 = keysCopy;
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

    [(ICDimensionSumCache *)v8 setSum:v9 * dimension];
  }

  return v8;
}

- (double)dimensionForKey:(id)key
{
  keyCopy = key;
  dimensions = [(ICDimensionSumCache *)self dimensions];
  v6 = [dimensions objectForKeyedSubscript:keyCopy];

  [v6 doubleValue];
  v8 = v7;

  return v8;
}

- (void)setDimension:(double)dimension forKey:(id)key
{
  keyCopy = key;
  [(ICDimensionSumCache *)self dimensionForKey:keyCopy];
  v8 = dimension - v7;
  [(ICDimensionSumCache *)self sum];
  [(ICDimensionSumCache *)self setSum:v9 + v8];
  dimensions = [(ICDimensionSumCache *)self dimensions];
  v10 = [MEMORY[0x277CCABB0] numberWithDouble:dimension];
  [dimensions setObject:v10 forKey:keyCopy];
}

- (void)removeDimensionForKey:(id)key
{
  keyCopy = key;
  dimensions = [(ICDimensionSumCache *)self dimensions];
  v5 = [dimensions objectForKey:keyCopy];

  if (v5)
  {
    [(ICDimensionSumCache *)self dimensionForKey:keyCopy];
    v7 = v6;
    [(ICDimensionSumCache *)self sum];
    [(ICDimensionSumCache *)self setSum:v8 - v7];
    dimensions2 = [(ICDimensionSumCache *)self dimensions];
    [dimensions2 removeObjectForKey:keyCopy];
  }
}

@end