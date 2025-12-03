@interface HUDownloadControl
+ (CGSize)_expectedSizeForControlStatusType:(int64_t)type controlTitle:(id)title hasControlImage:(BOOL)image displayScale:(double)scale preferredHeight:(double)height minTitleLength:(double)length;
+ (id)_imageNamed:(id)named compatibleWithTraitCollection:(id)collection;
+ (id)_newControlTitleLabel;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (CGSize)intrinsicContentSize;
- (CGSize)maximumSizeWithPreferredHeight:(double)height;
- (HUDownloadControl)initWithFrame:(CGRect)frame;
- (HUDownloadControlStatus)controlStatus;
- (id)_currentContentSuperview;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)titleForControlStatusType:(int64_t)type;
- (void)_beginTransientContentViewTransaction;
- (void)_endTransientContentViewTransaction;
- (void)_updateBackgroundViewCornerRadius;
- (void)_updateControlImageViewAnimation;
- (void)_updateControlStatusProperties;
- (void)_updateControlTitleLabelVisualProperties;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setAllowsAddImage:(BOOL)image;
- (void)setContentHorizontalAlignment:(int64_t)alignment;
- (void)setControlStatus:(HUDownloadControlStatus)status animated:(BOOL)animated;
- (void)setDisplayStyle:(int64_t)style;
- (void)setFilledTintColor:(id)color;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setTitle:(id)title forControlStatusType:(int64_t)type;
- (void)tintColorDidChange;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation HUDownloadControl

- (HUDownloadControl)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = HUDownloadControl;
  v3 = [(HUDownloadControl *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_allowsAddImage = 1;
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    filledTintColor = v4->_filledTintColor;
    v4->_filledTintColor = whiteColor;

    v4->_minTitleLength = 0.0;
  }

  [(HUDownloadControl *)v4 setScaleImageForAccessibility:1];
  return v4;
}

- (void)dealloc
{
  if (self->_controlStatus.statusType == 3)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter removeObserver:self name:*MEMORY[0x277D76758] object:0];
  }

  v4.receiver = self;
  v4.super_class = HUDownloadControl;
  [(HUDownloadControl *)&v4 dealloc];
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = HUDownloadControl;
  [(HUDownloadControl *)&v3 didMoveToWindow];
  if ([(HUDownloadControl *)self _isInAWindow])
  {
    [(HUDownloadControl *)self _updateControlImageViewAnimation];
  }
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  if ([(HUDownloadControl *)self pointInside:event withEvent:test.x, test.y]&& [(HUDownloadControl *)self isEnabled]&& ([(HUDownloadControl *)self isHidden]& 1) == 0)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  [(HUDownloadControl *)self bounds];
  v7 = v15.origin.x;
  v8 = v15.origin.y;
  width = v15.size.width;
  height = v15.size.height;
  if (CGRectIsEmpty(v15))
  {
    return 0;
  }

  v16.origin.x = v7;
  v16.origin.y = v8;
  v16.size.width = width;
  v16.size.height = height;
  v17 = CGRectInset(v16, -16.0, -16.0);
  v14.x = x;
  v14.y = y;
  if (!CGRectContainsPoint(v17, v14))
  {
    return 0;
  }

  if (self->_controlImageView)
  {
    return 1;
  }

  text = [(UILabel *)self->_controlTitleLabel text];
  if ([text length])
  {
    v11 = 1;
  }

  else
  {
    v11 = self->_downloadProgressView != 0;
  }

  return v11;
}

