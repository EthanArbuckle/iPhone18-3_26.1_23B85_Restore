@interface MediaControlsRoutingButtonView
- (MediaControlsRoutingButtonView)initWithFrame:(CGRect)a3;
- (id)_glyphResource;
- (void)_updateGlyphPackage;
- (void)_updateGlyphState;
- (void)layoutSubviews;
- (void)setAlpha:(double)a3;
- (void)setCurrentMode:(int64_t)a3;
- (void)setDeviceType:(int64_t)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation MediaControlsRoutingButtonView

- (MediaControlsRoutingButtonView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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

- (void)setAlpha:(double)a3
{
  v6.receiver = self;
  v6.super_class = MediaControlsRoutingButtonView;
  [(MediaControlsRoutingButtonView *)&v6 setAlpha:?];
  v5 = [(MediaControlsRoutingButtonView *)self packageView];
  [v5 setAlpha:a3];

  [(MediaControlsRoutingButtonView *)self _updateGlyphState];
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = MediaControlsRoutingButtonView;
  [(MPButton *)&v13 layoutSubviews];
  v3 = [(MediaControlsRoutingButtonView *)self packageView];
  [v3 frame];
  [(MediaControlsRoutingButtonView *)self bounds];
  UIRectCenteredIntegralRect();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(MediaControlsRoutingButtonView *)self packageView];
  [v12 setFrame:{v5, v7, v9, v11}];
}

- (void)setCurrentMode:(int64_t)a3
{
  if (self->_currentMode != a3)
  {
    self->_currentMode = a3;
    [(MediaControlsRoutingButtonView *)self _updateGlyphState];
  }
}

- (void)setDeviceType:(int64_t)a3
{
  if (self->_deviceType != a3)
  {
    self->_deviceType = a3;
    [(MediaControlsRoutingButtonView *)self _updateGlyphPackage];
  }
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v8.receiver = self;
  v8.super_class = MediaControlsRoutingButtonView;
  [(MediaControlsRoutingButtonView *)&v8 setHighlighted:?];
  v5 = 0.47;
  v6[1] = 3221225472;
  v6[0] = MEMORY[0x1E69E9820];
  v6[2] = __49__MediaControlsRoutingButtonView_setHighlighted___block_invoke;
  v6[3] = &unk_1E7663F38;
  if (v3)
  {
    v5 = 0.0;
  }

  v6[4] = self;
  v7 = v3;
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

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v5 = [(MediaControlsRoutingButtonView *)self traitCollection];
  v6 = [v5 userInterfaceStyle];
  v7 = [v4 userInterfaceStyle];

  if (v6 != v7)
  {

    [(MediaControlsRoutingButtonView *)self _updateGlyphPackage];
  }
}

- (id)_glyphResource
{
  v3 = [(MediaControlsRoutingButtonView *)self traitCollection];
  v4 = [v3 userInterfaceStyle] == 2 || !self->_userInterfaceStyleSwitchingEnabled;

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
  v6 = [(MediaControlsRoutingButtonView *)self _glyphResource];
  if (v6)
  {
    v3 = [MEMORY[0x1E696AAE8] mediaControlsBundle];
    v4 = [v3 URLForResource:v6 withExtension:@"ca"];

    v5 = [MEMORY[0x1E6979400] packageWithContentsOfURL:v4 type:*MEMORY[0x1E6979EF8] options:0 error:0];
    [(CCUICAPackageView *)self->_packageView setPackage:v5];

    [(MediaControlsRoutingButtonView *)self _updateGlyphState];
  }

  [(MediaControlsRoutingButtonView *)self setNeedsLayout];
}

- (void)_updateGlyphState
{
  v3 = [(MediaControlsRoutingButtonView *)self currentMode];
  if (v3 <= 2)
  {
    v4 = off_1E76645C8[v3];
    v5 = [(MediaControlsRoutingButtonView *)self packageView];
    [v5 setStateName:v4];
  }
}

@end