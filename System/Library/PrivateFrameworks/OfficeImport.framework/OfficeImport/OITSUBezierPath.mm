@interface OITSUBezierPath
+ (id)bezierPath;
+ (id)bezierPathWithCGPath:(CGPath *)path;
+ (id)bezierPathWithOvalInRect:(CGRect)rect;
+ (id)bezierPathWithRect:(CGRect)rect;
+ (id)bezierPathWithRoundedRect:(CGRect)rect cornerRadius:(double)radius;
+ (id)bezierPathWithStart:(CGPoint)start end:(CGPoint)end;
+ (void)clipRect:(CGRect)rect;
+ (void)fillRect:(CGRect)rect;
+ (void)initialize;
+ (void)strokeLineFromPoint:(CGPoint)point toPoint:(CGPoint)toPoint;
+ (void)strokeRect:(CGRect)rect;
- (BOOL)containsPoint:(CGPoint)point;
- (BOOL)isCircular;
- (BOOL)isClockwise;
- (BOOL)isDiamond;
- (BOOL)isEqual:(id)equal;
- (BOOL)isRectangular;
- (BOOL)isTriangular;
- (CGPath)CGPath;
- (CGPoint)_checkPointForValidity:(CGPoint)validity;
- (CGPoint)currentPoint;
- (CGRect)bounds;
- (CGRect)controlPointBounds;
- (OITSUBezierPath)init;
- (OITSUBezierPath)initWithCString:(const char *)string;
- (OITSUBezierPath)initWithCoder:(id)coder;
- (const)cString;
- (double)calculateLengthOfElement:(int64_t)element;
- (double)length;
- (double)lengthOfElement:(int64_t)element;
- (double)lengthToElement:(int64_t)element;
- (id)_copyFlattenedPath;
- (id)bezierPathByFlatteningPathWithFlatness:(double)flatness;
- (id)bezierPathByReversingPath;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)p_bezierPathByRemovingRedundantElementAndSubregionsSmallerThanThreshold:(double)threshold;
- (int64_t)elementAtIndex:(int64_t)index allPoints:(CGPoint *)points;
- (int64_t)elementAtIndex:(int64_t)index associatedPoints:(CGPoint *)points;
- (void)_addPathSegment:(int64_t)segment point:(CGPoint)point;
- (void)_appendArcSegmentWithCenter:(CGPoint)center radius:(double)radius angle1:(double)angle1 angle2:(double)angle2;
- (void)_appendToPath:(id)path skippingInitialMoveIfPossible:(BOOL)possible;
- (void)_deviceClosePath;
- (void)_deviceCurveToPoint:(CGPoint)point controlPoint1:(CGPoint)point1 controlPoint2:(CGPoint)point2;
- (void)_deviceMoveToPoint:(CGPoint)point;
- (void)_doPath;
- (void)addClip;
- (void)appendBezierPath:(id)path skippingInitialMoveIfPossible:(BOOL)possible;
- (void)appendBezierPathWithArcFromPoint:(CGPoint)point toPoint:(CGPoint)toPoint radius:(double)radius;
- (void)appendBezierPathWithArcWithCenter:(CGPoint)center radius:(double)radius startAngle:(double)angle endAngle:(double)endAngle clockwise:(BOOL)clockwise;
- (void)appendBezierPathWithArcWithEllipseBounds:(CGRect)bounds startAngle:(double)angle swingAngle:(double)swingAngle angleType:(int)type startNewPath:(BOOL)path;
- (void)appendBezierPathWithArcWithEllipseBounds:(CGRect)bounds startRadialVector:(CGPoint)vector endRadialVector:(CGPoint)radialVector angleSign:(int)sign startNewPath:(BOOL)path;
- (void)appendBezierPathWithOvalInRect:(CGRect)rect;
- (void)appendBezierPathWithPoints:(CGPoint *)points count:(int64_t)count;
- (void)appendBezierPathWithRect:(CGRect)rect;
- (void)attachBezierPath:(id)path;
- (void)calculateLengths;
- (void)copyPathAttributesTo:(id)to;
- (void)curveToPoint:(CGPoint)point controlPoint1:(CGPoint)point1 controlPoint2:(CGPoint)point2;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)fill;
- (void)flattenIntoPath:(id)path flatness:(double)flatness;
- (void)getLineDash:(double *)dash count:(int64_t *)count phase:(double *)phase;
- (void)lineToPoint:(CGPoint)point;
- (void)relativeCurveToPoint:(CGPoint)point controlPoint1:(CGPoint)point1 controlPoint2:(CGPoint)point2;
- (void)relativeLineToPoint:(CGPoint)point;
- (void)relativeMoveToPoint:(CGPoint)point;
- (void)removeAllPoints;
- (void)setAssociatedPoints:(CGPoint *)points atIndex:(int64_t)index;
- (void)setLineDash:(const double *)dash count:(int64_t)count phase:(double)phase;
- (void)stroke;
- (void)subdivideBezierWithFlatness:(double)flatness startPoint:(CGPoint)point controlPoint1:(CGPoint)point1 controlPoint2:(CGPoint)point2 endPoint:(CGPoint)endPoint;
- (void)transformUsingAffineTransform:(CGAffineTransform *)transform;
@end

@implementation OITSUBezierPath

+ (void)initialize
{
  if (objc_opt_class() == self)
  {

    [OITSUBezierPath setVersion:524];
  }
}

+ (id)bezierPath
{
  v2 = objc_alloc_init(self);

  return v2;
}

+ (id)bezierPathWithStart:(CGPoint)start end:(CGPoint)end
{
  y = end.y;
  x = end.x;
  v6 = start.y;
  v7 = start.x;
  bezierPath = [self bezierPath];
  [bezierPath moveToPoint:{v7, v6}];
  [bezierPath lineToPoint:{x, y}];
  return bezierPath;
}

+ (id)bezierPathWithRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  bezierPath = [self bezierPath];
  [bezierPath appendBezierPathWithRect:{x, y, width, height}];
  return bezierPath;
}

+ (id)bezierPathWithOvalInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  bezierPath = [self bezierPath];
  [bezierPath appendBezierPathWithOvalInRect:{x, y, width, height}];
  return bezierPath;
}

+ (id)bezierPathWithRoundedRect:(CGRect)rect cornerRadius:(double)radius
{
  v4 = TSUCreateRoundRectPathForRectWithRadius(rect.origin.x, rect.origin.y, rect.size.width, rect.size.height, radius);
  v5 = [OITSUBezierPath bezierPathWithCGPath:v4];
  CGPathRelease(v4);
  return v5;
}

+ (id)bezierPathWithCGPath:(CGPath *)path
{
  bezierPath = [self bezierPath];
  CGPathApply(path, bezierPath, pBuildBezierPath);
  return bezierPath;
}

+ (void)fillRect:(CGRect)rect
{
  if (rect.size.width >= 0.0)
  {
    height = rect.size.height;
    if (rect.size.height >= 0.0)
    {
      width = rect.size.width;
      y = rect.origin.y;
      x = rect.origin.x;
      CurrentContext = UIGraphicsGetCurrentContext();
      v8 = x;
      v9 = y;
      v10 = width;
      v11 = height;

      CGContextFillRect(CurrentContext, *&v8);
    }
  }
}

+ (void)strokeRect:(CGRect)rect
{
  if (rect.size.width >= 0.0)
  {
    height = rect.size.height;
    if (rect.size.height >= 0.0)
    {
      width = rect.size.width;
      y = rect.origin.y;
      x = rect.origin.x;
      CurrentContext = UIGraphicsGetCurrentContext();
      CGContextSaveGState(CurrentContext);
      CGContextSetLineCap(CurrentContext, sfrdefaultLineCapStyle);
      CGContextSetLineJoin(CurrentContext, sfrdefaultLineJoinStyle);
      _SFRSetLineWidth(CurrentContext, *&sfrdefaultLineWidth);
      CGContextSetMiterLimit(CurrentContext, *&sfrdefaultMiterLimit);
      CGContextBeginPath(CurrentContext);
      v17.origin.x = x;
      v17.origin.y = y;
      v17.size.width = width;
      v17.size.height = height;
      MinX = CGRectGetMinX(v17);
      v18.origin.x = x;
      v18.origin.y = y;
      v18.size.width = width;
      v18.size.height = height;
      MinY = CGRectGetMinY(v18);
      CGContextMoveToPoint(CurrentContext, MinX, MinY);
      v19.origin.x = x;
      v19.origin.y = y;
      v19.size.width = width;
      v19.size.height = height;
      MaxX = CGRectGetMaxX(v19);
      v20.origin.x = x;
      v20.origin.y = y;
      v20.size.width = width;
      v20.size.height = height;
      v11 = CGRectGetMinY(v20);
      CGContextAddLineToPoint(CurrentContext, MaxX, v11);
      v21.origin.x = x;
      v21.origin.y = y;
      v21.size.width = width;
      v21.size.height = height;
      v12 = CGRectGetMaxX(v21);
      v22.origin.x = x;
      v22.origin.y = y;
      v22.size.width = width;
      v22.size.height = height;
      MaxY = CGRectGetMaxY(v22);
      CGContextAddLineToPoint(CurrentContext, v12, MaxY);
      v23.origin.x = x;
      v23.origin.y = y;
      v23.size.width = width;
      v23.size.height = height;
      v14 = CGRectGetMinX(v23);
      v24.origin.x = x;
      v24.origin.y = y;
      v24.size.width = width;
      v24.size.height = height;
      v15 = CGRectGetMaxY(v24);
      CGContextAddLineToPoint(CurrentContext, v14, v15);
      CGContextClosePath(CurrentContext);
      CGContextStrokePath(CurrentContext);

      CGContextRestoreGState(CurrentContext);
    }
  }
}

+ (void)clipRect:(CGRect)rect
{
  if (rect.size.width >= 0.0)
  {
    height = rect.size.height;
    if (rect.size.height >= 0.0)
    {
      width = rect.size.width;
      y = rect.origin.y;
      x = rect.origin.x;
      CurrentContext = UIGraphicsGetCurrentContext();
      v8 = x;
      v9 = y;
      v10 = width;
      v11 = height;

      CGContextClipToRect(CurrentContext, *&v8);
    }
  }
}

+ (void)strokeLineFromPoint:(CGPoint)point toPoint:(CGPoint)toPoint
{
  y = toPoint.y;
  x = toPoint.x;
  v6 = point.y;
  v7 = point.x;
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSaveGState(CurrentContext);
  CGContextSetLineCap(CurrentContext, sfrdefaultLineCapStyle);
  CGContextSetLineJoin(CurrentContext, sfrdefaultLineJoinStyle);
  _SFRSetLineWidth(CurrentContext, *&sfrdefaultLineWidth);
  CGContextBeginPath(CurrentContext);
  CGContextMoveToPoint(CurrentContext, v7, v6);
  CGContextAddLineToPoint(CurrentContext, x, y);
  CGContextStrokePath(CurrentContext);

  CGContextRestoreGState(CurrentContext);
}

- (OITSUBezierPath)init
{
  v6.receiver = self;
  v6.super_class = OITSUBezierPath;
  result = [(OITSUBezierPath *)&v6 init];
  sfr_bpFlags = result->sfr_bpFlags;
  *&result->sfr_elementCount = 0u;
  *&result->sfr_head = 0u;
  result->sfr_extraSegmentCount = 0;
  result->sfr_extraSegmentMax = 0;
  result->sfr_totalLength = 0.0;
  result->sfr_lastSubpathIndex = -1;
  result->sfr_extraSegments = 0;
  v4 = (((8 * sfrdefaultWindingRule) | (sfrdefaultLineCapStyle << 6)) | 5 | *&sfr_bpFlags & 0xFFFFF800 | (16 * (sfrdefaultLineJoinStyle & 0xF)));
  *&result->sfr_lineWidth = sfrdefaultLineWidth;
  v5 = *&sfrdefaultFlatness;
  *&result->sfr_miterLimit = sfrdefaultMiterLimit;
  result->sfr_flatness = v5;
  result->sfr_dashedLinePattern = 0;
  result->sfr_dashedLineCount = 0;
  result->sfr_dashedLinePhase = 0.0;
  result->sfr_bpFlags = v4;
  return result;
}

