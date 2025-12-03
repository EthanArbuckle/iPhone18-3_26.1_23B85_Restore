@interface PXZoomableInlineHeaderView
+ (CGSize)sizeWithConfiguration:(id)configuration preferredContentSizeCategory:(int64_t)category;
+ (double)_heightForStyle:(unint64_t)style;
+ (id)_titleFontForStyle:(unint64_t)style preferredContentSizeCategory:(int64_t)category;
- (CGRect)clippingRect;
- (PXZoomableInlineHeaderView)initWithFrame:(CGRect)frame;
- (void)_commonLayoutSubviews;
- (void)_configureViews;
- (void)_setupBackgroundView;
- (void)_setupViews;
- (void)_updateButtonWithConfiguration:(id)configuration;
- (void)_updateConfiguration;
- (void)layoutSubviews;
- (void)setHidden:(BOOL)hidden;
- (void)setUserData:(id)data;
- (void)traitEnvironment:(id)environment didChangePreviousTraitCollection:(id)collection;
@end

@implementation PXZoomableInlineHeaderView

- (CGRect)clippingRect
{
  x = self->_clippingRect.origin.x;
  y = self->_clippingRect.origin.y;
  width = self->_clippingRect.size.width;
  height = self->_clippingRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)_setupBackgroundView
{
  v3 = +[PXZoomablePhotosSettings sharedInstance];
  enableHeaderBlur = [v3 enableHeaderBlur];

  if (enableHeaderBlur)
  {
    v5 = objc_alloc(MEMORY[0x277D75D68]);
    [(PXZoomableInlineHeaderView *)self bounds];
    v6 = [v5 initWithFrame:?];
    v7 = [MEMORY[0x277D75210] _effectWithBlurRadius:20.0 scale:0.25];
    [(UIVisualEffectView *)v6 setEffect:v7];

    [(UIVisualEffectView *)v6 _setGroupName:@"PXZoomableInlineHeaderGroupName"];
    effectView = self->_effectView;
    self->_effectView = v6;
    v9 = v6;

    v13 = v9;
  }

  else
  {
    v10 = objc_alloc(MEMORY[0x277D75D18]);
    [(PXZoomableInlineHeaderView *)self bounds];
    v11 = [v10 initWithFrame:?];
    [(UIView *)v11 setAutoresizingMask:18];
    tintView = self->_tintView;
    self->_tintView = v11;
    v13 = v11;

    v9 = self->_tintView;
  }

  [(PXZoomableInlineHeaderView *)self addSubview:v9];
}

