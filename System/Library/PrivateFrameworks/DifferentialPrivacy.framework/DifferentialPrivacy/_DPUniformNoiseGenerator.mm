@interface _DPUniformNoiseGenerator
+ (id)generatorWithValueRange:(id)a3;
- (_DPUniformNoiseGenerator)initWithValueRange:(id)a3;
- (id)description;
@end

@implementation _DPUniformNoiseGenerator

- (_DPUniformNoiseGenerator)initWithValueRange:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = _DPUniformNoiseGenerator;
  v5 = [(_DPUniformNoiseGenerator *)&v11 init];
  if (v5)
  {
    v6 = [v4 minPossible];
    [v6 doubleValue];
    v5->_minValue = v7;

    v8 = [v4 range];
    [v8 doubleValue];
    v5->_range = v9;
  }

  return v5;
}

+ (id)generatorWithValueRange:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithValueRange:v4];

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