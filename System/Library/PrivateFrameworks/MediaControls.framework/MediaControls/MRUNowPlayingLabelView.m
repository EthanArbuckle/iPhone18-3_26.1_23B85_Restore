@interface MRUNowPlayingLabelView
- (BOOL)_increaseContrast;
- (BOOL)isLabelOversized:(id)a3;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeForTextInLabel:(id)a3 availableSize:(CGSize)a4;
- (CGSize)sizeThatFits:(CGSize)a3;
- (MRUNowPlayingLabelView)initWithFrame:(CGRect)a3;
- (UIEdgeInsets)marqueeFadeEdgeInsets;
- (double)estimatedHeight;
- (double)heightForTextInLabel:(id)a3;
- (id)viewForFirstBaselineLayout;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setContentScale:(double)a3;
- (void)setDeviceImage:(id)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setLayout:(int64_t)a3;
- (void)setMarqueeContentGap:(double)a3;
- (void)setMarqueeEnabled:(BOOL)a3;
- (void)setMarqueeFadeEdgeInsets:(UIEdgeInsets)a3;
- (void)setPlaceholder:(id)a3;
- (void)setRoute:(id)a3;
- (void)setShowDevice:(BOOL)a3;
- (void)setShowPlaceholder:(BOOL)a3;
- (void)setShowRoute:(BOOL)a3;
- (void)setShowSubtitle:(BOOL)a3;
- (void)setStylingProvider:(id)a3;
- (void)setSubtitle:(id)a3;
- (void)setTextAlignment:(int64_t)a3;
- (void)setTitle:(id)a3;
- (void)updateContentSizeCategory;
- (void)updateFonts;
- (void)updateMarquee;
- (void)updatePlaceholderTextAlignment;
- (void)updateVisibility;
- (void)updateVisualStyling;
@end

@implementation MRUNowPlayingLabelView

- (MRUNowPlayingLabelView)initWithFrame:(CGRect)a3
{
  v27[1] = *MEMORY[0x1E69E9840];
  v25.receiver = self;
  v25.super_class = MRUNowPlayingLabelView;
  v3 = [(MRUNowPlayingLabelView *)&v25 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DD250]);
    contentView = v3->_contentView;
    v3->_contentView = v4;

    v6 = [(UIView *)v3->_contentView layer];
    [v6 setAllowsGroupOpacity:0];

    [(UIView *)v3->_contentView setUserInteractionEnabled:0];
    [(MRUNowPlayingLabelView *)v3 addSubview:v3->_contentView];
    v7 = objc_alloc_init(MEMORY[0x1E6970930]);
    routeLabel = v3->_routeLabel;
    v3->_routeLabel = v7;

    [(UIView *)v3->_contentView addSubview:v3->_routeLabel];
    v9 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    heightSizingLabel = v3->_heightSizingLabel;
    v3->_heightSizingLabel = v9;

    [(UILabel *)v3->_heightSizingLabel setSizingRule:1];
    v11 = objc_alloc_init(MRUMarqueeLabel);
    titleMarqueeView = v3->_titleMarqueeView;
    v3->_titleMarqueeView = v11;

    [(MRUMarqueeLabel *)v3->_titleMarqueeView setContentGap:26.0];
    [(MRUMarqueeLabel *)v3->_titleMarqueeView setAnimationReferenceView:v3];
    [(UIView *)v3->_contentView addSubview:v3->_titleMarqueeView];
    v13 = objc_alloc_init(MRUMarqueeLabel);
    subtitleMarqueeView = v3->_subtitleMarqueeView;
    v3->_subtitleMarqueeView = v13;

    [(MRUMarqueeLabel *)v3->_subtitleMarqueeView setContentGap:26.0];
    [(MRUMarqueeLabel *)v3->_subtitleMarqueeView addCoordinatedMarqueeView:v3->_titleMarqueeView];
    [(MRUMarqueeLabel *)v3->_subtitleMarqueeView setAnimationReferenceView:v3];
    [(UIView *)v3->_contentView addSubview:v3->_subtitleMarqueeView];
    v15 = objc_alloc_init(MRUMarqueeLabel);
    placeholderMarqueeView = v3->_placeholderMarqueeView;
    v3->_placeholderMarqueeView = v15;

    [(MRUMarqueeLabel *)v3->_placeholderMarqueeView setContentGap:26.0];
    [(MRUMarqueeLabel *)v3->_placeholderMarqueeView setAnimationReferenceView:v3];
    [(MRUMarqueeLabel *)v3->_placeholderMarqueeView setWantsContentAwareTypesettingLanguage:1];
    [(MRUMarqueeLabel *)v3->_placeholderMarqueeView setSizingRule:1];
    [(UIView *)v3->_contentView addSubview:v3->_placeholderMarqueeView];
    v17 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    deviceImageView = v3->_deviceImageView;
    v3->_deviceImageView = v17;

    [(MRUNowPlayingLabelView *)v3 addSubview:v3->_deviceImageView];
    v3->_contentScale = 1.0;
    v27[0] = objc_opt_class();
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
    v20 = [(MRUNowPlayingLabelView *)v3 registerForTraitChanges:v19 withAction:sel_updateVisualStyling];

    v26 = objc_opt_class();
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];
    v22 = [(MRUNowPlayingLabelView *)v3 registerForTraitChanges:v21 withAction:sel_updateContentSizeCategory];

    v23 = [MEMORY[0x1E696AD88] defaultCenter];
    [v23 addObserver:v3 selector:sel_updateVisualStyling name:*MEMORY[0x1E69DD8B8] object:0];
    [v23 addObserver:v3 selector:sel_updateVisualStyling name:*MEMORY[0x1E69DD920] object:0];
    v3->_showRoute = 1;
    v3->_showSubtitle = 1;
    v3->_adjustsLabelsWhenHighlighted = 1;
    v3->_disablesLabelsLayoutAnimation = 1;
    [(MRUNowPlayingLabelView *)v3 setMarqueeFadeEdgeInsets:0.0, 3.0, 0.0, 3.0];
    [(MRUNowPlayingLabelView *)v3 updateContentSizeCategory];
    [(MRUNowPlayingLabelView *)v3 updateVisibility];
  }

  return v3;
}

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = MRUNowPlayingLabelView;
  [(MRUNowPlayingLabelView *)&v4 didMoveToWindow];
  v3 = [(MRUNowPlayingLabelView *)self window];

  if (!v3)
  {
    [(MRUNowPlayingLabelView *)self setMarqueeEnabled:0];
  }
}