- (void)traitEnvironment:(id)environment didChangePreviousTraitCollection:(id)collection
{
  collectionCopy = collection;
  traitCollection = [(PXZoomableInlineHeaderView *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  preferredContentSizeCategory2 = [collectionCopy preferredContentSizeCategory];

  if (preferredContentSizeCategory != preferredContentSizeCategory2)
  {

    [(PXZoomableInlineHeaderView *)self _updateConfiguration];
  }
}

- (void)_commonLayoutSubviews
{
  if (([(PXZoomableInlineHeaderView *)self isHidden]& 1) != 0)
  {
    return;
  }

  userData = [(PXZoomableInlineHeaderView *)self userData];
  style = [userData style];
  effectiveUserInterfaceLayoutDirection = [(PXZoomableInlineHeaderView *)self effectiveUserInterfaceLayoutDirection];
  v5 = self->_titleLabel;
  v6 = self->_subtitleLabel;
  [(PXZoomableInlineHeaderView *)self bounds];
  v8 = v7 + -16.0;
  v9 = *MEMORY[0x277CBF3A8];
  v10 = *(MEMORY[0x277CBF3A8] + 8);
  [(UILabel *)self->_titleLabel sizeThatFits:*MEMORY[0x277CBF3A8], v10];
  [(UILabel *)self->_titleLabel alignmentRectInsets];
  PXEdgeInsetsInsetSize();
  v12 = v11;
  v14 = v13;
  [(UILabel *)self->_subtitleLabel sizeThatFits:v9, v10];
  [(UILabel *)self->_subtitleLabel alignmentRectInsets];
  PXEdgeInsetsInsetSize();
  if (v12 >= v8)
  {
    v17 = v8;
  }

  else
  {
    v17 = v12;
  }

  if (v15 >= v8)
  {
    v15 = v8;
  }

  v88 = v15;
  v89 = v16;
  [objc_opt_class() _heightForStyle:style];
  v19 = v18;
  v20 = v18 * 0.5 - v14 * 0.5;
  v92.origin.x = 8.0;
  v92.origin.y = v20;
  v92.size.width = v17;
  v92.size.height = v14;
  MaxX = CGRectGetMaxX(v92);
  [(PXZoomableInlineHeaderView *)self px_screenScale];
  effectView = self->_effectView;
  if (!effectView)
  {
    effectView = self->_tintView;
  }

  v23 = MaxX + 4.0;
  v24 = effectView;
  text = [(UILabel *)self->_subtitleLabel text];
  v26 = [text length];

  v27 = v14;
  v28 = v17;
  v29 = v20;
  v30 = 8.0;
  if (v26)
  {
    v31 = v20;
    v32 = v17;
    v33 = v14;
    v93.origin.x = MaxX + 4.0;
    v93.origin.y = v20;
    v93.size.width = v88;
    v93.size.height = v89;
    *&v30 = CGRectUnion(*&v30, v93);
  }

  v34 = 8.0;
  v35 = CGRectGetMaxX(*&v30) + 8.0;
  v36 = PXRectRoundToPixel();
  if (effectiveUserInterfaceLayoutDirection == 1)
  {
    v85 = v40;
    v86 = v37;
    v83 = v38;
    v84 = v39;
    v41 = MEMORY[0x21CEE0310](v36, 8.0, v20, v17, v14, 0.0, 0.0, v35, v19);
    v43 = v42;
    v45 = v44;
    v81 = v46;
    v90 = MEMORY[0x21CEE0310](v23, v20, v88, v89, 0.0, 0.0, v35, v19);
    v48 = v47;
    v79 = v50;
    v80 = v49;
    bounds = [(PXZoomableInlineHeaderView *)self bounds];
    v53 = v52;
    v55 = v54;
    v57 = v56;
    v59 = v58;
    v34 = MEMORY[0x21CEE0310](bounds, v41, v43, v45, v81, v52, v54, v56, v58);
    v82 = v60;
    v17 = v61;
    v14 = v62;
    v63 = MEMORY[0x21CEE0310](v90, v48, v80, v79, v53, v55, v57, v59);
    v20 = v64;
    v89 = v65;
    v66 = v53;
    v68 = v67;
    v69 = v57;
    v23 = v63;
    v70 = v59;
    v71 = v82;
    MEMORY[0x21CEE0310](v86, v83, v84, v85, v66, v55, v69, v70);
  }

  else
  {
    v71 = v20;
    v68 = v88;
  }

  [(UIVisualEffectView *)v24 setFrame:?];
  [(UILabel *)self->_titleLabel frameForAlignmentRect:v34, v71, v17, v14];
  PXRectRoundToPixel();
  [(UILabel *)self->_titleLabel setFrame:?];
  [(UILabel *)self->_subtitleLabel frameForAlignmentRect:v23, v20, v68, v89];
  PXRectRoundToPixel();
  [(UILabel *)self->_subtitleLabel setFrame:?];
  text2 = [(UILabel *)v5 text];
  if (![text2 length])
  {
    text3 = [(UILabel *)v6 text];
    v76 = [text3 length];
    v74 = v76 == 0;

    tintView = self->_effectView;
    if (tintView)
    {
      goto LABEL_18;
    }

    if (!v76)
    {
      tintView = self->_tintView;
      v77 = 0.0;
      goto LABEL_19;
    }

LABEL_21:
    v78 = +[PXZoomablePhotosSettings sharedInstance];
    [v78 zoomingHeaderTintOpacity];
    [(UIView *)self->_tintView setAlpha:?];

    goto LABEL_22;
  }

  tintView = self->_effectView;
  if (!tintView)
  {
    goto LABEL_21;
  }

  v74 = 0;
LABEL_18:
  v77 = !v74;
LABEL_19:
  [(UIVisualEffectView *)tintView setAlpha:v77];
LABEL_22:
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PXZoomableInlineHeaderView;
  [(PXZoomableInlineHeaderView *)&v3 layoutSubviews];
  [(PXZoomableInlineHeaderView *)self _commonLayoutSubviews];
}

- (void)_updateButtonWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (self->_effectView)
  {
    [(PXZoomableInlineHeaderView *)self _setEffectViewCornerRadius:8.0];
  }

  else
  {
    layer = [(UIView *)self->_tintView layer];
    [layer setCornerRadius:8.0];
    [layer setCornerCurve:*MEMORY[0x277CDA138]];
  }

  traitCollection = [(PXZoomableInlineHeaderView *)self traitCollection];
  v6 = PXPreferredContentSizeCategoryFromUITraitCollection();

  style = [configurationCopy style];
  v8 = [objc_opt_class() _titleFontForStyle:style preferredContentSizeCategory:v6];
  p_titleLabel = &self->_titleLabel;
  [(UILabel *)self->_titleLabel setFont:v8];

  v10 = [objc_opt_class() _subtitleFontForStyle:style preferredContentSizeCategory:v6];
  p_subtitleLabel = &self->_subtitleLabel;
  [(UILabel *)self->_subtitleLabel setFont:v10];

  subtitle = [configurationCopy subtitle];
  -[UILabel setHidden:](*p_subtitleLabel, "setHidden:", [subtitle length] == 0);

  if ([configurationCopy swapTitleAndSubtitle] && (-[UILabel isHidden](*p_subtitleLabel, "isHidden") & 1) == 0)
  {
    subtitle2 = [configurationCopy subtitle];
    [(UILabel *)*p_titleLabel setText:subtitle2];

    title = [configurationCopy title];
    v15 = p_titleLabel;
    p_titleLabel = p_subtitleLabel;
  }

  else
  {
    title2 = [configurationCopy title];
    [(UILabel *)*p_titleLabel setText:title2];

    title = [configurationCopy subtitle];
    v15 = p_subtitleLabel;
  }

  [(UILabel *)*p_subtitleLabel setText:title];

  [*v15 setAlpha:0.5];
  [(UILabel *)*p_titleLabel setAlpha:1.0];
}

- (void)_configureViews
{
  if (self->_tintView)
  {
    _tintViewBackgroundColor = [(PXZoomableInlineHeaderView *)self _tintViewBackgroundColor];
    [(UIView *)self->_tintView setBackgroundColor:_tintViewBackgroundColor];

    v4 = +[PXZoomablePhotosSettings sharedInstance];
    [v4 zoomingHeaderTintOpacity];
    [(UIView *)self->_tintView setAlpha:?];
  }

  labelColor = [MEMORY[0x277D75348] labelColor];
  [(UILabel *)self->_titleLabel setTextColor:labelColor];

  labelColor2 = [MEMORY[0x277D75348] labelColor];
  [(UILabel *)self->_subtitleLabel setTextColor:labelColor2];
}

- (void)_setupViews
{
  layer = [(PXZoomableInlineHeaderView *)self layer];
  [layer setAllowsGroupOpacity:0];

  [(PXZoomableInlineHeaderView *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(PXZoomableInlineHeaderView *)self _setupBackgroundView];
  v12 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v5, v7, v9, v11}];
  blackColor = [MEMORY[0x277D75348] blackColor];
  [(UILabel *)v12 setTextColor:blackColor];

  [(UILabel *)v12 setLineBreakMode:4];
  [(UILabel *)v12 setTextAlignment:0];
  [(UILabel *)v12 setNumberOfLines:1];
  titleLabel = self->_titleLabel;
  self->_titleLabel = v12;
  v15 = v12;

  [(PXZoomableInlineHeaderView *)self addSubview:v15];
  v16 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v5, v7, v9, v11}];
  blackColor2 = [MEMORY[0x277D75348] blackColor];
  [(UILabel *)v16 setTextColor:blackColor2];

  [(UILabel *)v16 setLineBreakMode:4];
  [(UILabel *)v16 setTextAlignment:0];
  [(UILabel *)v16 setNumberOfLines:1];
  subtitleLabel = self->_subtitleLabel;
  self->_subtitleLabel = v16;
  v19 = v16;

  [(PXZoomableInlineHeaderView *)self addSubview:v19];

  [(PXZoomableInlineHeaderView *)self _platformSpecificViewSetup];
}

