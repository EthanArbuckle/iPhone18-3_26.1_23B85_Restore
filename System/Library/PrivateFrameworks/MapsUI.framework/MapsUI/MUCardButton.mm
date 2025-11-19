@interface MUCardButton
- (MUCardButton)initWithFrame:(CGRect)a3;
- (void)_setupButton;
- (void)_setupConstraints;
- (void)_setupDefaults;
- (void)_updateButtonAppearance;
- (void)setBackgroundView:(id)a3;
- (void)setBlurBackground:(BOOL)a3;
- (void)setDirectionalLayoutMargins:(NSDirectionalEdgeInsets)a3;
- (void)setDrawBackground:(BOOL)a3;
- (void)setForegroundColor:(id)a3;
- (void)setSymbolName:(id)a3;
@end

@implementation MUCardButton

- (void)setDirectionalLayoutMargins:(NSDirectionalEdgeInsets)a3
{
  trailing = a3.trailing;
  bottom = a3.bottom;
  leading = a3.leading;
  top = a3.top;
  v8.receiver = self;
  v8.super_class = MUCardButton;
  [(MUCardButton *)&v8 setDirectionalLayoutMargins:?];
  if (MUIdiomInTraitEnvironment(self) != 5)
  {
    [(UIButton *)self->_actionButton _setTouchInsets:-top, -leading, -bottom, -trailing];
  }
}

- (void)setForegroundColor:(id)a3
{
  v5 = a3;
  if (self->_foregroundColor != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_foregroundColor, a3);
    [(MUCardButton *)self _updateButtonAppearance];
    v5 = v6;
  }
}

- (void)setBackgroundView:(id)a3
{
  v5 = a3;
  if (self->_backgroundView != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_backgroundView, a3);
    [(MUCardButton *)self _updateButtonAppearance];
    v5 = v6;
  }
}

- (void)setDrawBackground:(BOOL)a3
{
  if (self->_drawBackground != a3)
  {
    self->_drawBackground = a3;
    [(MUCardButton *)self _updateButtonAppearance];
  }
}

- (void)setBlurBackground:(BOOL)a3
{
  if (self->_blurBackground != a3)
  {
    self->_blurBackground = a3;
    [(MUCardButton *)self _updateButtonAppearance];
  }
}

- (void)setSymbolName:(id)a3
{
  v6 = a3;
  if (([(NSString *)self->_symbolName isEqual:?]& 1) == 0)
  {
    v4 = [v6 copy];
    symbolName = self->_symbolName;
    self->_symbolName = v4;

    [(MUCardButton *)self _updateButtonAppearance];
  }
}

- (void)_updateButtonAppearance
{
  v15 = [MEMORY[0x1E69DC740] filledButtonConfiguration];
  if (self->_drawBackground)
  {
    if (self->_blurBackground)
    {
      v3 = [MEMORY[0x1E69DC888] clearColor];
      v4 = [v15 background];
      [v4 setBackgroundColor:v3];

      v5 = [MEMORY[0x1E69DC888] systemWhiteColor];
      [v15 setBaseForegroundColor:v5];

      v6 = [MEMORY[0x1E69DC730] effectWithStyle:16];
      v7 = [v15 background];
      [v7 setVisualEffect:v6];

      goto LABEL_10;
    }

    v8 = [MEMORY[0x1E69DC888] tertiarySystemFillColor];
  }

  else
  {
    if (self->_isHovering)
    {
      [MEMORY[0x1E69DC888] quaternarySystemFillColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] clearColor];
    }
    v8 = ;
  }

  v9 = v8;
  v10 = [v15 background];
  [v10 setBackgroundColor:v9];

  [v15 setBaseForegroundColor:self->_foregroundColor];
LABEL_10:
  [v15 setCornerStyle:4];
  v11 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:7 weight:2 scale:15.0];
  v12 = [MEMORY[0x1E69DCAB8] systemImageNamed:self->_symbolName withConfiguration:v11];
  [v15 setImage:v12];

  backgroundView = self->_backgroundView;
  if (backgroundView)
  {
    v14 = [v15 background];
    [v14 setCustomView:backgroundView];
  }

  [(UIButton *)self->_actionButton setConfiguration:v15];
}

