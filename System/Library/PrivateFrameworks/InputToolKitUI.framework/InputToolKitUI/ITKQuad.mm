@interface ITKQuad
+ (CATransform3D)transformToConvertLayer:(SEL)layer intoQuad:(id)quad frame:(id)frame;
+ (CGPoint)vertexCentroidFromQuads:(id)quads;
+ (id)quadFromCGRect:(CGRect)rect;
+ (id)quadFromUnionOfQuads:(id)quads baselineAngle:(double)angle;
- (BOOL)containsIntersectingLines;
- (BOOL)containsPoint:(CGPoint)point;
- (BOOL)intersectsQuad:(id)quad;
- (BOOL)isCompletelyInsideRect:(CGRect)rect;
- (BOOL)isEqual:(id)equal;
- (CGAffineTransform)rotationTransformAndBoundingBox:(SEL)box;
- (CGPoint)bottomLeft;
- (CGPoint)bottomRight;
- (CGPoint)topLeft;
- (CGPoint)topRight;
- (CGPoint)vertexCentroid;
- (CGRect)boundingBox;
- (CGRect)minimumBoundingRectWithoutRotation;
- (ITKQuad)initWithBottomLeft:(CGPoint)left bottomRight:(CGPoint)right topLeft:(CGPoint)topLeft topRight:(CGPoint)topRight;
- (ITKQuad)initWithCoder:(id)coder;
- (ITKQuad)initWithDictionary:(id)dictionary;
- (ITKQuad)initWithPoints:(id)points;
- (ITKQuad)initWithRect:(CGRect)rect;
- (ITKQuad)initWithTopLeft:(CGPoint)left topRight:(CGPoint)right bottomLeft:(CGPoint)bottomLeft bottomRight:(CGPoint)bottomRight;
- (ITKQuad)initWithTopLeft:(CGPoint)left topRight:(CGPoint)right bottomRight:(CGPoint)bottomRight bottomLeft:(CGPoint)bottomLeft;
- (ITKQuad)quadByAdjustingOrientation;
- (ITKQuadSideLength)sideLength;
- (NSArray)allPoints;
- (NSString)summaryDescription;
- (UIBezierPath)path;
- (double)area;
- (double)averagedAngleFromBottomAndTopEdges;
- (double)distanceFromLine:(CGPoint *)line toPoint:(CGPoint)point;
- (double)maxHeight;
- (double)minimumDistanceToPoint:(CGPoint)point;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (id)intersectionOfLineFrom:(CGPoint)from to:(CGPoint)to withLineFrom:(CGPoint)lineFrom to:(CGPoint)a6;
- (id)normalizedQuadByConvertingFromView:(id)view toView:(id)toView toViewSize:(CGSize)size;
- (id)normalizedQuadFromView:(id)view;
- (id)quadByConvertingFromNormalizedRectToView:(id)view contentsRect:(CGRect)rect;
- (id)quadByConvertingFromView:(id)view toView:(id)toView isNormalized:(BOOL)normalized;
- (id)quadByFlippingPointsWithSourceFrame:(CGRect)frame;
- (id)quadFromAddingPoint:(CGPoint)point;
- (id)quadFromRotatingAroundCentroidWithAngle:(double)angle;
- (id)quadFromRotatingAroundOriginWithAngle:(double)angle;
- (id)quadFromSubtractingPoint:(CGPoint)point;
- (id)quadFromUnionWithQuad:(id)quad;
- (id)quadMultipliedBySize:(CGSize)size;
- (id)subquadFromRect:(CGRect)rect;
- (void)calcluateBoundingBox;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ITKQuad

- (ITKQuad)initWithTopLeft:(CGPoint)left topRight:(CGPoint)right bottomLeft:(CGPoint)bottomLeft bottomRight:(CGPoint)bottomRight
{
  y = bottomRight.y;
  x = bottomRight.x;
  v8 = bottomLeft.y;
  v9 = bottomLeft.x;
  v10 = right.y;
  v11 = right.x;
  v12 = left.y;
  v13 = left.x;
  result = [(ITKQuad *)self init];
  if (result)
  {
    result->_bottomLeft.x = v9;
    result->_bottomLeft.y = v8;
    result->_bottomRight.x = x;
    result->_bottomRight.y = y;
    result->_topLeft.x = v13;
    result->_topLeft.y = v12;
    result->_topRight.x = v11;
    result->_topRight.y = v10;
  }

  return result;
}

- (ITKQuad)initWithBottomLeft:(CGPoint)left bottomRight:(CGPoint)right topLeft:(CGPoint)topLeft topRight:(CGPoint)topRight
{
  y = topRight.y;
  x = topRight.x;
  v8 = topLeft.y;
  v9 = topLeft.x;
  v10 = right.y;
  v11 = right.x;
  v12 = left.y;
  v13 = left.x;
  result = [(ITKQuad *)self init];
  if (result)
  {
    result->_bottomLeft.x = v13;
    result->_bottomLeft.y = v12;
    result->_bottomRight.x = v11;
    result->_bottomRight.y = v10;
    result->_topLeft.x = v9;
    result->_topLeft.y = v8;
    result->_topRight.x = x;
    result->_topRight.y = y;
  }

  return result;
}

- (ITKQuad)initWithTopLeft:(CGPoint)left topRight:(CGPoint)right bottomRight:(CGPoint)bottomRight bottomLeft:(CGPoint)bottomLeft
{
  y = bottomLeft.y;
  x = bottomLeft.x;
  v8 = bottomRight.y;
  v9 = bottomRight.x;
  v10 = right.y;
  v11 = right.x;
  v12 = left.y;
  v13 = left.x;
  result = [(ITKQuad *)self init];
  if (result)
  {
    result->_bottomLeft.x = x;
    result->_bottomLeft.y = y;
    result->_bottomRight.x = v9;
    result->_bottomRight.y = v8;
    result->_topLeft.x = v13;
    result->_topLeft.y = v12;
    result->_topRight.x = v11;
    result->_topRight.y = v10;
  }

  return result;
}