- (void)dealloc
{
  v3 = [(OITSUBezierPath *)self zone];
  NSZoneFree(v3, self->sfr_head);
  NSZoneFree(v3, self->sfr_elementLength);
  sfr_dashedLinePattern = self->sfr_dashedLinePattern;
  if (sfr_dashedLinePattern)
  {
    NSZoneFree(v3, sfr_dashedLinePattern);
  }

  sfr_path = self->sfr_path;
  if (sfr_path)
  {
    CFRelease(sfr_path);
  }

  sfr_extraSegments = self->sfr_extraSegments;
  if (sfr_extraSegments)
  {
    NSZoneFree(v3, sfr_extraSegments);
  }

  v7.receiver = self;
  v7.super_class = OITSUBezierPath;
  [(OITSUBezierPath *)&v7 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  v18[5] = *MEMORY[0x277D85DE8];
  if (self == equal)
  {
LABEL_16:
    LOBYTE(v5) = 1;
    return v5;
  }

  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = TSUCheckedDynamicCast(v6, equal);
    elementCount = [(OITSUBezierPath *)self elementCount];
    if (elementCount != [v7 elementCount])
    {
LABEL_17:
      LOBYTE(v5) = 0;
      return v5;
    }

    if (elementCount >= 1)
    {
      v9 = 0;
      while (1)
      {
        v10 = [(OITSUBezierPath *)self elementAtIndex:v9 associatedPoints:&v17];
        if (v10 != [v7 elementAtIndex:v9 associatedPoints:&v15])
        {
          goto LABEL_17;
        }

        if (v10 >= 2)
        {
          if (v10 == 2)
          {
            v11 = 3;
            v12 = v18;
            v13 = &v16;
            while (TSUNearlyEqualPoints(*(v12 - 1), *v12, *(v13 - 1), *v13))
            {
              v13 += 2;
              v12 += 2;
              if (!--v11)
              {
                goto LABEL_14;
              }
            }

            goto LABEL_17;
          }
        }

        else if (!TSUNearlyEqualPoints(v17, v18[0], v15, v16))
        {
          goto LABEL_17;
        }

LABEL_14:
        ++v9;
        LOBYTE(v5) = 1;
        if (v9 == elementCount)
        {
          return v5;
        }
      }
    }

    goto LABEL_16;
  }

  return v5;
}

- (void)copyPathAttributesTo:(id)to
{
  [to setWindingRule:{-[OITSUBezierPath windingRule](self, "windingRule")}];
  [to setLineCapStyle:{-[OITSUBezierPath lineCapStyle](self, "lineCapStyle")}];
  [to setLineJoinStyle:{-[OITSUBezierPath lineJoinStyle](self, "lineJoinStyle")}];
  [(OITSUBezierPath *)self lineWidth];
  [to setLineWidth:?];
  [(OITSUBezierPath *)self miterLimit];
  [to setMiterLimit:?];
  [(OITSUBezierPath *)self flatness];
  [to setFlatness:?];
  if (self->sfr_dashedLinePattern)
  {
    sfr_dashedLinePhase = self->sfr_dashedLinePhase;

    [to setLineDash:sfr_dashedLinePhase count:? phase:?];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  [(OITSUBezierPath *)self copyPathAttributesTo:v4];
  [v4 appendBezierPath:self];
  return v4;
}

- (void)lineToPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  if ([(OITSUBezierPath *)self isEmpty])
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE648] format:@"No current point for line"];
  }

  [(OITSUBezierPath *)self _deviceLineToPoint:x, y];
}

- (void)curveToPoint:(CGPoint)point controlPoint1:(CGPoint)point1 controlPoint2:(CGPoint)point2
{
  y = point2.y;
  x = point2.x;
  v7 = point1.y;
  v8 = point1.x;
  v9 = point.y;
  v10 = point.x;
  if ([(OITSUBezierPath *)self isEmpty])
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE648] format:@"No current point for curve"];
  }

  [(OITSUBezierPath *)self _deviceCurveToPoint:v10 controlPoint1:v9 controlPoint2:v8, v7, x, y];
}

- (void)removeAllPoints
{
  sfr_bpFlags = (*&self->sfr_bpFlags & 0xFFFFFCFF);
  self->sfr_bpFlags = sfr_bpFlags;
  self->sfr_elementCount = 0;
  self->sfr_extraSegmentCount = 0;
  self->sfr_lastSubpathIndex = -1;
  sfr_path = self->sfr_path;
  if (sfr_path)
  {
    CFRelease(sfr_path);
    self->sfr_path = 0;
    sfr_bpFlags = self->sfr_bpFlags;
  }

  self->sfr_bpFlags = (*&sfr_bpFlags | 1);
}

- (void)relativeMoveToPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  [(OITSUBezierPath *)self currentPoint];
  v7 = x + v6;
  v9 = y + v8;

  [(OITSUBezierPath *)self _deviceMoveToPoint:v7, v9];
}

- (void)relativeLineToPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  [(OITSUBezierPath *)self currentPoint];
  v7 = x + v6;
  v9 = y + v8;

  [(OITSUBezierPath *)self _deviceLineToPoint:v7, v9];
}

- (void)relativeCurveToPoint:(CGPoint)point controlPoint1:(CGPoint)point1 controlPoint2:(CGPoint)point2
{
  y = point2.y;
  x = point2.x;
  v7 = point1.y;
  v8 = point1.x;
  v9 = point.y;
  v10 = point.x;
  [(OITSUBezierPath *)self currentPoint];
  v13 = v8 + v12;
  v15 = v7 + v14;
  v16 = x + v12;
  v17 = y + v14;
  v18 = v10 + v12;
  v19 = v9 + v14;

  [(OITSUBezierPath *)self _deviceCurveToPoint:v18 controlPoint1:v19 controlPoint2:v13, v15, v16, v17];
}

- (void)setLineDash:(const double *)dash count:(int64_t)count phase:(double)phase
{
  p_sfr_dashedLinePattern = &self->sfr_dashedLinePattern;
  sfr_dashedLinePattern = self->sfr_dashedLinePattern;
  if (dash)
  {
    dashCopy = dash;
    v11 = [(OITSUBezierPath *)self zone];
    if (sfr_dashedLinePattern)
    {
      v12 = NSZoneRealloc(v11, *p_sfr_dashedLinePattern, 8 * count);
    }

    else
    {
      v12 = NSZoneMalloc(v11, 8 * count);
    }

    self->sfr_dashedLinePattern = v12;
    self->sfr_dashedLineCount = count;
    self->sfr_dashedLinePhase = phase;
    if (count >= 1)
    {
      do
      {
        v13 = *dashCopy++;
        *v12++ = v13;
        --count;
      }

      while (count);
    }
  }

  else if (sfr_dashedLinePattern)
  {
    NSZoneFree([(OITSUBezierPath *)self zone], self->sfr_dashedLinePattern);
    *p_sfr_dashedLinePattern = 0;
    p_sfr_dashedLinePattern[1] = 0;
    p_sfr_dashedLinePattern[2] = 0;
  }
}

- (void)getLineDash:(double *)dash count:(int64_t *)count phase:(double *)phase
{
  if (count)
  {
    *count = self->sfr_dashedLineCount;
  }

  if (phase)
  {
    *phase = self->sfr_dashedLinePhase;
  }

  if (dash)
  {
    sfr_dashedLinePattern = self->sfr_dashedLinePattern;
    if (sfr_dashedLinePattern)
    {
      for (i = self->sfr_dashedLineCount; i; --i)
      {
        v7 = *sfr_dashedLinePattern++;
        *dash++ = v7;
      }
    }
  }
}

- (CGPoint)_checkPointForValidity:(CGPoint)validity
{
  y = validity.y;
  x = validity.x;
  if (![(OITSUBezierPath *)self _isValid:?])
  {
    x = 0.0;
  }

  if ([(OITSUBezierPath *)self _isValid:y])
  {
    v6 = y;
  }

  else
  {
    v6 = 0.0;
  }

  v7 = x;
  result.y = v6;
  result.x = v7;
  return result;
}

- (void)_doPath
{
  if (!self->sfr_path && ![(OITSUBezierPath *)self isEmpty])
  {
    Mutable = CGPathCreateMutable();
    sfr_elementCount = self->sfr_elementCount;
    if (sfr_elementCount >= 1)
    {
      sfr_head = self->sfr_head;
      v6 = &sfr_head[6 * sfr_elementCount];
      sfr_extraSegments = self->sfr_extraSegments;
      do
      {
        v8 = *sfr_head & 0xFLL;
        if (v8 > 1)
        {
          if (v8 == 2)
          {
            [(OITSUBezierPath *)self _checkPointForValidity:*&sfr_head[2], *&sfr_head[4]];
            v14 = v13;
            v16 = v15;
            [(OITSUBezierPath *)self _checkPointForValidity:*sfr_extraSegments, sfr_extraSegments[1]];
            v18 = v17;
            v20 = v19;
            [(OITSUBezierPath *)self _checkPointForValidity:sfr_extraSegments[2], sfr_extraSegments[3]];
            CGPathAddCurveToPoint(Mutable, 0, v18, v20, v21, v22, v14, v16);
            sfr_extraSegments += 4;
          }

          else if (v8 == 3)
          {
            CGPathCloseSubpath(Mutable);
          }
        }

        else if (v8)
        {
          if (v8 == 1)
          {
            [(OITSUBezierPath *)self _checkPointForValidity:*&sfr_head[2], *&sfr_head[4]];
            CGPathAddLineToPoint(Mutable, 0, v9, v10);
          }
        }

        else
        {
          [(OITSUBezierPath *)self _checkPointForValidity:*&sfr_head[2], *&sfr_head[4]];
          CGPathMoveToPoint(Mutable, 0, v11, v12);
        }

        sfr_head += 6;
      }

      while (sfr_head < v6);
    }

    self->sfr_path = Mutable;
  }
}

- (void)stroke
{
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSaveGState(CurrentContext);
  CGContextSetLineCap(CurrentContext, [(OITSUBezierPath *)self lineCapStyle]);
  CGContextSetLineJoin(CurrentContext, [(OITSUBezierPath *)self lineJoinStyle]);
  _SFRSetLineWidth(CurrentContext, self->sfr_lineWidth);
  CGContextSetMiterLimit(CurrentContext, self->sfr_miterLimit);
  CGContextSetFlatness(CurrentContext, self->sfr_flatness);
  sfr_dashedLinePattern = self->sfr_dashedLinePattern;
  if (sfr_dashedLinePattern)
  {
    CGContextSetLineDash(CurrentContext, self->sfr_dashedLinePhase, sfr_dashedLinePattern, self->sfr_dashedLineCount);
  }

  sfr_elementCount = self->sfr_elementCount;
  if (sfr_elementCount >= 1)
  {
    sfr_head = self->sfr_head;
    v7 = &sfr_head[6 * sfr_elementCount];
    sfr_extraSegments = self->sfr_extraSegments;
    do
    {
      v9 = *sfr_head & 0xF;
      if (v9 > 1)
      {
        if (v9 == 2)
        {
          CGContextAddCurveToPoint(CurrentContext, *sfr_extraSegments, sfr_extraSegments[1], sfr_extraSegments[2], sfr_extraSegments[3], *&sfr_head[2], *&sfr_head[4]);
          sfr_extraSegments += 4;
        }

        else if (v9 == 3)
        {
          CGContextClosePath(CurrentContext);
        }
      }

      else if (v9)
      {
        if (v9 == 1)
        {
          CGContextAddLineToPoint(CurrentContext, *&sfr_head[2], *&sfr_head[4]);
        }
      }

      else
      {
        CGContextMoveToPoint(CurrentContext, *&sfr_head[2], *&sfr_head[4]);
      }

      sfr_head += 6;
    }

    while (sfr_head < v7);
  }

  CGContextStrokePath(CurrentContext);

  CGContextRestoreGState(CurrentContext);
}

- (void)fill
{
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSaveGState(CurrentContext);
  CGContextSetFlatness(CurrentContext, self->sfr_flatness);
  sfr_elementCount = self->sfr_elementCount;
  if (sfr_elementCount >= 1)
  {
    sfr_head = self->sfr_head;
    v6 = &sfr_head[6 * sfr_elementCount];
    sfr_extraSegments = self->sfr_extraSegments;
    do
    {
      v8 = *sfr_head & 0xF;
      if (v8 > 1)
      {
        if (v8 == 2)
        {
          CGContextAddCurveToPoint(CurrentContext, *sfr_extraSegments, sfr_extraSegments[1], sfr_extraSegments[2], sfr_extraSegments[3], *&sfr_head[2], *&sfr_head[4]);
          sfr_extraSegments += 4;
        }

        else if (v8 == 3)
        {
          CGContextClosePath(CurrentContext);
        }
      }

      else if (v8)
      {
        if (v8 == 1)
        {
          CGContextAddLineToPoint(CurrentContext, *&sfr_head[2], *&sfr_head[4]);
        }
      }

      else
      {
        CGContextMoveToPoint(CurrentContext, *&sfr_head[2], *&sfr_head[4]);
      }

      sfr_head += 6;
    }

    while (sfr_head < v6);
  }

  if ([(OITSUBezierPath *)self windingRule])
  {
    CGContextEOFillPath(CurrentContext);
  }

  else
  {
    CGContextFillPath(CurrentContext);
  }

  CGContextRestoreGState(CurrentContext);
}

- (void)addClip
{
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSetFlatness(CurrentContext, self->sfr_flatness);
  CGContextBeginPath(CurrentContext);
  sfr_elementCount = self->sfr_elementCount;
  if (sfr_elementCount >= 1)
  {
    sfr_head = self->sfr_head;
    v6 = &sfr_head[6 * sfr_elementCount];
    sfr_extraSegments = self->sfr_extraSegments;
    do
    {
      v8 = *sfr_head & 0xF;
      if (v8 > 1)
      {
        if (v8 == 2)
        {
          CGContextAddCurveToPoint(CurrentContext, *sfr_extraSegments, sfr_extraSegments[1], sfr_extraSegments[2], sfr_extraSegments[3], *&sfr_head[2], *&sfr_head[4]);
          sfr_extraSegments += 4;
        }

        else if (v8 == 3)
        {
          CGContextClosePath(CurrentContext);
        }
      }

      else if (v8)
      {
        if (v8 == 1)
        {
          CGContextAddLineToPoint(CurrentContext, *&sfr_head[2], *&sfr_head[4]);
        }
      }

      else
      {
        CGContextMoveToPoint(CurrentContext, *&sfr_head[2], *&sfr_head[4]);
      }

      sfr_head += 6;
    }

    while (sfr_head < v6);
  }

  if ([(OITSUBezierPath *)self windingRule])
  {
    CGContextEOClip(CurrentContext);
  }

  else
  {
    CGContextClip(CurrentContext);
  }

  CGContextBeginPath(CurrentContext);
}

