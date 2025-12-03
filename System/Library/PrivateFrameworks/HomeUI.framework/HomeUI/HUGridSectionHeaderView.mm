@interface HUGridSectionHeaderView
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (HUGridSectionHeaderView)initWithFrame:(CGRect)frame;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)_didRecognizeLongPressGesture:(id)gesture;
- (void)_didRecognizeTapGesture:(id)gesture;
- (void)_installGestureRecognizers;
- (void)_uninstallGestureRecognizers;
- (void)dealloc;
- (void)prepareForReuse;
- (void)setActionHandler:(id)handler;
- (void)setContentConfiguration:(id)configuration;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setShowsDisclosureIndicator:(BOOL)indicator;
- (void)updateConstraints;
@end

@implementation HUGridSectionHeaderView

- (HUGridSectionHeaderView)initWithFrame:(CGRect)frame
{
  v21.receiver = self;
  v21.super_class = HUGridSectionHeaderView;
  v3 = [(HUGridSectionHeaderView *)&v21 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    groupedHeaderConfiguration = [MEMORY[0x277D756E0] groupedHeaderConfiguration];
    [groupedHeaderConfiguration setText:&stru_2823E0EE8];
    v5 = [objc_alloc(MEMORY[0x277D756E8]) initWithConfiguration:groupedHeaderConfiguration];
    listContentView = v3->_listContentView;
    v3->_listContentView = v5;

    [(UIListContentView *)v3->_listContentView setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView = [(HUGridSectionHeaderView *)v3 contentView];
    [contentView addSubview:v3->_listContentView];

    v8 = [MEMORY[0x277D755D0] configurationWithTextStyle:*MEMORY[0x277D76918]];
    v9 = [MEMORY[0x277D755D0] configurationWithWeight:6];
    v10 = [v8 configurationByApplyingConfiguration:v9];
    v11 = objc_alloc(MEMORY[0x277D755E8]);
    v12 = [MEMORY[0x277D755B8] systemImageNamed:@"chevron.forward" withConfiguration:v10];
    v13 = [v11 initWithImage:v12];
    chevronView = v3->_chevronView;
    v3->_chevronView = v13;

    [(UIImageView *)v3->_chevronView setTranslatesAutoresizingMaskIntoConstraints:0];
    v15 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.35];
    [(UIImageView *)v3->_chevronView setTintColor:v15];

    v16 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA5E8]];
    layer = [(UIImageView *)v3->_chevronView layer];
    [layer setCompositingFilter:v16];

    [(UIImageView *)v3->_chevronView setHidden:[(HUGridSectionHeaderView *)v3 showsDisclosureIndicator]^ 1];
    LODWORD(v18) = 1148846080;
    [(UIImageView *)v3->_chevronView setContentCompressionResistancePriority:0 forAxis:v18];
    contentView2 = [(HUGridSectionHeaderView *)v3 contentView];
    [contentView2 addSubview:v3->_chevronView];
  }

  return v3;
}

