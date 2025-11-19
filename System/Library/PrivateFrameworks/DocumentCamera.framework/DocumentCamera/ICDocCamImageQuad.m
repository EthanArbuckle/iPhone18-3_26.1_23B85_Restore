@interface ICDocCamImageQuad
+ (id)quadFromCGRect:(CGRect)a3;
+ (id)quadFromVNRectangle:(id)a3;
- (BOOL)containsAngleOutOfValidThreshold;
- (BOOL)containsIntersectingLines;
- (BOOL)containsPointOutsideOfExtendedImageBounds;
- (BOOL)containsPointsLessThanDistanceThreshold;
- (BOOL)isConvex;
- (BOOL)isEqual:(id)a3;
- (CGPoint)bottomLeft;
- (CGPoint)bottomRight;
- (CGPoint)pointRotatedClockwiseAroundOrigin:(CGPoint)a3;
- (CGPoint)topLeft;
- (CGPoint)topRight;
- (CGRect)boundingBox;
- (CGRect)bounds;
- (CGSize)perspectiveCorrectedSize;
- (ICDocCamImageQuad)initWithBottomLeft:(CGPoint)a3 bottomRight:(CGPoint)a4 topLeft:(CGPoint)a5 topRight:(CGPoint)a6;
- (ICDocCamImageQuad)initWithCoder:(id)a3;
- (double)mininumAllowedDistanceBetweenPoints;
- (id)copyWithZone:(_NSZone *)a3;
- (id)flippedQuadFromSourceFrame:(CGRect)a3;
- (id)imageQuadByScalingBy:(CGSize)a3;
- (id)intersectionOfLineFrom:(CGPoint)a3 to:(CGPoint)a4 withLineFrom:(CGPoint)a5 to:(CGPoint)a6;
- (id)normalizedQuadByConvertingFromView:(id)a3 toView:(id)a4 toViewSize:(CGSize)a5;
- (id)quadByConvertingFromView:(id)a3 toView:(id)a4 isNormalized:(BOOL)a5;
- (void)addPointToQuadPoints:(CGPoint)a3;
- (void)applyOrientation:(int64_t)a3 boundingBox:(CGRect)a4;
- (void)clampQuadToRect:(CGRect)a3;
- (void)encodeWithCoder:(id)a3;
- (void)flipPointsWithSourceFrame:(CGRect)a3;
- (void)insertAndClipTopBy:(double)a3;
- (void)orientIfNecessary;
- (void)removeOrientation:(int64_t)a3 boundingBox:(CGRect)a4;
- (void)rotatePointsByOrientation:(int64_t)a3;
- (void)rotatePointsClockwise;
- (void)rotatePointsRemovingOrientation:(int64_t)a3;
@end

@implementation ICDocCamImageQuad

- (ICDocCamImageQuad)initWithBottomLeft:(CGPoint)a3 bottomRight:(CGPoint)a4 topLeft:(CGPoint)a5 topRight:(CGPoint)a6
{
  y = a6.y;
  x = a6.x;
  v8 = a5.y;
  v9 = a5.x;
  v10 = a4.y;
  v11 = a4.x;
  v12 = a3.y;
  v13 = a3.x;
  result = [(ICDocCamImageQuad *)self init];
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

- (id)imageQuadByScalingBy:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(ICDocCamImageQuad *)self bottomLeft];
  v7 = v6;
  v9 = v8;
  [(ICDocCamImageQuad *)self bottomRight];
  v11 = v10;
  v13 = v12;
  [(ICDocCamImageQuad *)self topLeft];
  v15 = v14;
  v17 = v16;
  [(ICDocCamImageQuad *)self topRight];
  v20 = [[ICDocCamImageQuad alloc] initWithBottomLeft:width * v7 bottomRight:height * v9 topLeft:width * v11 topRight:height * v13, width * v15, height * v17, width * v18, height * v19];

  return v20;
}

