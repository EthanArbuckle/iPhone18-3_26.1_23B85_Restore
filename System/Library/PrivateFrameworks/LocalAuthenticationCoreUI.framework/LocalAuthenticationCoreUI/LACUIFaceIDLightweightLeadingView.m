@interface LACUIFaceIDLightweightLeadingView
- (CGColor)_tintColorForState:(int64_t)a3;
- (LACUIFaceIDLightweightLeadingView)initWithInitialState:(int64_t)a3;
- (double)_opacityForState:(int64_t)a3;
- (id)_animationForState:(int64_t)a3 propertyName:(id)a4;
- (void)_setup;
- (void)_updateOpacityForState:(int64_t)a3 animated:(BOOL)a4;
- (void)_updateTintColorForState:(int64_t)a3 animated:(BOOL)a4;
- (void)setState:(int64_t)a3;
- (void)setState:(int64_t)a3 animated:(BOOL)a4 completion:(id)a5;
@end

@implementation LACUIFaceIDLightweightLeadingView

- (LACUIFaceIDLightweightLeadingView)initWithInitialState:(int64_t)a3
{
  v9.receiver = self;
  v9.super_class = LACUIFaceIDLightweightLeadingView;
  v4 = [(LACUIFaceIDLightweightLeadingView *)&v9 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  if (v4)
  {
    v5 = [[LACUIFaceIDSpinnerView alloc] initWithInitialState:3];
    faceIDSpinnerView = v4->_faceIDSpinnerView;
    v4->_faceIDSpinnerView = v5;

    v4->_state = a3;
    v7 = [(LACUIFaceIDSpinnerView *)v4->_faceIDSpinnerView faceLayer];
    v4->_defaultContentsMultiplyColor = [v7 contentsMultiplyColor];

    [(LACUIFaceIDLightweightLeadingView *)v4 _setup];
  }

  return v4;
}

- (void)_setup
{
  v18[4] = *MEMORY[0x277D85DE8];
  [(LACUIFaceIDLightweightLeadingView *)self addSubview:self->_faceIDSpinnerView];
  [(LACUIFaceIDSpinnerView *)self->_faceIDSpinnerView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(LACUIFaceIDLightweightLeadingView *)self setState:self->_state animated:0 completion:0];
  v14 = MEMORY[0x277CCAAD0];
  v17 = [(LACUIFaceIDSpinnerView *)self->_faceIDSpinnerView leadingAnchor];
  v16 = [(LACUIFaceIDLightweightLeadingView *)self leadingAnchor];
  v15 = [v17 constraintEqualToAnchor:v16];
  v18[0] = v15;
  v3 = [(LACUIFaceIDSpinnerView *)self->_faceIDSpinnerView trailingAnchor];
  v4 = [(LACUIFaceIDLightweightLeadingView *)self trailingAnchor];
  v5 = [v3 constraintEqualToAnchor:v4];
  v18[1] = v5;
  v6 = [(LACUIFaceIDSpinnerView *)self->_faceIDSpinnerView topAnchor];
  v7 = [(LACUIFaceIDLightweightLeadingView *)self topAnchor];
  v8 = [v6 constraintEqualToAnchor:v7];
  v18[2] = v8;
  v9 = [(LACUIFaceIDSpinnerView *)self->_faceIDSpinnerView bottomAnchor];
  v10 = [(LACUIFaceIDLightweightLeadingView *)self bottomAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];
  v18[3] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:4];
  [v14 activateConstraints:v12];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)setState:(int64_t)a3
{
  if (self->_state != a3)
  {
    self->_state = a3;
    [LACUIFaceIDLightweightLeadingView setState:"setState:animated:completion:" animated:? completion:?];
  }
}

- (void)setState:(int64_t)a3 animated:(BOOL)a4 completion:(id)a5
{
  v7 = a5;
  [MEMORY[0x277CD9FF0] begin];
  [(LACUIFaceIDLightweightLeadingView *)self _updateOpacityForState:a3 animated:1];
  [(LACUIFaceIDLightweightLeadingView *)self _updateTintColorForState:a3 animated:1];
  if (v7)
  {
    v8 = MEMORY[0x277CD9FF0];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __66__LACUIFaceIDLightweightLeadingView_setState_animated_completion___block_invoke;
    v9[3] = &unk_27981EA98;
    v10 = v7;
    [v8 setCompletionBlock:v9];
  }

  [MEMORY[0x277CD9FF0] commit];
}

