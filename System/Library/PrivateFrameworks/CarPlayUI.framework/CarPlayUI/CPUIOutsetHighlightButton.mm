@interface CPUIOutsetHighlightButton
- (CPUIOutsetHighlightButton)init;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)didMoveToWindow;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
@end

@implementation CPUIOutsetHighlightButton

- (CPUIOutsetHighlightButton)init
{
  v3.receiver = self;
  v3.super_class = CPUIOutsetHighlightButton;
  result = [(CPUIOutsetHighlightButton *)&v3 init];
  if (result)
  {
    result->_contentCornerRadius = -1.0;
  }

  return result;
}

- (void)didMoveToWindow
{
  v38[4] = *MEMORY[0x277D85DE8];
  v37.receiver = self;
  v37.super_class = CPUIOutsetHighlightButton;
  [(CPUIOutsetHighlightButton *)&v37 didMoveToWindow];
  window = [(CPUIOutsetHighlightButton *)self window];
  windowScene = [window windowScene];
  focusSystem = [windowScene focusSystem];
  if (focusSystem)
  {
    focusRingView = self->_focusRingView;

    if (focusRingView)
    {
      return;
    }

    [(CPUIOutsetHighlightButton *)self setClipsToBounds:0];
    v7 = [CPUIFocusRingView alloc];
    v8 = [(CPUIFocusRingView *)v7 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    v9 = self->_focusRingView;
    self->_focusRingView = v8;

    [(CPUIFocusRingView *)self->_focusRingView setTranslatesAutoresizingMaskIntoConstraints:0];
    tintColor = [MEMORY[0x277D75348] tintColor];
    [(CPUIFocusRingView *)self->_focusRingView setRingColor:tintColor];

    v11 = _UISolariumEnabled();
    v12 = 1.0;
    if (v11)
    {
      v12 = 0.0;
    }

    [(CPUIFocusRingView *)self->_focusRingView setRingGap:v12];
    [(CPUIFocusRingView *)self->_focusRingView setRingWidth:3.0];
    [(CPUIOutsetHighlightButton *)self contentCornerRadius];
    v14 = v13;
    v15 = 10.0;
    if (v14 != -1.0)
    {
      [(CPUIOutsetHighlightButton *)self contentCornerRadius];
      v17 = v16;
      [(CPUIFocusRingView *)self->_focusRingView ringGap];
      v19 = v18;
      [(CPUIFocusRingView *)self->_focusRingView ringWidth];
      v15 = v17 + (v19 + v20) * 0.5;
    }

    [(CPUIFocusRingView *)self->_focusRingView setCornerRadius:v15];
    [(CPUIFocusRingView *)self->_focusRingView setHidden:1];
    [(CPUIOutsetHighlightButton *)self addSubview:self->_focusRingView];
    [(CPUIFocusRingView *)self->_focusRingView ringGap];
    v22 = v21;
    [(CPUIFocusRingView *)self->_focusRingView ringWidth];
    v24 = v22 + v23;
    v33 = MEMORY[0x277CCAAD0];
    window = [(CPUIFocusRingView *)self->_focusRingView leadingAnchor];
    windowScene = [(CPUIOutsetHighlightButton *)self leadingAnchor];
    v36 = [window constraintEqualToAnchor:windowScene constant:-v24];
    v38[0] = v36;
    trailingAnchor = [(CPUIFocusRingView *)self->_focusRingView trailingAnchor];
    trailingAnchor2 = [(CPUIOutsetHighlightButton *)self trailingAnchor];
    v25 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:v24];
    v38[1] = v25;
    topAnchor = [(CPUIFocusRingView *)self->_focusRingView topAnchor];
    topAnchor2 = [(CPUIOutsetHighlightButton *)self topAnchor];
    v28 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:-v24];
    v38[2] = v28;
    bottomAnchor = [(CPUIFocusRingView *)self->_focusRingView bottomAnchor];
    bottomAnchor2 = [(CPUIOutsetHighlightButton *)self bottomAnchor];
    v31 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:v24];
    v38[3] = v31;
    v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:4];
    [v33 activateConstraints:v32];
  }
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  nextFocusedItem = [context nextFocusedItem];
  [(CPUIFocusRingView *)self->_focusRingView setHidden:nextFocusedItem != self];
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v10.receiver = self;
  v10.super_class = CPUIOutsetHighlightButton;
  v5 = [(CPUIOutsetHighlightButton *)&v10 hitTest:event withEvent:test.x, test.y];
  v6 = v5;
  if (v5 == self->_focusRingView)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = v5;
  }

  v8 = selfCopy;

  return v8;
}

@end