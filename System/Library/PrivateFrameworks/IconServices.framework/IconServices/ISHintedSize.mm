@interface ISHintedSize
- (CGSize)hintedSizeForSize:(CGSize)size;
- (CGSize)hintedSizeForSize:(CGSize)size options:(unint64_t)options;
- (void)addHintedSize:(CGSize)size forSize:(CGSize)forSize;
@end

@implementation ISHintedSize

- (void)addHintedSize:(CGSize)size forSize:(CGSize)forSize
{
  height = forSize.height;
  width = forSize.width;
  v7 = [MEMORY[0x1E696B098] valueWithSize:{size.width, size.height}];
  v8.receiver = self;
  v8.super_class = ISHintedSize;
  [(ISHintedValue *)&v8 addHintedValue:v7 forSize:width, height];
}

- (CGSize)hintedSizeForSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  options = [(ISHintedValue *)self options];

  [(ISHintedSize *)self hintedSizeForSize:options options:width, height];
  result.height = v8;
  result.width = v7;
  return result;
}

- (CGSize)hintedSizeForSize:(CGSize)size options:(unint64_t)options
{
  optionsCopy = options;
  height = size.height;
  width = size.width;
  v8 = [(ISHintedValue *)self indexForSize:?];
  v9 = [(ISHintedValue *)self hintedValueForIndex:v8];
  [v9 sizeValue];
  v11 = v10;
  v13 = v12;
  if (optionsCopy)
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
  if ((optionsCopy & 2) != 0)
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