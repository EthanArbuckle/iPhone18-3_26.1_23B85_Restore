@interface HKGradientFillStyle
- (BOOL)_needsRenderForSize:(CGSize)size;
- (HKGradientFillStyle)initWithFirstColor:(id)color secondColor:(id)secondColor fillPercentage:(double)percentage fillDirection:(int64_t)direction gradientSize:(double)size;
- (id)copyWithZone:(_NSZone *)zone;
- (id)fillImageWithHeight:(double)height;
- (id)fillImageWithWidth:(double)width;
- (void)_renderCacheIfNecessaryForSize:(CGSize)size;
- (void)_renderInContext:(CGContext *)context size:(CGSize)size;
- (void)clearCache;
- (void)renderPath:(CGPath *)path context:(CGContext *)context axisRect:(CGRect)rect alpha:(double)alpha;
@end

@implementation HKGradientFillStyle

- (HKGradientFillStyle)initWithFirstColor:(id)color secondColor:(id)secondColor fillPercentage:(double)percentage fillDirection:(int64_t)direction gradientSize:(double)size
{
  colorCopy = color;
  secondColorCopy = secondColor;
  v22.receiver = self;
  v22.super_class = HKGradientFillStyle;
  v15 = [(HKGradientFillStyle *)&v22 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_firstColor, color);
    objc_storeStrong(&v16->_secondColor, secondColor);
    percentageCopy = 0.0;
    if (percentage >= 0.0)
    {
      percentageCopy = percentage;
    }

    v16->_fillPercentage = fmin(percentageCopy, 1.0);
    v16->_fillDirection = direction;
    v16->_gradientSize = size;
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
  gradientFillStyleLock = [(HKGradientFillStyle *)self gradientFillStyleLock];
  [gradientFillStyleLock lock];

  cachedImageStorage = self->_cachedImageStorage;
  self->_cachedImageStorage = 0;

  gradientFillStyleLock2 = [(HKGradientFillStyle *)self gradientFillStyleLock];
  [gradientFillStyleLock2 unlock];
}

- (id)fillImageWithHeight:(double)height
{
  gradientFillStyleLock = [(HKGradientFillStyle *)self gradientFillStyleLock];
  [gradientFillStyleLock lock];

  [(HKGradientFillStyle *)self _renderCacheIfNecessaryForHeight:height];
  v6 = self->_cachedImageStorage;
  gradientFillStyleLock2 = [(HKGradientFillStyle *)self gradientFillStyleLock];
  [gradientFillStyleLock2 unlock];

  return v6;
}

- (id)fillImageWithWidth:(double)width
{
  gradientFillStyleLock = [(HKGradientFillStyle *)self gradientFillStyleLock];
  [gradientFillStyleLock lock];

  [(HKGradientFillStyle *)self _renderCacheIfNecessaryForWidth:width];
  v6 = self->_cachedImageStorage;
  gradientFillStyleLock2 = [(HKGradientFillStyle *)self gradientFillStyleLock];
  [gradientFillStyleLock2 unlock];

  return v6;
}

- (void)renderPath:(CGPath *)path context:(CGContext *)context axisRect:(CGRect)rect alpha:(double)alpha
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  CGContextSaveGState(context);
  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  v14 = [(HKGradientFillStyle *)self fillImageWithHeight:CGRectGetHeight(v16)];
  CGContextAddPath(context, path);
  CGContextClip(context);
  [v14 drawInRect:0 blendMode:x alpha:{y, width, height, alpha}];
  CGContextRestoreGState(context);
}

- (void)_renderCacheIfNecessaryForSize:(CGSize)size
{
  height = size.height;
  width = size.width;
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

- (BOOL)_needsRenderForSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  cachedImageStorage = self->_cachedImageStorage;
  [(UIImage *)cachedImageStorage size];
  v7 = width != v6;
  if (height != v8)
  {
    v7 = 1;
  }

  return !cachedImageStorage || v7;
}

- (void)_renderInContext:(CGContext *)context size:(CGSize)size
{
  height = size.height;
  width = size.width;
  locations[2] = *MEMORY[0x1E69E9840];
  CGContextSaveGState(context);
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

  CGContextSaveGState(context);
  v29.origin.x = 0.0;
  v29.origin.y = 0.0;
  v29.size.width = width;
  v29.size.height = height;
  CGContextAddRect(context, v29);
  CGContextClip(context);
  v27.x = v14;
  v27.y = v13;
  v28.x = v17;
  v28.y = v16;
  CGContextDrawLinearGradient(context, v11, v27, v28, 0);
  if (gradientSize > 0.00000011920929)
  {
    CGContextSetFillColorWithColor(context, [(UIColor *)self->_secondColor CGColor]);
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
      CGContextFillRect(context, *&v21);
    }
  }

LABEL_32:
  CGContextRestoreGState(context);
  CGGradientRelease(v11);
  CGColorSpaceRelease(DeviceRGB);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = HKGradientFillStyle;
  v4 = [(HKFillStyle *)&v6 copyWithZone:zone];
  objc_storeStrong(v4 + 1, self->_firstColor);
  objc_storeStrong(v4 + 2, self->_secondColor);
  v4[3] = *&self->_fillPercentage;
  v4[4] = self->_fillDirection;
  v4[5] = *&self->_gradientSize;
  objc_storeStrong(v4 + 7, self->_cachedImageStorage);
  return v4;
}

@end