- (void)layoutSubviews
{
  v189.receiver = self;
  v189.super_class = HUDownloadControl;
  [(HUDownloadControl *)&v189 layoutSubviews];
  [(HUDownloadControl *)self bounds];
  v4 = v3;
  v6 = v5;
  r1 = v7;
  v9 = v8;
  traitCollection = [(HUDownloadControl *)self traitCollection];
  [traitCollection displayScale];
  SafeScaleForValue = HUFloatGetSafeScaleForValue(v11);

  [(UILabel *)self->_controlTitleLabel frame];
  v160 = v13;
  v171 = v14;
  [(UILabel *)self->_controlTitleLabel sizeThatFits:1.79769313e308, 1.79769313e308];
  v164 = v15;
  v166 = v16;
  v17 = *MEMORY[0x277CBF398];
  v18 = *(MEMORY[0x277CBF398] + 8);
  v20 = *(MEMORY[0x277CBF398] + 16);
  v19 = *(MEMORY[0x277CBF398] + 24);
  contentHorizontalAlignment = [(HUDownloadControl *)self contentHorizontalAlignment];
  controlImageView = self->_controlImageView;
  v174 = v17;
  v175 = v6;
  v181 = v19;
  v184 = v4;
  v179 = v18;
  if (controlImageView)
  {
    rect_8 = v20;
    statusType = self->_controlStatus.statusType;
    [(UIImageView *)controlImageView frame];
    text = [(UILabel *)self->_controlTitleLabel text];
    v25 = [text length];

    v26 = fmin(r1, 45.0);
    v27 = fmin(v9, 45.0);
    v176 = v9;
    if (v25)
    {
      v28 = v9;
    }

    else
    {
      v28 = v27;
    }

    if (v25)
    {
      v29 = r1;
    }

    else
    {
      v29 = v26;
    }

    [(UIImageView *)self->_controlImageView sizeThatFits:v29, v28];
    p_controlImageEdgeInsets = &self->_controlImageEdgeInsets;
    rect_16 = v31;
    rect_24 = v32;
    v33 = v4;
    v34 = v6;
    UIRectCenteredYInRectScale();
    rect = v35;
    v37 = v36;
    v162 = v39;
    v163 = v38;
    text2 = [(UILabel *)self->_controlTitleLabel text];
    v41 = [text2 length];

    v173 = SafeScaleForValue;
    if (v41)
    {
      UIRectCenteredYInRectScale();
      v167 = v42;
      v172 = v43;
      v177 = v44;
      v46 = v45;
      v47 = [MEMORY[0x277D74300] preferredFontForTextStyle:{*MEMORY[0x277D76918], *&SafeScaleForValue}];
      [v47 _scaledValueForValue:8.0];
      v48 = v37;
      v49 = v34 + 0.0;
      v51 = v29 - (v50 + 5.0);

      v159 = v28;
      v161 = v29;
      v52 = v48;
      v165 = v48;
      r1a = v46;
      v53 = v28;
      v154 = v51;
      if (contentHorizontalAlignment == 2)
      {
        v77 = v46;
        v194.origin.x = v184 + 5.0;
        v194.origin.y = v49;
        v194.size.width = v51;
        v194.size.height = v28;
        MaxX = CGRectGetMaxX(v194);
        v195.origin.x = v167;
        v195.origin.y = v177;
        v195.size.width = v172;
        v195.size.height = v46;
        v196.origin.x = MaxX - CGRectGetWidth(v195);
        x = v196.origin.x;
        v196.origin.y = v177;
        v196.size.width = v172;
        v196.size.height = v46;
        MinX = CGRectGetMinX(v196);
        v197.origin.x = rect;
        v61 = v77;
        v58 = v52;
        v197.origin.y = v52;
        v60 = v177;
        v56 = v162;
        v55 = v163;
        v197.size.width = v163;
        v197.size.height = v162;
        v57 = MinX - CGRectGetWidth(v197);
        v59 = x;
      }

      else
      {
        v54 = v51;
        v56 = v162;
        v55 = v163;
        if (contentHorizontalAlignment == 1)
        {
          v190.origin.x = v184 + 5.0;
          v190.origin.y = v49;
          v190.size.width = v54;
          v190.size.height = v53;
          v191.origin.x = CGRectGetMinX(v190);
          v57 = v191.origin.x;
          v58 = v52;
          v191.origin.y = v52;
          v191.size.width = v163;
          v191.size.height = v162;
          v59 = CGRectGetMaxX(v191) + 0.0;
          v60 = v177;
          v61 = r1a;
        }

        else
        {
          v198.origin.x = 0.0;
          v80 = v52;
          v198.origin.y = v52;
          v198.size.width = v163;
          v198.size.height = v162;
          v199.origin.x = CGRectGetMaxX(v198) + 0.0;
          v169 = v199.origin.x;
          v216.origin.x = 0.0;
          v60 = v177;
          v199.origin.y = v177;
          v199.size.width = v172;
          v199.size.height = r1a;
          v216.origin.y = v80;
          v216.size.width = v163;
          v216.size.height = v162;
          v200 = CGRectUnion(v199, v216);
          y = v200.origin.y;
          width = v200.size.width;
          height = v200.size.height;
          v153 = v173;
          v84 = v200.origin.x;
          UIRectCenteredXInRectScale();
          v85 = CGRectGetMinX(v201);
          v202.origin.x = v84;
          v202.origin.y = y;
          v202.size.width = width;
          v202.size.height = height;
          v56 = v162;
          v55 = v163;
          v86 = v85 - CGRectGetMinX(v202);
          v61 = r1a;
          v87 = HUFloatGetSafeScaleForValue(v173);
          v88 = round(v87 * v86) / v87;
          v57 = v88 + 0.0;
          v58 = v165;
          v59 = v169 + v88;
        }
      }

      v170 = v59;
      v89 = v60;
      v90 = v172;
      v91 = v172;
      v92 = v61;
      v217.origin.x = v57;
      v217.origin.y = v58;
      v217.size.width = v55;
      v217.size.height = v56;
      v203 = CGRectUnion(*&v59, v217);
      v93 = v203.origin.x;
      v94 = v203.origin.y;
      v95 = v203.size.width;
      v96 = v203.size.height;
      v203.origin.x = v184 + 5.0;
      v203.size.width = v154;
      v203.origin.y = v49;
      v203.size.height = v159;
      v97 = CGRectGetWidth(v203);
      traitCollection2 = [(HUDownloadControl *)self traitCollection];
      preferredContentSizeCategory = [traitCollection2 preferredContentSizeCategory];
      IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

      if (!IsAccessibilityCategory)
      {
        v204.origin.x = v93;
        v204.origin.y = v94;
        v204.size.width = v95;
        v204.size.height = v96;
        v101 = CGRectGetWidth(v204) - v97;
        if (v101 > 0.00000011920929)
        {
          v90 = v172 - v101;
        }
      }

      v102 = v90;
      v33 = v184;
      v65 = v175;
      v29 = v161;
      if (statusType == 1)
      {
        v75 = v179;
        v76 = v181;
        v104 = v163;
        v103 = v165;
        v105 = v162;
      }

      else
      {
        v57 = v57 - self->_controlImageEdgeInsets.left;
        v103 = v165 - p_controlImageEdgeInsets->top;
        v104 = rect_16;
        v105 = rect_24;
        v75 = v179;
        v76 = v181;
      }

      [(UIImageView *)self->_controlImageView setFrame:HURectByApplyingUserInterfaceLayoutDirectionInRect(v57, v103, v104, v105, v184, v175, v161, v159)];
      controlTitleLabel = self->_controlTitleLabel;
      v107 = v102;
      v9 = v159;
      v108 = HURectByApplyingUserInterfaceLayoutDirectionInRect(v170, v177, v107, r1a, v184, v175, v161, v159);
      v20 = rect_8;
    }

    else
    {
      v9 = v28;
      v69 = v176;
      v70 = 2;
      if (statusType != 3)
      {
        v70 = contentHorizontalAlignment;
      }

      if (v70 == 2)
      {
        v110 = r1;
        v111 = v4;
        v72 = v175;
        v112 = v175;
        r1c = CGRectGetMaxX(*(&v69 - 3));
        v207.origin.x = rect;
        v71 = v37;
        v207.origin.y = v37;
        v74 = v162;
        v20 = v163;
        v207.size.width = v163;
        v207.size.height = v162;
        v73 = r1c - CGRectGetWidth(v207) - self->_controlImageEdgeInsets.right;
      }

      else
      {
        v71 = v37;
        if (v70 == 1)
        {
          v193.origin.x = v184;
          v72 = v175;
          v193.origin.y = v175;
          v193.size.width = v29;
          v193.size.height = v28;
          v73 = CGRectGetMinX(v193) - self->_controlImageEdgeInsets.left;
          v74 = v162;
          v20 = v163;
        }

        else
        {
          v153 = SafeScaleForValue;
          v72 = v175;
          UIRectCenteredXInRectScale();
          v73 = v128;
          v71 = v129;
          v20 = v130;
          v74 = v131;
        }
      }

      controlTitleLabel = self->_controlImageView;
      v174 = v73;
      v108 = HURectByApplyingUserInterfaceLayoutDirectionInRect(v73, v71 - p_controlImageEdgeInsets->top, fmin(rect_16, 45.0), fmin(rect_24, 45.0), v184, v72, v29, v9);
      v76 = v74;
      v75 = v71;
      v65 = v72;
    }
  }

  else
  {
    text3 = [(UILabel *)self->_controlTitleLabel text];
    v63 = [text3 length];

    if (!v63)
    {
      v33 = v4;
      v65 = v6;
      v75 = v18;
      v76 = v181;
      v29 = r1;
      goto LABEL_38;
    }

    v64 = v4;
    v29 = r1;
    if (contentHorizontalAlignment == 2)
    {
      v205.origin.x = v4;
      v205.origin.y = v6;
      v205.size.width = r1;
      v205.size.height = v9;
      CGRectGetMaxX(v205);
      v66 = *MEMORY[0x277D76918];
      v109 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
      [v109 _scaledValueForValue:8.0];
      v206.origin.x = v160;
      v206.origin.y = v171;
      v206.size.width = v164;
      v206.size.height = v166;
      CGRectGetWidth(v206);
      v68 = v9;

      v65 = v6;
    }

    else
    {
      v65 = v6;
      if (contentHorizontalAlignment == 1)
      {
        v192.origin.x = v64;
        v192.origin.y = v6;
        v192.size.width = r1;
        v192.size.height = v9;
        CGRectGetMinX(v192);
        v66 = *MEMORY[0x277D76918];
        v67 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
        [v67 _scaledValueForValue:8.0];
        v68 = v9;
        v65 = v6;
      }

      else
      {
        UIRectCenteredXInRectScale();
        v68 = v9;
        v66 = *MEMORY[0x277D76918];
      }
    }

    v9 = v68;
    UIRectCenteredYInRectScale();
    v114 = v113;
    v182 = v115;
    v117 = v116;
    v119 = v118;
    v120 = [MEMORY[0x277D74300] preferredFontForTextStyle:{v66, *&SafeScaleForValue}];
    [v120 _scaledValueForValue:8.0];
    v174 = v114 - v121;

    v122 = [MEMORY[0x277D74300] preferredFontForTextStyle:v66];
    [v122 _scaledValueForValue:8.0];
    v124 = v117 + v123 * 2.0;

    v208.origin.x = v64;
    v208.origin.y = v65;
    v208.size.width = r1;
    v208.size.height = v9;
    v125 = CGRectGetHeight(v208);
    controlTitleLabel = self->_controlTitleLabel;
    v126 = v117;
    v127 = v119;
    v33 = v64;
    v20 = v124;
    v76 = v125;
    v108 = HURectByApplyingUserInterfaceLayoutDirectionInRect(v114, v182, v126, v127, v33, v65, r1, v9);
    v75 = 0.0;
  }

  [controlTitleLabel setFrame:{v108, *&v153}];
LABEL_38:
  if (!self->_downloadProgressView)
  {
    goto LABEL_51;
  }

  v132 = v20;
  v133 = v9;
  v134 = v33;
  v180 = v75;
  v183 = v76;
  v135 = v132;
  v209.origin.x = v33;
  v209.origin.y = v65;
  v209.size.width = v29;
  v209.size.height = v133;
  v136 = CGRectGetWidth(v209);
  v210.origin.x = v134;
  v210.origin.y = v65;
  r1b = v29;
  v210.size.width = v29;
  v178 = v133;
  v210.size.height = v133;
  v137 = CGRectGetHeight(v210);
  if (v136 >= v137)
  {
    v138 = v137;
  }

  else
  {
    v138 = v136;
  }

  [(HUDownloadProgressView *)self->_downloadProgressView frame];
  v140 = v139;
  v142 = v141;
  if (contentHorizontalAlignment == 2)
  {
    v212.origin.x = v184;
    v212.size.width = r1b;
    v212.origin.y = v65;
    v212.size.height = v133;
    v144 = CGRectGetMaxX(v212);
    v213.origin.x = v140;
    v213.origin.y = v142;
    v213.size.width = v138;
    v213.size.height = v138;
    v143 = v144 - CGRectGetWidth(v213);
  }

  else
  {
    if (contentHorizontalAlignment != 1)
    {
      UIRectCenteredIntegralRectScale();
      v143 = v146;
      v142 = v147;
      v138 = v148;
      v145 = v149;
      goto LABEL_48;
    }

    v211.origin.x = v184;
    v211.size.width = r1b;
    v211.origin.y = v65;
    v211.size.height = v133;
    v143 = CGRectGetMinX(v211);
  }

  v145 = v138;
LABEL_48:
  v214.origin.x = v174;
  v214.origin.y = v180;
  v214.size.width = v135;
  v214.size.height = v183;
  if (!CGRectIsNull(v214))
  {
    v215.origin.x = v174;
    v215.origin.y = v180;
    v215.size.width = v135;
    v215.size.height = v183;
    v218.origin.x = v143;
    v218.origin.y = v142;
    v218.size.width = v138;
    v218.size.height = v145;
    CGRectUnion(v215, v218);
  }

  v150 = v142;
  v151 = v138;
  v33 = v184;
  v29 = r1b;
  v65 = v175;
  v9 = v178;
  [(HUDownloadProgressView *)self->_downloadProgressView setFrame:HURectByApplyingUserInterfaceLayoutDirectionInRect(v143, v150, v151, v145, v184, v175, r1b, v178)];
LABEL_51:
  backgroundView = self->_backgroundView;
  if (backgroundView)
  {
    [(UIView *)backgroundView setFrame:v33, v65, v29, v9];
    [(HUDownloadControl *)self _updateBackgroundViewCornerRadius];
  }
}

