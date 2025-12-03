@interface CSMiniPlayerControlButton
- (CSMiniPlayerControlButton)initWithSymbolName:(id)name scale:(int64_t)scale;
- (CSMiniPlayerControlButton)initWithSymbolName:(id)name withFont:(id)font scale:(int64_t)scale;
- (void)_onTouchDown:(id)down;
- (void)_onTouchUp:(id)up;
- (void)layoutSubviews;
- (void)replaceSymbol:(id)symbol scale:(int64_t)scale;
- (void)replaceSymbol:(id)symbol withFont:(id)font scale:(int64_t)scale;
@end

@implementation CSMiniPlayerControlButton

- (CSMiniPlayerControlButton)initWithSymbolName:(id)name scale:(int64_t)scale
{
  nameCopy = name;
  _symbolFont = [(CSMiniPlayerControlButton *)self _symbolFont];
  v8 = [(CSMiniPlayerControlButton *)self initWithSymbolName:nameCopy withFont:_symbolFont scale:scale];

  return v8;
}

- (CSMiniPlayerControlButton)initWithSymbolName:(id)name withFont:(id)font scale:(int64_t)scale
{
  nameCopy = name;
  fontCopy = font;
  v58.receiver = self;
  v58.super_class = CSMiniPlayerControlButton;
  v10 = [(CSMiniPlayerControlButton *)&v58 init];
  if (v10)
  {
    v52 = [MEMORY[0x277D755D8] configurationWithFont:fontCopy scale:scale];
    v53 = [MEMORY[0x277D755B0] systemImageNamed:nameCopy];
    plainButtonConfiguration = [MEMORY[0x277D75228] plainButtonConfiguration];
    [plainButtonConfiguration setImage:v53];
    [plainButtonConfiguration setPreferredSymbolConfigurationForImage:v52];
    v11 = [MEMORY[0x277D75220] buttonWithConfiguration:plainButtonConfiguration primaryAction:0];
    button = v10->_button;
    v10->_button = v11;

    v13 = v10->_button;
    v55 = nameCopy;
    [MEMORY[0x277D75340] labelColor];
    v14 = v54 = fontCopy;
    [(UIButton *)v13 setTintColor:v14];

    v15 = objc_alloc_init(MEMORY[0x277D75D18]);
    backgroundCircleView = v10->_backgroundCircleView;
    v10->_backgroundCircleView = v15;

    v17 = v10->_backgroundCircleView;
    labelColor = [MEMORY[0x277D75340] labelColor];
    [(UIView *)v17 setBackgroundColor:labelColor];

    [(UIView *)v10->_backgroundCircleView setAlpha:0.0];
    v19 = v10->_backgroundCircleView;
    CGAffineTransformMakeScale(&v57, 1.4, 1.4);
    [(UIView *)v19 setTransform:&v57];
    layer = [(UIView *)v10->_backgroundCircleView layer];
    [layer setCornerCurve:*MEMORY[0x277CDA128]];

    [(CSMiniPlayerControlButton *)v10 addSubview:v10->_button];
    [(CSMiniPlayerControlButton *)v10 addSubview:v10->_backgroundCircleView];
    [(UIButton *)v10->_button setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v10->_backgroundCircleView setTranslatesAutoresizingMaskIntoConstraints:0];
    v39 = MEMORY[0x277CCAAD0];
    widthAnchor = [(UIButton *)v10->_button widthAnchor];
    heightAnchor = [(UIButton *)v10->_button heightAnchor];
    v48 = [widthAnchor constraintEqualToAnchor:heightAnchor];
    v56[0] = v48;
    leadingAnchor = [(CSMiniPlayerControlButton *)v10 leadingAnchor];
    leadingAnchor2 = [(UIButton *)v10->_button leadingAnchor];
    v45 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v56[1] = v45;
    trailingAnchor = [(CSMiniPlayerControlButton *)v10 trailingAnchor];
    trailingAnchor2 = [(UIButton *)v10->_button trailingAnchor];
    v42 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v56[2] = v42;
    topAnchor = [(CSMiniPlayerControlButton *)v10 topAnchor];
    topAnchor2 = [(UIButton *)v10->_button topAnchor];
    v38 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v56[3] = v38;
    bottomAnchor = [(CSMiniPlayerControlButton *)v10 bottomAnchor];
    bottomAnchor2 = [(UIButton *)v10->_button bottomAnchor];
    v35 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v56[4] = v35;
    leadingAnchor3 = [(CSMiniPlayerControlButton *)v10 leadingAnchor];
    leadingAnchor4 = [(UIView *)v10->_backgroundCircleView leadingAnchor];
    v32 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v56[5] = v32;
    trailingAnchor3 = [(CSMiniPlayerControlButton *)v10 trailingAnchor];
    trailingAnchor4 = [(UIView *)v10->_backgroundCircleView trailingAnchor];
    v21 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v56[6] = v21;
    topAnchor3 = [(CSMiniPlayerControlButton *)v10 topAnchor];
    topAnchor4 = [(UIView *)v10->_backgroundCircleView topAnchor];
    v24 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v56[7] = v24;
    bottomAnchor3 = [(CSMiniPlayerControlButton *)v10 bottomAnchor];
    bottomAnchor4 = [(UIView *)v10->_backgroundCircleView bottomAnchor];
    v27 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    v56[8] = v27;
    v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:9];
    [v39 activateConstraints:v28];

    fontCopy = v54;
    nameCopy = v55;

    [(UIButton *)v10->_button addTarget:v10 action:sel__onTouchDown_ forControlEvents:1];
    [(UIButton *)v10->_button addTarget:v10 action:sel__onTouchUp_ forControlEvents:64];
    [(UIButton *)v10->_button addTarget:v10 action:sel__onTouchUp_ forControlEvents:128];
  }

  return v10;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = CSMiniPlayerControlButton;
  [(CSMiniPlayerControlButton *)&v5 layoutSubviews];
  [(UIView *)self->_backgroundCircleView bounds];
  v3 = CGRectGetWidth(v6) * 0.5;
  layer = [(UIView *)self->_backgroundCircleView layer];
  [layer setCornerRadius:v3];
}

