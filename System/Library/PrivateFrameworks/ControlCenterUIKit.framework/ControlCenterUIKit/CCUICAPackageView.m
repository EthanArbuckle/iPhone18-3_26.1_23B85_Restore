@interface CCUICAPackageView
- (BOOL)ccui_configureForPunchOutRendering:(BOOL)a3;
- (CCUICAPackageView)initWithFrame:(CGRect)a3;
- (id)ccui_punchOutCompensatingCopy;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_applyGlyphTintColor;
- (void)_resetPackage;
- (void)_setPackage:(id)a3;
- (void)ccui_applyGlyphTintColor:(id)a3;
- (void)ccui_applyGlyphTintColor:(id)a3 isActive:(BOOL)a4;
- (void)ccui_setCompensationAlpha:(double)a3;
- (void)ccui_updatePunchOutCompensationIfNecessary;
- (void)layoutSubviews;
- (void)setGlyphTintColor:(id)a3;
- (void)setGlyphTintStyle:(unint64_t)a3;
- (void)setPackage:(id)a3;
- (void)setPackageDescription:(id)a3;
- (void)setScale:(double)a3;
- (void)setStateName:(id)a3;
@end

@implementation CCUICAPackageView

- (id)ccui_punchOutCompensatingCopy
{
  v2 = [(CCUICAPackageView *)self copy];
  [v2 ccui_updatePunchOutCompensationIfNecessary];

  return v2;
}

- (void)ccui_updatePunchOutCompensationIfNecessary
{
  v3 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:1.0];
  [(CCUICAPackageView *)self ccui_applyGlyphTintColor:v3];

  [(CCUICAPackageView *)self alpha];

  [(CCUICAPackageView *)self ccui_setCompensationAlpha:?];
}

- (void)_applyGlyphTintColor
{
  v3 = self->_glyphTintColor;
  if (v3)
  {
    v4 = v3;
    glyphTintStyle = self->_glyphTintStyle;
    if (glyphTintStyle >= 2)
    {
      if (glyphTintStyle != 2)
      {
LABEL_7:
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __41__CCUICAPackageView__applyGlyphTintColor__block_invoke;
        aBlock[3] = &unk_1E83EA7C0;
        v8 = v4;
        v23 = v8;
        v9 = _Block_copy(aBlock);
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 3221225472;
        v19[2] = __41__CCUICAPackageView__applyGlyphTintColor__block_invoke_2;
        v19[3] = &unk_1E83EA808;
        v20 = v8;
        v21 = glyphTintStyle;
        v10 = v8;
        v11 = _Block_copy(v19);
        v12 = MEMORY[0x1E69DD250];
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __41__CCUICAPackageView__applyGlyphTintColor__block_invoke_4;
        v15[3] = &unk_1E83EA858;
        v15[4] = self;
        v16 = v9;
        v18 = glyphTintStyle - 1 < 2;
        v17 = v11;
        v13 = v11;
        v14 = v9;
        [v12 ccui_performLayerAnimations:v15];

        return;
      }

      v7 = [MEMORY[0x1E69DC888] whiteColor];
    }

    else
    {
      v6 = [(CCUICAPackageView *)self traitCollection];
      v7 = [v4 resolvedColorWithTraitCollection:v6];

      v4 = v6;
    }

    v4 = v7;
    goto LABEL_7;
  }
}

void __41__CCUICAPackageView__applyGlyphTintColor__block_invoke_4(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 424);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __41__CCUICAPackageView__applyGlyphTintColor__block_invoke_5;
  v3[3] = &unk_1E83EA830;
  v4 = *(a1 + 40);
  v6 = *(a1 + 56);
  v5 = *(a1 + 48);
  [v2 ccuiEnumerateSubtreeUsingBlock:v3];
}

void __41__CCUICAPackageView__applyGlyphTintColor__block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 sublayers];
  v5 = [v4 count];

  v6 = objc_opt_class();
  v12 = v3;
  if (v6)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v12;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    [v8 setFillColor:{(*(*(a1 + 32) + 16))(*(a1 + 32), objc_msgSend(v8, "fillColor"))}];
    [v8 setStrokeColor:{(*(*(a1 + 32) + 16))(*(a1 + 32), objc_msgSend(v8, "strokeColor"))}];
  }

  else if (v5)
  {
    if (*(a1 + 48) == 1)
    {
      v9 = [v12 name];
      v10 = [v9 isEqualToString:@"secondary"];

      if (v10)
      {
        (*(*(a1 + 40) + 16))();
        LODWORD(v11) = 1.0;
        [v12 setOpacity:v11];
      }
    }
  }

  else
  {
    [v12 setBackgroundColor:{(*(*(a1 + 32) + 16))(*(a1 + 32), objc_msgSend(v12, "backgroundColor"))}];
  }
}

uint64_t __41__CCUICAPackageView__applyGlyphTintColor__block_invoke(uint64_t a1, CGColorRef color)
{
  if (!color)
  {
    return 0;
  }

  v2 = [*(a1 + 32) colorWithAlphaComponent:CGColorGetAlpha(color)];
  v3 = [v2 CGColor];

  return v3;
}

