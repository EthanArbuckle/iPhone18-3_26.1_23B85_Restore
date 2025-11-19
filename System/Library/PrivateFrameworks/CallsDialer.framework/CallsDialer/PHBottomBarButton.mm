@interface PHBottomBarButton
+ (UIFont)defaultFont;
- (BOOL)canBeEnabled;
- (CGRect)imageRectForContentRect:(CGRect)a3;
- (CGRect)titleRectForContentRect:(CGRect)a3;
- (CGSize)buttonSize;
- (CGSize)intrinsicContentSize;
- (NSArray)ambientButtonParts;
- (PHBottomBarButton)initWithConfiguration:(id)a3 appType:(int64_t)a4;
- (double)titleRectYOffset;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)newOverlayView;
- (id)overlayViewForConfiguration:(id)a3;
- (void)_performSetDisabled;
- (void)_performSetEnabled:(BOOL)a3;
- (void)_performSetHighlighted:(BOOL)a3;
- (void)_performSetSelected:(BOOL)a3;
- (void)layoutSubviews;
- (void)refreshForCallState:(int64_t)a3;
- (void)setBackgroundColor:(id)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setOrientation:(int64_t)a3;
- (void)setUsesSmallerFontSize:(BOOL)a3;
@end

@implementation PHBottomBarButton

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = PHBottomBarButton;
  [(PHBottomBarButton *)&v5 layoutSubviews];
  v3 = [(PHBottomBarButton *)self effectView];

  if (v3)
  {
    v4 = [(PHBottomBarButton *)self effectView];
    [(PHBottomBarButton *)self sendSubviewToBack:v4];
  }
}

+ (UIFont)defaultFont
{
  if (defaultFont_onceToken != -1)
  {
    +[PHBottomBarButton defaultFont];
  }

  v3 = MEMORY[0x277D74300];
  v4 = *&defaultFont_defaultFontSize;
  v5 = *MEMORY[0x277D74418];

  return [v3 systemFontOfSize:v4 weight:v5];
}

- (CGSize)intrinsicContentSize
{
  [(PHBottomBarButton *)self iconSizeRatio];
  v4 = v3;
  [(PHBottomBarButton *)self diameter];
  v6 = v5;
  if (v4 != 0.0)
  {
    [(PHBottomBarButton *)self iconSizeRatio];
    v6 = v6 * v7;
  }

  [(PHBottomBarButton *)self diameter];
  v9 = v8;
  v10 = v6;
  result.height = v9;
  result.width = v10;
  return result;
}

- (double)titleRectYOffset
{
  v2 = [MEMORY[0x277D75418] currentDevice];
  v3 = [v2 userInterfaceIdiom];

  result = 6.0;
  if (v3 == 1)
  {
    if (titleRectYOffset_onceToken != -1)
    {
      [PHBottomBarButton titleRectYOffset];
    }

    return *&titleRectYOffset_yOffset;
  }

  return result;
}

void __32__PHBottomBarButton_defaultFont__block_invoke()
{
  v0 = [MEMORY[0x277D759A0] mainScreen];
  v1 = [v0 currentMode];
  [v1 size];
  v3 = v2;

  v4 = v3 > 2207 || v3 == 1334;
  v5 = 13.0;
  if (v4)
  {
    v5 = 15.0;
  }

  defaultFont_defaultFontSize = *&v5;
}

