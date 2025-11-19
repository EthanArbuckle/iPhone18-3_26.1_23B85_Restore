@interface _FCUIAddActivityControl
- (BOOL)adjustForContentSizeCategoryChange;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (_FCUIAddActivityControl)initWithAction:(id)a3;
- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4;
- (id)visualStylingProviderForCategory:(int64_t)a3;
- (void)_configureBackgroundMaterialViewIfNecesssary;
- (void)_configureGlyphImageViewIfNecessary;
- (void)layoutSubviews;
@end

@implementation _FCUIAddActivityControl

- (_FCUIAddActivityControl)initWithAction:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = _FCUIAddActivityControl;
  v5 = [(_FCUIAddActivityControl *)&v11 init];
  v6 = v5;
  if (v5)
  {
    [(_FCUIAddActivityControl *)v5 addAction:v4 forControlEvents:64];
    v7 = [MEMORY[0x277D75418] currentDevice];
    v8 = [v7 userInterfaceIdiom];

    if (v8 == 1)
    {
      v9 = [objc_alloc(MEMORY[0x277D75870]) initWithDelegate:v6];
      [(_FCUIAddActivityControl *)v6 addInteraction:v9];
    }
  }

  return v6;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(_FCUIAddActivityControl *)self _configureGlyphImageViewIfNecessary];
  [(UIImageView *)self->_glyphImageView sizeThatFits:width, height];
  UIRoundToScale();
  v7 = v6;
  result.height = v7;
  result.width = v6;
  return result;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = _FCUIAddActivityControl;
  [(_FCUIAddActivityControl *)&v5 layoutSubviews];
  [(_FCUIAddActivityControl *)self _configureBackgroundMaterialViewIfNecesssary];
  v3 = [(_FCUIAddActivityControl *)self _background];

  backgroundMaterialView = self;
  if (!v3)
  {
    backgroundMaterialView = self->_backgroundMaterialView;
  }

  [(_FCUIAddActivityControl *)self bounds];
  [backgroundMaterialView _setCornerRadius:CGRectGetHeight(v6) * 0.5];
  [(_FCUIAddActivityControl *)self _configureGlyphImageViewIfNecessary];
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = [v4 view];
  v6 = v5 == self || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || [v4 numberOfTouchesRequired] != 1 || objc_msgSend(v4, "numberOfTapsRequired") != 1;

  return v6;
}

- (id)visualStylingProviderForCategory:(int64_t)a3
{
  [(_FCUIAddActivityControl *)self _configureBackgroundMaterialViewIfNecesssary];
  backgroundMaterialView = self->_backgroundMaterialView;

  return [(MTMaterialView *)backgroundMaterialView visualStylingProviderForCategory:a3];
}

- (BOOL)adjustForContentSizeCategoryChange
{
  v3 = [(_FCUIAddActivityControl *)self adjustsFontForContentSizeCategory];
  if (v3)
  {
    [(_FCUIAddActivityControl *)self setNeedsLayout];
  }

  return v3;
}

- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4
{
  v5 = objc_alloc_init(MEMORY[0x277D758D8]);
  v6 = MEMORY[0x277D75208];
  [(_FCUIAddActivityControl *)self bounds];
  v7 = [v6 bezierPathWithOvalInRect:?];
  [v5 setVisiblePath:v7];

  v8 = [objc_alloc(MEMORY[0x277D75B90]) initWithView:self parameters:v5];
  v9 = MEMORY[0x277D75890];
  v10 = [MEMORY[0x277D75878] effectWithPreview:v8];
  v11 = [v9 styleWithEffect:v10 shape:0];

  return v11;
}

- (void)_configureBackgroundMaterialViewIfNecesssary
{
  if (!self->_backgroundMaterialView)
  {
    v3 = [MEMORY[0x277D26718] materialViewWithRecipe:4];
    backgroundMaterialView = self->_backgroundMaterialView;
    self->_backgroundMaterialView = v3;

    v5 = self->_backgroundMaterialView;
    [(_FCUIAddActivityControl *)self bounds];
    [(MTMaterialView *)v5 setFrame:?];
    [(_FCUIAddActivityControl *)self insertSubview:self->_backgroundMaterialView atIndex:0];
    [(MTMaterialView *)self->_backgroundMaterialView setAutoresizingMask:18];
    if (_UISolariumEnabled())
    {
      [(MTMaterialView *)self->_backgroundMaterialView setHidden:1];
      v6 = [objc_alloc(MEMORY[0x277D763B0]) initWithVariant:8];
      [(_FCUIAddActivityControl *)self _setBackground:v6];
    }
  }
}

- (void)_configureGlyphImageViewIfNecessary
{
  if (!self->_glyphImageView)
  {
    v3 = objc_alloc(MEMORY[0x277D755E8]);
    v4 = MEMORY[0x277D755B8];
    v5 = [MEMORY[0x277D755D0] configurationWithTextStyle:*MEMORY[0x277D76918]];
    v6 = [v4 systemImageNamed:@"plus" withConfiguration:v5];
    v7 = [v3 initWithImage:v6];
    glyphImageView = self->_glyphImageView;
    self->_glyphImageView = v7;

    [(UIImageView *)self->_glyphImageView setContentMode:4];
    v9 = self->_glyphImageView;
    [(_FCUIAddActivityControl *)self bounds];
    [(UIImageView *)v9 setFrame:?];
    [(_FCUIAddActivityControl *)self addSubview:self->_glyphImageView];
    [(UIImageView *)self->_glyphImageView setAutoresizingMask:18];
    v10 = [(_FCUIAddActivityControl *)self visualStylingProviderForCategory:1];
    [v10 automaticallyUpdateView:self->_glyphImageView withStyle:0];
  }
}

@end