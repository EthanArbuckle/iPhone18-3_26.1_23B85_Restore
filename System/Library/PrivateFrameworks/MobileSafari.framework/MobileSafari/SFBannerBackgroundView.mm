@interface SFBannerBackgroundView
- (SFBannerBackgroundView)initWithEffect:(id)a3;
- (void)_updateStyle;
- (void)_updateVibrancy;
- (void)setBannerStyle:(int64_t)a3;
@end

@implementation SFBannerBackgroundView

- (SFBannerBackgroundView)initWithEffect:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = SFBannerBackgroundView;
  v3 = [(SFBannerBackgroundView *)&v9 initWithEffect:a3];
  v4 = v3;
  if (v3)
  {
    [(SFBannerBackgroundView *)v3 _updateStyle];
    v10[0] = objc_opt_class();
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    v6 = [(SFBannerBackgroundView *)v4 registerForTraitChanges:v5 withTarget:v4 action:sel__updateVibrancy];

    v7 = v4;
  }

  return v4;
}

- (void)setBannerStyle:(int64_t)a3
{
  if (self->_bannerStyle != a3)
  {
    v5[5] = v3;
    v5[6] = v4;
    self->_bannerStyle = a3;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __41__SFBannerBackgroundView_setBannerStyle___block_invoke;
    v5[3] = &unk_1E721B360;
    v5[4] = self;
    [MEMORY[0x1E69DD250] performWithoutAnimation:v5];
  }
}

- (void)_updateStyle
{
  bannerStyle = self->_bannerStyle;
  if (bannerStyle)
  {
    if (bannerStyle != 1)
    {
      goto LABEL_6;
    }

    v4 = 8.0;
  }

  else
  {
    v4 = 20.0;
  }

  [(SFBannerBackgroundView *)self _setContinuousCornerRadius:v4];
LABEL_6:

  [(SFBannerBackgroundView *)self _updateVibrancy];
}

- (void)_updateVibrancy
{
  v3 = [(SFBannerBackgroundView *)self traitCollection];
  v4 = [v3 sf_usesVibrantAppearance];

  if (v4)
  {
    v5 = [(SFBannerBackgroundView *)self contentView];
    [v5 setBackgroundColor:0];

    bannerStyle = self->_bannerStyle;
    v7 = 10;
    if (bannerStyle != 1)
    {
      v7 = 0;
    }

    if (bannerStyle)
    {
      v8 = v7;
    }

    else
    {
      v8 = 6;
    }

    v12 = [MEMORY[0x1E69DC730] effectWithStyle:v8];
    [(SFBannerBackgroundView *)self setEffect:?];
  }

  else
  {
    [(SFBannerBackgroundView *)self setEffect:0];
    v9 = self->_bannerStyle;
    if (v9 == 1)
    {
      v10 = [MEMORY[0x1E69DC888] tertiarySystemGroupedBackgroundColor];
    }

    else
    {
      if (v9)
      {
        return;
      }

      v10 = [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
    }

    v12 = v10;
    v11 = [(SFBannerBackgroundView *)self contentView];
    [v11 setBackgroundColor:v12];
  }
}

@end