- (void)subdivideBezierWithFlatness:(double)flatness startPoint:(CGPoint)point controlPoint1:(CGPoint)point1 controlPoint2:(CGPoint)point2 endPoint:(CGPoint)endPoint
{
  pointCopy = point;
  point.x = endPoint.x;
  *&v7 = endPoint.y;
  y = point1.y;
  v11 = vsubq_f64(point1, pointCopy);
  v12 = point2.y;
  pointCopy2 = point;
  v39 = v7;
  v13 = endPoint.y;
  v14 = vsubq_f64(point2, point1);
  v15 = vsubq_f64(v14, v11);
  v16 = vsubq_f64(vsubq_f64(point, point2), v14);
  v17 = vzip2q_s64(v15, v16);
  v18 = vzip1q_s64(v15, v16);
  v19 = vmlaq_f64(vmulq_f64(v17, v17), v18, v18);
  if (v19.f64[0] <= v19.f64[1])
  {
    v19.f64[0] = v19.f64[1];
  }

  v20 = flatness * flatness;
  v21 = v19.f64[0] * 9.0 * 0.0625;
  if (v21 > v20)
  {
    v22 = vsubq_f64(v16, v15);
    __asm
    {
      FMOV            V5.2D, #3.0
      FMOV            V6.2D, #6.0
    }

    v29 = vmulq_f64(v22, _Q6);
    v30 = vmlaq_f64(v22, _Q5, vaddq_f64(v11, v15));
    v31 = vmulq_f64(vaddq_f64(v15, v22), _Q6);
    v32 = 1;
    __asm
    {
      FMOV            V2.2D, #0.125
      FMOV            V3.2D, #0.25
      FMOV            V4.2D, #0.5
    }

    do
    {
      v36 = v32;
      v29 = vmulq_f64(v29, _Q2);
      v31 = vsubq_f64(vmulq_f64(v31, _Q3), v29);
      v30 = vsubq_f64(vmulq_f64(v30, _Q4), vmulq_f64(v31, _Q4));
      v32 *= 2;
      v21 = v21 * 0.0625;
    }

    while (v21 > v20 && v32 <= 0x10000);
    if (v32 >= 2)
    {
      v37 = (2 * v36) | 1;
      do
      {
        v42 = v29;
        v43 = vaddq_f64(pointCopy, v30);
        v40 = vaddq_f64(v29, v31);
        v41 = vaddq_f64(v30, v31);
        [(OITSUBezierPath *)self lineToPoint:*&v43, pointCopy2, v39];
        v31 = v40;
        v30 = v41;
        v29 = v42;
        pointCopy = v43;
        --v37;
      }

      while (v37 > 2);
    }
  }

  [(OITSUBezierPath *)self lineToPoint:pointCopy2.x, *&v39];
}

- (void)flattenIntoPath:(id)path flatness:(double)flatness
{
  sfr_elementCount = self->sfr_elementCount;
  if (sfr_elementCount >= 1)
  {
    sfr_head = self->sfr_head;
    v8 = &sfr_head[6 * sfr_elementCount];
    sfr_extraSegments = self->sfr_extraSegments;
    do
    {
      v10 = *sfr_head & 0xF;
      if (v10 > 1)
      {
        if (v10 == 2)
        {
          [path subdivideBezierWithFlatness:flatness startPoint:*&sfr_head[-4] controlPoint1:*&sfr_head[-2] controlPoint2:*sfr_extraSegments endPoint:{sfr_extraSegments[1], sfr_extraSegments[2], sfr_extraSegments[3], *&sfr_head[2], *&sfr_head[4]}];
          sfr_extraSegments += 4;
        }

        else if (v10 == 3)
        {
          [path closePath];
        }
      }

      else if (v10)
      {
        if (v10 == 1)
        {
          [path lineToPoint:{*&sfr_head[2], *&sfr_head[4]}];
        }
      }

      else
      {
        [path moveToPoint:{*&sfr_head[2], *&sfr_head[4]}];
      }

      sfr_head += 6;
    }

    while (sfr_head < v8);
  }
}

- (id)bezierPathByFlatteningPathWithFlatness:(double)flatness
{
  if ([(OITSUBezierPath *)self isFlat])
  {
    v5 = [(OITSUBezierPath *)self copy];
  }

  else
  {
    v5 = objc_alloc_init(objc_opt_class());
    [(OITSUBezierPath *)self flattenIntoPath:v5 flatness:flatness];
  }

  return v5;
}

- (id)_copyFlattenedPath
{
  v3 = objc_alloc_init(objc_opt_class());
  [(OITSUBezierPath *)self flattenIntoPath:v3];
  return v3;
}

- (id)bezierPathByReversingPath
{
  if (self->sfr_elementCount <= 1)
  {
    v3 = [(OITSUBezierPath *)self copy];
    goto LABEL_29;
  }

  v3 = objc_alloc_init(objc_opt_class());
  sfr_elementCount = self->sfr_elementCount;
  if (sfr_elementCount >= 2)
  {
    sfr_head = self->sfr_head;
    v6 = &sfr_head[6 * sfr_elementCount];
    sfr_extraSegments = self->sfr_extraSegments;
    v8 = sfr_head + 6;
    while (1)
    {
      v9 = sfr_head;
      sfr_head = v8;
      v10 = *&v9[6] & 0xFLL;
      if (!v10 || &v9[12] >= v6)
      {
        v12 = v10 ? sfr_head : v9;
        [v3 moveToPoint:{*&v12[2], *&v12[4]}];
        v13 = *v12;
        if ((*v12 & 0xFLL) != 0)
        {
          break;
        }
      }

LABEL_28:
      v8 = sfr_head + 6;
      if (&sfr_head[6] >= v6)
      {
        goto LABEL_29;
      }
    }

    v14 = 0;
    v15 = &v12[-2];
    while (1)
    {
      v16 = v13 & 0xF;
      if (v16 == 3)
      {
        break;
      }

      if (v16 == 2)
      {
        [v3 curveToPoint:*(v15 - 1) controlPoint1:*v15 controlPoint2:{sfr_extraSegments[4 * (v13 >> 4) + 2], sfr_extraSegments[4 * (v13 >> 4) + 3], sfr_extraSegments[4 * (v13 >> 4)], sfr_extraSegments[4 * (v13 >> 4) + 1]}];
        if ((v14 & 1) == 0)
        {
          v14 = 0;
          goto LABEL_27;
        }

        if ((*(v15 - 2) & 0xF) == 0)
        {
LABEL_23:
          [v3 closePath];
        }

LABEL_25:
        v14 = 1;
        goto LABEL_27;
      }

      if (v16 == 1)
      {
        if ((v14 & 1) != 0 && (*(v15 - 2) & 0xF) == 0)
        {
          goto LABEL_23;
        }

        [v3 lineToPoint:{*(v15 - 1), *v15}];
      }

LABEL_27:
      v13 = *(v15 - 2);
      v15 -= 3;
      if ((v13 & 0xF) == 0)
      {
        goto LABEL_28;
      }
    }

    [v3 lineToPoint:{*(v15 - 1), *v15}];
    goto LABEL_25;
  }

LABEL_29:

  return v3;
}

- (id)p_bezierPathByRemovingRedundantElementAndSubregionsSmallerThanThreshold:(double)threshold
{
  v43 = *MEMORY[0x277D85DE8];
  v5 = +[OITSUBezierPath bezierPath];
  v6 = +[OITSUBezierPath bezierPath];
  elementCount = [(OITSUBezierPath *)self elementCount];
  if (elementCount >= 1)
  {
    v8 = elementCount;
    v9 = 0;
    v10 = 0;
    v12 = *MEMORY[0x277CBF348];
    v11 = *(MEMORY[0x277CBF348] + 8);
    v13 = *MEMORY[0x277CBF348];
    v14 = v11;
    v15 = *MEMORY[0x277CBF348];
    v16 = v11;
    do
    {
      v17 = [(OITSUBezierPath *)self elementAtIndex:v9 associatedPoints:&v37, *&v34, *&v35];
      if (v17 > 1)
      {
        if (v17 == 2)
        {
          [v6 curveToPoint:v41 controlPoint1:v42 controlPoint2:{v37, v38, v39, v40}];
          v10 = 0;
          v16 = v14;
          v15 = v13;
          v13 = v41;
          v14 = v42;
          goto LABEL_24;
        }

        if (v17 == 3)
        {
          [v6 closePath];
          if (threshold > 0.0)
          {
            [v6 bounds];
            v22 = v21;
            v24 = v23;
            if (fmaxf(v22, v24) > threshold)
            {
              [v5 appendBezierPath:v6];
            }

            v6 = +[OITSUBezierPath bezierPath];
          }

          v10 = 0;
          goto LABEL_16;
        }
      }

      else
      {
        if (!v17)
        {
          [v6 moveToPoint:{v37, v38}];
          v10 = 0;
          v12 = v37;
          v11 = v38;
LABEL_16:
          v16 = v14;
          v15 = v13;
          v14 = v11;
          v13 = v12;
          goto LABEL_24;
        }

        if (v17 == 1)
        {
          v36 = v11;
          thresholdCopy = threshold;
          v19 = v37;
          v20 = v38;
          if (TSUNearlyEqualPoints(v13, v14, v37, v38))
          {
            goto LABEL_7;
          }

          if ((v10 & 1) != 0 && TSUCollinearPoints(v15, v16, v13, v14, v19, v20) && (v25 = TSUSubtractPoints(v13, v14, v15), v34 = v26, v35 = v25, v27 = TSUSubtractPoints(v19, v20, v15), TSUDotPoints(v35, v34, v27, v28) > 0.0))
          {
            [v6 setAssociatedPoints:&v37 atIndex:{objc_msgSend(v6, "elementCount") - 1}];
            v10 = 1;
LABEL_7:
            v14 = v16;
            v13 = v15;
          }

          else
          {
            [v6 lineToPoint:{v19, v20, *&v34, *&v35}];
            v10 = 1;
          }

          threshold = thresholdCopy;
          v16 = v14;
          v15 = v13;
          v11 = v36;
          v13 = v37;
          v14 = v38;
        }
      }

LABEL_24:
      ++v9;
    }

    while (v8 != v9);
  }

  if ([v5 isEmpty])
  {
    return v6;
  }

  if (([v6 isEmpty] & 1) == 0)
  {
    [v6 bounds];
    v30 = v29;
    v32 = v31;
    if (fmaxf(v30, v32) > threshold)
    {
      [v5 appendBezierPath:v6];
    }
  }

  return v5;
}

- (void)transformUsingAffineTransform:(CGAffineTransform *)transform
{
  v5 = *&transform->c;
  *&t1.a = *&transform->a;
  *&t1.c = v5;
  *&t1.tx = *&transform->tx;
  v6 = *(MEMORY[0x277CBF2C0] + 16);
  *&v14.a = *MEMORY[0x277CBF2C0];
  *&v14.c = v6;
  *&v14.tx = *(MEMORY[0x277CBF2C0] + 32);
  if (!CGAffineTransformEqualToTransform(&t1, &v14))
  {
    sfr_elementCount = self->sfr_elementCount;
    if (sfr_elementCount >= 1)
    {
      sfr_head = self->sfr_head;
      v9 = &sfr_head[6 * sfr_elementCount];
      do
      {
        *&sfr_head[2] = vaddq_f64(*&transform->tx, vmlaq_n_f64(vmulq_n_f64(*&transform->c, *&sfr_head[4]), *&transform->a, *&sfr_head[2]));
        sfr_head += 6;
      }

      while (sfr_head < v9);
    }

    sfr_extraSegments = self->sfr_extraSegments;
    if (sfr_extraSegments)
    {
      sfr_extraSegmentCount = self->sfr_extraSegmentCount;
      if (sfr_extraSegmentCount >= 1)
      {
        v12 = &sfr_extraSegments[4 * sfr_extraSegmentCount];
        do
        {
          *sfr_extraSegments = vaddq_f64(*&transform->tx, vmlaq_n_f64(vmulq_n_f64(*&transform->c, sfr_extraSegments[1]), *&transform->a, *sfr_extraSegments));
          *(sfr_extraSegments + 1) = vaddq_f64(*&transform->tx, vmlaq_n_f64(vmulq_n_f64(*&transform->c, sfr_extraSegments[3]), *&transform->a, sfr_extraSegments[2]));
          sfr_extraSegments += 4;
        }

        while (sfr_extraSegments < v12);
      }
    }

    sfr_path = self->sfr_path;
    if (sfr_path)
    {
      CFRelease(sfr_path);
      self->sfr_path = 0;
    }

    *&self->sfr_bpFlags |= 1u;
  }
}