- (CGRect)bounds
{
  v24[5] = *MEMORY[0x277D85DE8];
  [(ICDocCamImageQuad *)self topLeft];
  v4 = v3;
  v6 = v5;
  [(ICDocCamImageQuad *)self topRight];
  v23 = v7;
  v24[0] = v8;
  [(ICDocCamImageQuad *)self bottomLeft];
  v24[1] = v9;
  v24[2] = v10;
  [(ICDocCamImageQuad *)self bottomRight];
  v11 = 0;
  v24[3] = v12;
  v24[4] = v13;
  v14 = v4;
  v15 = v6;
  do
  {
    v16 = *&v22[v11 * 8 + 16];
    v17 = *&v24[v11];
    if (v4 >= v16)
    {
      v4 = *&v22[v11 * 8 + 16];
    }

    if (v14 < v16)
    {
      v14 = *&v22[v11 * 8 + 16];
    }

    if (v6 >= v17)
    {
      v6 = *&v24[v11];
    }

    if (v15 < v17)
    {
      v15 = *&v24[v11];
    }

    v11 += 2;
  }

  while (v11 != 6);
  v18 = v14 - v4;
  v19 = v15 - v6;
  v20 = v4;
  v21 = v6;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (CGSize)perspectiveCorrectedSize
{
  [(ICDocCamImageQuad *)self topLeft];
  v30 = v3;
  v33 = v4;
  [(ICDocCamImageQuad *)self topRight];
  v29 = v5;
  v31 = v6;
  [(ICDocCamImageQuad *)self bottomRight];
  v32 = v7;
  v34 = v8;
  [(ICDocCamImageQuad *)self bottomLeft];
  v9.f64[1] = v29;
  v10 = vsubq_f64(vdupq_lane_s64(v30, 0), v9);
  v11.f64[1] = v31;
  _Q3 = vsubq_f64(vdupq_lane_s64(v33, 0), v11);
  v13 = vsqrtq_f64(vmlaq_f64(vmulq_f64(_Q3, _Q3), v10, v10));
  v14 = vsubq_f64(vdupq_lane_s64(v32, 0), v9);
  v15 = vsubq_f64(vdupq_lane_s64(v34, 0), v11);
  v16 = vsqrtq_f64(vmlaq_f64(vmulq_f64(v15, v15), v14, v14));
  v17 = vextq_s8(v16, v16, 8uLL);
  *&v15.f64[0] = vcvt_f32_f64(vdivq_f64(v13, v17));
  __asm { FMOV            V3.2S, #1.0 }

  v22 = vbsl_s8(vcgt_f32(*&v15.f64[0], *&_Q3.f64[0]), *&v15.f64[0], vdiv_f32(*&_Q3.f64[0], *&v15.f64[0]));
  v23 = v22.f32[1];
  if (v22.f32[0] >= v22.f32[1])
  {
    v23 = v22.f32[0];
  }

  if (v23 > 2.0)
  {
    v22 = vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(v22), 2.0 / v23));
  }

  v24 = vcvtq_f64_f32(v22);
  v25 = vrndpq_f64(vmulq_f64(vbslq_s8(vcgtq_f64(v17, v13), v17, v13), vextq_s8(v24, v24, 8uLL)));
  __asm { FMOV            V1.2D, #-2.0 }

  v27 = vaddq_f64(v25, _Q1);
  v28 = v27.f64[1];
  result.height = v27.f64[0];
  result.width = v28;
  return result;
}

- (void)flipPointsWithSourceFrame:(CGRect)a3
{
  [(ICDocCamImageQuad *)self topLeft];
  DCTSDFlipPoint();
  [(ICDocCamImageQuad *)self setTopLeft:?];
  [(ICDocCamImageQuad *)self topRight];
  DCTSDFlipPoint();
  [(ICDocCamImageQuad *)self setTopRight:?];
  [(ICDocCamImageQuad *)self bottomRight];
  DCTSDFlipPoint();
  [(ICDocCamImageQuad *)self setBottomRight:?];
  [(ICDocCamImageQuad *)self bottomLeft];
  DCTSDFlipPoint();

  [(ICDocCamImageQuad *)self setBottomLeft:?];
}

- (void)clampQuadToRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(ICDocCamImageQuad *)self topLeft];
  [(ICDocCamImageQuad *)self setTopLeft:DCTSDClampPointInRect(v8, v9, x, y, width, height)];
  [(ICDocCamImageQuad *)self topRight];
  [(ICDocCamImageQuad *)self setTopRight:DCTSDClampPointInRect(v10, v11, x, y, width, height)];
  [(ICDocCamImageQuad *)self bottomRight];
  [(ICDocCamImageQuad *)self setBottomRight:DCTSDClampPointInRect(v12, v13, x, y, width, height)];
  [(ICDocCamImageQuad *)self bottomLeft];
  v16 = DCTSDClampPointInRect(v14, v15, x, y, width, height);

  [(ICDocCamImageQuad *)self setBottomLeft:v16];
}

