@interface VCPBoundingBox
- (CGRect)getCGRectWithClipWidth:(float)width height:(float)height;
- (VCPBoundingBox)initWithCenterAndSize:(float)size y:(float)y width:(float)width height:(float)height confidence:(float)confidence;
- (VCPBoundingBox)initWithXYAndSize:(float)size y:(float)y width:(float)width height:(float)height confidence:(float)confidence;
- (float)area;
- (float)computeIntersectionOverUnion:(id)union;
- (id)intersect:(id)intersect;
- (id)union:(id)union;
- (int)extendBoxBy:(float)by scaleX:(float)x scaleY:(float)y;
@end

@implementation VCPBoundingBox

- (VCPBoundingBox)initWithXYAndSize:(float)size y:(float)y width:(float)width height:(float)height confidence:(float)confidence
{
  v21.receiver = self;
  v21.super_class = VCPBoundingBox;
  v12 = [(VCPBoundingBox *)&v21 init];
  v14 = v12;
  if (v12)
  {
    *&v13 = size;
    [(VCPBoundingBox *)v12 setMinX:v13];
    *&v15 = y;
    [(VCPBoundingBox *)v14 setMinY:v15];
    *&v16 = size + width;
    [(VCPBoundingBox *)v14 setMaxX:v16];
    *&v17 = y + height;
    [(VCPBoundingBox *)v14 setMaxY:v17];
    *&v18 = confidence;
    [(VCPBoundingBox *)v14 setConfidence:v18];
    [(VCPBoundingBox *)v14 setTrackID:0xFFFFFFFFLL];
    [(VCPBoundingBox *)v14 setGroupID:0xFFFFFFFFLL];
    v19 = v14;
  }

  return v14;
}

- (VCPBoundingBox)initWithCenterAndSize:(float)size y:(float)y width:(float)width height:(float)height confidence:(float)confidence
{
  v25.receiver = self;
  v25.super_class = VCPBoundingBox;
  v12 = [(VCPBoundingBox *)&v25 init];
  v13 = v12;
  if (v12)
  {
    sizeCopy = size;
    widthCopy = width;
    v16 = sizeCopy + widthCopy * -0.5;
    *&v16 = v16;
    [(VCPBoundingBox *)v12 setMinX:v16];
    yCopy = y;
    heightCopy = height;
    v19 = yCopy + heightCopy * -0.5;
    *&v19 = v19;
    [(VCPBoundingBox *)v13 setMinY:v19];
    v20 = sizeCopy + widthCopy * 0.5;
    *&v20 = v20;
    [(VCPBoundingBox *)v13 setMaxX:v20];
    v21 = yCopy + heightCopy * 0.5;
    *&v21 = v21;
    [(VCPBoundingBox *)v13 setMaxY:v21];
    *&v22 = confidence;
    [(VCPBoundingBox *)v13 setConfidence:v22];
    [(VCPBoundingBox *)v13 setTrackID:0xFFFFFFFFLL];
    [(VCPBoundingBox *)v13 setGroupID:0xFFFFFFFFLL];
    v23 = v13;
  }

  return v13;
}

- (float)area
{
  [(VCPBoundingBox *)self maxX];
  v4 = v3;
  [(VCPBoundingBox *)self minX];
  v6 = v4 - v5;
  [(VCPBoundingBox *)self maxY];
  v8 = v7;
  [(VCPBoundingBox *)self minY];
  return v6 * (v8 - v9);
}

- (id)intersect:(id)intersect
{
  intersectCopy = intersect;
  [(VCPBoundingBox *)self minX];
  v6 = v5;
  [intersectCopy minX];
  if (v6 < v7)
  {
    v6 = v7;
  }

  [(VCPBoundingBox *)self minY];
  v9 = v8;
  [intersectCopy minY];
  if (v9 < v10)
  {
    v9 = v10;
  }

  [(VCPBoundingBox *)self maxX];
  v12 = v11;
  [intersectCopy maxX];
  if (v13 >= v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = v13;
  }

  [(VCPBoundingBox *)self maxY];
  v16 = v15;
  [intersectCopy maxY];
  if (v17 < v16)
  {
    v16 = v17;
  }

  if (v14 <= v6 || v16 <= v9)
  {
    v24 = 0;
  }

  else
  {
    v19 = [VCPBoundingBox alloc];
    *&v20 = v14 - v6;
    *&v21 = v16 - v9;
    *&v22 = v6;
    *&v23 = v9;
    v24 = [(VCPBoundingBox *)v19 initWithXYAndSize:v22 y:v23 width:v20 height:v21 confidence:0.0];
  }

  return v24;
}

