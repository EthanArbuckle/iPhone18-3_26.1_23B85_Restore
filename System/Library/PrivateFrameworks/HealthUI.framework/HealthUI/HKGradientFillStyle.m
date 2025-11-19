@interface HKGradientFillStyle
- (BOOL)_needsRenderForSize:(CGSize)a3;
- (HKGradientFillStyle)initWithFirstColor:(id)a3 secondColor:(id)a4 fillPercentage:(double)a5 fillDirection:(int64_t)a6 gradientSize:(double)a7;
- (id)copyWithZone:(_NSZone *)a3;
- (id)fillImageWithHeight:(double)a3;
- (id)fillImageWithWidth:(double)a3;
- (void)_renderCacheIfNecessaryForSize:(CGSize)a3;
- (void)_renderInContext:(CGContext *)a3 size:(CGSize)a4;
- (void)clearCache;
- (void)renderPath:(CGPath *)a3 context:(CGContext *)a4 axisRect:(CGRect)a5 alpha:(double)a6;
@end

@implementation HKGradientFillStyle

- (HKGradientFillStyle)initWithFirstColor:(id)a3 secondColor:(id)a4 fillPercentage:(double)a5 fillDirection:(int64_t)a6 gradientSize:(double)a7
{
  v13 = a3;
  v14 = a4;
  v22.receiver = self;
  v22.super_class = HKGradientFillStyle;
  v15 = [(HKGradientFillStyle *)&v22 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_firstColor, a3);
    objc_storeStrong(&v16->_secondColor, a4);
    v17 = 0.0;
    if (a5 >= 0.0)
    {
      v17 = a5;
    }

    v16->_fillPercentage = fmin(v17, 1.0);
    v16->_fillDirection = a6;
    v16->_gradientSize = a7;
    v18 = objc_alloc_init(MEMORY[0x1E696AD10]);
    gradientFillStyleLock = v16->_gradientFillStyleLock;
    v16->_gradientFillStyleLock = v18;

    [(NSLock *)v16->_gradientFillStyleLock setName:@"HKGradientFillStyleLock"];
    cachedImageStorage = v16->_cachedImageStorage;
    v16->_cachedImageStorage = 0;
  }

  return v16;
}

- (void)clearCache
{
  v6.receiver = self;
  v6.super_class = HKGradientFillStyle;
  [(HKFillStyle *)&v6 clearCache];
  v3 = [(HKGradientFillStyle *)self gradientFillStyleLock];
  [v3 lock];

  cachedImageStorage = self->_cachedImageStorage;
  self->_cachedImageStorage = 0;

  v5 = [(HKGradientFillStyle *)self gradientFillStyleLock];
  [v5 unlock];
}

- (id)fillImageWithHeight:(double)a3
{
  v5 = [(HKGradientFillStyle *)self gradientFillStyleLock];
  [v5 lock];

  [(HKGradientFillStyle *)self _renderCacheIfNecessaryForHeight:a3];
  v6 = self->_cachedImageStorage;
  v7 = [(HKGradientFillStyle *)self gradientFillStyleLock];
  [v7 unlock];

  return v6;
}

- (id)fillImageWithWidth:(double)a3
{
  v5 = [(HKGradientFillStyle *)self gradientFillStyleLock];
  [v5 lock];

  [(HKGradientFillStyle *)self _renderCacheIfNecessaryForWidth:a3];
  v6 = self->_cachedImageStorage;
  v7 = [(HKGradientFillStyle *)self gradientFillStyleLock];
  [v7 unlock];

  return v6;
}

- (void)renderPath:(CGPath *)a3 context:(CGContext *)a4 axisRect:(CGRect)a5 alpha:(double)a6
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  CGContextSaveGState(a4);
  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  v14 = [(HKGradientFillStyle *)self fillImageWithHeight:CGRectGetHeight(v16)];
  CGContextAddPath(a4, a3);
  CGContextClip(a4);
  [v14 drawInRect:0 blendMode:x alpha:{y, width, height, a6}];
  CGContextRestoreGState(a4);
}

- (void)_renderCacheIfNecessaryForSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  if ([(HKGradientFillStyle *)self _needsRenderForSize:?])
  {
    v6 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:{width, height}];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __54__HKGradientFillStyle__renderCacheIfNecessaryForSize___block_invoke;
    v9[3] = &unk_1E81B8870;
    v9[4] = self;
    *&v9[5] = width;
    *&v9[6] = height;
    v7 = [v6 imageWithActions:v9];
    cachedImageStorage = self->_cachedImageStorage;
    self->_cachedImageStorage = v7;
  }
}