- (void)insertAndClipTopBy:(double)a3
{
  [(ICDocCamImageQuad *)self topLeft];
  v6 = v5;
  [(ICDocCamImageQuad *)self topLeft];
  [(ICDocCamImageQuad *)self setTopLeft:v6, v7 - a3];
  [(ICDocCamImageQuad *)self topRight];
  v9 = v8;
  [(ICDocCamImageQuad *)self topRight];
  v11 = v10 - a3;

  [(ICDocCamImageQuad *)self setTopRight:v9, v11];
}

- (void)orientIfNecessary
{
  v31[4] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAE60];
  [(ICDocCamImageQuad *)self topLeft];
  v4 = [v3 valueWithCGPoint:?];
  v31[0] = v4;
  v5 = MEMORY[0x277CCAE60];
  [(ICDocCamImageQuad *)self topRight];
  v6 = [v5 valueWithCGPoint:?];
  v31[1] = v6;
  v7 = MEMORY[0x277CCAE60];
  [(ICDocCamImageQuad *)self bottomLeft];
  v8 = [v7 valueWithCGPoint:?];
  v31[2] = v8;
  v9 = MEMORY[0x277CCAE60];
  [(ICDocCamImageQuad *)self bottomRight];
  v10 = [v9 valueWithCGPoint:?];
  v31[3] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:4];

  v12 = [v11 sortedArrayUsingComparator:&__block_literal_global_9];
  v13 = [v12 objectAtIndexedSubscript:0];
  [v13 CGPointValue];
  v15 = v14;

  v16 = [v12 objectAtIndexedSubscript:1];
  [v16 CGPointValue];
  v18 = v17;

  v19 = [v12 objectAtIndexedSubscript:2];
  [v19 CGPointValue];
  v21 = v20;

  v22 = [v12 objectAtIndexedSubscript:3];
  [v22 CGPointValue];
  v24 = v23;

  if (v24 <= v21)
  {
    v25 = 2;
  }

  else
  {
    v25 = 3;
  }

  if (v24 <= v21)
  {
    v26 = 3;
  }

  else
  {
    v26 = 2;
  }

  v27 = [v12 objectAtIndexedSubscript:v15 <= v18];
  [v27 CGPointValue];
  [(ICDocCamImageQuad *)self setTopLeft:?];

  v28 = [v12 objectAtIndexedSubscript:v25];
  [v28 CGPointValue];
  [(ICDocCamImageQuad *)self setTopRight:?];

  v29 = [v12 objectAtIndexedSubscript:v15 > v18];
  [v29 CGPointValue];
  [(ICDocCamImageQuad *)self setBottomLeft:?];

  v30 = [v12 objectAtIndexedSubscript:v26];
  [v30 CGPointValue];
  [(ICDocCamImageQuad *)self setBottomRight:?];
}

uint64_t __38__ICDocCamImageQuad_orientIfNecessary__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  [a2 CGPointValue];
  v6 = [v4 numberWithDouble:?];
  v7 = MEMORY[0x277CCABB0];
  [v5 CGPointValue];
  v9 = v8;

  v10 = [v7 numberWithDouble:v9];
  v11 = [v6 compare:v10];

  return v11;
}

- (double)mininumAllowedDistanceBetweenPoints
{
  [(ICDocCamImageQuad *)self boundingBox];
  if (v2 >= v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = v2;
  }

  return v4 * 0.1;
}

