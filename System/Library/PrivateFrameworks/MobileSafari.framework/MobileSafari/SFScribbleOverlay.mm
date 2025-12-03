@interface SFScribbleOverlay
- (SFScribbleOverlay)initWithFrame:(CGRect)frame;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)_didReceiveHover:(id)hover;
- (void)_didReceiveTapOrClick:(id)click;
- (void)_selectionMovedToLocation:(CGPoint)location;
- (void)endSelectionWithCompletion:(id)completion;
- (void)moveSelectionToFrame:(CGRect)frame;
@end

@implementation SFScribbleOverlay

- (SFScribbleOverlay)initWithFrame:(CGRect)frame
{
  v13.receiver = self;
  v13.super_class = SFScribbleOverlay;
  v3 = [(SFScribbleOverlay *)&v13 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    selectionHandler = v3->_selectionHandler;
    v3->_selectionHandler = &__block_literal_global_19;

    hideSelectedElementHandler = v4->_hideSelectedElementHandler;
    v4->_hideSelectedElementHandler = &__block_literal_global_27;

    deselectionHandler = v4->_deselectionHandler;
    v4->_deselectionHandler = &__block_literal_global_29_0;

    if (![(SFScribbleOverlay *)v4 allowsDeselectionByTapping])
    {
      v8 = [objc_alloc(MEMORY[0x1E69DCAA0]) initWithTarget:v4 action:sel__didReceiveHover_];
      [(SFScribbleOverlay *)v4 addGestureRecognizer:v8];
    }

    v9 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:v4 action:sel__didReceiveTapOrClick_];
    [v9 setAllowedTouchTypes:&unk_1EFF744D8];
    [(SFScribbleOverlay *)v4 addGestureRecognizer:v9];
    v10 = [[SFScribbleClickGestureRecognizer alloc] initWithOverlay:v4];
    [(SFScribbleClickGestureRecognizer *)v10 setAllowedTouchTypes:&unk_1EFF744F0];
    [(SFScribbleOverlay *)v4 addGestureRecognizer:v10];
    v11 = v4;
  }

  return v4;
}

- (void)_didReceiveHover:(id)hover
{
  hoverCopy = hover;
  state = [hoverCopy state];
  if ((state - 1) >= 2)
  {
    if (state == 3)
    {
      [(SFScribbleOverlay *)self endSelectionWithCompletion:0];
    }
  }

  else
  {
    [(SFScribbleSelectionOverlay *)self->_selectionOverlay setShowsHideButton:0];
    [hoverCopy locationInView:self];
    [(SFScribbleOverlay *)self _selectionMovedToLocation:?];
  }
}

- (void)_didReceiveTapOrClick:(id)click
{
  clickCopy = click;
  selectionOverlay = self->_selectionOverlay;
  v12 = clickCopy;
  [clickCopy locationInView:selectionOverlay];
  if ([(SFScribbleSelectionOverlay *)selectionOverlay pointInside:0 withEvent:?])
  {
    if (-[SFScribbleOverlay allowsDeselectionByTapping](self, "allowsDeselectionByTapping") && -[SFScribbleSelectionOverlay showsHideButton](self->_selectionOverlay, "showsHideButton") && (-[SFScribbleSelectionOverlay effectiveHideButtonView](self->_selectionOverlay, "effectiveHideButtonView"), (v6 = objc_claimAutoreleasedReturnValue()) != 0) && (v7 = v6, -[SFScribbleSelectionOverlay effectiveHideButtonView](self->_selectionOverlay, "effectiveHideButtonView"), v8 = objc_claimAutoreleasedReturnValue(), -[SFScribbleSelectionOverlay effectiveHideButtonView](self->_selectionOverlay, "effectiveHideButtonView"), v9 = objc_claimAutoreleasedReturnValue(), [v12 locationInView:v9], v10 = objc_msgSend(v8, "pointInside:withEvent:", 0), v9, v8, v7, (v10 & 1) == 0))
    {
      v11 = 448;
    }

    else
    {
      v11 = 440;
    }

    (*(&self->super.super.super.isa + v11))[2]();
  }

  else
  {
    [v12 locationInView:self];
    [(SFScribbleOverlay *)self _selectionMovedToLocation:?];
  }
}

- (void)_selectionMovedToLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  p_lastSelectionLocation = &self->_lastSelectionLocation;
  if (self->_lastSelectionLocation.x != location.x || self->_lastSelectionLocation.y != location.y)
  {
    (*(self->_selectionHandler + 2))(location.x, location.y);
    p_lastSelectionLocation->x = x;
    p_lastSelectionLocation->y = y;
  }
}

- (void)endSelectionWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = self->_selectionOverlay;
  v6 = v5;
  if (v5)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __48__SFScribbleOverlay_endSelectionWithCompletion___block_invoke;
    v8[3] = &unk_1E721BA48;
    v9 = v5;
    v10 = completionCopy;
    [(SFScribbleSelectionOverlay *)v9 fadeOutWithCompletion:v8];
    selectionOverlay = self->_selectionOverlay;
    self->_selectionOverlay = 0;
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

uint64_t __48__SFScribbleOverlay_endSelectionWithCompletion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)moveSelectionToFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(SFScribbleSelectionOverlay *)self->_selectionOverlay frame];
  v13.origin.x = x;
  v13.origin.y = y;
  v13.size.width = width;
  v13.size.height = height;
  if (!CGRectEqualToRect(v12, v13))
  {
    [(SFScribbleOverlay *)self endSelectionWithCompletion:0];
    height = [[SFScribbleSelectionOverlay alloc] initWithFrame:x, y, width, height];
    selectionOverlay = self->_selectionOverlay;
    self->_selectionOverlay = height;

    [(SFScribbleSelectionOverlay *)self->_selectionOverlay setHideButtonHandler:self->_hideSelectedElementHandler];
    [(SFScribbleOverlay *)self addSubview:self->_selectionOverlay];
    v10 = self->_selectionOverlay;

    [(SFScribbleSelectionOverlay *)v10 fadeIn];
  }
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SFScribbleOverlay *)self endSelection];
    v8 = 0;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = SFScribbleOverlay;
    v8 = [(SFScribbleOverlay *)&v10 hitTest:eventCopy withEvent:x, y];
  }

  return v8;
}

@end