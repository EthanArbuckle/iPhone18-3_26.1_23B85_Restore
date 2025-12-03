@interface CKSendMenuPopoverPresentationDimmingView
- (CKSendMenuPopoverPresentationDimmingView)init;
- (CKSendMenuPopoverPresentationDimmingViewDelegate)delegate;
- (void)_handleTap:(id)tap;
- (void)setActive:(BOOL)active;
@end

@implementation CKSendMenuPopoverPresentationDimmingView

- (CKSendMenuPopoverPresentationDimmingView)init
{
  v6.receiver = self;
  v6.super_class = CKSendMenuPopoverPresentationDimmingView;
  v2 = [(CKSendMenuPopoverPresentationDimmingView *)&v6 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v2)
  {
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(CKSendMenuPopoverPresentationDimmingView *)v2 setBackgroundColor:clearColor];

    [(CKSendMenuPopoverPresentationDimmingView *)v2 setOpaque:0];
    layer = [(CKSendMenuPopoverPresentationDimmingView *)v2 layer];
    [layer setHitTestsAsOpaque:1];

    [(CKSendMenuPopoverPresentationDimmingView *)v2 setUserInteractionEnabled:1];
    v2->_active = 0;
  }

  return v2;
}

- (void)setActive:(BOOL)active
{
  if (self->_active != active)
  {
    self->_active = active;
    v4 = +[CKUIBehavior sharedBehaviors];
    v9 = v4;
    if (self->_active)
    {
      [v4 sendMenuPopoverDimmingViewActiveBackgroundColor];
    }

    else
    {
      [v4 sendMenuPopoverDimmingViewInactiveBackgroundColor];
    }
    v5 = ;
    [(CKSendMenuPopoverPresentationDimmingView *)self setBackgroundColor:v5];

    if (!self->_active || !self->_dismissGestureRecognizer && (v6 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__handleTap_], v7 = self->_dismissGestureRecognizer, self->_dismissGestureRecognizer = v6, v7, -[UITapGestureRecognizer setNumberOfTapsRequired:](self->_dismissGestureRecognizer, "setNumberOfTapsRequired:", 1), -[CKSendMenuPopoverPresentationDimmingView addGestureRecognizer:](self, "addGestureRecognizer:", self->_dismissGestureRecognizer), !self->_active))
    {
      if (self->_dismissGestureRecognizer)
      {
        [(CKSendMenuPopoverPresentationDimmingView *)self removeGestureRecognizer:?];
        dismissGestureRecognizer = self->_dismissGestureRecognizer;
        self->_dismissGestureRecognizer = 0;
      }
    }
  }
}

- (void)_handleTap:(id)tap
{
  if (self->_dismissGestureRecognizer == tap && [tap state] == 3)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained sendMenuPopoverPresentationDimmingViewDidReceiveTap:self];
  }
}

- (CKSendMenuPopoverPresentationDimmingViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end