- (PHBottomBarButton)initWithConfiguration:(id)a3 appType:(int64_t)a4
{
  v126[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v125.receiver = self;
  v125.super_class = PHBottomBarButton;
  v7 = *MEMORY[0x277CBF3A0];
  v8 = *(MEMORY[0x277CBF3A0] + 8);
  v9 = *(MEMORY[0x277CBF3A0] + 16);
  v10 = *(MEMORY[0x277CBF3A0] + 24);
  v11 = [(PHBottomBarButton *)&v125 initWithFrame:*MEMORY[0x277CBF3A0], v8, v9, v10];
  if (!v11)
  {
    goto LABEL_36;
  }

  [v6 diameter];
  v11->_diameter = v12;
  v11->_accessoryDiameter = v12 / 3.0;
  [(PHBottomBarButton *)v11 setAppType:a4];
  v13 = [PHRoundView alloc];
  *&v14 = v11->_diameter * 0.5;
  v15 = [(PHRoundView *)v13 initWithFrame:v7 cornerRadius:v8, v9, v10, v14];
  roundView = v11->_roundView;
  v11->_roundView = v15;

  [(UIView *)v11->_roundView setTranslatesAutoresizingMaskIntoConstraints:0];
  v17 = [(UIView *)v11->_roundView widthAnchor];
  v18 = [v17 constraintEqualToConstant:v11->_diameter];
  [v18 setActive:1];

  v19 = [(UIView *)v11->_roundView heightAnchor];
  v20 = [v19 constraintEqualToConstant:v11->_diameter];
  [v20 setActive:1];

  [(UIView *)v11->_roundView setUserInteractionEnabled:0];
  v21 = v11->_roundView;
  v22 = [(PHBottomBarButton *)v11 imageView];
  [(PHBottomBarButton *)v11 insertSubview:v21 below:v22];

  v23 = [v6 action];
  if (v23 <= 0x26 && ((1 << v23) & 0x4000000070) != 0)
  {
    if (+[PHBottomBarButtonConfiguration usesGlass])
    {
      v24 = [(PHBottomBarButton *)v11 overlayViewForConfiguration:v6];
      iconView = v11->_iconView;
      v11->_iconView = v24;

      [(UIView *)v11->_iconView setTranslatesAutoresizingMaskIntoConstraints:0];
      [(UIView *)v11->_iconView setAutoresizingMask:18];
      v26 = [(UIView *)v11->_iconView widthAnchor];
      v27 = [v26 constraintEqualToConstant:v11->_diameter];
      [v27 setActive:1];

      v28 = [(UIView *)v11->_iconView heightAnchor];
      v29 = [v28 constraintEqualToConstant:v11->_diameter];
      [v29 setActive:1];

      v30 = 1;
      [(UIView *)v11->_roundView addSubview:v11->_iconView];
    }

    else
    {
      v30 = 1;
    }
  }

  else
  {
    if (+[PHBottomBarButtonConfiguration usesGlass])
    {
      [(PHBottomBarButton *)v11 setOverrideUserInterfaceStyle:1];
      v31 = [v6 backgroundColor];
      v32 = [MEMORY[0x277D75348] clearColor];

      v33 = v11->_roundView;
      if (v31 == v32)
      {
        [(UIView *)v11->_roundView dialer_applySmallClearGlassBackground];
      }

      else
      {
        v34 = [v6 backgroundColor];
        [(UIView *)v33 dialer_applySmallClearGlassBackgroundWithTintColor:v34];
      }
    }

    v30 = 0;
  }

  v35 = [v6 accessoryIcon];

  if (v35)
  {
    v36 = [PHRoundView alloc];
    *&v37 = v11->_accessoryDiameter * 0.5;
    v38 = [(PHRoundView *)v36 initWithFrame:v7 cornerRadius:v8, v9, v10, v37];
    accessoryBackgroundView = v11->_accessoryBackgroundView;
    v11->_accessoryBackgroundView = v38;

    v40 = [MEMORY[0x277D75348] systemWhiteColor];
    [(UIView *)v11->_accessoryBackgroundView setBackgroundColor:v40];

    [(UIView *)v11->_accessoryBackgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
    v41 = [(UIView *)v11->_accessoryBackgroundView widthAnchor];
    v42 = [v41 constraintEqualToConstant:v11->_accessoryDiameter];
    [v42 setActive:1];

    v43 = [(UIView *)v11->_accessoryBackgroundView heightAnchor];
    v44 = [v43 constraintEqualToConstant:v11->_accessoryDiameter];
    [v44 setActive:1];

    [(UIView *)v11->_accessoryBackgroundView setUserInteractionEnabled:0];
    v45 = v11->_accessoryBackgroundView;
    v46 = [(PHBottomBarButton *)v11 imageView];
    [(PHBottomBarButton *)v11 insertSubview:v45 above:v46];

    v47 = [(UIView *)v11->_accessoryBackgroundView trailingAnchor];
    v48 = [(PHBottomBarButton *)v11 trailingAnchor];
    v49 = [v47 constraintEqualToAnchor:v48];
    [v49 setActive:1];

    v50 = [(UIView *)v11->_accessoryBackgroundView bottomAnchor];
    v51 = [(PHBottomBarButton *)v11 bottomAnchor];
    v52 = [v50 constraintEqualToAnchor:v51];
    [v52 setActive:1];

    accessoryDiameter = v11->_accessoryDiameter;
    v54 = fmax(accessoryDiameter * 0.1, 2.0);
    if (accessoryDiameter > v54)
    {
      v55 = [objc_alloc(MEMORY[0x277D755E8]) initWithFrame:{v7, v8, v9, v10}];
      accessoryView = v11->_accessoryView;
      v11->_accessoryView = v55;

      v57 = [v6 accessoryIcon];
      v58 = [MEMORY[0x277D75348] blackColor];
      v59 = [v57 _flatImageWithColor:v58];
      [(UIImageView *)v11->_accessoryView setImage:v59];

      v60 = [MEMORY[0x277D75348] blackColor];
      [(UIImageView *)v11->_accessoryView setTintColor:v60];

      v61 = [MEMORY[0x277D75348] clearColor];
      [(UIImageView *)v11->_accessoryView setBackgroundColor:v61];

      [(UIImageView *)v11->_accessoryView setTranslatesAutoresizingMaskIntoConstraints:0];
      v62 = [(UIImageView *)v11->_accessoryView widthAnchor];
      v63 = [v62 constraintEqualToConstant:v11->_accessoryDiameter + v54 * -2.0];
      [v63 setActive:1];

      v64 = [(UIImageView *)v11->_accessoryView heightAnchor];
      v65 = [v64 constraintEqualToConstant:v11->_accessoryDiameter + v54 * -2.0];
      [v65 setActive:1];

      [(UIImageView *)v11->_accessoryView setUserInteractionEnabled:0];
      [(PHBottomBarButton *)v11 insertSubview:v11->_accessoryView above:v11->_accessoryBackgroundView];
      v66 = [(UIImageView *)v11->_accessoryView trailingAnchor];
      v67 = [(PHBottomBarButton *)v11 trailingAnchor];
      v68 = [v66 constraintEqualToAnchor:v67 constant:-v54];
      [v68 setActive:1];

      v69 = [(UIImageView *)v11->_accessoryView bottomAnchor];
      v70 = [(PHBottomBarButton *)v11 bottomAnchor];
      v71 = [v69 constraintEqualToAnchor:v70 constant:-v54];
      [v71 setActive:1];
    }
  }

  v72 = [(PHBottomBarButton *)v11 titleLabel];
  [v72 setAdjustsFontSizeToFitWidth:0];

  v73 = [(PHBottomBarButton *)v11 titleLabel];
  [v73 setTextAlignment:1];

  v74 = [objc_opt_class() defaultFont];
  v75 = [(PHBottomBarButton *)v11 titleLabel];
  [v75 setFont:v74];

  v76 = [(PHBottomBarButton *)v11 titleLabel];
  [v76 setLineBreakMode:4];

  if ([MEMORY[0x277D3A7E0] inCallBottomBarMaxTitleSize] == 1)
  {
    v77 = 100.0;
  }

  else
  {
    v77 = 105.0;
  }

  v78 = [(PHBottomBarButton *)v11 titleLabel];
  [v78 setPreferredMaxLayoutWidth:v77];

  v79 = v11->_diameter * 0.5;
  v80 = [(PHBottomBarButton *)v11 layer];
  [v80 setCornerRadius:v79];

  [(PHBottomBarButton *)v11 setClipsToBounds:0];
  [(PHBottomBarButton *)v11 setAdjustsImageWhenHighlighted:0];
  v81 = [v6 title];
  [(PHBottomBarButton *)v11 setTitle:v81 forState:0];

  if (!v30 || !+[PHBottomBarButtonConfiguration usesGlass])
  {
    v82 = [v6 icon];
    [(PHBottomBarButton *)v11 setImage:v82 forState:0];
  }

  v83 = [(PHBottomBarButton *)v11 titleLabel];
  [v83 setNumberOfLines:0];

  v84 = [v6 backgroundColor];
  [(PHBottomBarButton *)v11 setBackgroundColor:v84];

  v85 = [MEMORY[0x277D75348] whiteColor];
  [(PHBottomBarButton *)v11 setTintColor:v85];

  v86 = [v6 accessibilityIdentifier];
  [(PHBottomBarButton *)v11 setAccessibilityIdentifier:v86];

  v87 = [v6 selectedIcon];

  if (v87)
  {
    v88 = [v6 selectedIcon];
    [(PHBottomBarButton *)v11 setImage:v88 forState:4];
  }

  if ([v6 action] == 12 || objc_msgSend(v6, "action") == 25 || objc_msgSend(v6, "action") == 26 || objc_msgSend(v6, "action") == 27 || objc_msgSend(v6, "action") == 13 || objc_msgSend(v6, "action") == 11 || objc_msgSend(v6, "action") == 10)
  {
    v89 = [v6 colorEffect];

    if (v89)
    {
      v90 = [v6 colorEffect];
      v91 = [MEMORY[0x277D75210] effectWithBlurRadius:40.0];
      v92 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:0];
      [(PHBottomBarButton *)v11 setEffectView:v92];

      v126[0] = v90;
      v126[1] = v91;
      v93 = [MEMORY[0x277CBEA60] arrayWithObjects:v126 count:2];
      v94 = [(PHBottomBarButton *)v11 effectView];
      [v94 setBackgroundEffects:v93];

      v95 = [(PHBottomBarButton *)v11 effectView];
      [v95 _setGroupName:@"PHBottomBarButtonCaptureGroup"];

      v96 = [v6 captureView];
      v97 = [(PHBottomBarButton *)v11 effectView];
      [v97 _setCaptureView:v96];
    }

    v98 = [(PHBottomBarButton *)v11 effectView];
    [v98 setAutoresizingMask:18];

    v99 = [(PHBottomBarButton *)v11 layer];
    [v99 cornerRadius];
    v101 = v100;
    v102 = [(PHBottomBarButton *)v11 effectView];
    v103 = [v102 layer];
    [v103 setCornerRadius:v101];

    v104 = [(PHBottomBarButton *)v11 effectView];
    [v104 setClipsToBounds:1];

    v105 = [(PHBottomBarButton *)v11 effectView];
    v106 = [(PHBottomBarButton *)v11 imageView];
    [(PHBottomBarButton *)v11 insertSubview:v105 belowSubview:v106];
    goto LABEL_33;
  }

  v114 = [v6 backgroundMaterial];

  if (v114)
  {
    v115 = objc_alloc(MEMORY[0x277D75D68]);
    v116 = [v6 backgroundMaterial];
    v117 = [v115 initWithEffect:v116];
    [(PHBottomBarButton *)v11 setEffectView:v117];

    v118 = [(PHBottomBarButton *)v11 effectView];
    [v118 setAutoresizingMask:18];

    v119 = [(PHBottomBarButton *)v11 layer];
    [v119 cornerRadius];
    v121 = v120;
    v122 = [(PHBottomBarButton *)v11 effectView];
    v123 = [v122 layer];
    [v123 setCornerRadius:v121];

    v124 = [(PHBottomBarButton *)v11 effectView];
    [v124 setClipsToBounds:1];

    v105 = [(PHBottomBarButton *)v11 effectView];
    v106 = [(PHBottomBarButton *)v11 imageView];
    [(PHBottomBarButton *)v11 insertSubview:v105 below:v106];
LABEL_33:
  }

  -[UIView setAction:](v11, "setAction:", [v6 action]);
  if ([v6 action] == 38)
  {
    v107 = [v6 icon];
    [v107 size];
    v109 = v108;
    v110 = [v6 icon];
    [v110 size];
    [(PHBottomBarButton *)v11 setIconSizeRatio:v109 / v111];

    -[PHBottomBarButton setActionType:](v11, "setActionType:", [v6 action]);
  }

LABEL_36:

  v112 = *MEMORY[0x277D85DE8];
  return v11;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v4 = self;
  v11.receiver = self;
  v11.super_class = PHBottomBarButton;
  v5 = [(PHBottomBarButton *)&v11 hitTest:a4 withEvent:a3.x, a3.y];
  if ([(PHBottomBarButton *)v4 appType]!= 2 || !v5 || ([(PHBottomBarButton *)v4 effectView], (v6 = objc_claimAutoreleasedReturnValue()) == 0) || (v7 = v6, [(PHBottomBarButton *)v4 effectView], v8 = objc_claimAutoreleasedReturnValue(), v8, v7, v5 != v8))
  {
    v4 = v5;
  }

  v9 = v4;

  return v4;
}

- (void)setOrientation:(int64_t)a3
{
  if (self->_orientation != a3)
  {
    v5 = *(MEMORY[0x277CBF2C0] + 16);
    *&v9.a = *MEMORY[0x277CBF2C0];
    *&v9.c = v5;
    *&v9.tx = *(MEMORY[0x277CBF2C0] + 32);
    if ((a3 - 2) <= 2)
    {
      CGAffineTransformMakeRotation(&v9, dbl_2429ED110[a3 - 2]);
    }

    self->_orientation = a3;
    v8 = v9;
    v6 = [(PHBottomBarButton *)self imageView];
    v7 = v8;
    [v6 setTransform:&v7];
  }
}

- (void)setUsesSmallerFontSize:(BOOL)a3
{
  self->_usesSmallerFontSize = a3;
  v5 = [MEMORY[0x277D74300] systemFontOfSize:10.0];
  v4 = [(PHBottomBarButton *)self titleLabel];
  [v4 setFont:v5];
}

- (CGRect)imageRectForContentRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  v20.receiver = self;
  v20.super_class = PHBottomBarButton;
  [(PHBottomBarButton *)&v20 imageRectForContentRect:a3.origin.x, a3.origin.y];
  v7 = v6;
  v9 = v8;
  v10 = [(PHBottomBarButton *)self orientation];
  if ((v10 - 3) >= 2)
  {
    v11 = v9;
  }

  else
  {
    v11 = v7;
  }

  if ((v10 - 3) < 2)
  {
    v7 = v9;
  }

  x = width * 0.5 - v7 * 0.5;
  y = height * 0.5 - v11 * 0.5;
  v14 = [MEMORY[0x277D759A0] mainScreen];
  [v14 scale];
  if (v15 == 1.0)
  {
    v21.origin.x = x;
    v21.origin.y = y;
    v21.size.width = v7;
    v21.size.height = v11;
    v22 = CGRectIntegral(v21);
    x = v22.origin.x;
    y = v22.origin.y;
    v7 = v22.size.width;
    v11 = v22.size.height;
  }

  v16 = x;
  v17 = y;
  v18 = v7;
  v19 = v11;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (CGRect)titleRectForContentRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  v44[1] = *MEMORY[0x277D85DE8];
  v7 = *MEMORY[0x277CBF3A0];
  v6 = *(MEMORY[0x277CBF3A0] + 8);
  v8 = *(MEMORY[0x277CBF3A0] + 16);
  v9 = *(MEMORY[0x277CBF3A0] + 24);
  v10 = [(PHBottomBarButton *)self currentTitle:a3.origin.x];
  if (v10)
  {
    v11 = v10;
    v12 = [(PHBottomBarButton *)self currentTitle];
    v13 = [v12 length];

    if (v13)
    {
      v14 = [(PHBottomBarButton *)self titleLabel];
      [v14 preferredMaxLayoutWidth];
      v16 = v15;
      if ([(PHBottomBarButton *)self actionType]== 38)
      {
        v17 = v16 + -15.0;
      }

      else
      {
        v17 = v16;
      }

      v18 = [v14 font];
      v19 = v18;
      if (v18)
      {
        v20 = v18;
      }

      else
      {
        v20 = [objc_opt_class() defaultFont];
      }

      v21 = v20;

      v43 = *MEMORY[0x277D740A8];
      v44[0] = v21;
      v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:&v43 count:1];
      v23 = [(PHBottomBarButton *)self currentTitle];
      [v23 boundingRectWithSize:1 options:v22 attributes:0 context:{3.40282347e38, 3.40282347e38}];
      v25 = v24;
      v27 = v26;

      v28 = ceil(v25);
      if (v17 >= v28)
      {
        v8 = v28;
      }

      else
      {
        v8 = v17;
      }

      if (v8 == v17)
      {
        v29 = [(PHBottomBarButton *)self currentTitle];
        [v29 boundingRectWithSize:1 options:v22 attributes:0 context:{v17, 3.40282347e38}];
        v31 = v30;

        v32 = ceil(v31);
        if (v32 <= 45.0)
        {
          v9 = v32;
        }

        else
        {
          v9 = 45.0;
        }
      }

      else
      {
        v9 = ceil(v27);
      }

      v33 = ceil(width * 0.5 - v8 * 0.5);
      v34 = [(PHBottomBarButton *)self actionType];
      v35 = ceil((width + -15.0) * 0.5 - v8 * 0.5);
      if (v34 == 38)
      {
        v7 = v35;
      }

      else
      {
        v7 = v33;
      }

      [(PHBottomBarButton *)self titleRectYOffset];
      v37 = height + v36;
      if (v8 == v17 && v9 == 45.0)
      {
        [v14 setAdjustsFontSizeToFitWidth:1];
      }

      v6 = ceil(v37);
    }
  }

  v38 = *MEMORY[0x277D85DE8];
  v39 = v7;
  v40 = v6;
  v41 = v8;
  v42 = v9;
  result.size.height = v42;
  result.size.width = v41;
  result.origin.y = v40;
  result.origin.x = v39;
  return result;
}

