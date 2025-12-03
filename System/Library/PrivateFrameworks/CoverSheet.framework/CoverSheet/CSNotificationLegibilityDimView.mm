@interface CSNotificationLegibilityDimView
+ (CAColorMatrix)_fullDimColorMatrixWithUserInterfaceStyle:(SEL)style;
+ (CAColorMatrix)_localizedColorMatrixWithUserInterfaceStyle:(SEL)style;
+ (CAColorMatrix)_noDimColorMatrix;
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
- (CSNotificationLegibilityDimView)initWithCoder:(id)coder;
- (CSNotificationLegibilityDimView)initWithFrame:(CGRect)frame dimType:(int64_t)type;
- (UIEdgeInsets)layoutInsetsForSize:(CGSize)size;
- (UIEdgeInsets)layoutInsetsForSize:(CGSize)size fadeAnchorY:(double)y;
- (void)_configureColorMatrix;
- (void)_layoutBlendingMask;
- (void)_layoutDimViews;
- (void)_updateDimLayerVisibility;
- (void)_updateForUserInterfaceStyle;
- (void)layoutSubviews;
- (void)setVisible:(BOOL)visible;
@end

@implementation CSNotificationLegibilityDimView

+ (CAColorMatrix)_noDimColorMatrix
{
  v3 = MEMORY[0x277CD9DA0];
  v4 = *(MEMORY[0x277CD9DA0] + 48);
  *&retstr->var8 = *(MEMORY[0x277CD9DA0] + 32);
  *&retstr->var12 = v4;
  *&retstr->var16 = v3[4];
  v5 = v3[1];
  *&retstr->var0 = *v3;
  *&retstr->var4 = v5;
  return result;
}

+ (CAColorMatrix)_localizedColorMatrixWithUserInterfaceStyle:(SEL)style
{
  if (a4 == 1)
  {
    v4.n128_u32[0] = *"fff?";
  }

  else
  {
    v4.n128_u32[0] = *"ff&?fff?";
  }

  return MEMORY[0x282128808](a2, style, v4, v4.n128_f32[0], v4.n128_f32[0], 1.0);
}

+ (CAColorMatrix)_fullDimColorMatrixWithUserInterfaceStyle:(SEL)style
{
  if (a4 == 1)
  {
    v4.n128_u32[0] = *"fff?";
    v5 = 1.0;
    v6 = *"fff?";
    v7 = *"fff?";
  }

  else
  {
    v4.n128_u32[0] = 0.5;
    v6 = 0.5;
    v7 = 0.5;
    v5 = 1.0;
  }

  return MEMORY[0x282128808](a2, style, v4, v6, v7, v5);
}

- (CSNotificationLegibilityDimView)initWithFrame:(CGRect)frame dimType:(int64_t)type
{
  v12[1] = *MEMORY[0x277D85DE8];
  v11.receiver = self;
  v11.super_class = CSNotificationLegibilityDimView;
  v5 = [(CSNotificationLegibilityDimView *)&v11 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v6 = v5;
  if (v5)
  {
    v5->_dimType = type;
    v5->_fadeRadiusY = 0.0;
    v5->_fadeWidth = 0.0;
    v5->_visible = 0;
    [(CSNotificationLegibilityDimView *)v5 setClipsToBounds:0];
    [(CSNotificationLegibilityDimView *)v6 _configureColorMatrix];
    [(CSNotificationLegibilityDimView *)v6 _updateDimLayerVisibility];
    v7 = objc_opt_self();
    v12[0] = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
    v9 = [(CSNotificationLegibilityDimView *)v6 registerForTraitChanges:v8 withTarget:v6 action:sel__updateForUserInterfaceStyle];
  }

  return v6;
}

- (CSNotificationLegibilityDimView)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"init(coder:) has not been implemented" userInfo:0];
  objc_exception_throw(v4);
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = CSNotificationLegibilityDimView;
  [(CSNotificationLegibilityDimView *)&v3 layoutSubviews];
  [(CSNotificationLegibilityDimView *)self _layoutDimViews];
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"filters.colorMatrix.inputColorMatrix"])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = CSNotificationLegibilityDimView;
    v5 = [(CSNotificationLegibilityDimView *)&v7 _shouldAnimatePropertyWithKey:keyCopy];
  }

  return v5;
}

- (void)setVisible:(BOOL)visible
{
  if (self->_visible != visible)
  {
    self->_visible = visible;
    [(CSNotificationLegibilityDimView *)self _updateDimLayerVisibility];
  }
}

