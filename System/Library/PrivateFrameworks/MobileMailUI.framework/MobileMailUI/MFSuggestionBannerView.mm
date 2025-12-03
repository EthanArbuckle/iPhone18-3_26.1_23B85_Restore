@interface MFSuggestionBannerView
+ (id)bannerIconViewForSymbol:(id)symbol tintColor:(id)color;
- (MFSuggestionBannerView)initWithFrame:(CGRect)frame;
- (MFSuggestionBannerView)initWithFrame:(CGRect)frame banner:(id)banner;
- (id)_constraintsForEdges:(unint64_t)edges banner:(id)banner useLayoutMarginsGuide:(BOOL)guide;
- (void)_configureBannerAppearance;
- (void)commonInitWithBanner:(id)banner;
- (void)setBanner:(id)banner;
- (void)setSeparatorDrawsFlushWithLeadingEdge:(BOOL)edge;
- (void)setSeparatorDrawsFlushWithTrailingEdge:(BOOL)edge;
- (void)updateConstraints;
- (void)willMoveToSuperview:(id)superview;
@end

@implementation MFSuggestionBannerView

- (MFSuggestionBannerView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = [objc_alloc(MEMORY[0x277D025D0]) initWithFrame:{frame.origin.x, frame.origin.y, frame.size.width, frame.size.height}];
  v12.receiver = self;
  v12.super_class = MFSuggestionBannerView;
  height = [(MFMessageHeaderViewBlock *)&v12 initWithFrame:x, y, width, height];
  v10 = height;
  if (height)
  {
    [(MFSuggestionBannerView *)height commonInitWithBanner:v8];
  }

  return v10;
}

- (MFSuggestionBannerView)initWithFrame:(CGRect)frame banner:(id)banner
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  bannerCopy = banner;
  v13.receiver = self;
  v13.super_class = MFSuggestionBannerView;
  height = [(MFMessageHeaderViewBlock *)&v13 initWithFrame:x, y, width, height];
  v11 = height;
  if (height)
  {
    [(MFSuggestionBannerView *)height commonInitWithBanner:bannerCopy];
  }

  [(MFSuggestionBannerView *)v11 setAccessibilityIdentifier:*MEMORY[0x277D258B0]];

  return v11;
}

- (void)commonInitWithBanner:(id)banner
{
  bannerCopy = banner;
  [bannerCopy setInsetsLayoutMarginsFromSafeArea:0];
  objc_storeStrong(&self->_banner, banner);
  [(MFSuggestionBannerView *)self addSubview:self->_banner];
  [(MFSuggestionBannerView *)&self->super.super.super.super.isa _configureBannerAppearance];
}

- (void)_configureBannerAppearance
{
  if (self)
  {
    if (MUISolariumFeatureEnabled())
    {
      banner = [self banner];
      if (objc_opt_respondsToSelector())
      {
        [banner mui_disableGlassPlatter];
      }

      v2 = [objc_alloc(MEMORY[0x277D025C8]) initWithPosition:0 color:0];
      [banner setBannerDivider:v2];
    }

    if ([self mf_debugModeEnabled])
    {
      purpleColor = [MEMORY[0x277D75348] purpleColor];
      v3 = [purpleColor colorWithAlphaComponent:0.2];
      [self[64] setBackgroundColor:v3];
    }
  }
}

- (void)willMoveToSuperview:(id)superview
{
  superviewCopy = superview;
  if (!superviewCopy)
  {
    banner = [(MFSuggestionBannerView *)self banner];
    [banner setCloseButtonXAnchorOffset:0.0];

    bannerConstraints = [(MFSuggestionBannerView *)self bannerConstraints];
    if (bannerConstraints)
    {
      [MEMORY[0x277CCAAD0] deactivateConstraints:bannerConstraints];
    }

    superviewCopy = 0;
  }
}

- (void)setBanner:(id)banner
{
  bannerCopy = banner;
  banner = self->_banner;
  v7 = bannerCopy;
  if (banner != bannerCopy)
  {
    [(SGBannerProtocol *)banner removeFromSuperview];
  }

  [(MFSuggestionBannerView *)self addSubview:v7];
  objc_storeStrong(&self->_banner, banner);
  [(MFSuggestionBannerView *)&self->super.super.super.super.isa _configureBannerAppearance];
}

