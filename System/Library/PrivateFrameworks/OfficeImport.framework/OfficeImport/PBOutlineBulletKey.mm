@interface PBOutlineBulletKey
- (BOOL)isEqual:(id)equal;
- (PBOutlineBulletKey)initWithOutlineBullet:(id)bullet;
- (PBOutlineBulletKey)initWithSlideId:(unsigned int)id textType:(int)type placeholderIndex:(unsigned int)index;
@end

@implementation PBOutlineBulletKey

- (PBOutlineBulletKey)initWithOutlineBullet:(id)bullet
{
  bulletCopy = bullet;
  eshObject = [bulletCopy eshObject];
  {
    self = [(PBOutlineBulletKey *)self initWithSlideId:v6[12] textType:v6[13] placeholderIndex:EshRecord::getInstance(v6)];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (PBOutlineBulletKey)initWithSlideId:(unsigned int)id textType:(int)type placeholderIndex:(unsigned int)index
{
  v9.receiver = self;
  v9.super_class = PBOutlineBulletKey;
  result = [(PBOutlineBulletKey *)&v9 init];
  if (result)
  {
    result->mSlideId = id;
    result->mTextType = type;
    result->mPlaceholderIndex = index;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    v6 = self->mSlideId == v5[2] && self->mTextType == v5[3] && self->mPlaceholderIndex == v5[4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end