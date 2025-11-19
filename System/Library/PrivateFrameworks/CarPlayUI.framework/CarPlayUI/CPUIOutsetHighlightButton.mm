@interface CPUIOutsetHighlightButton
- (CPUIOutsetHighlightButton)init;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)didMoveToWindow;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
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
  v3 = [(CPUIOutsetHighlightButton *)self window];
  v4 = [v3 windowScene];
  v5 = [v4 focusSystem];
  if (v5)
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
    v10 = [MEMORY[0x277D75348] tintColor];
    [(CPUIFocusRingView *)self->_focusRingView setRingColor:v10];

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
    v3 = [(CPUIFocusRingView *)self->_focusRingView leadingAnchor];
    v4 = [(CPUIOutsetHighlightButton *)self leadingAnchor];
    v36 = [v3 constraintEqualToAnchor:v4 constant:-v24];
    v38[0] = v36;
    v35 = [(CPUIFocusRingView *)self->_focusRingView trailingAnchor];
    v34 = [(CPUIOutsetHighlightButton *)self trailingAnchor];
    v25 = [v35 constraintEqualToAnchor:v34 constant:v24];
    v38[1] = v25;
    v26 = [(CPUIFocusRingView *)self->_focusRingView topAnchor];
    v27 = [(CPUIOutsetHighlightButton *)self topAnchor];
    v28 = [v26 constraintEqualToAnchor:v27 constant:-v24];
    v38[2] = v28;
    v29 = [(CPUIFocusRingView *)self->_focusRingView bottomAnchor];
    v30 = [(CPUIOutsetHighlightButton *)self bottomAnchor];
    v31 = [v29 constraintEqualToAnchor:v30 constant:v24];
    v38[3] = v31;
    v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:4];
    [v33 activateConstraints:v32];
  }
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v5 = [a3 nextFocusedItem];
  [(CPUIFocusRingView *)self->_focusRingView setHidden:v5 != self];
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v10.receiver = self;
  v10.super_class = CPUIOutsetHighlightButton;
  v5 = [(CPUIOutsetHighlightButton *)&v10 hitTest:a4 withEvent:a3.x, a3.y];
  v6 = v5;
  if (v5 == self->_focusRingView)
  {
    v7 = self;
  }

  else
  {
    v7 = v5;
  }

  v8 = v7;

  return v8;
}

@end