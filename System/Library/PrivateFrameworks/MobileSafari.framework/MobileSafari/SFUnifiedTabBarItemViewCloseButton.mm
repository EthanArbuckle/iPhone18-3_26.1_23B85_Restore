@interface SFUnifiedTabBarItemViewCloseButton
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (BOOL)pointInsideForPointer:(CGPoint)a3;
@end

@implementation SFUnifiedTabBarItemViewCloseButton

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v10.receiver = self;
  v10.super_class = SFUnifiedTabBarItemViewCloseButton;
  if ([(SFUnifiedTabBarItemViewCloseButton *)&v10 pointInside:v7 withEvent:x, y])
  {
    if ([v7 buttonMask])
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

- (BOOL)pointInsideForPointer:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = self;
  v6 = [(SFUnifiedTabBarItemViewCloseButton *)self _imageView];
  [v6 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [v6 convertPoint:v5 fromView:{x, y}];
  v18.x = v15;
  v18.y = v16;
  v19.origin.x = v8;
  v19.origin.y = v10;
  v19.size.width = v12;
  v19.size.height = v14;
  LOBYTE(v5) = CGRectContainsPoint(v19, v18);

  return v5;
}

@end