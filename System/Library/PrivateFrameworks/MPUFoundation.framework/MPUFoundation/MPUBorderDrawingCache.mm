@interface MPUBorderDrawingCache
- (MPUBorderDrawingCache)init;
- (id)_borderView;
- (id)imageForBorderConfiguration:(id)configuration;
- (void)_invalidate;
- (void)dealloc;
- (void)setDisplayScale:(double)scale;
@end

@implementation MPUBorderDrawingCache

- (MPUBorderDrawingCache)init
{
  v11.receiver = self;
  v11.super_class = MPUBorderDrawingCache;
  v2 = [(MPUBorderDrawingCache *)&v11 init];
  if (v2)
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    v2->_displayScale = v4;

    v5 = objc_alloc_init(MEMORY[0x277CBEA78]);
    images = v2->_images;
    v2->_images = v5;

    [(NSCache *)v2->_images setTotalCostLimit:20971520];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v8 = *MEMORY[0x277D76670];
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    [defaultCenter addObserver:v2 selector:sel__applicationDidReceiveMemoryWarning_ name:v8 object:mEMORY[0x277D75128]];
  }

  return v2;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v4 = *MEMORY[0x277D76670];
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  [defaultCenter removeObserver:self name:v4 object:mEMORY[0x277D75128]];

  v6.receiver = self;
  v6.super_class = MPUBorderDrawingCache;
  [(MPUBorderDrawingCache *)&v6 dealloc];
}

- (void)setDisplayScale:(double)scale
{
  SafeScaleForValue = MPUFloatGetSafeScaleForValue(scale);
  if (!MPUFloatEqualToFloat(self->_displayScale, SafeScaleForValue))
  {
    self->_displayScale = SafeScaleForValue;

    [(MPUBorderDrawingCache *)self _invalidate];
  }
}

- (id)imageForBorderConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = configurationCopy;
  if (!configurationCopy || ([configurationCopy isFullyTransparent] & 1) != 0)
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

    _borderView = [(MPUBorderDrawingCache *)self _borderView];
    [_borderView setBorderConfiguration:v5];
    [_borderView sizeThatFits:{1.79769313e308, 1.79769313e308}];
    v9 = v8;
    v11 = v10;
    v12 = *MEMORY[0x277CBF3A0];
    v13 = *(MEMORY[0x277CBF3A0] + 8);
    [_borderView setBounds:{*MEMORY[0x277CBF3A0], v13, v8, v10}];
    v20.width = v9;
    v20.height = v11;
    UIGraphicsBeginImageContextWithOptions(v20, 0, self->_displayScale);
    [_borderView drawRect:{v12, v13, v9, v11}];
    v14 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    [_borderView resizableImageCapInsets];
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
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"MPUBorderDrawingCacheDidInvalidateNotification" object:self];
}

@end