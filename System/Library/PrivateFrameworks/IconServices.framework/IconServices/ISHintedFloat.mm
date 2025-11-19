@interface ISHintedFloat
- (double)hintedFloatForSize:(CGSize)a3;
- (double)hintedFloatForSize:(CGSize)a3 options:(unint64_t)a4;
- (void)addHintedFloat:(double)a3 forSize:(CGSize)a4;
@end

@implementation ISHintedFloat

- (void)addHintedFloat:(double)a3 forSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  v8.receiver = self;
  v8.super_class = ISHintedFloat;
  [(ISHintedValue *)&v8 addHintedValue:v7 forSize:width, height];
}

- (double)hintedFloatForSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(ISHintedValue *)self options];

  [(ISHintedFloat *)self hintedFloatForSize:v6 options:width, height];
  return result;
}

- (double)hintedFloatForSize:(CGSize)a3 options:(unint64_t)a4
{
  v4 = a4;
  height = a3.height;
  width = a3.width;
  v8 = [(ISHintedValue *)self indexForSize:?];
  v9 = [(ISHintedValue *)self hintedValueForIndex:v8];
  [v9 doubleValue];
  v11 = v10;
  if (v4)
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
  if ((v4 & 2) != 0)
  {
    v11 = v17;
  }

  return v11;
}

@end