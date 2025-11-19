@interface CSMiniPlayerControlButton
- (CSMiniPlayerControlButton)initWithSymbolName:(id)a3 scale:(int64_t)a4;
- (CSMiniPlayerControlButton)initWithSymbolName:(id)a3 withFont:(id)a4 scale:(int64_t)a5;
- (void)_onTouchDown:(id)a3;
- (void)_onTouchUp:(id)a3;
- (void)layoutSubviews;
- (void)replaceSymbol:(id)a3 scale:(int64_t)a4;
- (void)replaceSymbol:(id)a3 withFont:(id)a4 scale:(int64_t)a5;
@end

@implementation CSMiniPlayerControlButton

- (CSMiniPlayerControlButton)initWithSymbolName:(id)a3 scale:(int64_t)a4
{
  v6 = a3;
  v7 = [(CSMiniPlayerControlButton *)self _symbolFont];
  v8 = [(CSMiniPlayerControlButton *)self initWithSymbolName:v6 withFont:v7 scale:a4];

  return v8;
}

- (CSMiniPlayerControlButton)initWithSymbolName:(id)a3 withFont:(id)a4 scale:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v58.receiver = self;
  v58.super_class = CSMiniPlayerControlButton;
  v10 = [(CSMiniPlayerControlButton *)&v58 init];
  if (v10)
  {
    v52 = [MEMORY[0x277D755D8] configurationWithFont:v9 scale:a5];
    v53 = [MEMORY[0x277D755B0] systemImageNamed:v8];
    v51 = [MEMORY[0x277D75228] plainButtonConfiguration];
    [v51 setImage:v53];
    [v51 setPreferredSymbolConfigurationForImage:v52];
    v11 = [MEMORY[0x277D75220] buttonWithConfiguration:v51 primaryAction:0];
    button = v10->_button;
    v10->_button = v11;

    v13 = v10->_button;
    v55 = v8;
    [MEMORY[0x277D75340] labelColor];
    v14 = v54 = v9;
    [(UIButton *)v13 setTintColor:v14];

    v15 = objc_alloc_init(MEMORY[0x277D75D18]);
    backgroundCircleView = v10->_backgroundCircleView;
    v10->_backgroundCircleView = v15;

    v17 = v10->_backgroundCircleView;
    v18 = [MEMORY[0x277D75340] labelColor];
    [(UIView *)v17 setBackgroundColor:v18];

    [(UIView *)v10->_backgroundCircleView setAlpha:0.0];
    v19 = v10->_backgroundCircleView;
    CGAffineTransformMakeScale(&v57, 1.4, 1.4);
    [(UIView *)v19 setTransform:&v57];
    v20 = [(UIView *)v10->_backgroundCircleView layer];
    [v20 setCornerCurve:*MEMORY[0x277CDA128]];

    [(CSMiniPlayerControlButton *)v10 addSubview:v10->_button];
    [(CSMiniPlayerControlButton *)v10 addSubview:v10->_backgroundCircleView];
    [(UIButton *)v10->_button setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v10->_backgroundCircleView setTranslatesAutoresizingMaskIntoConstraints:0];
    v39 = MEMORY[0x277CCAAD0];
    v50 = [(UIButton *)v10->_button widthAnchor];
    v49 = [(UIButton *)v10->_button heightAnchor];
    v48 = [v50 constraintEqualToAnchor:v49];
    v56[0] = v48;
    v47 = [(CSMiniPlayerControlButton *)v10 leadingAnchor];
    v46 = [(UIButton *)v10->_button leadingAnchor];
    v45 = [v47 constraintEqualToAnchor:v46];
    v56[1] = v45;
    v44 = [(CSMiniPlayerControlButton *)v10 trailingAnchor];
    v43 = [(UIButton *)v10->_button trailingAnchor];
    v42 = [v44 constraintEqualToAnchor:v43];
    v56[2] = v42;
    v41 = [(CSMiniPlayerControlButton *)v10 topAnchor];
    v40 = [(UIButton *)v10->_button topAnchor];
    v38 = [v41 constraintEqualToAnchor:v40];
    v56[3] = v38;
    v37 = [(CSMiniPlayerControlButton *)v10 bottomAnchor];
    v36 = [(UIButton *)v10->_button bottomAnchor];
    v35 = [v37 constraintEqualToAnchor:v36];
    v56[4] = v35;
    v34 = [(CSMiniPlayerControlButton *)v10 leadingAnchor];
    v33 = [(UIView *)v10->_backgroundCircleView leadingAnchor];
    v32 = [v34 constraintEqualToAnchor:v33];
    v56[5] = v32;
    v31 = [(CSMiniPlayerControlButton *)v10 trailingAnchor];
    v30 = [(UIView *)v10->_backgroundCircleView trailingAnchor];
    v21 = [v31 constraintEqualToAnchor:v30];
    v56[6] = v21;
    v22 = [(CSMiniPlayerControlButton *)v10 topAnchor];
    v23 = [(UIView *)v10->_backgroundCircleView topAnchor];
    v24 = [v22 constraintEqualToAnchor:v23];
    v56[7] = v24;
    v25 = [(CSMiniPlayerControlButton *)v10 bottomAnchor];
    v26 = [(UIView *)v10->_backgroundCircleView bottomAnchor];
    v27 = [v25 constraintEqualToAnchor:v26];
    v56[8] = v27;
    v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:9];
    [v39 activateConstraints:v28];

    v9 = v54;
    v8 = v55;

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
  v4 = [(UIView *)self->_backgroundCircleView layer];
  [v4 setCornerRadius:v3];
}

- (void)replaceSymbol:(id)a3 scale:(int64_t)a4
{
  v6 = a3;
  v7 = [(CSMiniPlayerControlButton *)self _symbolFont];
  [(CSMiniPlayerControlButton *)self replaceSymbol:v6 withFont:v7 scale:a4];
}

- (void)replaceSymbol:(id)a3 withFont:(id)a4 scale:(int64_t)a5
{
  v8 = MEMORY[0x277D755D8];
  v9 = a3;
  v11 = [v8 configurationWithFont:a4 scale:a5];
  v10 = [MEMORY[0x277D755B0] systemImageNamed:v9];

  [(UIButton *)self->_button setImage:v10 forState:0];
  [(UIButton *)self->_button setPreferredSymbolConfiguration:v11 forImageInState:0];
}

- (void)_onTouchDown:(id)a3
{
  v4 = MEMORY[0x277D75D18];
  v5 = [(CSMiniPlayerControlButton *)self _buttonAnimationOptions];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__CSMiniPlayerControlButton__onTouchDown___block_invoke;
  v6[3] = &unk_278E0ACD8;
  v6[4] = self;
  [v4 animateWithDuration:v5 delay:v6 options:0 animations:0.2 completion:0.0];
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

- (void)_onTouchUp:(id)a3
{
  v4 = MEMORY[0x277D75D18];
  v5 = [(CSMiniPlayerControlButton *)self _buttonAnimationOptions];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __40__CSMiniPlayerControlButton__onTouchUp___block_invoke;
  v9[3] = &unk_278E0ACD8;
  v9[4] = self;
  [v4 animateWithDuration:v5 delay:v9 options:0 animations:0.47 completion:0.0];
  v6 = MEMORY[0x277D75D18];
  v7 = [(CSMiniPlayerControlButton *)self _buttonAnimationOptions];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __40__CSMiniPlayerControlButton__onTouchUp___block_invoke_2;
  v8[3] = &unk_278E0ACD8;
  v8[4] = self;
  [v6 animateWithDuration:v7 delay:v8 options:0 animations:0.2 completion:0.0];
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