- (id)union:(id)union
{
  unionCopy = union;
  [(VCPBoundingBox *)self minX];
  v6 = v5;
  [unionCopy minX];
  if (v7 < v6)
  {
    v6 = v7;
  }

  [(VCPBoundingBox *)self minY];
  v9 = v8;
  [unionCopy minY];
  if (v10 < v9)
  {
    v9 = v10;
  }

  [(VCPBoundingBox *)self maxX];
  v12 = v11;
  [unionCopy maxX];
  if (v12 >= v13)
  {
    v14 = v12;
  }

  else
  {
    v14 = v13;
  }

  [(VCPBoundingBox *)self maxY];
  v16 = v15;
  [unionCopy maxY];
  v18 = v17;
  v19 = [VCPBoundingBox alloc];
  if (v16 >= v18)
  {
    *&v20 = v16;
  }

  else
  {
    *&v20 = v18;
  }

  *&v22 = v14 - v6;
  *&v23 = *&v20 - v9;
  *&v20 = v6;
  *&v21 = v9;
  v24 = [(VCPBoundingBox *)v19 initWithXYAndSize:v20 y:v21 width:v22 height:v23 confidence:0.0];

  return v24;
}

- (float)computeIntersectionOverUnion:(id)union
{
  unionCopy = union;
  v5 = [(VCPBoundingBox *)self intersect:unionCopy];
  v6 = [(VCPBoundingBox *)self union:unionCopy];
  v7 = 0.0;
  v8 = 0.0;
  if (v5)
  {
    [v5 area];
    v8 = v9;
  }

  if (v6)
  {
    [v6 area];
    v7 = v10;
  }

  if (v7 == 0.0)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = v8 / v7;
  }

  return v11;
}

- (CGRect)getCGRectWithClipWidth:(float)width height:(float)height
{
  [(VCPBoundingBox *)self minX];
  if (v7 < width)
  {
    widthCopy = v7;
  }

  else
  {
    widthCopy = width;
  }

  if (v7 <= 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = widthCopy;
  }

  [(VCPBoundingBox *)self minY];
  if (v10 < height)
  {
    heightCopy = v10;
  }

  else
  {
    heightCopy = height;
  }

  if (v10 <= 0.0)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = heightCopy;
  }

  [(VCPBoundingBox *)self maxX];
  if (v13 < width)
  {
    widthCopy2 = v13;
  }

  else
  {
    widthCopy2 = width;
  }

  if (v13 <= 0.0)
  {
    v15 = 0.0;
  }

  else
  {
    v15 = widthCopy2;
  }

  [(VCPBoundingBox *)self maxY];
  if (v16 < height)
  {
    heightCopy2 = v16;
  }

  else
  {
    heightCopy2 = height;
  }

  if (v16 <= 0.0)
  {
    v18 = 0.0;
  }

  else
  {
    v18 = heightCopy2;
  }

  v19 = (v9 / width);
  v20 = (v12 / height);
  v21 = ((v15 - v9) / width);
  v22 = ((v18 - v12) / height);
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (int)extendBoxBy:(float)by scaleX:(float)x scaleY:(float)y
{
  result = -50;
  if (x > 0.0 && y > 0.0)
  {
    byCopy = 1.0;
    if (by < 1.0)
    {
      byCopy = by;
    }

    if (by <= 0.0)
    {
      v10 = 0.0;
    }

    else
    {
      v10 = byCopy;
    }

    [(VCPBoundingBox *)self maxX];
    v12 = v11;
    [(VCPBoundingBox *)self minX];
    v14 = (v12 - v13) * 0.5;
    [(VCPBoundingBox *)self maxY];
    v16 = v15;
    [(VCPBoundingBox *)self minY];
    v18 = (v16 - v17) * 0.5;
    [(VCPBoundingBox *)self minX];
    v20 = v14 + v19;
    [(VCPBoundingBox *)self minY];
    v22 = *&v21 + v18;
    if (v14 >= v18)
    {
      v23 = v14;
    }

    else
    {
      v23 = v18;
    }

    v24 = v10 * v14;
    v25 = v10 * v18;
    *&v21 = ((v20 - v23) - v24) / x;
    if (*&v21 < 0.0)
    {
      *&v21 = 0.0;
    }

    [(VCPBoundingBox *)self setMinX:v21];
    *&v26 = (v24 + (v20 + v23)) / x;
    if (*&v26 > 1.0)
    {
      *&v26 = 1.0;
    }

    [(VCPBoundingBox *)self setMaxX:v26];
    *&v27 = ((v22 - v23) - v25) / y;
    if (*&v27 < 0.0)
    {
      *&v27 = 0.0;
    }

    [(VCPBoundingBox *)self setMinY:v27];
    *&v28 = (v25 + (v22 + v23)) / y;
    if (*&v28 > 1.0)
    {
      *&v28 = 1.0;
    }

    [(VCPBoundingBox *)self setMaxY:v28];
    return 0;
  }

  return result;
}

@end