- (CGPath)CGPath
{
  [(OITSUBezierPath *)self _doPath];
  result = self->sfr_path;
  if (result)
  {
    v4 = CGPathRetain(result);

    return CFAutorelease(v4);
  }

  return result;
}

- (BOOL)isTriangular
{
  elementCount = [(OITSUBezierPath *)self elementCount];
  if (elementCount)
  {
    v4 = elementCount;
    v5 = elementCount - 1;
    if ([(OITSUBezierPath *)self elementAtIndex:elementCount - 1])
    {
      v6 = v4;
    }

    else
    {
      v6 = v5;
    }
  }

  else
  {
    v6 = 0;
  }

  isFlat = [(OITSUBezierPath *)self isFlat];
  result = 0;
  if (isFlat && (v6 & 0xFFFFFFFFFFFFFFFELL) == 4)
  {
    v9 = 1;
    while ([(OITSUBezierPath *)self elementAtIndex:v9]== 1)
    {
      if (v6 == ++v9)
      {
        v10 = v6 - 1;
        goto LABEL_13;
      }
    }

    v10 = v9 - 1;
LABEL_13:
    if ([(OITSUBezierPath *)self elementAtIndex:v6 - 1]== 3)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = v10;
    }

    v12 = v6 != v11 + 1 || v10 > 3;
    result = 0;
    if (!v12)
    {
      if (v10 != 3)
      {
        return 1;
      }

      v16 = 0.0;
      v17 = 0.0;
      v14 = 0.0;
      v15 = 0.0;
      [(OITSUBezierPath *)self elementAtIndex:0 associatedPoints:&v16];
      [(OITSUBezierPath *)self elementAtIndex:3 associatedPoints:&v14];
      if (v16 == v14 && v17 == v15)
      {
        return 1;
      }
    }
  }

  return result;
}

- (BOOL)isDiamond
{
  elementCount = [(OITSUBezierPath *)self elementCount];
  if (!elementCount)
  {
    [(OITSUBezierPath *)self isFlat];
    return 0;
  }

  v4 = elementCount;
  v5 = elementCount - 1;
  if (![(OITSUBezierPath *)self elementAtIndex:elementCount - 1])
  {
    v4 = v5;
  }

  isFlat = [(OITSUBezierPath *)self isFlat];
  result = 0;
  if (isFlat && v4 == 5)
  {
    v8 = -5;
    v9 = 4;
    while ([(OITSUBezierPath *)self elementAtIndex:v8 + 6]== 1)
    {
      if (++v8 == -1)
      {
        goto LABEL_13;
      }
    }

    if (v8 < 0xFFFFFFFFFFFFFFFELL)
    {
      return 0;
    }

    v9 = v8 + 5;
LABEL_13:
    v10 = [(OITSUBezierPath *)self elementAtIndex:4];
    if (v9 != 3 || v10 == 3)
    {
      [(OITSUBezierPath *)self bounds];
      x = v21.origin.x;
      y = v21.origin.y;
      width = v21.size.width;
      height = v21.size.height;
      MidX = CGRectGetMidX(v21);
      v22.origin.x = x;
      v22.origin.y = y;
      v22.size.width = width;
      v22.size.height = height;
      v16 = 0;
      MidY = CGRectGetMidY(v22);
      v18 = v9 + 1;
      v19 = *MEMORY[0x277CBF348];
      while (1)
      {
        v20 = v19;
        [(OITSUBezierPath *)self elementAtIndex:v16 associatedPoints:&v20, v19];
        if (vabdd_f64(MidX, *&v20) > 0.01 && vabdd_f64(MidY, *(&v20 + 1)) > 0.01)
        {
          break;
        }

        if (v18 == ++v16)
        {
          return 1;
        }
      }
    }

    return 0;
  }

  return result;
}

- (BOOL)isRectangular
{
  v30[11] = *MEMORY[0x277D85DE8];
  LODWORD(elementCount) = [(OITSUBezierPath *)self isFlat];
  if (elementCount)
  {
    elementCount = [(OITSUBezierPath *)self elementCount];
    if (elementCount)
    {
      v4 = elementCount;
      v5 = elementCount - 1;
      if ([(OITSUBezierPath *)self elementAtIndex:elementCount - 1])
      {
        v6 = v4;
      }

      else
      {
        v6 = v5;
      }

      if (v6 < 5)
      {
        goto LABEL_7;
      }

      if (v6 <= 6)
      {
        v9 = 1;
        while ([(OITSUBezierPath *)self elementAtIndex:v9]== 1)
        {
          if (v6 == ++v9)
          {
            v10 = v6 - 1;
            goto LABEL_19;
          }
        }

        v10 = v9 - 1;
LABEL_19:
        v11 = [(OITSUBezierPath *)self elementAtIndex:v6 - 1];
        LOBYTE(elementCount) = 0;
        if (v11 == 3)
        {
          v12 = v10 + 2;
        }

        else
        {
          v12 = v10 + 1;
        }

        if (v11 == 3)
        {
          v13 = v10 + 1;
        }

        else
        {
          v13 = v10;
        }

        if (v6 == v12 && v13 >= 4)
        {
          [(OITSUBezierPath *)self bounds];
          x = v32.origin.x;
          y = v32.origin.y;
          width = v32.size.width;
          height = v32.size.height;
          MaxX = CGRectGetMaxX(v32);
          v33.origin.x = x;
          v33.origin.y = y;
          v33.size.width = width;
          v33.size.height = height;
          MaxY = CGRectGetMaxY(v33);
          v20 = 0;
          v21 = v29;
          while (1)
          {
            [(OITSUBezierPath *)self elementAtIndex:v20 associatedPoints:v21];
            if (vabdd_f64(x, *v21) >= 0.01 && vabdd_f64(MaxX, *v21) >= 0.01)
            {
              goto LABEL_7;
            }

            v22 = v21[1];
            if (vabdd_f64(y, v22) >= 0.01 && vabdd_f64(MaxY, v22) >= 0.01)
            {
              goto LABEL_7;
            }

            ++v20;
            v21 += 2;
            if (v20 > v10)
            {
              v23 = 0;
              v24 = v30;
              v25 = 1;
              while (1)
              {
                v26 = &v29[16 * (v25 % (v10 + 1))];
                v27 = vabdd_f64(*v26, *(v24 - 1));
                if (v27 > 0.01 != vabdd_f64(v26[1], *v24) <= 0.01 || v25 != 1 && ((v23 ^ (v27 > 0.01)) & 1) == 0)
                {
                  break;
                }

                ++v25;
                v24 += 2;
                v23 = v27 > 0.01;
                if (v25 == 5)
                {
                  LOBYTE(elementCount) = 1;
                  return elementCount;
                }
              }

              goto LABEL_7;
            }
          }
        }
      }

      else
      {
        bezierPathByRemovingRedundantElements = [(OITSUBezierPath *)self bezierPathByRemovingRedundantElements];
        elementCount2 = [bezierPathByRemovingRedundantElements elementCount];
        if (elementCount2 >= [(OITSUBezierPath *)self elementCount])
        {
LABEL_7:
          LOBYTE(elementCount) = 0;
          return elementCount;
        }

        LOBYTE(elementCount) = [bezierPathByRemovingRedundantElements isRectangular];
      }
    }
  }

  return elementCount;
}

- (BOOL)isCircular
{
  v26[3] = *MEMORY[0x277D85DE8];
  [(OITSUBezierPath *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  elementCount = [(OITSUBezierPath *)self elementCount];
  if (elementCount >= 1)
  {
    v12 = elementCount;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = v4 + v8 * 0.5;
    v17 = v6 + v10 * 0.5;
    while (1)
    {
      v18 = [(OITSUBezierPath *)self elementAtIndex:v13 associatedPoints:v25, *&v24];
      if (v18 == 2)
      {
        if (fabs(TSUPointLength((v26[0] - v16) / v8, (v26[1] - v17) / v10) + -0.5) > 0.0001)
        {
          return v14;
        }

        v20 = TSUPointOnCurve(&v24, 0.5);
        v22 = TSUPointLength((v20 - v16) / v8, (v21 - v17) / v10);
        v19 = v26;
        if (fabs(v22 + -0.5) > 0.0001)
        {
          return v14;
        }
      }

      else
      {
        if (v18 == 3)
        {
          if (v15 > 0)
          {
            return v14;
          }

          v15 = 1;
          goto LABEL_12;
        }

        v19 = v25;
        if (v18 == 1)
        {
          return v14;
        }
      }

      v24 = *v19;
LABEL_12:
      v14 = v12 <= ++v13;
      if (v12 == v13)
      {
        return v14;
      }
    }
  }

  return 1;
}

- (CGPoint)currentPoint
{
  if ([(OITSUBezierPath *)self isEmpty])
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE648] format:@"No current point for line"];
  }

  v3 = &self->sfr_head[6 * self->sfr_elementCount];
  v4 = *&v3[-4];
  v5 = *&v3[-2];
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGRect)controlPointBounds
{
  if ([(OITSUBezierPath *)self isEmpty])
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE648] format:@"No current point for control point bounds"];
  }

  sfr_bpFlags = self->sfr_bpFlags;
  if (*&sfr_bpFlags)
  {
    sfr_head = self->sfr_head;
    sfr_elementCount = self->sfr_elementCount;
    v9 = *&sfr_head[2];
    if (sfr_elementCount < 2)
    {
      v4 = *&sfr_head[2];
    }

    else
    {
      v10 = &sfr_head[6 * sfr_elementCount];
      v11 = sfr_head + 6;
      v4 = v9;
      do
      {
        v12 = *v11 & 0xFLL;
        if (v12 != 3 && (v12 || &v11[6] < v10))
        {
          v14 = *&v11[2];
          v4 = vbslq_s8(vcgtq_f64(v14, v4), v4, v14);
          v9 = vbslq_s8(vcgtq_f64(v14, v9), v14, v9);
        }

        v11 += 6;
      }

      while (v11 < v10);
    }

    sfr_extraSegments = self->sfr_extraSegments;
    if (sfr_extraSegments)
    {
      sfr_extraSegmentCount = self->sfr_extraSegmentCount;
      if (sfr_extraSegmentCount >= 1)
      {
        v17 = &sfr_extraSegments[2 * sfr_extraSegmentCount];
        do
        {
          v18 = *sfr_extraSegments;
          v19 = sfr_extraSegments[1];
          sfr_extraSegments += 2;
          v20 = vbslq_s8(vcgtq_f64(v18, v4), v4, v18);
          v21 = vbslq_s8(vcgtq_f64(v18, v9), v18, v9);
          v4 = vbslq_s8(vcgtq_f64(v19, v20), v20, v19);
          v9 = vbslq_s8(vcgtq_f64(v19, v21), v19, v21);
        }

        while (sfr_extraSegments < v17);
      }
    }

    self->sfr_controlPointBounds.origin = v4;
    size = vsubq_f64(v9, v4);
    self->sfr_controlPointBounds.size = size;
    self->sfr_bpFlags = (*&sfr_bpFlags & 0xFFFFFFFE);
    y = v4.y;
  }

  else
  {
    v4.x = self->sfr_controlPointBounds.origin.x;
    y = self->sfr_controlPointBounds.origin.y;
    size = self->sfr_controlPointBounds.size;
  }

  v22 = size.f64[1];
  result.size.width = size.f64[0];
  result.origin.x = v4.x;
  result.size.height = v22;
  result.origin.y = y;
  return result;
}

- (CGRect)bounds
{
  if ([(OITSUBezierPath *)self isFlat])
  {
    [(OITSUBezierPath *)self controlPointBounds];
  }

  else
  {
    [(OITSUBezierPath *)self _doPath];
    sfr_path = self->sfr_path;
    if (sfr_path)
    {
      *&v3 = CGPathGetPathBoundingBox(sfr_path);
    }

    else
    {
      v3 = *MEMORY[0x277CBF3A0];
      v4 = *(MEMORY[0x277CBF3A0] + 8);
      v5 = *(MEMORY[0x277CBF3A0] + 16);
      v6 = *(MEMORY[0x277CBF3A0] + 24);
    }
  }

  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (BOOL)isClockwise
{
  v17 = *MEMORY[0x277D85DE8];
  elementCount = [(OITSUBezierPath *)self elementCount];
  if (elementCount < 1)
  {
    v9 = 0.0;
  }

  else
  {
    v4 = elementCount;
    v5 = 0;
    v6 = 0;
    v7 = *MEMORY[0x277CBF348];
    v8 = *(MEMORY[0x277CBF348] + 8);
    v9 = 0.0;
    v10 = v8;
    v11 = *MEMORY[0x277CBF348];
    do
    {
      v12 = [(OITSUBezierPath *)self elementAtIndex:v5 associatedPoints:&v15];
      if (v12 > 1)
      {
        if (v12 == 2)
        {
          NSLog(@"Warning: Path should be flat. Illegal TSUCurveToBezierPathElement.");
        }

        else if (v12 == 3)
        {
          if (v7 == v11 && v8 == v10)
          {
            v6 = 0;
          }

          else
          {
            v6 = 0;
            v9 = v7 * v10 - v8 * v11 + v9;
          }
        }
      }

      else if (v12)
      {
        if (v12 == 1)
        {
          if (v7 != v15 || v8 != v16)
          {
            v9 = v7 * v16 - v8 * v15 + v9;
          }

          v6 = 1;
          v7 = v15;
          v8 = v16;
        }
      }

      else
      {
        v11 = v15;
        v10 = v16;
        v7 = v15;
        v8 = v16;
      }

      ++v5;
    }

    while (v4 != v5);
    if (v6)
    {
      v9 = v7 * v10 - v8 * v11 + v9;
    }
  }

  return v9 >= 0.0;
}

- (double)calculateLengthOfElement:(int64_t)element
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = 0.0;
  if (element)
  {
    v4 = [(OITSUBezierPath *)self elementAtIndex:element allPoints:&v9];
    switch(v4)
    {
      case 3:
        goto LABEL_5;
      case 2:
        v8 = 0.0;
        addifclose(&v9, &v8);
        return v8;
      case 1:
LABEL_5:
        v5 = (v10 - v12) * (v10 - v12) + (v9 - v11) * (v9 - v11);
        return sqrtf(v5);
    }
  }

  return v3;
}

