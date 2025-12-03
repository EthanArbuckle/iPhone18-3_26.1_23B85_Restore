@interface LACUIFaceIDLightweightLeadingView
- (CGColor)_tintColorForState:(int64_t)state;
- (LACUIFaceIDLightweightLeadingView)initWithInitialState:(int64_t)state;
- (double)_opacityForState:(int64_t)state;
- (id)_animationForState:(int64_t)state propertyName:(id)name;
- (void)_setup;
- (void)_updateOpacityForState:(int64_t)state animated:(BOOL)animated;
- (void)_updateTintColorForState:(int64_t)state animated:(BOOL)animated;
- (void)setState:(int64_t)state;
- (void)setState:(int64_t)state animated:(BOOL)animated completion:(id)completion;
@end

@implementation LACUIFaceIDLightweightLeadingView

- (LACUIFaceIDLightweightLeadingView)initWithInitialState:(int64_t)state
{
  v9.receiver = self;
  v9.super_class = LACUIFaceIDLightweightLeadingView;
  v4 = [(LACUIFaceIDLightweightLeadingView *)&v9 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  if (v4)
  {
    v5 = [[LACUIFaceIDSpinnerView alloc] initWithInitialState:3];
    faceIDSpinnerView = v4->_faceIDSpinnerView;
    v4->_faceIDSpinnerView = v5;

    v4->_state = state;
    faceLayer = [(LACUIFaceIDSpinnerView *)v4->_faceIDSpinnerView faceLayer];
    v4->_defaultContentsMultiplyColor = [faceLayer contentsMultiplyColor];

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
  leadingAnchor = [(LACUIFaceIDSpinnerView *)self->_faceIDSpinnerView leadingAnchor];
  leadingAnchor2 = [(LACUIFaceIDLightweightLeadingView *)self leadingAnchor];
  v15 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v18[0] = v15;
  trailingAnchor = [(LACUIFaceIDSpinnerView *)self->_faceIDSpinnerView trailingAnchor];
  trailingAnchor2 = [(LACUIFaceIDLightweightLeadingView *)self trailingAnchor];
  v5 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v18[1] = v5;
  topAnchor = [(LACUIFaceIDSpinnerView *)self->_faceIDSpinnerView topAnchor];
  topAnchor2 = [(LACUIFaceIDLightweightLeadingView *)self topAnchor];
  v8 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v18[2] = v8;
  bottomAnchor = [(LACUIFaceIDSpinnerView *)self->_faceIDSpinnerView bottomAnchor];
  bottomAnchor2 = [(LACUIFaceIDLightweightLeadingView *)self bottomAnchor];
  v11 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v18[3] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:4];
  [v14 activateConstraints:v12];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)setState:(int64_t)state
{
  if (self->_state != state)
  {
    self->_state = state;
    [LACUIFaceIDLightweightLeadingView setState:"setState:animated:completion:" animated:? completion:?];
  }
}

- (void)setState:(int64_t)state animated:(BOOL)animated completion:(id)completion
{
  completionCopy = completion;
  [MEMORY[0x277CD9FF0] begin];
  [(LACUIFaceIDLightweightLeadingView *)self _updateOpacityForState:state animated:1];
  [(LACUIFaceIDLightweightLeadingView *)self _updateTintColorForState:state animated:1];
  if (completionCopy)
  {
    v8 = MEMORY[0x277CD9FF0];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __66__LACUIFaceIDLightweightLeadingView_setState_animated_completion___block_invoke;
    v9[3] = &unk_27981EA98;
    v10 = completionCopy;
    [v8 setCompletionBlock:v9];
  }

  [MEMORY[0x277CD9FF0] commit];
}

- (void)_updateOpacityForState:(int64_t)state animated:(BOOL)animated
{
  [(LACUIFaceIDLightweightLeadingView *)self _opacityForState:?];
  v8 = v7;
  faceLayer = [(LACUIFaceIDSpinnerView *)self->_faceIDSpinnerView faceLayer];
  [faceLayer opacity];
  v11 = v10;

  if (v11 != v8)
  {
    if (animated)
    {
      faceLayer5 = [(LACUIFaceIDLightweightLeadingView *)self _animationForState:state propertyName:@"opacity"];
      v12 = MEMORY[0x277CCABB0];
      faceLayer2 = [(LACUIFaceIDSpinnerView *)self->_faceIDSpinnerView faceLayer];
      [faceLayer2 opacity];
      v14 = [v12 numberWithFloat:?];
      [faceLayer5 setFromValue:v14];

      *&v15 = v8;
      v16 = [MEMORY[0x277CCABB0] numberWithFloat:v15];
      [faceLayer5 setToValue:v16];

      faceLayer3 = [(LACUIFaceIDSpinnerView *)self->_faceIDSpinnerView faceLayer];
      *&v18 = v8;
      [faceLayer3 setOpacity:v18];

      faceLayer4 = [(LACUIFaceIDSpinnerView *)self->_faceIDSpinnerView faceLayer];
      [faceLayer4 addAnimation:faceLayer5 forKey:@"opacity"];
    }

    else
    {
      faceLayer5 = [(LACUIFaceIDSpinnerView *)self->_faceIDSpinnerView faceLayer];
      *&v20 = v8;
      [faceLayer5 setOpacity:v20];
    }
  }
}

- (void)_updateTintColorForState:(int64_t)state animated:(BOOL)animated
{
  v7 = [(LACUIFaceIDLightweightLeadingView *)self _tintColorForState:?];
  faceLayer = [(LACUIFaceIDSpinnerView *)self->_faceIDSpinnerView faceLayer];
  v9 = CGColorEqualToColor(v7, [faceLayer contentsMultiplyColor]);

  if (!v9)
  {
    if (animated)
    {
      faceLayer5 = [(LACUIFaceIDLightweightLeadingView *)self _animationForState:state propertyName:@"contentsMultiplyColor"];
      faceLayer2 = [(LACUIFaceIDSpinnerView *)self->_faceIDSpinnerView faceLayer];
      [faceLayer5 setFromValue:{objc_msgSend(faceLayer2, "contentsMultiplyColor")}];

      [faceLayer5 setToValue:v7];
      faceLayer3 = [(LACUIFaceIDSpinnerView *)self->_faceIDSpinnerView faceLayer];
      [faceLayer3 setContentsMultiplyColor:v7];

      faceLayer4 = [(LACUIFaceIDSpinnerView *)self->_faceIDSpinnerView faceLayer];
      [faceLayer4 addAnimation:faceLayer5 forKey:@"contentsMultiplyColor"];
    }

    else
    {
      faceLayer5 = [(LACUIFaceIDSpinnerView *)self->_faceIDSpinnerView faceLayer];
      [faceLayer5 setContentsMultiplyColor:v7];
    }
  }
}

- (double)_opacityForState:(int64_t)state
{
  result = 0.4;
  if (state == 1)
  {
    result = 1.0;
  }

  if (state == 2)
  {
    return 0.2;
  }

  return result;
}

- (CGColor)_tintColorForState:(int64_t)state
{
  if (!state || state == 2)
  {
    return *(self + 53);
  }

  if (state == 1)
  {
    systemGreenColor = [MEMORY[0x277D75348] systemGreenColor];
    v4 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:2];
    v5 = [systemGreenColor resolvedColorWithTraitCollection:v4];
    cGColor = [v5 CGColor];

    return cGColor;
  }

  return self;
}

- (id)_animationForState:(int64_t)state propertyName:(id)name
{
  v4 = [MEMORY[0x277CD9E10] animationWithKeyPath:name];
  [v4 setDuration:0.25];

  return v4;
}

@end