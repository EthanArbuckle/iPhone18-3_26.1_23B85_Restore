@interface EQKitBox
- (BOOL)containsPoint:(CGPoint)point;
- (CGAffineTransform)transformFromDescendant:(SEL)descendant;
- (CGRect)boundsWithRoot:(id)root;
- (CGRect)erasableBounds;
- (double)layoutVSize;
- (double)vsize;
- (id)copyWithZone:(_NSZone *)zone;
- (id)hitTest:(CGPoint)test;
- (void)renderIntoContext:(id)context offset:(CGPoint)offset;
@end

@implementation EQKitBox

- (CGRect)boundsWithRoot:(id)root
{
  rootCopy = root;
  v5 = rootCopy;
  memset(&v19[1], 0, sizeof(CGAffineTransform));
  if (rootCopy)
  {
    [rootCopy transformFromDescendant:self];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = [objc_opt_class() allocWithZone:zone];

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

- (void)renderIntoContext:(id)context offset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  contextCopy = context;
  cgContext = [contextCopy cgContext];
  if (cgContext)
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

        selection = [contextCopy selection];
        v19 = [selection containsBox:self];

        if ((v19 & 1) != 0 || [contextCopy rendersDebugRects])
        {
          CGContextSaveGState(cgContext);
          if (v19)
          {
            highlightColor = [contextCopy highlightColor];
            if (highlightColor)
            {
              CGContextSetFillColorWithColor(cgContext, highlightColor);
              v27.origin.x = v15;
              v27.origin.y = v17;
              v27.size.width = v9;
              v27.size.height = v11;
              CGContextFillRect(cgContext, v27);
            }
          }

          v21 = 1;
        }

        else
        {
          v21 = 0;
        }

        if ([contextCopy rendersDebugRects])
        {
          GenericRGB = CGColorCreateGenericRGB(1.0, 0.5, 0.5, 1.0);
          v23 = CGColorCreateGenericRGB(0.5, 0.5, 1.0, 1.0);
          v24 = EQKitBox_ContextScale(cgContext);
          CGContextSetLineWidth(cgContext, 1.0 / v24);
          CGContextSetStrokeColorWithColor(cgContext, GenericRGB);
          CGContextBeginPath(cgContext);
          CGContextMoveToPoint(cgContext, x, y);
          CGContextAddLineToPoint(cgContext, v14, y);
          CGContextStrokePath(cgContext);
          CGContextSetStrokeColorWithColor(cgContext, v23);
          v28.origin.x = v15;
          v28.origin.y = v17;
          v28.size.width = v9;
          v28.size.height = v11;
          CGContextStrokeRect(cgContext, v28);
          CGColorRelease(v23);
          CGColorRelease(GenericRGB);
        }

        if (v21)
        {
          CGContextRestoreGState(cgContext);
        }
      }
    }
  }
}

- (CGAffineTransform)transformFromDescendant:(SEL)descendant
{
  v5 = MEMORY[0x277CBF2C0];
  v6 = *(MEMORY[0x277CBF2C0] + 16);
  *&retstr->a = *MEMORY[0x277CBF2C0];
  *&retstr->c = v6;
  *&retstr->tx = *(v5 + 32);
  return [EQKitBox p_getTransform:"p_getTransform:fromDescendant:" fromDescendant:?];
}

- (BOOL)containsPoint:(CGPoint)point
{
  if (point.x < 0.0)
  {
    return 0;
  }

  y = point.y;
  x = point.x;
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

- (id)hitTest:(CGPoint)test
{
  if ([(EQKitBox *)self containsPoint:test.x, test.y])
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end