@interface ICDimensionMaxCache
- (ICDimensionMaxCache)init;
- (ICDimensionMaxCache)initWithComparator:(id)a3;
- (double)dimensionForKey:(id)a3;
- (double)max;
- (unint64_t)count;
- (void)removeDimensionForKey:(id)a3;
- (void)setDimension:(double)a3 forKey:(id)a4;
@end

@implementation ICDimensionMaxCache

- (double)max
{
  v2 = [(ICDimensionMaxCache *)self sortedDimensions];
  v3 = [v2 lastObject];

  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (unint64_t)count
{
  v2 = [(ICDimensionMaxCache *)self dimensions];
  v3 = [v2 count];

  return v3;
}

- (ICDimensionMaxCache)init
{
  [(ICDimensionMaxCache *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (ICDimensionMaxCache)initWithComparator:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = ICDimensionMaxCache;
  v5 = [(ICDimensionMaxCache *)&v13 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB38] dictionary];
    dimensions = v5->_dimensions;
    v5->_dimensions = v6;

    v8 = [MEMORY[0x277CBEB18] array];
    sortedDimensions = v5->_sortedDimensions;
    v5->_sortedDimensions = v8;

    v10 = _Block_copy(v4);
    comparator = v5->_comparator;
    v5->_comparator = v10;
  }

  return v5;
}

- (double)dimensionForKey:(id)a3
{
  v4 = a3;
  v5 = [(ICDimensionMaxCache *)self dimensions];
  v6 = [v5 objectForKeyedSubscript:v4];

  [v6 doubleValue];
  v8 = v7;

  return v8;
}

- (void)setDimension:(double)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = [(ICDimensionMaxCache *)self dimensions];
  v8 = [v7 objectForKey:v6];

  v9 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  if (v8)
  {
    if ([v8 isEqual:v9])
    {
      goto LABEL_9;
    }

    v10 = [(ICDimensionMaxCache *)self sortedDimensions];
    v11 = [(ICDimensionMaxCache *)self comparator];
    v12 = [v10 ic_indexOfSortedObject:v8 insertionIndex:0 usingComparator:v11];

    if (v12 == 0x7FFFFFFFFFFFFFFFLL)
    {
      [MEMORY[0x277D36198] handleFailedAssertWithCondition:"prevIndex != NSNotFound" functionName:"-[ICDimensionMaxCache setDimension:forKey:]" simulateCrash:1 showAlert:0 format:@"index of existing dimension should exist"];
    }

    v13 = [(ICDimensionMaxCache *)self sortedDimensions];
    [v13 removeObjectAtIndex:v12];
  }

  v22 = 0;
  v14 = [(ICDimensionMaxCache *)self sortedDimensions];
  v15 = [(ICDimensionMaxCache *)self comparator];
  [v14 ic_indexOfSortedObject:v9 insertionIndex:&v22 usingComparator:v15];

  if (v22 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"index != NSNotFound" functionName:"-[ICDimensionMaxCache setDimension:forKey:]" simulateCrash:1 showAlert:0 format:@"insertion index should be found"];
  }

  v16 = [(ICDimensionMaxCache *)self sortedDimensions];
  [v16 insertObject:v9 atIndex:v22];

  v17 = [(ICDimensionMaxCache *)self dimensions];
  [v17 setObject:v9 forKey:v6];

LABEL_9:
  v18 = [(ICDimensionMaxCache *)self dimensions];
  v19 = [v18 count];
  v20 = [(ICDimensionMaxCache *)self sortedDimensions];
  v21 = [v20 count];

  if (v19 != v21)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"self.dimensions.count == self.sortedDimensions.count" functionName:"-[ICDimensionMaxCache setDimension:forKey:]" simulateCrash:1 showAlert:0 format:@"counts should match"];
  }
}

- (void)removeDimensionForKey:(id)a3
{
  v11 = a3;
  v4 = [(ICDimensionMaxCache *)self dimensions];
  v5 = [v4 objectForKey:v11];

  if (v5)
  {
    v6 = [(ICDimensionMaxCache *)self sortedDimensions];
    v7 = [(ICDimensionMaxCache *)self comparator];
    v8 = [v6 ic_indexOfSortedObject:v5 insertionIndex:0 usingComparator:v7];

    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      [MEMORY[0x277D36198] handleFailedAssertWithCondition:"index != NSNotFound" functionName:"-[ICDimensionMaxCache removeDimensionForKey:]" simulateCrash:1 showAlert:0 format:@"index of existing dimension should exist"];
    }

    v9 = [(ICDimensionMaxCache *)self sortedDimensions];
    [v9 removeObjectAtIndex:v8];

    v10 = [(ICDimensionMaxCache *)self dimensions];
    [v10 removeObjectForKey:v11];
  }
}

@end