- (ITKQuad)initWithRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  MinX = CGRectGetMinX(rect);
  v18.origin.x = x;
  v18.origin.y = y;
  v18.size.width = width;
  v18.size.height = height;
  MaxY = CGRectGetMaxY(v18);
  v19.origin.x = x;
  v19.origin.y = y;
  v19.size.width = width;
  v19.size.height = height;
  MaxX = CGRectGetMaxX(v19);
  v20.origin.x = x;
  v20.origin.y = y;
  v20.size.width = width;
  v20.size.height = height;
  v8 = CGRectGetMaxY(v20);
  v21.origin.x = x;
  v21.origin.y = y;
  v21.size.width = width;
  v21.size.height = height;
  v9 = CGRectGetMinX(v21);
  v22.origin.x = x;
  v22.origin.y = y;
  v22.size.width = width;
  v22.size.height = height;
  MinY = CGRectGetMinY(v22);
  v23.origin.x = x;
  v23.origin.y = y;
  v23.size.width = width;
  v23.size.height = height;
  v11 = CGRectGetMaxX(v23);
  v24.origin.x = x;
  v24.origin.y = y;
  v24.size.width = width;
  v24.size.height = height;
  v12 = CGRectGetMinY(v24);

  return [(ITKQuad *)self initWithBottomLeft:MinX bottomRight:MaxY topLeft:MaxX topRight:v8, v9, MinY, v11, v12];
}

- (ITKQuad)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"BL_X"];
  [v5 doubleValue];
  v7 = v6;
  v8 = [dictionaryCopy objectForKeyedSubscript:@"BL_Y"];
  [v8 doubleValue];
  v10 = v9;

  v11 = [dictionaryCopy objectForKeyedSubscript:@"BR_X"];
  [v11 doubleValue];
  v13 = v12;
  v14 = [dictionaryCopy objectForKeyedSubscript:@"BR_Y"];
  [v14 doubleValue];
  v16 = v15;

  v17 = [dictionaryCopy objectForKeyedSubscript:@"TL_X"];
  [v17 doubleValue];
  v19 = v18;
  v20 = [dictionaryCopy objectForKeyedSubscript:@"TL_Y"];
  [v20 doubleValue];
  v22 = v21;

  v23 = [dictionaryCopy objectForKeyedSubscript:@"TR_X"];
  [v23 doubleValue];
  v25 = v24;
  v26 = [dictionaryCopy objectForKeyedSubscript:@"TR_Y"];

  [v26 doubleValue];
  v28 = v27;

  return [(ITKQuad *)self initWithBottomLeft:v7 bottomRight:v10 topLeft:v13 topRight:v16, v19, v22, v25, v28];
}

- (ITKQuad)initWithPoints:(id)points
{
  pointsCopy = points;
  if ([pointsCopy count] == 4)
  {
    v5 = [pointsCopy objectAtIndexedSubscript:0];
    [v5 itk_pointValue];
    v7 = v6;
    v9 = v8;

    v10 = [pointsCopy objectAtIndexedSubscript:1];
    [v10 itk_pointValue];
    v12 = v11;
    v14 = v13;

    v15 = [pointsCopy objectAtIndexedSubscript:2];
    [v15 itk_pointValue];
    v17 = v16;
    v19 = v18;

    v20 = [pointsCopy objectAtIndexedSubscript:3];
    [v20 itk_pointValue];
    v22 = v21;
    v24 = v23;

    self = [(ITKQuad *)self initWithBottomLeft:v17 bottomRight:v19 topLeft:v22 topRight:v24, v7, v9, v12, v14];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

+ (id)quadFromCGRect:(CGRect)rect
{
  v3 = [[self alloc] initWithRect:{rect.origin.x, rect.origin.y, rect.size.width, rect.size.height}];

  return v3;
}

- (ITKQuad)initWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy decodeDoubleForKey:@"BL_X"];
  v6 = v5;
  [coderCopy decodeDoubleForKey:@"BL_Y"];
  v8 = v7;
  [coderCopy decodeDoubleForKey:@"BR_X"];
  v10 = v9;
  [coderCopy decodeDoubleForKey:@"BR_Y"];
  v12 = v11;
  [coderCopy decodeDoubleForKey:@"TL_X"];
  v14 = v13;
  [coderCopy decodeDoubleForKey:@"TL_Y"];
  v16 = v15;
  [coderCopy decodeDoubleForKey:@"TR_X"];
  v18 = v17;
  [coderCopy decodeDoubleForKey:@"TR_Y"];
  v20 = [(ITKQuad *)self initWithBottomLeft:v6 bottomRight:v8 topLeft:v10 topRight:v12, v14, v16, v18, v19];
  v21 = [coderCopy decodeIntegerForKey:@"LD"];

  [(ITKQuad *)v20 setLayoutDirection:v21];
  return v20;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [(ITKQuad *)self bottomLeft];
  [coderCopy encodeDouble:@"BL_X" forKey:?];
  [(ITKQuad *)self bottomLeft];
  [coderCopy encodeDouble:@"BL_Y" forKey:v4];
  [(ITKQuad *)self bottomRight];
  [coderCopy encodeDouble:@"BR_X" forKey:?];
  [(ITKQuad *)self bottomRight];
  [coderCopy encodeDouble:@"BR_Y" forKey:v5];
  [(ITKQuad *)self topLeft];
  [coderCopy encodeDouble:@"TL_X" forKey:?];
  [(ITKQuad *)self topLeft];
  [coderCopy encodeDouble:@"TL_Y" forKey:v6];
  [(ITKQuad *)self topRight];
  [coderCopy encodeDouble:@"TR_X" forKey:?];
  [(ITKQuad *)self topRight];
  [coderCopy encodeDouble:@"TR_Y" forKey:v7];
  [coderCopy encodeInteger:-[ITKQuad layoutDirection](self forKey:{"layoutDirection"), @"LD"}];
}

- (id)dictionaryRepresentation
{
  v15[9] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCABB0] numberWithDouble:{self->_bottomLeft.x, @"BL_X"}];
  v15[0] = v3;
  v14[1] = @"BL_Y";
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:self->_bottomLeft.y];
  v15[1] = v4;
  v14[2] = @"BR_X";
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:self->_bottomRight.x];
  v15[2] = v5;
  v14[3] = @"BR_Y";
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:self->_bottomRight.y];
  v15[3] = v6;
  v14[4] = @"TL_X";
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:self->_topLeft.x];
  v15[4] = v7;
  v14[5] = @"TL_Y";
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:self->_topLeft.y];
  v15[5] = v8;
  v14[6] = @"TR_X";
  v9 = [MEMORY[0x277CCABB0] numberWithDouble:self->_topRight.x];
  v15[6] = v9;
  v14[7] = @"TR_Y";
  v10 = [MEMORY[0x277CCABB0] numberWithDouble:self->_topRight.y];
  v15[7] = v10;
  v14[8] = @"LD";
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_layoutDirection];
  v15[8] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:9];

  return v12;
}