- (CGSize)maximumSizeWithPreferredHeight:(double)height
{
  v5 = [(HUDownloadControl *)self traitCollection:0];
  [v5 displayScale];
  SafeScaleForValue = HUFloatGetSafeScaleForValue(v6);

  v8 = 0;
  v9 = *MEMORY[0x277CBF3A8];
  v10 = *(MEMORY[0x277CBF3A8] + 8);
  do
  {
    v11 = *(&v23 + v8);
    v12 = objc_opt_class();
    v13 = [(HUDownloadControl *)self titleForControlStatusType:v11];
    v14 = self->_allowsAddImage || v11 != 1;
    v15 = HUFloatGetSafeScaleForValue(SafeScaleForValue);
    [(HUDownloadControl *)self minTitleLength];
    [v12 _expectedSizeForControlStatusType:v11 controlTitle:v13 hasControlImage:v14 displayScale:v15 preferredHeight:height minTitleLength:v16];
    v18 = v17;
    v20 = v19;

    if (v9 < v18)
    {
      v9 = v18;
    }

    if (v10 < v20)
    {
      v10 = v20;
    }

    v8 += 8;
  }

  while (v8 != 56);
  v21 = v9;
  v22 = v10;
  result.height = v22;
  result.width = v21;
  return result;
}

