@interface SFUnifiedTabBarItemViewCloseButton
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (BOOL)pointInsideForPointer:(CGPoint)pointer;
@end

@implementation SFUnifiedTabBarItemViewCloseButton

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  eventCopy = event;
  v10.receiver = self;
  v10.super_class = SFUnifiedTabBarItemViewCloseButton;
  if ([(SFUnifiedTabBarItemViewCloseButton *)&v10 pointInside:eventCopy withEvent:x, y])
  {
    if ([eventCopy buttonMask])
    {
      v8 = [(SFUnifiedTabBarItemViewCloseButton *)self pointInsideForPointer:x, y];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)pointInsideForPointer:(CGPoint)pointer
{
  y = pointer.y;
  x = pointer.x;
  selfCopy = self;
  _imageView = [(SFUnifiedTabBarItemViewCloseButton *)self _imageView];
  [_imageView bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [_imageView convertPoint:selfCopy fromView:{x, y}];
  v18.x = v15;
  v18.y = v16;
  v19.origin.x = v8;
  v19.origin.y = v10;
  v19.size.width = v12;
  v19.size.height = v14;
  LOBYTE(selfCopy) = CGRectContainsPoint(v19, v18);

  return selfCopy;
}

@end