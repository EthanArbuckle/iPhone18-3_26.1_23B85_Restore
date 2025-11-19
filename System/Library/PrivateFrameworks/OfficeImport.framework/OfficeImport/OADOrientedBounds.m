@interface OADOrientedBounds
+ (BOOL)directionCloserToVerticalThanToHorizontal:(float)a3;
+ (OADOrientedBounds)orientedBoundsWithBounds:(CGRect)a3 rotation:(float)a4 flipX:(BOOL)a5 flipY:(BOOL)a6;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToOrientedBounds:(id)a3;
- (CGRect)boundingBox;
- (CGRect)bounds;
- (CGSize)boundingBoxSize;
- (OADOrientedBounds)initWithBounds:(CGRect)a3 rotation:(float)a4 flipX:(BOOL)a5 flipY:(BOOL)a6;
- (id)description;
- (void)setFlipY:(BOOL)a3;
- (void)setOrientedBounds:(id)a3;
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

- (OADOrientedBounds)initWithBounds:(CGRect)a3 rotation:(float)a4 flipX:(BOOL)a5 flipY:(BOOL)a6
{
  v6 = a6;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v15.receiver = self;
  v15.super_class = OADOrientedBounds;
  result = [(OADOrientedBounds *)&v15 init];
  if (result)
  {
    result->mBounds.origin.x = x;
    result->mBounds.origin.y = y;
    result->mBounds.size.width = width;
    result->mBounds.size.height = height;
    result->mRotation = a4;
    if (v6)
    {
      v14 = 2;
    }

    else
    {
      v14 = 0;
    }

    *(result + 44) = v14 | a5 | *(result + 44) & 0xFC;
    *&result->mModeX = 0;
  }

  return result;
}

+ (OADOrientedBounds)orientedBoundsWithBounds:(CGRect)a3 rotation:(float)a4 flipX:(BOOL)a5 flipY:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v13 = [OADOrientedBounds alloc];
  *&v14 = a4;
  v15 = [(OADOrientedBounds *)v13 initWithBounds:v7 rotation:v6 flipX:x flipY:y, width, height, v14];

  return v15;
}

- (void)setOrientedBounds:(id)a3
{
  v3 = *(a3 + 8);
  self->mBounds.size = *(a3 + 24);
  self->mBounds.origin = v3;
  self->mRotation = *(a3 + 10);
  v4 = *(self + 44) & 0xFE | *(a3 + 44) & 1;
  *(self + 44) = v4;
  *(self + 44) = v4 & 0xFD | *(a3 + 44) & 2;
  self->mModeX = *(a3 + 12);
  self->mModeY = *(a3 + 13);
}

- (void)setFlipY:(BOOL)a3
{
  if (a3)
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

- (BOOL)isEqualToOrientedBounds:(id)a3
{
  v4 = a3;
  v5 = v4;
  v6 = v4 && CGRectEqualToRect(self->mBounds, *(v4 + 8)) && self->mRotation == v5[10] && ((*(v5 + 44) ^ *(self + 44)) & 3) == 0 && self->mModeX == *(v5 + 12) && self->mModeY == *(v5 + 13);

  return v6;
}

+ (BOOL)directionCloserToVerticalThanToHorizontal:(float)a3
{
  v3 = vcvts_n_s32_f32(a3, 0x10uLL);
  if ((v3 & 0x80000000) != 0)
  {
    v3 += 23592960 * ((95443718 * (-v3 >> 19)) >> 32) + 23592960;
  }

  return ((95443718 * ((v3 + 2949120) >> 17)) >> 32) & 1;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
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
      v20 = [(OADOrientedBounds *)self yMode];
      v21 = v20 == [v5 yMode];
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