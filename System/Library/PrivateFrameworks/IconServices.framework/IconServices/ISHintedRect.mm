@interface ISHintedRect
- (CGRect)hintedRectForSize:(CGSize)size;
- (CGRect)hintedRectForSize:(CGSize)size options:(unint64_t)options;
- (void)addHintedRect:(CGRect)rect forSize:(CGSize)size;
@end

@implementation ISHintedRect

- (void)addHintedRect:(CGRect)rect forSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v7 = [MEMORY[0x1E696B098] valueWithRect:{rect.origin.x, rect.origin.y, rect.size.width, rect.size.height}];
  v8.receiver = self;
  v8.super_class = ISHintedRect;
  [(ISHintedValue *)&v8 addHintedValue:v7 forSize:width, height];
}

- (CGRect)hintedRectForSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  options = [(ISHintedValue *)self options];

  [(ISHintedRect *)self hintedRectForSize:options options:width, height];
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (CGRect)hintedRectForSize:(CGSize)size options:(unint64_t)options
{
  optionsCopy = options;
  height = size.height;
  width = size.width;
  v8 = [(ISHintedValue *)self indexForSize:?];
  v9 = [(ISHintedValue *)self hintedValueForIndex:v8];
  [v9 rectValue];
  x = v10;
  y = v12;
  v15 = v14;
  v17 = v16;
  if (optionsCopy)
  {
    if ([(ISHintedValue *)self sizeOutsideHintedRange:width, height])
    {
      [(ISHintedValue *)self scaleFactorForSize:width, height];
      memset(&v43, 0, sizeof(v43));
      CGAffineTransformMakeScale(&v43, v18, v18);
      v42 = v43;
      v44.origin.x = x;
      v44.origin.y = y;
      v44.size.width = v15;
      v44.size.height = v17;
      v45 = CGRectApplyAffineTransform(v44, &v42);
      x = v45.origin.x;
      y = v45.origin.y;
      v15 = v45.size.width;
      v17 = v45.size.height;
    }

    else
    {
      [(ISHintedValue *)self interpolationFactorForSize:width, height];
      v20 = v19;
      v21 = [(ISHintedValue *)self hintedValueForIndex:v8 - 1];
      [v21 rectValue];
      x = v22 + (x - v22) * v20;
      y = v23 + (y - v23) * v20;
      v15 = v24 + (v15 - v24) * v20;
      v17 = v25 + (v17 - v25) * v20;
    }
  }

  v26 = round(x);
  v27 = round(y);
  v28 = round(v15);
  v29 = round(v17);
  if ((optionsCopy & 2) == 0)
  {
    v29 = v17;
    v28 = v15;
    v27 = y;
    v26 = x;
  }

  v30 = round(x + x) * 0.5;
  v31 = round(y + y) * 0.5;
  v32 = round(v15 + v15) * 0.5;
  v33 = round(v17 + v17);
  if ((optionsCopy & 4) != 0)
  {
    v34 = v33 * 0.5;
  }

  else
  {
    v34 = v29;
  }

  if ((optionsCopy & 4) != 0)
  {
    v35 = v32;
  }

  else
  {
    v35 = v28;
  }

  if ((optionsCopy & 4) != 0)
  {
    v36 = v31;
  }

  else
  {
    v36 = v27;
  }

  if ((optionsCopy & 4) != 0)
  {
    v37 = v30;
  }

  else
  {
    v37 = v26;
  }

  v38 = v37;
  v39 = v36;
  v40 = v35;
  v41 = v34;
  result.size.height = v41;
  result.size.width = v40;
  result.origin.y = v39;
  result.origin.x = v38;
  return result;
}

@end