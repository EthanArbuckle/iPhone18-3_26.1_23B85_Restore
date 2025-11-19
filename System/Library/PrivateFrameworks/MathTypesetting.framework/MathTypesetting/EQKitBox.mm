@interface EQKitBox
- (BOOL)containsPoint:(CGPoint)a3;
- (CGAffineTransform)transformFromDescendant:(SEL)a3;
- (CGRect)boundsWithRoot:(id)a3;
- (CGRect)erasableBounds;
- (double)layoutVSize;
- (double)vsize;
- (id)copyWithZone:(_NSZone *)a3;
- (id)hitTest:(CGPoint)a3;
- (void)renderIntoContext:(id)a3 offset:(CGPoint)a4;
@end

@implementation EQKitBox

- (CGRect)boundsWithRoot:(id)a3
{
  v4 = a3;
  v5 = v4;
  memset(&v19[1], 0, sizeof(CGAffineTransform));
  if (v4)
  {
    [v4 transformFromDescendant:self];
  }

  [(EQKitBox *)self height];
  v7 = v6;
  [(EQKitBox *)self width];
  v9 = v8;
  [(EQKitBox *)self vsize];
  v20.size.height = v10;
  v20.origin.y = -v7;
  v19[0] = v19[1];
  v20.origin.x = 0.0;
  v20.size.width = v9;
  v21 = CGRectApplyAffineTransform(v20, v19);
  x = v21.origin.x;
  y = v21.origin.y;
  width = v21.size.width;
  height = v21.size.height;

  v15 = x;
  v16 = y;
  v17 = width;
  v18 = height;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = [objc_opt_class() allocWithZone:a3];

  return [v3 init];
}

- (double)vsize
{
  [(EQKitBox *)self height];
  v4 = v3;
  [(EQKitBox *)self depth];
  return v4 + v5;
}

- (double)layoutVSize
{
  [(EQKitBox *)self layoutHeight];
  v4 = v3;
  [(EQKitBox *)self layoutDepth];
  return v4 + v5;
}

- (CGRect)erasableBounds
{
  [(EQKitBox *)self height];
  v4 = v3;
  v5 = -v3;
  [(EQKitBox *)self width];
  v7 = v6;
  [(EQKitBox *)self vsize];
  v9 = -v7;
  if (v7 < 0.0)
  {
    v10 = v7 + 0.0;
  }

  else
  {
    v9 = v7;
    v10 = 0.0;
  }

  v11 = v8 - v4;
  v12 = -v8;
  if (v8 >= 0.0)
  {
    v12 = v8;
    v11 = v5;
  }

  v13 = v10;
  result.size.height = v12;
  result.size.width = v9;
  result.origin.y = v11;
  result.origin.x = v13;
  return result;
}

- (void)renderIntoContext:(id)a3 offset:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v25 = a3;
  v7 = [v25 cgContext];
  if (v7)
  {
    [(EQKitBox *)self width];
    v9 = v8;
    [(EQKitBox *)self vsize];
    if (v9 > 0.0)
    {
      v11 = v10;
      if (v10 > 0.0)
      {
        [(EQKitBox *)self height];
        v13 = y - v12;
        v14 = x + v9;
        if (v9 >= 0.0)
        {
          v15 = x;
        }

        else
        {
          v9 = -v9;
          v15 = v14;
        }

        v16 = v11 + v13;
        if (v11 >= 0.0)
        {
          v17 = v13;
        }

        else
        {
          v11 = -v11;
          v17 = v16;
        }

        v18 = [v25 selection];
        v19 = [v18 containsBox:self];

        if ((v19 & 1) != 0 || [v25 rendersDebugRects])
        {
          CGContextSaveGState(v7);
          if (v19)
          {
            v20 = [v25 highlightColor];
            if (v20)
            {
              CGContextSetFillColorWithColor(v7, v20);
              v27.origin.x = v15;
              v27.origin.y = v17;
              v27.size.width = v9;
              v27.size.height = v11;
              CGContextFillRect(v7, v27);
            }
          }

          v21 = 1;
        }

        else
        {
          v21 = 0;
        }

        if ([v25 rendersDebugRects])
        {
          GenericRGB = CGColorCreateGenericRGB(1.0, 0.5, 0.5, 1.0);
          v23 = CGColorCreateGenericRGB(0.5, 0.5, 1.0, 1.0);
          v24 = EQKitBox_ContextScale(v7);
          CGContextSetLineWidth(v7, 1.0 / v24);
          CGContextSetStrokeColorWithColor(v7, GenericRGB);
          CGContextBeginPath(v7);
          CGContextMoveToPoint(v7, x, y);
          CGContextAddLineToPoint(v7, v14, y);
          CGContextStrokePath(v7);
          CGContextSetStrokeColorWithColor(v7, v23);
          v28.origin.x = v15;
          v28.origin.y = v17;
          v28.size.width = v9;
          v28.size.height = v11;
          CGContextStrokeRect(v7, v28);
          CGColorRelease(v23);
          CGColorRelease(GenericRGB);
        }

        if (v21)
        {
          CGContextRestoreGState(v7);
        }
      }
    }
  }
}

- (CGAffineTransform)transformFromDescendant:(SEL)a3
{
  v5 = MEMORY[0x277CBF2C0];
  v6 = *(MEMORY[0x277CBF2C0] + 16);
  *&retstr->a = *MEMORY[0x277CBF2C0];
  *&retstr->c = v6;
  *&retstr->tx = *(v5 + 32);
  return [EQKitBox p_getTransform:"p_getTransform:fromDescendant:" fromDescendant:?];
}

- (BOOL)containsPoint:(CGPoint)a3
{
  if (a3.x < 0.0)
  {
    return 0;
  }

  y = a3.y;
  x = a3.x;
  [(EQKitBox *)self width];
  if (x > v7)
  {
    return 0;
  }

  [(EQKitBox *)self depth];
  if (y < -v8)
  {
    return 0;
  }

  [(EQKitBox *)self height];
  return y <= v9;
}

- (id)hitTest:(CGPoint)a3
{
  if ([(EQKitBox *)self containsPoint:a3.x, a3.y])
  {
    v4 = self;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end