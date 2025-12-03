@interface SGBannerView
- (CGSize)intrinsicContentSize;
- (SGBannerView)init;
- (void)forceReloadBannerView:(id)view;
- (void)invalidateReloadBannerView:(id)view;
- (void)reload;
- (void)setAccessoryType:(int64_t)type;
- (void)setActionButtonType:(int64_t)type;
- (void)setActionTitle:(id)title;
- (void)setAttributedSubtitle:(id)subtitle;
- (void)setAttributedTitle:(id)title;
- (void)setBackgroundColor:(id)color;
- (void)setBackgroundVisualEffectView:(id)view;
- (void)setBannerDivider:(id)divider;
- (void)setImages:(id)images;
- (void)setSubtitle:(id)subtitle;
- (void)setTitle:(id)title;
- (void)willMoveToWindow:(id)window;
@end

@implementation SGBannerView

- (void)setBannerDivider:(id)divider
{
  [(SGBannerContent *)self->_banner setBannerDivider:divider];
  bannerHostingView = self->_bannerHostingView;

  [(SGBannerContentHostingView *)bannerHostingView updateBannerViews];
}

- (void)setBackgroundColor:(id)color
{
  [(SGBannerContent *)self->_banner setBackgroundColor:color];
  bannerHostingView = self->_bannerHostingView;

  [(SGBannerContentHostingView *)bannerHostingView updateBannerViews];
}

- (void)willMoveToWindow:(id)window
{
  v5.receiver = self;
  v5.super_class = SGBannerView;
  [(SGBannerView *)&v5 willMoveToWindow:?];
  if (window)
  {
    [(SGBannerView *)self reload];
  }
}

- (void)setBackgroundVisualEffectView:(id)view
{
  [(SGBannerContent *)self->_banner setBackgroundVisualEffectView:view];
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
  banner = [(SGBannerView *)self banner];
  [(SGBannerContentHostingView *)bannerHostingView updateWithBanner:banner];
}

- (void)setImages:(id)images
{
  if (images)
  {
    v4 = [images copy];
    [(SGBannerContent *)self->_banner setImages:v4];
  }
}

- (void)setActionTitle:(id)title
{
  v4 = [title copy];
  [(SGBannerContent *)self->_banner setActionTitle:v4];

  bannerHostingView = self->_bannerHostingView;

  [(SGBannerContentHostingView *)bannerHostingView updateBannerViews];
}

- (void)setActionButtonType:(int64_t)type
{
  if ([(SGBannerContent *)self->_banner actionButtonType]!= type)
  {
    banner = self->_banner;

    [(SGBannerContent *)banner setActionButtonType:type];
  }
}

- (void)setAccessoryType:(int64_t)type
{
  if ([(SGBannerContent *)self->_banner accessoryType]!= type)
  {
    banner = self->_banner;

    [(SGBannerContent *)banner setAccessoryType:type];
  }
}

- (void)setAttributedSubtitle:(id)subtitle
{
  subtitleCopy = subtitle;
  v5 = [subtitleCopy mutableCopy];
  [(SGBannerContent *)self->_banner setAttributedSubtitle:v5];

  string = [subtitleCopy string];

  [(SGBannerContent *)self->_banner setSubtitle:string];
}

- (void)setSubtitle:(id)subtitle
{
  [(SGBannerContent *)self->_banner setSubtitle:subtitle];
  bannerHostingView = self->_bannerHostingView;

  [(SGBannerContentHostingView *)bannerHostingView updateBannerViews];
}

- (void)setAttributedTitle:(id)title
{
  titleCopy = title;
  v5 = [titleCopy mutableCopy];
  [(SGBannerContent *)self->_banner setAttributedTitle:v5];

  string = [titleCopy string];

  [(SGBannerContent *)self->_banner setTitle:string];
}

- (void)setTitle:(id)title
{
  [(SGBannerContent *)self->_banner setTitle:title];
  bannerHostingView = self->_bannerHostingView;

  [(SGBannerContentHostingView *)bannerHostingView updateBannerViews];
}

- (void)forceReloadBannerView:(id)view
{
  v10[1] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  if (self->_banner)
  {
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    orientation = [currentDevice orientation];

    if (orientation == 1 && self->_orientationChanged)
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      v9 = @"SGListNotificationKeyChangedReorientation";
      v10[0] = &unk_1F3016400;
      v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
      [defaultCenter postNotificationName:@"com.apple.coresuggestionsui.SGListDidChangeNotification" object:0 userInfo:v8];

      self->_orientationChanged = 0;
    }
  }
}

- (void)invalidateReloadBannerView:(id)view
{
  self->_orientationChanged = 1;
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];

  if ([bundleIdentifier isEqualToString:*MEMORY[0x1E69992D0]])
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
    leadingAnchor = [(SGBannerContentHostingView *)v2->_bannerHostingView leadingAnchor];
    leadingAnchor2 = [(SGBannerView *)v2 leadingAnchor];
    v22 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v26[0] = v22;
    trailingAnchor = [(SGBannerContentHostingView *)v2->_bannerHostingView trailingAnchor];
    trailingAnchor2 = [(SGBannerView *)v2 trailingAnchor];
    v8 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v26[1] = v8;
    bottomAnchor = [(SGBannerContentHostingView *)v2->_bannerHostingView bottomAnchor];
    bottomAnchor2 = [(SGBannerView *)v2 bottomAnchor];
    v11 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v26[2] = v11;
    topAnchor = [(SGBannerContentHostingView *)v2->_bannerHostingView topAnchor];
    topAnchor2 = [(SGBannerView *)v2 topAnchor];
    v14 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v26[3] = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:4];
    [v20 activateConstraints:v15];

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_invalidateReloadBannerView_ name:*MEMORY[0x1E69DDC48] object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v2 selector:sel_invalidateReloadBannerView_ name:*MEMORY[0x1E69DDCB8] object:0];

    defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter3 addObserver:v2 selector:sel_forceReloadBannerView_ name:*MEMORY[0x1E69DDF78] object:0];
  }

  return v2;
}

@end