- (void)calculateLengths
{
  self->sfr_totalLength = 0.0;
  elementCount = [(OITSUBezierPath *)self elementCount];
  self->sfr_elementLength = NSZoneRealloc([(OITSUBezierPath *)self zone], self->sfr_elementLength, 8 * self->sfr_elementMax);
  if (elementCount >= 1)
  {
    for (i = 0; i != elementCount; ++i)
    {
      [(OITSUBezierPath *)self calculateLengthOfElement:i];
      self->sfr_elementLength[i] = v5;
      self->sfr_totalLength = v5 + self->sfr_totalLength;
    }
  }

  *&self->sfr_bpFlags |= 0x400u;
}

- (double)length
{
  if ((*(&self->sfr_bpFlags + 1) & 4) == 0)
  {
    [(OITSUBezierPath *)self calculateLengths];
  }

  return self->sfr_totalLength;
}

- (double)lengthOfElement:(int64_t)element
{
  if ((*(&self->sfr_bpFlags + 1) & 4) == 0)
  {
    [(OITSUBezierPath *)self calculateLengths];
  }

  return self->sfr_elementLength[element];
}

- (double)lengthToElement:(int64_t)element
{
  if ((*(&self->sfr_bpFlags + 1) & 4) == 0)
  {
    [(OITSUBezierPath *)self calculateLengths];
  }

  if (self->sfr_elementCount < element)
  {
    [(OITSUBezierPath *)a2 lengthToElement:?];
  }

  if (element < 1)
  {
    return 0.0;
  }

  sfr_elementLength = self->sfr_elementLength;
  result = 0.0;
  do
  {
    v8 = *sfr_elementLength++;
    result = result + v8;
    --element;
  }

  while (element);
  return result;
}

- (int64_t)elementAtIndex:(int64_t)index associatedPoints:(CGPoint *)points
{
  if (index < 0 || self->sfr_elementCount <= index)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE730] format:{@"%@: index (%ld) beyond bounds (%ld)", NSStringFromSelector(a2), index, self->sfr_elementCount}];
  }

  v7 = &self->sfr_head[6 * index];
  if (points)
  {
    if ((*v7 & 0xFLL) == 2)
    {
      v8 = (self->sfr_extraSegments + 32 * (*v7 >> 4));
      *points = *v8;
      points[1] = v8[1];
      points += 2;
    }

    *points = *&v7[2];
  }

  return *v7 & 0xFLL;
}

- (int64_t)elementAtIndex:(int64_t)index allPoints:(CGPoint *)points
{
  if (index < 0 || self->sfr_elementCount <= index)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE730] format:{@"%@: index (%ld) beyond bounds (%ld)", NSStringFromSelector(a2), index, self->sfr_elementCount}];
  }

  v7 = &self->sfr_head[6 * index];
  if (points)
  {
    v8 = *v7;
    if ((*v7 & 0xFLL) != 0)
    {
      *points = *&v7[-4];
      v8 = *v7;
    }

    if ((v8 & 0xF) != 0)
    {
      if ((v8 & 0xF) == 2)
      {
        v9 = (self->sfr_extraSegments + 32 * (v8 >> 4));
        points[1] = *v9;
        points[2] = v9[1];
        points += 3;
      }

      else
      {
        ++points;
      }
    }

    *points = *&v7[2];
  }

  return *v7 & 0xFLL;
}

- (void)setAssociatedPoints:(CGPoint *)points atIndex:(int64_t)index
{
  if (index < 0 || self->sfr_elementCount <= index)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE730] format:{@"%@: index (%ld) beyond bounds (%ld)", NSStringFromSelector(a2), index, self->sfr_elementCount}];
  }

  v7 = &self->sfr_head[6 * index];
  if ((*v7 & 0xFLL) == 2)
  {
    v8 = (self->sfr_extraSegments + 32 * (*v7 >> 4));
    *v8 = *points;
    v9 = points[1];
    points += 2;
    v8[1] = v9;
  }

  *&v7[2] = *points;
  sfr_path = self->sfr_path;
  if (sfr_path)
  {
    CFRelease(sfr_path);
    self->sfr_path = 0;
  }

  *&self->sfr_bpFlags |= 1u;
}

- (void)_appendToPath:(id)path skippingInitialMoveIfPossible:(BOOL)possible
{
  sfr_head = self->sfr_head;
  sfr_elementCount = self->sfr_elementCount;
  sfr_extraSegments = self->sfr_extraSegments;
  v8 = possible && [path elementCount] > 0;
  if (sfr_elementCount >= 1)
  {
    v9 = &sfr_head[6 * sfr_elementCount];
    do
    {
      v10 = *sfr_head & 0xF;
      if (v10 > 1)
      {
        if (v10 == 2)
        {
          [path curveToPoint:*&sfr_head[2] controlPoint1:*&sfr_head[4] controlPoint2:{*sfr_extraSegments, sfr_extraSegments[1], sfr_extraSegments[2], sfr_extraSegments[3]}];
          sfr_extraSegments += 4;
        }

        else if (v10 == 3)
        {
          [path closePath];
        }
      }

      else if (v10)
      {
        if (v10 == 1)
        {
          [path lineToPoint:{*&sfr_head[2], *&sfr_head[4]}];
        }
      }

      else
      {
        if (!v8)
        {
          [path moveToPoint:{*&sfr_head[2], *&sfr_head[4]}];
        }

        v8 = 0;
      }

      sfr_head += 6;
    }

    while (sfr_head < v9);
  }
}

- (void)appendBezierPath:(id)path skippingInitialMoveIfPossible:(BOOL)possible
{
  possibleCopy = possible;
  v19 = *MEMORY[0x277D85DE8];
  v7 = objc_opt_class();
  if (v7 == objc_opt_class())
  {

    [path _appendToPath:self skippingInitialMoveIfPossible:possibleCopy];
  }

  else
  {
    v8 = possibleCopy && [(OITSUBezierPath *)self elementCount]> 0;
    elementCount = [path elementCount];
    if (elementCount >= 1)
    {
      v10 = elementCount;
      for (i = 0; i != v10; ++i)
      {
        v12 = [path elementAtIndex:i associatedPoints:&v13];
        if (v12 > 1)
        {
          if (v12 == 2)
          {
            [(OITSUBezierPath *)self curveToPoint:v17 controlPoint1:v18 controlPoint2:v13, v14, v15, v16];
          }

          else if (v12 == 3)
          {
            [(OITSUBezierPath *)self closePath];
          }
        }

        else if (v12)
        {
          if (v12 == 1)
          {
            [(OITSUBezierPath *)self lineToPoint:v13, v14];
          }
        }

        else
        {
          if (!v8)
          {
            [(OITSUBezierPath *)self moveToPoint:v13, v14];
          }

          v8 = 0;
        }
      }
    }
  }
}

- (void)appendBezierPathWithRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  [(OITSUBezierPath *)self moveToPoint:?];
  v12.origin.x = x;
  v12.origin.y = y;
  v12.size.width = width;
  v12.size.height = height;
  MaxX = CGRectGetMaxX(v12);
  v13.origin.x = x;
  v13.origin.y = y;
  v13.size.width = width;
  v13.size.height = height;
  [(OITSUBezierPath *)self lineToPoint:MaxX, CGRectGetMinY(v13)];
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  v9 = CGRectGetMaxX(v14);
  v15.origin.x = x;
  v15.origin.y = y;
  v15.size.width = width;
  v15.size.height = height;
  [(OITSUBezierPath *)self lineToPoint:v9, CGRectGetMaxY(v15)];
  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  MinX = CGRectGetMinX(v16);
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  [(OITSUBezierPath *)self lineToPoint:MinX, CGRectGetMaxY(v17)];

  [(OITSUBezierPath *)self closePath];
}

- (void)appendBezierPathWithPoints:(CGPoint *)points count:(int64_t)count
{
  if (count >= 1)
  {
    if ([(OITSUBezierPath *)self isEmpty]|| (*&self->sfr_bpFlags & 0x300) == 0x100)
    {
      [(OITSUBezierPath *)self moveToPoint:points->x, points->y];
    }

    else
    {
      [(OITSUBezierPath *)self lineToPoint:points->x, points->y];
    }

    v7 = count - 1;
    if (v7)
    {
      p_y = &points[1].y;
      do
      {
        [(OITSUBezierPath *)self lineToPoint:*(p_y - 1), *p_y];
        p_y += 2;
        --v7;
      }

      while (v7);
    }
  }
}

- (void)appendBezierPathWithOvalInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v13 = *(MEMORY[0x277CBF2C0] + 16);
  *&v16.a = *MEMORY[0x277CBF2C0];
  *&v16.c = v13;
  *&v16.tx = *(MEMORY[0x277CBF2C0] + 32);
  v8 = objc_alloc_init(OITSUBezierPath);
  [(OITSUBezierPath *)v8 appendBezierPathWithArcWithCenter:*MEMORY[0x277CBF348] radius:*(MEMORY[0x277CBF348] + 8) startAngle:1.0 endAngle:-45.0, 315.0];
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  MidX = CGRectGetMidX(v17);
  v18.origin.x = x;
  v18.origin.y = y;
  v18.size.width = width;
  v18.size.height = height;
  MidY = CGRectGetMidY(v18);
  *&v15.a = *&v16.a;
  *&v15.c = v13;
  *&v15.tx = *&v16.tx;
  CGAffineTransformTranslate(&v16, &v15, MidX, MidY);
  v19.origin.x = x;
  v19.origin.y = y;
  v19.size.width = width;
  v19.size.height = height;
  v11 = CGRectGetWidth(v19) * 0.5;
  v20.origin.x = x;
  v20.origin.y = y;
  v20.size.width = width;
  v20.size.height = height;
  v12 = CGRectGetHeight(v20);
  v14 = v16;
  CGAffineTransformScale(&v15, &v14, v11, v12 * 0.5);
  v16 = v15;
  [(OITSUBezierPath *)v8 transformUsingAffineTransform:&v15];
  [(OITSUBezierPath *)self appendBezierPath:v8];
}

- (void)_appendArcSegmentWithCenter:(CGPoint)center radius:(double)radius angle1:(double)angle1 angle2:(double)angle2
{
  y = center.y;
  x = center.x;
  v12 = __sincos_stret((angle2 - angle1) * 0.5);
  v13 = (1.0 - v12.__cosval) * 4.0 / (v12.__sinval * 3.0);
  v14 = __sincos_stret(angle1);
  v15 = v13 * radius;
  v16 = x + radius * v14.__cosval - v13 * radius * v14.__sinval;
  v17 = y + radius * v14.__sinval + v13 * radius * v14.__cosval;
  v18 = __sincos_stret(angle2);

  [(OITSUBezierPath *)self _deviceCurveToPoint:x + radius * v18.__cosval controlPoint1:y + radius * v18.__sinval controlPoint2:v16, v17, x + radius * v18.__cosval + v15 * v18.__sinval, y + radius * v18.__sinval - v15 * v18.__cosval];
}

- (void)appendBezierPathWithArcWithCenter:(CGPoint)center radius:(double)radius startAngle:(double)angle endAngle:(double)endAngle clockwise:(BOOL)clockwise
{
  y = center.y;
  x = center.x;
  if (__fpclassifyd(angle) < 3 || __fpclassifyd(endAngle) <= 2)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"%@: illegal angle argument", NSStringFromSelector(a2)}];
  }

  v15 = angle * 3.14159265 / 180.0;
  v16 = endAngle * 3.14159265;
  v17 = __sincos_stret(v15);
  v18 = x + radius * v17.__cosval;
  v19 = y + radius * v17.__sinval;
  if ([(OITSUBezierPath *)self isEmpty])
  {
    [(OITSUBezierPath *)self _deviceMoveToPoint:v18, v19];
  }

  else
  {
    [(OITSUBezierPath *)self _deviceLineToPoint:v18, v19];
  }

  v20 = v16 / 180.0;
  if (clockwise)
  {
      ;
    }

    v21 = v15 - v20;
    if (v15 - v20 > 1.57079633)
    {
      do
      {
        v22 = v15 + -1.57079633;
        [(OITSUBezierPath *)self _appendArcSegmentWithCenter:x radius:y angle1:radius angle2:v15, v15 + -1.57079633];
        v21 = v22 - v20;
        v15 = v15 + -1.57079633;
      }

      while (v22 - v20 > 1.57079633);
      goto LABEL_19;
    }

