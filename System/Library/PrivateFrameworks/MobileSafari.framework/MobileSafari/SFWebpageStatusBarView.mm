@interface SFWebpageStatusBarView
- (CGPoint)_originForStatusBarContentViewForContentHeight:(double)height;
- (CGPoint)hoverPoint;
- (SFWebpageStatusBarView)initWithFrame:(CGRect)frame;
- (void)_clearStatusBarIsEnabledMessage;
- (void)_hideStatusBar;
- (void)_showStatusBar;
- (void)clearStatus;
- (void)displayStatusBarIsEnabledMessage;
- (void)layoutSubviews;
- (void)setHoverPoint:(CGPoint)point;
- (void)setStatusMessage:(id)message;
@end

@implementation SFWebpageStatusBarView

- (SFWebpageStatusBarView)initWithFrame:(CGRect)frame
{
  v16.receiver = self;
  v16.super_class = SFWebpageStatusBarView;
  v3 = [(SFWebpageStatusBarView *)&v16 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(SFWebpageStatusBarView *)v3 setUserInteractionEnabled:0];
    [(SFWebpageStatusBarView *)v4 setAutoresizingMask:18];
    v5 = objc_alloc_init(MEMORY[0x1E69DD250]);
    statusBarContentView = v4->_statusBarContentView;
    v4->_statusBarContentView = v5;

    [(UIView *)v4->_statusBarContentView setAlpha:0.0];
    [(SFWebpageStatusBarView *)v4 addSubview:v4->_statusBarContentView];
    v7 = [MEMORY[0x1E69DC730] effectWithStyle:8];
    v8 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v7];
    [v8 setAutoresizingMask:18];
    [v8 _setContinuousCornerRadius:8.0];
    [(UIView *)v4->_statusBarContentView addSubview:v8];
    v9 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    statusLabel = v4->_statusLabel;
    v4->_statusLabel = v9;

    [(UILabel *)v4->_statusLabel setNumberOfLines:1];
    [(UILabel *)v4->_statusLabel setLineBreakMode:5];
    [(UILabel *)v4->_statusLabel setAdjustsFontForContentSizeCategory:1];
    v11 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD08]];
    [(UILabel *)v4->_statusLabel setFont:v11];

    [(UIView *)v4->_statusBarContentView addSubview:v4->_statusLabel];
    v12 = objc_alloc_init(objc_opt_self());
    statusMessage = v4->_statusMessage;
    v4->_statusMessage = v12;

    v14 = v4;
  }

  return v4;
}

- (void)layoutSubviews
{
  v14.receiver = self;
  v14.super_class = SFWebpageStatusBarView;
  [(SFWebpageStatusBarView *)&v14 layoutSubviews];
  if (([(SFWebPageStatusBarMessage *)self->_statusMessage isEmpty]& 1) == 0)
  {
    [(SFWebpageStatusBarView *)self safeAreaInsets];
    v4 = v3 * 2.0 + 10.0;
    [(UILabel *)self->_statusLabel frame];
    v6 = v5;
    [(SFWebpageStatusBarView *)self bounds];
    v7 = CGRectGetWidth(v15) + -20.0 - v4;
    [(UILabel *)self->_statusLabel bounds];
    [(UILabel *)self->_statusLabel setFrame:10.0, 10.0, fmin(CGRectGetWidth(v16), v7), v6];
    [(UILabel *)self->_statusLabel bounds];
    v8 = CGRectGetWidth(v17) + 20.0;
    [(UILabel *)self->_statusLabel bounds];
    v9 = CGRectGetHeight(v18) + 20.0;
    [(SFWebpageStatusBarView *)self _originForStatusBarContentViewForContentHeight:v9];
    v11 = v10;
    v13 = v12;
    [(UIView *)self->_statusBarContentView frame];
    [(UIView *)self->_statusBarContentView setFrame:v11, v13, v8, v9];
  }
}

- (CGPoint)_originForStatusBarContentViewForContentHeight:(double)height
{
  _sf_usesLeftToRightLayout = [(UIView *)self _sf_usesLeftToRightLayout];
  [(SFWebpageStatusBarView *)self bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(UIView *)self->_statusBarContentView frame];
  v32 = v14;
  v33 = v13;
  [(SFWebpageStatusBarView *)self safeAreaInsets];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v37.origin.x = v6;
  v37.origin.y = v8;
  v37.size.width = v10;
  v37.size.height = v12;
  Height = CGRectGetHeight(v37);
  isSolariumEnabled = [MEMORY[0x1E69C8880] isSolariumEnabled];
  if (_sf_usesLeftToRightLayout)
  {
    v23 = v16;
  }

  else
  {
    v23 = v20;
  }

  v24 = v23 + 5.0;
  if (!isSolariumEnabled)
  {
    v24 = 5.0;
  }

  v38.origin.x = _SFFlipRectInCoordinateSpace(!_sf_usesLeftToRightLayout, v18 + v24, Height - height + -5.0 - v18, v33, v32, v6, v8, v10, v12);
  x = v38.origin.x;
  y = v38.origin.y;
  width = v38.size.width;
  v28 = v38.size.height;
  v29 = CGRectContainsPoint(v38, self->_hoverPoint);

  v30 = _SFFlipRectInCoordinateSpace(v29, x, y, width, v28, v6, v8, v10, v12);
  result.y = v31;
  result.x = v30;
  return result;
}