- (UIEdgeInsets)layoutInsetsForSize:(CGSize)size
{
  [(CSNotificationLegibilityDimView *)self layoutInsetsForSize:size.width fadeAnchorY:size.height, 0.0];
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (UIEdgeInsets)layoutInsetsForSize:(CGSize)size fadeAnchorY:(double)y
{
  height = size.height;
  width = size.width;
  if ([(CSNotificationLegibilityDimView *)self dimType]== 1 || ![(CSNotificationLegibilityDimView *)self dimType])
  {
    traitCollection = [(CSNotificationLegibilityDimView *)self traitCollection];
    userInterfaceIdiom = [traitCollection userInterfaceIdiom];

    [(CSNotificationLegibilityDimView *)self fadeRadiusY];
    v15 = v14 + v14;
    dimType = [(CSNotificationLegibilityDimView *)self dimType];
    if (dimType == 1)
    {
      if (userInterfaceIdiom == 1)
      {
        v18 = 0.75;
      }

      else
      {
        v18 = 0.5;
      }

      [(CSNotificationLegibilityDimView *)self fadeRadiusY];
      v9 = -(v19 - height * v18);
    }

    else
    {
      v9 = 0.0;
      if (!dimType)
      {
        [(CSNotificationLegibilityDimView *)self fadeRadiusY];
        v9 = height - y - v17;
      }
    }

    v11 = -v15;
    if (userInterfaceIdiom == 1)
    {
      [(CSNotificationLegibilityDimView *)self fadeWidth];
      v8 = (width - (v15 + v20)) * 0.5;
      v10 = v8;
    }

    else
    {
      v8 = -v15;
      v10 = -v15;
    }
  }

  else
  {
    v9 = *MEMORY[0x277D768C8];
    v8 = *(MEMORY[0x277D768C8] + 8);
    v11 = *(MEMORY[0x277D768C8] + 16);
    v10 = *(MEMORY[0x277D768C8] + 24);
  }

  v21 = v9;
  v22 = v11;
  result.right = v10;
  result.bottom = v22;
  result.left = v8;
  result.top = v21;
  return result;
}

- (void)_configureColorMatrix
{
  v21[1] = *MEMORY[0x277D85DE8];
  traitCollection = [(CSNotificationLegibilityDimView *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  dimType = [(CSNotificationLegibilityDimView *)self dimType];
  if (dimType < 2)
  {
    v6 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA640]];
    v9 = MEMORY[0x277CCAE60];
    v10 = objc_opt_class();
    if (v10)
    {
      [v10 _localizedColorMatrixWithUserInterfaceStyle:userInterfaceStyle];
LABEL_11:
      v12 = v9;
      goto LABEL_14;
    }

LABEL_10:
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v16 = 0u;
    goto LABEL_11;
  }

  if (dimType == 2)
  {
    v6 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA640]];
    v9 = MEMORY[0x277CCAE60];
    v11 = objc_opt_class();
    if (v11)
    {
      [v11 _fullDimColorMatrixWithUserInterfaceStyle:userInterfaceStyle];
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (dimType != 3)
  {
    return;
  }

  v6 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA2C0]];
  [v6 setName:@"colorMatrix"];
  v7 = MEMORY[0x277CCAE60];
  v8 = objc_opt_class();
  if (v8)
  {
    [v8 _noDimColorMatrix];
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v16 = 0u;
  }

  v12 = v7;
LABEL_14:
  v13 = [v12 valueWithCAColorMatrix:{&v16, v16, v17, v18, v19, v20}];
  [v6 setValue:v13 forKey:*MEMORY[0x277CDA440]];

  if (v6)
  {
    layer = [(CSNotificationLegibilityDimView *)self layer];
    v21[0] = v6;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
    [layer setFilters:v15];
  }
}

- (void)_layoutDimViews
{
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  [(CSNotificationLegibilityDimView *)self _layoutBlendingMask];
  v3 = MEMORY[0x277CD9FF0];

  [v3 commit];
}

- (void)_layoutBlendingMask
{
  dimType = [(CSNotificationLegibilityDimView *)self dimType];
  if (dimType >= 2)
  {
    if (dimType != 2)
    {
      return;
    }

    blackColor = [MEMORY[0x277D75348] blackColor];
    [(CSNotificationLegibilityDimView *)self setBackgroundColor:?];
  }

  else
  {
    layer = [(CSNotificationLegibilityDimView *)self layer];
    blackColor2 = [MEMORY[0x277D75348] blackColor];
    [layer setShadowColor:{objc_msgSend(blackColor2, "CGColor")}];

    layer2 = [(CSNotificationLegibilityDimView *)self layer];
    [(CSNotificationLegibilityDimView *)self fadeRadiusY];
    [layer2 setShadowRadius:?];

    layer3 = [(CSNotificationLegibilityDimView *)self layer];
    LODWORD(v8) = 1.0;
    [layer3 setShadowOpacity:v8];

    layer4 = [(CSNotificationLegibilityDimView *)self layer];
    [layer4 setShadowPathIsBounds:1];

    layer5 = [(CSNotificationLegibilityDimView *)self layer];
    [layer5 setCornerRadius:*""];

    blackColor = [(CSNotificationLegibilityDimView *)self layer];
    [blackColor setCornerCurve:*MEMORY[0x277CDA138]];
  }
}

- (void)_updateDimLayerVisibility
{
  traitCollection = [(CSNotificationLegibilityDimView *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  dimType = [(CSNotificationLegibilityDimView *)self dimType];
  if (dimType >= 3)
  {
    if (dimType != 3)
    {
      return;
    }

    [(CSNotificationLegibilityDimView *)self setAlpha:1.0];
    layer = [(CSNotificationLegibilityDimView *)self layer];
    v9 = MEMORY[0x277CCAE60];
    isVisible = [(CSNotificationLegibilityDimView *)self isVisible];
    v11 = objc_opt_class();
    if (isVisible)
    {
      if (v11)
      {
        [v11 _fullDimColorMatrixWithUserInterfaceStyle:userInterfaceStyle];
LABEL_14:
        v12 = [v9 valueWithCAColorMatrix:v13];
        [layer setValue:v12 forKeyPath:@"filters.colorMatrix.inputColorMatrix"];

        return;
      }
    }

    else if (v11)
    {
      [v11 _noDimColorMatrix];
      goto LABEL_14;
    }

    memset(v13, 0, sizeof(v13));
    goto LABEL_14;
  }

  isVisible2 = [(CSNotificationLegibilityDimView *)self isVisible];
  v7 = 0.0;
  if (isVisible2)
  {
    v7 = 1.0;
  }

  [(CSNotificationLegibilityDimView *)self setAlpha:v7];
}

- (void)_updateForUserInterfaceStyle
{
  [(CSNotificationLegibilityDimView *)self _configureColorMatrix];

  [(CSNotificationLegibilityDimView *)self _updateDimLayerVisibility];
}

@end