LABEL_18:
    v22 = v15;
    goto LABEL_19;
  }

    ;
  }

  v21 = v20 - v15;
  if (v20 - v15 <= 1.57079633)
  {
    goto LABEL_18;
  }

  do
  {
    v22 = v15 + 1.57079633;
    [(OITSUBezierPath *)self _appendArcSegmentWithCenter:x radius:y angle1:radius angle2:v15, v15 + 1.57079633];
    v21 = v20 - v22;
    v15 = v15 + 1.57079633;
  }

  while (v20 - v22 > 1.57079633);
LABEL_19:
  if (v21 > 0.0)
  {

    [(OITSUBezierPath *)self _appendArcSegmentWithCenter:x radius:y angle1:radius angle2:v22, v20];
  }
}

- (void)appendBezierPathWithArcFromPoint:(CGPoint)point toPoint:(CGPoint)toPoint radius:(double)radius
{
  y = toPoint.y;
  x = toPoint.x;
  v8 = point.y;
  v9 = point.x;
  v11 = *MEMORY[0x277CBF2C0];
  v12 = *(MEMORY[0x277CBF2C0] + 8);
  v13 = *(MEMORY[0x277CBF2C0] + 16);
  v31 = *(MEMORY[0x277CBF2C0] + 32);
  v32 = *(MEMORY[0x277CBF2C0] + 24);
  v30 = *(MEMORY[0x277CBF2C0] + 40);
  [(OITSUBezierPath *)self currentPoint];
  v16 = v14 == v9 && v15 == v8;
  v33 = v15;
  v34 = v14;
  if (v16)
  {
    v35 = v9 - v14;
    v28 = v8 - v15;
    v17 = 0.0;
    radius = 0.0;
  }

  else
  {
    v28 = v8 - v15;
    v35 = v9 - v14;
    v17 = atan2(v8 - v15, v9 - v14);
  }

  v27 = v11;
  v37.a = v11;
  v37.b = v12;
  v37.c = v13;
  v37.d = v32;
  v37.tx = v31;
  v37.ty = v30;
  CGAffineTransformRotate(&v38, &v37, -v17);
  v36 = vaddq_f64(*&v38.tx, vmlaq_n_f64(vmulq_n_f64(*&v38.c, v28), *&v38.a, v35));
  v29 = vaddq_f64(*&v38.tx, vmlaq_n_f64(vmulq_n_f64(*&v38.c, y - v33), *&v38.a, x - v34));
  v18 = vmovn_s64(vceqq_f64(v36, v29));
  v19 = 0.0;
  v20 = 0.0;
  if ((v18.i32[0] & v18.i32[1] & 1) == 0)
  {
    v21 = vsubq_f64(v29, v36);
    v20 = 3.14159265 - fabs(atan2(v21.f64[1], v21.f64[0]));
  }

  v22 = sin(v20 * 0.5);
  if (v22 == 0.0)
  {
    v23 = 0.0;
    radiusCopy = v36.f64[1];
    v25 = v36.f64[0];
    radius = 0.0;
  }

  else
  {
    v25 = v36.f64[0] - radius * fabs(cos(v20 * 0.5) / v22);
    if (vmovn_s64(vcgtq_f64(v29, v36)).i32[1])
    {
      v19 = 1.57079633 - v20;
      v23 = -1.57079633;
      radiusCopy = radius;
    }

    else
    {
      radiusCopy = -radius;
      v19 = v20 + -1.57079633;
      v23 = 1.57079633;
    }
  }

  v37.a = v27;
  v37.b = v12;
  v37.c = v13;
  v37.d = v32;
  v37.tx = v31;
  v37.ty = v30;
  CGAffineTransformRotate(&v38, &v37, v17);
  v24.f64[0] = v34;
  v24.f64[1] = v33;
  [(OITSUBezierPath *)self appendBezierPathWithArcWithCenter:vmovn_s64(vmvnq_s8(vcgtq_f64(v29 radius:v36))).i8[4] & 1 startAngle:vaddq_f64(v24 endAngle:vaddq_f64(*&v38.tx clockwise:vmlaq_n_f64(vmulq_n_f64(*&v38.c, radiusCopy), *&v38.a, v25))), radius, (v17 + v23) * 180.0 / 3.14159265, (v17 + v19) * 180.0 / 3.14159265];
}

- (BOOL)containsPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  if ((containsPoint__doWindingRule & 1) == 0)
  {
    containsPoint__doWindingRule = 1;
  }

  [(OITSUBezierPath *)self _doPath];
  sfr_path = self->sfr_path;
  if (!sfr_path)
  {
    return 0;
  }

  v7 = [(OITSUBezierPath *)self windingRule]== 1;
  v8 = x;
  v9 = y;

  return CGPathContainsPoint(sfr_path, 0, *&v8, v7);
}

- (void)encodeWithCoder:(id)coder
{
  if ([coder allowsKeyedCoding])
  {
    windingRule = [(OITSUBezierPath *)self windingRule];
    lineCapStyle = [(OITSUBezierPath *)self lineCapStyle];
    lineJoinStyle = [(OITSUBezierPath *)self lineJoinStyle];
    sfr_elementCount = self->sfr_elementCount;
    if (sfr_elementCount >= 1)
    {
      sfr_head = self->sfr_head;
      v11 = &sfr_head[6 * sfr_elementCount];
      sfr_extraSegments = self->sfr_extraSegments;
      v13 = 9 * (sfr_elementCount + 2 * self->sfr_extraSegmentCount);
      v14 = NSZoneMalloc([(OITSUBezierPath *)self zone], v13);
      v15 = v14;
      do
      {
        v16 = *sfr_head;
        if ((*sfr_head & 0xFLL) == 2)
        {
          *v15 = 2;
          *(v15 + 1) = vrev32_s8(vcvt_f32_f64(*sfr_extraSegments));
          v15[9] = 2;
          *(v15 + 10) = vrev32_s8(vcvt_f32_f64(sfr_extraSegments[1]));
          v15 += 18;
          sfr_extraSegments += 2;
          v16 = *sfr_head;
        }

        *v15 = v16 & 0xF;
        *(v15 + 1) = vrev32_s8(vcvt_f32_f64(*&sfr_head[2]));
        v15 += 9;
        sfr_head += 6;
      }

      while (sfr_head < v11);
      [coder encodeBytes:v14 length:v13 forKey:@"TSUSegments"];
      NSZoneFree([(OITSUBezierPath *)self zone], v14);
    }

    if (windingRule)
    {
      *&v8 = windingRule;
      [coder encodeFloat:@"TSUWindingRule" forKey:v8];
    }

    if (lineCapStyle)
    {
      *&v8 = lineCapStyle;
      [coder encodeFloat:@"TSUCapStyle" forKey:v8];
    }

    if (lineJoinStyle)
    {
      *&v8 = lineJoinStyle;
      [coder encodeFloat:@"TSUJoinStyle" forKey:v8];
    }

    if (self->sfr_lineWidth != 1.0)
    {
      [coder encodeDouble:@"TSULineWidth" forKey:?];
    }

    if (self->sfr_miterLimit != 10.0)
    {
      [coder encodeDouble:@"TSUMiterLimit" forKey:?];
    }

    if (self->sfr_flatness != 0.6)
    {
      [coder encodeDouble:@"TSUFlatness" forKey:?];
    }

    if (self->sfr_dashedLineCount)
    {
      [coder encodeDouble:@"TSUDashPhase" forKey:self->sfr_dashedLinePhase];
      v17 = 4 * self->sfr_dashedLineCount;
      v18 = NSZoneMalloc([(OITSUBezierPath *)self zone], v17);
      v19 = v18;
      sfr_dashedLineCount = self->sfr_dashedLineCount;
      if (sfr_dashedLineCount >= 1)
      {
        sfr_dashedLinePattern = self->sfr_dashedLinePattern;
        v22 = v18;
        do
        {
          v23 = *sfr_dashedLinePattern++;
          *&v24 = v23;
          *v22++ = bswap32(v24);
          --sfr_dashedLineCount;
        }

        while (sfr_dashedLineCount);
      }

      [coder encodeBytes:v18 length:v17 forKey:@"TSUDashPatterns"];
      v25 = [(OITSUBezierPath *)self zone];

      NSZoneFree(v25, v19);
    }
  }

  else
  {
    v54 = (self->sfr_elementCount + 2 * self->sfr_extraSegmentCount);
    windingRule2 = [(OITSUBezierPath *)self windingRule];
    lineCapStyle2 = [(OITSUBezierPath *)self lineCapStyle];
    lineJoinStyle2 = [(OITSUBezierPath *)self lineJoinStyle];
    sfr_lineWidth = self->sfr_lineWidth;
    sfr_flatness = self->sfr_flatness;
    sfr_miterLimit = self->sfr_miterLimit;
    v49 = sfr_miterLimit;
    v50 = sfr_lineWidth;
    v29 = sfr_flatness;
    v47 = self->sfr_dashedLineCount;
    v48 = v29;
    [coder encodeValueOfObjCType:"i" at:&v54];
    v30 = self->sfr_elementCount;
    if (v30 >= 1)
    {
      v31 = self->sfr_head;
      v32 = &v31[6 * v30];
      v33 = self->sfr_extraSegments;
      do
      {
        v34 = *v31;
        v46 = *v31 & 0xF;
        if ((v34 & 0xF) == 2)
        {
          v35 = *v33;
          v36 = v33[1];
          v44 = v36;
          v45 = v35;
          [coder encodeValuesOfObjCTypes:{"cff", &v46, &v45, &v44}];
          v37 = v33[2];
          v38 = v33[3];
          v44 = v38;
          v45 = v37;
          [coder encodeValuesOfObjCTypes:{"cff", &v46, &v45, &v44}];
          v33 += 4;
        }

        v39 = *&v31[2];
        v40 = *&v31[4];
        v44 = v40;
        v45 = v39;
        [coder encodeValuesOfObjCTypes:{"cff", &v46, &v45, &v44}];
        v31 += 6;
      }

      while (v31 < v32);
    }

    [coder encodeValuesOfObjCTypes:{"iiifffi", &windingRule2, &lineCapStyle2, &lineJoinStyle2, &v50, &v49, &v48, &v47}];
    if (self->sfr_dashedLineCount)
    {
      sfr_dashedLinePhase = self->sfr_dashedLinePhase;
      v45 = sfr_dashedLinePhase;
      [coder encodeValueOfObjCType:"f" at:&v45];
      if (self->sfr_dashedLineCount >= 1)
      {
        v42 = 0;
        do
        {
          v43 = self->sfr_dashedLinePattern[v42];
          v45 = v43;
          [coder encodeValueOfObjCType:"f" at:&v45];
          ++v42;
        }

        while (v42 < self->sfr_dashedLineCount);
      }
    }
  }
}