- (void)layoutSubviews
{
  v122.receiver = self;
  v122.super_class = MRUNowPlayingLabelView;
  [(MRUNowPlayingLabelView *)&v122 layoutSubviews];
  [(MRUNowPlayingLabelView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(MRUNowPlayingLabelView *)self traitCollection];
  [v11 displayScale];
  rect_8 = v12;

  [(UIView *)self->_contentView setFrame:v4, v6, v8, v10];
  [(MPRouteLabel *)self->_routeLabel sizeThatFits:v8, v10];
  v14 = v13;
  v16 = v15;
  [(MRUNowPlayingLabelView *)self sizeForTextInLabel:self->_placeholderMarqueeView availableSize:v8, v10];
  rect_16 = v17;
  v119 = v18;
  [(MRUNowPlayingLabelView *)self sizeForTextInLabel:self->_titleMarqueeView availableSize:v8, v10];
  rect_24 = v19;
  v21 = v20;
  [(MRUNowPlayingLabelView *)self sizeForTextInLabel:self->_subtitleMarqueeView availableSize:v8, v10];
  v117 = v22;
  v118 = v23;
  layout = self->_layout;
  if ((layout - 4) >= 2)
  {
    if (layout)
    {
      v48 = [(NSString *)self->_title length];
      rect = v16;
      if (!self->_showPlaceholder && self->_showSubtitle)
      {
        [(NSString *)self->_subtitle length];
      }

      v111 = v21;
      v152.origin.x = v4;
      v152.origin.y = v6;
      v152.size.width = v8;
      v152.size.height = v10;
      CGRectGetHeight(v152);
      UIRoundToViewScale();
      UIRectInset();
      x = v153.origin.x;
      y = v153.origin.y;
      width = v153.size.width;
      height = v153.size.height;
      MinX = CGRectGetMinX(v153);
      v154.origin.x = x;
      v154.origin.y = y;
      v154.size.width = width;
      v154.size.height = height;
      MinY = CGRectGetMinY(v154);
      v155.origin.x = x;
      v155.origin.y = y;
      v155.size.width = width;
      v155.size.height = height;
      v88 = CGRectGetWidth(v155);
      if (v14 >= v88)
      {
        v14 = v88;
      }

      if (self->_textAlignment == 1)
      {
        v109 = rect_8;
        UIRectCenteredXInRectScale();
        MinX = v89;
        MinY = v90;
        v14 = v91;
        v93 = v92;
      }

      else
      {
        v93 = rect;
      }

      [(MRUNowPlayingLabelView *)self bounds];
      MPRectByApplyingUserInterfaceLayoutDirectionInRect();
      [(MPRouteLabel *)self->_routeLabel setFrame:?];
      if (self->_showRoute)
      {
        v156.origin.x = MinX;
        v156.origin.y = MinY;
        v156.size.width = v14;
        v156.size.height = v93;
        CGRectGetHeight(v156);
        UIRectInset();
        x = v94;
        y = v95;
        width = v96;
        height = v97;
      }

      v157.origin.x = x;
      v157.origin.y = y;
      v157.size.width = width;
      v157.size.height = height;
      v98 = CGRectGetMinX(v157);
      v158.origin.x = x;
      v158.origin.y = y;
      v158.size.width = width;
      v158.size.height = height;
      v99 = CGRectGetMinY(v158);
      v159.origin.x = x;
      v159.origin.y = y;
      v159.size.width = width;
      v159.size.height = height;
      [(MRUMarqueeLabel *)self->_placeholderMarqueeView setFrame:v98, v99, CGRectGetWidth(v159), v119];
      [(MRUMarqueeLabel *)self->_placeholderMarqueeView setContentSize:rect_16, v119];
      v160.origin.x = x;
      v160.origin.y = y;
      v160.size.width = width;
      v160.size.height = height;
      v100 = CGRectGetMinX(v160);
      v161.origin.x = x;
      v161.origin.y = y;
      v161.size.width = width;
      v161.size.height = height;
      v101 = CGRectGetMinY(v161);
      v162.origin.x = x;
      v162.origin.y = y;
      v162.size.width = width;
      v162.size.height = height;
      v102 = CGRectGetWidth(v162);
      [(MRUMarqueeLabel *)self->_titleMarqueeView setFrame:v100, v101, v102, v111];
      [(MRUMarqueeLabel *)self->_titleMarqueeView setContentSize:rect_24, v111];
      if (v48)
      {
        v163.origin.x = v100;
        v163.origin.y = v101;
        v163.size.width = v102;
        v163.size.height = v111;
        CGRectGetHeight(v163);
        UIRectInset();
        x = v103;
        y = v104;
        width = v105;
        height = v106;
      }

      v164.origin.x = x;
      v164.origin.y = y;
      v164.size.width = width;
      v164.size.height = height;
      v107 = CGRectGetMinX(v164);
      v165.origin.x = x;
      v165.origin.y = y;
      v165.size.width = width;
      v165.size.height = height;
      v108 = CGRectGetMinY(v165);
      v166.origin.x = x;
      v166.origin.y = y;
      v166.size.width = width;
      v166.size.height = height;
      v35 = CGRectGetWidth(v166);
      subtitleMarqueeView = self->_subtitleMarqueeView;
      v37 = v107;
      v38 = v108;
    }

    else
    {
      v123.origin.x = v4;
      v123.origin.y = v6;
      v123.size.width = v8;
      v123.size.height = v10;
      CGRectGetMinY(v123);
      v124.origin.x = v4;
      v124.origin.y = v6;
      v124.size.width = v8;
      v124.size.height = v10;
      CGRectGetWidth(v124);
      UIRectCenteredXInRectScale();
      [(MPRouteLabel *)self->_routeLabel setFrame:rect_8];
      v125.origin.x = v4;
      v125.origin.y = v6;
      v125.size.width = v8;
      v125.size.height = v10;
      recta = CGRectGetMinX(v125);
      v126.origin.x = v4;
      v126.origin.y = v6;
      v126.size.width = v8;
      v126.size.height = v10;
      v27 = CGRectGetMinY(v126);
      v127.origin.x = v4;
      v127.origin.y = v6;
      v127.size.width = v8;
      v127.size.height = v10;
      v28 = CGRectGetWidth(v127);
      [(MRUMarqueeLabel *)self->_titleMarqueeView setFrame:recta, v27, v28, v21];
      [(MRUMarqueeLabel *)self->_titleMarqueeView setContentSize:rect_24, v21];
      v128.origin.x = v4;
      v128.origin.y = v6;
      v128.size.width = v8;
      v128.size.height = v10;
      CGRectGetMinX(v128);
      v129.origin.x = v4;
      v129.origin.y = v6;
      v129.size.width = v8;
      v129.size.height = v10;
      CGRectGetWidth(v129);
      UIRectCenteredYInRectScale();
      [(MRUMarqueeLabel *)self->_placeholderMarqueeView setFrame:rect_8];
      [(MRUMarqueeLabel *)self->_placeholderMarqueeView setContentSize:rect_16, v119];
      v130.origin.x = recta;
      v130.origin.y = v27;
      v130.size.width = v28;
      v130.size.height = v21;
      CGRectGetHeight(v130);
      UIRectInset();
      v29 = v131.origin.x;
      v30 = v131.origin.y;
      v31 = v131.size.width;
      v32 = v131.size.height;
      v33 = CGRectGetMinX(v131);
      v132.origin.x = v29;
      v132.origin.y = v30;
      v132.size.width = v31;
      v132.size.height = v32;
      v34 = CGRectGetMinY(v132);
      v133.origin.x = v29;
      v133.origin.y = v30;
      v133.size.width = v31;
      v133.size.height = v32;
      v35 = CGRectGetWidth(v133);
      subtitleMarqueeView = self->_subtitleMarqueeView;
      v37 = v33;
      v38 = v34;
    }

    [(MRUMarqueeLabel *)subtitleMarqueeView setFrame:v37, v38, v35, v118];
    [(MRUMarqueeLabel *)self->_subtitleMarqueeView setContentSize:v117, v118];
  }

  else
  {
    v25 = [(NSString *)self->_title length];
    v26 = self->_showSubtitle && [(NSString *)self->_subtitle length]!= 0;
    v110 = v21;
    v39 = v119;
    v134.origin.x = v4;
    v134.origin.y = v6;
    v134.size.width = v8;
    v134.size.height = v10;
    CGRectGetHeight(v134);
    UIRoundToViewScale();
    UIRectInset();
    v40 = v135.origin.x;
    v41 = v135.origin.y;
    v42 = v135.size.width;
    v43 = v135.size.height;
    v44 = CGRectGetMinX(v135);
    v136.origin.x = v40;
    v136.origin.y = v41;
    v136.size.width = v42;
    v136.size.height = v43;
    v45 = CGRectGetMinY(v136);
    v137.origin.x = v40;
    v137.origin.y = v41;
    v137.size.width = v42;
    v137.size.height = v43;
    v46 = CGRectGetWidth(v137);
    if (self->_showRoute)
    {
      v47 = v119;
    }

    else
    {
      UIRectCenteredYInRect();
      v44 = v49;
      v45 = v50;
      v46 = v51;
    }

    v120 = v47;
    [(MRUMarqueeLabel *)self->_placeholderMarqueeView setFrame:v44, v45, v46];
    [(MRUMarqueeLabel *)self->_placeholderMarqueeView setContentSize:rect_16, v39];
    if (self->_showPlaceholder)
    {
      v138.origin.x = v44;
      v138.origin.y = v45;
      v138.size.width = v46;
      v138.size.height = v120;
      CGRectGetHeight(v138);
      UIRectInset();
      v40 = v52;
      v41 = v53;
      v42 = v54;
      v43 = v55;
    }

    v139.origin.x = v40;
    v139.origin.y = v41;
    v139.size.width = v42;
    v139.size.height = v43;
    v56 = CGRectGetMinX(v139);
    v140.origin.x = v40;
    v140.origin.y = v41;
    v140.size.width = v42;
    v140.size.height = v43;
    v57 = CGRectGetMinY(v140);
    v141.origin.x = v40;
    v141.origin.y = v41;
    v141.size.width = v42;
    v141.size.height = v43;
    v58 = CGRectGetWidth(v141);
    [(MRUMarqueeLabel *)self->_titleMarqueeView setFrame:v56, v57, v58, v110];
    [(MRUMarqueeLabel *)self->_titleMarqueeView setContentSize:rect_24, v110];
    if (v25)
    {
      v142.origin.x = v56;
      v142.origin.y = v57;
      v142.size.width = v58;
      v142.size.height = v110;
      CGRectGetHeight(v142);
      UIRectInset();
      v40 = v59;
      v41 = v60;
      v42 = v61;
      v43 = v62;
    }

    v143.origin.x = v40;
    v143.origin.y = v41;
    v143.size.width = v42;
    v143.size.height = v43;
    v63 = CGRectGetMinX(v143);
    v144.origin.x = v40;
    v144.origin.y = v41;
    v144.size.width = v42;
    v144.size.height = v43;
    v64 = CGRectGetMinY(v144);
    v145.origin.x = v40;
    v145.origin.y = v41;
    v145.size.width = v42;
    v145.size.height = v43;
    v65 = CGRectGetWidth(v145);
    [(MRUMarqueeLabel *)self->_subtitleMarqueeView setFrame:v63, v64, v65, v118];
    [(MRUMarqueeLabel *)self->_subtitleMarqueeView setContentSize:v117, v118];
    if (v26)
    {
      v146.origin.x = v63;
      v146.origin.y = v64;
      v146.size.width = v65;
      v146.size.height = v118;
      CGRectGetHeight(v146);
      UIRectInset();
      v40 = v66;
      v41 = v67;
      v42 = v68;
      v43 = v69;
    }

    [(UIImageView *)self->_deviceImageView sizeThatFits:v42, v43];
    v147.origin.x = v40;
    v147.origin.y = v41;
    v147.size.width = v42;
    v147.size.height = v43;
    CGRectGetMinX(v147);
    UIRectCenteredYInRect();
    v71 = v70;
    v73 = v72;
    v75 = v74;
    v77 = v76;
    [(MRUNowPlayingLabelView *)self bounds];
    MPRectByApplyingUserInterfaceLayoutDirectionInRect();
    [(UIImageView *)self->_deviceImageView setFrame:?];
    if (self->_showDevice)
    {
      v148.origin.x = v71;
      v148.origin.y = v73;
      v148.size.width = v75;
      v148.size.height = v77;
      CGRectGetWidth(v148);
      UIRectInset();
      v40 = v78;
      v41 = v79;
      v42 = v80;
      v43 = v81;
    }

    v149.origin.x = v40;
    v149.origin.y = v41;
    v149.size.width = v42;
    v149.size.height = v43;
    CGRectGetMinX(v149);
    v150.origin.x = v40;
    v150.origin.y = v41;
    v150.size.width = v42;
    v150.size.height = v43;
    CGRectGetMinY(v150);
    v151.origin.x = v40;
    v151.origin.y = v41;
    v151.size.width = v42;
    v151.size.height = v43;
    CGRectGetWidth(v151);
    [(MRUNowPlayingLabelView *)self bounds];
    MPRectByApplyingUserInterfaceLayoutDirectionInRect();
    [(MPRouteLabel *)self->_routeLabel setFrame:?];
  }

  if (self->_disablesLabelsLayoutAnimation)
  {
    v121[0] = MEMORY[0x1E69E9820];
    v121[1] = 3221225472;
    v121[2] = __40__MRUNowPlayingLabelView_layoutSubviews__block_invoke;
    v121[3] = &unk_1E7663898;
    v121[4] = self;
    [MEMORY[0x1E69DD250] performWithoutAnimation:v121];
  }
}

uint64_t __40__MRUNowPlayingLabelView_layoutSubviews__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 560) layoutIfNeeded];
  [*(*(a1 + 32) + 568) layoutIfNeeded];
  v2 = *(*(a1 + 32) + 576);

  return [v2 layoutIfNeeded];
}