uint64_t __37__PHBottomBarButton_titleRectYOffset__block_invoke()
{
  result = [MEMORY[0x277D3A7E0] inCallBottomBarSpacing];
  v1 = 8.0;
  if (result == 6)
  {
    v1 = 11.0;
  }

  titleRectYOffset_yOffset = *&v1;
  return result;
}

- (id)newOverlayView
{
  if ([(UIView *)self action]== 4 || [(UIView *)self action]== 5 || [(UIView *)self action]== 6 || [(UIView *)self action]== 38)
  {
    v3 = objc_alloc(MEMORY[0x277D755E8]);
    v4 = [(PHBottomBarButton *)self imageView];
    v5 = [v4 image];
    v6 = [MEMORY[0x277D75348] blackColor];
    v7 = [v5 _flatImageWithColor:v6];
    v8 = [v3 initWithImage:v7];

    v9 = [MEMORY[0x277D75348] clearColor];
    [v8 setBackgroundColor:v9];

    [(PHBottomBarButton *)self frame];
    [(PHBottomBarButton *)self imageRectForContentRect:?];
    [v8 setFrame:?];
  }

  else
  {
    v11 = objc_alloc(MEMORY[0x277D75D18]);
    [(PHBottomBarButton *)self bounds];
    v8 = [v11 initWithFrame:?];
    v12 = [MEMORY[0x277D75348] blackColor];
    [v8 setBackgroundColor:v12];

    [(PHBottomBarButton *)self frame];
    v14 = v13 * 0.5;
    v15 = [v8 layer];
    [v15 setCornerRadius:v14];
  }

  [v8 setAlpha:0.400000006];
  [v8 setUserInteractionEnabled:0];
  return v8;
}

