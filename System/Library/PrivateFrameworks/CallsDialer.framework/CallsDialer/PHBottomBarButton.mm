@interface PHBottomBarButton
+ (UIFont)defaultFont;
- (BOOL)canBeEnabled;
- (CGRect)imageRectForContentRect:(CGRect)rect;
- (CGRect)titleRectForContentRect:(CGRect)rect;
- (CGSize)buttonSize;
- (CGSize)intrinsicContentSize;
- (NSArray)ambientButtonParts;
- (PHBottomBarButton)initWithConfiguration:(id)configuration appType:(int64_t)type;
- (double)titleRectYOffset;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)newOverlayView;
- (id)overlayViewForConfiguration:(id)configuration;
- (void)_performSetDisabled;
- (void)_performSetEnabled:(BOOL)enabled;
- (void)_performSetHighlighted:(BOOL)highlighted;
- (void)_performSetSelected:(BOOL)selected;
- (void)layoutSubviews;
- (void)refreshForCallState:(int64_t)state;
- (void)setBackgroundColor:(id)color;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setOrientation:(int64_t)orientation;
- (void)setUsesSmallerFontSize:(BOOL)size;
@end

@implementation PHBottomBarButton

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = PHBottomBarButton;
  [(PHBottomBarButton *)&v5 layoutSubviews];
  effectView = [(PHBottomBarButton *)self effectView];

  if (effectView)
  {
    effectView2 = [(PHBottomBarButton *)self effectView];
    [(PHBottomBarButton *)self sendSubviewToBack:effectView2];
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
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  result = 6.0;
  if (userInterfaceIdiom == 1)
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

- (PHBottomBarButton)initWithConfiguration:(id)configuration appType:(int64_t)type
{
  v126[2] = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
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

  [configurationCopy diameter];
  v11->_diameter = v12;
  v11->_accessoryDiameter = v12 / 3.0;
  [(PHBottomBarButton *)v11 setAppType:type];
  v13 = [PHRoundView alloc];
  *&v14 = v11->_diameter * 0.5;
  v15 = [(PHRoundView *)v13 initWithFrame:v7 cornerRadius:v8, v9, v10, v14];
  roundView = v11->_roundView;
  v11->_roundView = v15;

  [(UIView *)v11->_roundView setTranslatesAutoresizingMaskIntoConstraints:0];
  widthAnchor = [(UIView *)v11->_roundView widthAnchor];
  v18 = [widthAnchor constraintEqualToConstant:v11->_diameter];
  [v18 setActive:1];

  heightAnchor = [(UIView *)v11->_roundView heightAnchor];
  v20 = [heightAnchor constraintEqualToConstant:v11->_diameter];
  [v20 setActive:1];

  [(UIView *)v11->_roundView setUserInteractionEnabled:0];
  v21 = v11->_roundView;
  imageView = [(PHBottomBarButton *)v11 imageView];
  [(PHBottomBarButton *)v11 insertSubview:v21 below:imageView];

  action = [configurationCopy action];
  if (action <= 0x26 && ((1 << action) & 0x4000000070) != 0)
  {
    if (+[PHBottomBarButtonConfiguration usesGlass])
    {
      v24 = [(PHBottomBarButton *)v11 overlayViewForConfiguration:configurationCopy];
      iconView = v11->_iconView;
      v11->_iconView = v24;

      [(UIView *)v11->_iconView setTranslatesAutoresizingMaskIntoConstraints:0];
      [(UIView *)v11->_iconView setAutoresizingMask:18];
      widthAnchor2 = [(UIView *)v11->_iconView widthAnchor];
      v27 = [widthAnchor2 constraintEqualToConstant:v11->_diameter];
      [v27 setActive:1];

      heightAnchor2 = [(UIView *)v11->_iconView heightAnchor];
      v29 = [heightAnchor2 constraintEqualToConstant:v11->_diameter];
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
      backgroundColor = [configurationCopy backgroundColor];
      clearColor = [MEMORY[0x277D75348] clearColor];

      v33 = v11->_roundView;
      if (backgroundColor == clearColor)
      {
        [(UIView *)v11->_roundView dialer_applySmallClearGlassBackground];
      }

      else
      {
        backgroundColor2 = [configurationCopy backgroundColor];
        [(UIView *)v33 dialer_applySmallClearGlassBackgroundWithTintColor:backgroundColor2];
      }
    }

    v30 = 0;
  }

  accessoryIcon = [configurationCopy accessoryIcon];

  if (accessoryIcon)
  {
    v36 = [PHRoundView alloc];
    *&v37 = v11->_accessoryDiameter * 0.5;
    v38 = [(PHRoundView *)v36 initWithFrame:v7 cornerRadius:v8, v9, v10, v37];
    accessoryBackgroundView = v11->_accessoryBackgroundView;
    v11->_accessoryBackgroundView = v38;

    systemWhiteColor = [MEMORY[0x277D75348] systemWhiteColor];
    [(UIView *)v11->_accessoryBackgroundView setBackgroundColor:systemWhiteColor];

    [(UIView *)v11->_accessoryBackgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
    widthAnchor3 = [(UIView *)v11->_accessoryBackgroundView widthAnchor];
    v42 = [widthAnchor3 constraintEqualToConstant:v11->_accessoryDiameter];
    [v42 setActive:1];

    heightAnchor3 = [(UIView *)v11->_accessoryBackgroundView heightAnchor];
    v44 = [heightAnchor3 constraintEqualToConstant:v11->_accessoryDiameter];
    [v44 setActive:1];

    [(UIView *)v11->_accessoryBackgroundView setUserInteractionEnabled:0];
    v45 = v11->_accessoryBackgroundView;
    imageView2 = [(PHBottomBarButton *)v11 imageView];
    [(PHBottomBarButton *)v11 insertSubview:v45 above:imageView2];

    trailingAnchor = [(UIView *)v11->_accessoryBackgroundView trailingAnchor];
    trailingAnchor2 = [(PHBottomBarButton *)v11 trailingAnchor];
    v49 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [v49 setActive:1];

    bottomAnchor = [(UIView *)v11->_accessoryBackgroundView bottomAnchor];
    bottomAnchor2 = [(PHBottomBarButton *)v11 bottomAnchor];
    v52 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    [v52 setActive:1];

    accessoryDiameter = v11->_accessoryDiameter;
    v54 = fmax(accessoryDiameter * 0.1, 2.0);
    if (accessoryDiameter > v54)
    {
      v55 = [objc_alloc(MEMORY[0x277D755E8]) initWithFrame:{v7, v8, v9, v10}];
      accessoryView = v11->_accessoryView;
      v11->_accessoryView = v55;

      accessoryIcon2 = [configurationCopy accessoryIcon];
      blackColor = [MEMORY[0x277D75348] blackColor];
      v59 = [accessoryIcon2 _flatImageWithColor:blackColor];
      [(UIImageView *)v11->_accessoryView setImage:v59];

      blackColor2 = [MEMORY[0x277D75348] blackColor];
      [(UIImageView *)v11->_accessoryView setTintColor:blackColor2];

      clearColor2 = [MEMORY[0x277D75348] clearColor];
      [(UIImageView *)v11->_accessoryView setBackgroundColor:clearColor2];

      [(UIImageView *)v11->_accessoryView setTranslatesAutoresizingMaskIntoConstraints:0];
      widthAnchor4 = [(UIImageView *)v11->_accessoryView widthAnchor];
      v63 = [widthAnchor4 constraintEqualToConstant:v11->_accessoryDiameter + v54 * -2.0];
      [v63 setActive:1];

      heightAnchor4 = [(UIImageView *)v11->_accessoryView heightAnchor];
      v65 = [heightAnchor4 constraintEqualToConstant:v11->_accessoryDiameter + v54 * -2.0];
      [v65 setActive:1];

      [(UIImageView *)v11->_accessoryView setUserInteractionEnabled:0];
      [(PHBottomBarButton *)v11 insertSubview:v11->_accessoryView above:v11->_accessoryBackgroundView];
      trailingAnchor3 = [(UIImageView *)v11->_accessoryView trailingAnchor];
      trailingAnchor4 = [(PHBottomBarButton *)v11 trailingAnchor];
      v68 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-v54];
      [v68 setActive:1];

      bottomAnchor3 = [(UIImageView *)v11->_accessoryView bottomAnchor];
      bottomAnchor4 = [(PHBottomBarButton *)v11 bottomAnchor];
      v71 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:-v54];
      [v71 setActive:1];
    }
  }

  titleLabel = [(PHBottomBarButton *)v11 titleLabel];
  [titleLabel setAdjustsFontSizeToFitWidth:0];

  titleLabel2 = [(PHBottomBarButton *)v11 titleLabel];
  [titleLabel2 setTextAlignment:1];

  defaultFont = [objc_opt_class() defaultFont];
  titleLabel3 = [(PHBottomBarButton *)v11 titleLabel];
  [titleLabel3 setFont:defaultFont];

  titleLabel4 = [(PHBottomBarButton *)v11 titleLabel];
  [titleLabel4 setLineBreakMode:4];

  if ([MEMORY[0x277D3A7E0] inCallBottomBarMaxTitleSize] == 1)
  {
    v77 = 100.0;
  }

  else
  {
    v77 = 105.0;
  }

  titleLabel5 = [(PHBottomBarButton *)v11 titleLabel];
  [titleLabel5 setPreferredMaxLayoutWidth:v77];

  v79 = v11->_diameter * 0.5;
  layer = [(PHBottomBarButton *)v11 layer];
  [layer setCornerRadius:v79];

  [(PHBottomBarButton *)v11 setClipsToBounds:0];
  [(PHBottomBarButton *)v11 setAdjustsImageWhenHighlighted:0];
  title = [configurationCopy title];
  [(PHBottomBarButton *)v11 setTitle:title forState:0];

  if (!v30 || !+[PHBottomBarButtonConfiguration usesGlass])
  {
    icon = [configurationCopy icon];
    [(PHBottomBarButton *)v11 setImage:icon forState:0];
  }

  titleLabel6 = [(PHBottomBarButton *)v11 titleLabel];
  [titleLabel6 setNumberOfLines:0];

  backgroundColor3 = [configurationCopy backgroundColor];
  [(PHBottomBarButton *)v11 setBackgroundColor:backgroundColor3];

  whiteColor = [MEMORY[0x277D75348] whiteColor];
  [(PHBottomBarButton *)v11 setTintColor:whiteColor];

  accessibilityIdentifier = [configurationCopy accessibilityIdentifier];
  [(PHBottomBarButton *)v11 setAccessibilityIdentifier:accessibilityIdentifier];

  selectedIcon = [configurationCopy selectedIcon];

  if (selectedIcon)
  {
    selectedIcon2 = [configurationCopy selectedIcon];
    [(PHBottomBarButton *)v11 setImage:selectedIcon2 forState:4];
  }

  if ([configurationCopy action] == 12 || objc_msgSend(configurationCopy, "action") == 25 || objc_msgSend(configurationCopy, "action") == 26 || objc_msgSend(configurationCopy, "action") == 27 || objc_msgSend(configurationCopy, "action") == 13 || objc_msgSend(configurationCopy, "action") == 11 || objc_msgSend(configurationCopy, "action") == 10)
  {
    colorEffect = [configurationCopy colorEffect];

    if (colorEffect)
    {
      colorEffect2 = [configurationCopy colorEffect];
      v91 = [MEMORY[0x277D75210] effectWithBlurRadius:40.0];
      v92 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:0];
      [(PHBottomBarButton *)v11 setEffectView:v92];

      v126[0] = colorEffect2;
      v126[1] = v91;
      v93 = [MEMORY[0x277CBEA60] arrayWithObjects:v126 count:2];
      effectView = [(PHBottomBarButton *)v11 effectView];
      [effectView setBackgroundEffects:v93];

      effectView2 = [(PHBottomBarButton *)v11 effectView];
      [effectView2 _setGroupName:@"PHBottomBarButtonCaptureGroup"];

      captureView = [configurationCopy captureView];
      effectView3 = [(PHBottomBarButton *)v11 effectView];
      [effectView3 _setCaptureView:captureView];
    }

    effectView4 = [(PHBottomBarButton *)v11 effectView];
    [effectView4 setAutoresizingMask:18];

    layer2 = [(PHBottomBarButton *)v11 layer];
    [layer2 cornerRadius];
    v101 = v100;
    effectView5 = [(PHBottomBarButton *)v11 effectView];
    layer3 = [effectView5 layer];
    [layer3 setCornerRadius:v101];

    effectView6 = [(PHBottomBarButton *)v11 effectView];
    [effectView6 setClipsToBounds:1];

    effectView7 = [(PHBottomBarButton *)v11 effectView];
    imageView3 = [(PHBottomBarButton *)v11 imageView];
    [(PHBottomBarButton *)v11 insertSubview:effectView7 belowSubview:imageView3];
    goto LABEL_33;
  }

  backgroundMaterial = [configurationCopy backgroundMaterial];

  if (backgroundMaterial)
  {
    v115 = objc_alloc(MEMORY[0x277D75D68]);
    backgroundMaterial2 = [configurationCopy backgroundMaterial];
    v117 = [v115 initWithEffect:backgroundMaterial2];
    [(PHBottomBarButton *)v11 setEffectView:v117];

    effectView8 = [(PHBottomBarButton *)v11 effectView];
    [effectView8 setAutoresizingMask:18];

    layer4 = [(PHBottomBarButton *)v11 layer];
    [layer4 cornerRadius];
    v121 = v120;
    effectView9 = [(PHBottomBarButton *)v11 effectView];
    layer5 = [effectView9 layer];
    [layer5 setCornerRadius:v121];

    effectView10 = [(PHBottomBarButton *)v11 effectView];
    [effectView10 setClipsToBounds:1];

    effectView7 = [(PHBottomBarButton *)v11 effectView];
    imageView3 = [(PHBottomBarButton *)v11 imageView];
    [(PHBottomBarButton *)v11 insertSubview:effectView7 below:imageView3];
LABEL_33:
  }

  -[UIView setAction:](v11, "setAction:", [configurationCopy action]);
  if ([configurationCopy action] == 38)
  {
    icon2 = [configurationCopy icon];
    [icon2 size];
    v109 = v108;
    icon3 = [configurationCopy icon];
    [icon3 size];
    [(PHBottomBarButton *)v11 setIconSizeRatio:v109 / v111];

    -[PHBottomBarButton setActionType:](v11, "setActionType:", [configurationCopy action]);
  }