- (CGRect)boundingBox
{
  if (CGRectEqualToRect(*MEMORY[0x277CBF3A0], self->_boundingBox))
  {
    [(ITKQuad *)self calcluateBoundingBox];
  }

  x = self->_boundingBox.origin.x;
  y = self->_boundingBox.origin.y;
  width = self->_boundingBox.size.width;
  height = self->_boundingBox.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)calcluateBoundingBox
{
  ITKRectWithPoints();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  ITKRectWithPoints();
  v16.origin.x = v11;
  v16.origin.y = v12;
  v16.size.width = v13;
  v16.size.height = v14;
  v15.origin.x = v4;
  v15.origin.y = v6;
  v15.size.width = v8;
  v15.size.height = v10;
  self->_boundingBox = CGRectUnion(v15, v16);
}

- (double)area
{
  [(ITKQuad *)self sideLength];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  ITKAngleBetweenPoints();
  v11 = v10;
  ITKAngleBetweenPoints();
  v13 = v11 + v12;
  v14 = (v5 + v7 + v9 + v3) * 0.5;
  v15 = (v14 - v7) * ((v14 - v9) * (v14 - v3));
  v16 = v14 - v5;
  v17 = cos(v13 * 0.5);
  return sqrt(v5 * (v7 * -(v9 * v3)) * (v17 * v17) + v15 * v16);
}

- (NSString)summaryDescription
{
  v3 = MEMORY[0x277CCACA8];
  [(ITKQuad *)self topLeft];
  v5 = v4;
  [(ITKQuad *)self topLeft];
  v7 = v6;
  [(ITKQuad *)self topRight];
  v9 = v8;
  [(ITKQuad *)self topRight];
  v11 = v10;
  [(ITKQuad *)self bottomLeft];
  v13 = v12;
  [(ITKQuad *)self bottomLeft];
  v15 = v14;
  [(ITKQuad *)self bottomRight];
  v17 = v16;
  [(ITKQuad *)self bottomRight];
  return [v3 stringWithFormat:@"TL:%.2f %.2f TR:%.2f %.2f BL:%.2f %.2f BR:%.2f %.2f", v5, v7, v9, v11, v13, v15, v17, v18];
}

- (NSArray)allPoints
{
  v13[4] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAE60];
  [(ITKQuad *)self topLeft];
  v4 = [v3 itk_valueWithPoint:?];
  v13[0] = v4;
  v5 = MEMORY[0x277CCAE60];
  [(ITKQuad *)self topRight];
  v6 = [v5 itk_valueWithPoint:?];
  v13[1] = v6;
  v7 = MEMORY[0x277CCAE60];
  [(ITKQuad *)self bottomLeft];
  v8 = [v7 itk_valueWithPoint:?];
  v13[2] = v8;
  v9 = MEMORY[0x277CCAE60];
  [(ITKQuad *)self bottomRight];
  v10 = [v9 itk_valueWithPoint:?];
  v13[3] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:4];

  return v11;
}

- (BOOL)containsIntersectingLines
{
  [(ITKQuad *)self topLeft];
  v4 = v3;
  v6 = v5;
  [(ITKQuad *)self topRight];
  v8 = v7;
  v10 = v9;
  [(ITKQuad *)self bottomLeft];
  v12 = v11;
  v14 = v13;
  [(ITKQuad *)self bottomRight];
  v17 = [(ITKQuad *)self intersectionOfLineFrom:v4 to:v6 withLineFrom:v8 to:v10, v12, v14, v15, v16];
  if (v17)
  {
    v18 = 1;
  }

  else
  {
    [(ITKQuad *)self topRight];
    v20 = v19;
    v22 = v21;
    [(ITKQuad *)self bottomRight];
    v24 = v23;
    v26 = v25;
    [(ITKQuad *)self topLeft];
    v28 = v27;
    v30 = v29;
    [(ITKQuad *)self bottomLeft];
    v33 = [(ITKQuad *)self intersectionOfLineFrom:v20 to:v22 withLineFrom:v24 to:v26, v28, v30, v31, v32];
    v18 = v33 != 0;
  }

  return v18;
}

- (ITKQuadSideLength)sideLength
{
  [(ITKQuad *)self bottomLeft];
  [(ITKQuad *)self topLeft];
  ITKDistance();
  v4 = v3;
  [(ITKQuad *)self bottomRight];
  [(ITKQuad *)self topRight];
  ITKDistance();
  v6 = v5;
  [(ITKQuad *)self topLeft];
  [(ITKQuad *)self topRight];
  ITKDistance();
  v8 = v7;
  [(ITKQuad *)self bottomLeft];
  [(ITKQuad *)self bottomRight];
  ITKDistance();
  v10 = v9;
  v11 = v4;
  v12 = v6;
  v13 = v8;
  result.var3 = v10;
  result.var2 = v13;
  result.var1 = v12;
  result.var0 = v11;
  return result;
}

- (double)maxHeight
{
  [(ITKQuad *)self sideLength];
  if (result < v3)
  {
    return v3;
  }

  return result;
}

- (id)intersectionOfLineFrom:(CGPoint)from to:(CGPoint)to withLineFrom:(CGPoint)lineFrom to:(CGPoint)a6
{
  v8 = to.x - from.x;
  v9 = a6.y - lineFrom.y;
  v10 = to.y - from.y;
  v11 = a6.x - lineFrom.x;
  v12 = v8 * (a6.y - lineFrom.y) - v10 * (a6.x - lineFrom.x);
  v13 = 0;
  if (v12 != 0.0 && ((v15 = lineFrom.x - from.x, v16 = lineFrom.y - from.y, v17 = ((lineFrom.x - from.x) * v9 - v16 * v11) / v12, v17 >= 0.0) ? (v18 = v17 <= 1.0) : (v18 = 0), v18 && ((v19 = (v15 * v10 - v16 * v8) / v12, v19 >= 0.0) ? (v20 = v19 <= 1.0) : (v20 = 0), v20)))
  {
    v13 = [MEMORY[0x277CCAE60] itk_valueWithPoint:{from.x + v17 * v8, from.y + v17 * v10, v6}];
  }

  return v13;
}

