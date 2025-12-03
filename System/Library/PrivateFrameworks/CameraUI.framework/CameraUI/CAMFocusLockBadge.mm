@interface CAMFocusLockBadge
- (CAMFocusLockBadge)initWithFrame:(CGRect)frame;
- (void)_updateText;
- (void)setFocusLockType:(int64_t)type;
@end

@implementation CAMFocusLockBadge

- (void)_updateText
{
  focusLockType = [(CAMFocusLockBadge *)self focusLockType];
  if (focusLockType > 4)
  {
    v4 = 0;
  }

  else
  {
    v4 = CAMLocalizedFrameworkString(off_1E76F9540[focusLockType], 0);
  }

  v5 = v4;
  [(CEKBadgeTextView *)self _setText:v4];
}

- (CAMFocusLockBadge)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = CAMFocusLockBadge;
  v3 = [(CEKBadgeTextView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_focusLockType = 2;
    [(CAMFocusLockBadge *)v3 _updateText];
    v5 = v4;
  }

  return v4;
}

- (void)setFocusLockType:(int64_t)type
{
  if (self->_focusLockType != type)
  {
    self->_focusLockType = type;
    [(CAMFocusLockBadge *)self _updateText];
  }
}

@end