- (void)_performSetEnabled:(BOOL)a3
{
  v3 = a3;
  if ([(UIView *)self action]== 9 || [(UIView *)self action]== 12)
  {
    if (v3)
    {
      v5 = 1.0;
    }

    else
    {
      v5 = 0.3;
    }

    v6 = [MEMORY[0x277D75348] whiteColor];
    v7 = [v6 colorWithAlphaComponent:v5];
    [(PHBottomBarButton *)self setTintColor:v7];
  }

  if (v3)
  {
    if ([(PHBottomBarButton *)self canBeEnabled])
    {
      [(PHBottomBarButton *)self setAlpha:1.0];
      if ([(UIView *)self action]== 1 || [(UIView *)self action]== 3)
      {
        v8 = [MEMORY[0x277D75348] systemGreenColor];
      }

      else
      {
        v8 = [MEMORY[0x277D75348] systemRedColor];
      }

      v9 = v8;
      [(PHBottomBarButton *)self setBackgroundColor:v8];

      v10 = [(PHBottomBarButton *)self layer];
      [v10 setCompositingFilter:0];

      v11 = [(PHBottomBarButton *)self imageView];
      v12 = [v11 image];
      v13 = [MEMORY[0x277D75348] whiteColor];
      v14 = [v12 _flatImageWithColor:v13];

      [(PHBottomBarButton *)self setImage:v14 forState:0];
    }
  }

  else if ([(UIView *)self action]== 11 || [(UIView *)self action]== 10 || [(PHBottomBarButton *)self canBeEnabled])
  {

    [(PHBottomBarButton *)self _performSetDisabled];
  }
}