- (CGSize)intrinsicContentSize
{
  statusType = self->_controlStatus.statusType;
  traitCollection = [(HUDownloadControl *)self traitCollection];
  [traitCollection displayScale];
  SafeScaleForValue = HUFloatGetSafeScaleForValue(v5);

  v7 = [(HUDownloadControl *)self titleForControlStatusType:statusType];
  v8 = objc_opt_class();
  v9 = self->_allowsAddImage || statusType != 1;
  v10 = HUFloatGetSafeScaleForValue(SafeScaleForValue);
  [(HUDownloadControl *)self minTitleLength];
  [v8 _expectedSizeForControlStatusType:statusType controlTitle:v7 hasControlImage:v9 displayScale:v10 preferredHeight:28.0 minTitleLength:v11];
  v13 = v12;
  v15 = v14;
  displayStyle = [(HUDownloadControl *)self displayStyle];
  if (v7)
  {
    v17 = displayStyle == 1;
  }

  else
  {
    v17 = 0;
  }

  if (v17)
  {
    v13 = v13 + 6.0;
  }

  v18 = v13;
  v19 = v15;
  result.height = v19;
  result.width = v18;
  return result;
}

- (void)tintColorDidChange
{
  v4.receiver = self;
  v4.super_class = HUDownloadControl;
  [(HUDownloadControl *)&v4 tintColorDidChange];
  tintColor = [(HUDownloadControl *)self tintColor];
  if (self->_displayStyle == 1)
  {
    [(UIView *)self->_backgroundView setBackgroundColor:tintColor];
  }

  [(HUDownloadControl *)self _updateControlTitleLabelVisualProperties];
  if (self->_controlStatus.statusType == 2 && self->_traitCollectionDidChangeWasCalled)
  {
    [(HUDownloadControl *)self _updateControlStatusProperties];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v11.receiver = self;
  v11.super_class = HUDownloadControl;
  [(HUDownloadControl *)&v11 traitCollectionDidChange:changeCopy];
  traitCollection = [(HUDownloadControl *)self traitCollection];
  [traitCollection displayScale];
  v7 = v6;
  [changeCopy displayScale];
  *&v8 = v8;
  if (vabds_f32(v7, *&v8) >= 0.00000011921 || ([traitCollection preferredContentSizeCategory], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(changeCopy, "preferredContentSizeCategory"), v10 = objc_claimAutoreleasedReturnValue(), v10, v9, v9 != v10))
  {
    [(HUDownloadControl *)self _updateControlStatusProperties];
  }

  self->_traitCollectionDidChangeWasCalled = 1;
}

- (void)setContentHorizontalAlignment:(int64_t)alignment
{
  contentHorizontalAlignment = [(HUDownloadControl *)self contentHorizontalAlignment];
  v6.receiver = self;
  v6.super_class = HUDownloadControl;
  [(HUDownloadControl *)&v6 setContentHorizontalAlignment:alignment];
  if (contentHorizontalAlignment != [(HUDownloadControl *)self contentHorizontalAlignment])
  {
    [(HUDownloadControl *)self setNeedsLayout];
  }
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  v5.receiver = self;
  v5.super_class = HUDownloadControl;
  [(HUDownloadControl *)&v5 touchesCancelled:cancelled withEvent:event];
  self->_hadFirstTouchHighlight = 0;
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  v5.receiver = self;
  v5.super_class = HUDownloadControl;
  [(HUDownloadControl *)&v5 touchesEnded:ended withEvent:event];
  self->_hadFirstTouchHighlight = 0;
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  isHighlighted = [(HUDownloadControl *)self isHighlighted];
  v12.receiver = self;
  v12.super_class = HUDownloadControl;
  [(HUDownloadControl *)&v12 setHighlighted:highlightedCopy];
  isHighlighted2 = [(HUDownloadControl *)self isHighlighted];
  if (isHighlighted != isHighlighted2)
  {
    v7 = isHighlighted2;
    v8 = 1.0;
    if (isHighlighted2)
    {
      [(HUDownloadControl *)self _beginTransientContentViewTransaction];
      v8 = 0.2;
    }

    if (self->_hadFirstTouchHighlight)
    {
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __36__HUDownloadControl_setHighlighted___block_invoke;
      v11[3] = &unk_277DB7BA8;
      v11[4] = self;
      *&v11[5] = v8;
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __36__HUDownloadControl_setHighlighted___block_invoke_2;
      v9[3] = &unk_277DBD640;
      v10 = v7;
      v9[4] = self;
      [MEMORY[0x277D75D18] animateWithDuration:327684 delay:v11 options:v9 animations:0.47 completion:0.0];
    }

    else
    {
      self->_hadFirstTouchHighlight = 1;
      [(UIView *)self->_transientContentView setAlpha:v8];
      if ((v7 & 1) == 0)
      {
        [(HUDownloadControl *)self _endTransientContentViewTransaction];
      }
    }
  }
}

uint64_t __36__HUDownloadControl_setHighlighted___block_invoke_2(uint64_t result)
{
  if ((*(result + 40) & 1) == 0)
  {
    return [*(result + 32) _endTransientContentViewTransaction];
  }

  return result;
}

- (void)setAllowsAddImage:(BOOL)image
{
  if (self->_allowsAddImage != image)
  {
    self->_allowsAddImage = image;
    if (self->_controlStatus.statusType == 1)
    {
      [(HUDownloadControl *)self _updateControlStatusProperties];
    }
  }
}

- (void)setDisplayStyle:(int64_t)style
{
  if (self->_displayStyle != style)
  {
    self->_displayStyle = style;
    [(HUDownloadControl *)self _updateControlStatusProperties];

    [(HUDownloadControl *)self _updateControlTitleLabelVisualProperties];
  }
}

- (void)setControlStatus:(HUDownloadControlStatus)status animated:(BOOL)animated
{
  animatedCopy = animated;
  p_controlStatus = &self->_controlStatus;
  statusType = self->_controlStatus.statusType;
  if (statusType == status.statusType && vabdd_f64(self->_controlStatus.downloadProgress, status.downloadProgress) <= 0.00000011920929)
  {
    return;
  }

  p_controlStatus->statusType = status.statusType;
  self->_controlStatus.downloadProgress = status.downloadProgress;
  v8 = self->_controlStatusRevision + 1;
  self->_controlStatusRevision = v8;
  v9 = p_controlStatus->statusType;
  if (statusType == 4 && v9 == 4)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __47__HUDownloadControl_setControlStatus_animated___block_invoke;
    aBlock[3] = &unk_277DB8488;
    aBlock[4] = self;
    v12 = _Block_copy(aBlock);
    v13 = v12;
    if (animatedCopy)
    {
      [MEMORY[0x277D75D18] animateWithDuration:134 delay:v12 options:0 animations:0.25 completion:0.0];
    }

    else
    {
      (*(v12 + 2))(v12);
    }

    return;
  }

  if (v9 == 3)
  {
    if (statusType == 3)
    {
      goto LABEL_15;
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:self selector:sel__applicationWillEnterForegroundNotification_ name:*MEMORY[0x277D76758] object:0];
  }

  else
  {
    if (statusType != 3)
    {
      goto LABEL_15;
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter removeObserver:self name:*MEMORY[0x277D76758] object:0];
  }

LABEL_15:
  traitCollection = [(HUDownloadControl *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  v16 = [preferredContentSizeCategory isEqualToString:*MEMORY[0x277D76860]];

  v17 = statusType != 4 || !animatedCopy;
  if (v17 || p_controlStatus->statusType != 5)
  {
    if ((v16 & 1) == 0)
    {

      [(HUDownloadControl *)self _updateControlStatusProperties];
    }
  }

  else
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __47__HUDownloadControl_setControlStatus_animated___block_invoke_2;
    v20[3] = &unk_277DB8488;
    v20[4] = self;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __47__HUDownloadControl_setControlStatus_animated___block_invoke_3;
    v18[3] = &unk_277DBD690;
    v18[4] = self;
    v18[5] = v8;
    v19 = v16 ^ 1;
    [MEMORY[0x277D75D18] animateWithDuration:134 delay:v20 options:v18 animations:0.25 completion:0.0];
  }
}

void __47__HUDownloadControl_setControlStatus_animated___block_invoke_3(uint64_t a1)
{
  v2 = dispatch_time(0, 100000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__HUDownloadControl_setControlStatus_animated___block_invoke_4;
  block[3] = &unk_277DBD668;
  v3 = *(a1 + 40);
  block[4] = *(a1 + 32);
  block[5] = v3;
  v5 = *(a1 + 48);
  dispatch_after(v2, MEMORY[0x277D85CD0], block);
}

void *__47__HUDownloadControl_setControlStatus_animated___block_invoke_4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[61] == *(a1 + 40) && *(a1 + 48) == 1)
  {
    return [result _updateControlStatusProperties];
  }

  return result;
}