- (BOOL)containsPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v23 = *MEMORY[0x277D85DE8];
  v6 = 0;
  if (ITKPointIsFinite())
  {
    v7 = 0;
    topLeft = self->_topLeft;
    bottomRight = self->_bottomRight;
    bottomLeft = self->_bottomLeft;
    v22 = topLeft;
    topRight = self->_topRight;
    v20 = bottomRight;
    v18 = topLeft;
    v11 = topLeft.y;
    v10 = topLeft.x;
    p_y = &topRight.y;
    for (i = 1; i != 5; ++i)
    {
      v14 = v10;
      v15 = v11;
      v10 = *(p_y - 1);
      v11 = *p_y;
      [(ITKQuad *)self pointInsideValueForStartPoint:v14 endPoint:v15 testPoint:v10, *p_y, x, y, v18, topRight, v20, bottomLeft, v22];
      if (v16 != 0.0)
      {
        if (v16 > 0.0)
        {
          if (v7 < 0)
          {
            return v6;
          }

          ++v7;
        }

        if (v16 < 0.0)
        {
          if (v7 > 0)
          {
            return v6;
          }

          --v7;
        }
      }

      v6 = i > 3;
      p_y += 2;
    }
  }

  return v6;
}

- (BOOL)intersectsQuad:(id)quad
{
  v44[8] = *MEMORY[0x277D85DE8];
  quadCopy = quad;
  selfCopy = self;
  v6 = quadCopy;
  [(ITKQuad *)selfCopy boundingBox];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [v6 boundingBox];
  v46.origin.x = v15;
  v46.origin.y = v16;
  v46.size.width = v17;
  v46.size.height = v18;
  v45.origin.x = v8;
  v45.origin.y = v10;
  v45.size.width = v12;
  v45.size.height = v14;
  if (CGRectIntersectsRect(v45, v46))
  {
    [(ITKQuad *)selfCopy topLeft];
    v44[0] = v19;
    v44[1] = v20;
    [(ITKQuad *)selfCopy topRight];
    v44[2] = v21;
    v44[3] = v22;
    [(ITKQuad *)selfCopy bottomRight];
    v44[4] = v23;
    v44[5] = v24;
    [(ITKQuad *)selfCopy bottomLeft];
    v44[6] = v25;
    v44[7] = v26;
    [v6 topLeft];
    v43[0] = v27;
    v43[1] = v28;
    [v6 topRight];
    v43[2] = v29;
    v43[3] = v30;
    [v6 bottomRight];
    v43[4] = v31;
    v43[5] = v32;
    [v6 bottomLeft];
    v33 = 0;
    v43[6] = v34;
    v43[7] = v35;
    v41 = selfCopy;
    do
    {
      if (-[ITKQuad containsPoint:](selfCopy, "containsPoint:", *&v43[v33], *&v43[v33 + 1], v41) || ([v6 containsPoint:{*&v44[v33], *&v44[v33 + 1]}] & 1) != 0)
      {
        v42 = 1;
        goto LABEL_15;
      }

      v33 += 2;
    }

    while (v33 != 8);
    v36 = 0;
    v42 = 0;
    do
    {
      ++v36;
      v37 = v43;
      v38 = 1;
      while (v38 != 5)
      {
        v37 += 2;
        ++v38;
        if (ITKIntersectionOfLines())
        {
          v42 = 1;
          break;
        }
      }
    }

    while (v36 != 4);
LABEL_15:
    selfCopy = v41;
    v39 = v42;
  }

  else
  {
    v39 = 0;
  }

  return v39 & 1;
}

- (BOOL)isCompletelyInsideRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  [(ITKQuad *)self topLeft];
  v24.x = v8;
  v24.y = v9;
  v27.origin.x = x;
  v27.origin.y = y;
  v27.size.width = width;
  v27.size.height = height;
  if (!CGRectContainsPoint(v27, v24))
  {
    return 0;
  }

  [(ITKQuad *)self topRight];
  v25.x = v10;
  v25.y = v11;
  v28.origin.x = x;
  v28.origin.y = y;
  v28.size.width = width;
  v28.size.height = height;
  if (!CGRectContainsPoint(v28, v25))
  {
    return 0;
  }

  [(ITKQuad *)self bottomLeft];
  v26.x = v12;
  v26.y = v13;
  v29.origin.x = x;
  v29.origin.y = y;
  v29.size.width = width;
  v29.size.height = height;
  if (!CGRectContainsPoint(v29, v26))
  {
    return 0;
  }

  [(ITKQuad *)self bottomRight];
  v15 = v14;
  v17 = v16;
  v18 = x;
  v19 = y;
  v20 = width;
  v21 = height;

  return CGRectContainsPoint(*&v18, *&v15);
}

- (ITKQuad)quadByAdjustingOrientation
{
  v73[4] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAE60];
  [(ITKQuad *)self topLeft];
  v4 = [v3 itk_valueWithPoint:?];
  v73[0] = v4;
  v5 = MEMORY[0x277CCAE60];
  [(ITKQuad *)self topRight];
  v6 = [v5 itk_valueWithPoint:?];
  v73[1] = v6;
  v7 = MEMORY[0x277CCAE60];
  [(ITKQuad *)self bottomLeft];
  v8 = [v7 itk_valueWithPoint:?];
  v73[2] = v8;
  v9 = MEMORY[0x277CCAE60];
  [(ITKQuad *)self bottomRight];
  v10 = [v9 itk_valueWithPoint:?];
  v73[3] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v73 count:4];

  v12 = [v11 sortedArrayUsingComparator:&__block_literal_global];
  v13 = [v12 objectAtIndexedSubscript:0];
  [v13 pointValue];
  v15 = v14;
  v72 = v14;

  v16 = [v12 objectAtIndexedSubscript:1];
  [v16 pointValue];
  v18 = v17;

  v19 = 2;
  v20 = [v12 objectAtIndexedSubscript:2];
  [v20 pointValue];
  v22 = v21;

  v23 = [v12 objectAtIndexedSubscript:3];
  [v23 pointValue];
  v25 = v24;

  if (v25 >= v22)
  {
    v26 = 2;
  }

  else
  {
    v26 = 3;
  }

  if (v25 >= v22)
  {
    v19 = 3;
  }

  v27 = [v12 objectAtIndexedSubscript:{v15 >= v18, *&v18}];
  [v27 pointValue];
  v71 = v28;
  v30 = v29;

  v31 = [v12 objectAtIndexedSubscript:v26];
  [v31 pointValue];
  v33 = v32;
  v35 = v34;

  v36 = [v12 objectAtIndexedSubscript:v15 < v18];
  [v36 pointValue];
  v38 = v37;
  v40 = v39;

  v41 = [v12 objectAtIndexedSubscript:v19];
  [v41 pointValue];
  v43 = v42;
  v45 = v44;

  v46 = [[ITKQuad alloc] initWithTopLeft:v71 topRight:v30 bottomLeft:v33 bottomRight:v35, v38, v40, v43, v45];
  v47 = v46;
  if (v22 < v72 && v22 < v70 && [(ITKQuad *)v46 containsIntersectingLines])
  {
    v48 = [v12 objectAtIndexedSubscript:2];
    [v48 pointValue];
    v50 = v49;
    v52 = v51;

    v53 = [v12 objectAtIndexedSubscript:3];
    [v53 pointValue];
    v55 = v54;
    v57 = v56;

    v58 = [v12 objectAtIndexedSubscript:0];
    [v58 pointValue];
    v60 = v59;
    v62 = v61;

    v63 = [v12 objectAtIndexedSubscript:1];
    [v63 pointValue];
    v65 = v64;
    v67 = v66;

    v68 = [[ITKQuad alloc] initWithTopLeft:v50 topRight:v52 bottomLeft:v55 bottomRight:v57, v60, v62, v65, v67];
    v47 = v68;
  }

  return v47;
}

