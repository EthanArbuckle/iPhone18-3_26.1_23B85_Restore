@interface CKAnimationOverlayWindow
- (void)dismiss;
- (void)showInWindowScene:(id)scene;
@end

@implementation CKAnimationOverlayWindow

- (void)showInWindowScene:(id)scene
{
  v4 = MEMORY[0x1E69DC888];
  sceneCopy = scene;
  clearColor = [v4 clearColor];
  [(CKAnimationOverlayWindow *)self setBackgroundColor:clearColor];

  [(CKAnimationOverlayWindow *)self setWindowLevel:*MEMORY[0x1E69DE330] + 1000.0];
  [(CKAnimationOverlayWindow *)self setWindowScene:sceneCopy];

  [(CKAnimationOverlayWindow *)self setHidden:0];
  if ([MEMORY[0x1E69DCBB8] usesInputSystemUI])
  {
    v7 = [MEMORY[0x1E69DCBB8] snapshotViewForOptions:1];
    [(CKAnimationOverlayWindow *)self setKeyboardSnapshotView:v7];

    keyboardSnapshotView = [(CKAnimationOverlayWindow *)self keyboardSnapshotView];

    if (keyboardSnapshotView)
    {
      [MEMORY[0x1E69DCBB8] setKeyboardAlpha:0.0];
      keyboardSnapshotView2 = [(CKAnimationOverlayWindow *)self keyboardSnapshotView];
      [(CKAnimationOverlayWindow *)self insertSubview:keyboardSnapshotView2 atIndex:0];
    }
  }
}

- (void)dismiss
{
  [(CKAnimationOverlayWindow *)self setHidden:1];
  if ([MEMORY[0x1E69DCBB8] usesInputSystemUI])
  {
    [MEMORY[0x1E69DCBB8] setKeyboardAlpha:1.0];
    keyboardSnapshotView = [(CKAnimationOverlayWindow *)self keyboardSnapshotView];
    [keyboardSnapshotView removeFromSuperview];

    [(CKAnimationOverlayWindow *)self setKeyboardSnapshotView:0];
  }
}

@end