- (BOOL)containsPointOutsideOfExtendedImageBounds
{
  v3 = [(ICDocCamImageQuad *)self copy];
  [(ICDocCamImageQuad *)self boundingBox];
  [v3 addPointToQuadPoints:{DCTSDMultiplyPointScalar(v4, v5, -1.0)}];
  [(ICDocCamImageQuad *)self boundingBox];
  v7 = 1.0 / v6;
  [(ICDocCamImageQuad *)self boundingBox];
  v9 = [v3 imageQuadByScalingBy:{v7, 1.0 / v8}];
  [v9 topLeft];
  v11 = v10;
  v13 = v12;
  [v9 topRight];
  v15 = v14;
  v17 = v16;
  [v9 bottomRight];
  v33 = v19;
  v34 = v18;
  [v9 bottomLeft];
  v31 = v21;
  v32 = v20;
  v22 = DCTSDRectWithPoints(0.0, 0.0, 1.0);
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = !DCTSDPointInRectInclusive(v11, v13, v22, v23, v25, v27) || !DCTSDPointInRectInclusive(v15, v17, v22, v24, v26, v28) || !DCTSDPointInRectInclusive(v34, v33, v22, v24, v26, v28) || !DCTSDPointInRectInclusive(v32, v31, v22, v24, v26, v28);

  return v29;
}

- (BOOL)containsAngleOutOfValidThreshold
{
  [(ICDocCamImageQuad *)self topLeft];
  v4 = v3;
  v6 = v5;
  [(ICDocCamImageQuad *)self topRight];
  v8 = v7;
  v10 = v9;
  [(ICDocCamImageQuad *)self bottomRight];
  v12 = v11;
  v14 = v13;
  [(ICDocCamImageQuad *)self bottomLeft];
  v16 = v15;
  v18 = v17;
  v29 = DCTSDAngleBetweenPoints(v4, v6, v15, v17, v8, v10);
  v28 = DCTSDAngleBetweenPoints(v8, v10, v4, v6, v12, v14);
  v27 = DCTSDAngleBetweenPoints(v12, v14, v8, v10, v16, v18);
  v19 = DCTSDAngleBetweenPoints(v16, v18, v12, v14, v4, v6);
  v20.f64[0] = v29;
  v20.f64[1] = v28;
  v21.f64[0] = v27;
  v21.f64[1] = v19;
  v22 = vdupq_n_s64(0xBFF921FB54442D18);
  v23 = vaddq_f64(v20, v22);
  v24 = vabsq_f64(vaddq_f64(v21, v22));
  v25 = vdupq_n_s64(0x3FF226C3BCDBE7AEuLL);
  return vmaxv_u16(vmovn_s32(vuzp1q_s32(vcgtq_f64(vabsq_f64(v23), v25), vcgtq_f64(v24, v25)))) & 1;
}

- (BOOL)containsPointsLessThanDistanceThreshold
{
  [(ICDocCamImageQuad *)self mininumAllowedDistanceBetweenPoints];
  v4 = v3;
  [(ICDocCamImageQuad *)self topLeft];
  v6 = v5;
  v8 = v7;
  [(ICDocCamImageQuad *)self topRight];
  v10 = v9;
  v12 = v11;
  [(ICDocCamImageQuad *)self bottomRight];
  v14 = v13;
  v16 = v15;
  [(ICDocCamImageQuad *)self bottomLeft];
  v21 = v17;
  v19 = v18;
  return DCTSDDistance(v6, v8, v10, v12) < v4 || DCTSDDistance(v6, v8, v14, v16) < v4 || DCTSDDistance(v6, v8, v21, v19) < v4 || DCTSDDistance(v10, v12, v21, v19) < v4 || DCTSDDistance(v10, v12, v14, v16) < v4 || DCTSDDistance(v14, v16, v21, v19) < v4;
}

- (BOOL)containsIntersectingLines
{
  [(ICDocCamImageQuad *)self topLeft];
  v4 = v3;
  v6 = v5;
  [(ICDocCamImageQuad *)self topRight];
  v8 = v7;
  v10 = v9;
  [(ICDocCamImageQuad *)self bottomLeft];
  v12 = v11;
  v14 = v13;
  [(ICDocCamImageQuad *)self bottomRight];
  v17 = [(ICDocCamImageQuad *)self intersectionOfLineFrom:v4 to:v6 withLineFrom:v8 to:v10, v12, v14, v15, v16];
  if (v17)
  {
    v18 = 1;
  }

  else
  {
    [(ICDocCamImageQuad *)self topRight];
    v20 = v19;
    v22 = v21;
    [(ICDocCamImageQuad *)self bottomRight];
    v24 = v23;
    v26 = v25;
    [(ICDocCamImageQuad *)self topLeft];
    v28 = v27;
    v30 = v29;
    [(ICDocCamImageQuad *)self bottomLeft];
    v33 = [(ICDocCamImageQuad *)self intersectionOfLineFrom:v20 to:v22 withLineFrom:v24 to:v26, v28, v30, v31, v32];
    v18 = v33 != 0;
  }

  return v18;
}