- (void)dealloc
{
  [(HUGridSectionHeaderView *)self _uninstallGestureRecognizers];
  v3.receiver = self;
  v3.super_class = HUGridSectionHeaderView;
  [(HUGridSectionHeaderView *)&v3 dealloc];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = HUGridSectionHeaderView;
  [(HUGridSectionHeaderView *)&v3 prepareForReuse];
  [(HUGridSectionHeaderView *)self setActionHandler:0];
  [(HUGridSectionHeaderView *)self setShowsDisclosureIndicator:0];
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v9.receiver = self;
  v9.super_class = HUGridSectionHeaderView;
  v5 = [(HUGridSectionHeaderView *)&v9 hitTest:event withEvent:test.x, test.y];
  if ([v5 isDescendantOfView:self])
  {
    actionHandler = [(HUGridSectionHeaderView *)self actionHandler];
    if (actionHandler)
    {
      v7 = v5;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = v5;
  }

  return v7;
}

- (void)updateConstraints
{
  v39[6] = *MEMORY[0x277D85DE8];
  layoutConstraints = [(HUGridSectionHeaderView *)self layoutConstraints];
  if (layoutConstraints)
  {
  }

  else
  {
    listContentView = [(HUGridSectionHeaderView *)self listContentView];
    textLayoutGuide = [listContentView textLayoutGuide];

    if (textLayoutGuide)
    {
      contentView = [(HUGridSectionHeaderView *)self contentView];
      listContentView2 = [(HUGridSectionHeaderView *)self listContentView];
      topAnchor = [listContentView2 topAnchor];
      topAnchor2 = [contentView topAnchor];
      v34 = [topAnchor constraintEqualToAnchor:topAnchor2];
      v39[0] = v34;
      listContentView3 = [(HUGridSectionHeaderView *)self listContentView];
      bottomAnchor = [listContentView3 bottomAnchor];
      bottomAnchor2 = [contentView bottomAnchor];
      v30 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      v39[1] = v30;
      listContentView4 = [(HUGridSectionHeaderView *)self listContentView];
      leadingAnchor = [listContentView4 leadingAnchor];
      v28 = contentView;
      leadingAnchor2 = [contentView leadingAnchor];
      v25 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      v39[2] = v25;
      chevronView = [(HUGridSectionHeaderView *)self chevronView];
      leadingAnchor3 = [chevronView leadingAnchor];
      listContentView5 = [(HUGridSectionHeaderView *)self listContentView];
      trailingAnchor = [listContentView5 trailingAnchor];
      v20 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:6.0];
      v39[3] = v20;
      chevronView2 = [(HUGridSectionHeaderView *)self chevronView];
      trailingAnchor2 = [chevronView2 trailingAnchor];
      trailingAnchor3 = [contentView trailingAnchor];
      v8 = [trailingAnchor2 constraintLessThanOrEqualToAnchor:trailingAnchor3];
      v39[4] = v8;
      chevronView3 = [(HUGridSectionHeaderView *)self chevronView];
      centerYAnchor = [chevronView3 centerYAnchor];
      listContentView6 = [(HUGridSectionHeaderView *)self listContentView];
      textLayoutGuide2 = [listContentView6 textLayoutGuide];
      centerYAnchor2 = [textLayoutGuide2 centerYAnchor];
      v14 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
      v39[5] = v14;
      v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:6];
      [(HUGridSectionHeaderView *)self setLayoutConstraints:v15];

      v16 = MEMORY[0x277CCAAD0];
      layoutConstraints2 = [(HUGridSectionHeaderView *)self layoutConstraints];
      [v16 activateConstraints:layoutConstraints2];
    }
  }

  v38.receiver = self;
  v38.super_class = HUGridSectionHeaderView;
  [(HUGridSectionHeaderView *)&v38 updateConstraints];
}

- (void)setActionHandler:(id)handler
{
  handlerCopy = handler;
  if (self->_actionHandler != handlerCopy)
  {
    v7 = handlerCopy;
    v5 = _Block_copy(handlerCopy);
    actionHandler = self->_actionHandler;
    self->_actionHandler = v5;

    if (v7)
    {
      [(HUGridSectionHeaderView *)self _installGestureRecognizers];
    }

    else
    {
      [(HUGridSectionHeaderView *)self _uninstallGestureRecognizers];
    }

    handlerCopy = v7;
  }
}

- (void)setContentConfiguration:(id)configuration
{
  configurationCopy = configuration;
  objc_opt_class();
  v9 = configurationCopy;
  if (objc_opt_isKindOfClass())
  {
    v5 = v9;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    image = [v6 image];

    if (!image)
    {
      [v6 setImageToTextPadding:0.0];
    }

    [v6 setAxesPreservingSuperviewLayoutMargins:0];
    listContentView = [(HUGridSectionHeaderView *)self listContentView];
    [listContentView setConfiguration:v6];
  }
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v7.receiver = self;
  v7.super_class = HUGridSectionHeaderView;
  [(HUGridSectionHeaderView *)&v7 setHighlighted:?];
  if (highlightedCopy)
  {
    v5 = 0.5;
  }

  else
  {
    v5 = 1.0;
  }

  contentView = [(HUGridSectionHeaderView *)self contentView];
  [contentView setAlpha:v5];
}