- (void)setFilledTintColor:(id)color
{
  colorCopy = color;
  filledTintColor = [(HUDownloadControl *)self filledTintColor];
  v6 = [colorCopy isEqual:filledTintColor];

  if ((v6 & 1) == 0)
  {
    objc_storeStrong(&self->_filledTintColor, color);
    if (self->_displayStyle == 1)
    {
      [(HUDownloadControl *)self _updateControlTitleLabelVisualProperties];
      [(HUDownloadControl *)self _updateControlStatusProperties];
    }
  }
}

- (void)setTitle:(id)title forControlStatusType:(int64_t)type
{
  titleCopy = title;
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:type];
  controlStatusTypeToTitle = self->_controlStatusTypeToTitle;
  if (titleCopy)
  {
    if (!controlStatusTypeToTitle)
    {
      v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v9 = self->_controlStatusTypeToTitle;
      self->_controlStatusTypeToTitle = v8;

      controlStatusTypeToTitle = self->_controlStatusTypeToTitle;
    }

    v10 = [MEMORY[0x277CCABB0] numberWithInteger:type];
    v11 = [(NSMutableDictionary *)controlStatusTypeToTitle objectForKey:v10];

    if ([v11 isEqualToString:titleCopy])
    {

      goto LABEL_12;
    }

    [(NSMutableDictionary *)self->_controlStatusTypeToTitle setObject:titleCopy forKey:v6];
  }

  else
  {
    [(NSMutableDictionary *)controlStatusTypeToTitle removeObjectForKey:v6];
    if ([(NSMutableDictionary *)self->_controlStatusTypeToTitle count])
    {
      goto LABEL_10;
    }

    v11 = self->_controlStatusTypeToTitle;
    self->_controlStatusTypeToTitle = 0;
  }