LABEL_36:

  v112 = *MEMORY[0x277D85DE8];
  return v11;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  selfCopy = self;
  v11.receiver = self;
  v11.super_class = PHBottomBarButton;
  v5 = [(PHBottomBarButton *)&v11 hitTest:event withEvent:test.x, test.y];
  if ([(PHBottomBarButton *)selfCopy appType]!= 2 || !v5 || ([(PHBottomBarButton *)selfCopy effectView], (v6 = objc_claimAutoreleasedReturnValue()) == 0) || (v7 = v6, [(PHBottomBarButton *)selfCopy effectView], v8 = objc_claimAutoreleasedReturnValue(), v8, v7, v5 != v8))
  {
    selfCopy = v5;
  }

  v9 = selfCopy;

  return selfCopy;
}

- (void)setOrientation:(int64_t)orientation
{
  if (self->_orientation != orientation)
  {
    v5 = *(MEMORY[0x277CBF2C0] + 16);
    *&v9.a = *MEMORY[0x277CBF2C0];
    *&v9.c = v5;
    *&v9.tx = *(MEMORY[0x277CBF2C0] + 32);
    if ((orientation - 2) <= 2)
    {
      CGAffineTransformMakeRotation(&v9, dbl_2429ED110[orientation - 2]);
    }

    self->_orientation = orientation;
    v8 = v9;
    imageView = [(PHBottomBarButton *)self imageView];
    v7 = v8;
    [imageView setTransform:&v7];
  }
}