- (id)intersectionOfLineFrom:(CGPoint)a3 to:(CGPoint)a4 withLineFrom:(CGPoint)a5 to:(CGPoint)a6
{
  v8 = a4.x - a3.x;
  v9 = a6.y - a5.y;
  v10 = a4.y - a3.y;
  v11 = a6.x - a5.x;
  v12 = v8 * (a6.y - a5.y) - v10 * (a6.x - a5.x);
  v13 = 0;
  if (v12 != 0.0 && ((v15 = a5.x - a3.x, v16 = a5.y - a3.y, v17 = ((a5.x - a3.x) * v9 - v16 * v11) / v12, v17 >= 0.0) ? (v18 = v17 <= 1.0) : (v18 = 0), v18 && ((v19 = (v15 * v10 - v16 * v8) / v12, v19 >= 0.0) ? (v20 = v19 <= 1.0) : (v20 = 0), v20)))
  {
    v13 = [MEMORY[0x277CCAE60] valueWithCGPoint:{a3.x + v17 * v8, a3.y + v17 * v10, v6}];
  }

  return v13;
}

+ (id)quadFromVNRectangle:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = objc_alloc_init(ICDocCamImageQuad);
    [v3 topRight];
    [(ICDocCamImageQuad *)v4 setTopRight:?];
    [v3 topLeft];
    [(ICDocCamImageQuad *)v4 setTopLeft:?];
    [v3 bottomRight];
    [(ICDocCamImageQuad *)v4 setBottomRight:?];
    [v3 bottomLeft];
    [(ICDocCamImageQuad *)v4 setBottomLeft:?];
    [v3 boundingBox];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    [(ICDocCamImageQuad *)v4 setBoundingBox:v6, v8, v10, v12];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)quadFromCGRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = objc_alloc_init(ICDocCamImageQuad);
  [(ICDocCamImageQuad *)v7 setTopLeft:x, y];
  v10.origin.x = x;
  v10.origin.y = y;
  v10.size.width = width;
  v10.size.height = height;
  [(ICDocCamImageQuad *)v7 setTopRight:CGRectGetMaxX(v10), y];
  [(ICDocCamImageQuad *)v7 setBottomRight:DCTSDRectGetMaxPoint(x, y, width, height)];
  v11.origin.x = x;
  v11.origin.y = y;
  v11.size.width = width;
  v11.size.height = height;
  [(ICDocCamImageQuad *)v7 setBottomLeft:x, CGRectGetMaxY(v11)];
  [(ICDocCamImageQuad *)v7 setBoundingBox:x, y, width, height];

  return v7;
}

