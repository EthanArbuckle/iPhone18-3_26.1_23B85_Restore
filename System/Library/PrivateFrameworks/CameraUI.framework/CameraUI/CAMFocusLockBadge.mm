@interface CAMFocusLockBadge
- (CAMFocusLockBadge)initWithFrame:(CGRect)a3;
- (void)_updateText;
- (void)setFocusLockType:(int64_t)a3;
@end

@implementation CAMFocusLockBadge

- (void)_updateText
{
  v3 = [(CAMFocusLockBadge *)self focusLockType];
  if (v3 > 4)
  {
    v4 = 0;
  }

  else
  {
    v4 = CAMLocalizedFrameworkString(off_1E76F9540[v3], 0);
  }

  v5 = v4;
  [(CEKBadgeTextView *)self _setText:v4];
}

- (CAMFocusLockBadge)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = CAMFocusLockBadge;
  v3 = [(CEKBadgeTextView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_focusLockType = 2;
    [(CAMFocusLockBadge *)v3 _updateText];
    v5 = v4;
  }

  return v4;
}

- (void)setFocusLockType:(int64_t)a3
{
  if (self->_focusLockType != a3)
  {
    self->_focusLockType = a3;
    [(CAMFocusLockBadge *)self _updateText];
  }
}

@end