- (void)setUsesSmallerFontSize:(BOOL)size
{
  self->_usesSmallerFontSize = size;
  v5 = [MEMORY[0x277D74300] systemFontOfSize:10.0];
  titleLabel = [(PHBottomBarButton *)self titleLabel];
  [titleLabel setFont:v5];
}

- (CGRect)imageRectForContentRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  v20.receiver = self;
  v20.super_class = PHBottomBarButton;
  [(PHBottomBarButton *)&v20 imageRectForContentRect:rect.origin.x, rect.origin.y];
  v7 = v6;
  v9 = v8;
  orientation = [(PHBottomBarButton *)self orientation];
  if ((orientation - 3) >= 2)
  {
    v11 = v9;
  }

  else
  {
    v11 = v7;
  }

  if ((orientation - 3) < 2)
  {
    v7 = v9;
  }

  x = width * 0.5 - v7 * 0.5;
  y = height * 0.5 - v11 * 0.5;
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
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

- (CGRect)titleRectForContentRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  v44[1] = *MEMORY[0x277D85DE8];
  v7 = *MEMORY[0x277CBF3A0];
  v6 = *(MEMORY[0x277CBF3A0] + 8);
  v8 = *(MEMORY[0x277CBF3A0] + 16);
  v9 = *(MEMORY[0x277CBF3A0] + 24);
  v10 = [(PHBottomBarButton *)self currentTitle:rect.origin.x];
  if (v10)
  {
    v11 = v10;
    currentTitle = [(PHBottomBarButton *)self currentTitle];
    v13 = [currentTitle length];

    if (v13)
    {
      titleLabel = [(PHBottomBarButton *)self titleLabel];
      [titleLabel preferredMaxLayoutWidth];
      v16 = v15;
      if ([(PHBottomBarButton *)self actionType]== 38)
      {
        v17 = v16 + -15.0;
      }

      else
      {
        v17 = v16;
      }

      font = [titleLabel font];
      v19 = font;
      if (font)
      {
        defaultFont = font;
      }

      else
      {
        defaultFont = [objc_opt_class() defaultFont];
      }

      v21 = defaultFont;

      v43 = *MEMORY[0x277D740A8];
      v44[0] = v21;
      v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:&v43 count:1];
      currentTitle2 = [(PHBottomBarButton *)self currentTitle];
      [currentTitle2 boundingRectWithSize:1 options:v22 attributes:0 context:{3.40282347e38, 3.40282347e38}];
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
        currentTitle3 = [(PHBottomBarButton *)self currentTitle];
        [currentTitle3 boundingRectWithSize:1 options:v22 attributes:0 context:{v17, 3.40282347e38}];
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
      actionType = [(PHBottomBarButton *)self actionType];
      v35 = ceil((width + -15.0) * 0.5 - v8 * 0.5);
      if (actionType == 38)
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
        [titleLabel setAdjustsFontSizeToFitWidth:1];
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
    imageView = [(PHBottomBarButton *)self imageView];
    image = [imageView image];
    blackColor = [MEMORY[0x277D75348] blackColor];
    v7 = [image _flatImageWithColor:blackColor];
    v8 = [v3 initWithImage:v7];

    clearColor = [MEMORY[0x277D75348] clearColor];
    [v8 setBackgroundColor:clearColor];

    [(PHBottomBarButton *)self frame];
    [(PHBottomBarButton *)self imageRectForContentRect:?];
    [v8 setFrame:?];
  }

  else
  {
    v11 = objc_alloc(MEMORY[0x277D75D18]);
    [(PHBottomBarButton *)self bounds];
    v8 = [v11 initWithFrame:?];
    blackColor2 = [MEMORY[0x277D75348] blackColor];
    [v8 setBackgroundColor:blackColor2];

    [(PHBottomBarButton *)self frame];
    v14 = v13 * 0.5;
    layer = [v8 layer];
    [layer setCornerRadius:v14];
  }

  [v8 setAlpha:0.400000006];
  [v8 setUserInteractionEnabled:0];
  return v8;
}