- (void)_performSetDisabled
{
  [(PHBottomBarButton *)self setAlpha:0.0500000007];
  v3 = [(PHBottomBarButton *)self imageView];
  v4 = [v3 image];
  v5 = [MEMORY[0x277D75348] blackColor];
  v8 = [v4 _flatImageWithColor:v5];

  [(PHBottomBarButton *)self setImage:v8 forState:0];
  [(PHBottomBarButton *)self setImage:v8 forState:2];
  v6 = [(PHBottomBarButton *)self layer];
  [v6 setAllowsGroupBlending:0];

  v7 = [(PHBottomBarButton *)self layer];
  [v7 setAllowsGroupOpacity:0];
}

- (BOOL)canBeEnabled
{
  if ([(UIView *)self action]== 15 || [(UIView *)self action]== 16)
  {
    goto LABEL_3;
  }

  v3 = [(UIView *)self action];
  if (v3 == 1)
  {
    return v3;
  }

  if ([(UIView *)self action]== 7 || [(UIView *)self action]== 3)
  {
LABEL_3:
    LOBYTE(v3) = 1;
  }

  else
  {
    LOBYTE(v3) = [(UIView *)self action]== 8;
  }

  return v3;
}

- (void)setHighlighted:(BOOL)a3
{
  if ((((self->_overlayView == 0) ^ a3) & 1) == 0)
  {
    [(PHBottomBarButton *)self _performSetHighlighted:?];
  }
}