- (OITSUBezierPath)initWithCoder:(id)coder
{
  v4 = [(OITSUBezierPath *)self init];
  if ([coder allowsKeyedCoding])
  {
    v45 = 0;
    v5 = [coder decodeBytesForKey:@"TSUSegments" returnedLength:&v45];
    if (v5 && v45 > 0)
    {
      v6 = &v5[v45];
      do
      {
        v7 = *v5;
        v8 = vcvtq_f64_f32(vrev32_s8(*(v5 + 1)));
        v9 = v5 + 9;
        if (v7 > 1)
        {
          if (v7 == 2)
          {
            v9 = v5 + 27;
            [(OITSUBezierPath *)v4 curveToPoint:vcvtq_f64_f32(vrev32_s8(*(v5 + 19))) controlPoint1:*&v8 controlPoint2:vcvtq_f64_f32(vrev32_s8(*(v5 + 10)))];
          }

          else if (v7 == 3)
          {
            [(OITSUBezierPath *)v4 closePath];
          }
        }

        else if (*v5)
        {
          if (v7 == 1)
          {
            [(OITSUBezierPath *)v4 lineToPoint:*&v8];
          }
        }

        else
        {
          [(OITSUBezierPath *)v4 moveToPoint:*&v8];
        }

        v5 = v9;
      }

      while (v9 < v6);
    }

    -[OITSUBezierPath setWindingRule:](v4, "setWindingRule:", [coder decodeInt32ForKey:@"TSUWindingRule"]);
    -[OITSUBezierPath setLineCapStyle:](v4, "setLineCapStyle:", [coder decodeInt32ForKey:@"TSUCapStyle"]);
    -[OITSUBezierPath setLineJoinStyle:](v4, "setLineJoinStyle:", [coder decodeInt32ForKey:@"TSUJoinStyle"]);
    v10 = [coder containsValueForKey:@"TSULineWidth"];
    v11 = 1.0;
    if (v10)
    {
      [coder decodeDoubleForKey:{@"TSULineWidth", 1.0}];
    }

    v4->sfr_lineWidth = v11;
    v12 = [coder containsValueForKey:@"TSUMiterLimit"];
    v13 = 10.0;
    if (v12)
    {
      [coder decodeDoubleForKey:{@"TSUMiterLimit", 10.0}];
    }

    v4->sfr_miterLimit = v13;
    if ([coder containsValueForKey:@"TSUFlatness"])
    {
      [coder decodeDoubleForKey:@"TSUFlatness"];
    }

    else
    {
      v14 = 0x3FE3333333333333;
    }

    *&v4->sfr_flatness = v14;
    v21 = [coder decodeBytesForKey:@"TSUDashPatterns" returnedLength:&v45];
    if (v21)
    {
      v22 = v45;
      if (v45)
      {
        v23 = v21;
        v4->sfr_dashedLineCount = v45 >> 2;
        [coder decodeDoubleForKey:@"TSUDashPhase"];
        v4->sfr_dashedLinePhase = v24;
        v25 = NSZoneMalloc([(OITSUBezierPath *)v4 zone], 8 * v4->sfr_dashedLineCount);
        v4->sfr_dashedLinePattern = v25;
        if (v22 >= 1)
        {
          v26 = (v23 + v22);
          do
          {
            v27 = *v23++;
            *v25++ = COERCE_FLOAT(bswap32(v27));
          }

          while (v23 < v26);
        }
      }
    }
  }

  else
  {
    LODWORD(v45) = 0;
    v44 = 0;
    v43 = 0.0;
    v41 = 0;
    v42 = 0;
    v15 = [coder versionForClassName:@"TSUBezierPath"];
    [coder decodeValueOfObjCType:"i" at:&v45];
    if (v45)
    {
      v16 = 0;
      do
      {
        [coder decodeValuesOfObjCTypes:{"cff", &v44, &v43, &v42 + 4}];
        v17 = v43;
        v18 = *(&v42 + 1);
        if (v44 > 1u)
        {
          if (v44 == 2)
          {
            [coder decodeValuesOfObjCTypes:{"cff", &v44, &v43, &v42 + 4}];
            v19 = v43;
            v20 = *(&v42 + 1);
            [coder decodeValuesOfObjCTypes:{"cff", &v44, &v43, &v42 + 4}];
            v16 += 2;
            [(OITSUBezierPath *)v4 curveToPoint:v43 controlPoint1:*(&v42 + 1) controlPoint2:v17, v18, v19, v20];
          }

          else if (v44 == 3)
          {
            [(OITSUBezierPath *)v4 closePath];
          }
        }

        else if (v44)
        {
          if (v44 == 1)
          {
            [(OITSUBezierPath *)v4 lineToPoint:v43, *(&v42 + 1)];
          }
        }

        else
        {
          [(OITSUBezierPath *)v4 moveToPoint:v43, *(&v42 + 1)];
        }

        ++v16;
      }

      while (v16 < v45);
    }

    if (v15 > 523)
    {
      sfr_lineWidth = v4->sfr_lineWidth;
      sfr_flatness = v4->sfr_flatness;
      sfr_miterLimit = v4->sfr_miterLimit;
      v39 = sfr_miterLimit;
      v40 = sfr_lineWidth;
      v31 = sfr_flatness;
      sfr_dashedLineCount = v4->sfr_dashedLineCount;
      v38 = v31;
      [coder decodeValuesOfObjCTypes:{"iiifffi", &v42, &v41, &v41 + 4, &v40, &v39, &v38, &sfr_dashedLineCount}];
      [(OITSUBezierPath *)v4 setWindingRule:v42];
      [(OITSUBezierPath *)v4 setLineCapStyle:v41];
      [(OITSUBezierPath *)v4 setLineJoinStyle:HIDWORD(v41)];
      v4->sfr_lineWidth = v40;
      v32 = v38;
      v4->sfr_miterLimit = v39;
      v4->sfr_flatness = v32;
      v33 = sfr_dashedLineCount;
      v4->sfr_dashedLineCount = sfr_dashedLineCount;
      if (v33)
      {
        v36 = 0.0;
        [coder decodeValueOfObjCType:"f" at:&v36];
        v4->sfr_dashedLinePhase = v36;
        v4->sfr_dashedLinePattern = NSZoneMalloc([(OITSUBezierPath *)v4 zone], 8 * v4->sfr_dashedLineCount);
        if (v4->sfr_dashedLineCount)
        {
          v34 = 0;
          do
          {
            [coder decodeValueOfObjCType:"f" at:&v36];
            v4->sfr_dashedLinePattern[v34++] = v36;
          }

          while (v34 < v4->sfr_dashedLineCount);
        }
      }
    }

    else
    {
      v40 = 0.0;
      LOBYTE(v39) = 0;
      [coder decodeValuesOfObjCTypes:{"iiifc", &v42, &v41, &v41 + 4, &v40, &v39}];
      v4->sfr_lineWidth = v40;
      [(OITSUBezierPath *)v4 setWindingRule:v42];
      [(OITSUBezierPath *)v4 setLineCapStyle:v41];
      [(OITSUBezierPath *)v4 setLineJoinStyle:HIDWORD(v41)];
    }
  }

  return v4;
}

- (const)cString
{
  *&v16[255] = *MEMORY[0x277D85DE8];
  data = [MEMORY[0x277CBEB28] data];
  sfr_elementCount = self->sfr_elementCount;
  if (sfr_elementCount < 1)
  {
    goto LABEL_22;
  }

  sfr_head = self->sfr_head;
  v6 = &sfr_head[6 * sfr_elementCount];
  sfr_extraSegments = self->sfr_extraSegments;
  while (1)
  {
    if (sfr_head == self->sfr_head)
    {
      v8 = &v15;
      v9 = 256;
    }

    else
    {
      v15 = 32;
      v8 = v16;
      v9 = 255;
    }

    v10 = *sfr_head & 0xF;
    if (v10 > 1)
    {
      break;
    }

    if (v10)
    {
      if (v10 != 1)
      {
        goto LABEL_20;
      }

      v11 = __snprintf_chk(v8, v9, 0, 0x100uLL, "L %f %f");
    }

    else
    {
      v11 = __snprintf_chk(v8, v9, 0, 0x100uLL, "M %f %f");
    }

LABEL_16:
    if (v11 < 1 || v11 >= v9)
    {
      goto LABEL_21;
    }

    [data appendBytes:&v15 length:&v8[v11] - &v15];
    sfr_head += 6;
    if (sfr_head >= v6)
    {
      goto LABEL_22;
    }
  }

  if (v10 == 2)
  {
    v11 = __snprintf_chk(v8, v9, 0, 0x100uLL, "C %f %f %f %f %f %f", *sfr_extraSegments, sfr_extraSegments[1], sfr_extraSegments[2], sfr_extraSegments[3], *&sfr_head[2], *&sfr_head[4]);
    sfr_extraSegments += 4;
    goto LABEL_16;
  }

  if (v10 == 3)
  {
    *v8 = 90;
    v11 = 1;
    goto LABEL_16;
  }

LABEL_20:
  v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OITSUBezierPath cString]"];
  +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v12, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUBezierPath.m"], 2364, 0, "Unhandled path element type");
  +[OITSUAssertionHandler logBacktraceThrottled];
LABEL_21:
  v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OITSUBezierPath cString]"];
  +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v13, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUBezierPath.m"], 2372, 0, "buffer too small for path element string");
  +[OITSUAssertionHandler logBacktraceThrottled];
LABEL_22:
  v15 = 0;
  [data appendBytes:&v15 length:1];
  return [data bytes];
}

- (OITSUBezierPath)initWithCString:(const char *)string
{
  v4 = [(OITSUBezierPath *)self init];
  v5 = v4;
  if (string && v4 && *string)
  {
    v39 = 0;
    v38 = 0;
    while (1)
    {
      v6 = v39;
      v7 = string[v39];
      if (v7 == 32)
      {
        v8 = &string[v39 + 1];
        do
        {
          ++v6;
          v9 = *v8++;
          v7 = v9;
        }

        while (v9 == 32);
      }

      v39 = v6 + 1;
      if (v7 > 98)
      {
        if (v7 > 108)
        {
          if (v7 == 122)
          {
            goto LABEL_29;
          }

          if (v7 == 113)
          {
            goto LABEL_27;
          }

          if (v7 != 109)
          {
            goto LABEL_33;
          }

LABEL_26:
          scanSpaceThenFloat(string, &v39, &v38);
          v17 = v16;
          scanSpaceThenFloat(string, &v39, &v38);
          [(OITSUBezierPath *)v5 moveToPoint:v17, v18];
          goto LABEL_34;
        }

        if (v7 == 99)
        {
          goto LABEL_31;
        }

        if (v7 != 101)
        {
          if (v7 != 108)
          {
            goto LABEL_33;
          }

LABEL_18:
          scanSpaceThenFloat(string, &v39, &v38);
          v11 = v10;
          scanSpaceThenFloat(string, &v39, &v38);
          v13 = v12;
          v14 = v5;
          v15 = v11;
LABEL_28:
          [(OITSUBezierPath *)v14 lineToPoint:v15, v13];
        }
      }

      else
      {
        if (v7 > 76)
        {
          if (v7 != 77)
          {
            if (v7 != 81)
            {
              if (v7 != 90)
              {
                goto LABEL_33;
              }

LABEL_29:
              [(OITSUBezierPath *)v5 closePath];
              goto LABEL_34;
            }

LABEL_27:
            v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OITSUBezierPath initWithCString:]"];
            +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v19, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUBezierPath.m"], 2416, 0, "kCGPathElementAddQuadCurveToPoint not supported yet");
            +[OITSUAssertionHandler logBacktraceThrottled];
            scanSpaceThenFloat(string, &v39, &v38);
            v21 = v20;
            scanSpaceThenFloat(string, &v39, &v38);
            v23 = v22;
            scanSpaceThenFloat(string, &v39, &v38);
            scanSpaceThenFloat(string, &v39, &v38);
            v15 = v21;
            v13 = v23;
            v14 = v5;
            goto LABEL_28;
          }

          goto LABEL_26;
        }

        if (v7 <= 68)
        {
          if (v7 != 67)
          {
            if (!v7)
            {
              return v5;
            }

LABEL_33:
            v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OITSUBezierPath initWithCString:]"];
            +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v35, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUBezierPath.m"], 2446, 0, "Bezier path string contained unknown elmt.");
            +[OITSUAssertionHandler logBacktraceThrottled];
            v38 = 1;
            goto LABEL_34;
          }

LABEL_31:
          scanSpaceThenFloat(string, &v39, &v38);
          v25 = v24;
          scanSpaceThenFloat(string, &v39, &v38);
          v27 = v26;
          scanSpaceThenFloat(string, &v39, &v38);
          v29 = v28;
          scanSpaceThenFloat(string, &v39, &v38);
          v31 = v30;
          scanSpaceThenFloat(string, &v39, &v38);
          v33 = v32;
          scanSpaceThenFloat(string, &v39, &v38);
          [(OITSUBezierPath *)v5 curveToPoint:v33 controlPoint1:v34 controlPoint2:v25, v27, v29, v31];
          goto LABEL_34;
        }

        if (v7 != 69)
        {
          if (v7 != 76)
          {
            goto LABEL_33;
          }

          goto LABEL_18;
        }
      }

LABEL_34:
      if (v38 == 1)
      {
        v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OITSUBezierPath initWithCString:]"];
        +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v36, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUBezierPath.m"], 2452, 0, "Something is wrong with this bezier path!");
        +[OITSUAssertionHandler logBacktraceThrottled];
        return v5;
      }
    }
  }

  return v5;
}

- (void)_addPathSegment:(int64_t)segment point:(CGPoint)point
{
  y = point.y;
  x = point.x;
  sfr_elementCount = self->sfr_elementCount;
  if (sfr_elementCount == self->sfr_elementMax)
  {
    self->sfr_elementMax = 2 * sfr_elementCount + 10;
    v9 = NSZoneRealloc([(OITSUBezierPath *)self zone], self->sfr_head, 24 * self->sfr_elementMax);
    if (v9)
    {
      self->sfr_head = v9;
    }

    else
    {
      NSLog(@"ERROR: TSUBezierPath _addPathSegment. sfr_head could not NSZoneRealloc. No memory");
    }

    if ((*(&self->sfr_bpFlags + 1) & 4) != 0)
    {
      v10 = NSZoneRealloc([(OITSUBezierPath *)self zone], self->sfr_elementLength, 8 * self->sfr_elementMax);
      if (v10)
      {
        self->sfr_elementLength = v10;
      }

      else
      {
        NSLog(@"ERROR: TSUBezierPath _addPathSegment. sfr_elementLength could not NSZoneRealloc. No memory");
      }
    }
  }

  *&self->sfr_head[6 * self->sfr_elementCount] = *&self->sfr_head[6 * self->sfr_elementCount] & 0xFFFFFFFFFFFFFFF0 | segment & 0xF;
  *&self->sfr_head[6 * self->sfr_elementCount] &= 0xFuLL;
  v11 = self->sfr_elementCount;
  v12 = &self->sfr_head[6 * v11];
  *&v12[2] = x;
  *&v12[4] = y;
  self->sfr_elementCount = v11 + 1;
  sfr_path = self->sfr_path;
  if (sfr_path)
  {
    CFRelease(sfr_path);
    self->sfr_path = 0;
  }

  sfr_bpFlags = self->sfr_bpFlags;
  self->sfr_bpFlags = (*&sfr_bpFlags | 1);
  if (segment != 2 && (*&sfr_bpFlags & 0x400) != 0)
  {
    [(OITSUBezierPath *)self lengthOfElement:self->sfr_elementCount - 1];
    self->sfr_elementLength[self->sfr_elementCount - 1] = v15;
    self->sfr_totalLength = v15 + self->sfr_totalLength;
  }
}

