@interface SGBannerView
- (CGSize)intrinsicContentSize;
- (SGBannerView)init;
- (void)forceReloadBannerView:(id)a3;
- (void)invalidateReloadBannerView:(id)a3;
- (void)reload;
- (void)setAccessoryType:(int64_t)a3;
- (void)setActionButtonType:(int64_t)a3;
- (void)setActionTitle:(id)a3;
- (void)setAttributedSubtitle:(id)a3;
- (void)setAttributedTitle:(id)a3;
- (void)setBackgroundColor:(id)a3;
- (void)setBackgroundVisualEffectView:(id)a3;
- (void)setBannerDivider:(id)a3;
- (void)setImages:(id)a3;
- (void)setSubtitle:(id)a3;
- (void)setTitle:(id)a3;
- (void)willMoveToWindow:(id)a3;
@end

@implementation SGBannerView

- (void)setBannerDivider:(id)a3
{
  [(SGBannerContent *)self->_banner setBannerDivider:a3];
  bannerHostingView = self->_bannerHostingView;

  [(SGBannerContentHostingView *)bannerHostingView updateBannerViews];
}

- (void)setBackgroundColor:(id)a3
{
  [(SGBannerContent *)self->_banner setBackgroundColor:a3];
  bannerHostingView = self->_bannerHostingView;

  [(SGBannerContentHostingView *)bannerHostingView updateBannerViews];
}

- (void)willMoveToWindow:(id)a3
{
  v5.receiver = self;
  v5.super_class = SGBannerView;
  [(SGBannerView *)&v5 willMoveToWindow:?];
  if (a3)
  {
    [(SGBannerView *)self reload];
  }
}

- (void)setBackgroundVisualEffectView:(id)a3
{
  [(SGBannerContent *)self->_banner setBackgroundVisualEffectView:a3];
  bannerHostingView = self->_bannerHostingView;

  [(SGBannerContentHostingView *)bannerHostingView updateBannerViews];
}

- (CGSize)intrinsicContentSize
{
  [(SGBannerContentHostingView *)self->_bannerHostingView intrinsicContentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)reload
{
  bannerHostingView = self->_bannerHostingView;
  v3 = [(SGBannerView *)self banner];
  [(SGBannerContentHostingView *)bannerHostingView updateWithBanner:v3];
}

- (void)setImages:(id)a3
{
  if (a3)
  {
    v4 = [a3 copy];
    [(SGBannerContent *)self->_banner setImages:v4];
  }
}

- (void)setActionTitle:(id)a3
{
  v4 = [a3 copy];
  [(SGBannerContent *)self->_banner setActionTitle:v4];

  bannerHostingView = self->_bannerHostingView;

  [(SGBannerContentHostingView *)bannerHostingView updateBannerViews];
}

- (void)setActionButtonType:(int64_t)a3
{
  if ([(SGBannerContent *)self->_banner actionButtonType]!= a3)
  {
    banner = self->_banner;

    [(SGBannerContent *)banner setActionButtonType:a3];
  }
}

- (void)setAccessoryType:(int64_t)a3
{
  if ([(SGBannerContent *)self->_banner accessoryType]!= a3)
  {
    banner = self->_banner;

    [(SGBannerContent *)banner setAccessoryType:a3];
  }
}

- (void)setAttributedSubtitle:(id)a3
{
  v4 = a3;
  v5 = [v4 mutableCopy];
  [(SGBannerContent *)self->_banner setAttributedSubtitle:v5];

  v6 = [v4 string];

  [(SGBannerContent *)self->_banner setSubtitle:v6];
}

- (void)setSubtitle:(id)a3
{
  [(SGBannerContent *)self->_banner setSubtitle:a3];
  bannerHostingView = self->_bannerHostingView;

  [(SGBannerContentHostingView *)bannerHostingView updateBannerViews];
}

- (void)setAttributedTitle:(id)a3
{
  v4 = a3;
  v5 = [v4 mutableCopy];
  [(SGBannerContent *)self->_banner setAttributedTitle:v5];

  v6 = [v4 string];

  [(SGBannerContent *)self->_banner setTitle:v6];
}

- (void)setTitle:(id)a3
{
  [(SGBannerContent *)self->_banner setTitle:a3];
  bannerHostingView = self->_bannerHostingView;

  [(SGBannerContentHostingView *)bannerHostingView updateBannerViews];
}

- (void)forceReloadBannerView:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_banner)
  {
    v5 = [MEMORY[0x1E69DC938] currentDevice];
    v6 = [v5 orientation];

    if (v6 == 1 && self->_orientationChanged)
    {
      v7 = [MEMORY[0x1E696AD88] defaultCenter];
      v9 = @"SGListNotificationKeyChangedReorientation";
      v10[0] = &unk_1F3016400;
      v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
      [v7 postNotificationName:@"com.apple.coresuggestionsui.SGListDidChangeNotification" object:0 userInfo:v8];

      self->_orientationChanged = 0;
    }
  }
}

