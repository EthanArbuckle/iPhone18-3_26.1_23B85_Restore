@interface MFSuggestionBannerView
+ (id)bannerIconViewForSymbol:(id)a3 tintColor:(id)a4;
- (MFSuggestionBannerView)initWithFrame:(CGRect)a3;
- (MFSuggestionBannerView)initWithFrame:(CGRect)a3 banner:(id)a4;
- (id)_constraintsForEdges:(unint64_t)a3 banner:(id)a4 useLayoutMarginsGuide:(BOOL)a5;
- (void)_configureBannerAppearance;
- (void)commonInitWithBanner:(id)a3;
- (void)setBanner:(id)a3;
- (void)setSeparatorDrawsFlushWithLeadingEdge:(BOOL)a3;
- (void)setSeparatorDrawsFlushWithTrailingEdge:(BOOL)a3;
- (void)updateConstraints;
- (void)willMoveToSuperview:(id)a3;
@end

@implementation MFSuggestionBannerView

- (MFSuggestionBannerView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [objc_alloc(MEMORY[0x277D025D0]) initWithFrame:{a3.origin.x, a3.origin.y, a3.size.width, a3.size.height}];
  v12.receiver = self;
  v12.super_class = MFSuggestionBannerView;
  v9 = [(MFMessageHeaderViewBlock *)&v12 initWithFrame:x, y, width, height];
  v10 = v9;
  if (v9)
  {
    [(MFSuggestionBannerView *)v9 commonInitWithBanner:v8];
  }

  return v10;
}

- (MFSuggestionBannerView)initWithFrame:(CGRect)a3 banner:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v13.receiver = self;
  v13.super_class = MFSuggestionBannerView;
  v10 = [(MFMessageHeaderViewBlock *)&v13 initWithFrame:x, y, width, height];
  v11 = v10;
  if (v10)
  {
    [(MFSuggestionBannerView *)v10 commonInitWithBanner:v9];
  }

  [(MFSuggestionBannerView *)v11 setAccessibilityIdentifier:*MEMORY[0x277D258B0]];

  return v11;
}

- (void)commonInitWithBanner:(id)a3
{
  v5 = a3;
  [v5 setInsetsLayoutMarginsFromSafeArea:0];
  objc_storeStrong(&self->_banner, a3);
  [(MFSuggestionBannerView *)self addSubview:self->_banner];
  [(MFSuggestionBannerView *)&self->super.super.super.super.isa _configureBannerAppearance];
}

- (void)_configureBannerAppearance
{
  if (a1)
  {
    if (MUISolariumFeatureEnabled())
    {
      v4 = [a1 banner];
      if (objc_opt_respondsToSelector())
      {
        [v4 mui_disableGlassPlatter];
      }

      v2 = [objc_alloc(MEMORY[0x277D025C8]) initWithPosition:0 color:0];
      [v4 setBannerDivider:v2];
    }

    if ([a1 mf_debugModeEnabled])
    {
      v5 = [MEMORY[0x277D75348] purpleColor];
      v3 = [v5 colorWithAlphaComponent:0.2];
      [a1[64] setBackgroundColor:v3];
    }
  }
}

- (void)willMoveToSuperview:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v5 = [(MFSuggestionBannerView *)self banner];
    [v5 setCloseButtonXAnchorOffset:0.0];

    v6 = [(MFSuggestionBannerView *)self bannerConstraints];
    if (v6)
    {
      [MEMORY[0x277CCAAD0] deactivateConstraints:v6];
    }

    v4 = 0;
  }
}

- (void)setBanner:(id)a3
{
  v5 = a3;
  banner = self->_banner;
  v7 = v5;
  if (banner != v5)
  {
    [(SGBannerProtocol *)banner removeFromSuperview];
  }

  [(MFSuggestionBannerView *)self addSubview:v7];
  objc_storeStrong(&self->_banner, a3);
  [(MFSuggestionBannerView *)&self->super.super.super.super.isa _configureBannerAppearance];
}

