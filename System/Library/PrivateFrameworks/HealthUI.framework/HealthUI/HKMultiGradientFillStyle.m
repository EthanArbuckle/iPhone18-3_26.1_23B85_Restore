@interface HKMultiGradientFillStyle
- (BOOL)_needsRenderForSize:(CGSize)a3;
- (HKMultiGradientFillStyle)initWithColors:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)fillImageWithHeight:(double)a3;
- (id)fillImageWithWidth:(double)a3;
- (void)_renderCacheIfNecessaryForSize:(CGSize)a3;
- (void)_renderInContext:(CGContext *)a3 size:(CGSize)a4;
- (void)clearCache;
- (void)renderPath:(CGPath *)a3 context:(CGContext *)a4 axisRect:(CGRect)a5 alpha:(double)a6;
@end

@implementation HKMultiGradientFillStyle

- (HKMultiGradientFillStyle)initWithColors:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = HKMultiGradientFillStyle;
  v6 = [(HKMultiGradientFillStyle *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_colors, a3);
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
  v3 = [(HKMultiGradientFillStyle *)self multiGradientFillStyleLock];
  [v3 lock];

  cachedImageStorage = self->_cachedImageStorage;
  self->_cachedImageStorage = 0;

  v5 = [(HKMultiGradientFillStyle *)self multiGradientFillStyleLock];
  [v5 unlock];
}

- (id)fillImageWithHeight:(double)a3
{
  v5 = [(HKMultiGradientFillStyle *)self multiGradientFillStyleLock];
  [v5 lock];

  [(HKMultiGradientFillStyle *)self _renderCacheIfNecessaryForHeight:a3];
  v6 = self->_cachedImageStorage;
  v7 = [(HKMultiGradientFillStyle *)self multiGradientFillStyleLock];
  [v7 unlock];

  return v6;
}

- (id)fillImageWithWidth:(double)a3
{
  v5 = [(HKMultiGradientFillStyle *)self multiGradientFillStyleLock];
  [v5 lock];

  [(HKMultiGradientFillStyle *)self _renderCacheIfNecessaryForWidth:a3];
  v6 = self->_cachedImageStorage;
  v7 = [(HKMultiGradientFillStyle *)self multiGradientFillStyleLock];
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
  v14 = [(HKMultiGradientFillStyle *)self fillImageWithHeight:CGRectGetHeight(v16)];
  CGContextAddPath(a4, a3);
  CGContextClip(a4);
  [v14 drawInRect:0 blendMode:x alpha:{y, width, height, a6}];
  CGContextRestoreGState(a4);
}

- (void)_renderCacheIfNecessaryForSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
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
  CGContextSaveGState(a3);
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v9 = [(HKMultiGradientFillStyle *)self colors];
  v10 = malloc_type_malloc(8 * [v9 count], 0x100004000313F17uLL);

  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v12 = [(HKMultiGradientFillStyle *)self colors];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __50__HKMultiGradientFillStyle__renderInContext_size___block_invoke;
  v16[3] = &__block_descriptor_48_e41_v32__0__HKMultiGradientFillColor_8Q16_B24l;
  v16[4] = Mutable;
  v16[5] = v10;
  [v12 enumerateObjectsUsingBlock:v16];

  v13 = CGGradientCreateWithColors(DeviceRGB, Mutable, v10);
  v14 = *MEMORY[0x1E695EFF8];
  v15 = *(MEMORY[0x1E695EFF8] + 8);
  CGContextSaveGState(a3);
  v19.origin.x = 0.0;
  v19.origin.y = 0.0;
  v19.size.width = width;
  v19.size.height = height;
  CGContextAddRect(a3, v19);
  CGContextClip(a3);
  v18.x = 0.0;
  v17.x = v14;
  v17.y = v15;
  v18.y = height;
  CGContextDrawLinearGradient(a3, v13, v17, v18, 0);
  CGContextRestoreGState(a3);
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

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = HKMultiGradientFillStyle;
  v4 = [(HKFillStyle *)&v6 copyWithZone:a3];
  objc_storeStrong(v4 + 1, self->_colors);
  objc_storeStrong(v4 + 3, self->_cachedImageStorage);
  return v4;
}

@end