- (void)_performSetHighlighted:(BOOL)a3
{
  if (a3)
  {
    v4 = [(PHBottomBarButton *)self newOverlayView];
    overlayView = self->_overlayView;
    self->_overlayView = v4;

    v6 = self->_overlayView;

    [(PHBottomBarButton *)self addSubview:v6];
  }

  else if ([(PHBottomBarButton *)self isSelected])
  {
    [(UIView *)self->_overlayView removeFromSuperview];
    v7 = self->_overlayView;
    self->_overlayView = 0;
  }

  else
  {
    v8 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"opacity"];
    v9 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7A8]];
    [v8 setTimingFunction:v9];

    [v8 setToValue:&unk_285537DB8];
    [v8 setDuration:0.5];
    [v8 setFillMode:*MEMORY[0x277CDA238]];
    [v8 setRemovedOnCompletion:0];
    [MEMORY[0x277CD9FF0] begin];
    v10 = self->_overlayView;
    v11 = MEMORY[0x277CD9FF0];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __44__PHBottomBarButton__performSetHighlighted___block_invoke;
    v14[3] = &unk_278D749E0;
    v15 = v10;
    v12 = v10;
    [v11 setCompletionBlock:v14];
    v13 = [(UIView *)self->_overlayView layer];
    [v13 addAnimation:v8 forKey:@"opacityAnimation"];

    [MEMORY[0x277CD9FF0] commit];
  }
}