- (void)_performSetEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  if ([(UIView *)self action]== 9 || [(UIView *)self action]== 12)
  {
    if (enabledCopy)
    {
      v5 = 1.0;
    }

    else
    {
      v5 = 0.3;
    }

    whiteColor = [MEMORY[0x277D75348] whiteColor];
    v7 = [whiteColor colorWithAlphaComponent:v5];
    [(PHBottomBarButton *)self setTintColor:v7];
  }

  if (enabledCopy)
  {
    if ([(PHBottomBarButton *)self canBeEnabled])
    {
      [(PHBottomBarButton *)self setAlpha:1.0];
      if ([(UIView *)self action]== 1 || [(UIView *)self action]== 3)
      {
        systemGreenColor = [MEMORY[0x277D75348] systemGreenColor];
      }

      else
      {
        systemGreenColor = [MEMORY[0x277D75348] systemRedColor];
      }

      v9 = systemGreenColor;
      [(PHBottomBarButton *)self setBackgroundColor:systemGreenColor];

      layer = [(PHBottomBarButton *)self layer];
      [layer setCompositingFilter:0];

      imageView = [(PHBottomBarButton *)self imageView];
      image = [imageView image];
      whiteColor2 = [MEMORY[0x277D75348] whiteColor];
      v14 = [image _flatImageWithColor:whiteColor2];

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
  imageView = [(PHBottomBarButton *)self imageView];
  image = [imageView image];
  blackColor = [MEMORY[0x277D75348] blackColor];
  v8 = [image _flatImageWithColor:blackColor];

  [(PHBottomBarButton *)self setImage:v8 forState:0];
  [(PHBottomBarButton *)self setImage:v8 forState:2];
  layer = [(PHBottomBarButton *)self layer];
  [layer setAllowsGroupBlending:0];

  layer2 = [(PHBottomBarButton *)self layer];
  [layer2 setAllowsGroupOpacity:0];
}

- (BOOL)canBeEnabled
{
  if ([(UIView *)self action]== 15 || [(UIView *)self action]== 16)
  {
    goto LABEL_3;
  }

  action = [(UIView *)self action];
  if (action == 1)
  {
    return action;
  }

  if ([(UIView *)self action]== 7 || [(UIView *)self action]== 3)
  {
LABEL_3:
    LOBYTE(action) = 1;
  }

  else
  {
    LOBYTE(action) = [(UIView *)self action]== 8;
  }

  return action;
}

- (void)setHighlighted:(BOOL)highlighted
{
  if ((((self->_overlayView == 0) ^ highlighted) & 1) == 0)
  {
    [(PHBottomBarButton *)self _performSetHighlighted:?];
  }
}

- (void)_performSetHighlighted:(BOOL)highlighted
{
  if (highlighted)
  {
    newOverlayView = [(PHBottomBarButton *)self newOverlayView];
    overlayView = self->_overlayView;
    self->_overlayView = newOverlayView;

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
    layer = [(UIView *)self->_overlayView layer];
    [layer addAnimation:v8 forKey:@"opacityAnimation"];

    [MEMORY[0x277CD9FF0] commit];
  }
}

- (void)_performSetSelected:(BOOL)selected
{
  if (selected)
  {
    backgroundColor = [(PHBottomBarButton *)self backgroundColor];
    [(PHBottomBarButton *)self setOriginalBackgroundColor:backgroundColor];

    backgroundColor2 = [(PHBottomBarButton *)self backgroundColor];
    v5 = [backgroundColor2 colorWithAlphaComponent:1.0];
    [(PHBottomBarButton *)self setBackgroundColor:v5];
  }

  else
  {
    backgroundColor2 = [(PHBottomBarButton *)self originalBackgroundColor];
    [(PHBottomBarButton *)self setBackgroundColor:?];
  }
}

- (void)setBackgroundColor:(id)color
{
  colorCopy = color;
  if (+[PHBottomBarButtonConfiguration usesGlass])
  {
    if (!self->_iconView)
    {
      clearColor = [MEMORY[0x277D75348] clearColor];

      roundView = self->_roundView;
      if (clearColor == colorCopy)
      {
        [(UIView *)roundView dialer_applySmallClearGlassBackground];
      }

      else
      {
        [(UIView *)roundView dialer_applySmallClearGlassBackgroundWithTintColor:colorCopy];
      }
    }
  }

  else
  {
    [(UIView *)self->_roundView setBackgroundColor:colorCopy];
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

  imageView = [(PHBottomBarButton *)self imageView];

  if (imageView)
  {
    imageView2 = [(PHBottomBarButton *)self imageView];
    v12 = [PHAmbientButtonPart partWithView:imageView2 type:1];
    [v3 addObject:v12];
  }

  titleLabel = [(PHBottomBarButton *)self titleLabel];

  if (titleLabel)
  {
    titleLabel2 = [(PHBottomBarButton *)self titleLabel];
    v15 = [PHAmbientButtonPart partWithView:titleLabel2 type:2];
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

- (id)overlayViewForConfiguration:(id)configuration
{
  configurationCopy = configuration;
  callState = [configurationCopy callState];
  action = [configurationCopy action];

  v6 = 0;
  if (action > 5)
  {
    if (action != 6)
    {
      if (action != 38)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    if (callState > 2)
    {
      if (callState == 4)
      {
LABEL_32:
        v6 = +[PHGlassCutoutCirclesOverlayViewController makeHoldAndAcceptButtonCircleView];
        goto LABEL_11;
      }

      if (callState != 3)
      {
        goto LABEL_10;
      }
    }

    else if (callState != 1)
    {
      if (callState != 2)
      {
        goto LABEL_10;
      }

      goto LABEL_32;
    }

    v6 = +[PHGlassCutoutCirclesOverlayViewController makeHoldAcceptVoipButtonCircleView];
    goto LABEL_11;
  }

  if (action != 4)
  {
    if (action != 5)
    {
      goto LABEL_11;
    }

    if (callState <= 2)
    {
      if (callState != 1)
      {
        if (callState != 2)
        {
          goto LABEL_10;
        }

        goto LABEL_31;
      }

      goto LABEL_24;
    }

    if (callState == 4)
    {
LABEL_31:
      v6 = +[PHGlassCutoutCirclesOverlayViewController makeEndHoldAndAcceptButtonCircleView];
      goto LABEL_11;
    }

    if (callState == 3)
    {
LABEL_24:
      v6 = +[PHGlassCutoutCirclesOverlayViewController makeEndHoldAcceptVoipButtonCircleView];
      goto LABEL_11;
    }

LABEL_10:
    v6 = +[PHGlassCutoutCirclesOverlayViewController makeTextSOSButtonCircleView];
    goto LABEL_11;
  }

  if (callState > 2)
  {
    if (callState != 3)
    {
      if (callState == 4)
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
    if (callState != 1)
    {
      if (callState == 2)
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

- (void)refreshForCallState:(int64_t)state
{
  v5 = [PHBottomBarButtonConfiguration alloc];
  action = [(UIView *)self action];
  [(PHBottomBarButton *)self diameter];
  v7 = [(PHBottomBarButtonConfiguration *)v5 initWithAction:action diameter:state callState:?];
  icon = [(PHBottomBarButtonConfiguration *)v7 icon];
  [(PHBottomBarButton *)self setImage:icon forState:0];

  backgroundColor = [(PHBottomBarButtonConfiguration *)v7 backgroundColor];
  [(PHBottomBarButton *)self setBackgroundColor:backgroundColor];

  selectedIcon = [(PHBottomBarButtonConfiguration *)v7 selectedIcon];

  if (selectedIcon)
  {
    selectedIcon2 = [(PHBottomBarButtonConfiguration *)v7 selectedIcon];
    [(PHBottomBarButton *)self setImage:selectedIcon2 forState:4];
  }

  imageView = [(PHBottomBarButton *)self imageView];
  layer = [imageView layer];
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
  [layer setTransform:v18];
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