void __41__CCUICAPackageView__applyGlyphTintColor__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 filters];
  v5 = [v4 bs_containsObjectPassingTest:&__block_literal_global_16_0];

  v6 = MEMORY[0x1E6979D78];
  if ((v5 & 1) == 0)
  {
    v7 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979D78]];
    v8 = [v3 filters];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = [MEMORY[0x1E695DEC8] array];
    }

    v11 = v10;

    v12 = [v11 arrayByAddingObject:v7];

    [v3 setFilters:v12];
  }

  if (*(a1 + 40) == 2)
  {
    objc_opt_self();
    v13 = xmmword_1D16D1DC0;
    v14 = xmmword_1D16D1DD0;
    v15 = xmmword_1D16D1DE0;
    v16 = xmmword_1D16D1DF0;
    v17 = xmmword_1D16D1E00;
  }

  else
  {
    v26 = 0;
    v27 = 0;
    v25 = 0;
    [*(a1 + 32) getRed:&v27 green:&v26 blue:&v25 alpha:0];
    CAColorMatrixMakeColorSourceOver();
    v17 = v20;
    v16 = v21;
    v15 = v22;
    v14 = v23;
    v13 = v24;
  }

  v20 = v17;
  v21 = v16;
  v22 = v15;
  v23 = v14;
  v24 = v13;
  v18 = [MEMORY[0x1E696B098] valueWithCAColorMatrix:&v20];
  v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"filters.%@.%@", *v6, *MEMORY[0x1E6979AC0]];
  [v3 setValue:v18 forKeyPath:v19];
}

uint64_t __41__CCUICAPackageView__applyGlyphTintColor__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_class();
  v4 = v2;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = [v6 type];

  v8 = [v7 isEqualToString:*MEMORY[0x1E6979D78]];
  return v8;
}

- (void)layoutSubviews
{
  v9.receiver = self;
  v9.super_class = CCUICAPackageView;
  [(CCUICAPackageView *)&v9 layoutSubviews];
  packageContentView = self->_packageContentView;
  [(CCUICAPackageView *)self bounds];
  UIRectGetCenter();
  [(UIView *)packageContentView setCenter:?];
  scale = self->_scale;
  memset(&v8, 0, sizeof(v8));
  if (fabs(scale + -1.0) >= 2.22044605e-16)
  {
    CGAffineTransformMakeScale(&v8, scale, scale);
  }

  else
  {
    v5 = *(MEMORY[0x1E695EFD0] + 16);
    *&v8.a = *MEMORY[0x1E695EFD0];
    *&v8.c = v5;
    *&v8.tx = *(MEMORY[0x1E695EFD0] + 32);
  }

  v6 = self->_packageContentView;
  v7 = v8;
  [(UIView *)v6 setTransform:&v7];
}

- (BOOL)ccui_configureForPunchOutRendering:(BOOL)a3
{
  v3 = a3;
  v4 = [(CCUICAPackageView *)self layer];
  v5 = v4;
  if (v3)
  {
    v6 = *MEMORY[0x1E69798E8];
  }

  else
  {
    v6 = 0;
  }

  [v4 setCompositingFilter:v6];
  v7 = [v5 superlayer];
  [v7 setAllowsGroupOpacity:!v3];
  [v7 setAllowsGroupBlending:!v3];

  return 1;
}

- (void)ccui_setCompensationAlpha:(double)a3
{
  if (a3 > 0.4)
  {
    a3 = 0.4;
  }

  [(CCUICAPackageView *)self setAlpha:a3];
}

- (void)ccui_applyGlyphTintColor:(id)a3
{
  [(CCUICAPackageView *)self setGlyphTintColor:a3];

  [(CCUICAPackageView *)self setGlyphTintStyle:0];
}

- (void)ccui_applyGlyphTintColor:(id)a3 isActive:(BOOL)a4
{
  v4 = a4;
  [(CCUICAPackageView *)self setGlyphTintColor:a3];
  if (v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  [(CCUICAPackageView *)self setGlyphTintStyle:v6];
}

- (void)setPackage:(id)a3
{
  v5 = a3;
  if (self->_package != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_package, a3);
    [(CCUICAPackageView *)self _setPackage:v6];
    v5 = v6;
  }
}

- (void)setPackageDescription:(id)a3
{
  v6 = a3;
  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_packageDescription, a3);
    v5 = [MEMORY[0x1E6979400] ccuiPackageFromDescription:self->_packageDescription];
    [(CCUICAPackageView *)self setPackage:v5];
  }
}

- (void)setStateName:(id)a3
{
  stateController = self->_stateController;
  packageLayer = self->_packageLayer;
  v6 = a3;
  v7 = [(CAStateController *)stateController stateOfLayer:packageLayer];

  v11 = [(CALayer *)self->_packageLayer stateWithName:v6];

  v8 = [(CCUICAPackageDescription *)self->_packageDescription honorsUIViewAnimationState];
  LODWORD(v9) = 1.0;
  if (v8)
  {
    v10 = [MEMORY[0x1E69DD250] areAnimationsEnabled];
    v9 = 0.0;
    if (v10)
    {
      *&v9 = 1.0;
    }
  }

  [(CAStateController *)self->_stateController setState:v11 ofLayer:self->_packageLayer transitionSpeed:v9];
  if (!v7)
  {
    [(CCUICAPackageView *)self _applyGlyphTintColor];
  }
}

