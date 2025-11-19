@interface EQKitPathBox
- (BOOL)appendOpticalAlignToSpec:(void *)a3 offset:(CGPoint)a4;
- (BOOL)isEqual:(id)a3;
- (CGRect)erasableBounds;
- (CGRect)p_cacheErasableBounds;
- (EQKitPathBox)initWithCGPath:(CGPath *)a3 height:(double)a4 paddingLeft:(double)a5 paddingRight:(double)a6 cgColor:(CGColor *)a7 drawingMode:(int)a8 lineWidth:(double)a9;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)dealloc;
- (void)p_cacheDimensions;
- (void)p_ensureDimensionsAreValid;
- (void)renderIntoContext:(id)a3 offset:(CGPoint)a4;
@end

@implementation EQKitPathBox

- (EQKitPathBox)initWithCGPath:(CGPath *)a3 height:(double)a4 paddingLeft:(double)a5 paddingRight:(double)a6 cgColor:(CGColor *)a7 drawingMode:(int)a8 lineWidth:(double)a9
{
  v20.receiver = self;
  v20.super_class = EQKitPathBox;
  v16 = [(EQKitPathBox *)&v20 init];
  if (v16)
  {
    if (a3)
    {
      MutableCopy = CGPathCreateMutableCopy(a3);
    }

    else
    {
      MutableCopy = 0;
    }

    v16->_cgPath = MutableCopy;
    v16->_height = a4;
    v16->_paddingLeft = a5;
    v16->_paddingRight = a6;
    if (a7)
    {
      v18 = CFRetain(a7);
    }

    else
    {
      v18 = 0;
    }

    v16->_cgColor = v18;
    v16->_drawingMode = a8;
    v16->_lineWidth = a9;
  }

  return v16;
}

