@interface CAMDisabledModeOverlayView
- (CAMDisabledModeOverlayView)initWithFrame:(CGRect)a3;
- (CGRect)_frameForMessageLabel;
- (CGRect)viewportFrame;
- (void)_updateText;
- (void)layoutSubviews;
- (void)setDisabledModeReason:(int64_t)a3;
- (void)setOrientation:(int64_t)a3 animated:(BOOL)a4;
- (void)setViewportFrame:(CGRect)a3;
@end

@implementation CAMDisabledModeOverlayView

- (CAMDisabledModeOverlayView)initWithFrame:(CGRect)a3
{
  v13.receiver = self;
  v13.super_class = CAMDisabledModeOverlayView;
  v3 = [(CAMDisabledModeOverlayView *)&v13 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E69DC888] blackColor];
    [(CAMDisabledModeOverlayView *)v3 setBackgroundColor:v4];

    v5 = objc_alloc(MEMORY[0x1E69DCC10]);
    v6 = [v5 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    messageLabel = v3->__messageLabel;
    v3->__messageLabel = v6;

    [(CAMDisabledModeOverlayView *)v3 addSubview:v3->__messageLabel];
    v8 = v3->__messageLabel;
    v9 = [CAMFont cameraFontOfSize:17.0];
    [(UILabel *)v8 setFont:v9];

    v10 = v3->__messageLabel;
    v11 = [MEMORY[0x1E69DC888] whiteColor];
    [(UILabel *)v10 setTextColor:v11];

    [(UILabel *)v3->__messageLabel setTextAlignment:1];
    [(UILabel *)v3->__messageLabel setNumberOfLines:0];
    [(CAMDisabledModeOverlayView *)v3 _updateText];
  }

  return v3;
}

- (void)setDisabledModeReason:(int64_t)a3
{
  if (self->_disabledModeReason != a3)
  {
    self->_disabledModeReason = a3;
    [(CAMDisabledModeOverlayView *)self _updateText];
  }
}

- (void)_updateText
{
  v3 = [(CAMDisabledModeOverlayView *)self disabledModeReason];
  if (v3 == 1)
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = [MEMORY[0x1E69DC938] currentDevice];
    v6 = [v5 model];
    v7 = [v4 stringWithFormat:@"MODE_DISABLED_CAMERA_TOO_HOT_%@", v6];

    v9 = CAMLocalizedFrameworkString(v7, 0);
  }

  else if (v3)
  {
    v9 = 0;
  }

  else
  {
    v9 = CAMLocalizedFrameworkString(@"MODE_DISABLED_WHILE_ON_CALL", 0);
  }

  v8 = [(CAMDisabledModeOverlayView *)self _messageLabel];
  [v8 setText:v9];
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = CAMDisabledModeOverlayView;
  [(CAMDisabledModeOverlayView *)&v4 layoutSubviews];
  v3 = [(CAMDisabledModeOverlayView *)self _messageLabel];
  [(CAMDisabledModeOverlayView *)self _frameForMessageLabel];
  [v3 setFrame:?];
}

- (void)setOrientation:(int64_t)a3 animated:(BOOL)a4
{
  if (self->_orientation != a3)
  {
    v5 = a4;
    self->_orientation = a3;
    v7 = [(CAMDisabledModeOverlayView *)self _messageLabel];
    [CAMView rotateView:v7 toInterfaceOrientation:a3 animated:v5];
  }
}

- (CGRect)_frameForMessageLabel
{
  [(CAMDisabledModeOverlayView *)self viewportFrame];
  v4 = v3 + 15.0;
  v6 = v5 + 0.0;
  v8 = v7 + -30.0;
  result.size.height = v2;
  result.size.width = v8;
  result.origin.y = v6;
  result.origin.x = v4;
  return result;
}

- (void)setViewportFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  p_viewportFrame = &self->_viewportFrame;
  if (!CGRectEqualToRect(self->_viewportFrame, a3))
  {
    p_viewportFrame->origin.x = x;
    p_viewportFrame->origin.y = y;
    p_viewportFrame->size.width = width;
    p_viewportFrame->size.height = height;

    [(CAMDisabledModeOverlayView *)self setNeedsLayout];
  }
}

- (CGRect)viewportFrame
{
  x = self->_viewportFrame.origin.x;
  y = self->_viewportFrame.origin.y;
  width = self->_viewportFrame.size.width;
  height = self->_viewportFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end