- (id)_constraintsForEdges:(unint64_t)edges banner:(id)banner useLayoutMarginsGuide:(BOOL)guide
{
  edgesCopy = edges;
  bannerCopy = banner;
  [bannerCopy setTranslatesAutoresizingMaskIntoConstraints:0];
  leadingAnchor = [(MFSuggestionBannerView *)self leadingAnchor];
  trailingAnchor = [(MFSuggestionBannerView *)self trailingAnchor];
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v10 = MUISolariumFeatureEnabled();
  v11 = v10;
  if ((edgesCopy & 2) != 0)
  {
    if (!v10)
    {
      leadingAnchor2 = [bannerCopy leadingAnchor];
      v21 = [leadingAnchor2 constraintEqualToAnchor:leadingAnchor];
      [v9 addObject:v21];

      if ((edgesCopy & 8) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_9;
    }

    leadingAnchor3 = [bannerCopy leadingAnchor];
    layoutMarginsGuide = [(MFSuggestionBannerView *)self layoutMarginsGuide];
    leadingAnchor4 = [layoutMarginsGuide leadingAnchor];
    v15 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:-7.0];
    [v9 addObject:v15];

    if ((edgesCopy & 8) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    if ((edgesCopy & 8) == 0)
    {
      goto LABEL_11;
    }

    if (!v10)
    {
LABEL_9:
      trailingAnchor2 = [bannerCopy trailingAnchor];
      layoutMarginsGuide2 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor];
      [v9 addObject:layoutMarginsGuide2];
      goto LABEL_10;
    }
  }

  trailingAnchor2 = [bannerCopy trailingAnchor];
  layoutMarginsGuide2 = [(MFSuggestionBannerView *)self layoutMarginsGuide];
  trailingAnchor3 = [layoutMarginsGuide2 trailingAnchor];
  v19 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3 constant:7.0];
  [v9 addObject:v19];

LABEL_10:
LABEL_11:
  if (edgesCopy)
  {
    topAnchor = [bannerCopy topAnchor];
    if (v11)
    {
      layoutMarginsGuide3 = [(MFSuggestionBannerView *)self layoutMarginsGuide];
      topAnchor2 = [layoutMarginsGuide3 topAnchor];
      v25 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:2.0];
      [v9 addObject:v25];
    }

    else
    {
      layoutMarginsGuide3 = [(MFSuggestionBannerView *)self topAnchor];
      topAnchor2 = [topAnchor constraintEqualToAnchor:layoutMarginsGuide3];
      [v9 addObject:topAnchor2];
    }
  }

  if ((edgesCopy & 4) != 0)
  {
    bottomAnchor = [bannerCopy bottomAnchor];
    bottomAnchor2 = [(MFSuggestionBannerView *)self bottomAnchor];
    v28 = 0.0;
    if (v11)
    {
      v28 = -7.0;
    }

    v29 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:v28];
    [v9 addObject:v29];
  }

  return v9;
}

- (void)updateConstraints
{
  bannerConstraints = [(MFSuggestionBannerView *)self bannerConstraints];

  if (!bannerConstraints)
  {
    banner = [(MFSuggestionBannerView *)self banner];
    displayMetrics = [(MFMessageHeaderViewBlock *)self displayMetrics];
    v6 = -[MFSuggestionBannerView _constraintsForEdges:banner:useLayoutMarginsGuide:](self, "_constraintsForEdges:banner:useLayoutMarginsGuide:", 15, banner, [displayMetrics prefersFlushSeparator]);
    [(MFSuggestionBannerView *)self setBannerConstraints:v6];

    displayMetrics2 = [(MFMessageHeaderViewBlock *)self displayMetrics];
    LODWORD(displayMetrics) = [displayMetrics2 prefersFlushSeparator];

    v8 = 0.0;
    if (displayMetrics)
    {
      [(MFSuggestionBannerView *)self trailingOffsetToMarginForCloseButtonAlignment];
    }

    [(SGBannerProtocol *)self->_banner setCloseButtonXAnchorOffset:v8];
    [(SGBannerProtocol *)self->_banner reload];
    v9 = MEMORY[0x277CCAAD0];
    bannerConstraints2 = [(MFSuggestionBannerView *)self bannerConstraints];
    [v9 activateConstraints:bannerConstraints2];
  }

  v11.receiver = self;
  v11.super_class = MFSuggestionBannerView;
  [(MFMessageHeaderViewBlock *)&v11 updateConstraints];
}

- (void)setSeparatorDrawsFlushWithLeadingEdge:(BOOL)edge
{
  v3.receiver = self;
  v3.super_class = MFSuggestionBannerView;
  [(MFMessageHeaderViewBlock *)&v3 setSeparatorDrawsFlushWithLeadingEdge:1];
}

- (void)setSeparatorDrawsFlushWithTrailingEdge:(BOOL)edge
{
  v3.receiver = self;
  v3.super_class = MFSuggestionBannerView;
  [(MFMessageHeaderViewBlock *)&v3 setSeparatorDrawsFlushWithTrailingEdge:1];
}

+ (id)bannerIconViewForSymbol:(id)symbol tintColor:(id)color
{
  symbolCopy = symbol;
  colorCopy = color;
  v7 = objc_alloc_init(MEMORY[0x277D755E8]);
  v8 = [MEMORY[0x277D755B8] systemImageNamed:symbolCopy];
  [v7 setImage:v8];

  [v7 setContentMode:1];
  [v7 setTintColor:colorCopy];

  return v7;
}

@end