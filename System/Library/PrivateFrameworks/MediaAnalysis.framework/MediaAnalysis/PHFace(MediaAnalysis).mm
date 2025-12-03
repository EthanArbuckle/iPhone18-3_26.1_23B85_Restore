@interface PHFace(MediaAnalysis)
- (BOOL)vcp_hasBody;
- (BOOL)vcp_hasFace;
- (double)vcp_normalizedBodyBounds;
- (double)vcp_normalizedFaceBounds;
@end

@implementation PHFace(MediaAnalysis)

- (BOOL)vcp_hasFace
{
  [self size];
  if (v2 != 0.0)
  {
    return 1;
  }

  [self centerX];
  if (v3 != 0.0)
  {
    return 1;
  }

  [self centerY];
  return v5 != 0.0;
}

- (double)vcp_normalizedFaceBounds
{
  [self size];
  v3 = v2;
  sourceWidth = [self sourceWidth];
  sourceHeight = [self sourceHeight];
  if (sourceWidth <= sourceHeight)
  {
    v6 = sourceHeight;
  }

  else
  {
    v6 = sourceWidth;
  }

  v7 = v3 * v6 / [self sourceWidth];
  [self sourceHeight];
  [self centerX];
  v9 = fmax(v8 - v7 * 0.5, 0.0);
  [self centerY];
  [self centerX];
  [self centerY];
  return v9;
}

- (BOOL)vcp_hasBody
{
  [self bodyWidth];
  if (v2 != 0.0)
  {
    return 1;
  }

  [self bodyHeight];
  if (v3 != 0.0)
  {
    return 1;
  }

  [self bodyCenterX];
  if (v4 != 0.0)
  {
    return 1;
  }

  [self bodyCenterY];
  return v6 != 0.0;
}

- (double)vcp_normalizedBodyBounds
{
  [self bodyCenterX];
  v3 = v2;
  [self bodyWidth];
  v5 = v3 - v4 * 0.5;
  [self bodyCenterY];
  [self bodyHeight];
  [self bodyWidth];
  [self bodyHeight];
  return v5;
}

@end