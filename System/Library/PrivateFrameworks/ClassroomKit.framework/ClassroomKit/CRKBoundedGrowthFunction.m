@interface CRKBoundedGrowthFunction
- (CRKBoundedGrowthFunction)initWithGrowthFunction:(id)a3 lowerBound:(double)a4 upperBound:(double)a5;
- (double)evaluateWithValue:(double)a3;
@end

@implementation CRKBoundedGrowthFunction

- (CRKBoundedGrowthFunction)initWithGrowthFunction:(id)a3 lowerBound:(double)a4 upperBound:(double)a5
{
  v10 = a3;
  if (!v10)
  {
    [CRKBoundedGrowthFunction initWithGrowthFunction:a2 lowerBound:self upperBound:?];
  }

  if (a4 > a5)
  {
    [CRKBoundedGrowthFunction initWithGrowthFunction:a2 lowerBound:self upperBound:?];
  }

  v14.receiver = self;
  v14.super_class = CRKBoundedGrowthFunction;
  v11 = [(CRKBoundedGrowthFunction *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_growthFunction, a3);
    v12->_lowerBound = a4;
    v12->_upperBound = a5;
  }

  return v12;
}

- (double)evaluateWithValue:(double)a3
{
  v5 = [(CRKBoundedGrowthFunction *)self growthFunction];
  [v5 evaluateWithValue:a3];
  v7 = v6;

  [(CRKBoundedGrowthFunction *)self lowerBound];
  if (v8 >= v7)
  {
    v7 = v8;
  }

  [(CRKBoundedGrowthFunction *)self upperBound];
  if (v7 < result)
  {
    return v7;
  }

  return result;
}

- (void)initWithGrowthFunction:(uint64_t)a1 lowerBound:(uint64_t)a2 upperBound:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CRKBoundedGrowthFunction.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"growthFunction"}];
}

- (void)initWithGrowthFunction:(uint64_t)a1 lowerBound:(uint64_t)a2 upperBound:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CRKBoundedGrowthFunction.m" lineNumber:23 description:@"Must provide a valud interval for the growth function"];
}

@end