- (void)setGlyphTintColor:(id)a3
{
  v9 = a3;
  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_glyphTintColor, a3);
    v5 = self->_colorAppearanceTraitRegistration;
    if (!v9 || v5)
    {
      if (!v9 && v5)
      {
        [(CCUICAPackageView *)self unregisterForTraitChanges:v5];
        [(CCUICAPackageView *)self _resetPackage];
      }
    }

    else
    {
      v6 = [MEMORY[0x1E69DD1B8] systemTraitsAffectingColorAppearance];
      v7 = [(CCUICAPackageView *)self registerForTraitChanges:v6 withHandler:&__block_literal_global_1];
      colorAppearanceTraitRegistration = self->_colorAppearanceTraitRegistration;
      self->_colorAppearanceTraitRegistration = v7;
    }

    [(CCUICAPackageView *)self _applyGlyphTintColor];
  }
}

- (void)setGlyphTintStyle:(unint64_t)a3
{
  glyphTintStyle = self->_glyphTintStyle;
  if (glyphTintStyle != a3)
  {
    self->_glyphTintStyle = a3;
    if (self->_glyphTintColor)
    {
      if (a3 - 1 >= 2 && glyphTintStyle - 3 >= 0xFFFFFFFFFFFFFFFELL)
      {
        [(CCUICAPackageView *)self _resetPackage];
      }

      [(CCUICAPackageView *)self _applyGlyphTintColor];
    }
  }
}

- (void)setScale:(double)a3
{
  if (self->_scale != a3)
  {
    self->_scale = a3;
    [(CCUICAPackageView *)self setNeedsLayout];
  }
}

- (CCUICAPackageView)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = CCUICAPackageView;
  v3 = [(CCUICAPackageView *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_scale = 1.0;
    v3->_glyphTintStyle = 0;
    v5 = objc_alloc_init(MEMORY[0x1E69DD250]);
    packageContentView = v4->_packageContentView;
    v4->_packageContentView = v5;

    [(CCUICAPackageView *)v4 addSubview:v4->_packageContentView];
    [(CCUICAPackageView *)v4 setUserInteractionEnabled:0];
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [(CAStateController *)self->_stateController stateOfLayer:self->_packageLayer];
  v5 = [v4 name];

  v6 = [CCUICAPackageView alloc];
  [(CCUICAPackageView *)self frame];
  v7 = [(CCUICAPackageView *)v6 initWithFrame:?];
  [v7 setPackageDescription:self->_packageDescription];
  v8 = *(v7 + 408);
  v9 = [*(v7 + 424) stateWithName:v5];
  [v8 setState:v9 ofLayer:*(v7 + 424)];

  [v7 setGlyphTintColor:self->_glyphTintColor];
  [v7 setGlyphTintStyle:self->_glyphTintStyle];
  [v7 setScale:self->_scale];

  return v7;
}

- (void)_setPackage:(id)a3
{
  packageLayer = self->_packageLayer;
  v5 = a3;
  [(CALayer *)packageLayer removeFromSuperlayer];
  v6 = [v5 rootLayer];
  v7 = [v5 isGeometryFlipped];

  [v6 setGeometryFlipped:v7];
  v8 = [(UIView *)self->_packageContentView layer];
  [v8 addSublayer:v6];

  packageContentView = self->_packageContentView;
  [v6 bounds];
  [(UIView *)packageContentView setBounds:?];
  objc_storeStrong(&self->_packageLayer, v6);
  v10 = [objc_alloc(MEMORY[0x1E69794D0]) initWithLayer:v6];
  stateController = self->_stateController;
  self->_stateController = v10;

  v12 = [(CCUICAPackageDescription *)self->_packageDescription stateUpdateHandlers];
  if ([v12 count])
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __33__CCUICAPackageView__setPackage___block_invoke;
    v13[3] = &unk_1E83EA798;
    v13[4] = self;
    [v12 enumerateKeysAndObjectsUsingBlock:v13];
  }

  [(CCUICAPackageView *)self setNeedsLayout];
}

void __33__CCUICAPackageView__setPackage___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(*(a1 + 32) + 424);
  v6 = a3;
  v9 = [v5 stateWithName:a2];
  v7 = v6[2](v6, v9);

  if (v9)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    [*(*(a1 + 32) + 424) removeState:v9];
    [*(*(a1 + 32) + 424) addState:v7];
  }
}

- (void)_resetPackage
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v5 = 138412546;
  v6 = objc_opt_class();
  v7 = 2048;
  v8 = a2;
  v4 = v6;
  _os_log_error_impl(&dword_1D168A000, v3, OS_LOG_TYPE_ERROR, "%@:%p needs to reset its package layers but doesn't have a packageDescription set", &v5, 0x16u);
}

@end