- (void)setShowsDisclosureIndicator:(BOOL)indicator
{
  if (self->_showsDisclosureIndicator != indicator)
  {
    indicatorCopy = indicator;
    self->_showsDisclosureIndicator = indicator;
    chevronView = [(HUGridSectionHeaderView *)self chevronView];
    [chevronView setHidden:!indicatorCopy];
  }
}

- (void)_installGestureRecognizers
{
  v3 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__didRecognizeTapGesture_];
  [(HUGridSectionHeaderView *)self setTapGestureRecognizer:v3];

  contentView = [(HUGridSectionHeaderView *)self contentView];
  tapGestureRecognizer = [(HUGridSectionHeaderView *)self tapGestureRecognizer];
  [contentView addGestureRecognizer:tapGestureRecognizer];

  v6 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:self action:sel__didRecognizeLongPressGesture_];
  [(HUGridSectionHeaderView *)self setLongPressGestureRecognizer:v6];

  longPressGestureRecognizer = [(HUGridSectionHeaderView *)self longPressGestureRecognizer];
  [longPressGestureRecognizer setMinimumPressDuration:0.0];

  longPressGestureRecognizer2 = [(HUGridSectionHeaderView *)self longPressGestureRecognizer];
  [longPressGestureRecognizer2 setDelegate:self];

  contentView2 = [(HUGridSectionHeaderView *)self contentView];
  longPressGestureRecognizer3 = [(HUGridSectionHeaderView *)self longPressGestureRecognizer];
  [contentView2 addGestureRecognizer:longPressGestureRecognizer3];
}

- (void)_uninstallGestureRecognizers
{
  tapGestureRecognizer = [(HUGridSectionHeaderView *)self tapGestureRecognizer];

  if (tapGestureRecognizer)
  {
    contentView = [(HUGridSectionHeaderView *)self contentView];
    tapGestureRecognizer2 = [(HUGridSectionHeaderView *)self tapGestureRecognizer];
    [contentView removeGestureRecognizer:tapGestureRecognizer2];
  }

  longPressGestureRecognizer = [(HUGridSectionHeaderView *)self longPressGestureRecognizer];

  if (longPressGestureRecognizer)
  {
    contentView2 = [(HUGridSectionHeaderView *)self contentView];
    longPressGestureRecognizer2 = [(HUGridSectionHeaderView *)self longPressGestureRecognizer];
    [contentView2 removeGestureRecognizer:longPressGestureRecognizer2];
  }
}

- (void)_didRecognizeTapGesture:(id)gesture
{
  v8 = *MEMORY[0x277D85DE8];
  if ([gesture state] == 3)
  {
    actionHandler = [(HUGridSectionHeaderView *)self actionHandler];

    if (actionHandler)
    {
      actionHandler2 = [(HUGridSectionHeaderView *)self actionHandler];
      (*(actionHandler2 + 16))();
    }

    else
    {
      actionHandler2 = HFLogForCategory();
      if (os_log_type_enabled(actionHandler2, OS_LOG_TYPE_ERROR))
      {
        v6 = 138412290;
        selfCopy = self;
        _os_log_error_impl(&dword_20CEB6000, actionHandler2, OS_LOG_TYPE_ERROR, "%@ Section header view tapped with no tap action set", &v6, 0xCu);
      }
    }
  }

  [(HUGridSectionHeaderView *)self setHighlighted:0];
}

- (void)_didRecognizeLongPressGesture:(id)gesture
{
  v4 = [gesture state] - 1;
  if (v4 <= 4)
  {

    [(HUGridSectionHeaderView *)self setHighlighted:1u >> v4];
  }
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  gestureRecognizerCopy = gestureRecognizer;
  recognizerCopy = recognizer;
  longPressGestureRecognizer = [(HUGridSectionHeaderView *)self longPressGestureRecognizer];

  if (longPressGestureRecognizer == recognizerCopy)
  {
    v10 = 1;
  }

  else
  {
    longPressGestureRecognizer2 = [(HUGridSectionHeaderView *)self longPressGestureRecognizer];
    v10 = longPressGestureRecognizer2 == gestureRecognizerCopy;
  }

  return v10;
}

@end