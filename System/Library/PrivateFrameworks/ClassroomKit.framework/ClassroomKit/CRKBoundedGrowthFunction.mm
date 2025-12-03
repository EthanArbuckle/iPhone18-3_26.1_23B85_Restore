@interface CRKBoundedGrowthFunction
- (CRKBoundedGrowthFunction)initWithGrowthFunction:(id)function lowerBound:(double)bound upperBound:(double)upperBound;
- (double)evaluateWithValue:(double)value;
@end

@implementation CRKBoundedGrowthFunction

- (CRKBoundedGrowthFunction)initWithGrowthFunction:(id)function lowerBound:(double)bound upperBound:(double)upperBound
{
  functionCopy = function;
  if (!functionCopy)
  {
    [CRKBoundedGrowthFunction initWithGrowthFunction:a2 lowerBound:self upperBound:?];
  }

  if (bound > upperBound)
  {
    [CRKBoundedGrowthFunction initWithGrowthFunction:a2 lowerBound:self upperBound:?];
  }

  v14.receiver = self;
  v14.super_class = CRKBoundedGrowthFunction;
  v11 = [(CRKBoundedGrowthFunction *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_growthFunction, function);
    v12->_lowerBound = bound;
    v12->_upperBound = upperBound;
  }

  return v12;
}

- (double)evaluateWithValue:(double)value
{
  growthFunction = [(CRKBoundedGrowthFunction *)self growthFunction];
  [growthFunction evaluateWithValue:value];
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