uint64_t __37__ITKQuad_quadByAdjustingOrientation__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  [a2 pointValue];
  v6 = [v4 numberWithDouble:?];
  v7 = MEMORY[0x277CCABB0];
  [v5 pointValue];
  v9 = v8;

  v10 = [v7 numberWithDouble:v9];
  v11 = [v6 compare:v10];

  return v11;
}

- (id)quadByFlippingPointsWithSourceFrame:(CGRect)frame
{
  [(ITKQuad *)self topLeft];
  ITKFlipPoint();
  v18 = v5;
  v19 = v4;
  [(ITKQuad *)self topRight];
  ITKFlipPoint();
  v7 = v6;
  v9 = v8;
  [(ITKQuad *)self bottomRight];
  ITKFlipPoint();
  v11 = v10;
  v13 = v12;
  [(ITKQuad *)self bottomLeft];
  ITKFlipPoint();
  v16 = [[ITKQuad alloc] initWithBottomLeft:v14 bottomRight:v15 topLeft:v11 topRight:v13, v19, v18, v7, v9];

  return v16;
}

- (double)averagedAngleFromBottomAndTopEdges
{
  [(ITKQuad *)self topLeft];
  [(ITKQuad *)self topRight];
  ITKSlopeOfLine();
  v4 = atan(v3);
  [(ITKQuad *)self bottomLeft];
  [(ITKQuad *)self bottomRight];
  ITKSlopeOfLine();
  return (v4 + atan(v5)) * 0.5;
}