- (void)dealloc
{
  CGPathRelease(self->_cgPath);
  CGColorRelease(self->_cgColor);
  v3.receiver = self;
  v3.super_class = EQKitPathBox;
  [(EQKitPathBox *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(EQKitPathBox *)self cgPath];
  [(EQKitPathBox *)self height];
  v7 = v6;
  [(EQKitPathBox *)self paddingLeft];
  v9 = v8;
  [(EQKitPathBox *)self paddingRight];
  v11 = v10;
  v12 = [(EQKitPathBox *)self color];
  v13 = [(EQKitPathBox *)self drawingMode];
  [(EQKitPathBox *)self lineWidth];

  return [v4 initWithCGPath:v5 height:v12 paddingLeft:v13 paddingRight:v7 cgColor:v9 drawingMode:v11 lineWidth:v14];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v21 = 1;
  }

  else if ([(EQKitPathBox *)v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = v4;
    [(EQKitPathBox *)self height];
    v7 = v6;
    [(EQKitPathBox *)v5 height];
    if (v7 == v8 && ([(EQKitPathBox *)self paddingLeft], v10 = v9, [(EQKitPathBox *)v5 paddingLeft], v10 == v11) && ([(EQKitPathBox *)self paddingRight], v13 = v12, [(EQKitPathBox *)v5 paddingRight], v13 == v14) && CGColorEqualToColor([(EQKitPathBox *)self color], [(EQKitPathBox *)v5 color]) && (v15 = [(EQKitPathBox *)self drawingMode], v15 == [(EQKitPathBox *)v5 drawingMode]) && ([(EQKitPathBox *)self lineWidth], v17 = v16, [(EQKitPathBox *)v5 lineWidth], v17 == v18))
    {
      v19 = [(EQKitPathBox *)self cgPath];
      v20 = [(EQKitPathBox *)v5 cgPath];
      v21 = v19 == v20 || CGPathEqualToPath(v19, v20);
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (void)p_ensureDimensionsAreValid
{
  if (!self->_dimensionsValid)
  {
    [(EQKitPathBox *)self p_cacheDimensions];
    self->_dimensionsValid = 1;
  }
}

- (CGRect)erasableBounds
{
  if (self->_erasableBoundsValid)
  {
    x = self->_erasableBounds.origin.x;
    y = self->_erasableBounds.origin.y;
    width = self->_erasableBounds.size.width;
    height = self->_erasableBounds.size.height;
  }

  else
  {
    [(EQKitPathBox *)self p_cacheErasableBounds];
    self->_erasableBounds.origin.x = x;
    self->_erasableBounds.origin.y = y;
    self->_erasableBounds.size.width = width;
    self->_erasableBounds.size.height = height;
    self->_erasableBoundsValid = 1;
  }

  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)renderIntoContext:(id)a3 offset:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  v8 = [v7 cgContext];
  if (v8 && self->_cgPath)
  {
    v11.receiver = self;
    v11.super_class = EQKitPathBox;
    [(EQKitBox *)&v11 renderIntoContext:v7 offset:x, y];
    CGContextSaveGState(v8);
    CGContextTranslateCTM(v8, x + self->_paddingLeft, y - self->_height);
    cgColor = self->_cgColor;
    if (cgColor)
    {
      CGContextSetFillColorWithColor(v8, cgColor);
      CGContextSetStrokeColorWithColor(v8, self->_cgColor);
    }

    if ([v7 rendersDebugRects])
    {
      CGContextSetAlpha(v8, 0.333);
      CGContextAddPath(v8, self->_cgPath);
      CGContextEOFillPath(v8);
      CGContextSetAlpha(v8, 1.0);
      v10 = EQKitBox_ContextScale(v8);
      CGContextSetLineWidth(v8, 1.0 / v10);
      CGContextAddPath(v8, self->_cgPath);
      CGContextStrokePath(v8);
    }

    else
    {
      CGContextAddPath(v8, self->_cgPath);
      CGContextSetLineWidth(v8, self->_lineWidth);
      CGContextDrawPath(v8, self->_drawingMode);
    }

    CGContextRestoreGState(v8);
  }
}

- (BOOL)appendOpticalAlignToSpec:(void *)a3 offset:(CGPoint)a4
{
  cgPath = self->_cgPath;
  if (cgPath)
  {
    v6.x = a4.x + self->_paddingLeft;
    v6.y = a4.y - self->_height;
    EQKit::OpticalKern::Spec::appendEntry(a3, v6, cgPath);
  }

  return cgPath != 0;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  [(EQKitPathBox *)self height];
  v6 = v5;
  [(EQKitPathBox *)self depth];
  v8 = v7;
  [(EQKitPathBox *)self width];
  return [v3 stringWithFormat:@"<%@ %p>: height=%f depth=%f width=%f", v4, self, v6, v8, v9];
}

- (void)p_cacheDimensions
{
  self->_depth = 0.0;
  self->_width = 0.0;
  cgPath = self->_cgPath;
  if (cgPath)
  {
    PathBoundingBox = CGPathGetPathBoundingBox(cgPath);
    x = PathBoundingBox.origin.x;
    y = PathBoundingBox.origin.y;
    width = PathBoundingBox.size.width;
    height = PathBoundingBox.size.height;
    if (!CGRectIsEmpty(PathBoundingBox))
    {
      v9.origin.x = x;
      v9.origin.y = y;
      v9.size.width = width;
      v9.size.height = height;
      self->_depth = CGRectGetHeight(v9) - self->_height;
      v10.origin.x = x;
      v10.origin.y = y;
      v10.size.width = width;
      v10.size.height = height;
      self->_width = CGRectGetWidth(v10) + self->_paddingLeft + self->_paddingRight;
    }
  }
}

- (CGRect)p_cacheErasableBounds
{
  v4 = *MEMORY[0x277CBF3A0];
  v3 = *(MEMORY[0x277CBF3A0] + 8);
  v5 = *(MEMORY[0x277CBF3A0] + 16);
  v6 = *(MEMORY[0x277CBF3A0] + 24);
  cgPath = self->_cgPath;
  if (cgPath)
  {
    PathBoundingBox = CGPathGetPathBoundingBox(cgPath);
    x = PathBoundingBox.origin.x;
    y = PathBoundingBox.origin.y;
    width = PathBoundingBox.size.width;
    height = PathBoundingBox.size.height;
    if (!CGRectIsEmpty(PathBoundingBox))
    {
      v3 = y - self->_height;
      v4 = x + self->_paddingLeft;
      v5 = width;
      v6 = height;
    }
  }

  v12 = v4;
  v13 = v3;
  v14 = v5;
  v15 = v6;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

@end