LABEL_10:
  if (self->_controlStatus.statusType == type)
  {
    [(HUDownloadControl *)self _updateControlStatusProperties];
  }

LABEL_12:
}

- (id)titleForControlStatusType:(int64_t)type
{
  controlStatusTypeToTitle = self->_controlStatusTypeToTitle;
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:type];
  v5 = [(NSMutableDictionary *)controlStatusTypeToTitle objectForKey:v4];

  return v5;
}

+ (CGSize)_expectedSizeForControlStatusType:(int64_t)type controlTitle:(id)title hasControlImage:(BOOL)image displayScale:(double)scale preferredHeight:(double)height minTitleLength:(double)length
{
  imageCopy = image;
  titleCopy = title;
  v15 = titleCopy;
  v17 = *MEMORY[0x277CBF3A8];
  heightCopy2 = *(MEMORY[0x277CBF3A8] + 8);
  if (type)
  {
    if ([titleCopy length])
    {
      _newControlTitleLabel = [self _newControlTitleLabel];
      v19 = [self controlTitleFontForControlStatusType:type];
      [_newControlTitleLabel setFont:v19];

      [_newControlTitleLabel setText:v15];
      [_newControlTitleLabel sizeThatFits:{1.79769313e308, 1.79769313e308}];
      v21 = v20;
      v23 = v22;
      SafeScaleForValue = HUFloatGetSafeScaleForValue(scale);
      v25 = ceil(SafeScaleForValue * v21) / SafeScaleForValue;
      if (v25 >= length)
      {
        length = v25;
      }

      if (imageCopy)
      {
        heightCopy2 = fmax(v23, 28.0);
        v26 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
        [v26 _scaledValueForValue:8.0];
        v28 = v17 + length + 5.0 + v27;

        v17 = heightCopy2 + v28;
      }

      else
      {
        v29 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
        [v29 _scaledValueForValue:8.0];
        v17 = v17 + length + v30 * 2.0;
      }

      if (heightCopy2 <= height)
      {
        heightCopy2 = height;
      }
    }

    else
    {
      if (height >= 28.0)
      {
        heightCopy2 = height;
      }

      else
      {
        heightCopy2 = 28.0;
      }

      v17 = heightCopy2;
    }
  }

  v31 = v17;
  v32 = heightCopy2;
  result.height = v32;
  result.width = v31;
  return result;
}