- (CGRect)minimumBoundingRectWithoutRotation
{
  [(ITKQuad *)self sideLength];
  vertexCentroid = [(ITKQuad *)self vertexCentroid];

  MEMORY[0x2821746A0](vertexCentroid);
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v13 = 1;
  }

  else if (equalCopy && (([(ITKQuad *)self topLeft], v7 = v6, v9 = v8, [(ITKQuad *)v5 topLeft], v7 == v11) ? (v12 = v9 == v10) : (v12 = 0), v12))
  {
    [(ITKQuad *)self topRight];
    v16 = v15;
    v18 = v17;
    [(ITKQuad *)v5 topRight];
    v13 = 0;
    if (v16 == v20 && v18 == v19)
    {
      [(ITKQuad *)self bottomRight];
      v22 = v21;
      v24 = v23;
      [(ITKQuad *)v5 bottomRight];
      v13 = 0;
      if (v22 == v26 && v24 == v25)
      {
        [(ITKQuad *)self bottomLeft];
        v28 = v27;
        v30 = v29;
        [(ITKQuad *)v5 bottomLeft];
        v13 = 0;
        if (v28 == v32 && v30 == v31)
        {
          layoutDirection = [(ITKQuad *)self layoutDirection];
          v13 = layoutDirection == [(ITKQuad *)v5 layoutDirection];
        }
      }
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  [(ITKQuad *)self topLeft];
  v5 = v4;
  v7 = v6;
  [(ITKQuad *)self topRight];
  v9 = v8;
  v11 = v10;
  [(ITKQuad *)self bottomRight];
  v13 = v12;
  v15 = v14;
  [(ITKQuad *)self bottomLeft];
  v18 = [[ITKQuad alloc] initWithBottomLeft:v16 bottomRight:v17 topLeft:v13 topRight:v15, v5, v7, v9, v11];
  [(ITKQuad *)v18 setLayoutDirection:[(ITKQuad *)self layoutDirection]];
  return v18;
}

- (UIBezierPath)path
{
  path = self->_path;
  if (!path)
  {
    v4 = objc_alloc_init(MEMORY[0x277D75208]);
    v5 = self->_path;
    self->_path = v4;

    v6 = self->_path;
    [(ITKQuad *)self topLeft];
    [(UIBezierPath *)v6 moveToPoint:?];
    v7 = self->_path;
    [(ITKQuad *)self topRight];
    [(UIBezierPath *)v7 itk_addLineToPoint:?];
    v8 = self->_path;
    [(ITKQuad *)self bottomRight];
    [(UIBezierPath *)v8 itk_addLineToPoint:?];
    v9 = self->_path;
    [(ITKQuad *)self bottomLeft];
    [(UIBezierPath *)v9 itk_addLineToPoint:?];
    v10 = self->_path;
    [(ITKQuad *)self topLeft];
    [(UIBezierPath *)v10 itk_addLineToPoint:?];
    [(UIBezierPath *)self->_path closePath];
    path = self->_path;
  }

  return path;
}

- (id)quadByConvertingFromView:(id)view toView:(id)toView isNormalized:(BOOL)normalized
{
  normalizedCopy = normalized;
  viewCopy = view;
  toViewCopy = toView;
  [viewCopy bounds];
  selfCopy = self;
  itk_isFlipped = [viewCopy itk_isFlipped];
  if (itk_isFlipped != [toViewCopy itk_isFlipped])
  {
    v12 = [(ITKQuad *)selfCopy copy];

    if (normalizedCopy)
    {
      v13 = *MEMORY[0x277D1C0E0];
      v14 = *(MEMORY[0x277D1C0E0] + 8);
      v15 = *(MEMORY[0x277D1C0E0] + 16);
      v16 = *(MEMORY[0x277D1C0E0] + 24);
    }

    else
    {
      [viewCopy bounds];
    }

    selfCopy = [v12 quadByFlippingPointsWithSourceFrame:{v13, v14, v15, v16}];
  }

  [(ITKQuad *)selfCopy topLeft];
  if (normalizedCopy)
  {
    ITKPointFromNormalizedRect();
    [viewCopy convertPoint:0 toView:?];
    v55 = v18;
    v56 = v17;
    [(ITKQuad *)selfCopy topRight];
    ITKPointFromNormalizedRect();
    [viewCopy convertPoint:0 toView:?];
    v20 = v19;
    v22 = v21;
    [(ITKQuad *)selfCopy bottomRight];
    ITKPointFromNormalizedRect();
    [viewCopy convertPoint:0 toView:?];
    v24 = v23;
    v26 = v25;
    [(ITKQuad *)selfCopy bottomLeft];
    v28 = v55;
    v27 = v56;
    ITKPointFromNormalizedRect();
  }

  else
  {
    [viewCopy convertPoint:0 toView:?];
    v27 = v29;
    v28 = v30;
    [(ITKQuad *)selfCopy topRight];
    [viewCopy convertPoint:0 toView:?];
    v20 = v31;
    v22 = v32;
    [(ITKQuad *)selfCopy bottomRight];
    [viewCopy convertPoint:0 toView:?];
    v24 = v33;
    v26 = v34;
    [(ITKQuad *)selfCopy bottomLeft];
  }

  [viewCopy convertPoint:0 toView:?];
  v36 = v35;
  v38 = v37;
  [toViewCopy convertPoint:0 fromView:{v27, v28}];
  v40 = v39;
  v42 = v41;
  [toViewCopy convertPoint:0 fromView:{v20, v22}];
  v44 = v43;
  v46 = v45;
  [toViewCopy convertPoint:0 fromView:{v24, v26}];
  v48 = v47;
  v50 = v49;
  [toViewCopy convertPoint:0 fromView:{v36, v38}];
  v53 = [[ITKQuad alloc] initWithBottomLeft:v51 bottomRight:v52 topLeft:v48 topRight:v50, v40, v42, v44, v46];

  return v53;
}

- (id)quadByConvertingFromNormalizedRectToView:(id)view contentsRect:(CGRect)rect
{
  [view bounds];
  ITKRectFromNormalizedSubrect();
  [(ITKQuad *)self topLeft];
  ITKPointFromNormalizedRect();
  v19 = v6;
  v20 = v5;
  [(ITKQuad *)self topRight];
  ITKPointFromNormalizedRect();
  v8 = v7;
  v10 = v9;
  [(ITKQuad *)self bottomRight];
  ITKPointFromNormalizedRect();
  v12 = v11;
  v14 = v13;
  [(ITKQuad *)self bottomLeft];
  ITKPointFromNormalizedRect();
  v17 = [[ITKQuad alloc] initWithBottomLeft:v15 bottomRight:v16 topLeft:v12 topRight:v14, v20, v19, v8, v10];

  return v17;
}

- (id)normalizedQuadByConvertingFromView:(id)view toView:(id)toView toViewSize:(CGSize)size
{
  toViewCopy = toView;
  viewCopy = view;
  [(ITKQuad *)self topLeft];
  [viewCopy convertPoint:toViewCopy toView:?];
  [(ITKQuad *)self topRight];
  [viewCopy convertPoint:toViewCopy toView:?];
  [(ITKQuad *)self bottomRight];
  [viewCopy convertPoint:toViewCopy toView:?];
  [(ITKQuad *)self bottomLeft];
  [viewCopy convertPoint:toViewCopy toView:?];

  ITKNormalizedPointInRect();
  v23 = v10;
  v24 = v9;
  ITKNormalizedPointInRect();
  v12 = v11;
  v14 = v13;
  ITKNormalizedPointInRect();
  v16 = v15;
  v18 = v17;
  ITKNormalizedPointInRect();
  v21 = [[ITKQuad alloc] initWithBottomLeft:v19 bottomRight:v20 topLeft:v16 topRight:v18, v24, v23, v12, v14];

  return v21;
}

- (id)normalizedQuadFromView:(id)view
{
  [view bounds];
  [(ITKQuad *)self topLeft];
  ITKNormalizedPointInRect();
  v18 = v5;
  v19 = v4;
  [(ITKQuad *)self topRight];
  ITKNormalizedPointInRect();
  v7 = v6;
  v9 = v8;
  [(ITKQuad *)self bottomRight];
  ITKNormalizedPointInRect();
  v11 = v10;
  v13 = v12;
  [(ITKQuad *)self bottomLeft];
  ITKNormalizedPointInRect();
  v16 = [[ITKQuad alloc] initWithBottomLeft:v14 bottomRight:v15 topLeft:v11 topRight:v13, v19, v18, v7, v9];

  return v16;
}

- (id)subquadFromRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if (ITKSizeIsEmptyOrHasNanOrInf())
  {
    v8 = objc_alloc_init(ITKQuad);
  }

  else
  {
    v9 = [(ITKQuad *)self copy];
    v10 = [v9 quadFromSubtractingPoint:{x, y}];

    v8 = [v10 quadMultipliedBySize:{1.0 / width, 1.0 / height}];
  }

  return v8;
}

- (id)quadFromAddingPoint:(CGPoint)point
{
  [(ITKQuad *)self topLeft];
  ITKAddPoints();
  v5 = v4;
  v7 = v6;
  [(ITKQuad *)self topRight];
  ITKAddPoints();
  v9 = v8;
  v11 = v10;
  [(ITKQuad *)self bottomRight];
  ITKAddPoints();
  v13 = v12;
  v15 = v14;
  [(ITKQuad *)self bottomLeft];
  ITKAddPoints();
  v18 = [[ITKQuad alloc] initWithBottomLeft:v16 bottomRight:v17 topLeft:v13 topRight:v15, v5, v7, v9, v11];

  return v18;
}

