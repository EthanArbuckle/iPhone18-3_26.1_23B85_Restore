@interface _FCUIAddActivityControl
- (BOOL)adjustForContentSizeCategoryChange;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (CGSize)sizeThatFits:(CGSize)fits;
- (_FCUIAddActivityControl)initWithAction:(id)action;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
- (id)visualStylingProviderForCategory:(int64_t)category;
- (void)_configureBackgroundMaterialViewIfNecesssary;
- (void)_configureGlyphImageViewIfNecessary;
- (void)layoutSubviews;
@end

@implementation _FCUIAddActivityControl

- (_FCUIAddActivityControl)initWithAction:(id)action
{
  actionCopy = action;
  v11.receiver = self;
  v11.super_class = _FCUIAddActivityControl;
  v5 = [(_FCUIAddActivityControl *)&v11 init];
  v6 = v5;
  if (v5)
  {
    [(_FCUIAddActivityControl *)v5 addAction:actionCopy forControlEvents:64];
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if (userInterfaceIdiom == 1)
    {
      v9 = [objc_alloc(MEMORY[0x277D75870]) initWithDelegate:v6];
      [(_FCUIAddActivityControl *)v6 addInteraction:v9];
    }
  }

  return v6;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
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
  _background = [(_FCUIAddActivityControl *)self _background];

  backgroundMaterialView = self;
  if (!_background)
  {
    backgroundMaterialView = self->_backgroundMaterialView;
  }

  [(_FCUIAddActivityControl *)self bounds];
  [backgroundMaterialView _setCornerRadius:CGRectGetHeight(v6) * 0.5];
  [(_FCUIAddActivityControl *)self _configureGlyphImageViewIfNecessary];
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  view = [beginCopy view];
  v6 = view == self || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || [beginCopy numberOfTouchesRequired] != 1 || objc_msgSend(beginCopy, "numberOfTapsRequired") != 1;

  return v6;
}

- (id)visualStylingProviderForCategory:(int64_t)category
{
  [(_FCUIAddActivityControl *)self _configureBackgroundMaterialViewIfNecesssary];
  backgroundMaterialView = self->_backgroundMaterialView;

  return [(MTMaterialView *)backgroundMaterialView visualStylingProviderForCategory:category];
}

- (BOOL)adjustForContentSizeCategoryChange
{
  adjustsFontForContentSizeCategory = [(_FCUIAddActivityControl *)self adjustsFontForContentSizeCategory];
  if (adjustsFontForContentSizeCategory)
  {
    [(_FCUIAddActivityControl *)self setNeedsLayout];
  }

  return adjustsFontForContentSizeCategory;
}

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
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