- (CGSize)intrinsicContentSize
{
  [(MPRouteLabel *)self->_routeLabel sizeThatFits:1.79769313e308, 1.79769313e308];
  v4 = v3;
  [(MRUNowPlayingLabelView *)self sizeForTextInLabel:self->_placeholderMarqueeView availableSize:1.79769313e308, 1.79769313e308];
  v6 = v5;
  [(MRUNowPlayingLabelView *)self sizeForTextInLabel:self->_titleMarqueeView availableSize:1.79769313e308, 1.79769313e308];
  v8 = v7;
  [(MRUNowPlayingLabelView *)self sizeForTextInLabel:self->_subtitleMarqueeView availableSize:1.79769313e308, 1.79769313e308];
  v10 = fmax(fmax(fmax(v8, v9), v4), v6);

  [(MRUNowPlayingLabelView *)self sizeThatFits:v10, 1.79769313e308];
  result.height = v12;
  result.width = v11;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  if (self->_layout)
  {
    v5 = [(MPRouteLabel *)self->_routeLabel titleLabel:a3.width];
    v6 = [v5 font];
    [v6 lineHeight];

    [(MRUNowPlayingLabelView *)self heightForTextInLabel:self->_titleMarqueeView];
  }

  else
  {
    [(MRUNowPlayingLabelView *)self heightForTextInLabel:self->_titleMarqueeView, a3.width, a3.height];
  }

  [(MRUNowPlayingLabelView *)self heightForTextInLabel:self->_subtitleMarqueeView];
  UICeilToViewScale();
  v8 = v7;
  v9 = width;
  result.height = v8;
  result.width = v9;
  return result;
}

