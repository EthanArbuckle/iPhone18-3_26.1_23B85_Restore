@interface CKAnimationOverlayWindow
- (void)dismiss;
- (void)showInWindowScene:(id)a3;
@end

@implementation CKAnimationOverlayWindow

- (void)showInWindowScene:(id)a3
{
  v4 = MEMORY[0x1E69DC888];
  v5 = a3;
  v6 = [v4 clearColor];
  [(CKAnimationOverlayWindow *)self setBackgroundColor:v6];

  [(CKAnimationOverlayWindow *)self setWindowLevel:*MEMORY[0x1E69DE330] + 1000.0];
  [(CKAnimationOverlayWindow *)self setWindowScene:v5];

  [(CKAnimationOverlayWindow *)self setHidden:0];
  if ([MEMORY[0x1E69DCBB8] usesInputSystemUI])
  {
    v7 = [MEMORY[0x1E69DCBB8] snapshotViewForOptions:1];
    [(CKAnimationOverlayWindow *)self setKeyboardSnapshotView:v7];

    v8 = [(CKAnimationOverlayWindow *)self keyboardSnapshotView];

    if (v8)
    {
      [MEMORY[0x1E69DCBB8] setKeyboardAlpha:0.0];
      v9 = [(CKAnimationOverlayWindow *)self keyboardSnapshotView];
      [(CKAnimationOverlayWindow *)self insertSubview:v9 atIndex:0];
    }
  }
}

- (void)dismiss
{
  [(CKAnimationOverlayWindow *)self setHidden:1];
  if ([MEMORY[0x1E69DCBB8] usesInputSystemUI])
  {
    [MEMORY[0x1E69DCBB8] setKeyboardAlpha:1.0];
    v3 = [(CKAnimationOverlayWindow *)self keyboardSnapshotView];
    [v3 removeFromSuperview];

    [(CKAnimationOverlayWindow *)self setKeyboardSnapshotView:0];
  }
}

@end