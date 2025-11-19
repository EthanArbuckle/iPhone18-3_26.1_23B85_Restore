@interface MPUBorderDrawingCache
- (MPUBorderDrawingCache)init;
- (id)_borderView;
- (id)imageForBorderConfiguration:(id)a3;
- (void)_invalidate;
- (void)dealloc;
- (void)setDisplayScale:(double)a3;
@end

@implementation MPUBorderDrawingCache

- (MPUBorderDrawingCache)init
{
  v11.receiver = self;
  v11.super_class = MPUBorderDrawingCache;
  v2 = [(MPUBorderDrawingCache *)&v11 init];
  if (v2)
  {
    v3 = [MEMORY[0x277D759A0] mainScreen];
    [v3 scale];
    v2->_displayScale = v4;

    v5 = objc_alloc_init(MEMORY[0x277CBEA78]);
    images = v2->_images;
    v2->_images = v5;

    [(NSCache *)v2->_images setTotalCostLimit:20971520];
    v7 = [MEMORY[0x277CCAB98] defaultCenter];
    v8 = *MEMORY[0x277D76670];
    v9 = [MEMORY[0x277D75128] sharedApplication];
    [v7 addObserver:v2 selector:sel__applicationDidReceiveMemoryWarning_ name:v8 object:v9];
  }

  return v2;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  v4 = *MEMORY[0x277D76670];
  v5 = [MEMORY[0x277D75128] sharedApplication];
  [v3 removeObserver:self name:v4 object:v5];

  v6.receiver = self;
  v6.super_class = MPUBorderDrawingCache;
  [(MPUBorderDrawingCache *)&v6 dealloc];
}

- (void)setDisplayScale:(double)a3
{
  SafeScaleForValue = MPUFloatGetSafeScaleForValue(a3);
  if (!MPUFloatEqualToFloat(self->_displayScale, SafeScaleForValue))
  {
    self->_displayScale = SafeScaleForValue;

    [(MPUBorderDrawingCache *)self _invalidate];
  }
}

- (id)imageForBorderConfiguration:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4 || ([v4 isFullyTransparent] & 1) != 0)
  {
    goto LABEL_3;
  }

  v6 = [(NSCache *)self->_images objectForKey:v5];
  if (!v6)
  {
    if (!MPUFloatGreaterThanOrEqualToFloat(self->_displayScale, 0.0))
    {
LABEL_3:
      v6 = 0;
      goto LABEL_9;
    }

    v7 = [(MPUBorderDrawingCache *)self _borderView];
    [v7 setBorderConfiguration:v5];
    [v7 sizeThatFits:{1.79769313e308, 1.79769313e308}];
    v9 = v8;
    v11 = v10;
    v12 = *MEMORY[0x277CBF3A0];
    v13 = *(MEMORY[0x277CBF3A0] + 8);
    [v7 setBounds:{*MEMORY[0x277CBF3A0], v13, v8, v10}];
    v20.width = v9;
    v20.height = v11;
    UIGraphicsBeginImageContextWithOptions(v20, 0, self->_displayScale);
    [v7 drawRect:{v12, v13, v9, v11}];
    v14 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    [v7 resizableImageCapInsets];
    v6 = [v14 resizableImageWithCapInsets:?];
    if (v6)
    {
      v15 = llround(v9 * self->_displayScale * (v11 * self->_displayScale));
      images = self->_images;
      v17 = [v5 copy];
      [(NSCache *)images setObject:v6 forKey:v17 cost:v15];
    }
  }

LABEL_9:

  return v6;
}

- (id)_borderView
{
  borderView = self->_borderView;
  if (!borderView)
  {
    v4 = objc_alloc_init(MPUBorderView);
    v5 = self->_borderView;
    self->_borderView = v4;

    borderView = self->_borderView;
  }

  return borderView;
}

- (void)_invalidate
{
  [(NSCache *)self->_images removeAllObjects];
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 postNotificationName:@"MPUBorderDrawingCacheDidInvalidateNotification" object:self];
}

@end