- (void)_deviceMoveToPoint:(CGPoint)point
{
  v4 = (*&self->sfr_bpFlags >> 8) & 3;
  if (v4 == 2)
  {
    sfr_head = self->sfr_head;
    sfr_elementCount = self->sfr_elementCount;
    if ((*&sfr_head[6 * sfr_elementCount - 6] & 0xF) == 0)
    {
      goto LABEL_6;
    }
  }

  else if (v4 == 1)
  {
    sfr_head = self->sfr_head;
    sfr_elementCount = self->sfr_elementCount;
LABEL_6:
    *&sfr_head[6 * sfr_elementCount - 4] = point;
    goto LABEL_7;
  }

  [(OITSUBezierPath *)self _addPathSegment:0 point:point.x, point.y];
  sfr_elementCount = self->sfr_elementCount;
LABEL_7:
  self->sfr_bpFlags = (*&self->sfr_bpFlags & 0xFFFFFCFF | 0x200);
  self->sfr_lastSubpathIndex = sfr_elementCount - 1;
}

- (void)_deviceCurveToPoint:(CGPoint)point controlPoint1:(CGPoint)point1 controlPoint2:(CGPoint)point2
{
  y = point2.y;
  x = point2.x;
  v7 = point1.y;
  v8 = point1.x;
  [(OITSUBezierPath *)self _addPathSegment:2 point:point.x, point.y];
  sfr_extraSegmentCount = self->sfr_extraSegmentCount;
  if (sfr_extraSegmentCount == self->sfr_extraSegmentMax)
  {
    self->sfr_extraSegmentMax = 2 * sfr_extraSegmentCount + 10;
    v11 = NSZoneRealloc([(OITSUBezierPath *)self zone], self->sfr_extraSegments, 32 * self->sfr_extraSegmentMax);
    if (v11)
    {
      self->sfr_extraSegments = v11;
    }

    else
    {
      NSLog(@"ERROR: TSUBezierPath _deviceCurveToPoint sfr_extraSegments could not NSZoneRealloc. No memory");
    }
  }

  v12 = self->sfr_extraSegmentCount;
  v13 = (self->sfr_extraSegments + 32 * v12);
  *v13 = v8;
  v13[1] = v7;
  v13[2] = x;
  v13[3] = y;
  self->sfr_extraSegmentCount = v12 + 1;
  v14 = &self->sfr_head[6 * self->sfr_elementCount];
  *&v14[-6] = *&v14[-6] & 0xFLL | (16 * v12);
  LODWORD(v14) = self->sfr_bpFlags;
  self->sfr_bpFlags = (v14 & 0xFFFFFCFB | 0x200);
  if ((v14 & 0x400) != 0)
  {
    [(OITSUBezierPath *)self lengthOfElement:self->sfr_elementCount - 1];
    self->sfr_elementLength[self->sfr_elementCount - 1] = v15;
    self->sfr_totalLength = v15 + self->sfr_totalLength;
  }
}

- (void)_deviceClosePath
{
  if ((*&self->sfr_bpFlags & 0x300) == 0x200)
  {
    sfr_lastSubpathIndex = self->sfr_lastSubpathIndex;
    if (sfr_lastSubpathIndex < 0)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OITSUBezierPath(TSUBezierPathDevicePrimitives) _deviceClosePath]"];
      +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v4, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUBezierPath.m"], 2614, 0, "Invalid parameter not satisfying: %{public}s", "sfr_lastSubpathIndex >= 0");
      +[OITSUAssertionHandler logBacktraceThrottled];
      sfr_lastSubpathIndex = self->sfr_lastSubpathIndex;
    }

    [(OITSUBezierPath *)self _addPathSegment:3 point:*&self->sfr_head[6 * sfr_lastSubpathIndex + 2], *&self->sfr_head[6 * sfr_lastSubpathIndex + 4]];
    v5 = &self->sfr_head[6 * self->sfr_lastSubpathIndex];
    [(OITSUBezierPath *)self _addPathSegment:0 point:*&v5[2], *&v5[4]];
    self->sfr_lastSubpathIndex = self->sfr_elementCount - 1;
    self->sfr_bpFlags = (*&self->sfr_bpFlags & 0xFFFFFCFF | 0x100);
  }
}

- (id)description
{
  v16 = *MEMORY[0x277D85DE8];
  string = [MEMORY[0x277CCAB68] string];
  [string appendFormat:@"TSUBezierPath <%p>", self];
  if (![(OITSUBezierPath *)self isEmpty])
  {
    [(OITSUBezierPath *)self bounds];
    [string appendFormat:@"\n  Bounds: %@", NSStringFromCGRect(v17)];
    [(OITSUBezierPath *)self controlPointBounds];
    [string appendFormat:@"\n  Control point bounds: %@", NSStringFromCGRect(v18)];
    elementCount = [(OITSUBezierPath *)self elementCount];
    if (elementCount >= 1)
    {
      v5 = elementCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(OITSUBezierPath *)self elementAtIndex:i associatedPoints:v13];
        if (v7 > 1)
        {
          if (v7 == 2)
          {
            [string appendFormat:@"\n    %f %f %f %f %f %f curveto", v13[0], v13[1], v14, v15];
          }

          else if (v7 == 3)
          {
            [string appendString:@"\n    closepath"];
          }
        }

        else if (v7)
        {
          if (v7 == 1)
          {
            [string appendFormat:@"\n    %f %f lineto", v13[0], v9, v10, v11, v12];
          }
        }

        else
        {
          [string appendFormat:@"\n    %f %f moveto", v13[0], v9, v10, v11, v12];
        }
      }
    }
  }

  return string;
}

- (void)appendBezierPathWithArcWithEllipseBounds:(CGRect)bounds startAngle:(double)angle swingAngle:(double)swingAngle angleType:(int)type startNewPath:(BOOL)path
{
  pathCopy = path;
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v39 = *MEMORY[0x277D85DE8];
  MidX = CGRectGetMidX(bounds);
  v40.origin.x = x;
  v40.origin.y = y;
  v40.size.width = width;
  v40.size.height = height;
  MidY = CGRectGetMidY(v40);
  v41.origin.x = x;
  v41.origin.y = y;
  v41.size.width = width;
  v41.size.height = height;
  v15 = CGRectGetWidth(v41) * 0.5;
  v42.origin.x = x;
  v42.origin.y = y;
  v42.size.width = width;
  v42.size.height = height;
  v16 = CGRectGetHeight(v42) * 0.5;
  if (type == 1)
  {
    TSUEllipseParametricAngleWithPolarAngle(angle, v15, v16);
    angleCopy = v19;
    TSUEllipseParametricAngleWithPolarAngle(angle + swingAngle, v15, v16);
    v17 = v20;
  }

  else
  {
    if (type)
    {
      v17 = 0.0;
    }

    else
    {
      v17 = angle + swingAngle;
    }

    if (type)
    {
      angleCopy = 0.0;
    }

    else
    {
      angleCopy = angle;
    }
  }

  v21 = +[OITSUBezierPath bezierPath];
  [v21 appendBezierPathWithArcWithCenter:angleCopy > v17 radius:*MEMORY[0x277CBF348] startAngle:*(MEMORY[0x277CBF348] + 8) endAngle:1.0 clockwise:{angleCopy, v17}];
  memset(&v37, 0, sizeof(v37));
  CGAffineTransformMakeScale(&t1, v15, v16);
  CGAffineTransformMakeTranslation(&t2, MidX, MidY);
  CGAffineTransformConcat(&v37, &t1, &t2);
  t1 = v37;
  [v21 transformUsingAffineTransform:&t1];
  elementCount = [v21 elementCount];
  if (elementCount >= 1)
  {
    v23 = elementCount;
    for (i = 0; v23 != i; ++i)
    {
      memset(&t1, 0, sizeof(t1));
      v25 = [v21 elementAtIndex:i associatedPoints:&t1];
      if (v25 > 1)
      {
        if (v25 == 2)
        {
          [(OITSUBezierPath *)self curveToPoint:t1.tx controlPoint1:t1.ty controlPoint2:t1.a, t1.b, t1.c, t1.d];
          continue;
        }

        if (v25 == 3)
        {
          v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OITSUBezierPath(TSUAdditions) appendBezierPathWithArcWithEllipseBounds:startAngle:swingAngle:angleType:startNewPath:]"];
          v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUBezierPathAdditions.m"];
          v28 = v31;
          v29 = 118;
          v30 = "The arc shouldn't contain close_subpath elements";
          goto LABEL_18;
        }
      }

      else
      {
        if (!v25)
        {
          if (i)
          {
            v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OITSUBezierPath(TSUAdditions) appendBezierPathWithArcWithEllipseBounds:startAngle:swingAngle:angleType:startNewPath:]"];
            +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v32, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUBezierPathAdditions.m"], 104, 0, "Only the first element of the arc should be a moveto");
            +[OITSUAssertionHandler logBacktraceThrottled];
          }

          if (pathCopy)
          {
            [(OITSUBezierPath *)self moveToPoint:t1.a, t1.b];
          }

          else
          {
            [(OITSUBezierPath *)self lineToPoint:t1.a, t1.b];
          }

          continue;
        }

        if (v25 == 1)
        {
          v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OITSUBezierPath(TSUAdditions) appendBezierPathWithArcWithEllipseBounds:startAngle:swingAngle:angleType:startNewPath:]"];
          v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUBezierPathAdditions.m"];
          v28 = v26;
          v29 = 112;
          v30 = "The arc shouldn't contain lineto elements";
LABEL_18:
          [OITSUAssertionHandler handleFailureInFunction:v28 file:v27 lineNumber:v29 isFatal:0 description:v30];
          +[OITSUAssertionHandler logBacktraceThrottled];
        }
      }
    }
  }
}

- (void)appendBezierPathWithArcWithEllipseBounds:(CGRect)bounds startRadialVector:(CGPoint)vector endRadialVector:(CGPoint)radialVector angleSign:(int)sign startNewPath:(BOOL)path
{
  pathCopy = path;
  y = radialVector.y;
  x = radialVector.x;
  v10 = vector.y;
  v11 = vector.x;
  height = bounds.size.height;
  width = bounds.size.width;
  v14 = bounds.origin.y;
  v15 = bounds.origin.x;
  MidX = CGRectGetMidX(bounds);
  v25.origin.x = v15;
  v25.origin.y = v14;
  v23 = height;
  v25.size.width = width;
  v25.size.height = height;
  MidY = CGRectGetMidY(v25);
  v19 = atan2(v10 - MidY, v11 - MidX) * 180.0 / 3.14159265;
  v20 = atan2(y - MidY, x - MidX) * 180.0 / 3.14159265;
  if (sign)
  {
    if (sign == 1)
    {
        ;
      }
    }

    else
    {
      v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OITSUBezierPath(TSUAdditions) appendBezierPathWithArcWithEllipseBounds:startRadialVector:endRadialVector:angleSign:startNewPath:]"];
      +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v21, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUBezierPathAdditions.m"], 141, 0, "Unexpected angle sign");
      +[OITSUAssertionHandler logBacktraceThrottled];
    }
  }

  else
  {
      ;
    }
  }

  [(OITSUBezierPath *)self appendBezierPathWithArcWithEllipseBounds:1 startAngle:pathCopy swingAngle:v15 angleType:v14 startNewPath:width, v23, v19, v20 - v19];
}

- (void)attachBezierPath:(id)path
{
  v14 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  elementCount = [pathCopy elementCount];
  if (elementCount >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x277CBF348];
    do
    {
      v11 = *v7;
      v12 = v11;
      v13 = v11;
      v8 = [pathCopy elementAtIndex:v6 associatedPoints:&v11];
      if (v8 > 1)
      {
        if (v8 == 2)
        {
          [(OITSUBezierPath *)self curveToPoint:v13 controlPoint1:v11 controlPoint2:v12];
        }

        else if (v8 == 3)
        {
          [(OITSUBezierPath *)self closePath];
        }
      }

      else if (v8)
      {
        if (v8 == 1)
        {
          [(OITSUBezierPath *)self lineToPoint:v11];
        }
      }

      else if (v6 || [(OITSUBezierPath *)self isEmpty]|| ([(OITSUBezierPath *)self currentPoint], vabdd_f64(v10, *&v11) >= 0.001) || vabdd_f64(v9, *(&v11 + 1)) >= 0.001)
      {
        [(OITSUBezierPath *)self moveToPoint:v11];
      }

      ++v6;
    }

    while (elementCount != v6);
  }
}

@end