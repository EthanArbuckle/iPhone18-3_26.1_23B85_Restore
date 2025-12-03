@interface CPUIShadowImageView
- (BOOL)_isDarkMode;
- (CPUIShadowImageView)initWithFrame:(CGRect)frame;
- (void)setContentMode:(int64_t)mode;
- (void)setImage:(id)image;
- (void)setNeedsDisplay;
- (void)setPlaceholderImage:(id)image;
- (void)setupVisibleEffects:(BOOL)effects;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation CPUIShadowImageView

- (CPUIShadowImageView)initWithFrame:(CGRect)frame
{
  v50[8] = *MEMORY[0x277D85DE8];
  v49.receiver = self;
  v49.super_class = CPUIShadowImageView;
  v3 = [(CPUIShadowImageView *)&v49 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(CPUIShadowImageView *)v3 setBackgroundColor:clearColor];

    layer = [(CPUIShadowImageView *)v3 layer];
    [layer setShadowPathIsBounds:1];

    v6 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:0];
    imageView = v3->_imageView;
    v3->_imageView = v6;

    [(UIImageView *)v3->_imageView setTranslatesAutoresizingMaskIntoConstraints:0];
    layer2 = [(UIImageView *)v3->_imageView layer];
    [layer2 setCornerRadius:6.0];

    layer3 = [(UIImageView *)v3->_imageView layer];
    [layer3 setMasksToBounds:1];

    clearColor2 = [MEMORY[0x277D75348] clearColor];
    [(UIImageView *)v3->_imageView setBackgroundColor:clearColor2];

    v11 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:0];
    placeholderView = v3->_placeholderView;
    v3->_placeholderView = v11;

    [(UIImageView *)v3->_placeholderView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v3->_placeholderView _setContinuousCornerRadius:6.0];
    [(UIImageView *)v3->_placeholderView setClipsToBounds:1];
    clearColor3 = [MEMORY[0x277D75348] clearColor];
    [(UIImageView *)v3->_placeholderView setBackgroundColor:clearColor3];

    [(CPUIShadowImageView *)v3 addSubview:v3->_placeholderView];
    [(CPUIShadowImageView *)v3 addSubview:v3->_imageView];
    v35 = MEMORY[0x277CCAAD0];
    placeholderView = [(CPUIShadowImageView *)v3 placeholderView];
    topAnchor = [placeholderView topAnchor];
    topAnchor2 = [(CPUIShadowImageView *)v3 topAnchor];
    v45 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v50[0] = v45;
    placeholderView2 = [(CPUIShadowImageView *)v3 placeholderView];
    bottomAnchor = [placeholderView2 bottomAnchor];
    bottomAnchor2 = [(CPUIShadowImageView *)v3 bottomAnchor];
    v41 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v50[1] = v41;
    placeholderView3 = [(CPUIShadowImageView *)v3 placeholderView];
    leadingAnchor = [placeholderView3 leadingAnchor];
    leadingAnchor2 = [(CPUIShadowImageView *)v3 leadingAnchor];
    v37 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v50[2] = v37;
    placeholderView4 = [(CPUIShadowImageView *)v3 placeholderView];
    trailingAnchor = [placeholderView4 trailingAnchor];
    trailingAnchor2 = [(CPUIShadowImageView *)v3 trailingAnchor];
    v32 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v50[3] = v32;
    imageView = [(CPUIShadowImageView *)v3 imageView];
    topAnchor3 = [imageView topAnchor];
    topAnchor4 = [(CPUIShadowImageView *)v3 topAnchor];
    v28 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v50[4] = v28;
    imageView2 = [(CPUIShadowImageView *)v3 imageView];
    bottomAnchor3 = [imageView2 bottomAnchor];
    bottomAnchor4 = [(CPUIShadowImageView *)v3 bottomAnchor];
    v24 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    v50[5] = v24;
    imageView3 = [(CPUIShadowImageView *)v3 imageView];
    leadingAnchor3 = [imageView3 leadingAnchor];
    leadingAnchor4 = [(CPUIShadowImageView *)v3 leadingAnchor];
    v17 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v50[6] = v17;
    imageView4 = [(CPUIShadowImageView *)v3 imageView];
    trailingAnchor3 = [imageView4 trailingAnchor];
    trailingAnchor4 = [(CPUIShadowImageView *)v3 trailingAnchor];
    v21 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v50[7] = v21;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:8];
    [v35 activateConstraints:v22];

    [(CPUIShadowImageView *)v3 setupVisibleEffects:1];
    [(CPUIShadowImageView *)v3 setImage:0];
  }

  return v3;
}

- (BOOL)_isDarkMode
{
  traitCollection = [(CPUIShadowImageView *)self traitCollection];
  v3 = [traitCollection userInterfaceStyle] == 2;

  return v3;
}

- (void)setImage:(id)image
{
  imageCopy = image;
  objc_storeStrong(&self->_image, image);
  imageView = [(CPUIShadowImageView *)self imageView];
  [imageView setImage:imageCopy];

  if (imageCopy)
  {
    v6 = 0;
  }

  else
  {
    _isDarkMode = [(CPUIShadowImageView *)self _isDarkMode];
    v8 = MEMORY[0x277CDA600];
    if (!_isDarkMode)
    {
      v8 = MEMORY[0x277CDA5A8];
    }

    v6 = *v8;
  }

  v9 = imageCopy != 0;
  layer = [(CPUIShadowImageView *)self layer];
  [layer setCompositingFilter:v6];

  layer2 = [(CPUIShadowImageView *)self layer];
  [layer2 setAllowsGroupOpacity:v9];

  layer3 = [(CPUIShadowImageView *)self layer];
  [layer3 setAllowsGroupBlending:v9];

  -[CPUIShadowImageView setupVisibleEffects:](self, "setupVisibleEffects:", [imageCopy isSquared]);
  [(CPUIShadowImageView *)self setNeedsDisplay];
}

- (void)setPlaceholderImage:(id)image
{
  objc_storeStrong(&self->_placeholderImage, image);
  imageCopy = image;
  placeholderView = [(CPUIShadowImageView *)self placeholderView];
  [placeholderView setImage:imageCopy];

  [(CPUIShadowImageView *)self setNeedsDisplay];
}

- (void)setContentMode:(int64_t)mode
{
  if ([(UIImageView *)self->_imageView contentMode]!= mode)
  {
    imageView = self->_imageView;

    [(UIImageView *)imageView setContentMode:mode];
  }
}

- (void)setupVisibleEffects:(BOOL)effects
{
  layer = [(CPUIShadowImageView *)self layer];
  if (effects)
  {
    v4 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
    [layer setShadowColor:{objc_msgSend(v4, "CGColor")}];

    LODWORD(v5) = 1036831949;
    [layer setShadowOpacity:v5];
    [layer setShadowRadius:4.0];
    [layer setShadowOffset:{0.0, 2.0}];
  }

  else
  {
    [layer setShadowOpacity:0.0];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  v6.receiver = self;
  v6.super_class = CPUIShadowImageView;
  [(CPUIShadowImageView *)&v6 traitCollectionDidChange:change];
  imageView = [(CPUIShadowImageView *)self imageView];
  image = [imageView image];
  [(CPUIShadowImageView *)self setImage:image];
}

- (void)setNeedsDisplay
{
  v4.receiver = self;
  v4.super_class = CPUIShadowImageView;
  [(CPUIShadowImageView *)&v4 setNeedsDisplay];
  image = [(UIImageView *)self->_imageView image];

  [(UIImageView *)self->_placeholderView setHidden:image != 0];
}

@end