- (CGSize)sizeForTextInLabel:(id)a3 availableSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = a3;
  [v7 sizeThatFits:{width, height}];
  if (v8 >= width)
  {
    v9 = width;
  }

  else
  {
    v9 = v8;
  }

  if (self->_layout >= 2uLL)
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  [(MRUNowPlayingLabelView *)self heightForTextInLabel:v7];
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result.height = v14;
  result.width = v13;
  return result;
}

- (double)heightForTextInLabel:(id)a3
{
  v4 = a3;
  v5 = [v4 text];
  if (v5 && (v6 = v5, [v4 text], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isEqualToString:", &stru_1F1445548), v7, v6, !v8))
  {
    v12 = [v4 font];
    [(UILabel *)self->_heightSizingLabel setFont:v12];

    v13 = [v4 text];
    [(UILabel *)self->_heightSizingLabel setText:v13];

    [(UILabel *)self->_heightSizingLabel sizeThatFits:1.79769313e308, 1.79769313e308];
    v11 = v14;
  }

  else
  {
    v9 = [v4 font];
    [v9 lineHeight];
    UICeilToViewScale();
    v11 = v10;
  }

  return v11;
}

- (BOOL)isLabelOversized:(id)a3
{
  v4 = a3;
  [(MRUNowPlayingLabelView *)self heightForTextInLabel:v4];
  v6 = v5;
  [(MRUNowPlayingLabelView *)self intrinsicHeightForTextInLabel:v4];
  v8 = v7;

  return v6 > v8;
}

- (id)viewForFirstBaselineLayout
{
  if (self->_layout)
  {
    if (self->_showRoute)
    {
      v2 = [(MPRouteLabel *)self->_routeLabel titleLabel];
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  if (!self->_showPlaceholder)
  {
LABEL_6:
    v3 = 560;
    goto LABEL_7;
  }

  v3 = 576;
LABEL_7:
  v2 = [*(&self->super.super.super.super.isa + v3) viewForFirstBaselineLayout];
LABEL_8:

  return v2;
}

- (void)setRoute:(id)a3
{
  objc_storeStrong(&self->_route, a3);
  v5 = a3;
  [(MPRouteLabel *)self->_routeLabel setRoute:v5];

  [(MRUNowPlayingLabelView *)self invalidateIntrinsicContentSize];

  [(MRUNowPlayingLabelView *)self setNeedsLayout];
}

- (void)setTitle:(id)a3
{
  v4 = a3;
  v5 = [v4 copy];
  title = self->_title;
  self->_title = v5;

  [(MRUMarqueeLabel *)self->_titleMarqueeView setText:v4];
  [(MRUNowPlayingLabelView *)self updateFonts];
  [(MRUNowPlayingLabelView *)self invalidateIntrinsicContentSize];

  [(MRUNowPlayingLabelView *)self setNeedsLayout];
}

- (void)setSubtitle:(id)a3
{
  v4 = a3;
  v5 = [v4 copy];
  subtitle = self->_subtitle;
  self->_subtitle = v5;

  [(MRUMarqueeLabel *)self->_subtitleMarqueeView setText:v4];
  [(MRUNowPlayingLabelView *)self updateFonts];
  [(MRUNowPlayingLabelView *)self invalidateIntrinsicContentSize];

  [(MRUNowPlayingLabelView *)self setNeedsLayout];
}

- (void)setPlaceholder:(id)a3
{
  v4 = a3;
  v5 = [v4 copy];
  placeholder = self->_placeholder;
  self->_placeholder = v5;

  [(MRUMarqueeLabel *)self->_placeholderMarqueeView setText:v4];
  [(MRUNowPlayingLabelView *)self invalidateIntrinsicContentSize];

  [(MRUNowPlayingLabelView *)self setNeedsLayout];
}

- (void)setDeviceImage:(id)a3
{
  objc_storeStrong(&self->_deviceImage, a3);
  v5 = a3;
  [(UIImageView *)self->_deviceImageView setImage:v5];

  [(MRUNowPlayingLabelView *)self setNeedsLayout];
}

- (void)setShowRoute:(BOOL)a3
{
  if (self->_showRoute != a3)
  {
    self->_showRoute = a3;
    [(MRUNowPlayingLabelView *)self updateVisibility];

    [(MRUNowPlayingLabelView *)self setNeedsLayout];
  }
}

- (void)setShowSubtitle:(BOOL)a3
{
  if (self->_showSubtitle != a3)
  {
    self->_showSubtitle = a3;
    [(MRUNowPlayingLabelView *)self updateVisibility];

    [(MRUNowPlayingLabelView *)self setNeedsLayout];
  }
}

- (void)setShowPlaceholder:(BOOL)a3
{
  if (self->_showPlaceholder != a3)
  {
    self->_showPlaceholder = a3;
    [(MRUNowPlayingLabelView *)self updateVisualStyling];
    [(MRUNowPlayingLabelView *)self updateVisibility];

    [(MRUNowPlayingLabelView *)self setNeedsLayout];
  }
}

- (void)setShowDevice:(BOOL)a3
{
  if (self->_showDevice != a3)
  {
    self->_showDevice = a3;
    [(MRUNowPlayingLabelView *)self updateVisibility];

    [(MRUNowPlayingLabelView *)self setNeedsLayout];
  }
}

- (void)setMarqueeEnabled:(BOOL)a3
{
  if (self->_marqueeEnabled != a3)
  {
    self->_marqueeEnabled = a3;
    [(MRUNowPlayingLabelView *)self updateMarquee];
  }
}

- (void)setTextAlignment:(int64_t)a3
{
  if (self->_textAlignment != a3)
  {
    self->_textAlignment = a3;
    [(MPRouteLabel *)self->_routeLabel setTextAlignment:?];
    [(MRUMarqueeLabel *)self->_titleMarqueeView setTextAlignment:a3];
    [(MRUMarqueeLabel *)self->_subtitleMarqueeView setTextAlignment:a3];
    [(MRUNowPlayingLabelView *)self updatePlaceholderTextAlignment];

    [(MRUNowPlayingLabelView *)self setNeedsLayout];
  }
}

- (void)setLayout:(int64_t)a3
{
  if (self->_layout != a3)
  {
    self->_layout = a3;
    [(MRUNowPlayingLabelView *)self updateContentSizeCategory];
    [(MRUNowPlayingLabelView *)self updateMarquee];
    [(MRUNowPlayingLabelView *)self updateVisualStyling];
    [(MRUNowPlayingLabelView *)self updateVisibility];
    [(MRUNowPlayingLabelView *)self updatePlaceholderTextAlignment];

    [(MRUNowPlayingLabelView *)self setNeedsLayout];
  }
}

- (void)setMarqueeFadeEdgeInsets:(UIEdgeInsets)a3
{
  self->_marqueeFadeEdgeInsets = a3;
  v4 = fabs(a3.left);
  v5 = fabs(a3.right);
  [(MRUMarqueeLabel *)self->_titleMarqueeView setFadeEdgeInsets:0.0, v4, 0.0, v5];
  [(MRUMarqueeLabel *)self->_subtitleMarqueeView setFadeEdgeInsets:0.0, v4, 0.0, v5];
  placeholderMarqueeView = self->_placeholderMarqueeView;

  [(MRUMarqueeLabel *)placeholderMarqueeView setFadeEdgeInsets:0.0, v4, 0.0, v5];
}

- (void)setMarqueeContentGap:(double)a3
{
  self->_marqueeContentGap = a3;
  [(MRUMarqueeLabel *)self->_titleMarqueeView setContentGap:?];
  [(MRUMarqueeLabel *)self->_subtitleMarqueeView setContentGap:a3];
  placeholderMarqueeView = self->_placeholderMarqueeView;

  [(MRUMarqueeLabel *)placeholderMarqueeView setContentGap:a3];
}

- (void)setStylingProvider:(id)a3
{
  v5 = a3;
  if (self->_stylingProvider != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_stylingProvider, a3);
    [(MRUNowPlayingLabelView *)self updateVisualStyling];
    v5 = v6;
  }
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = MRUNowPlayingLabelView;
  [(MRUNowPlayingLabelView *)&v7 setHighlighted:?];
  if (self->_adjustsLabelsWhenHighlighted)
  {
    if (v3)
    {
      v5 = [(MRUNowPlayingLabelView *)self contentView];
      [v5 setAlpha:0.2];
    }

    else
    {
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __41__MRUNowPlayingLabelView_setHighlighted___block_invoke;
      v6[3] = &unk_1E7663898;
      v6[4] = self;
      [MEMORY[0x1E69DD250] animateWithDuration:v6 animations:0.25];
    }
  }
}

void __41__MRUNowPlayingLabelView_setHighlighted___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) contentView];
  [v1 setAlpha:1.0];
}

