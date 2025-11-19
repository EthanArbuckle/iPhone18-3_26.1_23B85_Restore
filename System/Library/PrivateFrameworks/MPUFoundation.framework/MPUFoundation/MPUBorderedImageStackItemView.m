@interface MPUBorderedImageStackItemView
- (MPUBorderedImageStackItemView)initWithFrame:(CGRect)a3;
- (void)_updateBorderImageView;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setBorderConfiguration:(id)a3;
- (void)setBorderDrawingCache:(id)a3;
@end

@implementation MPUBorderedImageStackItemView

- (MPUBorderedImageStackItemView)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = MPUBorderedImageStackItemView;
  v3 = [(MPUImageStackItemView *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 removeObserver:self name:@"MPUBorderDrawingCacheDidInvalidateNotification" object:self->_borderDrawingCache];
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

- (void)setBorderConfiguration:(id)a3
{
  v4 = a3;
  borderConfiguration = self->_borderConfiguration;
  if (borderConfiguration != v4)
  {
    v8 = v4;
    borderConfiguration = [borderConfiguration isEqual:v4];
    v4 = v8;
    if ((borderConfiguration & 1) == 0)
    {
      v6 = [v8 copy];
      v7 = self->_borderConfiguration;
      self->_borderConfiguration = v6;

      borderConfiguration = [(MPUBorderedImageStackItemView *)self _updateBorderImageView];
      v4 = v8;
    }
  }

  MEMORY[0x2821F96F8](borderConfiguration, v4);
}

- (void)setBorderDrawingCache:(id)a3
{
  v5 = a3;
  if (self->_borderDrawingCache != v5)
  {
    v8 = v5;
    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    v7 = v6;
    if (self->_borderDrawingCache)
    {
      [v6 removeObserver:self name:@"MPUBorderDrawingCacheDidInvalidateNotification" object:?];
    }

    objc_storeStrong(&self->_borderDrawingCache, a3);
    if (self->_borderDrawingCache)
    {
      [v7 addObserver:self selector:sel__borderDrawingCacheWasInvalidated_ name:@"MPUBorderDrawingCacheDidInvalidateNotification" object:?];
    }

    [(MPUBorderedImageStackItemView *)self _updateBorderImageView];

    v5 = v8;
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

  v3 = [(UIImageView *)self->_borderImageView image];

  v4 = v5;
  if (v3 != v5)
  {
    [(UIImageView *)self->_borderImageView setImage:v5];
    v4 = v5;
  }
}

@end