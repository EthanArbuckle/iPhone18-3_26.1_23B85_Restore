@interface FTBipartiteMatcher
- (FTBipartiteMatcher)initWithInitialSize:(unint64_t)size;
- (id)computeMatchingForCostMatrix:(const float *)matrix withRowCount:(unint64_t)count columnCount:(unint64_t)columnCount;
- (id)computeMatchingForCostMatrix:(const float *)matrix withRowCount:(unint64_t)count columnCount:(unint64_t)columnCount maxIters:(unint64_t)iters minimumNonzeroPaddingValue:(float)value;
@end

@implementation FTBipartiteMatcher

- (FTBipartiteMatcher)initWithInitialSize:(unint64_t)size
{
  v4.receiver = self;
  v4.super_class = FTBipartiteMatcher;
  if ([(FTBipartiteMatcher *)&v4 init])
  {
    operator new();
  }

  return 0;
}

- (id)computeMatchingForCostMatrix:(const float *)matrix withRowCount:(unint64_t)count columnCount:(unint64_t)columnCount
{
  ft::HungarianMatcher::Match(self->_optimizer.__ptr_, matrix, count, columnCount, &v12);
  v5 = v12;
  if (v12 == v13)
  {
    v7 = 0;
    if (!v12)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v6 = objc_alloc(MEMORY[0x277CBEB18]);
  v7 = [v6 initWithCapacity:(v13 - v12) >> 3];
  v8 = v12;
  v9 = v13;
  if (v12 != v13)
  {
    do
    {
      v10 = [MEMORY[0x277CCABB0] numberWithLongLong:*v8];
      [v7 addObject:v10];

      ++v8;
    }

    while (v8 != v9);
  }

  v5 = v12;
  if (v12)
  {
LABEL_7:
    v13 = v5;
    operator delete(v5);
  }

LABEL_8:

  return v7;
}

- (id)computeMatchingForCostMatrix:(const float *)matrix withRowCount:(unint64_t)count columnCount:(unint64_t)columnCount maxIters:(unint64_t)iters minimumNonzeroPaddingValue:(float)value
{
  v26 = 2;
  v25 = 0;
  v13 = objc_alloc(MEMORY[0x277CBEB18]);
  if (count <= columnCount)
  {
    countCopy = columnCount;
  }

  else
  {
    countCopy = count;
  }

  v15 = [v13 initWithCapacity:countCopy];
  ft::HungarianMatcher::Match(self->_optimizer.__ptr_, &v25, matrix, count, columnCount, iters, &v26, &v23, value, v16);
  v17 = v23;
  v18 = v24;
  if (v23 != v24)
  {
    do
    {
      v19 = [MEMORY[0x277CCABB0] numberWithLongLong:*v17];
      [v15 addObject:v19];

      ++v17;
    }

    while (v17 != v18);
    v17 = v23;
  }

  if (v17)
  {
    v24 = v17;
    operator delete(v17);
  }

  v20 = [FTBipartiteMatcherOutput alloc];
  v21 = [(FTBipartiteMatcherOutput *)v20 initWithMatches:v15 state:v26 usedIterations:v25];

  return v21;
}

@end