- (double)estimatedHeight
{
  v3 = [(MRUMarqueeLabel *)self->_titleMarqueeView font];
  [v3 lineHeight];

  v4 = [(MRUMarqueeLabel *)self->_subtitleMarqueeView font];
  [v4 lineHeight];

  if (self->_layout)
  {
    v5 = [(MPRouteLabel *)self->_routeLabel titleLabel];
    v6 = [v5 font];
    [v6 lineHeight];
  }

  UICeilToViewScale();
  return result;
}

- (void)setContentScale:(double)a3
{
  if (vabdd_f64(self->_contentScale, a3) > 2.22044605e-16)
  {
    self->_contentScale = a3;
    [(MRUNowPlayingLabelView *)self updateContentSizeCategory];
  }
}

- (BOOL)_increaseContrast
{
  if (UIAccessibilityDarkerSystemColorsEnabled())
  {
    return 1;
  }

  return UIAccessibilityIsReduceTransparencyEnabled();
}

- (void)updateVisualStyling
{
  stylingProvider = self->_stylingProvider;
  if (self->_layout == 3)
  {
    if (self->_showPlaceholder)
    {
      if ([(MRUNowPlayingLabelView *)self _increaseContrast])
      {
        v4 = 1;
      }

      else
      {
        v4 = 2;
      }
    }

    else
    {
      v4 = 1;
    }

    v11 = [(MPRouteLabel *)self->_routeLabel contentView];
    v12 = [(MRUNowPlayingLabelView *)self traitCollection];
    [(MRUVisualStylingProvider *)stylingProvider applyStyle:v4 toView:v11 traitCollection:v12];

    v5 = 2;
  }

  else
  {
    v5 = 1;
    if ([(MRUNowPlayingLabelView *)self _increaseContrast])
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }

    v7 = [(MPRouteLabel *)self->_routeLabel contentView];
    v8 = [(MRUNowPlayingLabelView *)self traitCollection];
    [(MRUVisualStylingProvider *)stylingProvider applyStyle:v6 toView:v7 traitCollection:v8];

    v9 = self->_stylingProvider;
    deviceImageView = self->_deviceImageView;
    v11 = [(MRUNowPlayingLabelView *)self traitCollection];
    [(MRUVisualStylingProvider *)v9 applyStyle:2 toView:deviceImageView traitCollection:v11];
  }

  v13 = self->_stylingProvider;
  titleMarqueeView = self->_titleMarqueeView;
  v15 = [(MRUNowPlayingLabelView *)self traitCollection];
  [(MRUVisualStylingProvider *)v13 applyStyle:0 toView:titleMarqueeView traitCollection:v15];

  v16 = self->_stylingProvider;
  subtitleMarqueeView = self->_subtitleMarqueeView;
  v18 = [(MRUNowPlayingLabelView *)self traitCollection];
  [(MRUVisualStylingProvider *)v16 applyStyle:v5 toView:subtitleMarqueeView traitCollection:v18];

  v19 = self->_stylingProvider;
  placeholderMarqueeView = self->_placeholderMarqueeView;
  v21 = [(MRUNowPlayingLabelView *)self traitCollection];
  [(MRUVisualStylingProvider *)v19 applyStyle:1 toView:placeholderMarqueeView traitCollection:v21];
}

