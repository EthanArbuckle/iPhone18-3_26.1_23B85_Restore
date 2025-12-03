@interface CAMDisabledModeOverlayView
- (CAMDisabledModeOverlayView)initWithFrame:(CGRect)frame;
- (CGRect)_frameForMessageLabel;
- (CGRect)viewportFrame;
- (void)_updateText;
- (void)layoutSubviews;
- (void)setDisabledModeReason:(int64_t)reason;
- (void)setOrientation:(int64_t)orientation animated:(BOOL)animated;
- (void)setViewportFrame:(CGRect)frame;
@end

@implementation CAMDisabledModeOverlayView

- (CAMDisabledModeOverlayView)initWithFrame:(CGRect)frame
{
  v13.receiver = self;
  v13.super_class = CAMDisabledModeOverlayView;
  v3 = [(CAMDisabledModeOverlayView *)&v13 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    blackColor = [MEMORY[0x1E69DC888] blackColor];
    [(CAMDisabledModeOverlayView *)v3 setBackgroundColor:blackColor];

    v5 = objc_alloc(MEMORY[0x1E69DCC10]);
    v6 = [v5 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    messageLabel = v3->__messageLabel;
    v3->__messageLabel = v6;

    [(CAMDisabledModeOverlayView *)v3 addSubview:v3->__messageLabel];
    v8 = v3->__messageLabel;
    v9 = [CAMFont cameraFontOfSize:17.0];
    [(UILabel *)v8 setFont:v9];

    v10 = v3->__messageLabel;
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [(UILabel *)v10 setTextColor:whiteColor];

    [(UILabel *)v3->__messageLabel setTextAlignment:1];
    [(UILabel *)v3->__messageLabel setNumberOfLines:0];
    [(CAMDisabledModeOverlayView *)v3 _updateText];
  }

  return v3;
}

- (void)setDisabledModeReason:(int64_t)reason
{
  if (self->_disabledModeReason != reason)
  {
    self->_disabledModeReason = reason;
    [(CAMDisabledModeOverlayView *)self _updateText];
  }
}

- (void)_updateText
{
  disabledModeReason = [(CAMDisabledModeOverlayView *)self disabledModeReason];
  if (disabledModeReason == 1)
  {
    v4 = MEMORY[0x1E696AEC0];
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    model = [currentDevice model];
    v7 = [v4 stringWithFormat:@"MODE_DISABLED_CAMERA_TOO_HOT_%@", model];

    v9 = CAMLocalizedFrameworkString(v7, 0);
  }

  else if (disabledModeReason)
  {
    v9 = 0;
  }

  else
  {
    v9 = CAMLocalizedFrameworkString(@"MODE_DISABLED_WHILE_ON_CALL", 0);
  }

  _messageLabel = [(CAMDisabledModeOverlayView *)self _messageLabel];
  [_messageLabel setText:v9];
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = CAMDisabledModeOverlayView;
  [(CAMDisabledModeOverlayView *)&v4 layoutSubviews];
  _messageLabel = [(CAMDisabledModeOverlayView *)self _messageLabel];
  [(CAMDisabledModeOverlayView *)self _frameForMessageLabel];
  [_messageLabel setFrame:?];
}

- (void)setOrientation:(int64_t)orientation animated:(BOOL)animated
{
  if (self->_orientation != orientation)
  {
    animatedCopy = animated;
    self->_orientation = orientation;
    _messageLabel = [(CAMDisabledModeOverlayView *)self _messageLabel];
    [CAMView rotateView:_messageLabel toInterfaceOrientation:orientation animated:animatedCopy];
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

- (void)setViewportFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  p_viewportFrame = &self->_viewportFrame;
  if (!CGRectEqualToRect(self->_viewportFrame, frame))
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