- (void)_performSetSelected:(BOOL)a3
{
  if (a3)
  {
    v4 = [(PHBottomBarButton *)self backgroundColor];
    [(PHBottomBarButton *)self setOriginalBackgroundColor:v4];

    v6 = [(PHBottomBarButton *)self backgroundColor];
    v5 = [v6 colorWithAlphaComponent:1.0];
    [(PHBottomBarButton *)self setBackgroundColor:v5];
  }

  else
  {
    v6 = [(PHBottomBarButton *)self originalBackgroundColor];
    [(PHBottomBarButton *)self setBackgroundColor:?];
  }
}

- (void)setBackgroundColor:(id)a3
{
  v6 = a3;
  if (+[PHBottomBarButtonConfiguration usesGlass])
  {
    if (!self->_iconView)
    {
      v4 = [MEMORY[0x277D75348] clearColor];

      roundView = self->_roundView;
      if (v4 == v6)
      {
        [(UIView *)roundView dialer_applySmallClearGlassBackground];
      }

      else
      {
        [(UIView *)roundView dialer_applySmallClearGlassBackgroundWithTintColor:v6];
      }
    }
  }

  else
  {
    [(UIView *)self->_roundView setBackgroundColor:v6];
  }
}

- (NSArray)ambientButtonParts
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  roundView = self->_roundView;
  if (roundView)
  {
    v5 = [PHAmbientButtonPart partWithView:roundView type:0];
    [v3 addObject:v5];
  }

  effectView = self->_effectView;
  if (effectView)
  {
    v7 = [PHAmbientButtonPart partWithView:effectView type:0];
    [v3 addObject:v7];
  }

  overlayView = self->_overlayView;
  if (overlayView)
  {
    v9 = [PHAmbientButtonPart partWithView:overlayView type:0];
    [v3 addObject:v9];
  }

  v10 = [(PHBottomBarButton *)self imageView];

  if (v10)
  {
    v11 = [(PHBottomBarButton *)self imageView];
    v12 = [PHAmbientButtonPart partWithView:v11 type:1];
    [v3 addObject:v12];
  }

  v13 = [(PHBottomBarButton *)self titleLabel];

  if (v13)
  {
    v14 = [(PHBottomBarButton *)self titleLabel];
    v15 = [PHAmbientButtonPart partWithView:v14 type:2];
    [v3 addObject:v15];
  }

  accessoryBackgroundView = self->_accessoryBackgroundView;
  if (accessoryBackgroundView)
  {
    v17 = [PHAmbientButtonPart partWithView:accessoryBackgroundView type:3];
    [v3 addObject:v17];
  }

  accessoryView = self->_accessoryView;
  if (accessoryView)
  {
    v19 = [PHAmbientButtonPart partWithView:accessoryView type:3];
    [v3 addObject:v19];
  }

  return v3;
}

