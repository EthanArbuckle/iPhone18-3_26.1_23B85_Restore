@interface PHFace(MediaAnalysis)
- (BOOL)vcp_hasBody;
- (BOOL)vcp_hasFace;
- (double)vcp_normalizedBodyBounds;
- (double)vcp_normalizedFaceBounds;
@end

@implementation PHFace(MediaAnalysis)

- (BOOL)vcp_hasFace
{
  [a1 size];
  if (v2 != 0.0)
  {
    return 1;
  }

  [a1 centerX];
  if (v3 != 0.0)
  {
    return 1;
  }

  [a1 centerY];
  return v5 != 0.0;
}

- (double)vcp_normalizedFaceBounds
{
  [a1 size];
  v3 = v2;
  v4 = [a1 sourceWidth];
  v5 = [a1 sourceHeight];
  if (v4 <= v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = v4;
  }

  v7 = v3 * v6 / [a1 sourceWidth];
  [a1 sourceHeight];
  [a1 centerX];
  v9 = fmax(v8 - v7 * 0.5, 0.0);
  [a1 centerY];
  [a1 centerX];
  [a1 centerY];
  return v9;
}

- (BOOL)vcp_hasBody
{
  [a1 bodyWidth];
  if (v2 != 0.0)
  {
    return 1;
  }

  [a1 bodyHeight];
  if (v3 != 0.0)
  {
    return 1;
  }

  [a1 bodyCenterX];
  if (v4 != 0.0)
  {
    return 1;
  }

  [a1 bodyCenterY];
  return v6 != 0.0;
}

- (double)vcp_normalizedBodyBounds
{
  [a1 bodyCenterX];
  v3 = v2;
  [a1 bodyWidth];
  v5 = v3 - v4 * 0.5;
  [a1 bodyCenterY];
  [a1 bodyHeight];
  [a1 bodyWidth];
  [a1 bodyHeight];
  return v5;
}

@end