- (void)setStatusMessage:(id)message
{
  messageCopy = message;
  v5 = [(SFWebPageStatusBarMessage *)self->_statusMessage isEqual:messageCopy];
  v6 = messageCopy;
  if ((v5 & 1) == 0)
  {
    isEmpty = [messageCopy isEmpty];
    v6 = messageCopy;
    v8 = isEmpty;
    dismissStatusBarEnabledTimer = self->_dismissStatusBarEnabledTimer;
    if (!dismissStatusBarEnabledTimer || (v8 & 1) == 0)
    {
      if (v8)
      {
        isEmpty2 = [(SFWebPageStatusBarMessage *)self->_statusMessage isEmpty];
        v6 = messageCopy;
        if (isEmpty2)
        {
          goto LABEL_13;
        }

        dismissStatusBarEnabledTimer = self->_dismissStatusBarEnabledTimer;
      }

      if (dismissStatusBarEnabledTimer)
      {
        [(NSTimer *)dismissStatusBarEnabledTimer invalidate];
        v11 = self->_dismissStatusBarEnabledTimer;
        self->_dismissStatusBarEnabledTimer = 0;
      }

      objc_storeStrong(&self->_statusMessage, message);
      v12 = self->_suppressShowingStatusBar | v8;
      [(SFWebpageStatusBarView *)self _cancelPendingStatusBarHideIfNeeded];
      if (v12)
      {
        [(SFWebpageStatusBarView *)self performSelector:sel__hideStatusBar withObject:0 afterDelay:0.2];
      }

      else
      {
        attributedMessageString = [messageCopy attributedMessageString];
        [(UILabel *)self->_statusLabel setAttributedText:attributedMessageString];
        [(UILabel *)self->_statusLabel sizeToFit];
        [(SFWebpageStatusBarView *)self setNeedsLayout];
        [(SFWebpageStatusBarView *)self _showStatusBar];
      }

      v6 = messageCopy;
    }
  }

LABEL_13:
}

- (void)clearStatus
{
  v3 = objc_alloc_init(objc_opt_self());
  [(SFWebpageStatusBarView *)self setStatusMessage:v3];
}

- (void)setHoverPoint:(CGPoint)point
{
  p_hoverPoint = &self->_hoverPoint;
  if (point.x != self->_hoverPoint.x || point.y != self->_hoverPoint.y)
  {
    p_hoverPoint->x = point.x;
    self->_hoverPoint.y = point.y;
    if (self->_shouldDodgeHoverPoint)
    {
      [(UIView *)self->_statusBarContentView frame];
      if (CGRectContainsPoint(v7, *p_hoverPoint))
      {

        [(SFWebpageStatusBarView *)self setNeedsLayout];
      }
    }
  }
}

- (void)_showStatusBar
{
  self->_shouldDodgeHoverPoint = 1;
  v3 = MEMORY[0x1E69DD250];
  areAnimationsEnabled = [MEMORY[0x1E69DD250] areAnimationsEnabled];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __40__SFWebpageStatusBarView__showStatusBar__block_invoke;
  v5[3] = &unk_1E721B360;
  v5[4] = self;
  [v3 sf_animate:areAnimationsEnabled withDuration:0 delay:v5 options:0 animations:0.25 completion:0.0];
}

- (void)_hideStatusBar
{
  self->_shouldDodgeHoverPoint = 0;
  v3 = MEMORY[0x1E69DD250];
  areAnimationsEnabled = [MEMORY[0x1E69DD250] areAnimationsEnabled];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __40__SFWebpageStatusBarView__hideStatusBar__block_invoke;
  v5[3] = &unk_1E721B360;
  v5[4] = self;
  [v3 sf_animate:areAnimationsEnabled withDuration:0 delay:v5 options:0 animations:0.25 completion:0.0];
}

- (void)_clearStatusBarIsEnabledMessage
{
  [(NSTimer *)self->_dismissStatusBarEnabledTimer invalidate];
  dismissStatusBarEnabledTimer = self->_dismissStatusBarEnabledTimer;
  self->_dismissStatusBarEnabledTimer = 0;

  [(SFWebpageStatusBarView *)self clearStatus];
}

- (CGPoint)hoverPoint
{
  x = self->_hoverPoint.x;
  y = self->_hoverPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)displayStatusBarIsEnabledMessage
{
  v3 = [SFWebpageStatusBarInfoMessage alloc];
  v4 = _WBSLocalizedString();
  v7 = [(SFWebpageStatusBarInfoMessage *)&v3->super.isa initWithString:v4];

  [(SFWebpageStatusBarView *)self setStatusMessage:v7];
  v5 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:self target:sel__clearStatusBarIsEnabledMessage selector:0 userInfo:0 repeats:2.0];
  dismissStatusBarEnabledTimer = self->_dismissStatusBarEnabledTimer;
  self->_dismissStatusBarEnabledTimer = v5;
}

@end