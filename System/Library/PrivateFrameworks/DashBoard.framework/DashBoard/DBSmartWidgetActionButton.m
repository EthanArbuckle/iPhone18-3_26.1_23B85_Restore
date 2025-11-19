@interface DBSmartWidgetActionButton
- (DBSmartWidgetActionButton)initWithUIImage:(id)a3;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)pressesBegan:(id)a3 withEvent:(id)a4;
- (void)pressesCancelled:(id)a3 withEvent:(id)a4;
- (void)pressesEnded:(id)a3 withEvent:(id)a4;
- (void)setFocusHighlightColor:(id)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setNeedsDisplay;
- (void)setSelected:(BOOL)a3;
- (void)setupConstraints;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation DBSmartWidgetActionButton

- (DBSmartWidgetActionButton)initWithUIImage:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = DBSmartWidgetActionButton;
  v5 = *MEMORY[0x277CBF3A0];
  v6 = *(MEMORY[0x277CBF3A0] + 8);
  v7 = *(MEMORY[0x277CBF3A0] + 16);
  v8 = *(MEMORY[0x277CBF3A0] + 24);
  v9 = [(DBSmartWidgetActionButton *)&v20 initWithFrame:*MEMORY[0x277CBF3A0], v6, v7, v8];
  if (v9)
  {
    v10 = [MEMORY[0x277D75348] secondarySystemFillColor];
    v11 = [MEMORY[0x277D75348] _carSystemFocusColor];
    focusHighlightColor = v9->_focusHighlightColor;
    v9->_focusHighlightColor = v11;

    v13 = [MEMORY[0x277D755D0] configurationWithTextStyle:*MEMORY[0x277D76920] scale:-1];
    v14 = [v4 imageWithConfiguration:v13];
    [(DBSmartWidgetActionButton *)v9 setImage:v14 forState:0];
    v15 = [[DBSmartWidgetActionButtonRingView alloc] initWithFrame:v5, v6, v7, v8];
    ringView = v9->_ringView;
    v9->_ringView = v15;

    [(DBSmartWidgetActionButtonRingView *)v9->_ringView setUserInteractionEnabled:0];
    [(DBSmartWidgetActionButtonRingView *)v9->_ringView setFillColor:v10];
    [(DBSmartWidgetActionButtonRingView *)v9->_ringView setFocusHighlightColor:v9->_focusHighlightColor];
    v17 = [MEMORY[0x277D75348] clearColor];
    [(DBSmartWidgetActionButtonRingView *)v9->_ringView setBackgroundColor:v17];

    [(DBSmartWidgetActionButtonRingView *)v9->_ringView setOpaque:0];
    [(DBSmartWidgetActionButton *)v9 addSubview:v9->_ringView];
    v18 = [MEMORY[0x277D75348] labelColor];
    [(DBSmartWidgetActionButton *)v9 setTintColor:v18];

    [(DBSmartWidgetActionButton *)v9 setAdjustsImageWhenDisabled:1];
    [(DBSmartWidgetActionButton *)v9 setAdjustsImageWhenHighlighted:0];
    [(DBSmartWidgetActionButton *)v9 setupConstraints];
    [(DBSmartWidgetActionButton *)v9 layoutIfNeeded];
    [(DBSmartWidgetActionButton *)v9 sendSubviewToBack:v9->_ringView];
  }

  return v9;
}

