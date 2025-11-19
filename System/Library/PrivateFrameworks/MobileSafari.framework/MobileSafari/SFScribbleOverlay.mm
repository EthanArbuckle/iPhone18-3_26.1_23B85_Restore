@interface SFScribbleOverlay
- (SFScribbleOverlay)initWithFrame:(CGRect)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)_didReceiveHover:(id)a3;
- (void)_didReceiveTapOrClick:(id)a3;
- (void)_selectionMovedToLocation:(CGPoint)a3;
- (void)endSelectionWithCompletion:(id)a3;
- (void)moveSelectionToFrame:(CGRect)a3;
@end

@implementation SFScribbleOverlay

- (SFScribbleOverlay)initWithFrame:(CGRect)a3
{
  v13.receiver = self;
  v13.super_class = SFScribbleOverlay;
  v3 = [(SFScribbleOverlay *)&v13 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

- (void)_didReceiveHover:(id)a3
{
  v5 = a3;
  v4 = [v5 state];
  if ((v4 - 1) >= 2)
  {
    if (v4 == 3)
    {
      [(SFScribbleOverlay *)self endSelectionWithCompletion:0];
    }
  }

  else
  {
    [(SFScribbleSelectionOverlay *)self->_selectionOverlay setShowsHideButton:0];
    [v5 locationInView:self];
    [(SFScribbleOverlay *)self _selectionMovedToLocation:?];
  }
}

- (void)_didReceiveTapOrClick:(id)a3
{
  v4 = a3;
  selectionOverlay = self->_selectionOverlay;
  v12 = v4;
  [v4 locationInView:selectionOverlay];
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

- (void)_selectionMovedToLocation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  p_lastSelectionLocation = &self->_lastSelectionLocation;
  if (self->_lastSelectionLocation.x != a3.x || self->_lastSelectionLocation.y != a3.y)
  {
    (*(self->_selectionHandler + 2))(a3.x, a3.y);
    p_lastSelectionLocation->x = x;
    p_lastSelectionLocation->y = y;
  }
}

- (void)endSelectionWithCompletion:(id)a3
{
  v4 = a3;
  v5 = self->_selectionOverlay;
  v6 = v5;
  if (v5)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __48__SFScribbleOverlay_endSelectionWithCompletion___block_invoke;
    v8[3] = &unk_1E721BA48;
    v9 = v5;
    v10 = v4;
    [(SFScribbleSelectionOverlay *)v9 fadeOutWithCompletion:v8];
    selectionOverlay = self->_selectionOverlay;
    self->_selectionOverlay = 0;
  }

  else if (v4)
  {
    v4[2](v4);
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

- (void)moveSelectionToFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(SFScribbleSelectionOverlay *)self->_selectionOverlay frame];
  v13.origin.x = x;
  v13.origin.y = y;
  v13.size.width = width;
  v13.size.height = height;
  if (!CGRectEqualToRect(v12, v13))
  {
    [(SFScribbleOverlay *)self endSelectionWithCompletion:0];
    v8 = [[SFScribbleSelectionOverlay alloc] initWithFrame:x, y, width, height];
    selectionOverlay = self->_selectionOverlay;
    self->_selectionOverlay = v8;

    [(SFScribbleSelectionOverlay *)self->_selectionOverlay setHideButtonHandler:self->_hideSelectedElementHandler];
    [(SFScribbleOverlay *)self addSubview:self->_selectionOverlay];
    v10 = self->_selectionOverlay;

    [(SFScribbleSelectionOverlay *)v10 fadeIn];
  }
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
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
    v8 = [(SFScribbleOverlay *)&v10 hitTest:v7 withEvent:x, y];
  }

  return v8;
}

@end