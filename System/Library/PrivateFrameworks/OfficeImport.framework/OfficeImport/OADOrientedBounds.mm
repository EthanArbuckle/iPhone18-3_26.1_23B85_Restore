@interface OADOrientedBounds
+ (BOOL)directionCloserToVerticalThanToHorizontal:(float)horizontal;
+ (OADOrientedBounds)orientedBoundsWithBounds:(CGRect)bounds rotation:(float)rotation flipX:(BOOL)x flipY:(BOOL)y;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToOrientedBounds:(id)bounds;
- (CGRect)boundingBox;
- (CGRect)bounds;
- (CGSize)boundingBoxSize;
- (OADOrientedBounds)initWithBounds:(CGRect)bounds rotation:(float)rotation flipX:(BOOL)x flipY:(BOOL)y;
- (id)description;
- (void)setFlipY:(BOOL)y;
- (void)setOrientedBounds:(id)bounds;
@end

@implementation OADOrientedBounds

- (CGRect)bounds
{
  x = self->mBounds.origin.x;
  y = self->mBounds.origin.y;
  width = self->mBounds.size.width;
  height = self->mBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (OADOrientedBounds)initWithBounds:(CGRect)bounds rotation:(float)rotation flipX:(BOOL)x flipY:(BOOL)y
{
  yCopy = y;
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v15.receiver = self;
  v15.super_class = OADOrientedBounds;
  result = [(OADOrientedBounds *)&v15 init];
  if (result)
  {
    result->mBounds.origin.x = x;
    result->mBounds.origin.y = y;
    result->mBounds.size.width = width;
    result->mBounds.size.height = height;
    result->mRotation = rotation;
    if (yCopy)
    {
      v14 = 2;
    }

    else
    {
      v14 = 0;
    }

    *(result + 44) = v14 | x | *(result + 44) & 0xFC;
    *&result->mModeX = 0;
  }

  return result;
}

+ (OADOrientedBounds)orientedBoundsWithBounds:(CGRect)bounds rotation:(float)rotation flipX:(BOOL)x flipY:(BOOL)y
{
  yCopy = y;
  xCopy = x;
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v13 = [OADOrientedBounds alloc];
  *&v14 = rotation;
  v15 = [(OADOrientedBounds *)v13 initWithBounds:xCopy rotation:yCopy flipX:x flipY:y, width, height, v14];

  return v15;
}

- (void)setOrientedBounds:(id)bounds
{
  v3 = *(bounds + 8);
  self->mBounds.size = *(bounds + 24);
  self->mBounds.origin = v3;
  self->mRotation = *(bounds + 10);
  v4 = *(self + 44) & 0xFE | *(bounds + 44) & 1;
  *(self + 44) = v4;
  *(self + 44) = v4 & 0xFD | *(bounds + 44) & 2;
  self->mModeX = *(bounds + 12);
  self->mModeY = *(bounds + 13);
}

- (void)setFlipY:(BOOL)y
{
  if (y)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(self + 44) = *(self + 44) & 0xFD | v3;
}

- (CGSize)boundingBoxSize
{
  [(OADOrientedBounds *)self bounds];
  v4 = v3;
  v6 = v5;
  [(OADOrientedBounds *)self rotation];
  v8 = v7 * 3.14159265 / 180.0;
  v9 = __sincosf_stret(v8);
  v10 = fabsf(v9.__cosval);
  v11 = fabsf(v9.__sinval);
  v12 = v6 * v11 + v10 * v4;
  *&v10 = v4 * v11 + v10 * v6;
  v13 = v12;
  v14 = *&v10;
  result.height = v14;
  result.width = v13;
  return result;
}

- (CGRect)boundingBox
{
  v3 = TSUCenterOfRect(self->mBounds.origin.x, self->mBounds.origin.y, self->mBounds.size.width, self->mBounds.size.height);
  v5 = v4;
  [(OADOrientedBounds *)self boundingBoxSize];

  v7 = TSURectWithCenterAndSize(v3, v5, v6);
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (BOOL)isEqualToOrientedBounds:(id)bounds
{
  boundsCopy = bounds;
  v5 = boundsCopy;
  v6 = boundsCopy && CGRectEqualToRect(self->mBounds, *(boundsCopy + 8)) && self->mRotation == v5[10] && ((*(v5 + 44) ^ *(self + 44)) & 3) == 0 && self->mModeX == *(v5 + 12) && self->mModeY == *(v5 + 13);

  return v6;
}

+ (BOOL)directionCloserToVerticalThanToHorizontal:(float)horizontal
{
  v3 = vcvts_n_s32_f32(horizontal, 0x10uLL);
  if ((v3 & 0x80000000) != 0)
  {
    v3 += 23592960 * ((95443718 * (-v3 >> 19)) >> 32) + 23592960;
  }

  return ((95443718 * ((v3 + 2949120) >> 17)) >> 32) & 1;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    x = self->mBounds.origin.x;
    y = self->mBounds.origin.y;
    width = self->mBounds.size.width;
    height = self->mBounds.size.height;
    [v5 bounds];
    v24.origin.x = v10;
    v24.origin.y = v11;
    v24.size.width = v12;
    v24.size.height = v13;
    v23.origin.x = x;
    v23.origin.y = y;
    v23.size.width = width;
    v23.size.height = height;
    if (CGRectEqualToRect(v23, v24) && (-[OADOrientedBounds rotation](self, "rotation"), v15 = v14, [v5 rotation], v15 == v16) && (v17 = -[OADOrientedBounds flipX](self, "flipX"), v17 == objc_msgSend(v5, "flipX")) && (v18 = -[OADOrientedBounds flipY](self, "flipY"), v18 == objc_msgSend(v5, "flipY")) && (v19 = -[OADOrientedBounds xMode](self, "xMode"), v19 == objc_msgSend(v5, "xMode")))
    {
      yMode = [(OADOrientedBounds *)self yMode];
      v21 = yMode == [v5 yMode];
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

- (id)description
{
  v4.receiver = self;
  v4.super_class = OADOrientedBounds;
  v2 = [(OADOrientedBounds *)&v4 description];

  return v2;
}

@end