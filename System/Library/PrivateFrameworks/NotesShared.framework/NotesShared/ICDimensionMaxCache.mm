@interface ICDimensionMaxCache
- (ICDimensionMaxCache)init;
- (ICDimensionMaxCache)initWithComparator:(id)comparator;
- (double)dimensionForKey:(id)key;
- (double)max;
- (unint64_t)count;
- (void)removeDimensionForKey:(id)key;
- (void)setDimension:(double)dimension forKey:(id)key;
@end

@implementation ICDimensionMaxCache

- (double)max
{
  sortedDimensions = [(ICDimensionMaxCache *)self sortedDimensions];
  lastObject = [sortedDimensions lastObject];

  [lastObject doubleValue];
  v5 = v4;

  return v5;
}

- (unint64_t)count
{
  dimensions = [(ICDimensionMaxCache *)self dimensions];
  v3 = [dimensions count];

  return v3;
}

- (ICDimensionMaxCache)init
{
  [(ICDimensionMaxCache *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (ICDimensionMaxCache)initWithComparator:(id)comparator
{
  comparatorCopy = comparator;
  v13.receiver = self;
  v13.super_class = ICDimensionMaxCache;
  v5 = [(ICDimensionMaxCache *)&v13 init];
  if (v5)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    dimensions = v5->_dimensions;
    v5->_dimensions = dictionary;

    array = [MEMORY[0x277CBEB18] array];
    sortedDimensions = v5->_sortedDimensions;
    v5->_sortedDimensions = array;

    v10 = _Block_copy(comparatorCopy);
    comparator = v5->_comparator;
    v5->_comparator = v10;
  }

  return v5;
}

- (double)dimensionForKey:(id)key
{
  keyCopy = key;
  dimensions = [(ICDimensionMaxCache *)self dimensions];
  v6 = [dimensions objectForKeyedSubscript:keyCopy];

  [v6 doubleValue];
  v8 = v7;

  return v8;
}

- (void)setDimension:(double)dimension forKey:(id)key
{
  keyCopy = key;
  dimensions = [(ICDimensionMaxCache *)self dimensions];
  v8 = [dimensions objectForKey:keyCopy];

  v9 = [MEMORY[0x277CCABB0] numberWithDouble:dimension];
  if (v8)
  {
    if ([v8 isEqual:v9])
    {
      goto LABEL_9;
    }

    sortedDimensions = [(ICDimensionMaxCache *)self sortedDimensions];
    comparator = [(ICDimensionMaxCache *)self comparator];
    v12 = [sortedDimensions ic_indexOfSortedObject:v8 insertionIndex:0 usingComparator:comparator];

    if (v12 == 0x7FFFFFFFFFFFFFFFLL)
    {
      [MEMORY[0x277D36198] handleFailedAssertWithCondition:"prevIndex != NSNotFound" functionName:"-[ICDimensionMaxCache setDimension:forKey:]" simulateCrash:1 showAlert:0 format:@"index of existing dimension should exist"];
    }

    sortedDimensions2 = [(ICDimensionMaxCache *)self sortedDimensions];
    [sortedDimensions2 removeObjectAtIndex:v12];
  }

  v22 = 0;
  sortedDimensions3 = [(ICDimensionMaxCache *)self sortedDimensions];
  comparator2 = [(ICDimensionMaxCache *)self comparator];
  [sortedDimensions3 ic_indexOfSortedObject:v9 insertionIndex:&v22 usingComparator:comparator2];

  if (v22 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"index != NSNotFound" functionName:"-[ICDimensionMaxCache setDimension:forKey:]" simulateCrash:1 showAlert:0 format:@"insertion index should be found"];
  }

  sortedDimensions4 = [(ICDimensionMaxCache *)self sortedDimensions];
  [sortedDimensions4 insertObject:v9 atIndex:v22];

  dimensions2 = [(ICDimensionMaxCache *)self dimensions];
  [dimensions2 setObject:v9 forKey:keyCopy];

LABEL_9:
  dimensions3 = [(ICDimensionMaxCache *)self dimensions];
  v19 = [dimensions3 count];
  sortedDimensions5 = [(ICDimensionMaxCache *)self sortedDimensions];
  v21 = [sortedDimensions5 count];

  if (v19 != v21)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"self.dimensions.count == self.sortedDimensions.count" functionName:"-[ICDimensionMaxCache setDimension:forKey:]" simulateCrash:1 showAlert:0 format:@"counts should match"];
  }
}

- (void)removeDimensionForKey:(id)key
{
  keyCopy = key;
  dimensions = [(ICDimensionMaxCache *)self dimensions];
  v5 = [dimensions objectForKey:keyCopy];

  if (v5)
  {
    sortedDimensions = [(ICDimensionMaxCache *)self sortedDimensions];
    comparator = [(ICDimensionMaxCache *)self comparator];
    v8 = [sortedDimensions ic_indexOfSortedObject:v5 insertionIndex:0 usingComparator:comparator];

    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      [MEMORY[0x277D36198] handleFailedAssertWithCondition:"index != NSNotFound" functionName:"-[ICDimensionMaxCache removeDimensionForKey:]" simulateCrash:1 showAlert:0 format:@"index of existing dimension should exist"];
    }

    sortedDimensions2 = [(ICDimensionMaxCache *)self sortedDimensions];
    [sortedDimensions2 removeObjectAtIndex:v8];

    dimensions2 = [(ICDimensionMaxCache *)self dimensions];
    [dimensions2 removeObjectForKey:keyCopy];
  }
}

@end