- (void)_updateOpacityForState:(int64_t)a3 animated:(BOOL)a4
{
  [(LACUIFaceIDLightweightLeadingView *)self _opacityForState:?];
  v8 = v7;
  v9 = [(LACUIFaceIDSpinnerView *)self->_faceIDSpinnerView faceLayer];
  [v9 opacity];
  v11 = v10;

  if (v11 != v8)
  {
    if (a4)
    {
      v21 = [(LACUIFaceIDLightweightLeadingView *)self _animationForState:a3 propertyName:@"opacity"];
      v12 = MEMORY[0x277CCABB0];
      v13 = [(LACUIFaceIDSpinnerView *)self->_faceIDSpinnerView faceLayer];
      [v13 opacity];
      v14 = [v12 numberWithFloat:?];
      [v21 setFromValue:v14];

      *&v15 = v8;
      v16 = [MEMORY[0x277CCABB0] numberWithFloat:v15];
      [v21 setToValue:v16];

      v17 = [(LACUIFaceIDSpinnerView *)self->_faceIDSpinnerView faceLayer];
      *&v18 = v8;
      [v17 setOpacity:v18];

      v19 = [(LACUIFaceIDSpinnerView *)self->_faceIDSpinnerView faceLayer];
      [v19 addAnimation:v21 forKey:@"opacity"];
    }

    else
    {
      v21 = [(LACUIFaceIDSpinnerView *)self->_faceIDSpinnerView faceLayer];
      *&v20 = v8;
      [v21 setOpacity:v20];
    }
  }
}

- (void)_updateTintColorForState:(int64_t)a3 animated:(BOOL)a4
{
  v7 = [(LACUIFaceIDLightweightLeadingView *)self _tintColorForState:?];
  v8 = [(LACUIFaceIDSpinnerView *)self->_faceIDSpinnerView faceLayer];
  v9 = CGColorEqualToColor(v7, [v8 contentsMultiplyColor]);

  if (!v9)
  {
    if (a4)
    {
      v13 = [(LACUIFaceIDLightweightLeadingView *)self _animationForState:a3 propertyName:@"contentsMultiplyColor"];
      v10 = [(LACUIFaceIDSpinnerView *)self->_faceIDSpinnerView faceLayer];
      [v13 setFromValue:{objc_msgSend(v10, "contentsMultiplyColor")}];

      [v13 setToValue:v7];
      v11 = [(LACUIFaceIDSpinnerView *)self->_faceIDSpinnerView faceLayer];
      [v11 setContentsMultiplyColor:v7];

      v12 = [(LACUIFaceIDSpinnerView *)self->_faceIDSpinnerView faceLayer];
      [v12 addAnimation:v13 forKey:@"contentsMultiplyColor"];
    }

    else
    {
      v13 = [(LACUIFaceIDSpinnerView *)self->_faceIDSpinnerView faceLayer];
      [v13 setContentsMultiplyColor:v7];
    }
  }
}

- (double)_opacityForState:(int64_t)a3
{
  result = 0.4;
  if (a3 == 1)
  {
    result = 1.0;
  }

  if (a3 == 2)
  {
    return 0.2;
  }

  return result;
}

- (CGColor)_tintColorForState:(int64_t)a3
{
  if (!a3 || a3 == 2)
  {
    return *(self + 53);
  }

  if (a3 == 1)
  {
    v3 = [MEMORY[0x277D75348] systemGreenColor];
    v4 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:2];
    v5 = [v3 resolvedColorWithTraitCollection:v4];
    v6 = [v5 CGColor];

    return v6;
  }

  return self;
}

- (id)_animationForState:(int64_t)a3 propertyName:(id)a4
{
  v4 = [MEMORY[0x277CD9E10] animationWithKeyPath:a4];
  [v4 setDuration:0.25];

  return v4;
}

@end