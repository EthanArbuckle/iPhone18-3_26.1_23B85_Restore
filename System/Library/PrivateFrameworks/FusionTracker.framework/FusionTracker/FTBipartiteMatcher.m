@interface FTBipartiteMatcher
- (FTBipartiteMatcher)initWithInitialSize:(unint64_t)a3;
- (id)computeMatchingForCostMatrix:(const float *)a3 withRowCount:(unint64_t)a4 columnCount:(unint64_t)a5;
- (id)computeMatchingForCostMatrix:(const float *)a3 withRowCount:(unint64_t)a4 columnCount:(unint64_t)a5 maxIters:(unint64_t)a6 minimumNonzeroPaddingValue:(float)a7;
@end

@implementation FTBipartiteMatcher

- (FTBipartiteMatcher)initWithInitialSize:(unint64_t)a3
{
  v4.receiver = self;
  v4.super_class = FTBipartiteMatcher;
  if ([(FTBipartiteMatcher *)&v4 init])
  {
    operator new();
  }

  return 0;
}

- (id)computeMatchingForCostMatrix:(const float *)a3 withRowCount:(unint64_t)a4 columnCount:(unint64_t)a5
{
  ft::HungarianMatcher::Match(self->_optimizer.__ptr_, a3, a4, a5, &v12);
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

- (id)computeMatchingForCostMatrix:(const float *)a3 withRowCount:(unint64_t)a4 columnCount:(unint64_t)a5 maxIters:(unint64_t)a6 minimumNonzeroPaddingValue:(float)a7
{
  v26 = 2;
  v25 = 0;
  v13 = objc_alloc(MEMORY[0x277CBEB18]);
  if (a4 <= a5)
  {
    v14 = a5;
  }

  else
  {
    v14 = a4;
  }

  v15 = [v13 initWithCapacity:v14];
  ft::HungarianMatcher::Match(self->_optimizer.__ptr_, &v25, a3, a4, a5, a6, &v26, &v23, a7, v16);
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