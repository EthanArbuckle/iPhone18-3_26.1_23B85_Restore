@interface ISHintedSize
- (CGSize)hintedSizeForSize:(CGSize)a3;
- (CGSize)hintedSizeForSize:(CGSize)a3 options:(unint64_t)a4;
- (void)addHintedSize:(CGSize)a3 forSize:(CGSize)a4;
@end

@implementation ISHintedSize

- (void)addHintedSize:(CGSize)a3 forSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = [MEMORY[0x1E696B098] valueWithSize:{a3.width, a3.height}];
  v8.receiver = self;
  v8.super_class = ISHintedSize;
  [(ISHintedValue *)&v8 addHintedValue:v7 forSize:width, height];
}

- (CGSize)hintedSizeForSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(ISHintedValue *)self options];

  [(ISHintedSize *)self hintedSizeForSize:v6 options:width, height];
  result.height = v8;
  result.width = v7;
  return result;
}

- (CGSize)hintedSizeForSize:(CGSize)a3 options:(unint64_t)a4
{
  v4 = a4;
  height = a3.height;
  width = a3.width;
  v8 = [(ISHintedValue *)self indexForSize:?];
  v9 = [(ISHintedValue *)self hintedValueForIndex:v8];
  [v9 sizeValue];
  v11 = v10;
  v13 = v12;
  if (v4)
  {
    v14 = v8 < 1;
    v15 = v8 - 1;
    if (!v14)
    {
      [(ISHintedValue *)self interpolationFactorForSize:width, height];
      v17 = v16;
      v18 = [(ISHintedValue *)self hintedValueForIndex:v15];
      [v18 sizeValue];
      v11 = v19 + (v11 - v19) * v17;
      v13 = v20 + (v13 - v20) * v17;
    }
  }

  v21 = round(v11);
  v22 = round(v13);
  if ((v4 & 2) != 0)
  {
    v13 = v22;
    v11 = v21;
  }

  v23 = v11;
  v24 = v13;
  result.height = v24;
  result.width = v23;
  return result;
}

@end