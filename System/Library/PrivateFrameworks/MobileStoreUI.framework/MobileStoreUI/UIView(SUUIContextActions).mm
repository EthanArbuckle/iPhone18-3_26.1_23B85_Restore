@interface UIView(SUUIContextActions)
- (double)defaultPresentationPosition;
@end

@implementation UIView(SUUIContextActions)

- (double)defaultPresentationPosition
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_5;
  }

  _collectionView = [self _collectionView];
  NSSelectorFromString(&cfstr_Currenttouch.isa);
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {

LABEL_5:
    [self bounds];
    return v9;
  }

  _currentTouch = [_collectionView _currentTouch];
  [_currentTouch locationInView:self];
  v5 = v4;
  v7 = v6;

  v11.size.width = *MEMORY[0x277CBF3A8];
  v11.size.height = *(MEMORY[0x277CBF3A8] + 8);
  v11.origin.x = v5;
  v11.origin.y = v7;
  *&v8 = CGRectInset(v11, -20.0, -20.0);

  return v8;
}

@end