- (id)overlayViewForConfiguration:(id)a3
{
  v3 = a3;
  v4 = [v3 callState];
  v5 = [v3 action];

  v6 = 0;
  if (v5 > 5)
  {
    if (v5 != 6)
    {
      if (v5 != 38)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    if (v4 > 2)
    {
      if (v4 == 4)
      {
LABEL_32:
        v6 = +[PHGlassCutoutCirclesOverlayViewController makeHoldAndAcceptButtonCircleView];
        goto LABEL_11;
      }

      if (v4 != 3)
      {
        goto LABEL_10;
      }
    }

    else if (v4 != 1)
    {
      if (v4 != 2)
      {
        goto LABEL_10;
      }

      goto LABEL_32;
    }

    v6 = +[PHGlassCutoutCirclesOverlayViewController makeHoldAcceptVoipButtonCircleView];
    goto LABEL_11;
  }

  if (v5 != 4)
  {
    if (v5 != 5)
    {
      goto LABEL_11;
    }

    if (v4 <= 2)
    {
      if (v4 != 1)
      {
        if (v4 != 2)
        {
          goto LABEL_10;
        }

        goto LABEL_31;
      }

      goto LABEL_24;
    }

    if (v4 == 4)
    {
LABEL_31:
      v6 = +[PHGlassCutoutCirclesOverlayViewController makeEndHoldAndAcceptButtonCircleView];
      goto LABEL_11;
    }

    if (v4 == 3)
    {
LABEL_24:
      v6 = +[PHGlassCutoutCirclesOverlayViewController makeEndHoldAcceptVoipButtonCircleView];
      goto LABEL_11;
    }

LABEL_10:
    v6 = +[PHGlassCutoutCirclesOverlayViewController makeTextSOSButtonCircleView];
    goto LABEL_11;
  }

  if (v4 > 2)
  {
    if (v4 != 3)
    {
      if (v4 == 4)
      {
        v6 = +[PHGlassCutoutCirclesOverlayViewController makeEndVoipAcceptButtonCircleView];
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    v6 = +[PHGlassCutoutCirclesOverlayViewController makeEndAcceptVoipButtonCircleView];
  }

  else
  {
    if (v4 != 1)
    {
      if (v4 == 2)
      {
        v6 = +[PHGlassCutoutCirclesOverlayViewController makeEndAndAcceptButtonCircleView];
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    v6 = +[PHGlassCutoutCirclesOverlayViewController makeEndVoipAcceptVoipButtonCircleView];
  }

LABEL_11:

  return v6;
}

- (void)refreshForCallState:(int64_t)a3
{
  v5 = [PHBottomBarButtonConfiguration alloc];
  v6 = [(UIView *)self action];
  [(PHBottomBarButton *)self diameter];
  v7 = [(PHBottomBarButtonConfiguration *)v5 initWithAction:v6 diameter:a3 callState:?];
  v8 = [(PHBottomBarButtonConfiguration *)v7 icon];
  [(PHBottomBarButton *)self setImage:v8 forState:0];

  v9 = [(PHBottomBarButtonConfiguration *)v7 backgroundColor];
  [(PHBottomBarButton *)self setBackgroundColor:v9];

  v10 = [(PHBottomBarButtonConfiguration *)v7 selectedIcon];

  if (v10)
  {
    v11 = [(PHBottomBarButtonConfiguration *)v7 selectedIcon];
    [(PHBottomBarButton *)self setImage:v11 forState:4];
  }

  v12 = [(PHBottomBarButton *)self imageView];
  v13 = [v12 layer];
  v14 = *(MEMORY[0x277CD9DE8] + 80);
  v18[4] = *(MEMORY[0x277CD9DE8] + 64);
  v18[5] = v14;
  v15 = *(MEMORY[0x277CD9DE8] + 112);
  v18[6] = *(MEMORY[0x277CD9DE8] + 96);
  v18[7] = v15;
  v16 = *(MEMORY[0x277CD9DE8] + 16);
  v18[0] = *MEMORY[0x277CD9DE8];
  v18[1] = v16;
  v17 = *(MEMORY[0x277CD9DE8] + 48);
  v18[2] = *(MEMORY[0x277CD9DE8] + 32);
  v18[3] = v17;
  [v13 setTransform:v18];
}

- (CGSize)buttonSize
{
  width = self->_buttonSize.width;
  height = self->_buttonSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end