+ (id)_newControlTitleLabel
{
  v2 = objc_alloc(MEMORY[0x277D756B8]);
  v3 = [v2 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [v3 setBackgroundColor:clearColor];

  return v3;
}

+ (id)_imageNamed:(id)named compatibleWithTraitCollection:(id)collection
{
  v5 = MEMORY[0x277D755B8];
  v6 = MEMORY[0x277CCA8D8];
  collectionCopy = collection;
  namedCopy = named;
  v9 = [v6 bundleForClass:objc_opt_class()];
  v10 = [v5 imageNamed:namedCopy inBundle:v9 compatibleWithTraitCollection:collectionCopy];

  return v10;
}

- (void)_beginTransientContentViewTransaction
{
  v19 = *MEMORY[0x277D85DE8];
  transientContentViewTransactionCount = self->_transientContentViewTransactionCount;
  self->_transientContentViewTransactionCount = transientContentViewTransactionCount + 1;
  if (!transientContentViewTransactionCount)
  {
    if (!self->_transientContentView)
    {
      v4 = objc_alloc(MEMORY[0x277D75D18]);
      [(HUDownloadControl *)self bounds];
      v5 = [v4 initWithFrame:?];
      transientContentView = self->_transientContentView;
      self->_transientContentView = v5;

      [(HUDownloadControl *)self insertSubview:self->_transientContentView atIndex:0];
    }

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    subviews = [(HUDownloadControl *)self subviews];
    v8 = [subviews copy];

    v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v15;
      do
      {
        v12 = 0;
        do
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = self->_transientContentView;
          if (*(*(&v14 + 1) + 8 * v12) != v13)
          {
            [(UIView *)v13 addSubview:?];
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v10);
    }
  }
}

- (void)_endTransientContentViewTransaction
{
  v16 = *MEMORY[0x277D85DE8];
  --self->_transientContentViewTransactionCount;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  subviews = [(UIView *)self->_transientContentView subviews];
  v4 = [subviews copy];

  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        transientContentView = self->_transientContentView;
        if (*(*(&v11 + 1) + 8 * v8) != transientContentView)
        {
          [(HUDownloadControl *)self addSubview:?];
          transientContentView = self->_transientContentView;
        }

        [(UIView *)transientContentView removeFromSuperview];
        v10 = self->_transientContentView;
        self->_transientContentView = 0;

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (id)_currentContentSuperview
{
  if (self->_transientContentViewTransactionCount >= 1)
  {
    self = self->_transientContentView;
  }

  return self;
}

- (void)_updateControlTitleLabelVisualProperties
{
  if (self->_controlStatus.statusType == 5)
  {
    controlTitleLabel = self->_controlTitleLabel;
    systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
  }

  else
  {
    controlTitleLabel = self->_controlTitleLabel;
    if (self->_displayStyle == 1)
    {
      [(HUDownloadControl *)self filledTintColor];
    }

    else
    {
      [(HUDownloadControl *)self tintColor];
    }
    systemGrayColor = ;
  }

  v4 = systemGrayColor;
  [(UILabel *)controlTitleLabel setTextColor:?];
}

- (void)_updateBackgroundViewCornerRadius
{
  [(UIView *)self->_backgroundView bounds];
  x = v12.origin.x;
  y = v12.origin.y;
  width = v12.size.width;
  height = v12.size.height;
  v7 = CGRectGetWidth(v12);
  v13.origin.x = x;
  v13.origin.y = y;
  v13.size.width = width;
  v13.size.height = height;
  v8 = CGRectGetHeight(v13);
  if (v7 < v8)
  {
    v8 = v7;
  }

  v9 = v8 * 0.5;
  layer = [(UIView *)self->_backgroundView layer];
  [layer setCornerRadius:v9];
}

- (void)_updateControlStatusProperties
{
  traitCollection = [(HUDownloadControl *)self traitCollection];
  [traitCollection displayScale];
  v3 = v4;
  *&v4 = fabsf(v3);
  if (v3 < 0.0 || *&v4 < 0.00000011921)
  {
    goto LABEL_55;
  }

  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  v7 = [preferredContentSizeCategory isEqualToString:*MEMORY[0x277D76860]];

  if (v7)
  {
    goto LABEL_55;
  }

  statusType = self->_controlStatus.statusType;
  downloadProgressView = self->_downloadProgressView;
  if (statusType == 4)
  {
    if (!downloadProgressView)
    {
      v10 = [HUDownloadProgressView alloc];
      [(HUDownloadControl *)self bounds];
      v11 = [(HUDownloadProgressView *)v10 initWithFrame:?];
      v12 = self->_downloadProgressView;
      self->_downloadProgressView = v11;

      v13 = self->_downloadProgressView;
      systemFillColor = [MEMORY[0x277D75348] systemFillColor];
      [(HUDownloadProgressView *)v13 setOuterRingColor:systemFillColor];

      if ([(HUDownloadControl *)self showStopImageWhenDownloading])
      {
        v15 = [objc_opt_class() _imageNamed:@"UniversalDownloadProgressStopButton" compatibleWithTraitCollection:traitCollection];
        [(HUDownloadProgressView *)self->_downloadProgressView setCenterImage:v15];
      }

      _currentContentSuperview = [(HUDownloadControl *)self _currentContentSuperview];
      [_currentContentSuperview addSubview:self->_downloadProgressView];

      downloadProgressView = self->_downloadProgressView;
    }

    [(HUDownloadProgressView *)downloadProgressView setDownloadProgress:self->_controlStatus.downloadProgress];
  }

  else
  {
    [(HUDownloadProgressView *)downloadProgressView removeFromSuperview];
    v17 = self->_downloadProgressView;
    self->_downloadProgressView = 0;

    if (statusType == 1 && self->_displayStyle == 1)
    {
      if (!self->_backgroundView)
      {
        v18 = objc_alloc(MEMORY[0x277D75D18]);
        [(HUDownloadControl *)self bounds];
        v19 = [v18 initWithFrame:?];
        backgroundView = self->_backgroundView;
        self->_backgroundView = v19;

        v21 = self->_backgroundView;
        tintColor = [(HUDownloadControl *)self tintColor];
        [(UIView *)v21 setBackgroundColor:tintColor];

        [(UIView *)self->_backgroundView setClipsToBounds:1];
        [(HUDownloadControl *)self _updateBackgroundViewCornerRadius];
        _currentContentSuperview2 = [(HUDownloadControl *)self _currentContentSuperview];
        [_currentContentSuperview2 insertSubview:self->_backgroundView atIndex:0];
      }

      v24 = *MEMORY[0x277D768C8];
      v25 = *(MEMORY[0x277D768C8] + 16);
LABEL_26:
      if (!self->_allowsAddImage)
      {
        goto LABEL_47;
      }

      v29 = [objc_opt_class() _imageNamed:@"UniversalAddControlAdd" compatibleWithTraitCollection:traitCollection];
      __asm { FMOV            V1.2D, #3.0 }

      if (self->_displayStyle == 1)
      {
        v59 = _Q1;
        filledTintColor = [(HUDownloadControl *)self filledTintColor];
        _Q1 = v59;
        v35 = filledTintColor;
      }

      else
      {
        v35 = 0;
      }

      v37 = _Q1;
      goto LABEL_34;
    }
  }

  [(UIView *)self->_backgroundView removeFromSuperview];
  v26 = self->_backgroundView;
  self->_backgroundView = 0;

  v24 = *MEMORY[0x277D768C8];
  v25 = *(MEMORY[0x277D768C8] + 16);
  if (statusType <= 4)
  {
    if (statusType != 1)
    {
      if (statusType == 2)
      {
        v55 = *(MEMORY[0x277D768C8] + 16);
        v58 = *MEMORY[0x277D768C8];
        v27 = objc_opt_class();
        v28 = @"UniversalAddControlDownloadable";
        goto LABEL_33;
      }

      if (statusType == 3)
      {
        v55 = *(MEMORY[0x277D768C8] + 16);
        v58 = *MEMORY[0x277D768C8];
        v27 = objc_opt_class();
        v28 = @"UniversalAddControlWaiting";
LABEL_33:
        v29 = [v27 _imageNamed:v28 compatibleWithTraitCollection:{traitCollection, v55}];
        v35 = 0;
        _Q1 = vextq_s8(v58, v57, 8uLL);
        v37 = vextq_s8(v57, v58, 8uLL);
        goto LABEL_34;
      }

      goto LABEL_47;
    }

    goto LABEL_26;
  }

  if (statusType != 5)
  {
    if (statusType == 6)
    {
      v55 = *(MEMORY[0x277D768C8] + 16);
      v58 = *MEMORY[0x277D768C8];
      v27 = objc_opt_class();
      v28 = @"UniversalAddControlError";
      goto LABEL_33;
    }

    if (statusType == 7)
    {
      v55 = *(MEMORY[0x277D768C8] + 16);
      v58 = *MEMORY[0x277D768C8];
      v27 = objc_opt_class();
      v28 = @"UniversalAddControlPaused";
      goto LABEL_33;
    }

LABEL_47:
    v35 = 0;
    *&self->_controlImageEdgeInsets.top = v24;
    *&self->_controlImageEdgeInsets.bottom = v25;
    goto LABEL_48;
  }

  v56 = *(MEMORY[0x277D768C8] + 16);
  v60 = *MEMORY[0x277D768C8];
  v36 = [(HUDownloadControl *)self titleForControlStatusType:5];
  if ([v36 length])
  {
  }

  else
  {
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v44 = [standardUserDefaults BOOLForKey:@"HUDownloadControlShouldShowDownloadedIndicator"];

    v25 = v56;
    v24 = v60;
    if (!v44)
    {
      goto LABEL_47;
    }
  }

  v29 = [objc_opt_class() _imageNamed:@"UniversalAddControlDownloaded" compatibleWithTraitCollection:traitCollection];
  v45 = -2.0;
  if (fabsf(v3 + -2.0) < 0.00000011921)
  {
    v45 = -1.5;
  }

  v61 = *&v45;
  if (self->_displayStyle == 1)
  {
    [MEMORY[0x277D75348] systemGrayColor];
  }

  else
  {
    [objc_opt_class() systemLightGrayColor];
  }
  v35 = ;
  v37 = xmmword_20D5CAB40;
  _Q1 = v61;
LABEL_34:
  *&self->_controlImageEdgeInsets.top = v37.i64[1];
  *&self->_controlImageEdgeInsets.left = _Q1;
  *&self->_controlImageEdgeInsets.right = v37.i64[0];
  if (v29)
  {
    controlImageView = self->_controlImageView;
    if (!controlImageView)
    {
      v39 = objc_alloc(MEMORY[0x277D755E8]);
      v40 = [v39 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
      v41 = self->_controlImageView;
      self->_controlImageView = v40;

      _currentContentSuperview3 = [(HUDownloadControl *)self _currentContentSuperview];
      [_currentContentSuperview3 addSubview:self->_controlImageView];

      controlImageView = self->_controlImageView;
    }

    [(UIImageView *)controlImageView setTintColor:v35];
    [(UIImageView *)self->_controlImageView setImage:v29];
    if ([(HUDownloadControl *)self scaleImageForAccessibility])
    {
      [(UIImageView *)self->_controlImageView setAdjustsImageSizeForAccessibilityContentSizeCategory:1];
    }

    [(HUDownloadControl *)self _updateControlImageViewAnimation];
    goto LABEL_49;
  }

LABEL_48:
  [(UIImageView *)self->_controlImageView removeFromSuperview];
  v29 = self->_controlImageView;
  self->_controlImageView = 0;
LABEL_49:

  v46 = [(HUDownloadControl *)self titleForControlStatusType:statusType];
  v47 = [v46 length];
  controlTitleLabel = self->_controlTitleLabel;
  if (v47)
  {
    if (!controlTitleLabel)
    {
      _newControlTitleLabel = [objc_opt_class() _newControlTitleLabel];
      v50 = self->_controlTitleLabel;
      self->_controlTitleLabel = _newControlTitleLabel;

      _currentContentSuperview4 = [(HUDownloadControl *)self _currentContentSuperview];
      [_currentContentSuperview4 addSubview:self->_controlTitleLabel];
    }

    [(HUDownloadControl *)self _updateControlTitleLabelVisualProperties];
    v52 = self->_controlTitleLabel;
    v53 = [objc_opt_class() controlTitleFontForControlStatusType:statusType];
    [(UILabel *)v52 setFont:v53];

    [(UILabel *)self->_controlTitleLabel setText:v46];
  }

  else
  {
    [(UILabel *)controlTitleLabel removeFromSuperview];
    v54 = self->_controlTitleLabel;
    self->_controlTitleLabel = 0;
  }

  [(HUDownloadControl *)self setNeedsLayout];

LABEL_55:
}

- (void)_updateControlImageViewAnimation
{
  controlImageView = self->_controlImageView;
  if (controlImageView)
  {
    layer = [(UIImageView *)controlImageView layer];
    if (self->_controlStatus.statusType == 3)
    {
      v4 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"transform.rotation.z"];
      presentationLayer = [layer presentationLayer];
      if (presentationLayer)
      {
        v6 = presentationLayer;
      }

      else
      {
        v6 = layer;
      }

      keyPath = [v4 keyPath];
      v8 = [v6 valueForKeyPath:keyPath];

      [v4 setFromValue:v8];
      v9 = MEMORY[0x277CCABB0];
      [v8 floatValue];
      v11 = [v9 numberWithDouble:{(fmod(v10, 6.28318531) + 6.28318531)}];
      [v4 setToValue:v11];

      [v4 setRemovedOnCompletion:0];
      LODWORD(v12) = 2139095040;
      [v4 setRepeatCount:v12];
      [v4 setFillMode:*MEMORY[0x277CDA230]];
      [v4 setDuration:1.0];
      [v4 setBeginTimeMode:*MEMORY[0x277CDA048]];
      v13 = CACurrentMediaTime();
      [v4 duration];
      [v4 setBeginTime:{(v13 - fmod(v13, v14))}];
      [layer addAnimation:v4 forKey:@"_HUDownloadControlWaitingSpinnerAnimationKey"];
    }

    else
    {
      [layer removeAnimationForKey:@"_HUDownloadControlWaitingSpinnerAnimationKey"];
    }
  }
}

- (HUDownloadControlStatus)controlStatus
{
  p_controlStatus = &self->_controlStatus;
  statusType = self->_controlStatus.statusType;
  downloadProgress = p_controlStatus->downloadProgress;
  result.downloadProgress = downloadProgress;
  result.statusType = statusType;
  return result;
}

@end