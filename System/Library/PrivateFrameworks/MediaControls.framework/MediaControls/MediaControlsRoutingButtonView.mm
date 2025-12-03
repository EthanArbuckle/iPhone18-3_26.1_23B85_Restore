@interface MediaControlsRoutingButtonView
- (MediaControlsRoutingButtonView)initWithFrame:(CGRect)frame;
- (id)_glyphResource;
- (void)_updateGlyphPackage;
- (void)_updateGlyphState;
- (void)layoutSubviews;
- (void)setAlpha:(double)alpha;
- (void)setCurrentMode:(int64_t)mode;
- (void)setDeviceType:(int64_t)type;
- (void)setHighlighted:(BOOL)highlighted;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation MediaControlsRoutingButtonView

- (MediaControlsRoutingButtonView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v11.receiver = self;
  v11.super_class = MediaControlsRoutingButtonView;
  v7 = [(MPButton *)&v11 initWithFrame:?];
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x1E6997250]) initWithFrame:{x, y, width, height}];
    packageView = v7->_packageView;
    v7->_packageView = v8;

    [(CCUICAPackageView *)v7->_packageView setUserInteractionEnabled:0];
    [(MediaControlsRoutingButtonView *)v7 addSubview:v7->_packageView];
    [(MediaControlsRoutingButtonView *)v7 setPointerInteractionEnabled:1];
    [(MediaControlsRoutingButtonView *)v7 setPointerStyleProvider:&__block_literal_global_14];
  }

  return v7;
}

id __48__MediaControlsRoutingButtonView_initWithFrame___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E69DCE28];
  v3 = a2;
  v4 = objc_alloc_init(v2);
  v5 = MEMORY[0x1E69DC728];
  [v3 bounds];
  v6 = [v5 bezierPathWithOvalInRect:?];
  [v4 setVisiblePath:v6];

  v7 = [objc_alloc(MEMORY[0x1E69DD070]) initWithView:v3 parameters:v4];
  v8 = [MEMORY[0x1E69DCDB8] effectWithPreview:v7];
  v9 = [MEMORY[0x1E69DCDD0] styleWithEffect:v8 shape:0];

  return v9;
}

- (void)setAlpha:(double)alpha
{
  v6.receiver = self;
  v6.super_class = MediaControlsRoutingButtonView;
  [(MediaControlsRoutingButtonView *)&v6 setAlpha:?];
  packageView = [(MediaControlsRoutingButtonView *)self packageView];
  [packageView setAlpha:alpha];

  [(MediaControlsRoutingButtonView *)self _updateGlyphState];
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = MediaControlsRoutingButtonView;
  [(MPButton *)&v13 layoutSubviews];
  packageView = [(MediaControlsRoutingButtonView *)self packageView];
  [packageView frame];
  [(MediaControlsRoutingButtonView *)self bounds];
  UIRectCenteredIntegralRect();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  packageView2 = [(MediaControlsRoutingButtonView *)self packageView];
  [packageView2 setFrame:{v5, v7, v9, v11}];
}

- (void)setCurrentMode:(int64_t)mode
{
  if (self->_currentMode != mode)
  {
    self->_currentMode = mode;
    [(MediaControlsRoutingButtonView *)self _updateGlyphState];
  }
}

- (void)setDeviceType:(int64_t)type
{
  if (self->_deviceType != type)
  {
    self->_deviceType = type;
    [(MediaControlsRoutingButtonView *)self _updateGlyphPackage];
  }
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v8.receiver = self;
  v8.super_class = MediaControlsRoutingButtonView;
  [(MediaControlsRoutingButtonView *)&v8 setHighlighted:?];
  v5 = 0.47;
  v6[1] = 3221225472;
  v6[0] = MEMORY[0x1E69E9820];
  v6[2] = __49__MediaControlsRoutingButtonView_setHighlighted___block_invoke;
  v6[3] = &unk_1E7663F38;
  if (highlightedCopy)
  {
    v5 = 0.0;
  }

  v6[4] = self;
  v7 = highlightedCopy;
  [MEMORY[0x1E69DD250] animateWithDuration:327684 delay:v6 options:0 animations:v5 completion:?];
}

void __49__MediaControlsRoutingButtonView_setHighlighted___block_invoke(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v1 = 0.2;
  }

  else
  {
    v1 = 1.0;
  }

  v2 = [*(a1 + 32) packageView];
  [v2 setAlpha:v1];
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  traitCollection = [(MediaControlsRoutingButtonView *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];
  userInterfaceStyle2 = [changeCopy userInterfaceStyle];

  if (userInterfaceStyle != userInterfaceStyle2)
  {

    [(MediaControlsRoutingButtonView *)self _updateGlyphPackage];
  }
}

- (id)_glyphResource
{
  traitCollection = [(MediaControlsRoutingButtonView *)self traitCollection];
  v4 = [traitCollection userInterfaceStyle] == 2 || !self->_userInterfaceStyleSwitchingEnabled;

  deviceType = self->_deviceType;
  if (deviceType == 2)
  {
    v6 = @"VideoRoutingControl-Light";
    v7 = @"VideoRoutingControl-Dark";
  }

  else
  {
    if (deviceType != 1)
    {
      v8 = 0;
      goto LABEL_12;
    }

    v6 = @"AudioRoutingControl-Light";
    v7 = @"AudioRoutingControl-Dark";
  }

  if (v4)
  {
    v6 = v7;
  }

  v8 = v6;
LABEL_12:

  return v8;
}

- (void)_updateGlyphPackage
{
  _glyphResource = [(MediaControlsRoutingButtonView *)self _glyphResource];
  if (_glyphResource)
  {
    mediaControlsBundle = [MEMORY[0x1E696AAE8] mediaControlsBundle];
    v4 = [mediaControlsBundle URLForResource:_glyphResource withExtension:@"ca"];

    v5 = [MEMORY[0x1E6979400] packageWithContentsOfURL:v4 type:*MEMORY[0x1E6979EF8] options:0 error:0];
    [(CCUICAPackageView *)self->_packageView setPackage:v5];

    [(MediaControlsRoutingButtonView *)self _updateGlyphState];
  }

  [(MediaControlsRoutingButtonView *)self setNeedsLayout];
}

- (void)_updateGlyphState
{
  currentMode = [(MediaControlsRoutingButtonView *)self currentMode];
  if (currentMode <= 2)
  {
    v4 = off_1E76645C8[currentMode];
    packageView = [(MediaControlsRoutingButtonView *)self packageView];
    [packageView setStateName:v4];
  }
}

@end