- (void)updateContentSizeCategory
{
  layout = self->_layout;
  if (layout <= 2)
  {
    switch(layout)
    {
      case 0:
        v4 = [MEMORY[0x1E69DB878] mru_routeFont];
        v5 = [MEMORY[0x1E69DB878] mru_smallTitleFont];
        v6 = [MEMORY[0x1E69DB878] mru_smallSubtitleFont];
        v7 = [MEMORY[0x1E69DB878] mru_smallTitleFont];
        goto LABEL_15;
      case 1:
        v11 = [MEMORY[0x1E69DB878] mru_titleFont];
        v4 = [MEMORY[0x1E69DB878] mru_subtitleFont];
        v7 = v11;
        v5 = v7;
        v6 = v4;
        goto LABEL_15;
      case 2:
        v4 = [MEMORY[0x1E69DB878] mru_expandedRouteFont];
        v5 = [MEMORY[0x1E69DB878] mru_expandedTitleFont];
        v6 = [MEMORY[0x1E69DB878] mru_expandedSubtitleFont];
        v7 = [MEMORY[0x1E69DB878] mru_expandedTitleFont];
LABEL_15:
        v12 = v7;
        goto LABEL_18;
    }

    goto LABEL_12;
  }

  switch(layout)
  {
    case 3:
      v10 = [MEMORY[0x1E69DB878] mru_ambientTitleFont];
      v6 = [MEMORY[0x1E69DB878] mru_ambientSubtitleFont];
      v4 = [MEMORY[0x1E69DB878] mru_titleFont];
LABEL_13:
      v7 = v10;
      v5 = v7;
      goto LABEL_15;
    case 4:
      v8 = [MEMORY[0x1E69DB878] mru_controlCenterMediumTitleFontWithScale:self->_contentScale];
      v9 = [MEMORY[0x1E69DB878] mru_controlCenterMediumSubtitleFontWithScale:self->_contentScale];
      break;
    case 5:
      v8 = [MEMORY[0x1E69DB878] mru_controlCenterLargeTitleFontWithScale:self->_contentScale];
      v9 = [MEMORY[0x1E69DB878] mru_controlCenterLargeSubtitleFontWithScale:self->_contentScale];
      break;
    default:
LABEL_12:
      v4 = [MEMORY[0x1E69DB878] mru_routeFont];
      v10 = [MEMORY[0x1E69DB878] mru_titleFont];
      v6 = [MEMORY[0x1E69DB878] mru_subtitleFont];
      goto LABEL_13;
  }

  v13 = v9;
  v5 = v8;
  v4 = v13;
  v6 = v4;
  v12 = v5;
LABEL_18:
  routeFont = self->_routeFont;
  self->_routeFont = v4;
  v20 = v4;

  titleFont = self->_titleFont;
  self->_titleFont = v5;
  v16 = v5;

  placeholderFont = self->_placeholderFont;
  self->_placeholderFont = v12;
  v18 = v12;

  subtitleFont = self->_subtitleFont;
  self->_subtitleFont = v6;

  [(MRUNowPlayingLabelView *)self updateFonts];
}