- (void)setHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  if ([(PXZoomableInlineHeaderView *)self isHidden]!= hidden)
  {
    v5.receiver = self;
    v5.super_class = PXZoomableInlineHeaderView;
    [(PXZoomableInlineHeaderView *)&v5 setHidden:hiddenCopy];
    [(PXZoomableInlineHeaderView *)self setNeedsLayout];
  }
}

- (void)_updateConfiguration
{
  [(PXZoomableInlineHeaderView *)self _configureViews];
  userData = [(PXZoomableInlineHeaderView *)self userData];
  [(PXZoomableInlineHeaderView *)self _updateButtonWithConfiguration:userData];

  [(PXZoomableInlineHeaderView *)self setNeedsLayout];
}

- (void)setUserData:(id)data
{
  dataCopy = data;
  if (self->_userData != dataCopy)
  {
    v6 = dataCopy;
    objc_storeStrong(&self->_userData, data);
    [(PXZoomableInlineHeaderView *)self _updateConfiguration];
    dataCopy = v6;
  }
}

- (PXZoomableInlineHeaderView)initWithFrame:(CGRect)frame
{
  v9[1] = *MEMORY[0x277D85DE8];
  v8.receiver = self;
  v8.super_class = PXZoomableInlineHeaderView;
  v3 = [(PXZoomableInlineHeaderView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(PXZoomableInlineHeaderView *)v3 setBackgroundColor:clearColor];

    v9[0] = objc_opt_class();
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
    v6 = [(PXZoomableInlineHeaderView *)v3 registerForTraitChanges:v5 withAction:sel_traitEnvironment_didChangePreviousTraitCollection_];

    [(PXZoomableInlineHeaderView *)v3 _setupViews];
  }

  return v3;
}