- (id)flippedQuadFromSourceFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = [(ICDocCamImageQuad *)self copy];
  [v7 flipPointsWithSourceFrame:{x, y, width, height}];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v13 = 1;
  }

  else if (v4 && (([(ICDocCamImageQuad *)self topLeft], v7 = v6, v9 = v8, [(ICDocCamImageQuad *)v5 topLeft], v7 == v11) ? (v12 = v9 == v10) : (v12 = 0), v12))
  {
    [(ICDocCamImageQuad *)self topRight];
    v16 = v15;
    v18 = v17;
    [(ICDocCamImageQuad *)v5 topRight];
    v13 = 0;
    if (v16 == v20 && v18 == v19)
    {
      [(ICDocCamImageQuad *)self bottomRight];
      v22 = v21;
      v24 = v23;
      [(ICDocCamImageQuad *)v5 bottomRight];
      v13 = 0;
      if (v22 == v26 && v24 == v25)
      {
        [(ICDocCamImageQuad *)self bottomLeft];
        v28 = v27;
        v30 = v29;
        [(ICDocCamImageQuad *)v5 bottomLeft];
        v13 = v30 == v32 && v28 == v31;
      }
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(ICDocCamImageQuad);
  [(ICDocCamImageQuad *)self topLeft];
  [(ICDocCamImageQuad *)v4 setTopLeft:?];
  [(ICDocCamImageQuad *)self topRight];
  [(ICDocCamImageQuad *)v4 setTopRight:?];
  [(ICDocCamImageQuad *)self bottomRight];
  [(ICDocCamImageQuad *)v4 setBottomRight:?];
  [(ICDocCamImageQuad *)self bottomLeft];
  [(ICDocCamImageQuad *)v4 setBottomLeft:?];
  [(ICDocCamImageQuad *)self boundingBox];
  [(ICDocCamImageQuad *)v4 setBoundingBox:?];
  return v4;
}

- (BOOL)isConvex
{
  [(ICDocCamImageQuad *)self bottomLeft];
  v4 = v3;
  v6 = v5;
  [(ICDocCamImageQuad *)self bottomRight];
  v8 = v7;
  v10 = v9;
  [(ICDocCamImageQuad *)self topRight];
  v13 = triangleNormalDirection(v4, v6, v8, v10, v11, v12);
  [(ICDocCamImageQuad *)self bottomRight];
  v15 = v14;
  v17 = v16;
  [(ICDocCamImageQuad *)self topRight];
  v19 = v18;
  v21 = v20;
  [(ICDocCamImageQuad *)self topLeft];
  if (v13 * triangleNormalDirection(v15, v17, v19, v21, v22, v23) <= 0.0)
  {
    return 0;
  }

  [(ICDocCamImageQuad *)self topRight];
  v25 = v24;
  v27 = v26;
  [(ICDocCamImageQuad *)self topLeft];
  v29 = v28;
  v31 = v30;
  [(ICDocCamImageQuad *)self bottomLeft];
  if (v13 * triangleNormalDirection(v25, v27, v29, v31, v32, v33) <= 0.0)
  {
    return 0;
  }

  [(ICDocCamImageQuad *)self topLeft];
  v35 = v34;
  v37 = v36;
  [(ICDocCamImageQuad *)self bottomLeft];
  v39 = v38;
  v41 = v40;
  [(ICDocCamImageQuad *)self bottomRight];
  return v13 * triangleNormalDirection(v35, v37, v39, v41, v42, v43) > 0.0;
}

- (void)applyOrientation:(int64_t)a3 boundingBox:(CGRect)a4
{
  v6 = DCTSDCenterOfRect(a4.origin.x, a4.origin.y, a4.size.width, a4.size.height);
  v8 = v7;
  [(ICDocCamImageQuad *)self addPointToQuadPoints:DCTSDMultiplyPointScalar(v6, v7, -1.0)];
  [(ICDocCamImageQuad *)self rotatePointsByOrientation:a3];

  [(ICDocCamImageQuad *)self addPointToQuadPoints:v6, v8];
}

- (void)removeOrientation:(int64_t)a3 boundingBox:(CGRect)a4
{
  v6 = DCTSDCenterOfRect(a4.origin.x, a4.origin.y, a4.size.width, a4.size.height);
  v8 = v7;
  [(ICDocCamImageQuad *)self addPointToQuadPoints:DCTSDMultiplyPointScalar(v6, v7, -1.0)];
  [(ICDocCamImageQuad *)self rotatePointsRemovingOrientation:a3];

  [(ICDocCamImageQuad *)self addPointToQuadPoints:v6, v8];
}

- (void)rotatePointsRemovingOrientation:(int64_t)a3
{
  for (i = -dc_clockwiseRotationsFromUpToMatchOrientation(a3) & 3; i; --i)
  {
    [(ICDocCamImageQuad *)self rotatePointsClockwise];
  }
}

- (void)rotatePointsByOrientation:(int64_t)a3
{
  matched = dc_clockwiseRotationsFromUpToMatchOrientation(a3);
  if (matched)
  {
    v5 = matched;
    do
    {
      [(ICDocCamImageQuad *)self rotatePointsClockwise];
      --v5;
    }

    while (v5);
  }
}

- (void)rotatePointsClockwise
{
  [(ICDocCamImageQuad *)self topRight];
  [(ICDocCamImageQuad *)self pointRotatedClockwiseAroundOrigin:?];
  [(ICDocCamImageQuad *)self setTopRight:?];
  [(ICDocCamImageQuad *)self topLeft];
  [(ICDocCamImageQuad *)self pointRotatedClockwiseAroundOrigin:?];
  [(ICDocCamImageQuad *)self setTopLeft:?];
  [(ICDocCamImageQuad *)self bottomRight];
  [(ICDocCamImageQuad *)self pointRotatedClockwiseAroundOrigin:?];
  [(ICDocCamImageQuad *)self setBottomRight:?];
  [(ICDocCamImageQuad *)self bottomLeft];
  [(ICDocCamImageQuad *)self pointRotatedClockwiseAroundOrigin:?];

  [(ICDocCamImageQuad *)self setBottomLeft:?];
}

- (CGPoint)pointRotatedClockwiseAroundOrigin:(CGPoint)a3
{
  y = a3.y;
  v4 = -a3.x;
  v5 = y;
  result.y = v4;
  result.x = v5;
  return result;
}

- (void)addPointToQuadPoints:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(ICDocCamImageQuad *)self topLeft];
  [(ICDocCamImageQuad *)self setTopLeft:DCTSDAddPoints(x, y, v6)];
  [(ICDocCamImageQuad *)self topRight];
  [(ICDocCamImageQuad *)self setTopRight:DCTSDAddPoints(x, y, v7)];
  [(ICDocCamImageQuad *)self bottomRight];
  [(ICDocCamImageQuad *)self setBottomRight:DCTSDAddPoints(x, y, v8)];
  [(ICDocCamImageQuad *)self bottomLeft];
  v10 = DCTSDAddPoints(x, y, v9);

  [(ICDocCamImageQuad *)self setBottomLeft:v10];
}

