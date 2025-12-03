@interface _DPUniformNoiseGenerator
+ (id)generatorWithValueRange:(id)range;
- (_DPUniformNoiseGenerator)initWithValueRange:(id)range;
- (id)description;
@end

@implementation _DPUniformNoiseGenerator

- (_DPUniformNoiseGenerator)initWithValueRange:(id)range
{
  rangeCopy = range;
  v11.receiver = self;
  v11.super_class = _DPUniformNoiseGenerator;
  v5 = [(_DPUniformNoiseGenerator *)&v11 init];
  if (v5)
  {
    minPossible = [rangeCopy minPossible];
    [minPossible doubleValue];
    v5->_minValue = v7;

    range = [rangeCopy range];
    [range doubleValue];
    v5->_range = v9;
  }

  return v5;
}

+ (id)generatorWithValueRange:(id)range
{
  rangeCopy = range;
  v5 = [[self alloc] initWithValueRange:rangeCopy];

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"%@: { minValue=%.16g  range=%.16g }", v5, *&self->_minValue, *&self->_range];;

  return v6;
}

@end