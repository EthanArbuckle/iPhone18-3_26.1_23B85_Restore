@interface _DPRandomBitPositionGenerator
+ (_DPRandomBitPositionGenerator)generatorWithDimensionality:(unint64_t)a3;
- (_DPRandomBitPositionGenerator)initWithDimensionality:(unint64_t)a3;
- (id)description;
@end

@implementation _DPRandomBitPositionGenerator

- (_DPRandomBitPositionGenerator)initWithDimensionality:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = _DPRandomBitPositionGenerator;
  result = [(_DPRandomBitPositionGenerator *)&v5 init];
  if (result)
  {
    result->_m = a3;
  }

  return result;
}

+ (_DPRandomBitPositionGenerator)generatorWithDimensionality:(unint64_t)a3
{
  v3 = [[a1 alloc] initWithDimensionality:a3];

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