- (void)invalidateReloadBannerView:(id)a3
{
  self->_orientationChanged = 1;
  v4 = [MEMORY[0x1E696AAE8] mainBundle];
  v5 = [v4 bundleIdentifier];

  if ([v5 isEqualToString:*MEMORY[0x1E69992D0]])
  {
    [(SGBannerView *)self invalidateBannerView];
    [(SGBannerView *)self reload];
  }
}

- (SGBannerView)init
{
  v26[4] = *MEMORY[0x1E69E9840];
  v25.receiver = self;
  v25.super_class = SGBannerView;
  v2 = [(SGBannerView *)&v25 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v2)
  {
    v3 = objc_opt_new();
    banner = v2->_banner;
    v2->_banner = v3;

    v5 = [[_TtC17CoreSuggestionsUI26SGBannerContentHostingView alloc] initWithBanner:v2->_banner];
    bannerHostingView = v2->_bannerHostingView;
    v2->_bannerHostingView = v5;

    v2->_orientationChanged = 0;
    [(SGBannerView *)v2 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SGBannerContentHostingView *)v2->_bannerHostingView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SGBannerView *)v2 addSubview:v2->_bannerHostingView];
    v20 = MEMORY[0x1E696ACD8];
    v24 = [(SGBannerContentHostingView *)v2->_bannerHostingView leadingAnchor];
    v23 = [(SGBannerView *)v2 leadingAnchor];
    v22 = [v24 constraintEqualToAnchor:v23];
    v26[0] = v22;
    v21 = [(SGBannerContentHostingView *)v2->_bannerHostingView trailingAnchor];
    v7 = [(SGBannerView *)v2 trailingAnchor];
    v8 = [v21 constraintEqualToAnchor:v7];
    v26[1] = v8;
    v9 = [(SGBannerContentHostingView *)v2->_bannerHostingView bottomAnchor];
    v10 = [(SGBannerView *)v2 bottomAnchor];
    v11 = [v9 constraintEqualToAnchor:v10];
    v26[2] = v11;
    v12 = [(SGBannerContentHostingView *)v2->_bannerHostingView topAnchor];
    v13 = [(SGBannerView *)v2 topAnchor];
    v14 = [v12 constraintEqualToAnchor:v13];
    v26[3] = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:4];
    [v20 activateConstraints:v15];

    v16 = [MEMORY[0x1E696AD88] defaultCenter];
    [v16 addObserver:v2 selector:sel_invalidateReloadBannerView_ name:*MEMORY[0x1E69DDC48] object:0];

    v17 = [MEMORY[0x1E696AD88] defaultCenter];
    [v17 addObserver:v2 selector:sel_invalidateReloadBannerView_ name:*MEMORY[0x1E69DDCB8] object:0];

    v18 = [MEMORY[0x1E696AD88] defaultCenter];
    [v18 addObserver:v2 selector:sel_forceReloadBannerView_ name:*MEMORY[0x1E69DDF78] object:0];
  }

  return v2;
}

@end