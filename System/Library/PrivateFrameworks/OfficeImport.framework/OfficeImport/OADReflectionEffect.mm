@interface OADReflectionEffect
- (BOOL)isEqual:(id)equal;
- (OADReflectionEffect)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
@end

@implementation OADReflectionEffect

- (OADReflectionEffect)init
{
  v3.receiver = self;
  v3.super_class = OADReflectionEffect;
  result = [(OADEffect *)&v3 initWithType:3];
  if (result)
  {
    *(&result->super.mType + 1) = 0;
    result->mBlurRadius = 1.0;
    result->mStartOpacity = 0.0;
    result->mStartPosition = 0.0;
    result->mEndOpacity = 0.25;
    result->mEndPosition = 1.0;
    result->mDistance = 90.0;
    result->mDirection = 90.0;
    result->mFadeDirection = 1.0;
    result->mXScale = -1.0;
    result->mYScale = 0.0;
    result->mXSkew = 0.0;
    LODWORD(result->mYSkew) = 7;
    LOBYTE(result->mAlignment) = 0;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(result + 3) = *(&self->super.mType + 1);
  *(result + 4) = LODWORD(self->mBlurRadius);
  *(result + 5) = LODWORD(self->mStartOpacity);
  *(result + 6) = LODWORD(self->mStartPosition);
  *(result + 7) = LODWORD(self->mEndOpacity);
  *(result + 8) = LODWORD(self->mEndPosition);
  *(result + 9) = LODWORD(self->mDistance);
  *(result + 10) = LODWORD(self->mDirection);
  *(result + 11) = LODWORD(self->mFadeDirection);
  *(result + 12) = LODWORD(self->mXScale);
  *(result + 13) = LODWORD(self->mYScale);
  *(result + 14) = LODWORD(self->mXSkew);
  *(result + 15) = LODWORD(self->mYSkew);
  *(result + 64) = self->mAlignment;
  return result;
}

- (unint64_t)hash
{
  v2 = self->mBlurRadius ^ *(&self->super.mType + 1) ^ self->mStartOpacity ^ self->mStartPosition ^ self->mEndOpacity ^ self->mEndPosition ^ self->mDistance ^ self->mDirection ^ self->mFadeDirection ^ self->mXScale ^ self->mYScale;
  v3 = self->mXSkew ^ LODWORD(self->mYSkew) ^ LOBYTE(self->mAlignment);
  v5.receiver = self;
  v5.super_class = OADReflectionEffect;
  return v2 ^ v3 ^ [(OADEffect *)&v5 hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = *(&self->super.mType + 1), [equalCopy blurRadius], v5 == v6) && (mBlurRadius = self->mBlurRadius, objc_msgSend(equalCopy, "startOpacity"), mBlurRadius == v8) && (mStartOpacity = self->mStartOpacity, objc_msgSend(equalCopy, "startPosition"), mStartOpacity == v10) && (mStartPosition = self->mStartPosition, objc_msgSend(equalCopy, "endOpacity"), mStartPosition == v12) && (mEndOpacity = self->mEndOpacity, objc_msgSend(equalCopy, "endPosition"), mEndOpacity == v14) && (mEndPosition = self->mEndPosition, objc_msgSend(equalCopy, "distance"), mEndPosition == v16) && (mDistance = self->mDistance, objc_msgSend(equalCopy, "direction"), mDistance == v18) && (mDirection = self->mDirection, objc_msgSend(equalCopy, "fadeDirection"), mDirection == v20) && (mFadeDirection = self->mFadeDirection, objc_msgSend(equalCopy, "xScale"), mFadeDirection == v22) && (mXScale = self->mXScale, objc_msgSend(equalCopy, "yScale"), mXScale == v24) && (mYScale = self->mYScale, objc_msgSend(equalCopy, "xSkew"), mYScale == v26) && (mXSkew = self->mXSkew, objc_msgSend(equalCopy, "ySkew"), mXSkew == v28) && (mYSkew = self->mYSkew, LODWORD(mYSkew) == objc_msgSend(equalCopy, "alignment")) && (mAlignment_low = LOBYTE(self->mAlignment), mAlignment_low == objc_msgSend(equalCopy, "rotateWithShape")))
  {
    v33.receiver = self;
    v33.super_class = OADReflectionEffect;
    v31 = [(OADEffect *)&v33 isEqual:equalCopy];
  }

  else
  {
    v31 = 0;
  }

  return v31;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = OADReflectionEffect;
  v2 = [(OADEffect *)&v4 description];

  return v2;
}

@end