- (id)quadFromSubtractingPoint:(CGPoint)point
{
  [(ITKQuad *)self topLeft];
  ITKSubtractPoints();
  v5 = v4;
  v7 = v6;
  [(ITKQuad *)self topRight];
  ITKSubtractPoints();
  v9 = v8;
  v11 = v10;
  [(ITKQuad *)self bottomRight];
  ITKSubtractPoints();
  v13 = v12;
  v15 = v14;
  [(ITKQuad *)self bottomLeft];
  ITKSubtractPoints();
  v18 = [[ITKQuad alloc] initWithBottomLeft:v16 bottomRight:v17 topLeft:v13 topRight:v15, v5, v7, v9, v11];

  return v18;
}

- (id)quadMultipliedBySize:(CGSize)size
{
  [(ITKQuad *)self topLeft];
  ITKMultiplyPointBySize();
  v5 = v4;
  v7 = v6;
  [(ITKQuad *)self topRight];
  ITKMultiplyPointBySize();
  v9 = v8;
  v11 = v10;
  [(ITKQuad *)self bottomRight];
  ITKMultiplyPointBySize();
  v13 = v12;
  v15 = v14;
  [(ITKQuad *)self bottomLeft];
  ITKMultiplyPointBySize();
  v18 = [[ITKQuad alloc] initWithBottomLeft:v16 bottomRight:v17 topLeft:v13 topRight:v15, v5, v7, v9, v11];

  return v18;
}

- (CGPoint)vertexCentroid
{
  [(ITKQuad *)self topLeft];
  v4 = v3;
  v6 = v5;
  [(ITKQuad *)self topRight];
  v8 = v7;
  v10 = v9;
  [(ITKQuad *)self bottomLeft];
  v12 = v11;
  v14 = v13;
  bottomRight = [(ITKQuad *)self bottomRight];
  v16.n128_u64[0] = v18.n128_u64[0];
  v17.n128_u64[0] = v19.n128_u64[0];
  v18.n128_u64[0] = v4;
  v19.n128_u64[0] = v6;
  v20.n128_u64[0] = v8;
  v21.n128_u64[0] = v10;
  v22.n128_u64[0] = v12;
  v23.n128_u64[0] = v14;

  MEMORY[0x2821746E8](bottomRight, v18, v19, v20, v21, v22, v23, v16, v17);
  result.y = v25;
  result.x = v24;
  return result;
}

- (id)quadFromUnionWithQuad:(id)quad
{
  quadCopy = quad;
  quadByAdjustingOrientation = [(ITKQuad *)self quadByAdjustingOrientation];
  quadByAdjustingOrientation2 = [quadCopy quadByAdjustingOrientation];

  [quadByAdjustingOrientation2 topLeft];
  v8 = v7;
  [quadByAdjustingOrientation topLeft];
  if (v8 >= v9)
  {
    v8 = v9;
  }

  [quadByAdjustingOrientation2 topLeft];
  v11 = v10;
  [quadByAdjustingOrientation topLeft];
  if (v11 >= v12)
  {
    v11 = v12;
  }

  [quadByAdjustingOrientation2 topRight];
  v14 = v13;
  [quadByAdjustingOrientation topRight];
  if (v14 < v15)
  {
    v14 = v15;
  }

  [quadByAdjustingOrientation2 topRight];
  v17 = v16;
  [quadByAdjustingOrientation topRight];
  if (v17 >= v18)
  {
    v17 = v18;
  }

  [quadByAdjustingOrientation2 bottomRight];
  v20 = v19;
  [quadByAdjustingOrientation bottomRight];
  if (v20 < v21)
  {
    v20 = v21;
  }

  [quadByAdjustingOrientation2 bottomRight];
  v23 = v22;
  [quadByAdjustingOrientation bottomRight];
  if (v23 < v24)
  {
    v23 = v24;
  }

  [quadByAdjustingOrientation2 bottomLeft];
  v26 = v25;
  [quadByAdjustingOrientation bottomLeft];
  if (v26 >= v27)
  {
    v26 = v27;
  }

  [quadByAdjustingOrientation2 bottomLeft];
  v29 = v28;
  [quadByAdjustingOrientation bottomLeft];
  if (v29 < v30)
  {
    v29 = v30;
  }

  v31 = [[ITKQuad alloc] initWithBottomLeft:v26 bottomRight:v29 topLeft:v20 topRight:v23, v8, v11, v14, v17];

  return v31;
}

+ (id)quadFromUnionOfQuads:(id)quads baselineAngle:(double)angle
{
  v21 = *MEMORY[0x277D85DE8];
  quadsCopy = quads;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [quadsCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(quadsCopy);
        }

        v11 = [*(*(&v16 + 1) + 8 * i) quadFromRotatingAroundOriginWithAngle:-angle];
        v12 = v11;
        if (v8)
        {
          v13 = [v8 quadFromUnionWithQuad:v11];

          v8 = v13;
        }

        else
        {
          v8 = v11;
        }
      }

      v7 = [quadsCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  v14 = [v8 quadFromRotatingAroundOriginWithAngle:angle];

  return v14;
}

+ (CGPoint)vertexCentroidFromQuads:(id)quads
{
  quadsCopy = quads;
  if ([quadsCopy count])
  {
    firstObject = [quadsCopy firstObject];
    [firstObject vertexCentroid];
    v6 = v5;
    v8 = v7;

    if ([quadsCopy count] >= 2)
    {
      if ([quadsCopy count] >= 2)
      {
        v9 = 1;
        do
        {
          v10 = [quadsCopy objectAtIndexedSubscript:v9];
          [v10 vertexCentroid];
          ITKAddPoints();

          ++v9;
        }

        while ([quadsCopy count] > v9);
      }

      [quadsCopy count];
      ITKMultiplyPointScalar();
      v6 = v11;
      v8 = v12;
    }
  }

  else
  {
    v6 = *MEMORY[0x277CBF348];
    v8 = *(MEMORY[0x277CBF348] + 8);
  }

  v13 = v6;
  v14 = v8;
  result.y = v14;
  result.x = v13;
  return result;
}

- (id)quadFromRotatingAroundCentroidWithAngle:(double)angle
{
  [(ITKQuad *)self vertexCentroid];
  v6 = v5;
  v8 = v7;
  memset(&v18, 0, sizeof(v18));
  CGAffineTransformMakeTranslation(&v18, -v5, -v7);
  CGAffineTransformMakeRotation(&t2, angle);
  t1 = v18;
  CGAffineTransformConcat(&v17, &t1, &t2);
  v18 = v17;
  CGAffineTransformMakeTranslation(&t2, v6, v8);
  t1 = v18;
  CGAffineTransformConcat(&v17, &t1, &t2);
  v18 = v17;
  allPoints = [(ITKQuad *)self allPoints];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __51__ITKQuad_quadFromRotatingAroundCentroidWithAngle___block_invoke;
  v13[3] = &__block_descriptor_80_e23__32__0__NSValue_8q16q24l;
  v14 = v18;
  v10 = [allPoints itk_map:v13];

  v11 = [[ITKQuad alloc] initWithPoints:v10];

  return v11;
}