- (void)setupConstraints
{
  v3 = [(DBSmartWidgetActionButton *)self ringView];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];

  v24 = objc_opt_new();
  v4 = [(DBSmartWidgetActionButton *)self widthAnchor];
  v5 = [v4 constraintEqualToConstant:44.0];
  [v24 addObject:v5];

  v6 = [(DBSmartWidgetActionButton *)self heightAnchor];
  v7 = [v6 constraintEqualToConstant:44.0];
  [v24 addObject:v7];

  v8 = [(DBSmartWidgetActionButton *)self ringView];
  v9 = [v8 leadingAnchor];
  v10 = [(DBSmartWidgetActionButton *)self leadingAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];
  [v24 addObject:v11];

  v12 = [(DBSmartWidgetActionButton *)self ringView];
  v13 = [v12 trailingAnchor];
  v14 = [(DBSmartWidgetActionButton *)self trailingAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];
  [v24 addObject:v15];

  v16 = [(DBSmartWidgetActionButton *)self ringView];
  v17 = [v16 topAnchor];
  v18 = [(DBSmartWidgetActionButton *)self topAnchor];
  v19 = [v17 constraintEqualToAnchor:v18];
  [v24 addObject:v19];

  v20 = [(DBSmartWidgetActionButton *)self ringView];
  v21 = [v20 bottomAnchor];
  v22 = [(DBSmartWidgetActionButton *)self bottomAnchor];
  v23 = [v21 constraintEqualToAnchor:v22];
  [v24 addObject:v23];

  [MEMORY[0x277CCAAD0] activateConstraints:v24];
}

- (void)setFocusHighlightColor:(id)a3
{
  v4 = a3;
  v5 = [(DBSmartWidgetActionButton *)self ringView];
  [v5 setFocusHighlightColor:v4];
}

- (void)setNeedsDisplay
{
  v4.receiver = self;
  v4.super_class = DBSmartWidgetActionButton;
  [(DBSmartWidgetActionButton *)&v4 setNeedsDisplay];
  v3 = [(DBSmartWidgetActionButton *)self ringView];
  [v3 setNeedsDisplay];
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v5 = a3;
  v7 = [(DBSmartWidgetActionButton *)self ringView];
  v6 = [v5 nextFocusedItem];

  [v7 setFocusRingVisible:v6 == self];
}

- (void)pressesBegan:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (_pressesContainEvent(v6))
  {
    [(DBSmartWidgetActionButton *)self setHighlighted:1];
  }

  v8.receiver = self;
  v8.super_class = DBSmartWidgetActionButton;
  [(DBSmartWidgetActionButton *)&v8 pressesBegan:v6 withEvent:v7];
}

- (void)pressesEnded:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (_pressesContainEvent(v6))
  {
    [(DBSmartWidgetActionButton *)self setHighlighted:0];
  }

  v8.receiver = self;
  v8.super_class = DBSmartWidgetActionButton;
  [(DBSmartWidgetActionButton *)&v8 pressesEnded:v6 withEvent:v7];
}

- (void)pressesCancelled:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (_pressesContainEvent(v6))
  {
    [(DBSmartWidgetActionButton *)self setHighlighted:0];
  }

  v8.receiver = self;
  v8.super_class = DBSmartWidgetActionButton;
  [(DBSmartWidgetActionButton *)&v8 pressesCancelled:v6 withEvent:v7];
}

- (void)traitCollectionDidChange:(id)a3
{
  v5.receiver = self;
  v5.super_class = DBSmartWidgetActionButton;
  [(DBSmartWidgetActionButton *)&v5 traitCollectionDidChange:a3];
  v4 = [(DBSmartWidgetActionButton *)self ringView];
  [v4 setNeedsDisplay];
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = DBSmartWidgetActionButton;
  [(DBSmartWidgetActionButton *)&v6 setHighlighted:?];
  v5 = [(DBSmartWidgetActionButton *)self ringView];
  [v5 setHighlighted:v3];
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = DBSmartWidgetActionButton;
  [(DBSmartWidgetActionButton *)&v7 setSelected:?];
  v5 = [(DBSmartWidgetActionButton *)self ringView];
  [v5 setSelected:v3];

  if (v3)
  {
    [MEMORY[0x277D75348] tableBackgroundColor];
  }

  else
  {
    [MEMORY[0x277D75348] whiteColor];
  }
  v6 = ;
  [(DBSmartWidgetActionButton *)self setTintColor:v6];
}

@end