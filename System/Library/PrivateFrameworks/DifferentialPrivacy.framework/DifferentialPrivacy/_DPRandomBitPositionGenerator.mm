@interface _DPRandomBitPositionGenerator
+ (_DPRandomBitPositionGenerator)generatorWithDimensionality:(unint64_t)dimensionality;
- (_DPRandomBitPositionGenerator)initWithDimensionality:(unint64_t)dimensionality;
- (id)description;
@end

@implementation _DPRandomBitPositionGenerator

- (_DPRandomBitPositionGenerator)initWithDimensionality:(unint64_t)dimensionality
{
  v5.receiver = self;
  v5.super_class = _DPRandomBitPositionGenerator;
  result = [(_DPRandomBitPositionGenerator *)&v5 init];
  if (result)
  {
    result->_m = dimensionality;
  }

  return result;
}

+ (_DPRandomBitPositionGenerator)generatorWithDimensionality:(unint64_t)dimensionality
{
  v3 = [[self alloc] initWithDimensionality:dimensionality];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"%@: { m=%ld }", v5, self->_m];

  return v6;
}

@end