uint64_t __51__ITKQuad_quadFromRotatingAroundCentroidWithAngle___block_invoke(float64x2_t *a1, void *a2)
{
  v3 = MEMORY[0x277CCAE60];
  [a2 pointValue];
  v6 = vaddq_f64(a1[4], vmlaq_n_f64(vmulq_n_f64(a1[3], v4), a1[2], v5));

  return [v3 itk_valueWithPoint:*&v6];
}

- (id)quadFromRotatingAroundOriginWithAngle:(double)angle
{
  memset(&v10, 0, sizeof(v10));
  CGAffineTransformMakeRotation(&v10, angle);
  allPoints = [(ITKQuad *)self allPoints];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __49__ITKQuad_quadFromRotatingAroundOriginWithAngle___block_invoke;
  v8[3] = &__block_descriptor_80_e23__32__0__NSValue_8q16q24l;
  v9 = v10;
  v5 = [allPoints itk_map:v8];

  v6 = [[ITKQuad alloc] initWithPoints:v5];

  return v6;
}

uint64_t __49__ITKQuad_quadFromRotatingAroundOriginWithAngle___block_invoke(float64x2_t *a1, void *a2)
{
  v3 = MEMORY[0x277CCAE60];
  [a2 pointValue];
  v6 = vaddq_f64(a1[4], vmlaq_n_f64(vmulq_n_f64(a1[3], v4), a1[2], v5));

  return [v3 itk_valueWithPoint:*&v6];
}

- (CGAffineTransform)rotationTransformAndBoundingBox:(SEL)box
{
  [(ITKQuad *)self topLeft];
  [(ITKQuad *)self bottomLeft];
  ITKAveragePoints();
  v8 = v7;
  [(ITKQuad *)self topRight];
  [(ITKQuad *)self bottomRight];
  ITKAveragePoints();
  if (v8 == v9)
  {
    ITKSubtractPoints();
    v11 = dbl_254C2B2E0[v12 > 0.0];
  }

  else
  {
    ITKAngleOfLine();
    v11 = v10;
  }

  v13 = [(ITKQuad *)self quadFromRotatingAroundCentroidWithAngle:-v11];
  [v13 boundingBox];
  a4->origin.x = v14;
  a4->origin.y = v15;
  a4->size.width = v16;
  a4->size.height = v17;

  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  *&retstr->a = 0u;

  return CGAffineTransformMakeRotation(retstr, v11);
}

- (double)minimumDistanceToPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v32 = *MEMORY[0x277D85DE8];
  v6 = [(ITKQuad *)self containsPoint:?];
  result = 0.0;
  if (!v6)
  {
    [(ITKQuad *)self topLeft];
    v28 = v8;
    v29 = v9;
    [(ITKQuad *)self topRight];
    v30 = v10;
    v31 = v11;
    [(ITKQuad *)self distanceFromLine:&v28 toPoint:x, y];
    v13 = fmin(v12, INFINITY);
    [(ITKQuad *)self topRight];
    v28 = v14;
    v29 = v15;
    [(ITKQuad *)self bottomRight];
    v30 = v16;
    v31 = v17;
    [(ITKQuad *)self distanceFromLine:&v28 toPoint:x, y];
    if (v18 < v13)
    {
      v13 = v18;
    }

    [(ITKQuad *)self bottomRight];
    v28 = v19;
    v29 = v20;
    [(ITKQuad *)self bottomLeft];
    v30 = v21;
    v31 = v22;
    [(ITKQuad *)self distanceFromLine:&v28 toPoint:x, y];
    if (v23 < v13)
    {
      v13 = v23;
    }

    [(ITKQuad *)self bottomLeft];
    v28 = v24;
    v29 = v25;
    [(ITKQuad *)self topLeft];
    v30 = v26;
    v31 = v27;
    [(ITKQuad *)self distanceFromLine:&v28 toPoint:x, y];
    if (result >= v13)
    {
      return v13;
    }
  }

  return result;
}

- (double)distanceFromLine:(CGPoint *)line toPoint:(CGPoint)point
{
  ITKNearestPointOnLineSegmentToPoint();

  ITKDistance();
  return result;
}

- (CGPoint)topLeft
{
  x = self->_topLeft.x;
  y = self->_topLeft.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)topRight
{
  x = self->_topRight.x;
  y = self->_topRight.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)bottomLeft
{
  x = self->_bottomLeft.x;
  y = self->_bottomLeft.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)bottomRight
{
  x = self->_bottomRight.x;
  y = self->_bottomRight.y;
  result.y = y;
  result.x = x;
  return result;
}

+ (CATransform3D)transformToConvertLayer:(SEL)layer intoQuad:(id)quad frame:(id)frame
{
  v34[8] = *MEMORY[0x277D85DE8];
  frameCopy = frame;
  quadCopy = quad;
  [frameCopy topLeft];
  v34[0] = v11;
  v34[1] = v12;
  [frameCopy topRight];
  v34[2] = v13;
  v34[3] = v14;
  [frameCopy bottomRight];
  v34[4] = v15;
  v34[5] = v16;
  [frameCopy bottomLeft];
  v18 = v17;
  v20 = v19;

  v34[6] = v18;
  v34[7] = v20;
  *&retstr->m11 = 0u;
  *&retstr->m13 = 0u;
  *&retstr->m21 = 0u;
  *&retstr->m23 = 0u;
  *&retstr->m31 = 0u;
  *&retstr->m33 = 0u;
  *&retstr->m41 = 0u;
  *&retstr->m43 = 0u;
  [quadCopy bounds];
  v22 = v21;
  v24 = v23;
  [quadCopy anchorPoint];
  [quadCopy frame];
  v28 = v27;
  v30 = v29;
  [quadCopy anchorPoint];
  [quadCopy bounds];

  ITKPointFromNormalizedRect();
  result = ITKMultiplyPointScalar();
  a6->origin.x = v32;
  a6->origin.y = v33;
  a6->size.width = v28;
  a6->size.height = v30;
  return result;
}

@end