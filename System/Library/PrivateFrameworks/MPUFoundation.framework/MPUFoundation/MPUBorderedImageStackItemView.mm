@interface MPUBorderedImageStackItemView
- (MPUBorderedImageStackItemView)initWithFrame:(CGRect)frame;
- (void)_updateBorderImageView;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setBorderConfiguration:(id)configuration;
- (void)setBorderDrawingCache:(id)cache;
@end

@implementation MPUBorderedImageStackItemView

- (MPUBorderedImageStackItemView)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = MPUBorderedImageStackItemView;
  v3 = [(MPUImageStackItemView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277D755E8]);
    [(MPUBorderedImageStackItemView *)v3 bounds];
    v5 = [v4 initWithFrame:?];
    borderImageView = v3->_borderImageView;
    v3->_borderImageView = v5;

    [(MPUBorderedImageStackItemView *)v3 addSubview:v3->_borderImageView];
  }

  return v3;
}

- (void)dealloc
{
  if (self->_borderDrawingCache)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter removeObserver:self name:@"MPUBorderDrawingCacheDidInvalidateNotification" object:self->_borderDrawingCache];
  }

  v4.receiver = self;
  v4.super_class = MPUBorderedImageStackItemView;
  [(MPUBorderedImageStackItemView *)&v4 dealloc];
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = MPUBorderedImageStackItemView;
  [(MPUImageStackItemView *)&v6 layoutSubviews];
  +[MPUBorderView requiredOutsetForDropShadow];
  v4 = v3;
  borderImageView = self->_borderImageView;
  [(MPUBorderedImageStackItemView *)self bounds];
  v8 = CGRectInset(v7, -v4, -v4);
  [(UIImageView *)borderImageView setFrame:v8.origin.x, v8.origin.y, v8.size.width, v8.size.height];
}

- (void)setBorderConfiguration:(id)configuration
{
  configurationCopy = configuration;
  borderConfiguration = self->_borderConfiguration;
  if (borderConfiguration != configurationCopy)
  {
    v8 = configurationCopy;
    borderConfiguration = [borderConfiguration isEqual:configurationCopy];
    configurationCopy = v8;
    if ((borderConfiguration & 1) == 0)
    {
      v6 = [v8 copy];
      v7 = self->_borderConfiguration;
      self->_borderConfiguration = v6;

      borderConfiguration = [(MPUBorderedImageStackItemView *)self _updateBorderImageView];
      configurationCopy = v8;
    }
  }

  MEMORY[0x2821F96F8](borderConfiguration, configurationCopy);
}

- (void)setBorderDrawingCache:(id)cache
{
  cacheCopy = cache;
  if (self->_borderDrawingCache != cacheCopy)
  {
    v8 = cacheCopy;
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v7 = defaultCenter;
    if (self->_borderDrawingCache)
    {
      [defaultCenter removeObserver:self name:@"MPUBorderDrawingCacheDidInvalidateNotification" object:?];
    }

    objc_storeStrong(&self->_borderDrawingCache, cache);
    if (self->_borderDrawingCache)
    {
      [v7 addObserver:self selector:sel__borderDrawingCacheWasInvalidated_ name:@"MPUBorderDrawingCacheDidInvalidateNotification" object:?];
    }

    [(MPUBorderedImageStackItemView *)self _updateBorderImageView];

    cacheCopy = v8;
  }
}

- (void)_updateBorderImageView
{
  if (self->_borderConfiguration)
  {
    v5 = [(MPUBorderDrawingCache *)self->_borderDrawingCache imageForBorderConfiguration:?];
  }

  else
  {
    v5 = 0;
  }

  image = [(UIImageView *)self->_borderImageView image];

  v4 = v5;
  if (image != v5)
  {
    [(UIImageView *)self->_borderImageView setImage:v5];
    v4 = v5;
  }
}

@end