@interface SFKeyboardLayoutAlignmentView
- (CGRect)_frameInBoundsForKeyboardFrame:(CGRect)frame;
- (SFKeyboardLayoutAlignmentView)initWithFrame:(CGRect)frame;
- (void)_addConstraints;
- (void)_matchInitialKeyboardFrame;
- (void)_removeConstraints;
- (void)_startObservingKeyboardNotificationsForScreen:(id)screen;
- (void)_stopObservingKeyboardNotifications;
- (void)_updateConstraintsForKeyboardNotification:(id)notification;
- (void)_updateConstraintsToMatchKeyboardFrame:(CGRect)frame;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)setAutomaticKeyboardFrameTrackingDisabled:(BOOL)disabled;
- (void)willMoveToWindow:(id)window;
@end

@implementation SFKeyboardLayoutAlignmentView

- (void)setAutomaticKeyboardFrameTrackingDisabled:(BOOL)disabled
{
  if (self->_automaticKeyboardFrameTrackingDisabled != disabled)
  {
    [(SFKeyboardLayoutAlignmentView *)self _stopObservingKeyboardNotifications];
    self->_automaticKeyboardFrameTrackingDisabled = disabled;
    if (!disabled)
    {
      window = [(SFKeyboardLayoutAlignmentView *)self window];
      screen = [window screen];
      [(SFKeyboardLayoutAlignmentView *)self _startObservingKeyboardNotificationsForScreen:screen];
    }
  }
}

- (CGRect)_frameInBoundsForKeyboardFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  superview = [(SFKeyboardLayoutAlignmentView *)self superview];
  _window = [(SFKeyboardLayoutAlignmentView *)self _window];
  [_window convertRect:0 fromWindow:{x, y, width, height}];
  [_window convertRect:superview toView:?];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  [superview bounds];
  v33.origin.x = v18;
  v33.origin.y = v19;
  v33.size.width = v20;
  v33.size.height = v21;
  v30.origin.x = v11;
  v30.origin.y = v13;
  v30.size.width = v15;
  v30.size.height = v17;
  v31 = CGRectIntersection(v30, v33);
  v22 = v31.origin.x;
  v23 = v31.origin.y;
  v24 = v31.size.width;
  v25 = v31.size.height;
  if (CGRectIsNull(v31))
  {
    v22 = *MEMORY[0x1E695EFF8];
    v23 = *(MEMORY[0x1E695EFF8] + 8);
    v25 = 0.0;
    v24 = v15;
  }

  v26 = v22;
  v27 = v23;
  v28 = v24;
  v29 = v25;
  result.size.height = v29;
  result.size.width = v28;
  result.origin.y = v27;
  result.origin.x = v26;
  return result;
}

- (void)_updateConstraintsToMatchKeyboardFrame:(CGRect)frame
{
  height = frame.size.height;
  v8[2] = *MEMORY[0x1E69E9840];
  [(NSLayoutConstraint *)self->widthConstraint setConstant:frame.size.width, frame.origin.y];
  [(NSLayoutConstraint *)self->heightConstraint setConstant:height];
  v5 = MEMORY[0x1E696ACD8];
  disambiguatingLeftConstraint = self->disambiguatingLeftConstraint;
  v8[0] = self->heightConstraint;
  v8[1] = disambiguatingLeftConstraint;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:2];
  [v5 activateConstraints:v7];
}

- (void)_updateConstraintsForKeyboardNotification:(id)notification
{
  notificationCopy = notification;
  v5 = notificationCopy;
  if (notificationCopy)
  {
    userInfo = [notificationCopy userInfo];
    v7 = [userInfo valueForKey:*MEMORY[0x1E69DDF98]];
    [v7 CGRectValue];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    userInfo2 = [v5 userInfo];
    v17 = [userInfo2 valueForKey:*MEMORY[0x1E69DDFA0]];
    [v17 CGRectValue];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;

    userInfo3 = [v5 userInfo];
    v27 = [userInfo3 valueForKey:*MEMORY[0x1E69DDF40]];
    [v27 floatValue];
    v50 = v28;

    userInfo4 = [v5 userInfo];
    v30 = [userInfo4 valueForKey:*MEMORY[0x1E69DDF38]];
    integerValue = [v30 integerValue];

    [(SFKeyboardLayoutAlignmentView *)self _frameInBoundsForKeyboardFrame:v9, v11, v13, v15];
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v39 = v38;
    [(SFKeyboardLayoutAlignmentView *)self _frameInBoundsForKeyboardFrame:v19, v21, v23, v25];
    v41 = v40;
    v43 = v42;
    v45 = v44;
    v47 = v46;
    v56.origin.x = v40;
    v56.origin.y = v42;
    v56.size.width = v44;
    v56.size.height = v46;
    if (!CGRectEqualToRect(self->lastKnownKeyboardRect, v56))
    {
      v54[0] = MEMORY[0x1E69E9820];
      v54[1] = 3221225472;
      v54[2] = __75__SFKeyboardLayoutAlignmentView__updateConstraintsForKeyboardNotification___block_invoke;
      v54[3] = &unk_1E721C180;
      v54[4] = self;
      *&v54[5] = v33;
      *&v54[6] = v35;
      *&v54[7] = v37;
      *&v54[8] = v39;
      [MEMORY[0x1E69DD250] performWithoutAnimation:v54];
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __75__SFKeyboardLayoutAlignmentView__updateConstraintsForKeyboardNotification___block_invoke_2;
      aBlock[3] = &unk_1E721C180;
      aBlock[4] = self;
      *&aBlock[5] = v41;
      *&aBlock[6] = v43;
      *&aBlock[7] = v45;
      *&aBlock[8] = v47;
      v48 = _Block_copy(aBlock);
      v55.origin.x = v33;
      v55.origin.y = v35;
      v55.size.width = v37;
      v55.size.height = v39;
      v57.origin.x = v41;
      v57.origin.y = v43;
      v57.size.width = v45;
      v57.size.height = v47;
      if (CGRectEqualToRect(v55, v57))
      {
        v48[2](v48);
      }

      else
      {
        v49 = MEMORY[0x1E69DD250];
        v51[0] = MEMORY[0x1E69E9820];
        v51[1] = 3221225472;
        v51[2] = __75__SFKeyboardLayoutAlignmentView__updateConstraintsForKeyboardNotification___block_invoke_3;
        v51[3] = &unk_1E721C1A8;
        v51[4] = self;
        v52 = v48;
        [v49 animateWithDuration:integerValue delay:v51 options:0 animations:v50 completion:0.0];
      }
    }
  }
}

