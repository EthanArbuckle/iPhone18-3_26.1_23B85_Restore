@interface DBSmartWidgetActionButton
- (DBSmartWidgetActionButton)initWithUIImage:(id)image;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)pressesBegan:(id)began withEvent:(id)event;
- (void)pressesCancelled:(id)cancelled withEvent:(id)event;
- (void)pressesEnded:(id)ended withEvent:(id)event;
- (void)setFocusHighlightColor:(id)color;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setNeedsDisplay;
- (void)setSelected:(BOOL)selected;
- (void)setupConstraints;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation DBSmartWidgetActionButton

- (DBSmartWidgetActionButton)initWithUIImage:(id)image
{
  imageCopy = image;
  v20.receiver = self;
  v20.super_class = DBSmartWidgetActionButton;
  v5 = *MEMORY[0x277CBF3A0];
  v6 = *(MEMORY[0x277CBF3A0] + 8);
  v7 = *(MEMORY[0x277CBF3A0] + 16);
  v8 = *(MEMORY[0x277CBF3A0] + 24);
  v9 = [(DBSmartWidgetActionButton *)&v20 initWithFrame:*MEMORY[0x277CBF3A0], v6, v7, v8];
  if (v9)
  {
    secondarySystemFillColor = [MEMORY[0x277D75348] secondarySystemFillColor];
    _carSystemFocusColor = [MEMORY[0x277D75348] _carSystemFocusColor];
    focusHighlightColor = v9->_focusHighlightColor;
    v9->_focusHighlightColor = _carSystemFocusColor;

    v13 = [MEMORY[0x277D755D0] configurationWithTextStyle:*MEMORY[0x277D76920] scale:-1];
    v14 = [imageCopy imageWithConfiguration:v13];
    [(DBSmartWidgetActionButton *)v9 setImage:v14 forState:0];
    v15 = [[DBSmartWidgetActionButtonRingView alloc] initWithFrame:v5, v6, v7, v8];
    ringView = v9->_ringView;
    v9->_ringView = v15;

    [(DBSmartWidgetActionButtonRingView *)v9->_ringView setUserInteractionEnabled:0];
    [(DBSmartWidgetActionButtonRingView *)v9->_ringView setFillColor:secondarySystemFillColor];
    [(DBSmartWidgetActionButtonRingView *)v9->_ringView setFocusHighlightColor:v9->_focusHighlightColor];
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(DBSmartWidgetActionButtonRingView *)v9->_ringView setBackgroundColor:clearColor];

    [(DBSmartWidgetActionButtonRingView *)v9->_ringView setOpaque:0];
    [(DBSmartWidgetActionButton *)v9 addSubview:v9->_ringView];
    labelColor = [MEMORY[0x277D75348] labelColor];
    [(DBSmartWidgetActionButton *)v9 setTintColor:labelColor];

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
  ringView = [(DBSmartWidgetActionButton *)self ringView];
  [ringView setTranslatesAutoresizingMaskIntoConstraints:0];

  v24 = objc_opt_new();
  widthAnchor = [(DBSmartWidgetActionButton *)self widthAnchor];
  v5 = [widthAnchor constraintEqualToConstant:44.0];
  [v24 addObject:v5];

  heightAnchor = [(DBSmartWidgetActionButton *)self heightAnchor];
  v7 = [heightAnchor constraintEqualToConstant:44.0];
  [v24 addObject:v7];

  ringView2 = [(DBSmartWidgetActionButton *)self ringView];
  leadingAnchor = [ringView2 leadingAnchor];
  leadingAnchor2 = [(DBSmartWidgetActionButton *)self leadingAnchor];
  v11 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v24 addObject:v11];

  ringView3 = [(DBSmartWidgetActionButton *)self ringView];
  trailingAnchor = [ringView3 trailingAnchor];
  trailingAnchor2 = [(DBSmartWidgetActionButton *)self trailingAnchor];
  v15 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v24 addObject:v15];

  ringView4 = [(DBSmartWidgetActionButton *)self ringView];
  topAnchor = [ringView4 topAnchor];
  topAnchor2 = [(DBSmartWidgetActionButton *)self topAnchor];
  v19 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v24 addObject:v19];

  ringView5 = [(DBSmartWidgetActionButton *)self ringView];
  bottomAnchor = [ringView5 bottomAnchor];
  bottomAnchor2 = [(DBSmartWidgetActionButton *)self bottomAnchor];
  v23 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v24 addObject:v23];

  [MEMORY[0x277CCAAD0] activateConstraints:v24];
}

- (void)setFocusHighlightColor:(id)color
{
  colorCopy = color;
  ringView = [(DBSmartWidgetActionButton *)self ringView];
  [ringView setFocusHighlightColor:colorCopy];
}

- (void)setNeedsDisplay
{
  v4.receiver = self;
  v4.super_class = DBSmartWidgetActionButton;
  [(DBSmartWidgetActionButton *)&v4 setNeedsDisplay];
  ringView = [(DBSmartWidgetActionButton *)self ringView];
  [ringView setNeedsDisplay];
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  contextCopy = context;
  ringView = [(DBSmartWidgetActionButton *)self ringView];
  nextFocusedItem = [contextCopy nextFocusedItem];

  [ringView setFocusRingVisible:nextFocusedItem == self];
}

- (void)pressesBegan:(id)began withEvent:(id)event
{
  beganCopy = began;
  eventCopy = event;
  if (_pressesContainEvent(beganCopy))
  {
    [(DBSmartWidgetActionButton *)self setHighlighted:1];
  }

  v8.receiver = self;
  v8.super_class = DBSmartWidgetActionButton;
  [(DBSmartWidgetActionButton *)&v8 pressesBegan:beganCopy withEvent:eventCopy];
}

- (void)pressesEnded:(id)ended withEvent:(id)event
{
  endedCopy = ended;
  eventCopy = event;
  if (_pressesContainEvent(endedCopy))
  {
    [(DBSmartWidgetActionButton *)self setHighlighted:0];
  }

  v8.receiver = self;
  v8.super_class = DBSmartWidgetActionButton;
  [(DBSmartWidgetActionButton *)&v8 pressesEnded:endedCopy withEvent:eventCopy];
}

- (void)pressesCancelled:(id)cancelled withEvent:(id)event
{
  cancelledCopy = cancelled;
  eventCopy = event;
  if (_pressesContainEvent(cancelledCopy))
  {
    [(DBSmartWidgetActionButton *)self setHighlighted:0];
  }

  v8.receiver = self;
  v8.super_class = DBSmartWidgetActionButton;
  [(DBSmartWidgetActionButton *)&v8 pressesCancelled:cancelledCopy withEvent:eventCopy];
}

- (void)traitCollectionDidChange:(id)change
{
  v5.receiver = self;
  v5.super_class = DBSmartWidgetActionButton;
  [(DBSmartWidgetActionButton *)&v5 traitCollectionDidChange:change];
  ringView = [(DBSmartWidgetActionButton *)self ringView];
  [ringView setNeedsDisplay];
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v6.receiver = self;
  v6.super_class = DBSmartWidgetActionButton;
  [(DBSmartWidgetActionButton *)&v6 setHighlighted:?];
  ringView = [(DBSmartWidgetActionButton *)self ringView];
  [ringView setHighlighted:highlightedCopy];
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  v7.receiver = self;
  v7.super_class = DBSmartWidgetActionButton;
  [(DBSmartWidgetActionButton *)&v7 setSelected:?];
  ringView = [(DBSmartWidgetActionButton *)self ringView];
  [ringView setSelected:selectedCopy];

  if (selectedCopy)
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