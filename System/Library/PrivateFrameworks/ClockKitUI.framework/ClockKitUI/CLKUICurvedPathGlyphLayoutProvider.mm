@interface CLKUICurvedPathGlyphLayoutProvider
- (CGAffineTransform)makeTransform;
- (CGPoint)layoutLocation;
- (CLKUICurvedPathGlyphLayoutProvider)init;
- (void)setPath:(id)path;
- (void)setUsedWidth:(double)width;
@end

@implementation CLKUICurvedPathGlyphLayoutProvider

- (CLKUICurvedPathGlyphLayoutProvider)init
{
  v6.receiver = self;
  v6.super_class = CLKUICurvedPathGlyphLayoutProvider;
  v2 = [(CLKUICurvedPathGlyphLayoutProvider *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(CLKUIBezierPathStepper);
    v4 = *(v2 + 1);
    *(v2 + 1) = v3;

    *(v2 + 2) = 0;
    *(v2 + 5) = 0;
    *(v2 + 7) = 1;
    *(v2 + 72) = *MEMORY[0x1E695EFF8];
  }

  return v2;
}

- (void)setPath:(id)path
{
  pathCopy = path;
  p_path = &self->_path;
  if (self->_path != pathCopy)
  {
    v8 = pathCopy;
    objc_storeStrong(p_path, path);
    [(CLKUIBezierPathStepper *)self->_pathStepper setPath:v8];
    p_path = [(CLKUIBezierPathStepper *)self->_pathStepper totalLength];
    self->_pathLength = v7;
  }

  MEMORY[0x1EEE66BE0](p_path);
}

- (void)setUsedWidth:(double)width
{
  if (self->_usedWidth != width)
  {
    self->_usedWidth = width;
    textAlignment = self->_textAlignment;
    if (textAlignment > 2)
    {
      if ((textAlignment - 3) >= 2)
      {
        return;
      }
    }

    else
    {
      if (!textAlignment)
      {
        v4 = 0.0;
        goto LABEL_10;
      }

      if (textAlignment != 1)
      {
        if (textAlignment != 2)
        {
          return;
        }

        v4 = self->_pathLength - width;
        goto LABEL_10;
      }
    }

    v4 = (self->_pathLength - width) * 0.5;
LABEL_10:
    self->_startOffset = v4;
  }
}

- (CGAffineTransform)makeTransform
{
  v22[1] = *MEMORY[0x1E69E9840];
  pathStepper = self->_pathStepper;
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:self->_startOffset + self->_layoutLocation.x];
  v22[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
  v8 = [(CLKUIBezierPathStepper *)pathStepper mapOffsetsToPathPositions:v7];

  firstObject = [v8 firstObject];
  [firstObject tangent];
  v11 = v10;

  firstObject2 = [v8 firstObject];
  [firstObject2 tangent];
  v14 = v13;

  firstObject3 = [v8 firstObject];
  [firstObject3 point];
  v17 = v16 + self->_baselineOffset * v14;

  firstObject4 = [v8 firstObject];
  [firstObject4 point];
  v20 = v19 - self->_baselineOffset * v11;

  retstr->a = v11;
  retstr->b = v14;
  retstr->c = -v14;
  retstr->d = v11;
  retstr->tx = v17;
  retstr->ty = v20;

  return result;
}

- (CGPoint)layoutLocation
{
  x = self->_layoutLocation.x;
  y = self->_layoutLocation.y;
  result.y = y;
  result.x = x;
  return result;
}

@end