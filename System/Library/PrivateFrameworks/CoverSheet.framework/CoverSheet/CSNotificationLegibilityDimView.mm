@interface CSNotificationLegibilityDimView
+ (CAColorMatrix)_fullDimColorMatrixWithUserInterfaceStyle:(SEL)a3;
+ (CAColorMatrix)_localizedColorMatrixWithUserInterfaceStyle:(SEL)a3;
+ (CAColorMatrix)_noDimColorMatrix;
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
- (CSNotificationLegibilityDimView)initWithCoder:(id)a3;
- (CSNotificationLegibilityDimView)initWithFrame:(CGRect)a3 dimType:(int64_t)a4;
- (UIEdgeInsets)layoutInsetsForSize:(CGSize)a3;
- (UIEdgeInsets)layoutInsetsForSize:(CGSize)a3 fadeAnchorY:(double)a4;
- (void)_configureColorMatrix;
- (void)_layoutBlendingMask;
- (void)_layoutDimViews;
- (void)_updateDimLayerVisibility;
- (void)_updateForUserInterfaceStyle;
- (void)layoutSubviews;
- (void)setVisible:(BOOL)a3;
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

+ (CAColorMatrix)_localizedColorMatrixWithUserInterfaceStyle:(SEL)a3
{
  if (a4 == 1)
  {
    v4.n128_u32[0] = *"fff?";
  }

  else
  {
    v4.n128_u32[0] = *"ff&?fff?";
  }

  return MEMORY[0x282128808](a2, a3, v4, v4.n128_f32[0], v4.n128_f32[0], 1.0);
}

+ (CAColorMatrix)_fullDimColorMatrixWithUserInterfaceStyle:(SEL)a3
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

  return MEMORY[0x282128808](a2, a3, v4, v6, v7, v5);
}

- (CSNotificationLegibilityDimView)initWithFrame:(CGRect)a3 dimType:(int64_t)a4
{
  v12[1] = *MEMORY[0x277D85DE8];
  v11.receiver = self;
  v11.super_class = CSNotificationLegibilityDimView;
  v5 = [(CSNotificationLegibilityDimView *)&v11 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v6 = v5;
  if (v5)
  {
    v5->_dimType = a4;
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

- (CSNotificationLegibilityDimView)initWithCoder:(id)a3
{
  v3 = a3;
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

- (BOOL)_shouldAnimatePropertyWithKey:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"filters.colorMatrix.inputColorMatrix"])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = CSNotificationLegibilityDimView;
    v5 = [(CSNotificationLegibilityDimView *)&v7 _shouldAnimatePropertyWithKey:v4];
  }

  return v5;
}

- (void)setVisible:(BOOL)a3
{
  if (self->_visible != a3)
  {
    self->_visible = a3;
    [(CSNotificationLegibilityDimView *)self _updateDimLayerVisibility];
  }
}

- (UIEdgeInsets)layoutInsetsForSize:(CGSize)a3
{
  [(CSNotificationLegibilityDimView *)self layoutInsetsForSize:a3.width fadeAnchorY:a3.height, 0.0];
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (UIEdgeInsets)layoutInsetsForSize:(CGSize)a3 fadeAnchorY:(double)a4
{
  height = a3.height;
  width = a3.width;
  if ([(CSNotificationLegibilityDimView *)self dimType]== 1 || ![(CSNotificationLegibilityDimView *)self dimType])
  {
    v12 = [(CSNotificationLegibilityDimView *)self traitCollection];
    v13 = [v12 userInterfaceIdiom];

    [(CSNotificationLegibilityDimView *)self fadeRadiusY];
    v15 = v14 + v14;
    v16 = [(CSNotificationLegibilityDimView *)self dimType];
    if (v16 == 1)
    {
      if (v13 == 1)
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
      if (!v16)
      {
        [(CSNotificationLegibilityDimView *)self fadeRadiusY];
        v9 = height - a4 - v17;
      }
    }

    v11 = -v15;
    if (v13 == 1)
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
  v3 = [(CSNotificationLegibilityDimView *)self traitCollection];
  v4 = [v3 userInterfaceStyle];

  v5 = [(CSNotificationLegibilityDimView *)self dimType];
  if (v5 < 2)
  {
    v6 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA640]];
    v9 = MEMORY[0x277CCAE60];
    v10 = objc_opt_class();
    if (v10)
    {
      [v10 _localizedColorMatrixWithUserInterfaceStyle:v4];
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

  if (v5 == 2)
  {
    v6 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA640]];
    v9 = MEMORY[0x277CCAE60];
    v11 = objc_opt_class();
    if (v11)
    {
      [v11 _fullDimColorMatrixWithUserInterfaceStyle:v4];
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (v5 != 3)
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
    v14 = [(CSNotificationLegibilityDimView *)self layer];
    v21[0] = v6;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
    [v14 setFilters:v15];
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
  v3 = [(CSNotificationLegibilityDimView *)self dimType];
  if (v3 >= 2)
  {
    if (v3 != 2)
    {
      return;
    }

    v11 = [MEMORY[0x277D75348] blackColor];
    [(CSNotificationLegibilityDimView *)self setBackgroundColor:?];
  }

  else
  {
    v4 = [(CSNotificationLegibilityDimView *)self layer];
    v5 = [MEMORY[0x277D75348] blackColor];
    [v4 setShadowColor:{objc_msgSend(v5, "CGColor")}];

    v6 = [(CSNotificationLegibilityDimView *)self layer];
    [(CSNotificationLegibilityDimView *)self fadeRadiusY];
    [v6 setShadowRadius:?];

    v7 = [(CSNotificationLegibilityDimView *)self layer];
    LODWORD(v8) = 1.0;
    [v7 setShadowOpacity:v8];

    v9 = [(CSNotificationLegibilityDimView *)self layer];
    [v9 setShadowPathIsBounds:1];

    v10 = [(CSNotificationLegibilityDimView *)self layer];
    [v10 setCornerRadius:*""];

    v11 = [(CSNotificationLegibilityDimView *)self layer];
    [v11 setCornerCurve:*MEMORY[0x277CDA138]];
  }
}

- (void)_updateDimLayerVisibility
{
  v3 = [(CSNotificationLegibilityDimView *)self traitCollection];
  v4 = [v3 userInterfaceStyle];

  v5 = [(CSNotificationLegibilityDimView *)self dimType];
  if (v5 >= 3)
  {
    if (v5 != 3)
    {
      return;
    }

    [(CSNotificationLegibilityDimView *)self setAlpha:1.0];
    v8 = [(CSNotificationLegibilityDimView *)self layer];
    v9 = MEMORY[0x277CCAE60];
    v10 = [(CSNotificationLegibilityDimView *)self isVisible];
    v11 = objc_opt_class();
    if (v10)
    {
      if (v11)
      {
        [v11 _fullDimColorMatrixWithUserInterfaceStyle:v4];
LABEL_14:
        v12 = [v9 valueWithCAColorMatrix:v13];
        [v8 setValue:v12 forKeyPath:@"filters.colorMatrix.inputColorMatrix"];

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

  v6 = [(CSNotificationLegibilityDimView *)self isVisible];
  v7 = 0.0;
  if (v6)
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