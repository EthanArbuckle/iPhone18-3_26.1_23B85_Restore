@interface OADAutoNumberBulletProperties
- (BOOL)isEqual:(id)equal;
- (OADAutoNumberBulletProperties)initWithAutoNumberSchemeType:(int)type startIndex:(unint64_t)index;
@end

@implementation OADAutoNumberBulletProperties

- (OADAutoNumberBulletProperties)initWithAutoNumberSchemeType:(int)type startIndex:(unint64_t)index
{
  v7.receiver = self;
  v7.super_class = OADAutoNumberBulletProperties;
  result = [(OADAutoNumberBulletProperties *)&v7 init];
  if (result)
  {
    result->mSchemeType = type;
    result->mStartIndex = index;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->mSchemeType == equalCopy[2] && self->mStartIndex == *(equalCopy + 2);

  return v5;
}

@end