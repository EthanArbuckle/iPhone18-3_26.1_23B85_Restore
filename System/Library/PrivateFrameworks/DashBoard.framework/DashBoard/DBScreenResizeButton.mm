@interface DBScreenResizeButton
- (DBScreenResizeButton)initWithFrame:(CGRect)a3;
- (void)_updateBackgroundColor;
- (void)_updateImage;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)setTransitionControlType:(unint64_t)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation DBScreenResizeButton

- (DBScreenResizeButton)initWithFrame:(CGRect)a3
{
  v12[1] = *MEMORY[0x277D85DE8];
  v11.receiver = self;
  v11.super_class = DBScreenResizeButton;
  v3 = [(DBScreenResizeButton *)&v11 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(DBScreenResizeButton *)v3 layer];
    [v5 setCornerCurve:*MEMORY[0x277CDA138]];

    v6 = [(DBScreenResizeButton *)v4 layer];
    [v6 setCornerRadius:9.0];

    v7 = [MEMORY[0x277CCA8D8] bundleForClass:NSClassFromString(&cfstr_Dashboard_4.isa)];
    v8 = [v7 localizedStringForKey:@"RESIZE" value:&stru_285A57218 table:@"CarPlayApp"];
    v12[0] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
    [(DBScreenResizeButton *)v4 setAccessibilityUserInputLabels:v9];

    [(DBScreenResizeButton *)v4 _updateBackgroundColor];
    [(DBDockButton *)v4 setFadeOpacityOnSelection:1];
  }

  return v4;
}

- (void)setTransitionControlType:(unint64_t)a3
{
  if (self->_transitionControlType != a3)
  {
    self->_transitionControlType = a3;
    [(DBScreenResizeButton *)self _updateImage];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = DBScreenResizeButton;
  [(DBScreenResizeButton *)&v4 traitCollectionDidChange:a3];
  [(DBScreenResizeButton *)self _updateBackgroundColor];
  [(DBScreenResizeButton *)self _updateImage];
}

- (void)_updateBackgroundColor
{
  if ([(DBScreenResizeButton *)self isFocused])
  {
    [MEMORY[0x277D75348] _carSystemFocusColor];
  }

  else
  {
    [MEMORY[0x277D75348] _carSystemQuaternaryColor];
  }
  v3 = ;
  [(DBScreenResizeButton *)self setBackgroundColor:v3];
}

- (void)_updateImage
{
  v3 = [(DBScreenResizeButton *)self transitionControlType];
  v4 = @"arrow.down.right.and.arrow.up.left";
  if (v3 != 2)
  {
    v4 = 0;
  }

  if (v3 == 1)
  {
    v5 = @"arrow.up.left.and.arrow.down.right";
  }

  else
  {
    v5 = v4;
  }

  v11 = [MEMORY[0x277D755D0] configurationWithTextStyle:*MEMORY[0x277D76938] scale:-1];
  v6 = MEMORY[0x277D755B8];
  v7 = [(DBScreenResizeButton *)self traitCollection];
  v8 = [v6 systemImageNamed:v5 compatibleWithTraitCollection:v7];

  v9 = [v8 imageWithConfiguration:v11];

  [(DBScreenResizeButton *)self setImage:v9 forState:0];
  if ([(DBScreenResizeButton *)self isFocused])
  {
    [MEMORY[0x277D75348] _carSystemFocusLabelColor];
  }

  else
  {
    [MEMORY[0x277D75348] _labelColor];
  }
  v10 = ;
  [(DBScreenResizeButton *)self setTintColor:v10];
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v5.receiver = self;
  v5.super_class = DBScreenResizeButton;
  [(DBScreenResizeButton *)&v5 didUpdateFocusInContext:a3 withAnimationCoordinator:a4];
  [(DBScreenResizeButton *)self _updateBackgroundColor];
  [(DBScreenResizeButton *)self _updateImage];
}

@end