- (void)updateFonts
{
  [(MPRouteLabel *)self->_routeLabel setFont:self->_routeFont];
  v3 = [MEMORY[0x1E69DCAD8] configurationWithFont:self->_routeFont scale:1];
  [(UIImageView *)self->_deviceImageView setSymbolConfiguration:v3];

  [(MRUMarqueeLabel *)self->_placeholderMarqueeView setFont:self->_placeholderFont];
  if ([(MRUNowPlayingLabelView *)self isLabelOversized:self->_titleMarqueeView])
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = ![(MRUNowPlayingLabelView *)self isLabelOversized:self->_subtitleMarqueeView];
  }

  titleFont = self->_titleFont;
  if (self->_layout || (v4 & 1) != 0)
  {
    [(MRUMarqueeLabel *)self->_titleMarqueeView setFont:self->_titleFont];
    subtitleFont = self->_subtitleFont;
    subtitleMarqueeView = self->_subtitleMarqueeView;

    [(MRUMarqueeLabel *)subtitleMarqueeView setFont:subtitleFont];
  }

  else
  {
    [(UIFont *)self->_titleFont pointSize];
    v7 = [(UIFont *)titleFont fontWithSize:v6 * 0.9];
    [(MRUMarqueeLabel *)self->_titleMarqueeView setFont:v7];

    v8 = self->_subtitleFont;
    [(UIFont *)v8 pointSize];
    v12 = [(UIFont *)v8 fontWithSize:0.9 * v9];
    [(MRUMarqueeLabel *)self->_subtitleMarqueeView setFont:v12];
  }
}