uint64_t __54__HKGradientFillStyle__renderCacheIfNecessaryForSize___block_invoke(double *a1, void *a2)
{
  v3 = *(a1 + 4);
  v4 = [a2 CGContext];
  v5 = a1[5];
  v6 = a1[6];

  return [v3 _renderInContext:v4 size:{v5, v6}];
}

- (BOOL)_needsRenderForSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  cachedImageStorage = self->_cachedImageStorage;
  [(UIImage *)cachedImageStorage size];
  v7 = width != v6;
  if (height != v8)
  {
    v7 = 1;
  }

  return !cachedImageStorage || v7;
}

- (void)_renderInContext:(CGContext *)a3 size:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  locations[2] = *MEMORY[0x1E69E9840];
  CGContextSaveGState(a3);
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  fillPercentage = self->_fillPercentage;
  locations[0] = 0.0;
  locations[1] = fillPercentage;
  v25[0] = [(UIColor *)self->_firstColor CGColor];
  v25[1] = [(UIColor *)self->_secondColor CGColor];
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
  v11 = CGGradientCreateWithColors(DeviceRGB, v10, locations);
  gradientSize = self->_gradientSize;
  v14 = *MEMORY[0x1E695EFF8];
  v13 = *(MEMORY[0x1E695EFF8] + 8);
  fillDirection = self->_fillDirection;
  if (fillDirection > 1)
  {
    if (fillDirection == 2)
    {
      if (gradientSize <= 0.00000011920929)
      {
        v17 = width;
      }

      else
      {
        v17 = self->_gradientSize;
      }

      v16 = 0.0;
    }

    else
    {
      v16 = *(MEMORY[0x1E695EFF8] + 8);
      v17 = *MEMORY[0x1E695EFF8];
      if (fillDirection == 3)
      {
        if (gradientSize <= 0.00000011920929)
        {
          v19 = width;
        }

        else
        {
          v19 = self->_gradientSize;
        }

        v17 = width - v19;
        v16 = 0.0;
        v13 = 0.0;
        v14 = width;
      }
    }
  }

  else if (fillDirection)
  {
    v16 = *(MEMORY[0x1E695EFF8] + 8);
    v17 = *MEMORY[0x1E695EFF8];
    if (fillDirection == 1)
    {
      if (gradientSize <= 0.00000011920929)
      {
        v18 = height;
      }

      else
      {
        v18 = self->_gradientSize;
      }

      v16 = height - v18;
      v17 = 0.0;
      v13 = height;
      v14 = 0.0;
    }
  }

  else
  {
    if (gradientSize <= 0.00000011920929)
    {
      v16 = height;
    }

    else
    {
      v16 = self->_gradientSize;
    }

    v17 = 0.0;
  }

  CGContextSaveGState(a3);
  v29.origin.x = 0.0;
  v29.origin.y = 0.0;
  v29.size.width = width;
  v29.size.height = height;
  CGContextAddRect(a3, v29);
  CGContextClip(a3);
  v27.x = v14;
  v27.y = v13;
  v28.x = v17;
  v28.y = v16;
  CGContextDrawLinearGradient(a3, v11, v27, v28, 0);
  if (gradientSize > 0.00000011920929)
  {
    CGContextSetFillColorWithColor(a3, [(UIColor *)self->_secondColor CGColor]);
    v20 = self->_fillDirection;
    if (v20 <= 1)
    {
      if (v20)
      {
        if (v20 != 1)
        {
          goto LABEL_32;
        }

        goto LABEL_30;
      }

      goto LABEL_29;
    }

    if (v20 == 3)
    {
LABEL_30:
      v17 = v14 - v17;
      v16 = v13 - v16;
      v21 = 0.0;
      v22 = 0.0;
      goto LABEL_31;
    }

    if (v20 == 2)
    {
LABEL_29:
      v21 = v17;
      v22 = v16;
LABEL_31:
      v23 = height - v16;
      v24 = width - v17;
      CGContextFillRect(a3, *&v21);
    }
  }

LABEL_32:
  CGContextRestoreGState(a3);
  CGGradientRelease(v11);
  CGColorSpaceRelease(DeviceRGB);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = HKGradientFillStyle;
  v4 = [(HKFillStyle *)&v6 copyWithZone:a3];
  objc_storeStrong(v4 + 1, self->_firstColor);
  objc_storeStrong(v4 + 2, self->_secondColor);
  v4[3] = *&self->_fillPercentage;
  v4[4] = self->_fillDirection;
  v4[5] = *&self->_gradientSize;
  objc_storeStrong(v4 + 7, self->_cachedImageStorage);
  return v4;
}

@end