- (ICDocCamImageQuad)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = ICDocCamImageQuad;
  v5 = [(ICDocCamImageQuad *)&v19 init];
  if (v5)
  {
    [v4 decodeFloatForKey:@"kBottomLeftXFieldCodingKey"];
    v7 = v6;
    [v4 decodeFloatForKey:@"kBottomLeftYFieldCodingKey"];
    [(ICDocCamImageQuad *)v5 setBottomLeft:v7, v8];
    [v4 decodeFloatForKey:@"kBottomRightXFieldCodingKey"];
    v10 = v9;
    [v4 decodeFloatForKey:@"kBottomRightYFieldCodingKey"];
    [(ICDocCamImageQuad *)v5 setBottomRight:v10, v11];
    [v4 decodeFloatForKey:@"kTopLeftXFieldCodingKey"];
    v13 = v12;
    [v4 decodeFloatForKey:@"kTopLeftYFieldCodingKey"];
    [(ICDocCamImageQuad *)v5 setTopLeft:v13, v14];
    [v4 decodeFloatForKey:@"kTopRightXFieldCodingKey"];
    v16 = v15;
    [v4 decodeFloatForKey:@"kTopRightYFieldCodingKey"];
    [(ICDocCamImageQuad *)v5 setTopRight:v16, v17];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v16 = a3;
  [(ICDocCamImageQuad *)self bottomLeft];
  *&v4 = v4;
  [v16 encodeFloat:@"kBottomLeftXFieldCodingKey" forKey:v4];
  [(ICDocCamImageQuad *)self bottomLeft];
  *&v6 = v5;
  [v16 encodeFloat:@"kBottomLeftYFieldCodingKey" forKey:v6];
  [(ICDocCamImageQuad *)self bottomRight];
  *&v7 = v7;
  [v16 encodeFloat:@"kBottomRightXFieldCodingKey" forKey:v7];
  [(ICDocCamImageQuad *)self bottomRight];
  *&v9 = v8;
  [v16 encodeFloat:@"kBottomRightYFieldCodingKey" forKey:v9];
  [(ICDocCamImageQuad *)self topLeft];
  *&v10 = v10;
  [v16 encodeFloat:@"kTopLeftXFieldCodingKey" forKey:v10];
  [(ICDocCamImageQuad *)self topLeft];
  *&v12 = v11;
  [v16 encodeFloat:@"kTopLeftYFieldCodingKey" forKey:v12];
  [(ICDocCamImageQuad *)self topRight];
  *&v13 = v13;
  [v16 encodeFloat:@"kTopRightXFieldCodingKey" forKey:v13];
  [(ICDocCamImageQuad *)self topRight];
  *&v15 = v14;
  [v16 encodeFloat:@"kTopRightYFieldCodingKey" forKey:v15];
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

- (CGRect)boundingBox
{
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

- (id)quadByConvertingFromView:(id)a3 toView:(id)a4 isNormalized:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = objc_alloc_init(ICDocCamImageQuad);
  [v8 bounds];
  if (v5)
  {
    v14 = v11;
    v15 = v12;
    v16 = v13;
    [(ICDocCamImageQuad *)self topLeft];
    [v8 convertPoint:v9 toView:{DCTSDPointFromNormalizedRect(v17, v18, v14, v15, v16)}];
    [(ICDocCamImageQuad *)v10 setTopLeft:?];
    [(ICDocCamImageQuad *)self topRight];
    [v8 convertPoint:v9 toView:{DCTSDPointFromNormalizedRect(v19, v20, v14, v15, v16)}];
    [(ICDocCamImageQuad *)v10 setTopRight:?];
    [(ICDocCamImageQuad *)self bottomRight];
    [v8 convertPoint:v9 toView:{DCTSDPointFromNormalizedRect(v21, v22, v14, v15, v16)}];
    [(ICDocCamImageQuad *)v10 setBottomRight:?];
    [(ICDocCamImageQuad *)self bottomLeft];
    v25 = DCTSDPointFromNormalizedRect(v23, v24, v14, v15, v16);
  }

  else
  {
    [(ICDocCamImageQuad *)self topLeft];
    [v8 convertPoint:v9 toView:?];
    [(ICDocCamImageQuad *)v10 setTopLeft:?];
    [(ICDocCamImageQuad *)self topRight];
    [v8 convertPoint:v9 toView:?];
    [(ICDocCamImageQuad *)v10 setTopRight:?];
    [(ICDocCamImageQuad *)self bottomRight];
    [v8 convertPoint:v9 toView:?];
    [(ICDocCamImageQuad *)v10 setBottomRight:?];
    [(ICDocCamImageQuad *)self bottomLeft];
  }

  [v8 convertPoint:v9 toView:v25];
  v27 = v26;
  v29 = v28;

  [(ICDocCamImageQuad *)v10 setBottomLeft:v27, v29];

  return v10;
}

- (id)normalizedQuadByConvertingFromView:(id)a3 toView:(id)a4 toViewSize:(CGSize)a5
{
  width = a5.width;
  v8 = a4;
  v9 = a3;
  v10 = objc_alloc_init(ICDocCamImageQuad);
  v11 = *MEMORY[0x277CBF3A0];
  v12 = *(MEMORY[0x277CBF3A0] + 8);
  [(ICDocCamImageQuad *)self topLeft];
  [v9 convertPoint:v8 toView:?];
  [(ICDocCamImageQuad *)v10 setTopLeft:?];
  [(ICDocCamImageQuad *)self topRight];
  [v9 convertPoint:v8 toView:?];
  [(ICDocCamImageQuad *)v10 setTopRight:?];
  [(ICDocCamImageQuad *)self bottomRight];
  [v9 convertPoint:v8 toView:?];
  [(ICDocCamImageQuad *)v10 setBottomRight:?];
  [(ICDocCamImageQuad *)self bottomLeft];
  [v9 convertPoint:v8 toView:?];
  v14 = v13;
  v16 = v15;

  [(ICDocCamImageQuad *)v10 setBottomLeft:v14, v16];
  [(ICDocCamImageQuad *)v10 topLeft];
  [(ICDocCamImageQuad *)v10 setTopLeft:DCTSDNormalizedPointInRect(v17, v18, v11, v12, width)];
  [(ICDocCamImageQuad *)v10 topRight];
  [(ICDocCamImageQuad *)v10 setTopRight:DCTSDNormalizedPointInRect(v19, v20, v11, v12, width)];
  [(ICDocCamImageQuad *)v10 bottomRight];
  [(ICDocCamImageQuad *)v10 setBottomRight:DCTSDNormalizedPointInRect(v21, v22, v11, v12, width)];
  [(ICDocCamImageQuad *)v10 bottomLeft];
  [(ICDocCamImageQuad *)v10 setBottomLeft:DCTSDNormalizedPointInRect(v23, v24, v11, v12, width)];

  return v10;
}

@end