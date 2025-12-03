@interface SFShadowView
- (SFShadowView)initWithFrame:(CGRect)frame;
- (void)setVibrancyEnabled:(BOOL)enabled;
- (void)updateAppearance;
@end

@implementation SFShadowView

- (void)updateAppearance
{
  v18[1] = *MEMORY[0x1E69E9840];
  vibrancyEnabled = self->_vibrancyEnabled;
  if (vibrancyEnabled)
  {
    traitCollection = [(SFShadowView *)self traitCollection];
    if ([traitCollection userInterfaceStyle] == 2)
    {
      v5 = &darkColorMatrix;
    }

    else
    {
      v5 = &lightColorMatrix;
    }

    v7 = v5[3];
    v15 = v5[2];
    v16 = v7;
    v17 = v5[4];
    v8 = v5[1];
    v13 = *v5;
    v14 = v8;
    v9 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979D78]];
    v12[2] = v15;
    v12[3] = v16;
    v12[4] = v17;
    v12[0] = v13;
    v12[1] = v14;
    v10 = [MEMORY[0x1E696B098] valueWithBytes:v12 objCType:"{CAColorMatrix=ffffffffffffffffffff}"];
    [v9 setValue:v10 forKey:*MEMORY[0x1E6979AC0]];

    v18[0] = v9;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  layer = [(SFShadowView *)self layer];
  [layer setFilters:v6];

  if (vibrancyEnabled)
  {
  }
}

- (SFShadowView)initWithFrame:(CGRect)frame
{
  v13[1] = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = SFShadowView;
  v3 = [(SFShadowView *)&v12 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    if (shadowImage_onceToken_1 != -1)
    {
      [SFShadowView initWithFrame:];
    }

    v4 = shadowImage_image_1;
    [v4 scale];
    v6 = v5 == 2.0;
    v7 = 60.0;
    if (v6)
    {
      v7 = 40.0;
    }

    v3->_shadowRadius = v7;
    [(SFShadowView *)v3 setImage:v4];
    v3->_vibrancyEnabled = 1;
    v13[0] = objc_opt_class();
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    v9 = [(SFShadowView *)v3 registerForTraitChanges:v8 withTarget:v3 action:sel_updateAppearance];

    [(SFShadowView *)v3 updateAppearance];
    v10 = v3;
  }

  return v3;
}

- (void)setVibrancyEnabled:(BOOL)enabled
{
  if (self->_vibrancyEnabled != enabled)
  {
    self->_vibrancyEnabled = enabled;
    [(SFShadowView *)self updateAppearance];
  }
}

@end