- (id)_constraintsForEdges:(unint64_t)a3 banner:(id)a4 useLayoutMarginsGuide:(BOOL)a5
{
  v5 = a3;
  v7 = a4;
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  v31 = [(MFSuggestionBannerView *)self leadingAnchor];
  v8 = [(MFSuggestionBannerView *)self trailingAnchor];
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v10 = MUISolariumFeatureEnabled();
  v11 = v10;
  if ((v5 & 2) != 0)
  {
    if (!v10)
    {
      v20 = [v7 leadingAnchor];
      v21 = [v20 constraintEqualToAnchor:v31];
      [v9 addObject:v21];

      if ((v5 & 8) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_9;
    }

    v12 = [v7 leadingAnchor];
    v13 = [(MFSuggestionBannerView *)self layoutMarginsGuide];
    v14 = [v13 leadingAnchor];
    v15 = [v12 constraintEqualToAnchor:v14 constant:-7.0];
    [v9 addObject:v15];

    if ((v5 & 8) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    if ((v5 & 8) == 0)
    {
      goto LABEL_11;
    }

    if (!v10)
    {
LABEL_9:
      v16 = [v7 trailingAnchor];
      v17 = [v16 constraintEqualToAnchor:v8];
      [v9 addObject:v17];
      goto LABEL_10;
    }
  }

  v16 = [v7 trailingAnchor];
  v17 = [(MFSuggestionBannerView *)self layoutMarginsGuide];
  v18 = [v17 trailingAnchor];
  v19 = [v16 constraintEqualToAnchor:v18 constant:7.0];
  [v9 addObject:v19];

LABEL_10:
LABEL_11:
  if (v5)
  {
    v22 = [v7 topAnchor];
    if (v11)
    {
      v23 = [(MFSuggestionBannerView *)self layoutMarginsGuide];
      v24 = [v23 topAnchor];
      v25 = [v22 constraintEqualToAnchor:v24 constant:2.0];
      [v9 addObject:v25];
    }

    else
    {
      v23 = [(MFSuggestionBannerView *)self topAnchor];
      v24 = [v22 constraintEqualToAnchor:v23];
      [v9 addObject:v24];
    }
  }

  if ((v5 & 4) != 0)
  {
    v26 = [v7 bottomAnchor];
    v27 = [(MFSuggestionBannerView *)self bottomAnchor];
    v28 = 0.0;
    if (v11)
    {
      v28 = -7.0;
    }

    v29 = [v26 constraintEqualToAnchor:v27 constant:v28];
    [v9 addObject:v29];
  }

  return v9;
}

- (void)updateConstraints
{
  v3 = [(MFSuggestionBannerView *)self bannerConstraints];

  if (!v3)
  {
    v4 = [(MFSuggestionBannerView *)self banner];
    v5 = [(MFMessageHeaderViewBlock *)self displayMetrics];
    v6 = -[MFSuggestionBannerView _constraintsForEdges:banner:useLayoutMarginsGuide:](self, "_constraintsForEdges:banner:useLayoutMarginsGuide:", 15, v4, [v5 prefersFlushSeparator]);
    [(MFSuggestionBannerView *)self setBannerConstraints:v6];

    v7 = [(MFMessageHeaderViewBlock *)self displayMetrics];
    LODWORD(v5) = [v7 prefersFlushSeparator];

    v8 = 0.0;
    if (v5)
    {
      [(MFSuggestionBannerView *)self trailingOffsetToMarginForCloseButtonAlignment];
    }

    [(SGBannerProtocol *)self->_banner setCloseButtonXAnchorOffset:v8];
    [(SGBannerProtocol *)self->_banner reload];
    v9 = MEMORY[0x277CCAAD0];
    v10 = [(MFSuggestionBannerView *)self bannerConstraints];
    [v9 activateConstraints:v10];
  }

  v11.receiver = self;
  v11.super_class = MFSuggestionBannerView;
  [(MFMessageHeaderViewBlock *)&v11 updateConstraints];
}

- (void)setSeparatorDrawsFlushWithLeadingEdge:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = MFSuggestionBannerView;
  [(MFMessageHeaderViewBlock *)&v3 setSeparatorDrawsFlushWithLeadingEdge:1];
}

- (void)setSeparatorDrawsFlushWithTrailingEdge:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = MFSuggestionBannerView;
  [(MFMessageHeaderViewBlock *)&v3 setSeparatorDrawsFlushWithTrailingEdge:1];
}

+ (id)bannerIconViewForSymbol:(id)a3 tintColor:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x277D755E8]);
  v8 = [MEMORY[0x277D755B8] systemImageNamed:v5];
  [v7 setImage:v8];

  [v7 setContentMode:1];
  [v7 setTintColor:v6];

  return v7;
}

@end