void __75__SFKeyboardLayoutAlignmentView__updateConstraintsForKeyboardNotification___block_invoke_3(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = [*(a1 + 32) superview];
  [v2 layoutIfNeeded];
}

- (void)willMoveToWindow:(id)window
{
  windowCopy = window;
  [(SFKeyboardLayoutAlignmentView *)self _stopObservingKeyboardNotifications];
  screen = [windowCopy screen];

  [(SFKeyboardLayoutAlignmentView *)self _startObservingKeyboardNotificationsForScreen:screen];
}

- (void)didMoveToWindow
{
  superview = [(SFKeyboardLayoutAlignmentView *)self superview];
  [(SFKeyboardLayoutAlignmentView *)self _removeConstraints];
  v3 = [MEMORY[0x1E696ACD8] constraintWithItem:self attribute:4 relatedBy:0 toItem:superview attribute:4 multiplier:1.0 constant:0.0];
  bottomConstraint = self->bottomConstraint;
  self->bottomConstraint = v3;

  v5 = [MEMORY[0x1E696ACD8] constraintWithItem:self attribute:7 relatedBy:0 toItem:0 attribute:7 multiplier:1.0 constant:0.0];
  widthConstraint = self->widthConstraint;
  self->widthConstraint = v5;

  v7 = [MEMORY[0x1E696ACD8] constraintWithItem:self attribute:8 relatedBy:0 toItem:0 attribute:8 multiplier:1.0 constant:0.0];
  heightConstraint = self->heightConstraint;
  self->heightConstraint = v7;

  v9 = [MEMORY[0x1E696ACD8] constraintWithItem:self attribute:1 relatedBy:0 toItem:superview attribute:1 multiplier:1.0 constant:0.0];
  disambiguatingLeftConstraint = self->disambiguatingLeftConstraint;
  self->disambiguatingLeftConstraint = v9;

  [(SFKeyboardLayoutAlignmentView *)self _addConstraints];
  window = [(SFKeyboardLayoutAlignmentView *)self window];
  if (window)
  {
    [(SFKeyboardLayoutAlignmentView *)self _matchInitialKeyboardFrame];
  }
}

- (void)_matchInitialKeyboardFrame
{
  [MEMORY[0x1E69DCD68] visiblePeripheralFrame];
  [(SFKeyboardLayoutAlignmentView *)self _frameInBoundsForKeyboardFrame:?];

  [(SFKeyboardLayoutAlignmentView *)self _updateConstraintsToMatchKeyboardFrame:?];
}

- (void)_addConstraints
{
  v5[2] = *MEMORY[0x1E69E9840];
  widthConstraint = self->widthConstraint;
  v3 = MEMORY[0x1E696ACD8];
  v5[0] = self->bottomConstraint;
  v5[1] = widthConstraint;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:2];
  [v3 activateConstraints:v4];
}

- (void)_removeConstraints
{
  [(NSLayoutConstraint *)self->bottomConstraint setActive:0];
  [(NSLayoutConstraint *)self->widthConstraint setActive:0];
  [(NSLayoutConstraint *)self->heightConstraint setActive:0];
  [(NSLayoutConstraint *)self->disambiguatingLeftConstraint setActive:0];
  bottomConstraint = self->bottomConstraint;
  self->bottomConstraint = 0;

  widthConstraint = self->widthConstraint;
  self->widthConstraint = 0;

  heightConstraint = self->heightConstraint;
  self->heightConstraint = 0;

  disambiguatingLeftConstraint = self->disambiguatingLeftConstraint;
  self->disambiguatingLeftConstraint = 0;
}

- (SFKeyboardLayoutAlignmentView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = SFKeyboardLayoutAlignmentView;
  v3 = [(SFKeyboardLayoutAlignmentView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(SFKeyboardLayoutAlignmentView *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SFKeyboardLayoutAlignmentView *)v4 setUserInteractionEnabled:0];
  }

  return v4;
}

- (void)dealloc
{
  [(SFKeyboardLayoutAlignmentView *)self _stopObservingKeyboardNotifications];
  v3.receiver = self;
  v3.super_class = SFKeyboardLayoutAlignmentView;
  [(SFKeyboardLayoutAlignmentView *)&v3 dealloc];
}

- (void)_stopObservingKeyboardNotifications
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DE018] object:0];
}

- (void)_startObservingKeyboardNotificationsForScreen:(id)screen
{
  if (screen)
  {
    v4 = MEMORY[0x1E696AD88];
    screenCopy = screen;
    defaultCenter = [v4 defaultCenter];
    [defaultCenter addObserver:self selector:sel__keyboardChanged_ name:*MEMORY[0x1E69DE018] object:screenCopy];
  }
}

@end