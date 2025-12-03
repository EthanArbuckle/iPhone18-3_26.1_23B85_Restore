@interface ISHintedFloat
- (double)hintedFloatForSize:(CGSize)size;
- (double)hintedFloatForSize:(CGSize)size options:(unint64_t)options;
- (void)addHintedFloat:(double)float forSize:(CGSize)size;
@end

@implementation ISHintedFloat

- (void)addHintedFloat:(double)float forSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:float];
  v8.receiver = self;
  v8.super_class = ISHintedFloat;
  [(ISHintedValue *)&v8 addHintedValue:v7 forSize:width, height];
}

- (double)hintedFloatForSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  options = [(ISHintedValue *)self options];

  [(ISHintedFloat *)self hintedFloatForSize:options options:width, height];
  return result;
}

- (double)hintedFloatForSize:(CGSize)size options:(unint64_t)options
{
  optionsCopy = options;
  height = size.height;
  width = size.width;
  v8 = [(ISHintedValue *)self indexForSize:?];
  v9 = [(ISHintedValue *)self hintedValueForIndex:v8];
  [v9 doubleValue];
  v11 = v10;
  if (optionsCopy)
  {
    if ([(ISHintedValue *)self sizeOutsideHintedRange:width, height])
    {
      [(ISHintedValue *)self scaleFactorForSize:width, height];
      v11 = v11 * v12;
    }

    else
    {
      [(ISHintedValue *)self interpolationFactorForSize:width, height];
      v14 = v13;
      v15 = [(ISHintedValue *)self hintedValueForIndex:v8 - 1];
      [v15 doubleValue];
      v11 = v16 + (v11 - v16) * v14;
    }
  }

  v17 = round(v11);
  if ((optionsCopy & 2) != 0)
  {
    v11 = v17;
  }

  return v11;
}

@end