- (void)replaceSymbol:(id)symbol scale:(int64_t)scale
{
  symbolCopy = symbol;
  _symbolFont = [(CSMiniPlayerControlButton *)self _symbolFont];
  [(CSMiniPlayerControlButton *)self replaceSymbol:symbolCopy withFont:_symbolFont scale:scale];
}

- (void)replaceSymbol:(id)symbol withFont:(id)font scale:(int64_t)scale
{
  v8 = MEMORY[0x277D755D8];
  symbolCopy = symbol;
  v11 = [v8 configurationWithFont:font scale:scale];
  v10 = [MEMORY[0x277D755B0] systemImageNamed:symbolCopy];

  [(UIButton *)self->_button setImage:v10 forState:0];
  [(UIButton *)self->_button setPreferredSymbolConfiguration:v11 forImageInState:0];
}

- (void)_onTouchDown:(id)down
{
  v4 = MEMORY[0x277D75D18];
  _buttonAnimationOptions = [(CSMiniPlayerControlButton *)self _buttonAnimationOptions];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__CSMiniPlayerControlButton__onTouchDown___block_invoke;
  v6[3] = &unk_278E0ACD8;
  v6[4] = self;
  [v4 animateWithDuration:_buttonAnimationOptions delay:v6 options:0 animations:0.2 completion:0.0];
}

void __42__CSMiniPlayerControlButton__onTouchDown___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 408) setAlpha:0.1];
  v2 = *(*(a1 + 32) + 408);
  CGAffineTransformMakeScale(&v4, 1.2, 1.2);
  [v2 setTransform:&v4];
  v3 = [*(a1 + 32) button];
  CGAffineTransformMakeScale(&v4, 0.8, 0.8);
  [v3 setTransform:&v4];
}

- (void)_onTouchUp:(id)up
{
  v4 = MEMORY[0x277D75D18];
  _buttonAnimationOptions = [(CSMiniPlayerControlButton *)self _buttonAnimationOptions];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __40__CSMiniPlayerControlButton__onTouchUp___block_invoke;
  v9[3] = &unk_278E0ACD8;
  v9[4] = self;
  [v4 animateWithDuration:_buttonAnimationOptions delay:v9 options:0 animations:0.47 completion:0.0];
  v6 = MEMORY[0x277D75D18];
  _buttonAnimationOptions2 = [(CSMiniPlayerControlButton *)self _buttonAnimationOptions];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __40__CSMiniPlayerControlButton__onTouchUp___block_invoke_2;
  v8[3] = &unk_278E0ACD8;
  v8[4] = self;
  [v6 animateWithDuration:_buttonAnimationOptions2 delay:v8 options:0 animations:0.2 completion:0.0];
}

void __40__CSMiniPlayerControlButton__onTouchUp___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 408) setAlpha:0.0];
  v2 = [*(a1 + 32) button];
  v3 = *(MEMORY[0x277CBF2C0] + 16);
  v4[0] = *MEMORY[0x277CBF2C0];
  v4[1] = v3;
  v4[2] = *(MEMORY[0x277CBF2C0] + 32);
  [v2 setTransform:v4];
}

uint64_t __40__CSMiniPlayerControlButton__onTouchUp___block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 408);
  CGAffineTransformMakeScale(&v3, 1.4, 1.4);
  return [v1 setTransform:&v3];
}

@end