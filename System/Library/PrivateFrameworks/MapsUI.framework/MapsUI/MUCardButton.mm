@interface MUCardButton
- (MUCardButton)initWithFrame:(CGRect)frame;
- (void)_setupButton;
- (void)_setupConstraints;
- (void)_setupDefaults;
- (void)_updateButtonAppearance;
- (void)setBackgroundView:(id)view;
- (void)setBlurBackground:(BOOL)background;
- (void)setDirectionalLayoutMargins:(NSDirectionalEdgeInsets)margins;
- (void)setDrawBackground:(BOOL)background;
- (void)setForegroundColor:(id)color;
- (void)setSymbolName:(id)name;
@end

@implementation MUCardButton

- (void)setDirectionalLayoutMargins:(NSDirectionalEdgeInsets)margins
{
  trailing = margins.trailing;
  bottom = margins.bottom;
  leading = margins.leading;
  top = margins.top;
  v8.receiver = self;
  v8.super_class = MUCardButton;
  [(MUCardButton *)&v8 setDirectionalLayoutMargins:?];
  if (MUIdiomInTraitEnvironment(self) != 5)
  {
    [(UIButton *)self->_actionButton _setTouchInsets:-top, -leading, -bottom, -trailing];
  }
}

- (void)setForegroundColor:(id)color
{
  colorCopy = color;
  if (self->_foregroundColor != colorCopy)
  {
    v6 = colorCopy;
    objc_storeStrong(&self->_foregroundColor, color);
    [(MUCardButton *)self _updateButtonAppearance];
    colorCopy = v6;
  }
}

- (void)setBackgroundView:(id)view
{
  viewCopy = view;
  if (self->_backgroundView != viewCopy)
  {
    v6 = viewCopy;
    objc_storeStrong(&self->_backgroundView, view);
    [(MUCardButton *)self _updateButtonAppearance];
    viewCopy = v6;
  }
}

- (void)setDrawBackground:(BOOL)background
{
  if (self->_drawBackground != background)
  {
    self->_drawBackground = background;
    [(MUCardButton *)self _updateButtonAppearance];
  }
}

- (void)setBlurBackground:(BOOL)background
{
  if (self->_blurBackground != background)
  {
    self->_blurBackground = background;
    [(MUCardButton *)self _updateButtonAppearance];
  }
}

- (void)setSymbolName:(id)name
{
  nameCopy = name;
  if (([(NSString *)self->_symbolName isEqual:?]& 1) == 0)
  {
    v4 = [nameCopy copy];
    symbolName = self->_symbolName;
    self->_symbolName = v4;

    [(MUCardButton *)self _updateButtonAppearance];
  }
}

- (void)_updateButtonAppearance
{
  filledButtonConfiguration = [MEMORY[0x1E69DC740] filledButtonConfiguration];
  if (self->_drawBackground)
  {
    if (self->_blurBackground)
    {
      clearColor = [MEMORY[0x1E69DC888] clearColor];
      background = [filledButtonConfiguration background];
      [background setBackgroundColor:clearColor];

      systemWhiteColor = [MEMORY[0x1E69DC888] systemWhiteColor];
      [filledButtonConfiguration setBaseForegroundColor:systemWhiteColor];

      v6 = [MEMORY[0x1E69DC730] effectWithStyle:16];
      background2 = [filledButtonConfiguration background];
      [background2 setVisualEffect:v6];

      goto LABEL_10;
    }

    tertiarySystemFillColor = [MEMORY[0x1E69DC888] tertiarySystemFillColor];
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
    tertiarySystemFillColor = ;
  }

  v9 = tertiarySystemFillColor;
  background3 = [filledButtonConfiguration background];
  [background3 setBackgroundColor:v9];

  [filledButtonConfiguration setBaseForegroundColor:self->_foregroundColor];
LABEL_10:
  [filledButtonConfiguration setCornerStyle:4];
  v11 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:7 weight:2 scale:15.0];
  v12 = [MEMORY[0x1E69DCAB8] systemImageNamed:self->_symbolName withConfiguration:v11];
  [filledButtonConfiguration setImage:v12];

  backgroundView = self->_backgroundView;
  if (backgroundView)
  {
    background4 = [filledButtonConfiguration background];
    [background4 setCustomView:backgroundView];
  }

  [(UIButton *)self->_actionButton setConfiguration:filledButtonConfiguration];
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

  heightAnchor = [(UIButton *)self->_actionButton heightAnchor];
  v5 = [heightAnchor constraintEqualToConstant:v3];

  v6 = v5;
  v32 = v5;
  LODWORD(v7) = 1148846080;
  [v5 setPriority:v7];
  widthAnchor = [(UIButton *)self->_actionButton widthAnchor];
  heightAnchor2 = [(UIButton *)self->_actionButton heightAnchor];
  v10 = [widthAnchor constraintEqualToAnchor:heightAnchor2];

  v31 = v10;
  LODWORD(v11) = 1148846080;
  [v10 setPriority:v11];
  v23 = MEMORY[0x1E696ACD8];
  v33[0] = v6;
  v33[1] = v10;
  topAnchor = [(UIButton *)self->_actionButton topAnchor];
  layoutMarginsGuide = [(MUCardButton *)self layoutMarginsGuide];
  topAnchor2 = [layoutMarginsGuide topAnchor];
  v27 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v33[2] = v27;
  bottomAnchor = [(UIButton *)self->_actionButton bottomAnchor];
  layoutMarginsGuide2 = [(MUCardButton *)self layoutMarginsGuide];
  bottomAnchor2 = [layoutMarginsGuide2 bottomAnchor];
  v12 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v33[3] = v12;
  leadingAnchor = [(UIButton *)self->_actionButton leadingAnchor];
  layoutMarginsGuide3 = [(MUCardButton *)self layoutMarginsGuide];
  leadingAnchor2 = [layoutMarginsGuide3 leadingAnchor];
  v16 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v33[4] = v16;
  trailingAnchor = [(UIButton *)self->_actionButton trailingAnchor];
  layoutMarginsGuide4 = [(MUCardButton *)self layoutMarginsGuide];
  trailingAnchor2 = [layoutMarginsGuide4 trailingAnchor];
  v20 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
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

  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  foregroundColor = self->_foregroundColor;
  self->_foregroundColor = secondaryLabelColor;

  MEMORY[0x1EEE66BB8](secondaryLabelColor, foregroundColor);
}

- (MUCardButton)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = MUCardButton;
  v3 = [(MUCardButton *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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