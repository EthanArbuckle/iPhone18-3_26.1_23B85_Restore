@interface HKMultiGradientFillStyle
- (BOOL)_needsRenderForSize:(CGSize)size;
- (HKMultiGradientFillStyle)initWithColors:(id)colors;
- (id)copyWithZone:(_NSZone *)zone;
- (id)fillImageWithHeight:(double)height;
- (id)fillImageWithWidth:(double)width;
- (void)_renderCacheIfNecessaryForSize:(CGSize)size;
- (void)_renderInContext:(CGContext *)context size:(CGSize)size;
- (void)clearCache;
- (void)renderPath:(CGPath *)path context:(CGContext *)context axisRect:(CGRect)rect alpha:(double)alpha;
@end

@implementation HKMultiGradientFillStyle

- (HKMultiGradientFillStyle)initWithColors:(id)colors
{
  colorsCopy = colors;
  v12.receiver = self;
  v12.super_class = HKMultiGradientFillStyle;
  v6 = [(HKMultiGradientFillStyle *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_colors, colors);
    v8 = objc_alloc_init(MEMORY[0x1E696AD10]);
    multiGradientFillStyleLock = v7->_multiGradientFillStyleLock;
    v7->_multiGradientFillStyleLock = v8;

    [(NSLock *)v7->_multiGradientFillStyleLock setName:@"HKMultiGradientFillStyleLock"];
    cachedImageStorage = v7->_cachedImageStorage;
    v7->_cachedImageStorage = 0;
  }

  return v7;
}

- (void)clearCache
{
  v6.receiver = self;
  v6.super_class = HKMultiGradientFillStyle;
  [(HKFillStyle *)&v6 clearCache];
  multiGradientFillStyleLock = [(HKMultiGradientFillStyle *)self multiGradientFillStyleLock];
  [multiGradientFillStyleLock lock];

  cachedImageStorage = self->_cachedImageStorage;
  self->_cachedImageStorage = 0;

  multiGradientFillStyleLock2 = [(HKMultiGradientFillStyle *)self multiGradientFillStyleLock];
  [multiGradientFillStyleLock2 unlock];
}

- (id)fillImageWithHeight:(double)height
{
  multiGradientFillStyleLock = [(HKMultiGradientFillStyle *)self multiGradientFillStyleLock];
  [multiGradientFillStyleLock lock];

  [(HKMultiGradientFillStyle *)self _renderCacheIfNecessaryForHeight:height];
  v6 = self->_cachedImageStorage;
  multiGradientFillStyleLock2 = [(HKMultiGradientFillStyle *)self multiGradientFillStyleLock];
  [multiGradientFillStyleLock2 unlock];

  return v6;
}

- (id)fillImageWithWidth:(double)width
{
  multiGradientFillStyleLock = [(HKMultiGradientFillStyle *)self multiGradientFillStyleLock];
  [multiGradientFillStyleLock lock];

  [(HKMultiGradientFillStyle *)self _renderCacheIfNecessaryForWidth:width];
  v6 = self->_cachedImageStorage;
  multiGradientFillStyleLock2 = [(HKMultiGradientFillStyle *)self multiGradientFillStyleLock];
  [multiGradientFillStyleLock2 unlock];

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
  v14 = [(HKMultiGradientFillStyle *)self fillImageWithHeight:CGRectGetHeight(v16)];
  CGContextAddPath(context, path);
  CGContextClip(context);
  [v14 drawInRect:0 blendMode:x alpha:{y, width, height, alpha}];
  CGContextRestoreGState(context);
}

- (void)_renderCacheIfNecessaryForSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  if ([(HKMultiGradientFillStyle *)self _needsRenderForSize:?])
  {
    v6 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:{width, height}];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __59__HKMultiGradientFillStyle__renderCacheIfNecessaryForSize___block_invoke;
    v9[3] = &unk_1E81B8870;
    v9[4] = self;
    *&v9[5] = width;
    *&v9[6] = height;
    v7 = [v6 imageWithActions:v9];
    cachedImageStorage = self->_cachedImageStorage;
    self->_cachedImageStorage = v7;
  }
}

uint64_t __59__HKMultiGradientFillStyle__renderCacheIfNecessaryForSize___block_invoke(double *a1, void *a2)
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
  CGContextSaveGState(context);
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  colors = [(HKMultiGradientFillStyle *)self colors];
  v10 = malloc_type_malloc(8 * [colors count], 0x100004000313F17uLL);

  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  colors2 = [(HKMultiGradientFillStyle *)self colors];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __50__HKMultiGradientFillStyle__renderInContext_size___block_invoke;
  v16[3] = &__block_descriptor_48_e41_v32__0__HKMultiGradientFillColor_8Q16_B24l;
  v16[4] = Mutable;
  v16[5] = v10;
  [colors2 enumerateObjectsUsingBlock:v16];

  v13 = CGGradientCreateWithColors(DeviceRGB, Mutable, v10);
  v14 = *MEMORY[0x1E695EFF8];
  v15 = *(MEMORY[0x1E695EFF8] + 8);
  CGContextSaveGState(context);
  v19.origin.x = 0.0;
  v19.origin.y = 0.0;
  v19.size.width = width;
  v19.size.height = height;
  CGContextAddRect(context, v19);
  CGContextClip(context);
  v18.x = 0.0;
  v17.x = v14;
  v17.y = v15;
  v18.y = height;
  CGContextDrawLinearGradient(context, v13, v17, v18, 0);
  CGContextRestoreGState(context);
  CGGradientRelease(v13);
  CGColorSpaceRelease(DeviceRGB);
  free(v10);
}

void __50__HKMultiGradientFillStyle__renderInContext_size___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v6 color];
  CFArrayAppendValue(v5, [v7 CGColor]);

  v9 = [v6 location];

  [v9 floatValue];
  *(*(a1 + 40) + 8 * a3) = v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = HKMultiGradientFillStyle;
  v4 = [(HKFillStyle *)&v6 copyWithZone:zone];
  objc_storeStrong(v4 + 1, self->_colors);
  objc_storeStrong(v4 + 3, self->_cachedImageStorage);
  return v4;
}

@end