- (void)updateMarquee
{
  if (self->_layout > 1uLL)
  {
    [(MRUMarqueeLabel *)self->_titleMarqueeView setMarqueeEnabled:self->_marqueeEnabled];
    [(MRUMarqueeLabel *)self->_subtitleMarqueeView setMarqueeEnabled:self->_marqueeEnabled];
    marqueeEnabled = self->_marqueeEnabled;
  }

  else
  {
    [(MRUMarqueeLabel *)self->_titleMarqueeView setMarqueeEnabled:0];
    [(MRUMarqueeLabel *)self->_subtitleMarqueeView setMarqueeEnabled:0];
    marqueeEnabled = 0;
  }

  placeholderMarqueeView = self->_placeholderMarqueeView;

  [(MRUMarqueeLabel *)placeholderMarqueeView setMarqueeEnabled:marqueeEnabled];
}

- (void)updateVisibility
{
  v3 = 0.0;
  if (self->_showRoute)
  {
    v3 = 1.0;
  }

  [(MPRouteLabel *)self->_routeLabel setAlpha:v3];
  [(MRUMarqueeLabel *)self->_titleMarqueeView setHidden:self->_showPlaceholder];
  v4 = 1;
  if (!self->_showPlaceholder)
  {
    v4 = !self->_showSubtitle;
  }

  [(MRUMarqueeLabel *)self->_subtitleMarqueeView setHidden:v4];
  [(MRUMarqueeLabel *)self->_placeholderMarqueeView setHidden:!self->_showPlaceholder];
  deviceImageView = self->_deviceImageView;
  v6 = !self->_showDevice;

  [(UIImageView *)deviceImageView setHidden:v6];
}

- (void)updatePlaceholderTextAlignment
{
  if (self->_layout)
  {
    textAlignment = self->_textAlignment;
  }

  else
  {
    textAlignment = 1;
  }

  [(MRUMarqueeLabel *)self->_placeholderMarqueeView setTextAlignment:textAlignment];
}

- (UIEdgeInsets)marqueeFadeEdgeInsets
{
  top = self->_marqueeFadeEdgeInsets.top;
  left = self->_marqueeFadeEdgeInsets.left;
  bottom = self->_marqueeFadeEdgeInsets.bottom;
  right = self->_marqueeFadeEdgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end