+ (double)_heightForStyle:(unint64_t)style
{
  if (style == 1)
  {
    return 34.0;
  }

  if (style)
  {
    v13 = v4;
    v14 = v3;
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXZoomableInlineHeaderView.m" lineNumber:148 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  return 28.0;
}

+ (CGSize)sizeWithConfiguration:(id)configuration preferredContentSizeCategory:(int64_t)category
{
  [self _heightForStyle:{objc_msgSend(configuration, "style")}];
  v5 = v4;
  v6 = 200.0;
  result.height = v5;
  result.width = v6;
  return result;
}

+ (id)_titleFontForStyle:(unint64_t)style preferredContentSizeCategory:(int64_t)category
{
  if (PXTitleFontForInlineHeaderStyle_onceToken != -1)
  {
    dispatch_once(&PXTitleFontForInlineHeaderStyle_onceToken, &__block_literal_global_8854);
  }

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:style];
  v6 = [PXTitleFontForInlineHeaderStyle_fontCache objectForKey:v5];
  if (!v6)
  {
    v7 = UIContentSizeCategoryFromPXPreferredContentSizeCategory();
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v7);
    v9 = MEMORY[0x277D76818];
    if (!IsAccessibilityCategory)
    {
      v9 = MEMORY[0x277D76828];
    }

    v6 = [MEMORY[0x277D74300] px_preferredFontForTextStyle:*MEMORY[0x277D76918] preferredContentSizeCategory:v7 maxContentSizeCategory:*v9 withSymbolicTraits:32770];
    [PXTitleFontForInlineHeaderStyle_fontCache setObject:v6 forKey:v5];
  }

  return v6;
}

@end