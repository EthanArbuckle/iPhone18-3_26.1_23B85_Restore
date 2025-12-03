@interface EQKitPathBox
- (BOOL)appendOpticalAlignToSpec:(void *)spec offset:(CGPoint)offset;
- (BOOL)isEqual:(id)equal;
- (CGRect)erasableBounds;
- (CGRect)p_cacheErasableBounds;
- (EQKitPathBox)initWithCGPath:(CGPath *)path height:(double)height paddingLeft:(double)left paddingRight:(double)right cgColor:(CGColor *)color drawingMode:(int)mode lineWidth:(double)width;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)dealloc;
- (void)p_cacheDimensions;
- (void)p_ensureDimensionsAreValid;
- (void)renderIntoContext:(id)context offset:(CGPoint)offset;
@end

@implementation EQKitPathBox

- (EQKitPathBox)initWithCGPath:(CGPath *)path height:(double)height paddingLeft:(double)left paddingRight:(double)right cgColor:(CGColor *)color drawingMode:(int)mode lineWidth:(double)width
{
  v20.receiver = self;
  v20.super_class = EQKitPathBox;
  v16 = [(EQKitPathBox *)&v20 init];
  if (v16)
  {
    if (path)
    {
      MutableCopy = CGPathCreateMutableCopy(path);
    }

    else
    {
      MutableCopy = 0;
    }

    v16->_cgPath = MutableCopy;
    v16->_height = height;
    v16->_paddingLeft = left;
    v16->_paddingRight = right;
    if (color)
    {
      v18 = CFRetain(color);
    }

    else
    {
      v18 = 0;
    }

    v16->_cgColor = v18;
    v16->_drawingMode = mode;
    v16->_lineWidth = width;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  cgPath = [(EQKitPathBox *)self cgPath];
  [(EQKitPathBox *)self height];
  v7 = v6;
  [(EQKitPathBox *)self paddingLeft];
  v9 = v8;
  [(EQKitPathBox *)self paddingRight];
  v11 = v10;
  color = [(EQKitPathBox *)self color];
  drawingMode = [(EQKitPathBox *)self drawingMode];
  [(EQKitPathBox *)self lineWidth];

  return [v4 initWithCGPath:cgPath height:color paddingLeft:drawingMode paddingRight:v7 cgColor:v9 drawingMode:v11 lineWidth:v14];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v21 = 1;
  }

  else if ([(EQKitPathBox *)equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    [(EQKitPathBox *)self height];
    v7 = v6;
    [(EQKitPathBox *)v5 height];
    if (v7 == v8 && ([(EQKitPathBox *)self paddingLeft], v10 = v9, [(EQKitPathBox *)v5 paddingLeft], v10 == v11) && ([(EQKitPathBox *)self paddingRight], v13 = v12, [(EQKitPathBox *)v5 paddingRight], v13 == v14) && CGColorEqualToColor([(EQKitPathBox *)self color], [(EQKitPathBox *)v5 color]) && (v15 = [(EQKitPathBox *)self drawingMode], v15 == [(EQKitPathBox *)v5 drawingMode]) && ([(EQKitPathBox *)self lineWidth], v17 = v16, [(EQKitPathBox *)v5 lineWidth], v17 == v18))
    {
      cgPath = [(EQKitPathBox *)self cgPath];
      cgPath2 = [(EQKitPathBox *)v5 cgPath];
      v21 = cgPath == cgPath2 || CGPathEqualToPath(cgPath, cgPath2);
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

- (void)renderIntoContext:(id)context offset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  contextCopy = context;
  cgContext = [contextCopy cgContext];
  if (cgContext && self->_cgPath)
  {
    v11.receiver = self;
    v11.super_class = EQKitPathBox;
    [(EQKitBox *)&v11 renderIntoContext:contextCopy offset:x, y];
    CGContextSaveGState(cgContext);
    CGContextTranslateCTM(cgContext, x + self->_paddingLeft, y - self->_height);
    cgColor = self->_cgColor;
    if (cgColor)
    {
      CGContextSetFillColorWithColor(cgContext, cgColor);
      CGContextSetStrokeColorWithColor(cgContext, self->_cgColor);
    }

    if ([contextCopy rendersDebugRects])
    {
      CGContextSetAlpha(cgContext, 0.333);
      CGContextAddPath(cgContext, self->_cgPath);
      CGContextEOFillPath(cgContext);
      CGContextSetAlpha(cgContext, 1.0);
      v10 = EQKitBox_ContextScale(cgContext);
      CGContextSetLineWidth(cgContext, 1.0 / v10);
      CGContextAddPath(cgContext, self->_cgPath);
      CGContextStrokePath(cgContext);
    }

    else
    {
      CGContextAddPath(cgContext, self->_cgPath);
      CGContextSetLineWidth(cgContext, self->_lineWidth);
      CGContextDrawPath(cgContext, self->_drawingMode);
    }

    CGContextRestoreGState(cgContext);
  }
}

- (BOOL)appendOpticalAlignToSpec:(void *)spec offset:(CGPoint)offset
{
  cgPath = self->_cgPath;
  if (cgPath)
  {
    v6.x = offset.x + self->_paddingLeft;
    v6.y = offset.y - self->_height;
    EQKit::OpticalKern::Spec::appendEntry(spec, v6, cgPath);
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