- (void)_setupConstraints
{
  v33[6] = *MEMORY[0x1E69E9840];
  if (MUIdiomInTraitEnvironment(self) == 5)
  {
    v3 = 24.0;
  }

  else
  {
    v3 = 30.0;
  }

  v4 = [(UIButton *)self->_actionButton heightAnchor];
  v5 = [v4 constraintEqualToConstant:v3];

  v6 = v5;
  v32 = v5;
  LODWORD(v7) = 1148846080;
  [v5 setPriority:v7];
  v8 = [(UIButton *)self->_actionButton widthAnchor];
  v9 = [(UIButton *)self->_actionButton heightAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];

  v31 = v10;
  LODWORD(v11) = 1148846080;
  [v10 setPriority:v11];
  v23 = MEMORY[0x1E696ACD8];
  v33[0] = v6;
  v33[1] = v10;
  v29 = [(UIButton *)self->_actionButton topAnchor];
  v30 = [(MUCardButton *)self layoutMarginsGuide];
  v28 = [v30 topAnchor];
  v27 = [v29 constraintEqualToAnchor:v28];
  v33[2] = v27;
  v25 = [(UIButton *)self->_actionButton bottomAnchor];
  v26 = [(MUCardButton *)self layoutMarginsGuide];
  v24 = [v26 bottomAnchor];
  v12 = [v25 constraintEqualToAnchor:v24];
  v33[3] = v12;
  v13 = [(UIButton *)self->_actionButton leadingAnchor];
  v14 = [(MUCardButton *)self layoutMarginsGuide];
  v15 = [v14 leadingAnchor];
  v16 = [v13 constraintEqualToAnchor:v15];
  v33[4] = v16;
  v17 = [(UIButton *)self->_actionButton trailingAnchor];
  v18 = [(MUCardButton *)self layoutMarginsGuide];
  v19 = [v18 trailingAnchor];
  v20 = [v17 constraintEqualToAnchor:v19];
  v33[5] = v20;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:6];
  [v23 activateConstraints:v21];

  v22 = *MEMORY[0x1E69E9840];
}

- (void)_setupButton
{
  v3 = [MEMORY[0x1E69DC738] buttonWithType:0];
  actionButton = self->_actionButton;
  self->_actionButton = v3;

  [(UIButton *)self->_actionButton setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIButton *)self->_actionButton setShowsMenuAsPrimaryAction:1];
  [(UIButton *)self->_actionButton setPreferredBehavioralStyle:1];
  LODWORD(v5) = 1148846080;
  [(UIButton *)self->_actionButton setContentCompressionResistancePriority:0 forAxis:v5];
  LODWORD(v6) = 1148846080;
  [(UIButton *)self->_actionButton setContentHuggingPriority:0 forAxis:v6];
  LODWORD(v7) = 1148846080;
  [(UIButton *)self->_actionButton setContentCompressionResistancePriority:1 forAxis:v7];
  LODWORD(v8) = 1148846080;
  [(UIButton *)self->_actionButton setContentHuggingPriority:1 forAxis:v8];
  [(UIButton *)self->_actionButton setPointerInteractionEnabled:1];
  [(MUCardButton *)self addSubview:self->_actionButton];
  [(MUCardButton *)self setPreservesSuperviewLayoutMargins:0];
  [(MUCardButton *)self setInsetsLayoutMarginsFromSafeArea:0];

  [(MUCardButton *)self setDirectionalLayoutMargins:16.0, 16.0, 16.0, 16.0];
}

- (void)_setupDefaults
{
  self->_drawBackground = MUIdiomInTraitEnvironment(self) != 5;
  self->_blurBackground = 0;
  symbolName = self->_symbolName;
  self->_symbolName = &stru_1F44CA030;

  v4 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  foregroundColor = self->_foregroundColor;
  self->_foregroundColor = v4;

  MEMORY[0x1EEE66BB8](v4, foregroundColor);
}

- (MUCardButton)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = MUCardButton;
  v3 = [(MUCardButton *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(MUCardButton *)v3 _setupDefaults];
    [(MUCardButton *)v4 _setupButton];
    [(MUCardButton *)v4 _setupConstraints];
    [(MUCardButton *)v4 _updateButtonAppearance];
  }

  return v4;
}

@end